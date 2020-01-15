unit uFunctions;

interface
uses
     SysUtils,
     Dialogs,
     Classes, StdCtrls, Controls, ComCtrls,
     Windows, Math, Graphics,
     mmSystem, Forms, Messages, ExtCtrls, Registry,
     Maskutils, strutils, Mask, ShellApi, ShlObj, ActiveX, ShFolder,
     IdComponent, IdTCPConnection, IdTCPClient, IdBaseComponent,
     JPEG,
     ZipMstr,

     IdHTTP, IDGlobal, IdException, IdURI,

     inifiles, AdvProgressBar,
     AdvGrid, BaseGrid,Grids,
     TLHelp32,
     TypInfo, richedit, clipBrd,
     ComObj,  Imm ,
     GIFImg, PngImage, GraphUtil ;
     //OleAuto;
// shlobj: PItemIDList ��  GetConfigDir���� ���

type
  TimeInputmode = ( imHangul, imEnglish);

type
     THeadMark = record // ��ȣȭ�� ������ ���
          Mark: array[0..20] of Char;

          HdbIP         : string[100];
          HdbName       : string[100];
          HdbPASS       : string[100];
          HdbProtocol   : string[100];
          HdbUSER       : string[100];
          HServerIP     : string[100];
          HDocuIP       : string[100];
          HDBPort       : string[100];

     end;

//-----------------------------------------------------------
//Mac Address

const
     MAX_ADAPTER_ADDRESS_LENGTH = 8;
     MAX_ADAPTER_NAME_LENGTH = 256;
     MAX_ADAPTER_DESCRIPTION_LENGTH = 128;
     SMsgDlgOK = 'Ȯ��';
     SMsgDlgCancel = '���';
type
     // �ڰ�Ȯ���� ���� NHIC �α� ����
     TNHIC_Info = record
          ID: string;
          PW: string;
     end;

     // 2012.7.1  ======================
     pNHIC = ^TNHIC;
     TNHIC = record
          k_number,
               kiho,
               piboname,
               name,
               jumin,
               boninbudam,
               jongbeul,
               boninJan,
               boninJun,
               sunkiho,
               sunkiho2,
               sunkiho4,
               sanjung,
               artTeeth1,
               artTeeth2,
            artYoyang1,
            artYoyang2,
            ImplTeeth1,
            ImplTeeth2,
            ImplYoyang1,
            ImplYoyang2: string;

     end;

type
     TDayOfWeek =
          (Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday);

type
     TJakyuk = packed record
          piboname, kiho, k_number, c_name: string;
          jongbeul, kwan: integer;
     end;
type
     TPIDandHWND = record
          pID: DWORD;
          hWindow: THandle;
     end;

type
     TMacAddress = array[1..MAX_ADAPTER_ADDRESS_LENGTH] of byte;

type
     PTIP_ADDRESS_STRING = ^TIP_ADDRESS_STRING;
     TIP_ADDRESS_STRING = array[0..15] of char;

type
     PTIP_ADDR_STRING = ^TIP_ADDR_STRING;
     TIP_ADDR_STRING = packed record
          Next: PTIP_ADDR_STRING;
          IpAddress: TIP_ADDRESS_STRING;
          IpMask: TIP_ADDRESS_STRING;
          Context: DWORD;
     end;

type
     TTIME_T = array[1..325] of byte;

     PTIP_ADAPTER_INFO = ^TIP_ADAPTER_INFO;
     TIP_ADAPTER_INFO = packed record
          Next: PTIP_ADAPTER_INFO;
          ComboIndex: DWORD;
          AdapterName: array[1..MAX_ADAPTER_NAME_LENGTH + 4] of char;
          Description: array[1..MAX_ADAPTER_DESCRIPTION_LENGTH + 4] of char;
          AddressLength: UINT;
          Address: array[1..MAX_ADAPTER_ADDRESS_LENGTH] of byte;
          Index: DWORD;
          aType: UINT;
          DHCPEnabled: UINT;
          CurrentIPAddress: PTIP_ADDR_STRING;
          IPAddressList: TIP_ADDR_STRING;
          GatewayList: TIP_ADDR_STRING;
          DHCPServer: TIP_ADDR_STRING;
          HaveWINS: BOOL;
          PrimaryWINSServer: TIP_ADDR_STRING;
          SecondaryWINSServer: TIP_ADDR_STRING;
          LeaseObtained: TTIME_T;
          LeaseExpires: TTIME_T;
     end;
     //-----------------------------------------------------------

type
     TArrString = array of string;

type
     Tpanoinfo = packed record
          panoname: string;
          panodate: string;
          panoRatio: integer;
          panoX: integer;
          panoY: integer;
     end;

type
     TSangByungInfo = packed record
          sname : string;
          sCode : string;
     end;

function isFileInUse(fName: string): boolean;

function LoadPanoInfo(varChart: string; varRatio: integer = 33): TPanoinfo;
//function setSize(s: integer; varimage: TimgView32): single;

function CheckHpno(varHpno: string): Boolean;

function GetConfigDir: string;
function call_tel_type(const AnTel: string): string;
function call_saup_type(const AnTel: string): string;

function DateMaker(num: string): string;
function SaupMaker(num: string): string;

procedure DoSound(AMsg: string);
function GetComPorts(Ports: TStringList): integer;
function GetFileLastWriteTime(sFileName: string): TDateTime;

procedure DllRegister(Filename: string); //dLL���

function HexToInteger(HEX: string): Integer;

function HangeulTime(Str: string): string;
function HangeulMin(Str: string): string;
function HangeulTime2(Str: string): string;
function HangeulMin2(Str: string): string;
function IsDate(Str: string): Boolean;
function IsDate2(Str: string): Boolean;
procedure Get_AdaptersInfo(List: TStrings);
procedure Delay(msecs: integer);

function GetAdaptersInfo(pAdapterInfo: PTIP_ADAPTER_INFO; pOutBufLen: PULONG):
     DWORD; stdcall; external 'IPHLPAPI.DLL';

function Copy_Hangul(aStr: string; const iStart, iLen: integer): string;
function ScanString(lpszSource: PChar; var szArrString: TArrString; szSubStr1,
     szSubStr2: string): Integer;
function SubStr(Str: string; const Position: integer; const Delimiter: string =
     ' '): string;
function CalEndDate(TheDate: string): Integer;
function DisplayWon(TheInput: string): string;
function DisplayDash(TheInput: string): string;

function DelComma(TheInput: string): string;
function DelDash(TheInput: string): string;
function DelSlash(TheInput: string): string;
function DelUnderbar(TheInput: string): string;
function DelSpace(TheInput: string): string;
function DelPoint(TheInput: string): string;
function DelPLus(TheInput: string): string;
function DelColone(TheInput: string): string;

function DateSpin(aString: string; aChk: Boolean): string;

function ChkSaup(SaupNo: string): Boolean;
function ChkJumin(No: string): Boolean;
function CheckInt(str: string): Boolean;
function ReturnZeroInt(str: string): string;
function GetExeVersion(ExePath: string): string;
function ChkForignJumin(No: string): Boolean;
function MakeForignJumin(No: string): string;

function ChkBarcode(Barcode: string): string;
function ChkBarcodeEan8(Barcode: string): string;

function NaiCalc(TheInput: string; sDate: string = ''): string;
function JuminToNai(TheInput: string; sDate: string = ''): string;
function GenderDisp(TheInput: string): string;
function GenderDisp2(TheInput: string): string;
function GenderDisp3(TheInput: string): string;

function juminToGender(TheInput: string): string;
function JuminToGender2(TheInput: string): string;
function JuminToGender3(TheInput: string): string; //'O'�߰�

function JuminToBirthDash(TheInput: string): string;
function JuminToBirth_Eng(TheInput: string): string;

function BIRTHTONai(TheInput: string): string;

function ReturnWeek(m_Date: TDateTime): string;
function ReturnWeek2(m_Date: TDateTime): string;
//function SSNoCheck(ssno:string;var gender:String;var age:byte):boolean;
function SSNoCheck(ssno: string): boolean;
function GetJuminDate(strJuminNo: string): TDateTime;

function GetAveCharSize(Canvas: TCanvas): TPoint;

function IntToHanguel(Value: Int64): string;
function IntToHanguel2(Value: string): string;

function SayNum(Value: string): string;

function Round2(number: currency; pt: integer): currency;
function JulSa(number: Currency; iDigit: Integer): Currency;
function JulSa2(number: double; iDigit: Integer): double;

//Function CalJunki(P_Date,P_Code : String ) : Real ;
//Function CalAcName(TheCode : String) : String ;

function WindowFromProcessID(pID: DWORD): HWND;
function EnumWindowsProc(hWindow: HWND; var lParam: TPIDandHWND): Bool; stdcall;
function StrCase(Selector: string; StrList: array of string): Integer;
function fnDllMakeBmp(sImgFileName: string;
     sDatFileSize: string;
     sImgXsize: string;
     sImgYsize: string;
     sPenWidth: string;
     BmpFile: string): LONGINT; stdcall; external 'MakeSignBmp.dll' name
'fnDllMakeBmp';
function ConvertBitmapToRTF(const Bitmap: TBitmap): string;

//�� ��¥ ������ �ϼ� ���
function YearSu(FromDate, ToDate: TDateTime): Integer;
function DaySu(FromDate, ToDate: TDateTime): Integer;
function DaySBetween(FromDate, ToDate: TDateTime): Integer;

function dateYear(D: TDateTime): Integer;
function dateMonth(D: TDateTime): Integer;
function dateDay(D: TDateTime): Integer;
function dateBeginOfYear(D: TDateTime): TDateTime;
function dateEndOfYear(D: TDateTime): TDateTime;
function dateBeginOfMonth(D: TDateTime): TDateTime;
function dateEndOfMonth(D: TDateTime): TDateTime;
function dateWeekOfYear(D: TDateTime): Integer;
function dateDayOfYear(D: TDateTime): Integer;
function dateDayOfWeek(D: TDateTime): TDayOfWeek;
function dateLeapYear(D: TDateTime): Boolean;
function dateBeginOfQuarter(D: TDateTime): TDateTime;
function dateEndOfQuarter(D: TDateTime): TDateTime;
function dateBeginOfWeek(D: TDateTime; Weekday: Integer): TDateTime;
function dateDaysInMonth(D: TDateTime): Integer;

function CheckJumin(No: string): Boolean;
function MakeJuminCRC(No: string): Char;
function JuminToBirth(TheInput: string): string;
function JuminToBirth2(TheInput: string): string;
function JuminToBirth3(TheInput: string): string; //����� ǥ��

function SbcStrToMbcStr(const Str: string): string; //���� �ݰ�
function MbcStrToSbcStr(const Str: string): string;

function ConvertDaomoTeethToWisdomTeeth(varTeethNo: string): string;

procedure ExceptLogging(sMsg: string);

function TimetoMin(TimeValue: string): integer;
function MintoTime(MinValue: integer): string;
function SmsErrorCheck(ECode: integer): string;
procedure RemoveDuplicates(const stringList: TStringList);
procedure CleanMem(Strings: TStrings);
function OKGetSetName(AOrdTypeInfo: PTypeInfo; nIndex: integer): string;
function OKGetSetValue(AOrdTypeInfo: PTypeInfo; SetName: string): integer;

procedure TIFFReadRGBAImageSwapRB(Width, Height: Cardinal; Memory: Pointer);
function GetFileVersion2: string;
function MakeOr(varField, varTeeth: string): string;
function MakeOrLike(varField, varTeeth: string): string;

function IsJpegFile(const FileName: string): Boolean;
function IsBmpFile(const FileName: string): Boolean;
function GetNicAddr: AnsiString;
function htmlToString(ADefault: string): string;
function GetRichEditHeight(RE: Trichedit): integer;
procedure KillProcess(strExeName: string); //��ҹ��� �����Ѵ�....
procedure LoadProcess(var Slist: TStringList);
procedure AddProgramOnStart(ProgramName, FileName: string);

function makeThumbNail(sourcefileneme: string; DestDirectory:
     string): string;


procedure makeThumbNail_face(sourcefileneme: string; DestFilename: string);

function SaveClipBoardPicture(varName:string=''): string;
function  ZrStr(lNum: integer; lSiz: integer): string;
function ExtractURLFileName( S: String ): String;
function  SecondsIdle: Cardinal;



//�̹����� ������ ����ȭ������ �巡���Ͽ� �����ϱ����ؼ�  GetFileListDataObject �� ����Ѵ�.
function GetFileListDataObject(const Directory: string; Files:
     TStrings):
     IDataObject;


function ConnectDrive(varRemotepath:string; varDrive:string; varUserID, varPassword:string) : integer;
function  DisConnectDrive(varDrive:string) :string;

//���ڸ� ����
function ExtractInt(AString: String): String;


procedure FileDelete(aDirName: string);
function RemoveFromFolder(const Folder, Prefix: String): Boolean;
procedure  RemoveFiles(const Dir: String);
procedure ListFileDir(Path: string; FileList: TStrings);
function  DateType1(varDate: string): string;

procedure  GridSet(varGrid:TadvStringGrid);
function GetProgramFilesDir: TFileName;


function GetFirewall(var fwMgr, profile: OleVariant): boolean;
procedure AddFireWallApp(const appName, exePathName: string);
procedure AddFireWallPort_TCP(const PortName: string; PortNo: cardinal);
procedure AddFireWallPort_UDP(const PortName: string; PortNo: cardinal);
function DeleteLineBreaks(const S: string): string;

procedure  LoadEncodingInfo(OpenName: string);
procedure SaveDbInfo_encode(saveName,  dbIP,
     dbtosIP,
     dbName,
     dbPASS,
     dbProtocol,
     dbUSER,
     ServerIP,
     DocuIP,
     DBPort:string);
procedure Deletefiles(AFile : string);
procedure _Deletefiles(APath, AFileSpec: string);
function User_URLEncode(s: string): string;
function MyInputBox(const ACaption, APrompt: string;
          var Value: string; const sChar: Char): Boolean;
procedure RichEditPopupMenu(re: TRichEdit);
procedure SetImeInputMode(const AHandle : THandle; const Value : TimeInputMode);
function ResizeImageFile(ImagePath: string; ThumbnailSize: integer): string;
function ThumbnailFromImageFile(ImagePath: string; ThumbnailSize: integer): string;
function  checkBlankRow(aGrid: TAdvStringGrid; aCol : integer): Integer;
function CallJongbyul(VarJong: string): string;
function  strToDate_dash(s:string):string;
function FindString(Target: string): string;   //���ڸ� ����, ���� ���� �ڵ� ���鶧.���� ��з��ڵ� ��������

procedure NoDup(AListBox: TListBox); //ListBox�ߺ�����

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
     FontType: Integer; Data: Pointer): Integer; stdcall;

function  LoadUpdateVersionNo: string;
function  UpdateLogFileDown(Dir: string): Boolean;

procedure fileWebUpdate(Dir : string);



var


     vViewAll : boolean; //���ο��� �ҷ����� varViewAll
     vFindName : string; //���� �˻��� ���� ���ο��� �˻��� �̸�

     HeadMark: THeadMark;
     ENCRYPT_MARK : string;

implementation



function GetNicAddr: AnsiString;
const
     GUID_MAX = 72;
var
     guid: TGuid;
     buf: array[0..GUID_MAX] of WideChar;
begin
     CoCreateGuid(guid);
     StringFromGUID2(guid, buf, GUID_MAX);
     Result := Copy(WideCharToString(buf), 26, 12);
end;

{
  ��  �� : ���ڿ����� �����ڷ� �з��Ѵ�.
  ��  �� : [IN]  lpszSource : ����
           [OUT] szArrString : �з��� ���
           [IN]  szSubStr1   : ������1
           [IN]  szSubStr2   : ������2
  ��ȯ�� : �з��� ����
}

procedure CleanMem(Strings: TStrings);
var
     p: Pointer;
     iIndex: Integer;
begin
     for iIndex := 0 to Strings.Count - 1 do
     begin
          p := Strings.Objects[iIndex];
          if (p <> nil) then
          begin
               FreeMem(p);
          end;
     end;

     Strings.Clear;
end;

procedure ExceptLogging(sMsg: string);
var
     nFile: Integer;
     sFile: string;
     CurrRunDir: string;
begin

     //CurrRunDir := GetConfigDir + 'log\';
     CurrRunDir := ExtractFilePath(paramstr(0)) + 'log\';
     if not DirectoryExists(CurrRunDir) then
          if not CreateDir(CurrRunDir) then
               raise Exception.Create('Cannot create' + CurrRunDir);

     sFile := CurrRunDir + formatdateTime('yyyymmdd', now) + '.log';


     if FileExists(sFile) then
     begin
          nFile := FileOpen(sFile, fmOpenWrite);
          FileSeek(nFile, 0, 2);
     end
     else
     begin
          nFile := FileCreate(sFile);
     end;

     if nFile <> -1 then
     begin
          sFile := '[' + formatdateTime('YYYYMMDD.hh:nn:ss', now) + '] ' +
               sMsg
               + #13
               + #10;
          FileWrite(nFile, PWidestring(sFile)^, Length(sFile));
          FileClose(nFile);
     end;


end;

function StrCase(Selector: string; StrList: array of string): Integer;
var
     I: Integer;
begin
     Result := -1;
     for I := 0 to High(StrList) do
     begin
          if Selector = StrList[I] then
          begin
               Result := I;
               Break;
          end;
     end;
end;

function IsDate(Str: string): Boolean;
var
     iyear, imm, idd: integer;
begin
     if length(Str) <> 10 then
     begin
          result := False;
          exit;
     end;

     if checkInt(deldash(Str)) = false then
     begin
          result := False;
          exit;
     end;

     iyear := StrtoInt(copy(Str, 1, 4));
     imm := StrtoInt(copy(Str, 6, 2));
     idd := StrtoInt(copy(Str, 9, 2));

     if (imm > 0) and (imm < 13) then
          if (idd > 0) and (idd <= calEndDate(Str)) then
               result := True
          else
               result := False
     else
          result := False;
end;

function IsDate2(Str: string): Boolean;
var
     iyear, imm, idd: integer;
begin
     if length(Str) <> 8 then
     begin
          result := False;
          exit;
     end;

     if checkInt(deldash(Str)) = false then
     begin
          result := False;
          exit;
     end;

     iyear := StrtoInt(copy(Str, 1, 4));
     imm := StrtoInt(copy(Str, 5, 2));
     idd := StrtoInt(copy(Str, 7, 2));

     if (imm > 0) and (imm < 13) then
          if (idd > 0) and (idd <= calEndDate(Str)) then
               result := True
          else
               result := False
     else
          result := False;
end;

function TimetoMin(TimeValue: string): integer;
var
     atime, bMin: integer;
