unit uSysinfo;

interface
uses
     Forms,
     SysUtils,
     Dialogs,
     Classes,
     Controls,
     windows,
     Registry;

type
     SystemInfoRecord = record
          VolumeName, // 디스크 볼륨명
               VolumeSerial, // 디스크 시리얼번호
               FileSystemName, // 파일구조
               Drives: shortstring; // 디스크명들
          ProcessorType: shortstring; // CPU 타입(MMX나 P-II는 안됨)
          Version, // 원도우 버전
               Plattform: shortstring; // 원도우 종류
          PlattId: DWORD; // 현 플랫폼 ID
          ComputerName, // 컴퓨터 이름
               FPU, // FPU 유무
               UserName, // 사용자 이름
               CompanyName, // 회사이름
               CDSerial: shortstring; // 원도우 시디 시리얼번호
          TotalPhys, // 총 메모리
               AvailPhys, // 이용할 수 있는 메모리
               TotalVirtual, // 총 가상메모리
               AvailVirtual, // 이용할 수 있는 가상메모리
               MemoryLoad: DWORD; // 메모리 적재율
          BiosDate, // 마더보더의 바이오스 날짜
               BiosName, // 마더보더의 바이오스 이름
               BiosVer, // 마더보더의 바이오스 버전
               BusType, // 버스타입
               CPU, // 바이오스에 나타난 CPU종류
               MachineType: shortstring; // 바이오스에 나타난 컴종류
     end;
var
     SysInfoRec: SystemInfoRecord;
function GetAllSystemInfo: SystemInfoRecord; stdcall;

implementation

var
     OSVerInfo: TOSVersionInfo;

function GetRegStr(Key, St: string): string;
begin
     with TRegistry.Create do
     try
          RootKey := HKEY_LOCAL_MACHINE;
          if OpenKey(Key, False) then
               result := ReadString(St);
     finally
          Free;
     end;
end;

procedure GetComputerName;
var
     Computer: PChar;
     CSize: DWORD;
begin
     computer := nil;
     CSize := MAX_COMPUTERNAME_LENGTH + 1;
     try
          GetMem(Computer, CSize);
          if Windows.GetComputerName(Computer, CSize) then
               SysInfoRec.ComputerName :=  Computer;
     finally
          FreeMem(Computer);
     end;
end;

procedure GetVolumeInfo;
var
     lpRootPathName: PChar;
     lpVolumeNameBuffer: PChar;

     nVolumeNameSize: DWORD;
     lpVolumeSerialNumber: DWORD;

     lpMaximumComponentLength: DWORD;
     lpFileSystemFlags: DWORD;

     lpFileSystemNameBuffer: PChar;
     nFileSystemNameSize: DWORD;

