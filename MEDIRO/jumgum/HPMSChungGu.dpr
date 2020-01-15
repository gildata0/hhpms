program HPMSChungGu;

uses
  Forms,
  SysUtils,
  dialogs,
  Windows,
  iniFiles,
  shellAPI,
  Controls,
  messages,
  Vcl.Themes,
  Vcl.Styles,
  jumgum in 'jumgum.pas' {jumgum_f},
  uConfig in '..\class\uConfig.pas',
  uDm in '..\Dm\uDm.pas' {dm_f: TDataModule},
  uLoadValue in '..\class\uLoadValue.pas',
  uFunctions in '..\class\uFunctions.pas',
  uTeeth in '..\class\uTeeth.pas',
  uGogekData in '..\class\uGogekData.pas',
  uRisSave in '..\class\uRisSave.pas',
  uTCPcs in '..\Dm\uTCPcs.pas' {dmTcpCs_f: TDataModule},
  uHLClass in '..\HL7\uHLClass.pas',
  ZAUSegUnit in '..\HL7\ZAUSegUnit.pas',
  ZINSegUnit in '..\HL7\ZINSegUnit.pas',
  ZPI_Z01MsgUnit in '..\HL7\ZPI_Z01MsgUnit.pas',
  uSysinfo in '..\class\uSysinfo.pas',
  uJinryoCalc in '..\class\uJinryoCalc.pas',
  uInputTeakJung in '..\jinryo\uInputTeakJung.pas' {InputTeakJung_f},
  uWebservice in '..\webservice\uWebservice.pas',
  Result in '..\uDur\Result.pas',
  SangSeek in '..\jinryo\SangSeek.pas' {SangSeek_f},
  uFormInit in '..\class\uFormInit.pas',
  SugaProp in '..\sugaEdit\SugaProp.pas' {SugaProp_f},
  login in 'login\login.pas' {Login_f};

var
     Mutex: THandle;
     Phdl: integer;

     ForegroundThreadID: DWORD;
     ThisThreadID: DWORD;
     timeout: DWORD;

     strPGMName: string;
     mrResult: TModalResult;
     DV_PGKIND,  //1: 진료실 2: 접수실
     DV_UserID,
          DV_UserName,
          DV_UserPass,
          DV_Version,
          DV_POWER: string;

     PrevInstHandle: THandle;
     {$R *.res}

function EnumWindowsProc(hWnd: THandle; lParam: LPARAM): Boolean; stdcall;
var
     szClassName: array[0..255] of char;
     szCaption: array[0..255] of Char;
begin
     Result := True;

     GetClassName(hWnd, szClassName, Sizeof(szClassName));
     if (Trim(string(szClassName)) = 'TStatisticsMain_f') then
     begin
          ZeroMemory(@szCaption, Sizeof(szCaption));
          GetWindowText(hWnd, szCaption, Sizeof(szCaption));

          SendMessage(hWnd, WM_SYSCOMMAND, SC_RESTORE, 0);
          Result := False;
     end;
end;

function GetIniValue(strSection, Ident: string): string;
var
     IniFile: TIniFile;
     strIniFile: string;
begin
     strIniFile := ExtractFileDir(Application.ExeName) + '\locale\locale.kr1';
     IniFile := TIniFile.Create(strIniFile);

     try
          Result := IniFile.ReadString(strSection, Ident, '');
     finally
          IniFile.Free;
     end;
end;

begin


     Mutex := CreateMutex(nil, True, 'HPMS ChungGu');
     if (Mutex <> 0) and (GetLastError = 0) then
     begin
          Application.Initialize;
          Application.ProcessMessages;


          if not assigned(dm_f) then
       //         TStyleManager.TrySetStyle('Windows10');

          Application.CreateForm(TDM_f, DM_f);
  if not assigned(Login_f) then
                 Application.CreateForm(TLogin_f, Login_f);

          Application.Initialize;
          Application.Title := '청구';

          with TLogin_f.Create(Application) do
          try
               lblStatus.Caption := '';

               Application.ProcessMessages;

               V_PGKIND := '1';

               //mrResult := Login_f.ShowModal();
               if Login_f.ShowModal() = mrOK then
              begin

               Update; // force display of SplashForm


               DV_UserID    := V_UserID;
               DV_UserName  := V_UserName;
               DV_UserPass  := V_UserPass;
               DV_POWER     := V_POWER;
               DV_Version   := V_version;




               Login_f.Free();

               lblStatus.Caption :=
                    '  데이터베이스에 연결중입니다.';
               // ProgressBar1.stepby(50);
               Application.ProcessMessages;
               if not assigned(dm_f) then
                    Application.CreateForm(TDM_f, DM_f);
               lblStatus.Caption :=
                    '  데이터베이스에 연결되었습니다.';
               Application.ProcessMessages;

               Application.CreateForm(TJumgum_f, Jumgum_f);

               lblStatus.Caption := '  ' +
                    'HPMS 청구 를 시작 하는 중입니다. 잠시 기다리세요.';
               lblStatus.Caption :=
                    '  아이디와 패스워드를 입력하세요.';
              end
              else
              begin
                     DM_f.Free();
                     Application.Terminate();
                    exit;
              end;

          finally

          end;







         Application.Run;
     end
     else
     begin
         Application.MessageBox('HPMS 청구가 이미 실행중입니다', '확인', 0);

         ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow, nil);
         ThisThreadID := GetWindowThreadPRocessId(Mutex, nil);
         if AttachThreadInput(ThisThreadID, ForegroundThreadID, True) then
         begin
            BringWindowToTop(Mutex); // IE 5.5 related hack
            SetForegroundWindow(Mutex);
            AttachThreadInput(ThisThreadID, ForegroundThreadID, False);
            GetForegroundWindow;// ( Mutex;
         end;


     end;


end.