begin
     aTime := strtoint(copy(TimeValue, 1, 2));
     bMin := strtoint(copy(TimeValue, 4, 2));

     result := aTime * 60 + bMin;

end;

function MintoTime(MinValue: integer): string;
var
     atime, bMin: string;
begin
     aTime := formatFloat('00', MinValue div 60);
     bMin := formatFloat('00', MinValue mod 60);

     result := aTime + ':' + bMin;

end;

function HangeulTime(Str: string): string;
var
     varTime: integer;
begin
     varTime := strToint(str);

     if VarTime < 12 then
          result := '����' + intToStr(VarTime) + '��'
     else
          if VarTime = 12 then
               result := '����' + '12��'
          else
               if VarTime > 12 then
                    result := '����' + intToStr(vartime - 12) + '��';
end;

function HangeulMin(Str: string): string;
var
     varMin: integer;
begin
     varMin := strToInt(str);
     if varMin > 0 then
          result := intToStr(VarMin) + '��'
     else
          result := '00' + '��';
     //     result := '����';

end;

function HangeulTime2(Str: string): string;
var
     varTime: integer;
begin
     varTime := strToint(str);

     if VarTime <= 12 then
          result := intToStr(VarTime)
     else
          result := intToStr(vartime - 12);
end;

function HangeulMin2(Str: string): string;
var
     varMin: integer;
begin
     varMin := strToInt(str);
     if varMin > 0 then
          result := intToStr(VarMin)
     else
          result := '00';

end;

function GetAveCharSize(Canvas: TCanvas): TPoint;
var
     I: Integer;
     Buffer: array[0..51] of Char;
begin
     for I := 0 to 25 do
          Buffer[I] := Chr(I + Ord('A'));
     for I := 0 to 25 do
          Buffer[I + 26] := Chr(I + Ord('a'));
     GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
     Result.X := Result.X div 52;
end;

function MyInputBox(const ACaption, APrompt: string;
     var Value: string; const sChar: Char): Boolean;
var
     Form: TForm;
     Prompt: TLabel;
     Edit: TEdit;
     DialogUnits: TPoint;
     ButtonTop, ButtonWidth, ButtonHeight: Integer;

begin
     Result := False;
     Form := TForm.Create(Application);
     with Form do
     try
          Canvas.Font := Font;
          Font.Name := '����'; // ��Ʈ�� �۲�
          Font.Color := clBlack; // ��Ʈ�� ����
          Font.Size := 9; // ��Ʈ�� ������

          // ��Ʈ�� ��Ÿ��
          //  Font.Style := [fsBold, fsItalic, fsUnderline, fsStrikeOut];
          Font.Style := [];

          DialogUnits := GetAveCharSize(Canvas);
          BorderStyle := bsDialog;
          Caption := ACaption;
          ClientWidth := MulDiv(180, DialogUnits.X, 4);
          ClientHeight := MulDiv(63, DialogUnits.Y, 8);
          Position := poScreenCenter;
          Prompt := TLabel.Create(Form);
          with Prompt do
          begin
               Parent := Form;
               AutoSize := True;
               Left := MulDiv(8, DialogUnits.X, 4);
               Top := MulDiv(8, DialogUnits.Y, 8);
               Caption := APrompt;
          end;
          Edit := TEdit.Create(Form);
          with Edit do
          begin
               Parent := Form;
               Left := Prompt.Left;
               Top := MulDiv(19, DialogUnits.Y, 8);
               Width := MulDiv(164, DialogUnits.X, 4);
               MaxLength := 255;
               Text := Value;
               Passwordchar := sChar;
               imemode := imSHanguel;
               SelectAll;
          end;
          ButtonTop := MulDiv(41, DialogUnits.Y, 8);
          ButtonWidth := MulDiv(50, DialogUnits.X, 4);
          ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
          with TButton.Create(Form) do
          begin
               Parent := Form;
               Caption := SMsgDlgOK;
               ModalResult := idOK;
               Default := True;
               SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop,
                    ButtonWidth,
                    ButtonHeight);
          end;
          with TButton.Create(Form) do
          begin
               Parent := Form;
               Caption := SMsgDlgCancel;
               ModalResult := idCancel;
               Cancel := True;
               SetBounds(MulDiv(92, DialogUnits.X, 4), ButtonTop,
                    ButtonWidth,
                    ButtonHeight);
          end;
          if ShowModal = idOk then
          begin
               Value := Edit.Text;
               Result := True;
          end;
     finally
          Form.Free;
     end;
end;

function BIRTHTONai(TheInput: string): string;
var
     iCmp, iAge, iADate, iTodayDate, iTodayDay, iJuminDate: integer;
     sTmpDate: string;
begin
     if (trim(Theinput) <> '') and (length(trim(Theinput)) = 8) then
     begin
          //showmessage(theinput);
          iADate := strtoint(COPY(TheInput, 1, 4));

          iTodayDay := StrToInt(FormatDateTime('MMDD', now));
          iJuminDate := StrToInt(copy(TheInput, 5, 4));

          iTodayDate := StrToInt(FormatDateTime('YYYY', now));

          iAge := iTodayDate - iADate; //����
          if (iAge > 0) and (iAge < 150) then
          begin
               //������
              { if iJuminDate < iTodayDay then
                    Result := IntToStr(iAge)
               else
                    Result := IntToStr(iAge - 1);
                    }
               //�츮������
               Result := IntToStr(iAge + 1);
          end
          else
               Result := '0';

     end
     else
          Result := '0';

end;

procedure Delay(msecs: integer);
var
     FirstTickCount: longint;
begin
     FirstTickCount := GetTickCount;
     repeat
          Application.ProcessMessages;
     until ((GetTickCount - FirstTickCount) >= Longint(msecs));
end;

function ReturnZeroInt(str: string): string;
type
     TNumericDigits = set of char;
var
     i, err: integer;
     sNumericDigits: TNumericDigits;
     Chr: array[0..1] of Char;
begin

     err := 0;

     sNumericDigits := ['0'..'9'];

     for i := 1 to Length(str) do
     begin
          StrPCopy(Chr, Copy(str, i, 1));

          if (Chr[0] in sNumericDigits) then
               err := 0
          else
          begin
               err := 1;
               Break;
          end;
     end;

     if (err = 0) and (Str <> '') then
          Result := str
     else
          Result := '0';
end;

function WindowFromProcessID(pID: DWORD): HWND;
var
     Param: TPIDandHWND;
begin
     Param.pID := pID;
     Param.hWindow := 0;
     EnumWindows(@EnumWindowsProc, integer(@Param));
     result := Param.hWindow;
end;

function EnumWindowsProc(hWindow: HWND; var lParam: TPIDandHWND): Bool;
     stdcall;
var
     pID: DWORD;
begin
     GetWindowThreadProcessID(hWindow, @pID);
     if lParam.pID = pID then
     begin
          lParam.hWindow := hWindow;
          Result := False;
     end
     else
          result := true;
end;

function SayNum(Value: string): string;
begin
     if Value = '��' then
          PlaySound(pChar(ExtractFilePath(Application.exename) +
               '\wave\��.wav'), HInstance, SND_ASYNC)
     else
          if Value = '��' then
               PlaySound(pChar(ExtractFilePath(Application.exename) +
                    '\wave\��.wav'), HInstance, SND_ASYNC)
          else
               if Value = '��' then
                    PlaySound(pChar(ExtractFilePath(Application.exename) +
                         '\wave\��.wav'), HInstance, SND_ASYNC)
               else
                    if Value = '��' then
                         PlaySound(pChar(ExtractFilePath(Application.exename) +
                              '\wave\��.wav'), HInstance, SND_ASYNC)
                    else
                         if Value = '��' then
                              PlaySound(pChar(ExtractFilePath(Application.exename) +
                                   '\wave\��.wav'), HInstance, SND_ASYNC)
                         else
                              if Value = '��' then
                                   PlaySound(pChar(ExtractFilePath(Application.exename) +
                                        '\wave\��.wav'), HInstance, SND_ASYNC)
                              else
                                   if Value = 'ĥ' then
                                        PlaySound(pChar(ExtractFilePath(Application.exename) +
                                             '\wave\ĥ.wav'), HInstance,
                                             SND_ASYNC)
                                   else
                                        if Value = '��' then
                                             PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                  '\wave\��.wav'), HInstance,
                                                  SND_ASYNC)
                                        else
                                             if Value = '��' then
                                                  PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                       '\wave\��.wav'),
                                                       HInstance, SND_ASYNC)
                                             else
                                                  if Value = '��' then
                                                       PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                            '\wave\��.wav'),
                                                            HInstance, SND_ASYNC)
                                                  else
                                                       if Value = '��' then
                                                            PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                                 '\wave\��.wav'),
                                                                 HInstance,
                                                                 SND_ASYNC)
                                                       else
                                                            if Value = 'õ' then
                                                                 PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                                      '\wave\õ.wav'),
                                                                      HInstance,
                                                                      SND_ASYNC)
                                                            else
                                                                 if Value = '��' then
                                                                      PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                                           '\wave\��.wav'),
                                                                           HInstance,
                                                                           SND_ASYNC)
                                                                 else
                                                                      if Value =
                                                                           '��' then
                                                                           PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                                                '\wave\��.wav'),
                                                                                HInstance,
                                                                                SND_ASYNC)
                                                                      else
                                                                           if Value =
                                                                                '��' then
                                                                                PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                                                     '\wave\��.wav'), HInstance, SND_ASYNC)
                                                                           else
                                                                                if Value =
                                                                                     '��' then
                                                                                     PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                                                          '\wave\��.wav'), HInstance, SND_ASYNC)
                                                                                else
                                                                                     if Value = '��' then
                                                                                          PlaySound(pChar(ExtractFilePath(Application.exename) +
                                                                                               '\wave\��.wav'), HInstance, SND_ASYNC);

end;

function IntToHanguel(Value: Int64): string;
const
     NumberChar: array['0'..'9'] of string = ('��', '��', '��', '��', '��',
          '��',
          '��', 'ĥ', '��', '��');
     LevelChar: array[0..3] of string = ('', '��', '��', 'õ');
     DecimalChar: array[0..5] of string = ('', '��', '��', '��', '��', '��');
var
     S: string;
     UseDecimal: Boolean;
     i, Level: Integer;
begin
     Result := '';
     S := IntToStr(Value);
     UseDecimal := False;
     for i := 1 to Length(S) do
     begin
          Level := Length(S) - i;
          if S[i] <> '0' then
          begin
               UseDecimal := True;
               if Level mod 4 = 0 then
               begin
                    Result := Result + NumberChar[S[i]] +
                         DecimalChar[Level div
                         4];
                    UseDecimal := False;
               end
               else
                    Result := Result + NumberChar[S[i]] + LevelChar[Level
                         mod
                         4];
          end
          else
               if (Level mod 4 = 0) and UseDecimal then
               begin
                    Result := Result + DecimalChar[Level div 4];
                    UseDecimal := False;
               end;
     end;
end;

function IntToHanguel2(Value: string): string;
const
     NumberChar: array['0'..'9'] of string = ('��', '��', '��', '��', '��',
          '��',
          '��', 'ĥ', '��', '��');
var
     S: string;
     UseDecimal: Boolean;
     i, Level: Integer;
begin
     Result := '';
     //     S := IntToStr(Value);
     S := Value;
     for i := 1 to Length(S) do
     begin
          Level := Length(S) - i;
          //          if S[i] <> '0' then
          //          begin
          Result := Result + NumberChar[S[i]];
          //          end;
     end;
end;

function ScanString(lpszSource: PChar; var szArrString: TArrString; szSubStr1,
     szSubStr2: string): Integer;
var
     nItemCount: Integer;
begin
     nItemCount := Length(szArrString); // �迭 ����
     if (lpszSource^ = szSubStr1) or (lpszSource^ = szSubStr2) then
     begin
          SetLength(szArrString, nItemCount + 1);
          ScanString(@lpszSource[1], szArrString, szSubStr1, szSubStr2);
     end
     else
          if lpszSource^ <> #0 then
          begin
               szArrString[nItemCount - 1] := szArrString[nItemCount - 1] +
                    lpszSource^;
               ScanString(@lpszSource[1], szArrString, szSubStr1, szSubStr2);
          end;

     Result := Length(szArrString);
end;

function CheckInt(str: string): Boolean;
type
     TNumericDigits = set of char;
var
     i, err: integer;
     sNumericDigits: TNumericDigits;
     Chr: array[0..1] of Char;
begin
     err := 0;

     sNumericDigits := ['0'..'9'];

     for i := 1 to Length(str) do
     begin
          StrPCopy(Chr, Copy(str, i, 1));

          if (Chr[0] in sNumericDigits) then
               err := 0
          else
          begin
               err := 1;
               Break;
          end;
     end;

     if (err = 0) and (Str <> '') then
          Result := True
     else
          Result := False;
end;

function SubStr(Str: string; const Position: integer; const Delimiter: string =
     ' '): string;
var
     Strlen, ZeichenIdx, SubIdx, kompos: integer;
begin
     Result := '';
     Str := Str + Delimiter;
     StrLen := Length(Str);
     ZeichenIdx := 1;
     SubIdx := 1;
     while ZeichenIdx <= StrLen do
     begin
          KomPos := Pos(Delimiter, Str);
          if KomPos <> 0 then
          begin
               if SubIdx = Position then
               begin
                    result := Copy(Str, 1, KomPos - 1);
                    break;
               end;
               delete(Str, 1, KomPos);
               inc(SubIdx);
          end;
          inc(ZeichenIdx);
     end;
end;



//�� ��¥ ������ ��� ���

function YearSu(FromDate, ToDate: TDateTime): Integer;
var
     FDate, TDate: string;
begin
     FDate :=  formatdatetime('YYYY',FromDate);
     TDate :=  formatdatetime('YYYY',ToDate);
     Result := strtoint(TDate) - strtoint(FDate) +1;
end;
//�� ��¥ ������ �ϼ� ���

function DaySu(FromDate, ToDate: TDateTime): Integer;
var
     FDate, TDate: LongInt;
begin
     FDate := trunc(FromDate);
     TDate := trunc(ToDate);
     Result := Abs(FDate - TDate);
end;
function DaySBetween(FromDate, ToDate: TDateTime): Integer;
var
     FDate, TDate: LongInt;
begin
     FDate := trunc(FromDate);
     TDate := trunc(ToDate);
     Result := Abs(FDate - TDate);
end;

function DelSpace(TheInput: string): string;
var
     i, To_i: integer;
     Temp: string;
begin
     Temp := '';
     To_I := Length(Trim(TheInput));

     for i := 1 to To_I do
     begin
          if TheInput[i] = ' ' then
               Temp := Temp
          else
          begin
               Temp := Temp + Copy(TheInput, i, 1);
          end;
     end;
     Result := Temp;
end;

function ChkJumin(No: string): Boolean;
const
     Weight: packed array[1..12] of Integer =
     (2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5);
var
     Loop, Sum, Rest, Odd: Integer;
     //    kk, kk2:string;
begin
     if No = '' then
     begin
          Result := False;
          exit;
     end;

     if (Copy(No, 7, 1) = '1') or
          (Copy(No, 7, 1) = '2') or
          (Copy(No, 7, 1) = '3') or
          (Copy(No, 7, 1) = '4') then
     begin
          if Length(No) <> 13 then
          begin
               Result := False;
               exit;
          end
          else
          try
               Sum := 0;
               for Loop := 1 to 12 do
                    Sum := Sum + StrToInt(No[Loop]) *
                         Weight[Loop];
               Rest := 11 - (Sum mod 11);
               if Rest = 11 then
                    Rest := 1;
               if Rest = 10 then
                    Rest := 0;
               //   kk:= No[13];
               //   kk2:= Char(Rest + 48);
               //   showmessage(kk+':'+kk2);
               Result := Char(Rest + 48) = No[13];
          except
               Result := False;
          end;
     end
     else
     if (Copy(No, 7, 1) = '5') or
          (Copy(No, 7, 1) = '6') or
          (Copy(No, 7, 1) = '7') or
          (Copy(No, 7, 1) = '8') then
          begin
               odd := ((StrToInt(No[8]) * 10) + StrToInt(No[9])) mod 2;
               if odd <> 0 then
                    Result := False
               else
                    if Length(No) <> 13 then
                         Result := False
                    else
                    try
                         Sum := 0;
                         for Loop := 1 to 12 do
                              Sum := Sum + StrToInt(No[Loop]) *
                                   Weight[Loop];
                         Rest := 11 - (Sum mod 11);
                         Rest := Rest + 2;

                         if Rest > 9 then
                         begin
                              Rest := Rest mod 10;
                              if Rest > 9 then
                                   Rest := Rest mod 10;
                         end;

                         Result := Char(Rest + 48) = No[13];
                    except
                         Result := False;
                    end;
          end;
end;

function ChkForignJumin(No: string): Boolean;
const
     Weight: packed array[1..12] of Integer =
     (2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5);
var
     Loop, Sum, Rest, Odd: Integer;
begin

     if ((No[7] = '5') or
          (No[7] = '6') or
          (No[7] = '7') or
          (No[7] = '8'))
          and
          ((No[12] = '6') or
          (No[12] = '7') or
          (No[12] = '8') or
          (No[12] = '9')) then
     begin
          odd := ((StrToInt(No[8]) * 10) + StrToInt(No[9])) mod 2;
          if odd <> 0 then
               Result := False
          else
               if Length(No) <> 13 then
                    Result := False
               else
               try
                    Sum := 0;
                    for Loop := 1 to 12 do
                         Sum := Sum + StrToInt(No[Loop]) *
                              Weight[Loop];
                    Rest := 11 - (Sum mod 11);
                    Rest := Rest + 2;

                    if Rest > 9 then
                    begin
                         Rest := Rest mod 10;
                         if Rest > 9 then
                              Rest := Rest mod 10;
                    end;

                    Result := Char(Rest + 48) = No[13];
               except
                    Result := False;
               end;
     end;
end;

function MakeForignJumin(No: string): string;
const
     Weight: packed array[1..12] of Integer =
     (2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5);
var
     Loop, Sum, Rest: Integer;
begin

     if (Copy(No, 7, 1) = '5') or
          (Copy(No, 7, 1) = '6') or
          (Copy(No, 7, 1) = '7') or
          (Copy(No, 7, 1) = '8') then
     begin
          Sum := 0;
          for Loop := 1 to 12 do
               Sum := Sum + StrToInt(No[Loop]) * Weight[Loop];
          Rest := 11 - (Sum mod 11);
          Rest := Rest + 2;

          if Rest > 9 then
          begin
               Rest := Rest mod 10;
               //               Rest := Rest + 2;
               if Rest > 9 then
                    Rest := Rest mod 10;
          end;

          Result := No + Char(Rest);
     end;