begin
     lpVolumeNameBuffer := nil;
     lpFileSystemNameBuffer := nil;
     try
          GetMem(lpVolumeNameBuffer, MAX_PATH + 1);
          GetMem(lpFileSystemNameBuffer, MAX_PATH + 1);
          nVolumeNameSize := MAX_PATH + 1;
          nFileSystemNameSize := MAX_PATH + 1;
          lpRootPathName := PChar('C:\');
          if Windows.GetVolumeInformation(lpRootPathName,
               lpVolumeNameBuffer,
               nVolumeNameSize,
               @lpVolumeSerialNumber,
               lpMaximumComponentLength,
               lpFileSystemFlags,
               lpFileSystemNameBuffer,
               nFileSystemNameSize) then
          begin
               with SysInfoRec do
               begin
                    VolumeName := lpVolumeNameBuffer;
                    VolumeSerial := IntToHex(HiWord(lpVolumeSerialNumber), 4) +
                         '-'
                         +
                         IntToHex(LoWord(lpVolumeSerialNumber), 4);
                    FileSystemName := lpFileSystemNameBuffer;
               end;

          end;
     finally
          FreeMem(lpVolumeNameBuffer);
          FreeMem(lpFileSystemNameBuffer);
     end;

end;

procedure GetOSVersionInfo;

     function Plat(Pl: DWORD): string;

     begin
          case Pl of

               VER_PLATFORM_WIN32s: result := 'Windows 3.1';
               VER_PLATFORM_WIN32_WINDOWS: result := 'Windows 95';

               VER_PLATFORM_WIN32_NT: result := 'Windows NT';
          else
               result := '???';

          end;
     end;

begin
     with OSVerInfo, SysInfoRec do
     begin

          dwOSVersionInfoSize := SizeOf(OSVerInfo);
          if GetVersionEx(OSVerInfo) then
               ;

          Version := Format('%d.%d (%d.%s)', [dwMajorVersion, dwMinorVersion,
               (dwBuildNumber and $FFFF),
                    szCSDVersion]);

          Plattform := Plat(dwPlatformId);
          PlattID := dwPlatformId;

     end;
end;

procedure GetDriveNames;

var
     D1: set of 0..25;

     D2: integer;
begin

     DWORD(D1) := Windows.GetLogicalDrives;
     with SysInfoRec do
     begin

          Drives := '';
          for D2 := 0 to 25 do

               if D2 in D1 then
                    Drives := Drives + Chr(D2 + Ord('A')) + ': ';

     end;
end;

procedure GetSystemInfo;
var
     LocalSI: TSystemInfo;
const
     PROCESSOR_INTEL_386 = 386;
     PROCESSOR_INTEL_486 = 486;
     PROCESSOR_INTEL_PENTIUM = 586;
     PROCESSOR_MIPS_R4000 = 4000;
     PROCESSOR_ALPHA_21064 = 21064;
begin
     Windows.GetSystemInfo(LocalSI);
     with LocalSI, SysInfoRec do
     begin
          case dwProcessorType of
               PROCESSOR_INTEL_386: ProcessorType := ' 386';
               PROCESSOR_INTEL_486: ProcessorType := ' 486';
               PROCESSOR_INTEL_PENTIUM: ProcessorType := ' Pentium';
               PROCESSOR_MIPS_R4000: ProcessorType := ' MIPS';
               PROCESSOR_ALPHA_21064: ProcessorType := ' ALPHA';
          end;
     end;
end;

procedure MemoryInfo;

var
     MemStatus: TMemoryStatus;

begin
     MemStatus.dwLength := SizeOf(MemStatus);

     GlobalMemoryStatus(MemStatus);
     with SysInfoRec do
     begin

          TotalPhys := MemStatus.dwTotalPhys div 1024;
          AvailPhys := MemStatus.dwAvailPhys div 1024;

          TotalVirtual := MemStatus.dwTotalVirtual div 1024;
          AvailVirtual := MemStatus.dwAvailVirtual div 1024;

          MemoryLoad := MemStatus.dwMemoryLoad;
     end;
end;

procedure GetRegisterInfo;
const

     FPPKey = '\hardware\DESCRIPTION\System\FloatingPointProcessor';
var

     CurVerKey: PChar;
begin

     with SysInfoRec do
     begin
          case PlattID of

               VER_PLATFORM_WIN32_WINDOWS:
                    CurVerKey := '\SOFTWARE\Microsoft\Windows\CurrentVersion';

               VER_PLATFORM_WIN32_NT:
                    CurVerKey :=
                         '\SOFTWARE\Microsoft\Windows NT\CurrentVersion';

          else
               CurVerKey := nil;
          end;
          with TRegistry.Create do

          try
               RootKey := HKEY_LOCAL_MACHINE;

               if OpenKey(FPPKey, False) then
                    FPU := 'Yes'

               else
                    FPU := 'No';
          finally

               Free;
          end;
          UserName := GetRegStr(CurVerKey, 'RegisteredOwner');

          CompanyName := GetRegStr(CurVerKey, 'RegisteredOrganization');
          if PlattID = VER_PLATFORM_WIN32_WINDOWS then
               CDSerial := GetRegStr(CurVerKey, 'ProductID');

     end;
end;

procedure GetBiosInfo;

begin
     with SysInfoRec do
     begin

          BiosDate := GetRegStr('Enum\Root\*PNP0C01\0000', 'BIOSDate');
          BiosName := GetRegStr('Enum\Root\*PNP0C01\0000', 'BIOSName');

          BiosVer := GetRegStr('Enum\Root\*PNP0C01\0000', 'BIOSVersion');
          BusType := GetRegStr('Enum\Root\*PNP0C01\0000', 'BusType');

          CPU := GetRegStr('Enum\Root\*PNP0C01\0000', 'CPU');
          MachineType := GetRegStr('Enum\Root\*PNP0C01\0000', 'MachineType');

     end;
end;

function GetAllSystemInfo: SystemInfoRecord; stdcall;

begin
     GetOSVersionInfo;

     GetOSVersionInfo;
     GetDriveNames;

     GetSystemInfo;
     GetVolumeInfo;

     GetComputerName;
     MemoryInfo;

     GetRegisterInfo;
     GetBiosInfo;

     result := SysInfoRec;
end;

end.