end;

function SSNoCheck(ssno: string): boolean;
var
     tval: integer;
     tval2: integer;
begin
     tval := StrToInt(ssno[1]) * 2 + StrToInt(ssno[2]) * 3 + StrToInt(ssno[3])
          *
          4
          + StrToInt(ssno[4]) * 5 + StrToInt(ssno[5]) * 6 + StrToInt(ssno[6])
          * 7
          + StrToInt(ssno[8]) * 8 + StrToInt(ssno[9]) * 9 +
          StrToInt(ssno[10]) *
          2
          + StrToInt(ssno[11]) * 3 + StrToInt(ssno[12]) * 4 +
          StrToInt(ssno[13])
          * 5;
     tval2 := 11 - (tval mod 11);
     if (StrToInt(ssno[14]) = tval2) and (ssno[8] in ['1', '2']) then
          SSNoCheck := true
     else
          SSnoCheck := false;
     {       //��������
            if ssno[8]='1' then gender:='��'
            else if ssno[8]='2' then gender:='��';
            //���� ���
            Birthyear:=StrToInt(copy(ssno,1,2));
            DateStr:=DateToStr(now);
            YearStr:=copy(dateStr,1,2);
            age:=StrToInt(YearStr)-BirthYear+1;
     }
end;

function HexToInteger(HEX: string): Integer;
begin
     if HEX = '' then
     begin
          Result := 0;
     end
     else
     begin
          HEX := '$' + HEX;
          Result := StrToInt(HEX);
     end;
end;

//���ϱ��ϱ�

function ReturnWeek(m_Date: TDateTime): string;
begin
     case DayOfWeek(m_Date) of
          1: result := '�Ͽ���';
          2: result := '������';
          3: result := 'ȭ����';
          4: result := '������';
          5: result := '�����';
          6: result := '�ݿ���';
          7: result := '�����';
     end;
end;
//���ϱ��ϱ�2

function ReturnWeek2(m_Date: TDateTime): string;
begin
     case DayOfWeek(m_Date) of
          1: result := '��';
          2: result := '��';
          3: result := 'ȭ';
          4: result := '��';
          5: result := '��';
          6: result := '��';
          7: result := '��';
     end;
end;

// Ư������ �������� ���

function CalEndDate(TheDate: string): Integer;
var
     chkyear, chkmon, chkdate: Integer;
begin
     chkyear := StrToInt(copy(TheDate, 1, 4));
     chkmon := StrToInt(copy(TheDate, 6, 2));
     chkdate := 0;

     case chkmon of
          1, 3, 5, 7, 8, 10, 12: chkdate := 31;
          4, 6, 9, 11: chkdate := 30;
          2:
               begin
                    if (chkyear mod 4) <> 0 then
                         chkdate := 28
                    else
                         if (chkyear mod 100) <> 0 then
                              chkdate := 29
                         else
                              if (chkyear mod 400) <> 0 then
                                   chkdate := 28
                              else
                                   chkdate := 29;
               end;
     end;
     CalEndDate := chkdate;
end;
//�����ȣ'-'ǥ��

function DisplayDash(TheInput: string): string;
var
     Dashdel, Dashval: string;
begin
     DashDel := Trim(DelDash(TheInput));
     if TheInput <> '' then
          DashVal := copy(DashDel, 1, 3) + '-' + Copy(DashDel, 4, 3);
     DisplayDash := DashVal;
end;

// ��ǥ��

function DisplayWon(TheInput: string): string;
var
     temp, dap, commadel, commaval: string;
     i, s: Integer;
begin
     if trim(Theinput) = '' then
          theinput := '0';
     s := 0;

     CommaDel := Trim(DelComma(TheInput));

     if pos('.', Commadel) <> 0 then
          TheInput := copy(CommaDel, 1, pos('.', CommaDel) - 1)
     else
          TheInput := CommaDel;

     if pos('.', Commadel) <> 0 then
          CommaVal := delcomma(copy(Commadel, pos('.', Commadel),
               Length(Commadel)))
     else
          CommaVal := '';

     i := Length(TheInput);

     if Copy(TheInput, 1, 1) = '-' then
     begin
          s := 1;
          TheInput := Copy(TheInput, 2, i - 1);
          Dec(i);
     end;

     if i <= 3 then

          dap := TheInput

     else
          if (i > 3) and (i <= 6) then
          begin
               temp := ',' + copy(TheInput, i - 2, 3);
               temp := copy(TheInput, 1, i - 3) + temp;
               dap := temp;
          end
          else
               if (i > 6) and (i <= 9) then
               begin
                    temp := ',' + copy(TheInput, i - 2, 3);
                    temp := ',' + copy(TheInput, i - 5, 3) + temp;
                    temp := copy(TheInput, 1, i - 6) + temp;
                    dap := temp;
               end
               else
                    if (i > 9) and (i <= 12) then
                    begin
                         temp := ',' + copy(TheInput, i - 2, 3);
                         temp := ',' + copy(TheInput, i - 5, 3) + temp;
                         temp := ',' + copy(TheInput, i - 8, 3) + temp;
                         temp := copy(TheInput, 1, i - 9) + temp;
                         dap := temp;
                    end
                    else
                         if (i > 12) and (i <= 15) then
                         begin
                              temp := ',' + copy(TheInput, i - 2, 3);
                              temp := ',' + copy(TheInput, i - 5, 3) + temp;
                              temp := ',' + copy(TheInput, i - 8, 3) + temp;
                              temp := ',' + copy(TheInput, i - 11, 3) + temp;
                              temp := copy(TheInput, 1, i - 12) + temp;
                              dap := temp;
                         end;
     if s = 1 then
          DisplayWon := '-' + dap + CommaVal
     else
          DisplayWon := dap + CommaVal;
end;

function DelPoint(TheInput: string): string;
var
     i, To_i: integer;
     Temp: string;
begin
     Temp := '';
     To_I := Length(Trim(TheInput));

     for i := 1 to To_I do
     begin
          if TheInput[i] = '.' then
               Temp := Temp
          else
          begin
               Temp := Temp + Copy(TheInput, i, 1);
          end;
     end;
     Result := Temp;
end;

function DelPlus(TheInput: string): string;
var
     i, To_i: integer;
     Temp: string;
begin
     Temp := '';
     To_I := Length(Trim(TheInput));

     for i := 1 to To_I do
     begin
          if TheInput[i] = '+' then
               Temp := Temp
          else
          begin
               Temp := Temp + Copy(TheInput, i, 1);
          end;
     end;
     Result := Temp;
end;

function DelColone(TheInput: string): string;
var
     i, To_i: integer;
     Temp: string;
begin
     Temp := '';
     To_I := Length(Trim(TheInput));

     for i := 1 to To_I do
     begin
          if TheInput[i] = ':' then
               Temp := Temp
          else
          begin
               Temp := Temp + Copy(TheInput, i, 1);
          end;
     end;
     Result := Temp;
end;

// ��ǥ�� ����

function DelComma(TheInput: string): string;
var
     i, To_i: integer;
     Temp: string;
begin
     Temp := '';
     To_I := Length(Trim(TheInput));

     for i := 1 to To_I do
     begin
          if TheInput[i] = ',' then
               Temp := Temp
          else
          begin
               Temp := Temp + Copy(TheInput, i, 1);
          end;
     end;
     Result := Temp;
end;

function DelDash(TheInput: string): string;
var
     i, To_i: integer;
     Temp: string;
begin
     Temp := '';
     To_I := Length(Trim(TheInput));

     for i := 1 to To_I do
     begin
          if TheInput[i] = '-' then
               Temp := Temp
          else
          begin
               Temp := Temp + Copy(TheInput, i, 1);
          end;
     end;
     Result := Temp;
end;

function DelSlash(TheInput: string): string;
var
     i, To_i: integer;
     Temp: string;
begin
     Temp := '';
     To_I := Length(Trim(TheInput));

     for i := 1 to To_I do
     begin
          if TheInput[i] = '/' then
               Temp := Temp
          else
          begin
               Temp := Temp + Copy(TheInput, i, 1);
          end;
     end;
     Result := Temp;
end;

function DelUnderbar(TheInput: string): string;
var
     i, To_i: integer;
     Temp: string;
begin
     Temp := '';
     To_I := Length(Trim(TheInput));

     for i := 1 to To_I do
     begin
          if TheInput[i] = '_' then
               Temp := Temp
          else
          begin
               Temp := Temp + Copy(TheInput, i, 1);
          end;
     end;
     Result := Temp;
end;

function JuminToBirthDash(TheInput: string): string;
var
     iCmp: integer;
     TempYear, iJuminYear: string;
begin
     if length(theInput) < 7 then
     begin
          ;
          Result := '';
          exit;
     end;

     iCmp := strtoInt(copy(TheInput, 7, 1));
     TempYear := copy(TheInput, 1, 2);

     case icmp of
          1, 2:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          3, 4:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
          5, 6:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          7, 8:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
     end;

     Result := iJuminYear + '-' + copy(theInput, 3, 2) + '-' + copy(theInput,
          5, 2);
end;

function JuminToBirth_eng(TheInput: string): string;
var
     iCmp: integer;
     TempYear, iJuminYear: string;
begin
     if length(theInput) < 7 then
     begin
          ;
          Result := '';
          exit;
     end;

     iCmp := strtoInt(copy(TheInput, 7, 1));
     TempYear := copy(TheInput, 1, 2);

     case icmp of
          1, 2:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          3, 4:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
          5, 6:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          7, 8:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
     end;

     Result :=// iJuminYear + '-' + copy(theInput, 3, 2) + '-' + copy(theInput,  5, 2);
      copy(theInput,  3, 2) + '-' + copy(theInput, 5, 2) + '-' +  iJuminYear ;
      //MM-DD-YYYY
end;

//���̰��

function NaiCalc(TheInput: string; sDate: string = ''): string;
var
     iCmp, iAge, iJuminYear, iTodayYear: integer;
     TempYear, iTodayDate, iJuminDate: string;
     wDate: TDateTime;
begin
     if CheckInt(theinput) = false then
     begin
          result := '0';
          exit;
     end;
     {  if Copy(TheInput, 8, 4) = '0000' then
       begin
              Result := '0';
              Exit;
       end;
      }
     if sDate = '' then
          wDate := Now
     else
          wDate := StrToDate(sDate);
     if Theinput <> '' then
     begin
          if copy(TheInput, 7, 1) <> '' then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 0;
          TempYear := copy(TheInput, 1, 2);

          case iCmp of
               1, 2:
                    begin
                         iJuminYear := StrToInt('19' + TempYear);
                    end;
               3, 4:
                    begin
                         iJuminYear := StrToInt('20' + TempYear);
                    end;
               5, 6:
                    begin
                         iJuminYear := StrToInt('19' + TempYear);
                    end;
               7, 8:
                    begin
                         iJuminYear := StrToInt('20' + TempYear);
                    end;
          end;

          iTodayDate := FormatDateTime('MMDD', wDate);
          iJuminDate := copy(TheInput, 3, 4);

          iTodayYear := StrToInt(FormatDateTime('YYYY', wDate));

          iAge := iTodayYear - iJuminYear; //����
          if (iAge > 0) and (iAge < 150) then
          begin
               //������
               if iTodayDate >= iJuminDate then
                    Result := IntToStr(iAge)
               else
                    Result := IntToStr(iAge - 1);

               //�츮���� ����
              // Result := IntToStr(iAge + 1);
          end
          else
               Result := '0';

     end
     else
          Result := '0';

end;

function JumintoNai(TheInput: string; sDate: string = ''): string;
var
     iCmp, iAge, iJuminYear, iTodayYear: integer;
     TempYear, iTodayDate, iJuminDate: string;
     wDate: TDateTime;
     cc2: integer; // --> �߰�

begin
     // if Copy(TheInput, 8, 4) = '0000' then
     // begin
     //      Result := '20';
     //      Exit;
     // end;
     cc2 := length(TheInput); //  --> �߰�

     if cc2 < 6 then
     begin
          Result := '0';
          Exit;
     end;

     if sDate = '' then
          wDate := Now
     else
          wDate := StrToDate(sDate);

     if Theinput <> '' then
     begin

          if (copy(TheInput, 7, 1) <> '') and
             (checkInt((copy(TheInput, 7, 1)))=true ) then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 0;


          TempYear := copy(TheInput, 1, 2);


          if (length(trim(Tempyear)) < 2) and (checkInt(Tempyear)=false ) then
          begin
               Result := '0';
               Exit;
          end;

          case iCmp of
               1, 2:
                    begin
                         iJuminYear := StrToInt('19' + TempYear);
                    end;
               3, 4:
                    begin
                         iJuminYear := StrToInt('20' + TempYear);
                    end;
               5, 6:
                    begin
                         iJuminYear := StrToInt('19' + TempYear);
                    end;
               7, 8:
                    begin
                         iJuminYear := StrToInt('20' + TempYear);
                    end;
          end;

          iTodayDate := FormatDateTime('MMDD', wDate);
          iJuminDate := copy(TheInput, 3, 4);

          iTodayYear := StrToInt(FormatDateTime('YYYY', wDate));

          iAge := iTodayYear - iJuminYear; //����
          if (iAge > 0) and (iAge < 150) then
          begin
               //������
               if iTodayDate >= iJuminDate then
                    Result := IntToStr(iAge)
               else
                    Result := IntToStr(iAge - 1);

               //�츮���� ����
          //     Result := IntToStr(iAge + 1);
          end
          else
               Result := '0';

     end
     else
          Result := '0';

end;

function JumintoYearNai(TheInput: string; sDate: string = ''): string;
var
     iCmp, iAge, iJuminYear, iTodayYear: integer;
     TempYear, iTodayDate, iJuminDate: string;
     wDate: TDateTime;

begin

     if length(TheInput) < 6 then
     begin
          Result := '0';
          Exit;
     end;

     if sDate = '' then
          wDate := Now
     else
          wDate := StrToDate(sDate);

     if Theinput <> '' then
     begin
          if copy(TheInput, 7, 1) <> '' then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 0;
          TempYear := copy(TheInput, 1, 2);
          if length(trim(Tempyear)) < 2 then
          begin
               Result := '';
               Exit;
          end;

          case iCmp of
               1, 2:
                    begin
                         iJuminYear := StrToInt('19' + TempYear);
                    end;
               3, 4:
                    begin
                         iJuminYear := StrToInt('20' + TempYear);
                    end;
               5, 6:
                    begin
                         iJuminYear := StrToInt('19' + TempYear);
                    end;
               7, 8:
                    begin
                         iJuminYear := StrToInt('20' + TempYear);
                    end;
          end;

          iTodayDate := FormatDateTime('MMDD', wDate);
          iJuminDate := copy(TheInput, 3, 4);

          iTodayYear := StrToInt(FormatDateTime('YYYY', wDate));

          iAge := iTodayYear - iJuminYear; //����
          if (iAge > 0) and (iAge < 150) then
          begin
               //������
               if iTodayDate >= iJuminDate then
                    Result := IntToStr(iAge)
               else
                    Result := IntToStr(iAge - 1);

               //�츮���� ����
          //     Result := IntToStr(iAge + 1);
          end
          else
               Result := '0';

     end
     else
          Result := '0';

end;

function GenderDisp(TheInput: string): string;
var
     iCmp: integer;
     sTmpDate: string;
begin
     if Theinput <> '' then
     begin
          if copy(TheInput, 7, 1) <> '' then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 1;

          case iCmp of
               1, 3, 5, 7:
                    begin
                         sTmpDate := '��'
                    end;
               2, 4, 6, 8:
                    begin
                         sTmpDate := '��'
                    end;
          end;
          Result := STmpDate;
     end
     else
          Result := '';

end;

function GenderDisp2(TheInput: string): string;
var
     iCmp: integer;
     sTmpDate: string;
begin
     if Theinput <> '' then
     begin
          if copy(TheInput, 7, 1) <> '' then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 1;

          case iCmp of
               1, 3, 5, 7:
                    begin
                         sTmpDate := '1'
                    end;
               2, 4, 6, 8:
                    begin
                         sTmpDate := '0'
                    end;
          end;
          Result := STmpDate;
     end
     else
          Result := '';

end;

function GenderDisp3(TheInput: string): string;
var
     iCmp: integer;
     sTmpDate: string;
begin
     Theinput := deldash(Theinput);

     if Theinput <> '' then
     begin
          if copy(TheInput, 7, 1) <> '' then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 1;

          case iCmp of
               1, 3, 5, 7:
                    begin
                         sTmpDate := '1'
                    end;
               2, 4, 6, 8:
                    begin
                         sTmpDate := '2'
                    end;
               else
                   sTmpDate := '3'
          end;
          Result := STmpDate;
     end
     else
          Result := '3';

end;

function JuminToGender(TheInput: string): string;
var
     iCmp: integer;
     sTmpDate: string;
begin
     if Theinput <> '' then
     begin
          THEINPUT := DELDASH(theinput);
          if (copy(TheInput, 7, 1) <> '') and
             (checkInt((copy(TheInput, 7, 1)))=true )
              then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 1;

          case iCmp of
               1, 3, 5, 7:
                    begin
                         sTmpDate := 'M'
                    end;
               2, 4, 6, 8:
                    begin
                         sTmpDate := 'F'
                    end;
              else
                 sTmpDate:='O';
          end;
          Result := STmpDate;
     end
     else
          Result := 'O';

end;

function JuminToGender2(TheInput: string): string;
var
     iCmp: integer;
     sTmpDate: string;
begin
     if Theinput <> '' then
     begin
          THEINPUT := DELDASH(theinput);
          if copy(TheInput, 7, 1) <> '' then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 1;

          case iCmp of
               1, 3, 5, 7:
                    begin
                         sTmpDate := 'Male'
                    end;
               2, 4, 6, 8:
                    begin
                         sTmpDate := 'Female'
                    end;
          end;
          Result := STmpDate;
     end
     else
          Result := '';

end;



function JuminToGender3(TheInput: string): string;
var
     iCmp: integer;
     sTmpDate: string;
begin
     if Theinput <> '' then
     begin
          THEINPUT := DELDASH(theinput);
          if copy(TheInput, 7, 1) <> '' then
               iCmp := StrToInt(copy(TheInput, 7, 1))
          else
               iCmp := 1;

          case iCmp of
               1, 3, 5, 7:
                    begin
                         sTmpDate := 'M'
                    end;
               2, 4, 6, 8:
                    begin
                         sTmpDate := 'F'
                    end;
              else
                 sTmpDate:='O';
          end;
          Result := STmpDate;
     end
     else
          Result := 'O';

end;

//����ڹ�ȣüũ

function ChkSaup(SaupNo: string): Boolean;
var
     S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, W1, W2: Integer;
begin
     S1 := StrToInt(Copy(SaupNo, 1, 1)) * 1;
     S2 := StrToInt(Copy(SaupNo, 2, 1)) * 3;
     S3 := StrToInt(Copy(SaupNo, 3, 1)) * 7;
     S4 := StrToInt(Copy(SaupNo, 4, 1)) * 1;
     S5 := StrToInt(Copy(SaupNo, 5, 1)) * 3;
     S6 := StrToInt(Copy(SaupNo, 6, 1)) * 7;
     S7 := StrToInt(Copy(SaupNo, 7, 1)) * 1;
     S8 := StrToInt(Copy(SaupNo, 8, 1)) * 3;
     S9 := Trunc((StrToInt(Copy(SaupNo, 9, 1)) * 5) / 10);
     S10 := Trunc((StrToInt(Copy(SaupNo, 9, 1)) * 5) - S9 * 10);
     W1 := (S1 + S2 + S3 + S4 + S5 + S6 + S7 + S8) mod 10;
     W2 := (S9 + S10 + W1) mod 10;
     if (10 - W2) = StrToInt(Copy(SaupNo, 10, 1)) then
          Result := True
     else
          Result := False;
end;

function MakeJuminCRC(No: string): Char;
const
     Weight: packed array[1..12] of Integer =
     (2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5);
var
     Loop, Sum, Rest: Integer;
begin
     if Length(No) <> 12 then
          Result := '*'
     else
     try
          Sum := 0;
          for Loop := 1 to 12 do
               Sum := Sum + StrToInt(No[Loop]) * Weight[Loop];
          Rest := 11 - (Sum mod 11);
          if Rest = 11 then
               Rest := 1;
          if Rest = 10 then
               Rest := 0;
          Result := Char(Rest + 48);
     except
          Result := '*';
     end;
end;

//�ֹι�ȣüũ
{function ChkJumin(JuminNo: string): Boolean;
var
     N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13: Integer;
begin
     if ((Copy(juminNo, 1, 1) <> ' ') and
          (Copy(juminNo, 2, 1) <> ' ') and
          (Copy(juminNo, 3, 1) <> ' ') and
          (Copy(juminNo, 4, 1) <> ' ') and
          (Copy(juminNo, 5, 1) <> ' ') and
          (Copy(juminNo, 6, 1) <> ' ') and
          (Copy(juminNo, 7, 1) <> ' ') and
          (Copy(juminNo, 8, 1) <> ' ') and
          (Copy(juminNo, 9, 1) <> ' ') and
          (Copy(juminNo, 10, 1) <> ' ') and
          (Copy(juminNo, 11, 1) <> ' ') and
          (Copy(juminNo, 12, 1) <> ' ') and
          (Copy(juminNo, 13, 1) <> ' ')) then
     begin

          N1 := StrToInt(Copy(juminNo, 1, 1)) * 2;
          N2 := StrToInt(Copy(juminNo, 2, 1)) * 3;
          N3 := StrToInt(Copy(juminNo, 3, 1)) * 4;
          N4 := StrToInt(Copy(juminNo, 4, 1)) * 5;
          N5 := StrToInt(Copy(juminNo, 5, 1)) * 6;
          N6 := StrToInt(Copy(juminNo, 6, 1)) * 7;
          N7 := StrToInt(Copy(juminNo, 7, 1)) * 8;
          N8 := StrToInt(Copy(juminNo, 8, 1)) * 9;
          N9 := StrToInt(Copy(juminNo, 9, 1)) * 2;
          N10 := StrToInt(Copy(juminNo, 10, 1)) * 3;
          N11 := StrToInt(Copy(juminNo, 11, 1)) * 4;
          N12 := StrToInt(Copy(juminNo, 12, 1)) * 5;
          N13 := 11 - (N1 + N2 + N3 + N4 + N5 + N6 + N7 + N8 + N9 + N10 + N11 + N12) mod 11;

          if N13 = StrToInt(Copy(JuminNo, 13, 1)) then
               Result := True
          else
               Result := False;
     end
     else
     begin
          Result := False;
     end;
end;

}
//���ڵ�üũ

function ChkBarcode(Barcode: string): string;
var
     N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13: Integer;
begin
     N1 := StrToInt(Copy(Barcode, 1, 1));
     N2 := StrToInt(Copy(Barcode, 2, 1));
     N3 := StrToInt(Copy(Barcode, 3, 1));
     N4 := StrToInt(Copy(Barcode, 4, 1));
     N5 := StrToInt(Copy(Barcode, 5, 1));
     N6 := StrToInt(Copy(Barcode, 6, 1));
     N7 := StrToInt(Copy(Barcode, 7, 1));
     N8 := StrToInt(Copy(Barcode, 8, 1));
     N9 := StrToInt(Copy(Barcode, 9, 1));
     N10 := StrToInt(Copy(Barcode, 10, 1));
     N11 := StrToInt(Copy(Barcode, 11, 1));
     N12 := StrToInt(Copy(Barcode, 12, 1));

     N13 := (10 - ((N12 + N10 + N8 + N6 + N4 + N2) * 3 + (N11 + N9 + N7 + N5 +
          N3
          + N1)) mod 10) mod 10;
     //  M2 := M1*3;
     //  M3 := N11 + N9 + N7 + N5 + N3 + N1;
     //  M4 := M3 + M2;
     //  N13 := 11-(N1+N2+N3+N4+N5+N6+N7+N8+N9+N10+N11+N12) mod 11;
     //  If N13 = StrToInt(Copy(JuminNo,13,1)) then
     //     Result := True
     //  Else
     Result := IntToStr(N1) + IntToStr(N2) + IntToStr(N3) + IntToStr(N4) +
          IntToStr(N5) + IntToStr(N6) +
          IntToStr(N7) + IntToStr(N8) + IntToStr(N9) + IntToStr(N10) +
          IntToStr(N11) + IntToStr(N12) + IntToStr(N13);
end;
//���ڵ�üũ

function ChkBarcodeEan8(Barcode: string): string;
var
     N1, N2, N3, N4, N5, N6, N7, N8: Integer;
begin
     N1 := StrToInt(Copy(Barcode, 1, 1));
     N2 := StrToInt(Copy(Barcode, 2, 1));
     N3 := StrToInt(Copy(Barcode, 3, 1));
     N4 := StrToInt(Copy(Barcode, 4, 1));
     N5 := StrToInt(Copy(Barcode, 5, 1));
     N6 := StrToInt(Copy(Barcode, 6, 1));
     N7 := StrToInt(Copy(Barcode, 7, 1));

     N8 := 10 - (((N7 + N5 + N3 + N1) * 3 + (N2 + N4 + N6)) mod 10);
     if n8 = 10 then
          n8 := 0;

     Result := IntToStr(N1) + IntToStr(N2) + IntToStr(N3) + IntToStr(N4) +
          IntToStr(N5) + IntToStr(N6) +
          IntToStr(N7) + IntToStr(N8);
end;

//��¥����

function DateSpin(aString: string; aChk: Boolean): string;
var
     Year, Mon, DD: Integer;
begin
     // ��, ��, �� ĸ��
     Year := StrToInt(Copy(aString, 1, 4));
     Mon := StrToInt(Copy(aString, 6, 2));
     DD := StrToInt(Copy(aString, 9, 2));

     // ���ڰ� ���ҵǾ��� ���
     if aChk = False then
          if (Mon = 1) and (DD = 1) then
          begin
               Year := Year - 1;
               Mon := 12;
               DD := 31;
               Result := FormatFloat('0000', Year) + '.' +
                    FormatFloat('00', Mon)
                    + '.' + FormatFloat('00', DD);
               Exit;
          end
          else
               if (DD = 1) then
               begin
                    Mon := Mon - 1;
                    DD := CalEndDate(copy(aString, 1, 4) + '.' +
                         FormatFloat('00',
                         Mon) + '.' + copy(aString, 9, 2));
                    Result := FormatFloat('0000', Year) + '.' +
                         FormatFloat('00', Mon)
                         + '.' + FormatFloat('00', DD);
                    Exit;
               end
               else
               begin
                    Result := FormatFloat('0000', Year) + '.' +
                         FormatFloat('00', Mon)
                         + '.' + FormatFloat('00', DD - 1);
                    Exit;
               end;

     // ���ڰ� �����Ǿ��� ���
     if aChk = True then
          if (Mon = 12) and (DD = 31) then
          begin
               Year := Year + 1;
               Mon := 1;
               DD := 1;
               Result := FormatFloat('0000', Year) + '.' +
                    FormatFloat('00', Mon)
                    + '.' + FormatFloat('00', DD);
               Exit;
          end
          else
               if DD = CalEndDate(aString) then
               begin
                    Result := FormatFloat('0000', Year) + '.' +
                         FormatFloat('00', Mon
                         + 1) + '.' + '01';
                    Exit;
               end
               else
                    Result := FormatFloat('0000', Year) + '.' +
                         FormatFloat('00', Mon)
                         + '.' + FormatFloat('00', DD + 1);
     Exit;
end;

function Copy_Hangul(aStr: string; const iStart, iLen: integer): string;
var
     sTemp: string;
     StartPos: integer;
begin
     sTemp := aStr;
     StartPos := iStart;
     Result := '';
     if StartPos > 0 then
          if ByteType(sTemp, StartPos) = mbTrailByte then
               Dec(StartPos);
     if ByteType(sTemp, iLen) = mbLeadByte then
          Result := Copy(sTemp, StartPos, iLen - 1)
     else
          Result := Copy(sTemp, StartPos, iLen);
end;

{
// �����̿��� ���
Function CalJunki(P_Date, P_Code : String ) : Real ;
var
  Cdr_Gbn : String ;
  W_JunkiAmt,W_DrAmt,W_CrAmt : Real ;
begin
  W_JunkiAmt := 0 ; W_DrAmt := 0 ; W_CrAmt := 0 ;
  With BaseDM.WorkSql do
  begin
  // ���������� ���뱸�� �˾ƺ��� //
    Close;
    SQL.Clear ;
    SQL.Add('Select Ac_Code,Ac_CdrSW From AcCdMst Where Ac_Code = :Code');
    ParamByName('Code').AsString := P_Code;
    Open;
    Cdr_Gbn := FieldByName('Ac_CdrSW').AsString ;

  // ���⵵ �̿��� ���ϱ� //
    Close;
    SQL.Clear;
    SQL.Add('Select * From YearTot Where Yt_Year = :Y and Yt_AcCode = :Code');
    ParamByName('Y').AsString    := IntToStr(StrToint(copy(P_Date,1,4))-1);
    ParamByName('Code').AsString := P_Code;
    Open ;
    if RecordCount >0 then
       W_Junkiamt := FieldByName('Yt_DrAmt').AsFloat + FieldByName('Yt_CrAmt').AsFloat;

  // ���� �̿��� ���ϱ� //
    if copy(P_Date,6,2) > '01' then
    Close;
    SQL.Clear;
    SQL.Add('Select Mt_AcCode,Sum(Mt_DrAmt) SumDr, Sum(Mt_CrAmt) SumCr From MonTot ');
    SQL.Add('Where Mt_YYMM >= :F_YM and Mt_YYMM <= :T_YM and Mt_AcCode = :Code');
    SQL.Add('Group By Mt_AcCode');
    ParamByName('F_YM').AsString   := copy(P_Date,1,4)+ '01' ;
    ParamByName('T_YM').AsString   := copy(P_Date,1,4)+ FormatFloat('##',StrToInt(copy(P_Date,6,2))-1);
    ParamByName('Code').AsString := P_Code;
    Open ;
    if RecordCount >0 then
    begin
       if Cdr_Gbn = '1' then
          W_JunkiAmt := W_junkiAmt + FieldByName('SumDr').AsFloat - FieldByName('SumCr').AsFloat
       else
          W_JunkiAmt := W_junkiAmt + FieldByName('SumCr').AsFloat - FieldByName('SumDr').AsFloat ;
    end;

  // ���� �̿��� ���ϱ� //
  if (Length(Trim(P_Date)) > 7) and (Copy(P_Date,9,2) > '01') then
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select Ad_AcCode,Sum(Ad_Dr) SumDr,Sum(Ad_Cr) SumCr From AccMst ');
    SQL.Add('Where Ad_Date >= :F_Date and Ad_Date <= :T_Date and Ad_AcCode = :Code ');
    SQL.Add('Group By Ad_AcCode');
    ParamByName('F_Date').AsString := copy(P_Date,1,8) + '01';
    ParamByName('T_Date').AsString := copy(P_Date,1,8) + FormatFloat('##',StrToInt(copy(P_Date,9,2))-1) ;
    ParamByName('Code').AsString   := P_Code;
    Open;
    if RecordCount > 0  then
    begin
      if Cdr_Gbn = '1' then
         W_JunkiAmt := W_junkiAmt + FieldByName('SumDr').AsFloat - FieldByName('SumCr').AsFloat
      else
         W_JunkiAmt := W_junkiAmt + FieldByName('SumCr').AsFloat - FieldByName('SumDr').AsFloat ;
    end;
  end;
  end;
Result := W_JunkiAmt ;
end;

Function CalAcName(TheCode : String) : String ;
Begin
  With BaseDM.WorkSql do
  begin
    Close;
    SQL.Clear ;
    SQL.Add('select Ac_NameF From AcCdMst Where Ac_Code = :code');
    ParamByName('code').AsString := TheCode ;
    Open ;
    If RecordCount > 0 then
       Result := FieldByName('Ac_NameF').AsString ;
  end;
  }
  //End;

//-----------------------------------------------------------
//Mac Address

function MacAddr2Str(MacAddr: TMacAddress; size: integer): string;
var
     i: integer;
begin
     if Size = 0 then
     begin
          Result := '00-00-00-00-00-00';
          EXIT;
     end
     else
          Result := '';
     //
     for i := 1 to Size do
          Result := Result + IntToHex(MacAddr[i], 2) + '-';
     Delete(Result, Length(Result), 1);
end;

{procedure Get_AdaptersInfo(List: TStrings);
var
     Error, BufLen: DWORD;
     AdapterInfo: PTIP_ADAPTER_INFO;
     Descr: string;
begin
     List.Clear;
     BufLen := SizeOf(AdapterInfo^);
     New(AdapterInfo);

     Error := GetAdaptersInfo(AdapterInfo, @BufLen);
     if Error = NO_ERROR then
     begin
          while (AdapterInfo <> nil) do
          begin
               with AdapterInfo^ do
               begin
                    List.Add(MacAddr2Str(TMacAddress(Address), AddressLength));
                    AdapterInfo := Next;
               end;
          end;
     end
     else
     begin
          List.Add(SysErrorMessage(Error));
     end;

     Dispose(AdapterInfo);
end;
}

procedure Get_AdaptersInfo(List: TStrings);
var
     Error, BufLen: DWORD;
     AdapterInfo: PTIP_ADAPTER_INFO;
     // Descr : string;
begin
     List.Clear;

     // BufLen := sizeOf(AdapterInfo^);
     // �̺κе� ����
     BufLen := 0;

     New(AdapterInfo);

     Error := GetAdaptersInfo(AdapterInfo, @BufLen);

     // ���� ������ �ڷḦ ���� �Ͽ� �̺κ��� �߰�
     if Error = ERROR_BUFFER_OVERFLOW then
     begin
          reallocMem(AdapterInfo, buflen);
          error := GetAdaptersInfo(AdapterInfo, @BufLen);
     end;

     // �������

     if Error = NO_ERROR then
     begin

          while (AdapterInfo <> nil) do
          begin
               with AdapterInfo^ do
               begin
                    List.Add(MacAddr2Str(TMacAddress(Address),
                         AddressLength));
                    AdapterInfo := Next;
               end;
          end;
     end
     else
     begin
          List.Add(SysErrorMessage(Error));
     end;

     Dispose(AdapterInfo);

end;

//-----------------------------------------------------------

function Round2(number: currency; pt: integer): currency;
//Round2(number: single; pt: integer): Double;
begin
     if number > 0 then
     begin
          if pt >= 0 then
          begin
               Result := TRUNC((number / power(10, pt)) + 0.5) * power(10,
                    pt);
          end
          else
          begin
               Result := TRUNC((number * power(10, -pt)) + 0.5) /
                    power(10,
                    -pt);
          end;
     end
     else
          if number < 0 then
     begin
          if pt >= 0 then
          begin
               Result := number;
          end
          else
          begin
               Result := number;
          end;
     end
     else

     begin

          Result := 0;
     end;
end;

function JulSa2(number: double; iDigit: Integer): double;
begin
     Result := (Floor(number) div iDigit) * iDigit;
end;



function JulSa(number: Currency; iDigit: Integer): Currency;
var
     iValue: Integer;
     iIndex: Integer;
begin
     iValue := 1;
     for iIndex := 1 to iDigit do
     begin
          iValue := iValue * 10;
     end;

     Result := Floor((number / iValue)) * iValue;
end;

function GetExeVersion(ExePath: string): string;
var
     trans: Pointer;
     transtring: string;
     n, aLen, bLen: DWORD;
     Buf: PChar;
     VersionS: PChar;
begin

     n := GetFileVersionInfoSize(PChar(ExePath), n); // ���� ũ�⸦ �˾Ƴٴ�.
     Buf := AllocMem(n); // ������ ũ�⸦ ����.
     GetFileVersionInfo(PChar(ExePath), 0, n, Buf); // ���� ���� �ڵ��� ��´�.
     VerQueryValue(Buf, 'VarFileInfo\Translation', trans, aLen);
     // ���� ���� ������ ������� ��� ���� ��´�.
     transtring := IntToHex(MakeLong(HiWord(Longint(trans^)),
          LoWord(Longint(trans^))), 8);
     // Integer ���� HEX ���ڿ��� ��ȯ�Ͽ� ���� ������ ������ ���� �ֵ��� �����. (MSDN ��������.)
     VerQueryValue(Buf, PChar('StringFileInfo\' + transtring +
          '\FileVersion'),
          Pointer(VersionS), bLen); // ���� ��� ������ ������ �˾Ƴٴ�.
     FreeMem(Buf, n); // ���� ��� �Ҹ��۾�.
     Result := VersionS;
end;

function GetJuminDate(strJuminNo: string): TDateTime;
var
     Year: string;
     Month: string;
     Day: string;

     ch: Char;
     S: string;
begin
     Result := Now;
     if (Length(strJuminNo) < 7) then
     begin
          exit;
     end;

     S := '19';
     ch := Copy(strJuminNo, 7, 1)[1];
     if (ch = '3') or (ch = '4') or (ch = '7') or (ch = '8') then
     begin
          S := '20';
     end;

     Year := S + Copy(strJuminNo, 1, 2);
     Month := Copy(strJuminNo, 3, 2);
     Day := Copy(strJuminNo, 5, 2);

     try
          Result := StrToDate(Year + '-' + Month + '-' + Day);
     except
          Result := Now;
     end;
end;

function ConvertBitmapToRTF(const Bitmap: TBitmap): string;
var
     bi, bb: string;
     bis, bbs: Cardinal;
     achar: string[2];
     Buffer: string;
     I: Integer;
type
     PWord = ^Word;
begin
     GetDIBSizes(Bitmap.Handle, bis, bbs);
     SetLength(bi, bis);
     SetLength(bb, bbs);
     GetDIB(Bitmap.Handle, Bitmap.Palette, PChar(bi)^, PChar(bb)^);
     SetLength(Buffer, (Length(bb) + Length(bi)) * 2);
     i := 1;
     for bis := 1 to Length(bi) do
     begin
          achar := IntToHex(Integer(bi[bis]), 2);
          PWord(@Buffer[i])^ := PWord(@achar[1])^;
          inc(i, 2);
     end;
     for bbs := 1 to Length(bb) do
     begin
          achar := IntToHex(Integer(bb[bbs]), 2);
          PWord(@Buffer[i])^ := PWord(@achar[1])^;
          inc(i, 2);
     end;
     Result := '{\rtf1 {\pict\dibitmap ' + Buffer + ' }}';
end;

{procedure RtftoTextSave(sender: TObject);
begin
     RTF1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'imsi.rtf');
     memo1.Clear;
     memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'imsi.rtf');
     RTF2.SelText := Memo1.Text;
end;
}

function CheckJumin(No: string): Boolean;
const
     Weight: packed array[1..12] of Integer =
     (2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5);
var
     Loop, Sum, Rest: Integer;
begin
     if Length(No) <> 13 then
          Result := False
     else
     try
          Sum := 0;
          for Loop := 1 to 12 do
               Sum := Sum + StrToInt(No[Loop]) * Weight[Loop];
          Rest := 11 - (Sum mod 11);
          if Rest = 11 then
               Rest := 1;
          if Rest = 10 then
               Rest := 0;
          Result := Char(Rest + 48) = No[13];
     except
          Result := False;
     end;
end;






// ��¥�� �⵵�� ����

function dateYear(D: TDateTime): Integer;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     Result := Year;
end;

// ��¥�� ���� ����

function dateMonth(D: TDateTime): Integer;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     Result := Month;
end;

// ��¥�� �ϸ� ����

function dateDay(D: TDateTime): Integer;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     Result := Day;
end;

// ���� ��������

function dateBeginOfYear(D: TDateTime): TDateTime;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     Result := EncodeDate(Year, 1, 1);
end;

// ���� ����������

function dateEndOfYear(D: TDateTime): TDateTime;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     Result := EncodeDate(Year, 12, 31);
end;

// ���� ��������

function dateBeginOfMonth(D: TDateTime): TDateTime;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     Result := EncodeDate(Year, Month, 1);
end;

// ���� ����������

function dateEndOfMonth(D: TDateTime): TDateTime;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     if Month = 12 then
     begin
          Inc(Year);
          Month := 1;
     end
     else
          Inc(Month);

     {���� �������� �����Ͽ��� 1�� ����}
     Result := EncodeDate(Year, Month, 1) - 1;
end;

// ���� �������� ���° ������

function dateWeekOfYear(D: TDateTime): Integer;
const
     t1: array[1..7] of ShortInt = (-1, 0, 1, 2, 3, -3, -2);
     t2: array[1..7] of ShortInt = (-4, 2, 1, 0, -1, -2, -3);
var
     doy1, doy2: Integer;
     NewYear: TDateTime;
begin
     NewYear := dateBeginOfYear(D);
     doy1 := dateDayofYear(D) + t1[DayOfWeek(NewYear)];
     doy2 := dateDayofYear(D) + t2[DayOfWeek(D)];
     if doy1 <= 0 then
          Result := dateWeekOfYear(NewYear - 1)
     else
          if (doy2 >= dateDayofYear(dateEndOfYear(NewYear))) then
               Result := 1
          else
               Result := (doy1 - 1) div 7 + 1;
end;

// ���� �������� ���° ������

function dateDayOfYear(D: TDateTime): Integer;
begin
     Result := Trunc(D - dateBeginOfYear(D)) + 1;
end;

// ���� ��ȣ

function dateDayOfWeek(D: TDateTime): TDayOfWeek;
begin
     Result := TDayOfWeek(Pred(DayOfWeek(D)));
end;

// �������� �˻�

function dateLeapYear(D: TDateTime): Boolean;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     Result := (Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400
          = 0));
end;

// �־��� ���ڰ� ���Ե� �б��� ������

function dateBeginOfQuarter(D: TDateTime): TDateTime;
var
     Year, Month, Day: Word;
begin
     DecodeDate(D, Year, Month, Day);
     Result := EncodeDate(Year, (((Month - 1) div 3) * 3) + 1, 1);
end;

// �־��� ���ڰ� ���Ե� �б��� ��������

function dateEndOfQuarter(D: TDateTime): TDateTime;
begin
     Result := dateBeginOfQuarter(dateBeginOfQuarter(D) + (3 * 31)) - 1;
end;

// ���� ������

function dateBeginOfWeek(D: TDateTime; Weekday: Integer):
     TDateTime;
begin
     Result := D;
     while DayOfWeek(Result) <> Weekday do
          Result := Result - 1;
end;

// ���� ������ ��

function dateDaysInMonth(D: TDateTime): Integer;
const
     DaysPerMonth: array[1..12] of Byte =
     (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
var
     Month: Integer;
begin
     Month := dateMonth(D);
     Result := DaysPerMonth[Month];
     if (Month = 2) and dateLeapYear(D) then
          Inc(Result);
end;

function CallJongbyul(VarJong: string): string;
begin
     if checkint(VarJong) = true then
     begin
          case strToint(varjong) of
               {
                    1: result  := '�ǰ�����';
                    2: result  := '�ǰ�����';
                    3: result  := '�ǰ�����';
                    4: result  := '�Ƿ�޿� 1��';
                    5: result  := '�Ƿ�޿�2��';
                    6: result  := '����/���';
                    9: result  := '����';
                    10: result := '�ں�';
                    11: result := '�Ϲ�';
                    }
               1: result := '�ǰ�����';
               2: result := '��ȣ1��';
               3: result := '��ȣ2��';
               4: result := '�Ϲ�';
               5: result := '��ȣ4��';
               6: result := '��ȣ8��';
               7: result := '����';
               8: result := '�ں�';
               9: result := '����ڹ׿ܱ��αٷ���';
          end;
     end
     else
     begin
          result := '�Ϲ�';
     end;
end;

function JuminToBirth(TheInput: string): string;
var
     iCmp: integer;
     TempYear, iJuminYear: string;
begin
     if length(theInput) < 7 then
     begin
          ;
          Result := '';
          exit;
     end;

     iCmp := strtoInt(copy(TheInput, 7, 1));
     TempYear := copy(TheInput, 1, 2);

     case icmp of
          1, 2:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          3, 4:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
          5, 6:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          7, 8:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
     end;

     Result := iJuminYear + copy(theInput, 3, 4);
end;

function JuminToBirth2(TheInput: string): string;
var
     iCmp: integer;
     TempYear, iJuminYear: string;
begin
     if length(theInput) < 7 then
     begin
          ;
          Result := '';
          exit;
     end;
     if checkint(theInput) = false then
     begin
          ;
          Result := '';
          exit;
     end;

     iCmp := strtoInt(copy(TheInput, 7, 1));
     TempYear := copy(TheInput, 1, 2);

     case icmp of
          1, 2:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          3, 4:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
          5, 6:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          7, 8:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
     end;

     Result := iJuminYear + '-' + copy(theInput, 3, 2) + '-' + copy(theInput,
          5,
          2);
end;
function JuminToBirth3(TheInput: string): string;
var
     iCmp: integer;
     TempYear, iJuminYear: string;
begin
     if length(theInput) < 7 then
     begin
          ;
          Result := '';
          exit;
     end;
     if checkint(theInput) = false then
     begin
          ;
          Result := '';
          exit;
     end;

     iCmp := strtoInt(copy(TheInput, 7, 1));
     TempYear := copy(TheInput, 1, 2);

     case icmp of
          1, 2:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          3, 4:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
          5, 6:
               begin
                    iJuminYear := ('19' + TempYear);
               end;
          7, 8:
               begin
                    iJuminYear := ('20' + TempYear);
               end;
     end;

     Result := iJuminYear + '�� ' + copy(theInput, 3, 2) + '�� ' + copy(theInput,
          5, 2) +'��';
end;

//single character string ->  multibyte character string
//�ݰ�->���� //OHJANG-2001.05.01

function SbcStrToMbcStr(const Str: string): string;
var
     i: Integer;
begin
     Result := '';
     for i := 1 to Length(Str) do
     begin
          case ByteType(Str, i) of
               mbSingleByte:
                    begin
                         case Byte(Str[i]) of
                              $21..$7E: Result := Result + #$A3 +
                                   Char($80 +
                                        Byte(Str[i]));
                              $20: Result := Result + #$A1 + #$A1;
                              //else      Result := Result + #$A1 + #$A1;  //��ü�� multibyte character strings�� ���� ��� ����
                         end;
                    end;
               mbLeadByte, mbTrailByte: Result := Result + Str[i];
          end; //End of Case
     end; //End of For
end;

//multibyte character string -> single character string
//����->�ݰ� //OHJANG-2001.05.01

function MbcStrToSbcStr(const Str: string): string;
var
     i: Integer;
     LeadByte: Byte;
begin
     Result := '';
     LeadByte := 0;
     for i := 1 to Length(Str) do
     begin
          case ByteType(Str, i) of
               mbSingleByte: Result := Result + Str[i];
               mbLeadByte: LeadByte := Byte(Str[i]);
               mbTrailByte:
                    begin //������ mbLeadByte �ڿ� mbTrailByte�� �ȴٴ� ����
                         case LeadByte of
                              //A3�� �����ϴ�(���� �� Ư������) MBCS�� MBCS Space�� ����
                              $A3: Result := Result +
                                   Char(Byte(Str[i]) - $80);
                         else
                              begin
                                   if (LeadByte = $A1) and (Str[i]
                                        = #$A1) then
                                   begin
                                        Result := Result + ' ';
                                   end
                                   else
                                   begin
                                        Result := Result +
                                             Char(LeadByte) +
                                             Str[i];
                                   end;
                              end;
                         end; //End of Case
                    end; //End of mbTrailByte;
          end; //End of Case
     end; //End of For
end;

function GetComPorts(Ports: TStringList): integer;
var
     KeyHandle: HKEY;
     ErrCode, Index: Integer;
     ValueName, Data: string;
     ValueLen, DataLen, ValueType: DWORD;
     TmpPorts: TStringList;
begin
     ErrCode := RegOpenKeyEx(
          HKEY_LOCAL_MACHINE,
          'HARDWARE\DEVICEMAP\SERIALCOMM',
          0,
          KEY_READ,
          KeyHandle);

     if ErrCode <> ERROR_SUCCESS then //��ġ�� ��Ʈ ����
          Exception.Create('No Insatalled Comport at This System');
     result := 0;
     TmpPorts := TStringList.Create;
     try
          Index := 0;
          repeat
               ValueLen := 256;
               DataLen := 256;
               SetLength(ValueName, ValueLen);
               SetLength(Data, DataLen);
               ErrCode := RegEnumValue(
                    KeyHandle,
                    Index,
                    PChar(ValueName),
                    {$IFDEF DELPHI_4_OR_HIGHER}
                    Cardinal(ValueLen),
                    {$ELSE}
                    ValueLen,
                    {$ENDIF}
                    nil,
                    @ValueType,
                    PByte(PChar(Data)),
                    @DataLen);

               if ErrCode = ERROR_SUCCESS then
               begin
                    SetLength(Data, DataLen);
                    TmpPorts.Add(Data);
                    Inc(Index);
               end;

          until (ErrCode <> ERROR_SUCCESS);

          TmpPorts.Sort; //����Ʈ ��Ʈ
          Ports.Assign(TmpPorts);
          result := TmpPorts.Count;
     finally
          RegCloseKey(KeyHandle);
          TmpPorts.Free;
     end;
end;

function ConvertDaomoTeethToWisdomTeeth(varTeethNo: string): string;
const
     orgTeethno: array[0..19] of string = ('1A', '1B', '1C', '1D', '1E', '2A',
          '2B', '2C', '2D', '2E', '3A', '3B', '3C', '3D', '3E', '4A', '4B',
          '4C',
          '4D', '4E');
     DesTeethno: array[0..19] of string = ('51', '52', '53', '54', '55', '61',
          '62', '63', '64', '65', '71', '72', '73', '74', '75', '81', '82',
          '83',
          '84', '85');
var
     i: integer;
begin
     Result := varTeethNo;
     for i := 0 to 19 do
     begin
          Result := StringReplace(Result, orgTeethno[i], DesTeethno[i],
               [rfReplaceAll]);

     end;

end;

procedure DllRegister(Filename: string); //dLL���
type
     TDllRegisterServer = procedure;
var
     lpfnDllRegisterServer: TDllRegisterServer;
     hControlInst: THANDLE;
begin

     if not FileExists(Filename) then
     begin
          Exit;
     end;

     try
          hControlInst := LoadLibrary(PChar(filename));
          if (hControlInst = 0) then
          begin
               ShowMessage('LoadLibrary Error');
               Exit;
          end;

          lpfnDllRegisterServer := GetProcAddress(hControlInst,
               'DllRegisterServer');
          if (Assigned(lpfnDllRegisterServer)) then
               lpfnDllRegisterServer;
          FreeLibrary(hControlInst);
     except

     end;
end;

procedure DoSound(AMsg: string);
begin
     if AMsg = 'Success' then
     begin
          if fileexists(pchar(GetConfigDir +
               'wave\JUBSUSUCCESS.wav')) then
               PlaySound(pchar(GetConfigDir +
                    'wave\JUBSUSUCCESS.wav'), 0, SND_ASYNC);
     end
     else
          if AMsg = 'Fail' then
          begin
               if fileexists(pchar(GetConfigDir +
                    'wave\JUBSUFAIL.wav')) then
                    PlaySound(pchar(GetConfigDir +
                         'wave\JUBSUFAIL.wav'), 0, SND_ASYNC);
          end
          else
               if AMsg = 'Already' then
               begin
                    if fileexists(pchar(GetConfigDir +
                         'wave\ALREADY.wav')) then
                         PlaySound(pchar(GetConfigDir +
                              'wave\ALREADY.wav'), 0, SND_ASYNC);
               end;

end;

function call_tel_type(const AnTel: string): string;
var
     str_buf: string;
     length_buf: integer;
begin
     str_buf := trim(AnTel);
     str_buf := StringReplace(str_buf, '-', '', [rfReplaceAll]);
     length_buf := length(str_buf);
     case length_buf of
          0..4:
               begin
                    result := str_buf;
               end;
          5: // 00-000
               begin
                    result := copy(str_buf, 1, 2) + '-' + copy(str_buf,
                         3, 3);
               end;
          6: // 000-000
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 3);
               end;
          7: // 000-0000
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 4);
               end;
          8: //0000-0000 �ΰ��
               begin
                    result := copy(str_buf, 1, 4) + '-' + copy(str_buf,
                         5, 4);
               end;
          // ������ȭ 00-000-0000 �� ���
          9:
               begin
                    result := copy(str_buf, 1, 2) + '-' + copy(str_buf,
                         3, 3) +
                         '-' + copy(str_buf, 6, 4);
               end;
          /// ������ȭ - �Ǵ� ���� 000-000-0000 �� ���
          10:
               begin
                    if copy(str_buf, 1, 2) = '02' then
                    begin
                         result := copy(str_buf, 1, 2) + '-' +
                              copy(str_buf, 3,
                              4) + '-' + copy(str_buf, 7, 4);
                    end
                    else
                    begin
                         result := copy(str_buf, 1, 3) + '-' +
                              copy(str_buf, 4,
                              3) + '-' + copy(str_buf, 7, 4);
                    end;
               end;
          ///  000-0000-0000 �� ���
          11:
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 4) +
                         '-' + copy(str_buf, 8, 4);
               end;
          ///  000-0000-00000 �� ���
          12:
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 4) +
                         '-' + copy(str_buf, 8, 5);
               end;
     end;
end;

function call_saup_type(const AnTel: string): string;
var
     str_buf: string;
     length_buf: integer;
begin
     str_buf := trim(AnTel);
     str_buf := StringReplace(str_buf, '-', '', [rfReplaceAll]);
     length_buf := length(str_buf);
     case length_buf of
          0..9:
               begin
                    result := str_buf;
               end;
          10: // 00-000
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 2) + '-' + copy(str_buf, 6, 5);
               end;

     end;
end;

function DateMaker(num: string): string;
begin
     result := num;
     if length(num) = 8 then //000\-00\-0000;1;_
          result := formatmasktext('0000-00-00;0', num)
     else
          result := num;
end;

function SaupMaker(num: string): string;
begin
     result := num;
     if length(num) = 10 then //000\-00\-0000;1;_
          result := formatmasktext('000-00-00000;0', num)
     else
          result := num;
end;

function GetConfigDir: string;
var
     Path: array[0..255] of AnsiChar;
     itemidList: PItemIDList;
begin
     result := extractFilePath(paramStr(0));
     { SHgetSpecialFolderLocation(0, CSIDL_LOCAL_APPDATA, itemidList);
      SHGetPathFromidlistA(itemidList, path);
      result := includetrailingpathdelimiter(strpas(Path)) + 'Madang2010\';
   if not directoryExists(result) then
        ForceDirectories(result);
      }
end;

function SmsErrorCheck(ECode: integer): string;
begin
       case ECode of
              1: result := '1. ȣ���û����(���ۼ���)';
              11: result := '11. ��ȭ��ȣ �̻�';
              21: result := '21. Connect ����';
              22: result := '22. ������ Send ����';
              23: result := '23. Ack Receive ����';
              40: result := '40. SMS ���� �̻�';
              41: result := '41. �̵�� �����';
              67: result := '67. �ܾ׺���';
              68: result := '68. ���� �ڵ� �̻�';
              73: result := '73. �̵�� ȸ�� �Ǵ� �⺻��̳� ';
              77: result := '77. ȣ���� �޽����� ������ ����';
              78: result := '78. ���� or ��ȭ��ȣ �� 4 �ڸ� �̻�';
              79: result := '79. ȣ���û����';
              80: result := '80. ������ȣ �̻�';
              82: result := '82. ��700��, ��800�� ������ü';
              84: result := '84. �������� �̻�';
              85: result := '85. ȣ�� URL�� ����';
              88: result := '88. ������ ���� ���� �� ��Ÿ����';
              99: result := '99. ������ ���� ���� �� ��Ÿ����';
       end;

end;



function CheckHpno(varHpno: string): Boolean;
begin

     result := false;
     if ((copy(varHpno, 1, 3) = '010') and
          (length(deldash(varHpNo)) = 11)) or

     ((copy(varHpno, 1, 3) = '011') or
          (copy(varHpno, 1, 3) = '016') or
          (copy(varHpno, 1, 3) = '017') or
          (copy(varHpno, 1, 3) = '018') or
          (copy(varHpno, 1, 3) = '019') or
          (copy(varHpno, 1, 3) = '013')) and
          ((length(deldash(varHpNo)) = 10) or (length(deldash(varHpNo)) =
          11)) then
          result := true
     else
          result := false;

end;

function LoadPanoInfo(varChart: string; varRatio: integer = 33): TPanoinfo;
var
     saveini: Tinifile;
     savepath: string;
begin
     // savePath := GetConfigDir + varChart + '.ini';
     savePath := extractfilepath(paramstr(0)) + 'default\' + varChart +
          '.ini';
     saveini := Tinifile.Create(savepath);

     result.panoRatio := saveini.ReadInteger('TEETHINFO', 'RATIO', varRatio);
     result.panoX := saveini.ReadInteger('TEETHINFO', 'LOCX', 0);
     result.panoY := saveini.ReadInteger('TEETHINFO', 'LOCY', 0);
     result.panoname := saveini.ReadString('TEETHINFO', 'panorama', '');
     result.panodate := saveini.ReadString('TEETHINFO', 'panodate', '');
     saveini.Free;
end;

//function setSize(s: integer; varimage: TimgView32): single;
//var
//     i: integer;
//begin
//     I := StrToIntDef(inttostr(S), -1);
//     if (I < 1) or (I > 2000) then
//          I := Round(varimage.Scale * 100)
//     else
//          result := I / 100;
//
//end;

procedure RemoveDuplicates(const stringList: TStringList);
var
     Buffer: TStringList;
     Cnt: Integer;
begin
     StringList.Sort;
     Buffer := TStringList.Create;
     try
          Buffer.Sorted := True;
          Buffer.Duplicates := dupIgnore;
          Buffer.BeginUpdate;
          for Cnt := 0 to stringList.Count - 1 do
          begin
               Buffer.Add(StringList[cnt]);
          end;
          Buffer.EndUpdate;
          StringList.Assign(Buffer);
     finally
          FreeandNil(Buffer);
     end;
end;

function RemoveFromFolder(const Folder, Prefix: String): Boolean;
var
  FileOpStruct: TSHFileOpStruct;
begin
  Result := False;
  if DirectoryExists(Folder) then
  begin
    FillChar(FileOpStruct, SizeOf(FileOpStruct), 0);
    FileOpStruct.Wnd := 0;
    FileOpStruct.wFunc := FO_DELETE;
    FileOpStruct.pFrom := PWideChar(IncludeTrailingPathDelimiter(Folder) + Prefix);
    FileOpStruct.fFlags := FOF_FILESONLY or FOF_SILENT or FOF_NOCONFIRMATION;
    SHFileOperation(FileOpStruct);
    Result := True;
  end; // if
end; // RemoveFromFolder


procedure  RemoveFiles(const Dir: String);
var
  sDir: String;
  Rec: TSearchRec;
begin
  sDir := IncludeTrailingPathDelimiter(Dir);
  if FindFirst(sDir + '*.*', faAnyFile, Rec) = 0 then
  try
    repeat
      if (Rec.Attr and faDirectory) = faDirectory then
      begin
        if (Rec.Name <> '.') and (Rec.Name <> '..') then
          RemoveFiles(sDir + Rec.Name);
      end else
      begin
        DeleteFile(pChar(sDir + Rec.Name));
      end;
    until FindNext(Rec) <> 0;
  finally
     sysutils.FindClose(Rec);
  end;
  RemoveDir(sDir);
end;



procedure FileDelete(aDirName: string);
var
     SR: TSearchRec;
begin
     // �̺κп� ���� ������ '\' ���ڰ� ���� �ִ��� ������ Ȯ���Ͽ� ������ '\'�� �߰��ϴ� �Լ��� �θ� �����̴ϴ� ;;;

     if DirectoryExists(aDirName) then
     try
          if (FindFirst(aDirName + '*.*', faAnyFile, Sr)) = 0 then
          begin
               repeat
                    if (Sr.Name <> '.') and (Sr.Name <> '..') then
                    begin
                        // if (SR.Attr and faDirectory) = faDirectory then
                         if SR.Attr  = faDirectory then
                         begin
                           //   ChDir(aDirName + SR.Name);
                              ChDir('..');
                           //   if not isFileInUse(aDirName + SR.Name) then

                              try
                                   RemoveDir(aDirName +  SR.Name);
                              except
                              end;
                             //  FileDelete(aDirName + SR.Name);
                              FileDelete(aDirName );

                         end
                         else
                              try
                                   if not
                                        isFileInUse(aDirName  +  SR.Name) then
                                        DeleteFile(pChar(aDirName + SR.Name));
                              except
                              end;
                    end;
               until FindNext(sr) <> 0;
               sysutils.FindClose(sr);
          end;
     except
     end;
end;

function GetFileLastWriteTime(sFileName: string): TDateTime;
var
     ffd: TWin32FindData;
     dft: DWord;
     lft: TFileTime;
     h: THandle;
begin
     h := Windows.FindFirstFile(PChar(sFileName), ffd);
     if (INVALID_HANDLE_VALUE <> h) then
     begin
          Windows.FindClose(h);
          FileTimeToLocalFileTime(ffd.ftLastWriteTime, lft); // ������ ����
          FileTimeToDosDateTime(lft, LongRec(dft).Hi, LongRec(dft).Lo);
          Result := FileDateToDateTime(dft);
     end;
end;


function isFileInUse(fName: string): boolean;
var
     HFileRes: HFILE;
begin

     Result := False;
     if not FileExists(fName) then
          Exit;
     try
          HFileRes := CreateFile(PChar(fName), GENERIC_READ or
               GENERIC_WRITE, 0, nil, OPEN_EXISTING,
               FILE_ATTRIBUTE_NORMAL, 0);
          Result := (HFileRes = INVALID_HANDLE_VALUE);
          if not Result then
               CloseHandle(HFileRes);
     except

          on E: Exception do
          begin
               exceptLogging('���ϻ����Ȯ�� ����->' + E.message);
               Result := False;
          end;
     end;
end;

function OKGetSetName(AOrdTypeInfo: PTypeInfo; nIndex: integer): string;
var
     OrdTypeData: PTypeData;
     nMin, nMax: integer;
begin
     // TTypeData �����͸� ��´�.
     OrdTypeData := GetTypeData(AOrdTypeInfo);
     if AOrdTypeInfo^.Kind = tkSet then
          Result := OKGetSetName(OrdTypeData^.CompType^, nIndex);

     nMin := OrdTypeData^.MinValue;
     nMax := OrdTypeData^.MaxValue;

     if AOrdTypeInfo^.Kind = tkEnumeration then
          if (nIndex >= nMin) and (nIndex <= nMax) then
               Result := GetEnumName(AOrdTypeInfo, nIndex);
end;

function OKGetSetValue(AOrdTypeInfo: PTypeInfo; SetName: string): integer;
var
     OrdTypeData: PTypeData;
     nMin: integer;
begin
     // TTypeData �����͸� ��´�.
     OrdTypeData := GetTypeData(AOrdTypeInfo);
     if AOrdTypeInfo^.Kind = tkSet then
          Result := OKGetSetValue(OrdTypeData^.CompType^, SetName);

     //  nMin := OrdTypeData^.MinValue;
     //  nMax := OrdTypeData^.MaxValue;

     if AOrdTypeInfo^.Kind = tkEnumeration then
          Result := GetEnumValue(AOrdTypeInfo, SetName)
     else
          Result := -1;
end;

procedure TIFFReadRGBAImageSwapRB(Width, Height: Cardinal; Memory: Pointer);
{$IFDEF DELPHI_5}
type
     PCardinal = ^Cardinal;
     {$ENDIF}
var
     m: PCardinal;
     n: Cardinal;
     o: Cardinal;
begin
     m := Memory;
     for n := 0 to Width * Height - 1 do
     begin
          o := m^;
          m^ := (o and $FF00FF00) or {G and A}
          ((o and $00FF0000) shr 16) or {B}
          ((o and $000000FF) shl 16); {R}
          Inc(m);
     end;
end;

function GetFileVersion2: string;
const
     InfoStr: array[0..9] of string = ('CompanyName', 'FileDescription',
          'FileVersion', 'InternalName', 'LegalCopyright',
          'LegalTradeMarks',
          'OriginalFileName', 'ProductName', 'ProductVersion', 'Comments');
var
     ExeName: string;
     VerInfoSize, Len, i: DWORD;
     Buf: PansiChar;
     Value: PansiChar;
begin
     Result := '';

     ExeName := Application.ExeName;
     VerInfoSize := GetFileVersionInfoSize(PWideChar(ExeName), VerInfoSize);
     if VerInfoSize > 0 then
     begin
          Buf := AllocMem(VerInfoSize);
          try
               GetFileVersionInfo(PWideChar(ExeName), 0, VerInfoSize, Buf);
               for i := Low(InfoStr) to High(InfoStr) do
                    if VerQueryValue(Buf,
                         PWideChar('StringFileInfo\041203B5\' +
                         InfoStr[i]),
                         Pointer(Value), Len) then
                         if i = 2 then
                              Result := Value;
          finally
               FreeMem(Buf, VerInfoSize);
          end;
     end;
end;

function MakeOr(varField, varTeeth: string): string;
var
     varRegday: string;
     i: integer;
     szArrString: TArrString;
     m, k, g, j, l, h, n: integer;
     varPortion2: string;
     varTabAdd: boolean;
     varEqualDay: integer;
begin
     result := '';
     SetLength(szArrString, 1);
     m := ScanString(PChar(varTeeth), szArrString, ',', ',');
     for k := 0 to m - 1 do
     begin
          varPortion2 := substr(stringreplace(varTeeth, '#', '',
               [rfReplaceAll]), k + 1, ',');
          varPortion2 :=  copy(varPortion2,1,2);
          if result = '' then
               result := varfield + '= ''' + varportion2 + ''' '
          else
               result := result + 'or ' + varfield + '= ''' + varportion2
                    +
                    ''' ';

     end;
     result := '(' + result + ')';

end;

function MakeOrLike(varField, varTeeth: string): string;
var
     varRegday: string;
     i: integer;
     szArrString: TArrString;
     m, k, g, j, l, h, n: integer;
     varPortion2: string;
     varTabAdd: boolean;
     varEqualDay: integer;
begin
     result := '';
     SetLength(szArrString, 1);
     m := ScanString(PChar(varTeeth), szArrString, ',', ',');
     for k := 0 to m - 1 do
     begin
          varPortion2 := substr(stringreplace(varTeeth, '#', '',
               [rfReplaceAll]), k + 1, ',');
          varPortion2 :=  copy(varPortion2,1,2);
          if result = '' then
               result := varfield + ' like ''' + '%' + varportion2 + '%' +
                    ''' '
          else
               result := result + 'or ' + varfield + ' like ''' + '%' +
                    varportion2 + '%' +
                    ''' ';

     end;
     result := '(' + result + ')';

end;

function IsJpegFile(const FileName: string): Boolean;
const
     RightBuf: array[0..3] of Byte = ($FF, $D8, $FF, $D9);
var
     Buf: array[0..3] of Byte;
begin
     FillChar(Buf, 4, 0);
     with TFileStream.Create(FileName, 0) do
     begin
          Position := 0;
          ReadBuffer(Buf[0], 2);
          Position := Size - 2;
          ReadBuffer(Buf[2], 2);
          Free;
     end;
     Result := CompareMem(@RightBuf[0], @Buf[0], 4);
end;

function IsBmpFile(const FileName: string): Boolean;
const
     RightBuf: array[0..1] of Byte = ($4D, $42);
var
     Buf: array[0..1] of Byte;
begin
     //BMPüƮ�� �� ����....
     FillChar(Buf, 2, 0);
     with TFileStream.Create(FileName, 0) do
     begin
          Position := 0;
          ReadBuffer(Buf[0], 2);
          Free;
     end;
     Result := CompareMem(@RightBuf[0], @Buf[0], 2);
end;

function htmlToString(ADefault: string): string;
var
     varRemark: string;
begin

     varRemark := StringReplace(ADefault,
          '<FONT color="clRed" size=9>', '',
          [rfReplaceAll]);
     varremark := StringReplace(varremark,
          '<FONT color="clBlack" size=9>', '',
          [rfReplaceAll]);
     varremark := StringReplace(varremark,
          '<FONT color="clBlue" size=9>', '',
          [rfReplaceAll]);

     varremark := StringReplace(varremark,
          '<FONT color="$00A00000" size=9>', '',
          [rfReplaceAll]);
     varremark := StringReplace(varremark, '</FONT>', '',
          [rfReplaceAll]);
     varremark := StringReplace(varremark, '<FONT>', '',
          [rfReplaceAll]);
     varremark := StringReplace(varremark, '</B>', '',
          [rfReplaceAll]);
     varremark := StringReplace(varremark, '<B>', '',
          [rfReplaceAll]);
     varremark := StringReplace(varremark, '()', '',
          [rfReplaceAll]);

     result := varRemark;
end;

function GetRichEditHeight(RE: Trichedit): integer;
var
     Range: TFormatRange;
     Rect: TRect;
     LogX, LogY, SaveMapMode: Integer;
     ACanvas: TCanvas;
     imageCanvas: Timage;
begin
     iMageCanvas := Timage.create(application);
     aCanvas := iMageCanvas.Canvas;
     Range.hdc := ACanvas.Handle;
     Range.hdcTarget := ACanvas.Handle;
     LogX := GetDeviceCaps(Range.hdc, LOGPIXELSX);
     LogY := GetDeviceCaps(Range.hdc, LOGPIXELSY);
     Range.rc.Left := 0;
     Range.rc.Right :=
          RE.ClientWidth * 1440 div LogX; // Any predefined width
     Range.rc.Top := 0;
     Range.rc.Bottom := Screen.Height * 1440 div LogY; // Some big number
     Range.rcPage := Range.rc;
     Range.chrg.cpMin := 0;
     Range.chrg.cpMax := -1;
     RE.Perform(EM_FORMATRANGE, 0, Longint(@Range));
     result := (Range.rc.Bottom * LogY div 1440); // Get the height
     RE.Perform(EM_FORMATRANGE, 0, 0); // free cache
     iMageCanvas.Free;
end;

function calcPrognancy(sDate, Fdate: TdateTIME): string;
var
     varDaysu: integer;
begin
     if fDate > sDate then
     begin
          varDaysu := DaySBetween(sDate, fDate);
     end
     else
     begin
          result := '?';
          exit;
     end;
     if (40 - (varDaySu div 7) > 0) then
          result := inttostr(40 - (varDaySu div 7))
     else
          result := '?';
end;

function TColorToHex(Color: TColor): string; //2011.11.20
begin
     Result :=
          { red value }
     '#' + IntToHex(GetRValue(Color), 2) +
          { green value }
     IntToHex(GetGValue(Color), 2) +
          { blue value }
     IntToHex(GetBValue(Color), 2);
end;

function HexToTColor(sColor: string): TColor; //2011.11.20
begin
     Result :=
          RGB(
          { get red value }
          StrToInt('$' + Copy(sColor, 1, 2)),
          { get green value }
          StrToInt('$' + Copy(sColor, 3, 2)),
          { get blue value }
          StrToInt('$' + Copy(sColor, 5, 2))
          );
end;



// log������ �ٿ�ε� �޾Ƽ� ���� ��ġ�� �������� �񱳸� �õ��Ѵ�.

function  UpdateLogFileDown(Dir: string): Boolean;

var
  dStream: TFileStream;
  URL: string;
  HTTP: TIdHTTP;
  mStream: TMemorystream;
begin

  try
    try

      HTTP := TIdHTTP.Create(nil);
      URL := TIdURI.URLEncode('http://hmslab.co.kr/dentro/dentro.log');

      mStream := TMemorystream.Create;
      HTTP.Get(URL, mStream);
      mStream.SaveToFile(Dir + 'updates\new\dentro.log');

    finally

      HTTP.Free;
      FreeAndNil(mStream);
      Result := true;
    end;

  except
    on E: Exception do
    begin
      ExceptLogging('������Ʈ ���� ���� ����.' + #10#13 + E.Message);
      Showmessage('������Ʈ ���� ���� ����. ���ͳ� ���� ���¸� Ȯ���ϼ���.' + #10#13 + E.Message);
      mStream.Free;
      Result := false;
      // exit;
    end;
  end;
end;
function LoadUpdateVersionNo: string;
var
  StrList: TstringList;
  StrList2: TstringList;
  varPresentVersion: string;
begin
  StrList := TstringList.Create;
  StrList2 := TstringList.Create;

  // updates\new\�� �ִ� dentro.log������ �����ͼ� ���� ��ȣ�� Ȯ���Ѵ�.
  if FileExists(extractfilepath(paramstr(0)) + 'updates\new\dentro.log') then
  begin
    try
      StrList.LoadFromFile(extractfilepath(paramstr(0)) +
        'updates\new\dentro.log');
      varPresentVersion := StrList.Strings[0];

    finally

      StrList.Free;
      result := varPresentVersion;
    end;
  end
  else
  begin

    varPresentVersion := '550';
  end;

end;

procedure fileWebUpdate(Dir : string);
var
  varPath: string;
  varVersionNo: string;
  zipMaster1 : TZipmaster;
begin

  // if LoadUpdateVersion = true then
  // begin
  if UpdateLogFileDown(Dir) = true then
  begin
    varVersionNo := LoadUpdateVersionNo;
  end;

  varPath := ExtractFilePath(ParamStr(0));
  try
    KillProcess('downloader.exe') // �������� ���� ����
  except
    on E: Exception do
    begin

      ExceptLogging('Update:' + E.Message);

      Showmessage(E.Message);
      exit;
    end;
  end;

  if FileExists(varPath + 'downtemp\downloader.zip') then
  begin

    // if W_UnZip(,
    // varpath, zipmasterprogress) = true then
    zipMaster1 := TZipMaster.Create(nil);
    try
        With ZipMaster1 Do
        Begin
          ZipFileName := varPath + 'downtemp\downloader.zip';
          ExtrBaseDir := varPath;
          ExtrOptions := [ExtrOverWrite, ExtrUpdate, ExtrForceDirs];
          // If ExpandDirs Then
          // ExtrOptions := ExtrOptions + [ExtrDirNames];
          // If OverWr Then
          // ExtrOptions := ExtrOptions + [ExtrOverwrite];
          // s := GetTickCount;
          Try
            Extract;
          Except
           on E: Exception do
            begin
              Showmessage(E.Message + 'Error in Extract; Fatal DLL Exception in mainunit');

            end;
         End;


       End;
    finally
        zipMaster1.Free;
      // f := GetTickCount;
      // TimeLabel.Caption := ShowLTime(s, f);
      // If SuccessCnt = 1 Then
      // IsOne := ' was'
      // Else
      // IsOne := 's were';
      // ShowMessage(IntToStr(SuccessCnt) + ' file' + IsOne + ' extracted');
    End; { end with }

    begin

      ShellExecute(GetDesktopWindow, 'open',
        Pchar(varPath + 'Downloader_http_HHPMS.exe'), Pchar(varVersionNo), nil,
        SW_SHOWNORMAL);

    end;
  end
  else
  begin
      if FileExists('Downloader_http_HHPMS.exe') then
          ShellExecute(GetDesktopWindow, 'open',
                Pchar(varPath + 'Downloader_http_HHPMS.exe'), Pchar(varVersionNo), nil,
                SW_SHOWNORMAL)
      else
      begin
             showmessage('Check Update file.');
      end;
  end;

  // end;
end;
//process�� ���� �����Ų��

procedure KillProcess(strExeName: string); //��ҹ��� �����Ѵ�....
var
     Handle: THandle;
     Slist: TStringlist;
     ProcessID: Integer;
     iIndex: Integer;
     str: string;
begin
     Slist := TStringList.Create;
     LoadProcess(Slist);

     ProcessID := 0;

     for iIndex := 0 to Slist.Count - 1 do
     begin
          str := Slist.Strings[iIndex];
          if (str = strExeName) then
          begin
               ProcessID := DWord(Slist.Objects[iIndex]);
               break;
          end;
     end;

     Slist.Free;

     if (ProcessID > 0) then
     begin
          Handle := OpenProcess(PROCESS_ALL_ACCESS, True, ProcessID);
          TerminateProcess(Handle, 0);
     end;
end;

procedure LoadProcess(var Slist: TStringList); //TStringlist
var
     Process32: TProcessEntry32;
     SHandle: THandle;
     Next: BOOL;
begin
     Process32.dwSize := SizeOf(TProcessEntry32);
     SHandle := CreateToolHelp32Snapshot(TH32CS_SNAPPROCESS, 0);

     if Process32First(SHandle, Process32) then
     begin
          Slist.AddObject(string(Process32.szExeFile),
               TObject(Process32.th32ProcessID));

          repeat
               Next := Process32Next(SHandle, Process32);
               if Next then
                    Slist.AddObject(string(Process32.szExeFile),
                         TObject(Process32.th32ProcessID));
          until not Next;
     end;

     CloseHandle(SHandle); // closes an open object handle
end;

procedure AddProgramOnStart(ProgramName, FileName: string);
var
     Temp: Hkey;
     MyReg: TRegistry;
begin
     MyReg := TRegistry.Create;
     Temp := HKEY_LOCAL_MACHINE;
     MyReg.RootKey := Temp;
     MyReg.OpenKey('SoftWare', False);
     MyReg.OpenKey('Microsoft', False);
     MyReg.OpenKey('Windows', False);
     MyReg.OpenKey('CurrentVersion', False);
     MyReg.OpenKey('Run', False);
     MyReg.WriteString(ProgramName, FileName);
end;

function SaveClipBoardPicture(varName:string=''): string;
var
     Btm: TBitmap;
     Jpg: TJpegImage;

     i: integer;
     varNow, varNow2: Tdatetime;
     tjpg: TJPEGImage;
     Bitmap1: TBitmap;
     varimgHeader: string;
     varShot, varKind: string;
     varThumbImageName: string;
     varFilepath, varFilepath2, varfilename: string;
begin
     Btm := TBitmap.Create;
     Jpg := TJpegImage.Create;
     try
          //���� �̸� ��Ģ ����
          varKind := '2'; //Jpg
          varimgHeader := 'i';
          varShot := '3'; //cam

          varNow := now;
          varNow2 := varNow;
          varFilepath := extractFilePath(paramStr(0)) + 'temp\images\';
          varFilepath2 := extractFilePath(paramStr(0)) + 'temp\Thumbnails\';
          varfilename := varimgHeader + formatdatetime('yyyymmdd_hhnnss', varnow2)
               +
               '_0000' + '.jpg';
          varfileName := varFilepath + varFilename;

          // 1. Ŭ������ -> ��Ʈ��

      if lowercase( extractFileExt(varName)) <> '.jpg' then
      begin
          if varName ='' then
          begin
             Btm.Assign(ClipBoard);
          end
          else
          begin
            if lowercase( extractFileExt(varName)) ='.bmp' then
             begin
                  Btm.LoadFromFile(varName) ;
             end
             else
             begin
                  showmessage('�������� �ʴ� �����Դϴ�.'+ #10#13+
                       '�������� �׸����� �̿��ؼ� �����Ҽ� �ֽ��ϴ�.');
                  exit;     
             end;
          end;
          // 2. ��Ʈ�� -> JPEG
          Jpg.Assign(Btm);

       end
       else
       begin

          jpg.LoadFromFile(varName);
       end;

          // ��������Ƽ ����
          Jpg.CompressionQuality := 100;
          // ���Ϸ� ����
          Jpg.SaveToFile(varfileName);

          varThumbImageName := makeThumbNail(varfilename, varFilepath2);

          result := varfilename;
          //     LoadThumb(varfileName, varThumbImageName);
     finally
          FreeAndNil(Jpg);
          FreeAndNil(Btm);
     end;
end;

function makeThumbNail(sourcefileneme: string; DestDirectory:
     string): string;
var
     Bitmap1: TBitmap;
     Bitmap2: TBitmap;
     tjpg: TJPEGImage;
     varHeight: integer;
     varFilename: string;
begin
     varFileName := ExtractFileName(sourcefileneme);
     if LowerCase(ExtractFileExt(sourcefileneme)) = '.bmp' then
     begin

          Bitmap1 := TBitmap.Create;

          Bitmap1.PixelFormat := pf8bit;
          Bitmap2 := TBitmap.Create;

          try
               Bitmap2.LoadFromFile(sourcefileneme);
               Bitmap1.Height := 76; //pixel
               varHeight := Bitmap2.Height div 76;
               Bitmap1.Width := Bitmap2.width div varHeight;
               //  144; //pixel

          except
               on E: Exception do
               begin

                    exceptlogging('[Thum Create]' + E.Message);
               end;

          end;

          Bitmap1.Canvas.StretchDraw(Bitmap1.Canvas.ClipRect, Bitmap2);

          try
               application.ProcessMessages;
               Bitmap1.SaveToFile(substr(DestDirectory + varfilename, 1,
                    '.') + 't' + '.bmp');

               result := substr(DestDirectory + varfilename, 1, '.') + 't' + '.bmp';
               //result := DestDirectory + varfilename ;
               exceptlogging('[Thum Save OK]' + substr(DestDirectory +
                    varfilename, 1, '.') + 't' + '.bmp');
          except
               on E: Exception do
               begin
                    result := '';
                    exceptlogging('[Thum Save Fail]' +
                         substr(DestDirectory + varfilename, 1, '.') +
                         't' +
                         '.bmp =>' + E.Message);
               end;

          end;

          Bitmap2.Free;
          Bitmap1.Free;

     end
     else
          if LowerCase(ExtractFileExt(sourcefileneme)) = '.jpg' then
          begin

               Bitmap1 := TBitMap.Create;
               Bitmap2 := TBitmap.Create;
               tjpg := TJpegImage.Create;
               Bitmap1.pixelformat := pf24bit;

               //Bitmap1.width := 144;
               //Bitmap1.height := 76;

               try
                    //Bitmap2.LoadFromFile(sourcefileneme);
                    tjpg.LoadFromFile(sourcefileneme);

                    Bitmap1.Height := 76; //pixel
                    varHeight := tJpg.Height div 76;
                    Bitmap1.Width := tJpg.width div varHeight; //  144; //pixel

                    Bitmap1.Canvas.StretchDraw(Bitmap1.Canvas.ClipRect, TJPG);

                    tjpg.assign(BitMap1);
                    tjpg.CompressionQuality := 90;
                    tjpg.compress;
                    tjpg.SaveToFile(substr(DestDirectory + varfilename, 1, '.')
                         + 't' + '.jpg');
                    tjpg.free;
                    Bitmap1.Free;
                    Bitmap2.Free;
                    result := substr(DestDirectory + varfilename, 1, '.') + 't' + '.jpg';
                    //    result := DestDirectory + varfilename ;
                    exceptlogging('[Thum Save OK]' + substr(DestDirectory +
                         varfilename, 1, '.') + 't' + '.jpg');
                    application.ProcessMessages;
               except
                    on E: Exception do
                    begin
                         tjpg.free;
                         Bitmap1.Free;
                         Bitmap2.Free;
                         result := '';
                         exceptlogging('[Thum Save Fail]' +
                              substr(DestDirectory + varfilename, 1, '.') +
                              't' +
                              '.jpg =>' + E.Message);
                    end;
               end;

          end;

end;


procedure makeThumbNail_face(sourcefileneme: string; DestFilename: string);
var
     Bitmap1: TBitmap;
     Bitmap2: TBitmap;
     tjpg: TJPEGImage;
     varHeight: integer;
     varimgFileName: string;
     varExtName: string;
begin
     varExtName := LowerCase(ExtractFileExt(sourcefileneme));
     if varExtName = '.bmp' then
     begin

          Bitmap1 := TBitmap.Create;

          Bitmap1.PixelFormat := pf8bit;
          Bitmap2 := TBitmap.Create;

          try
               Bitmap2.LoadFromFile(sourcefileneme);
               Bitmap1.Height := 76; //pixel
               varHeight := Bitmap2.Height div 76;
               Bitmap1.Width := Bitmap2.width div varHeight;
               //  144; //pixel

          except
               on E: Exception do
               begin

               end;

          end;

          Bitmap1.Canvas.StretchDraw(Bitmap1.Canvas.ClipRect, Bitmap2);

          try
               Bitmap1.SaveToFile(DestFilename + '.bmp');
          except
               on E: Exception do
               begin

               end;

          end;

          Bitmap2.Free;
          Bitmap1.Free;

     end
     else
          if varExtName = '.jpg' then
          begin

               varimgFileName := ExtractFilename(sourcefileneme);
               Bitmap1 := TBitMap.Create;
               Bitmap2 := TBitmap.Create;
               tjpg := TJpegImage.Create;
               Bitmap1.pixelformat := pf24bit;

               try
                    tjpg.LoadFromFile(sourcefileneme);

                    Bitmap1.Height := 76; //pixel
                    varHeight := tJpg.Height div 76;
                    Bitmap1.Width := tJpg.width div varHeight; //  144; //pixel

                    Bitmap1.Canvas.StretchDraw(Bitmap1.Canvas.ClipRect, TJPG);

                    tjpg.assign(BitMap1);
                    tjpg.CompressionQuality := 90;
                    tjpg.compress;
                    tjpg.SaveToFile(DestFilename + '.jpg');
                    tjpg.free;
                    Bitmap1.Free;

               except
                    on E: Exception do
                    begin
                         tjpg.free;
                         Bitmap1.Free;
                    end;
               end;
          end
          else
               if varExtName = '' then
               begin

                    varimgFileName := ExtractFilename(sourcefileneme);
                    Bitmap1 := TBitMap.Create;
                    Bitmap2 := TBitmap.Create;
                    tjpg := TJpegImage.Create;
                    Bitmap1.pixelformat := pf24bit;

                    try
                         tjpg.LoadFromFile(sourcefileneme);

                         Bitmap1.Height := 76; //pixel
                         varHeight := tJpg.Height div 76;
                         Bitmap1.Width := tJpg.width div varHeight; //  144; //pixel

                         Bitmap1.Canvas.StretchDraw(Bitmap1.Canvas.ClipRect, TJPG);

                         tjpg.assign(BitMap1);
                         tjpg.CompressionQuality := 90;
                         tjpg.compress;
                         tjpg.SaveToFile(DestFilename + '.jpg');
                         tjpg.free;
                         Bitmap1.Free;

                    except
                         on E: Exception do
                         begin
                              tjpg.free;
                              Bitmap1.Free;
                         end;
                    end;
               end;

end;
function  ZrStr(lNum: integer; lSiz: integer): string;
var
       lPos: integer;
       lStr: string;
       lRtn: string;
begin
       lRtn := '';
       lStr := IntToStr(lNum);
       lStr := '            ' + lStr;
       lPos := Length(lStr);
       lStr := copy(lStr, lPos - lSiz + 1, lSiz);
       for lPos := 1 to Length(lStr) do
       begin
              if (lStr[lPos] = ' ') then
                     lRtn := lRtn + '0'
              else
                     lRtn := lRtn + lStr[lPos];
       end;

       result := lRtn;
end;

function ExtractURLFileName( S: String ): String;
var
     i: Integer;
begin
    Result := S;
    if Length( S ) > 0 then
      for i := Length( S ) downto 1 do
        if S[i] in ['/','''','=','&'] then
        begin
           Result := Copy( S, i + 1, Length( S ) - i );
           Exit;
       end;
end;

function  SecondsIdle: Cardinal;
var
    liInfo: TLastInputInfo;
begin
    liInfo.cbSize := SizeOf(TLastInputInfo);
    GetLastInputInfo(liInfo);

    Result := (GetTickCount - liInfo.dwTime) div 1000;
end;



function GetFileListDataObject(const Directory: string; Files:
     TStrings):
     IDataObject;
type
     PArrayOfPItemIDList = ^TArrayOfPItemIDList;
     TArrayOfPItemIDList = array[0..0] of PItemIDList;
var
     Malloc: IMalloc;
     Root: IShellFolder;
     FolderPidl: PItemIDList;
     Folder: IShellFolder;
     p: PArrayOfPItemIDList;
     chEaten: ULONG;
     dwAttributes: ULONG;
     FileCount: Integer;
     i: Integer;
begin
     Result := nil;
     if Files.Count = 0 then
          Exit;
     OleCheck(SHGetMalloc(Malloc));
     OleCheck(SHGetDesktopFolder(Root));
     OleCheck(Root.ParseDisplayName(0, nil,
          PWideChar(WideString(Directory)),
          chEaten, FolderPidl, dwAttributes));
     try
          OleCheck(Root.BindToObject(FolderPidl, nil, IShellFolder,
               Pointer(Folder)));
          FileCount := Files.Count;
          p := AllocMem(SizeOf(PItemIDList) * FileCount);
          try
               for i := 0 to FileCount - 1 do
               begin
                    OleCheck(Folder.ParseDisplayName(0, nil,
                         PWideChar(WideString(Files[i])), chEaten, p^[i],
                         dwAttributes));
               end;
               OleCheck(Folder.GetUIObjectOf(0, FileCount, p^[0], IDataObject,
                    nil,
                    Pointer(Result)));
          finally
               for i := 0 to FileCount - 1 do
               begin
                    if p^[i] <> nil then Malloc.Free(p^[i]);
               end;
               FreeMem(p);
          end;
     finally
          Malloc.Free(FolderPidl);
     end;
end;



function ConnectDrive(varRemotepath:string; varDrive:string; varUserID, varPassword:string) : integer;
var
     NetResource: TNetResource;
     pcDrive, pcRemotePath, pcUserID, pcPassword: pointer;


begin
 {    if (WNetAddConnection(PChar(varPath),
          PChar(varUser), PChar(varDrive))
          <> NO_ERROR) then
          result:=true;
     else
          result:= false;
  }
     //varDrive := 'W'+':';
     //varRemotePath := '\\192.168.0.120\chart';
     //varUserID := 'admin';
     //varPassword := 'admin';

     //  pcRemotePath := '\\192.168.50.19\gwgw';
     //  pcUserID := 'gwtest';
     //  pcPassword := 'gwplan';

     GetMem(pcRemotePath, Length(varRemotePath) + 1);
     GetMem(pcUserID, Length(varUserID) + 1);
     GetMem(pcPassword, Length(varPassword) + 1);
     GetMem(pcDRIVE, Length(varDrive) + 1);
     StrPCopy(pcRemotePath, varRemotePath);
     StrPCopy(pcUserID, varUserID);
     StrPCopy(pcPassword, varPassword);
     StrPCopy(pcDrive, varDrive);
     try
          NetResource.dwScope := RESOURCE_CONNECTED;
          NetResource.dwType := RESOURCETYPE_DISK;
          NetResource.dwDisplayType := RESOURCEDISPLAYTYPE_SHARE;
          NetResource.dwUsage := RESOURCEUSAGE_CONNECTABLE;
          NetResource.lpLocalName := pchar(pcDrive);
          NetResource.lpRemoteName := pcRemotePath;
          NetResource.lpComment := '';
          NetResource.lpProvider := '';

          Result := WNetAddConnection2(NetResource, pcPassword, pcUserID, CONNECT_INTERACTIVE);
          //wResult := WNetAddConnection2(NetResource, pcPassword, nil, CONNECT_INTERACTIVE);
          //statusbar1.Panels[1].Text := inttostr(wResult);
     finally
          FreeMem(pcRemotePath);
          FreeMem(pcUserID);
          FreeMem(pcPassword);
          FreeMem(pcDrive);
     end;

end;
function  DisConnectDrive(varDrive:string) :string;
var
     lpszLocalName: array[0..50] of Char;
     rt: DWORD;
begin
     StrPCopy(lpszLocalName, varDrive); // ���� ����̺��
     rt := WNetCancelConnection(lpszLocalName, True);
     result := IntToStr( rt);

end;




function ExtractInt(AString: String): String;
 var
   I: Integer;
   TempString: String;
 begin
   TempString := '';
   AString := Trim(AString);
   if AString <> '' then
     for I := 1 to Length(AString) do
       if (AString[I] in ['0'..'9']) then TempString := TempString + AString[I];
   Result := Trim(TempString);
 end;



procedure ListFileDir(Path: string; FileList: TStrings);
var
  SearchRec: TSearchRec;
begin
  if FindFirst(Path + '*.*', faAnyFile,  SearchRec) = 0 then
  begin
    repeat
      if ( SearchRec.Attr <> faDirectory) then
      begin
         FileList.Add( SearchRec.Name);
      end;
    until  sysutils.FindNext( SearchRec) <> 0;

    sysutils.FindClose(SearchRec);
  end;
end;


function  DateType1(varDate: string): string;
var
     varDate2: string;
begin
     varDate2 := deldash(varDate);
     {    result := copy(varDate2, 3, 2) + '/' +
              copy(varDate2, 5, 2) + '/' +
              copy(varDate2, 7, 2);
     }
     result := varDate;
end;

procedure  GridSet(varGrid:TadvStringGrid);
begin
    with   varGrid do
    begin
          align := alClient;
          rowCount := 1;
          fixedRowAlways := true;
          options:=  [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect];


          columnSize.Key:='.\db.ini';
          columnSize.Location:=    clIniFile;
          columnSize.Section :=  varGrid.Name;
          columnSize.Save:=true;

    end;
end;
//���α׷� ���Ͻ� ��α��ϱ�
function GetProgramFilesDir: TFileName;
  procedure FreePidl(pidl: PItemIDList);
  var
    allocator: IMalloc;
  begin
    if Succeeded(SHGetMalloc(allocator)) then
      allocator.Free(pidl);
  end;
const
  CSIDL_PROGRAM_FILES = $0026;
var
  pidl: PItemIDList;
  Path: array [0..MAX_PATH-1] of char;
begin
  if Succeeded(SHGetSpecialFolderLocation(Application.Handle, CSIDL_PROGRAM_FILES, pidl)) then
  begin
    if SHGetPathFromIDList(pidl, Path) then
      Result := StrPas(path);
    FreePidl(pidl);
  end;
end;






function GetFirewall(var fwMgr, profile: OleVariant): boolean;
begin
  Result := (Win32Platform=VER_PLATFORM_WIN32_NT) and
    (Win32MajorVersion>5) or ((Win32MajorVersion=5) and (Win32MinorVersion>0));
  if result then // need Windows XP at least
  try
    fwMgr := CreateOleObject('HNetCfg.FwMgr');
    profile := fwMgr.LocalPolicy.CurrentProfile;
  except
    on E: Exception do
      result := false;
  end;
end;
 
const
  NET_FW_PROFILE_DOMAIN = 0;
  NET_FW_PROFILE_STANDARD = 1;
  NET_FW_IP_VERSION_ANY = 2;
  NET_FW_IP_PROTOCOL_UDP = 17;
  NET_FW_IP_PROTOCOL_TCP = 6;
  NET_FW_SCOPE_ALL = 0;
  NET_FW_SCOPE_LOCAL_SUBNET = 1;

procedure AddFireWallApp(const appName, exePathName: string);
var fwMgr, profile, app: OleVariant;
begin
  if GetFirewall(fwMgr,profile) then
  try
    if profile.FirewallEnabled then begin
      app := CreateOLEObject('HNetCfg.FwAuthorizedApplication');
      try
        app.ProcessImageFileName := exePathName;//��������_�н�����;
        app.Name := appName;
        app.Scope := NET_FW_SCOPE_ALL;
        app.IpVersion := NET_FW_IP_VERSION_ANY;
        app.Enabled :=true;
        profile.AuthorizedApplications.Add(app);
      finally
        app := varNull;
      end;
    end;
  finally
    profile := varNull;
    fwMgr := varNull;
  end;
end;

procedure AddFireWallPort_TCP(const PortName: string; PortNo: cardinal);
var fwMgr, profile, port: OleVariant;
begin
  if GetFirewall(fwMgr,profile) then
  try
    if profile.FirewallEnabled then begin
      port := CreateOLEObject('HNetCfg.FWOpenPort');
      port.Name := portName;
      port.Protocol := NET_FW_IP_PROTOCOL_TCP;
      port.Port := portNo;
      port.Scope := NET_FW_SCOPE_ALL;
      port.Enabled := true;
      profile.GloballyOpenPorts.Add(port);
    end;
  finally
    port := varNull;
    profile := varNull;
    fwMgr := varNull;
  end;
end;
procedure AddFireWallPort_UDP(const PortName: string; PortNo: cardinal);
var fwMgr, profile, port: OleVariant;
begin
  if GetFirewall(fwMgr,profile) then
  try
    if profile.FirewallEnabled then begin
      port := CreateOLEObject('HNetCfg.FWOpenPort');
      port.Name := portName;
      port.Protocol := NET_FW_IP_PROTOCOL_UDP;
      port.Port := portNo;
      port.Scope := NET_FW_SCOPE_ALL;
      port.Enabled := true;
      profile.GloballyOpenPorts.Add(port);
    end;
  finally
    port := varNull;
    profile := varNull;
    fwMgr := varNull;
  end;
end;

function DeleteLineBreaks(const S: string): string;
 var
    Source, SourceEnd: PChar;
 begin
    Source := Pointer(S) ;
    SourceEnd := Source + Length(S) ;
    while Source < SourceEnd do
    begin
      case Source^ of
        #10: Source^ := #32;
        #13: Source^ := #32;
      end;
      Inc(Source) ;
    end;
    Result := S;
 End;


procedure SaveDbInfo_encode(saveName,
     dbIP,
     dbtosIP,
     dbName,
     dbPASS,
     dbProtocol,
     dbUSER,
     ServerIP,
     DocuIP,
     DBPort:string);
var
     i, v,  nWritten: integer;
      user: tFileRec;
begin
     user.handle := FileCreate(SaveName);


     StrPCopy(HeadMark.Mark, ENCRYPT_MARK); // ��ȣȭ�� ������ ǥ��

     headmark.HdbIP       :=  dbIP        ;
     headmark.HdbName     :=  dbName      ;
     headmark.HdbPASS     :=  dbPASS      ;
     headmark.HdbProtocol :=  dbProtocol  ;
     headmark.HdbUSER     :=  dbUSER      ;
     headmark.HServerIP   :=  ServerIP    ;
     headmark.HDocuIP     :=  DocuIP      ;
     headmark.HDBPort     :=  DBPort      ;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbIP[i]) := byte(HeadMark.HdbIP[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbName[i]) := byte(HeadMark.HdbName[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbPASS[i]) := byte(HeadMark.HdbPASS[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbProtocol[i]) := byte(HeadMark.HdbProtocol[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbUSER[i]) := byte(HeadMark.HdbUSER[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HServerIP[i]) := byte(HeadMark.HServerIP[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HDocuIP[i]) := byte(HeadMark.HDocuIP[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HDBPort[i]) := byte(HeadMark.HDBPort[i]) xor v;
     end;
     nWritten := FileWrite(user.Handle, HeadMark, SizeOf(THeadMark));
     FileClose(user.handle);
end;
procedure  LoadEncodingInfo(OpenName: string);
var
     user: TFileRec;
     nRead: integer;
     i, v: integer;
begin

     if not FileExists(Openname) then
     begin
          showmessage('Good Bye');
          System.Exit;
     end;


     user.handle := FileOpen(OpenName, fmOpenRead);
      FileSeek(user.handle, 0, 0);

     nRead := FileRead(user.Handle, HeadMark, SizeOf(THeadMark));

     for i := 0 to 20 do
     begin
          if HeadMark.Mark[i] <> ENCRYPT_MARK[i + 1] then
          begin
               FileClose(user.handle);
               showmessage('�������� �б� ����');

               System.Exit;
          end;
     end;



     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbIP[i]) := byte(HeadMark.HdbIP[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbName[i]) := byte(HeadMark.HdbName[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbPASS[i]) := byte(HeadMark.HdbPASS[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbProtocol[i]) := byte(HeadMark.HdbProtocol[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HdbUSER[i]) := byte(HeadMark.HdbUSER[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HServerIP[i]) := byte(HeadMark.HServerIP[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HDocuIP[i]) := byte(HeadMark.HDocuIP[i]) xor v;
     end;


     for i := 1 to 100 do
     begin
          v := i * 1320;
          byte(HeadMark.HDBPort[i]) := byte(HeadMark.HDBPort[i]) xor v;
     end;


     FileClose(user.handle);

end;


procedure Deletefiles(AFile : string);
var
  path, fileSpec : String;
begin
  path := ExtractFileDir(AFile);
  fileSpec := ExtractFileName(AFile);
  _DeleteFiles(path, fileSpec);
end;

procedure _Deletefiles(APath, AFileSpec: string);
var
  lSearchRec : TSearchRec;
  lFind:integer;
  lPath:string;
begin
  lPath := IncludeTrailingPathDelimiter(APath);
  lFind := FindFirst(lPath+AFileSpec,faAnyFile,lSearchRec);
  while lFind = 0 do
  begin
    DeleteFile(pChar(lPath+lSearchRec.Name));
    lFind := SysUtils.FindNext(lSearchRec);
  end;
  sysUtils.FindClose(lSearchRec);
end;

function User_URLEncode(s: string): string;
var
  i: integer;
  source: PAnsiChar;
begin
{I have made my own function. It converts spaces to %20, not to plus sign.
 It was needed to convert local file path to path for browser
 (with file:/// prefix). The most important is it handles UTF-8 strings.
  It was inspired by Radek Hladik's solution above.}
  result := '';
  source := pansichar(s);
  for i := 1 to length(source) do
    if not (source[i - 1] in ['A'..'Z', 'a'..'z', '0'..'9', '-', '_', '~', '.', ':', '/']) then
      result := result + '%' + inttohex(ord(source[i - 1]), 2)
    else
      result := result + source[i - 1];
end;



procedure RichEditPopupMenu(re: TRichEdit);
	const
	  IDM_UNDO   = WM_UNDO;
	  IDM_CUT    = WM_CUT;
	  IDM_COPY   = WM_COPY;
	  IDM_PASTE  = WM_PASTE;
	  IDM_DELETE = WM_CLEAR;
	  IDM_SELALL = EM_SETSEL;
	  IDM_RTL    = $8000; // WM_APP ?

	  Enables: array[Boolean] of DWORD = (MF_DISABLED or MF_GRAYED, MF_ENABLED);
	  Checks: array[Boolean] of DWORD = (MF_UNCHECKED, MF_CHECKED);
	var
	  hUser32: HMODULE;
	  hmnu, hmenuTrackPopup: HMENU;
	  Cmd: DWORD;
	  Flags: Cardinal;
	  HasSelText: Boolean;
	  FormHandle: HWND;
	  // IsRTL: Boolean;
begin
	  hUser32 := LoadLibraryEx(user32, 0, LOAD_LIBRARY_AS_DATAFILE);
	  if (hUser32 <> 0) then
	  try
	    hmnu := LoadMenu(hUser32, MAKEINTRESOURCE(1));
	    if (hmnu <> 0) then
	    try
	      hmenuTrackPopup := GetSubMenu(hmnu, 0);

	      HasSelText := Length(re.SelText) <> 0;
	      EnableMenuItem(hmnu, IDM_UNDO,   Enables[re.CanUndo]);
	      EnableMenuItem(hmnu, IDM_CUT,    Enables[HasSelText]);
	      EnableMenuItem(hmnu, IDM_COPY,   Enables[HasSelText]);
	      EnableMenuItem(hmnu, IDM_PASTE,  Enables[Clipboard.HasFormat(CF_TEXT)]);
	      EnableMenuItem(hmnu, IDM_DELETE, Enables[HasSelText]);
	      EnableMenuItem(hmnu, IDM_SELALL, Enables[Length(re.Text) <> 0]);

	      // IsRTL := GetWindowLong(re.Handle, GWL_EXSTYLE) and WS_EX_RTLREADING <> 0;
	      // EnableMenuItem(hmnu, IDM_RTL, Enables[True]);
	      // CheckMenuItem(hmnu, IDM_RTL, Checks[IsRTL]);

	      FormHandle := GetParentForm(re).Handle;
	      Flags := TPM_LEFTALIGN or TPM_RIGHTBUTTON or TPM_NONOTIFY or TPM_RETURNCMD;
	      Cmd := DWORD(TrackPopupMenu(hmenuTrackPopup, Flags,
	        Mouse.CursorPos.X, Mouse.CursorPos.Y, 0, FormHandle, nil));
	      if Cmd <> 0 then
	      begin
	        case Cmd of
	          IDM_UNDO:   re.Undo;
	          IDM_CUT:    re.CutToClipboard;
	          IDM_COPY:   re.CopyToClipboard;
	          IDM_PASTE:  re.PasteFromClipboard;
	          IDM_DELETE: re.ClearSelection;
	          IDM_SELALL: re.SelectAll;
	          IDM_RTL:; // ?
	        end;
	      end;
	    finally
	      DestroyMenu(hmnu);
	    end;
	  finally
	    FreeLibrary(hUser32);
	  end;
end;

procedure SetImeInputMode(const AHandle : THandle; const Value : TimeInputMode);
var
  hContext : HIMC;
  dwSentence : DWORD;
  dwConversion : DWORD;
begin
  hContext := ImmGetContext(AHandle);
  try
    ImmGetConversionStatus(hContext, dwConversion,dwSentence);
    if value = imHangul then
       ImmSetconversionStatus(hContext, IME_CMODE_HANGUL,dwSentence)
    else
       ImmSetConversionStatus(hContext, IME_CMODE_ALPHANUMERIC,dwSentence);
  finally
    ImmReleaseContext(AHandle, hContext);
  end;
end;


function ResizeImageFile(ImagePath: string; ThumbnailSize: integer): string;
const
  FileNamePrefix = 'thumb1_';
var
  ImageExt: string;
  graphicSource: TGraphic;
  pngThumbnail: TPngImage;
  bmpThumbmail: TBitmap;
begin
  ImageExt := LowerCase(ExtractFileExt(ImagePath));
  if ImageExt='.jpg' then      graphicSource := TJPEGImage.Create
  else if ImageExt='.png' then graphicSource := TPngImage.Create
  else if ImageExt='.gif' then graphicSource := TGIFImage.Create
  else if ImageExt='.bmp' then graphicSource := TBitmap.Create
  else                         exit;
  try
    result := ImagePath;
    graphicSource.LoadFromFile(ImagePath);
    bmpThumbmail := TBitmap.Create;
    try
      if graphicSource.Width >= graphicSource.Height then
      begin
        bmpThumbmail.Width := ThumbnailSize;
        bmpThumbmail.Height := bmpThumbmail.Width * graphicSource.Height div graphicSource.Width;
      end
      else
      begin
        bmpThumbmail.Height := ThumbnailSize;
        bmpThumbmail.Width := bmpThumbmail.Height * graphicSource.Width div graphicSource.Height;
      end;

      bmpThumbmail.Canvas.StretchDraw(Rect(0, 0, bmpThumbmail.Width, bmpThumbmail.Height), graphicSource);

      pngThumbnail := TPngImage.Create;
      try
        pngThumbnail.Assign(bmpThumbmail);
        result := ExtractFilePath(ImagePath) + FileNamePrefix + ChangeFileExt(ExtractFileName(ImagePath), '.png');
        try
          pngThumbnail.SaveToFile(result);
        except
          result := '';
        end;
      finally
        if ImageExt<>'.bmp' then
          pngThumbnail.Free;
      end;
    finally
      bmpThumbmail.Free;
    end;
  finally
    graphicSource.Free;
  end;
end;


function ThumbnailFromImageFile(ImagePath: string; ThumbnailSize: integer): string;
const
  FileNamePrefix = 'thumb_';
var
  ImageExt: string;
  graphicSource: TGraphic;
  bmpSource: TBitmap;
  pngThumbnail: TPngObject;
  bmpThumbmail: TBitmap;
  fScale: double;
begin
  ImageExt := LowerCase(ExtractFileExt(ImagePath));
  if ImageExt='.jpg' then      graphicSource := TJPEGImage.Create
  else if ImageExt='.png' then graphicSource := TPngObject.Create
  else if ImageExt='.gif' then graphicSource := TGIFImage.Create
  else if ImageExt='.bmp' then graphicSource := TBitmap.Create
  else                         exit;

  try
    graphicSource.LoadFromFile(ImagePath);
    if ImageExt='.bmp' then
      bmpSource := TBitmap(graphicSource)
    else
    begin
      bmpSource := TBitmap.Create;
      bmpSource.Assign(graphicSource);
    end;

    bmpThumbmail := TBitmap.Create;
    try
      if bmpSource.Width >= bmpSource.Height then
        fScale := ThumbnailSize / bmpSource.Width
      else
        fScale := ThumbnailSize / bmpSource.Height;

      ScaleImage(bmpSource, bmpThumbmail, fScale);

      pngThumbnail := TPngObject.Create;
      try
        pngThumbnail.Assign(bmpThumbmail);
        result := ExtractFilePath(ImagePath) + FileNamePrefix + ChangeFileExt(ExtractFileName(ImagePath), '.png');
        try
          pngThumbnail.SaveToFile(result);
        except
          result := '';
        end;
      finally
        pngThumbnail.Free;
      end;
    finally
      bmpThumbmail.Free;
      if graphicSource<>bmpSource then
        bmpSource.Free;
    end;
  finally
    graphicSource.Free;
  end;
end;



function  checkBlankRow(aGrid: TAdvStringGrid; aCol : integer): Integer;
var
  i: Integer;
  iRow: Integer;
begin
  //

  iRow := -1;
  for i := 1 to aGrid.RowCount - 1 do
  begin

    if aGrid.Cells[aCol, i] = '' then // ���ڵ�
    begin
      iRow := i;
      Break;
    end;

  end;

  if iRow = -1 then
  begin
    aGrid.AddRow;
    iRow := aGrid.RowCount - 1;

  end;

  Result := iRow;

end;

function  strToDate_dash(s:string):string;
begin

     s:= deldash(s);
     result:= copy(s,1,4) +'-'+ copy(s,5,2) +'-'+ copy(s,7,2) ;


end;


function FindString(Target: string): string;

var

 i, nCnt, dLen: Integer;

 dStr: string;

begin

  dLen := Length(Target);



  for i := 1 to dLen do begin

    if not(Target[i] in['A'..'Z']) then Continue;



    for nCnt := i to dLen do begin

      if not(Target[nCnt] in['A'..'Z']) then Continue;

      dStr := dStr + Target[nCnt];

    end;



    Result := dStr;

    Break;

  end;

end;

procedure NoDup(AListBox: TListBox);//ListBox�ߺ�����
var
  lStringList: TStringList;
begin
  lStringList := TStringList.Create;
  try
    lStringList.Duplicates := dupIgnore;
    lStringList.Sorted := true;
    lStringList.Assign(AListBox.Items);
    AListBox.Items.Assign(lStringList);
  finally
    lStringList.free
  end;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
     FontType: Integer; Data: Pointer): Integer; stdcall;
begin
     TStrings(Data).Add(LogFont.lfFaceName);
     Result := 1;
end;

end.

