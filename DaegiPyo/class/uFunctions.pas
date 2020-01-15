unit uFunctions;

interface
uses
       SysUtils,
       Dialogs,
       Classes, StdCtrls, Controls,
       Windows, Math, Graphics,
       mmSystem, Forms, Messages, ExtCtrls, Registry,
       Maskutils, strutils, Mask, ShellApi, ShlObj, ActiveX, ShFolder,
       IdComponent, IdTCPConnection, IdTCPClient, IdBaseComponent,
   inifiles, AdvProgressBar, TLHelp32,
       TypInfo;
// shlobj: PItemIDList 등  GetConfigDir에서 사용
//-----------------------------------------------------------
//Mac Address

const
       MAX_ADAPTER_ADDRESS_LENGTH = 8;
       MAX_ADAPTER_NAME_LENGTH = 256;
       MAX_ADAPTER_DESCRIPTION_LENGTH = 128;
       SMsgDlgOK = '확인';
       SMsgDlgCancel = '취소';
var
       nSangF, nSangR, nSangL, nHaF, nHaR, nHaL, nCSangF, nCSangR, nCSangL,
              nCHaF, nCHaR, nCHaL, nRoot, nXu, nXd: Integer;
       sP1, sP2, sP3, sP4, sHospGrade: string;

type
       TsP = packed record
              sP1: string;
              sP2: string;
              sP3: string;
              sP4: string;
       end;

type
       TDayOfWeek =
              (Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday);

type
       // 자격확인을 위한 NHIC 로긴 정보
       TNHIC_Info = record
              ID: string;
              PW: string;
       end;

       // 2007.8.15 수정 by SON  ======================
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
                     boninJun: string;
       end;
       //===============================================

       TPIDandHWND = record
              pID: DWORD;
              hWindow: THandle;
       end;
       TJakyuk = packed record
              piboname, kiho, k_number, c_name: string;
              jongbeul, kwan: integer;
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

function isFileInUse(fName: string): boolean;

function LoadPanoInfo(varChart: string; varRatio: integer = 33): TPanoinfo;

function CheckHpno(varHpno: string): Boolean;

function GetConfigDir: string;
function call_tel_type(const AnTel: string): string;
function call_saup_type(const AnTel: string): string;

function DateMaker(num: string): string;
function SaupMaker(num: string): string;

procedure DoSound(AMsg: string);
function GetComPorts(Ports: TStringList): integer;
function GetFileLastWriteTime(sFileName: string): TDateTime;

procedure DllRegister(Filename: string); //dLL등록

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
function DelUnderbar(TheInput: string): string;
function DateSpin(aString: string; aChk: Boolean): string;
function DelSpace(TheInput: string): string;
function DelPoint(TheInput: string): string;
function DelPLus(TheInput: string): string;

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
function juminToGender(TheInput: string): string;
function JuminToBirthDash(TheInput: string): string;

function BIRTHTONai(TheInput: string): string;

function ReturnWeek(m_Date: TDateTime): string;
function ReturnWeek2(m_Date: TDateTime): string;
//function SSNoCheck(ssno:string;var gender:String;var age:byte):boolean;
function SSNoCheck(ssno: string): boolean;
function GetJuminDate(strJuminNo: string): TDateTime;

function GetAveCharSize(Canvas: TCanvas): TPoint;
function MyInputBox(const ACaption, APrompt: string;
       var Value: string; const sChar: Char): Boolean;

function IntToHanguel(Value: Int64): string;
function IntToHanguel2(Value: string): string;

function SayNum(Value: string): string;

function Round2(number: currency; pt: integer): currency;
function JulSa(number: Currency; iDigit: Integer): Currency;
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

//두 날짜 사이의 일수 계산
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

function MakeJuminCRC(No: string): Char;
function JuminToBirth(TheInput: string): string;
function JuminToBirth2(TheInput: string): string;

function SbcStrToMbcStr(const Str: string): string; //전각 반각
function MbcStrToSbcStr(const Str: string): string;

function ConvertDaomoTeethToWisdomTeeth(varTeethNo: string): string;

procedure ExceptLogging(sMsg: string);

function TimetoMin(TimeValue: string): integer;
function MintoTime(MinValue: integer): string;
function SmsErrorCheck(ECode: integer): string;
procedure RemoveDuplicates(const stringList: TStringList);
procedure FileDelete(aDirName: string);
procedure CleanMem(Strings: TStrings);
function OKGetSetName(AOrdTypeInfo: PTypeInfo; nIndex: integer): string;
function OKGetSetValue(AOrdTypeInfo: PTypeInfo; SetName: string): integer;

function GetFileVersion2: string;
function MakeOr(varField, varTeeth: string): string;
function MakeOrLike(varField, varTeeth: string): string;

function IsJpegFile(const FileName: string): Boolean;
function IsBmpFile(const FileName: string): Boolean;

//function GetAveCharSize(Canvas: TCanvas): TPoint;
function InputQueryEx(const ACaption, APrompt: string; var Value: string):
       Boolean;
function InputBoxEx(const ACaption, APrompt, ADefault: string): string;
function InputComboBox(const ACaption, APrompt: string; Values: TStringList; var
       Value: string): Boolean;

procedure MakeImage(varImage:Timage; Flag, sName: string);
function makesP(flag: string): TsP;
function NumToChr(f1: string): string;
function chrToInt(f1: string): Integer;
function ChrToNum(f1: string): string;
function CntX(flag, UorD: string): Integer;
procedure ChkTImage(Sender: TImage; Flag: Boolean);
procedure teethCNT(sP: TsP);

implementation

{
  정  의 : 문자열에서 구분자로 분류한다.
  인  수 : [IN]  lpszSource : 원본
           [OUT] szArrString : 분류된 결과
           [IN]  szSubStr1   : 구분자1
           [IN]  szSubStr2   : 구분자2
  반환값 : 분류된 갯수
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
              FileWrite(nFile, Pchar(sFile)^, Length(sFile));
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
              result := '오전' + intToStr(VarTime) + '시'
       else if VarTime = 12 then
              result := '오후' + '12시'
       else if VarTime > 12 then
              result := '오후' + intToStr(vartime - 12) + '시';
end;

function HangeulMin(Str: string): string;
var
       varMin: integer;
begin
       varMin := strToInt(str);
       if varMin > 0 then
              result := intToStr(VarMin) + '분'
       else
              result := '00' + '분';
       //     result := '정각';

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
                     Font.Name := '굴림'; // 폰트의 글꼴
                     Font.Color := clBlack; // 폰트의 색깔
                     Font.Size := 9; // 폰트의 사이즈

                     // 폰트의 스타일
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
              showmessage(theinput);
              iADate := strtoint(COPY(TheInput, 1, 4));

              iTodayDay := StrToInt(FormatDateTime('MMDD', now));
              iJuminDate := StrToInt(copy(TheInput, 5, 4));

              iTodayDate := StrToInt(FormatDateTime('YYYY', now));

              iAge := iTodayDate - iADate; //나이
              if (iAge > 0) and (iAge < 150) then
              begin
                     //만나이
                    { if iJuminDate < iTodayDay then
                          Result := IntToStr(iAge)
                     else
                          Result := IntToStr(iAge - 1);
                          }
                     //우리나라나이
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
       if Value = '일' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\일.wav'), HInstance, SND_ASYNC)
       else if Value = '이' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\이.wav'), HInstance, SND_ASYNC)
       else if Value = '삼' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\삼.wav'), HInstance, SND_ASYNC)
       else if Value = '사' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\사.wav'), HInstance, SND_ASYNC)
       else if Value = '오' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\오.wav'), HInstance, SND_ASYNC)
       else if Value = '육' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\육.wav'), HInstance, SND_ASYNC)
       else if Value = '칠' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\칠.wav'), HInstance,
                     SND_ASYNC)
       else if Value = '팔' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\팔.wav'), HInstance,
                     SND_ASYNC)
       else if Value = '구' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\구.wav'),
                     HInstance, SND_ASYNC)
       else if Value = '십' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\십.wav'),
                     HInstance, SND_ASYNC)
       else if Value = '백' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\백.wav'),
                     HInstance,
                     SND_ASYNC)
       else if Value = '천' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\천.wav'),
                     HInstance,
                     SND_ASYNC)
       else if Value = '만' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\만.wav'),
                     HInstance,
                     SND_ASYNC)
       else if Value =
              '억' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\억.wav'),
                     HInstance,
                     SND_ASYNC)
       else if Value =
              '조' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\조.wav'), HInstance, SND_ASYNC)
       else if Value =
              '원' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\원.wav'), HInstance, SND_ASYNC)
       else if Value = '영' then
              PlaySound(pChar(ExtractFilePath(Application.exename) +
                     '\wave\영.wav'), HInstance, SND_ASYNC);

end;

function IntToHanguel(Value: Int64): string;
const
       NumberChar: array['0'..'9'] of string = ('영', '일', '이', '삼', '사',
              '오',
              '육', '칠', '팔', '구');
       LevelChar: array[0..3] of string = ('', '십', '백', '천');
       DecimalChar: array[0..5] of string = ('', '만', '억', '조', '경', '현');
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
              else if (Level mod 4 = 0) and UseDecimal then
              begin
                     Result := Result + DecimalChar[Level div 4];
                     UseDecimal := False;
              end;
       end;
end;

function IntToHanguel2(Value: string): string;
const
       NumberChar: array['0'..'9'] of string = ('영', '일', '이', '삼', '사',
              '오',
              '육', '칠', '팔', '구');
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
       nItemCount := Length(szArrString); // 배열 갯수
       if (lpszSource^ = szSubStr1) or (lpszSource^ = szSubStr2) then
       begin
              SetLength(szArrString, nItemCount + 1);
              ScanString(@lpszSource[1], szArrString, szSubStr1, szSubStr2);
       end
       else if lpszSource^ <> #0 then
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

//두 날짜 사이의 일수 계산

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
       else if ((No[7] = '5') or
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
              else if Length(No) <> 13 then
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
              else if Length(No) <> 13 then
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
       {       //성별구분
              if ssno[8]='1' then gender:='남'
              else if ssno[8]='2' then gender:='여';
              //나이 계산
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

//요일구하기

function ReturnWeek(m_Date: TDateTime): string;
begin
       case DayOfWeek(m_Date) of
              1: result := '일요일';
              2: result := '월요일';
              3: result := '화요일';
              4: result := '수요일';
              5: result := '목요일';
              6: result := '금요일';
              7: result := '토요일';
       end;
end;
//요일구하기2

function ReturnWeek2(m_Date: TDateTime): string;
begin
       case DayOfWeek(m_Date) of
              1: result := '일';
              2: result := '월';
              3: result := '화';
              4: result := '수';
              5: result := '목';
              6: result := '금';
              7: result := '토';
       end;
end;

// 특정달의 마지막일 계산

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
                            else if (chkyear mod 100) <> 0 then
                                   chkdate := 29
                            else if (chkyear mod 400) <> 0 then
                                   chkdate := 28
                            else
                                   chkdate := 29;
                     end;
       end;
       CalEndDate := chkdate;
end;
//우편번호'-'표시

function DisplayDash(TheInput: string): string;
var
       Dashdel, Dashval: string;
begin
       DashDel := Trim(DelDash(TheInput));
       if TheInput <> '' then
              DashVal := copy(DashDel, 1, 3) + '-' + Copy(DashDel, 4, 3);
       DisplayDash := DashVal;
end;

// 원표시

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

       else if (i > 3) and (i <= 6) then
       begin
              temp := ',' + copy(TheInput, i - 2, 3);
              temp := copy(TheInput, 1, i - 3) + temp;
              dap := temp;
       end
       else if (i > 6) and (i <= 9) then
       begin
              temp := ',' + copy(TheInput, i - 2, 3);
              temp := ',' + copy(TheInput, i - 5, 3) + temp;
              temp := copy(TheInput, 1, i - 6) + temp;
              dap := temp;
       end
       else if (i > 9) and (i <= 12) then
       begin
              temp := ',' + copy(TheInput, i - 2, 3);
              temp := ',' + copy(TheInput, i - 5, 3) + temp;
              temp := ',' + copy(TheInput, i - 8, 3) + temp;
              temp := copy(TheInput, 1, i - 9) + temp;
              dap := temp;
       end
       else if (i > 12) and (i <= 15) then
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

// 원표시 제거

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

//나이계산

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

              iAge := iTodayYear - iJuminYear; //나이
              if (iAge > 0) and (iAge < 150) then
              begin
                     //만나이
                     if iTodayDate >= iJuminDate then
                            Result := IntToStr(iAge)
                     else
                            Result := IntToStr(iAge - 1);

                     //우리나라 나이
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
       cc2: integer; // --> 추가

begin
       // if Copy(TheInput, 8, 4) = '0000' then
       // begin
       //      Result := '20';
       //      Exit;
       // end;
       cc2 := length(TheInput); //  --> 추가

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

              iAge := iTodayYear - iJuminYear; //나이
              if (iAge > 0) and (iAge < 150) then
              begin
                     //만나이
                     if iTodayDate >= iJuminDate then
                            Result := IntToStr(iAge)
                     else
                            Result := IntToStr(iAge - 1);

                     //우리나라 나이
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
                                   sTmpDate := '남자'
                            end;
                     2, 4, 6, 8:
                            begin
                                   sTmpDate := '여자'
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

function JuminToGender(TheInput: string): string;
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
                                   sTmpDate := 'M'
                            end;
                     2, 4, 6, 8:
                            begin
                                   sTmpDate := 'F'
                            end;
              end;
              Result := STmpDate;
       end
       else
              Result := '';

end;

//사업자번호체크

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

//주민번호체크
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
//바코드체크

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
//바코드체크

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

//날짜스핀

function DateSpin(aString: string; aChk: Boolean): string;
var
       Year, Mon, DD: Integer;
begin
       // 년, 월, 일 캡쳐
       Year := StrToInt(Copy(aString, 1, 4));
       Mon := StrToInt(Copy(aString, 6, 2));
       DD := StrToInt(Copy(aString, 9, 2));

       // 일자가 감소되었을 경우
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
              else if (DD = 1) then
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

       // 일자가 증가되었을 경우
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
              else if DD = CalEndDate(aString) then
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
// 전기이월애 계산
Function CalJunki(P_Date, P_Code : String ) : Real ;
var
  Cdr_Gbn : String ;
  W_JunkiAmt,W_DrAmt,W_CrAmt : Real ;
begin
  W_JunkiAmt := 0 ; W_DrAmt := 0 ; W_CrAmt := 0 ;
  With BaseDM.WorkSql do
  begin
  // 계정과목의 차대구분 알아보기 //
    Close;
    SQL.Clear ;
    SQL.Add('Select Ac_Code,Ac_CdrSW From AcCdMst Where Ac_Code = :Code');
    ParamByName('Code').AsString := P_Code;
    Open;
    Cdr_Gbn := FieldByName('Ac_CdrSW').AsString ;

  // 전년도 이월액 구하기 //
    Close;
    SQL.Clear;
    SQL.Add('Select * From YearTot Where Yt_Year = :Y and Yt_AcCode = :Code');
    ParamByName('Y').AsString    := IntToStr(StrToint(copy(P_Date,1,4))-1);
    ParamByName('Code').AsString := P_Code;
    Open ;
    if RecordCount >0 then
       W_Junkiamt := FieldByName('Yt_DrAmt').AsFloat + FieldByName('Yt_CrAmt').AsFloat;

  // 전월 이월액 구하기 //
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

  // 전일 이월액 구하기 //
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
       // 이부분도 수정
       BufLen := 0;

       New(AdapterInfo);

       Error := GetAdaptersInfo(AdapterInfo, @BufLen);

       // 기존 델마당 자료를 참고 하여 이부분을 추가
       if Error = ERROR_BUFFER_OVERFLOW then
       begin
              reallocMem(AdapterInfo, buflen);
              error := GetAdaptersInfo(AdapterInfo, @BufLen);
       end;

       // 여기까지

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
       if number <> 0 then
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
       begin
              Result := 0;
       end;
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

       n := GetFileVersionInfoSize(PChar(ExePath), n); // 버퍼 크기를 알아넨다.
       Buf := AllocMem(n); // 버퍼의 크기를 정함.
       GetFileVersionInfo(PChar(ExePath), 0, n, Buf); // 파일 인포 핸들을 얻는다.
       VerQueryValue(Buf, 'VarFileInfo\Translation', trans, aLen);
       // 파일 버전 정보를 얻기전에 언어 값을 얻는다.
       transtring := IntToHex(MakeLong(HiWord(Longint(trans^)),
              LoWord(Longint(trans^))), 8);
       // Integer 값을 HEX 문자열로 변환하여 버전 정보를 뽑을때 쓸수 있도록 만든다. (MSDN 참조했음.)
       VerQueryValue(Buf, PChar('StringFileInfo\' + transtring +
              '\FileVersion'),
              Pointer(VersionS), bLen); // 얻어넨 언어 값으로 버전을 알아넨다.
       FreeMem(Buf, n); // 버퍼 헨들 소멸작업.
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

// 날짜의 년도만 발취

function dateYear(D: TDateTime): Integer;
var
       Year, Month, Day: Word;
begin
       DecodeDate(D, Year, Month, Day);
       Result := Year;
end;

// 날짜의 월만 발취

function dateMonth(D: TDateTime): Integer;
var
       Year, Month, Day: Word;
begin
       DecodeDate(D, Year, Month, Day);
       Result := Month;
end;

// 날짜의 일만 발취

function dateDay(D: TDateTime): Integer;
var
       Year, Month, Day: Word;
begin
       DecodeDate(D, Year, Month, Day);
       Result := Day;
end;

// 년의 시작일자

function dateBeginOfYear(D: TDateTime): TDateTime;
var
       Year, Month, Day: Word;
begin
       DecodeDate(D, Year, Month, Day);
       Result := EncodeDate(Year, 1, 1);
end;

// 년의 마지막일자

function dateEndOfYear(D: TDateTime): TDateTime;
var
       Year, Month, Day: Word;
begin
       DecodeDate(D, Year, Month, Day);
       Result := EncodeDate(Year, 12, 31);
end;

// 월의 시작일자

function dateBeginOfMonth(D: TDateTime): TDateTime;
var
       Year, Month, Day: Word;
begin
       DecodeDate(D, Year, Month, Day);
       Result := EncodeDate(Year, Month, 1);
end;

// 월의 마지막일자

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

       {월의 다음월의 시작일에서 1을 뺀다}
       Result := EncodeDate(Year, Month, 1) - 1;
end;

// 년을 기준으로 몇번째 주인지

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
       else if (doy2 >= dateDayofYear(dateEndOfYear(NewYear))) then
              Result := 1
       else
              Result := (doy1 - 1) div 7 + 1;
end;

// 년을 기준으로 몇번째 일인지

function dateDayOfYear(D: TDateTime): Integer;
begin
       Result := Trunc(D - dateBeginOfYear(D)) + 1;
end;

// 요일 번호

function dateDayOfWeek(D: TDateTime): TDayOfWeek;
begin
       Result := TDayOfWeek(Pred(DayOfWeek(D)));
end;

// 윤년인지 검사

function dateLeapYear(D: TDateTime): Boolean;
var
       Year, Month, Day: Word;
begin
       DecodeDate(D, Year, Month, Day);
       Result := (Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400
              = 0));
end;

// 주어진 일자가 포함된 분기의 시작일

function dateBeginOfQuarter(D: TDateTime): TDateTime;
var
       Year, Month, Day: Word;
begin
       DecodeDate(D, Year, Month, Day);
       Result := EncodeDate(Year, (((Month - 1) div 3) * 3) + 1, 1);
end;

// 주어진 일자가 포함된 분기의 마지막일

function dateEndOfQuarter(D: TDateTime): TDateTime;
begin
       Result := dateBeginOfQuarter(dateBeginOfQuarter(D) + (3 * 31)) - 1;
end;

// 주의 시작일

function dateBeginOfWeek(D: TDateTime; Weekday: Integer):
       TDateTime;
begin
       Result := D;
       while DayOfWeek(Result) <> Weekday do
              Result := Result - 1;
end;

// 월의 마지막 일

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
                          1: result  := '건강보험';
                          2: result  := '건강보험';
                          3: result  := '건강보험';
                          4: result  := '의료급여 1종';
                          5: result  := '의료급여2종';
                          6: result  := '성병/행려';
                          9: result  := '산재';
                          10: result := '자보';
                          11: result := '일반';
                          }
                     1: result := '건강보험';
                     2: result := '보호1종';
                     3: result := '보호2종';
                     4: result := '일반';
                     5: result := '보호4종';
                     6: result := '보호8종';
                     7: result := '산재';
                     8: result := '자보';
                     9: result := '노숙자및외국인근로자';
              end;
       end
       else
       begin
              result := '일반';
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

//single character string ->  multibyte character string
//반각->전각 //OHJANG-2001.05.01

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
                                          //else      Result := Result + #$A1 + #$A1;  //대체할 multibyte character strings이 없는 경우 무시
                                   end;
                            end;
                     mbLeadByte, mbTrailByte: Result := Result + Str[i];
              end; //End of Case
       end; //End of For
end;

//multibyte character string -> single character string
//전각->반각 //OHJANG-2001.05.01

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
                            begin //무조건 mbLeadByte 뒤에 mbTrailByte가 된다는 조건
                                   case LeadByte of
                                          //A3로 시작하는(영문 및 특수문자) MBCS와 MBCS Space만 변경
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

       if ErrCode <> ERROR_SUCCESS then //설치된 포트 없음
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

              TmpPorts.Sort; //리스트 소트
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

procedure DllRegister(Filename: string); //dLL등록
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
       else if AMsg = 'Fail' then
       begin
              if fileexists(pchar(GetConfigDir +
                     'wave\JUBSUFAIL.wav')) then
                     PlaySound(pchar(GetConfigDir +
                            'wave\JUBSUFAIL.wav'), 0, SND_ASYNC);
       end
       else if AMsg = 'Already' then
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
              8: //0000-0000 인경우
                     begin
                            result := copy(str_buf, 1, 4) + '-' + copy(str_buf,
                                   5, 4);
                     end;
              // 서울전화 00-000-0000 인 경우
              9:
                     begin
                            result := copy(str_buf, 1, 2) + '-' + copy(str_buf,
                                   3, 3) +
                                   '-' + copy(str_buf, 6, 4);
                     end;
              /// 서울전화 - 또는 지방 000-000-0000 인 경우
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
              ///  000-0000-0000 인 경우
              11:
                     begin
                            result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                                   4, 4) +
                                   '-' + copy(str_buf, 8, 4);
                     end;
              ///  000-0000-00000 인 경우
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
              0: result := '로그인실패';
              1: result := '전송성공'; //'호출요청성공';
              11: result := '전화번호 이상';
              21: result := 'Connect 실패';
              22: result := '데이터 Send 실패';
              23: result := 'Ack Receive 실패';
              40: result := 'SMS 서버 이상';
              41: result := '미등록 사용자';
              67: result := '잔액부족';
              68: result := '고객사 코드 이상';
              73: result := '미등록 회원 또는 기본료미납 ';
              77: result := '호출할 메시지의 내용이 없음';
              78: result := '국번 or 전화번호 뒤 4 자리 이상';
              79: result := '전송성공'; // '호출요청성공';
              80: result := '이통사번호 이상';
              82: result := '‘700’, ’800’ 금지업체';
              84: result := '예약일자 이상';
              85: result := '호출 URL이 없음';
              88: result := '기타'; //'데이터 포맷 오류 및 기타오류';
              99: result := '암호이상';
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

procedure FileDelete(aDirName: string);
var
       SR: TSearchRec;
begin
       // 이부분에 폴더 구분인 '\' 문자가 끝에 있는지 없는지 확인하여 없으면 '\'를 추가하는 함수를 두면 좋을겁니다 ;;;

       if DirectoryExists(aDirName) then
              try
                     if (FindFirst(aDirName + '*.*', faAnyFile, Sr)) = 0 then
                     begin
                            repeat
                                   if (Sr.Name <> '.') and (Sr.Name <> '..')
                                          then
                                   begin
                                          if (SR.Attr and faDirectory) =
                                                 faDirectory then
                                          begin
                                                 ChDir(aDirName + SR.Name);
                                                 if not isFileInUse(aDirName +
                                                        SR.Name) then
                                                        FileDelete(aDirName +
                                                               SR.Name);
                                                 ChDir('..');
                                                 try
                                                        RemoveDir(aDirName +
                                                               SR.Name);
                                                 except
                                                 end;
                                          end
                                          else
                                                 try
                                                        if not
                                                               isFileInUse(aDirName
                                                               +
                                                               SR.Name) then
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
              FileTimeToLocalFileTime(ffd.ftLastWriteTime, lft); // 생성일 기준
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
                     exceptLogging('파일사용중확인 실패->' + E.message);
                     Result := False;
              end;
       end;
end;

function OKGetSetName(AOrdTypeInfo: PTypeInfo; nIndex: integer): string;
var
       OrdTypeData: PTypeData;
       nMin, nMax: integer;
begin
       // TTypeData 포인터를 얻는다.
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
       // TTypeData 포인터를 얻는다.
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

function GetFileVersion2: string;
const
       InfoStr: array[0..9] of string = ('CompanyName', 'FileDescription',
              'FileVersion', 'InternalName', 'LegalCopyright',
              'LegalTradeMarks',
              'OriginalFileName', 'ProductName', 'ProductVersion', 'Comments');
var
       ExeName: string;
       VerInfoSize, Len, i: DWORD;
       Buf: PChar;
       Value: PChar;
begin
       Result := '';

       ExeName := Application.ExeName;
       VerInfoSize := GetFileVersionInfoSize(PChar(ExeName), VerInfoSize);
       if VerInfoSize > 0 then
       begin
              Buf := AllocMem(VerInfoSize);
              try
                     GetFileVersionInfo(PChar(ExeName), 0, VerInfoSize, Buf);
                     for i := Low(InfoStr) to High(InfoStr) do
                            if VerQueryValue(Buf,
                                   PChar('StringFileInfo\041203B5\' +
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
       //BMP체트는 잘 못함....
       FillChar(Buf, 2, 0);
       with TFileStream.Create(FileName, 0) do
       begin
              Position := 0;
              ReadBuffer(Buf[0], 2);
              Free;
       end;
       Result := CompareMem(@RightBuf[0], @Buf[0], 2);
end;

//확장inputComboBox, inputBox

function InputQueryEx(const ACaption, APrompt: string;
       var Value: string): Boolean;
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
                     Font := Application.MainForm.Font; //
                     Canvas.Font := Application.MainForm.Font; //Font;
                     DialogUnits := GetAveCharSize(Canvas);
                     BorderStyle := bsDialog;
                     Caption := ACaption;
                     ClientWidth := MulDiv(180, DialogUnits.X, 4);
                     Position := poScreenCenter;
                     Prompt := TLabel.Create(Form);
                     with Prompt do
                     begin
                            Parent := Form;
                            Font := Application.MainForm.Font; //
                            Caption := APrompt;
                            Left := MulDiv(8, DialogUnits.X, 4);
                            Top := MulDiv(8, DialogUnits.Y, 8);
                            Constraints.MaxWidth := MulDiv(164, DialogUnits.X,
                                   4);
                            WordWrap := True;
                     end;
                     Edit := TEdit.Create(Form);
                     with Edit do
                     begin
                            Parent := Form;
                            imeMode := imSHanguel;
                            imeName := '';
                            Font := Application.MainForm.Font; //
                            Left := Prompt.Left;
                            Top := Prompt.Top + Prompt.Height + 5;
                            Width := MulDiv(164, DialogUnits.X, 4);
                            MaxLength := 255;
                            Text := Value;
                            SelectAll;
                     end;
                     ButtonTop := Edit.Top + Edit.Height + 15;
                     ButtonWidth := MulDiv(50, DialogUnits.X, 4);
                     ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
                     with TButton.Create(Form) do
                     begin
                            Parent := Form;
                            Caption := SMsgDlgOK; //unit Consts
                            ModalResult := mrOk;
                            Default := True;
                            SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop,
                                   ButtonWidth,
                                   ButtonHeight);
                     end;
                     with TButton.Create(Form) do
                     begin
                            Parent := Form;
                            Caption := SMsgDlgCancel;
                            ModalResult := mrCancel;
                            Cancel := True;
                            SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top +
                                   Edit.Height + 15,
                                   ButtonWidth, ButtonHeight);
                            Form.ClientHeight := Top + Height + 13;
                     end;

                     if ShowModal = mrOk then
                     begin
                            Value := Edit.Text;
                            Result := True;
                     end;
              finally
                     Form.Free;
              end;
end;

function InputBoxEx(const ACaption, APrompt, ADefault: string): string;
begin
       Result := ADefault;
       InputQueryEx(ACaption, APrompt, Result);
end;

function InputComboBox(const ACaption, APrompt: string; Values: TStringList; var
       Value: string): Boolean;
var
       Form: TForm;
       Prompt: TLabel;
       ComboEdit: TComboBox;
       DialogUnits: TPoint;
       ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
       Result := False;
       Form := TForm.Create(Application);
       with Form do
              try
                     Font := Application.MainForm.Font; //
                     Canvas.Font := Application.MainForm.Font; //Font;
                     DialogUnits := GetAveCharSize(Canvas);
                     BorderStyle := bsDialog;
                     Caption := ACaption;
                     ClientWidth := MulDiv(180, DialogUnits.X, 4);
                     Position := poScreenCenter;
                     Prompt := TLabel.Create(Form);
                     with Prompt do
                     begin
                            Parent := Form;
                            Font := Application.MainForm.Font; //
                            Caption := APrompt;
                            Left := MulDiv(8, DialogUnits.X, 4);
                            Top := MulDiv(8, DialogUnits.Y, 8);
                            Constraints.MaxWidth := MulDiv(164, DialogUnits.X,
                                   4);
                            WordWrap := True;
                     end;
                     ComboEdit := TComboBox.Create(Form);
                     with ComboEdit do
                     begin
                            Parent := Form;
                            Font := Application.MainForm.Font; //
                            Left := Prompt.Left;
                            Top := Prompt.Top + Prompt.Height + 5;
                            Width := MulDiv(164, DialogUnits.X, 4);
                            MaxLength := 255;
                            ComboEdit.Items.AddStrings(Values);
                            Style := csDropDownList;
                            ItemIndex := Items.IndexOf(Value);
                            //Text := Value;
                     end;
                     ButtonTop := ComboEdit.Top + ComboEdit.Height + 15;
                     ButtonWidth := MulDiv(50, DialogUnits.X, 4);
                     ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
                     with TButton.Create(Form) do
                     begin
                            Parent := Form;
                            Caption := SMsgDlgOK;
                            ModalResult := mrOk;
                            Default := True;
                            SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop,
                                   ButtonWidth,
                                   ButtonHeight);
                     end;
                     with TButton.Create(Form) do
                     begin
                            Parent := Form;
                            Caption := SMsgDlgCancel;
                            ModalResult := mrCancel;
                            Cancel := True;
                            SetBounds(MulDiv(92, DialogUnits.X, 4), ComboEdit.Top
                                   + ComboEdit.Height + 15,
                                   ButtonWidth, ButtonHeight);
                            Form.ClientHeight := Top + Height + 13;
                     end;

                     if ShowModal = mrOk then
                     begin
                            Value := ComboEdit.Text;
                            Result := True;
                     end;
              finally
                     Form.Free;
              end;
end;

function NumToChr(f1: string): string;
begin
       if f1 = '1' then
              Result := 'A'
       else if f1 = '2' then
              Result := 'B'
       else if f1 = '3' then
              Result := 'C'
       else if f1 = '4' then
              Result := 'D'
       else if f1 = '5' then
              Result := 'E';
end;

function chrToInt(f1: string): Integer;
begin
       Result := 0;
       if f1 = 'A' then
              Result := 1
       else if f1 = 'B' then
              Result := 2
       else if f1 = 'C' then
              Result := 3
       else if f1 = 'D' then
              Result := 4
       else if f1 = 'E' then
              Result := 5;

end;

procedure teethCNT(sP: TsP);
var
       i: Integer;
var
       tmp2: string;
var
       Portion1: array[1..8] of string;
var
       Portion2: array[1..8] of string;
var
       Portion3: array[1..8] of string;
var
       Portion4: array[1..8] of string;

begin

       for i := 1 to 8 do
       begin
              Portion1[i] := '_';
              Portion2[i] := '_';
              Portion3[i] := '_';
              Portion4[i] := '_';
       end;

       nSangF := 0;
       nSangR := 0;
       nSangL := 0;
       nHaF := 0;
       nHaR := 0;
       nHaL := 0;
       nCSangF := 0;
       nCSangR := 0;
       nCSangL := 0;
       nCHaF := 0;
       nCHaR := 0;
       nCHaL := 0;
       nRoot := 0;
       sP1 := '';
       sP2 := '';
       sP3 := '';
       sP4 := '';
       nXu := 0;
       nXd := 0;

       //

       //sp1
       for i := 1 to 8 do
       begin

              tmp2 := Copy(sP.sP1, i, 1);
              if tmp2 <> '_' then
              begin
                     if ((tmp2 >= 'A') and (tmp2 <= 'E')) then
                     begin
                            tmp2 := ChrToNum(tmp2);
                            //유치
                            if ((tmp2 = '1') or (tmp2 = '2') or (tmp2 = '3'))
                                   then
                            begin
                                   nCSangF := nCSangF + 1;
                                   nRoot := nRoot + 1;
                            end
                            else
                            begin
                                   nCSangR := nCSangR + 1;
                                   nRoot := nRoot + 3;
                            end;
                     end
                     else
                     begin
                            //영구치
                            case StrToInt(tmp2) of
                                   1..3:
                                          begin
                                                 nSangF := nSangF + 1;
                                                 nRoot := nRoot + 1;
                                          end;
                                   4:
                                          begin
                                                 nSangR := nSangR + 1;
                                                 nRoot := nRoot + 2;
                                          end;
                                   5:
                                          begin
                                                 nSangR := nSangR + 1;
                                                 nRoot := nRoot + 1;
                                          end;
                                   6..8:
                                          begin
                                                 nSangR := nSangR + 1;
                                                 nRoot := nRoot + 3;
                                          end;
                            end;
                     end;
              end;
       end;
       //sp2
       for i := 1 to 8 do
       begin
              tmp2 := Copy(sP.sP2, i, 1);
              if tmp2 <> '_' then
              begin
                     if ((tmp2 >= 'A') and (tmp2 <= 'E')) then
                     begin
                            tmp2 := ChrToNum(tmp2);
                            //유치
                            if ((tmp2 = '1') or (tmp2 = '1') or (tmp2 = '3'))
                                   then
                            begin
                                   nCSangF := nCSangF + 1;
                                   nRoot := nRoot + 1;
                            end
                            else
                            begin
                                   nCSangL := nCSangL + 1;
                                   nRoot := nRoot + 3;
                            end;
                     end
                     else
                     begin
                            //영구치
                            case StrToInt(tmp2) of
                                   1..3:
                                          begin
                                                 nSangF := nSangF + 1;
                                                 nRoot := nRoot + 1;
                                          end;
                                   4:
                                          begin
                                                 nSangL := nSangL + 1;
                                                 nRoot := nRoot + 2;
                                          end;
                                   5:
                                          begin
                                                 nSangL := nSangL + 1;
                                                 nRoot := nRoot + 1;
                                          end;
                                   6..8:
                                          begin
                                                 nSangL := nSangL + 1;
                                                 nRoot := nRoot + 3;
                                          end;
                            end;
                     end;
              end;
       end;
       //sp3
       for i := 1 to 8 do
       begin
              tmp2 := Copy(sP.sP3, i, 1);
              if tmp2 <> '_' then
              begin
                     if ((tmp2 >= 'A') and (tmp2 <= 'E')) then
                     begin
                            tmp2 := ChrToNum(tmp2);
                            //유치
                            if ((tmp2 = '1') or (tmp2 = '2') or (tmp2 = '3'))
                                   then
                            begin
                                   nCHaF := nCHaF + 1;
                                   nRoot := nRoot + 1;
                            end
                            else
                            begin
                                   nCHaL := nCHaL + 1;
                                   nRoot := nRoot + 3;
                            end;
                     end
                     else
                     begin
                            //영구치

                            case StrToInt(tmp2) of
                                   1..3:
                                          begin
                                                 nHaF := nHaF + 1;
                                                 nRoot := nRoot + 1;
                                          end;
                                   4..5:
                                          begin
                                                 nHaL := nHaL + 1;
                                                 nRoot := nRoot + 1;
                                          end;
                                   6..8:
                                          begin
                                                 nHaL := nHaL + 1;
                                                 nRoot := nRoot + 3;
                                          end;
                            end;
                     end;
              end;
       end;
       //sp4
       for i := 1 to 8 do
       begin
              tmp2 := Copy(sP.sP4, i, 1);
              if tmp2 <> '_' then
              begin
                     if ((tmp2 >= 'A') and (tmp2 <= 'E')) then
                     begin
                            tmp2 := ChrToNum(tmp2);
                            //유치
                            if ((tmp2 = '1') or (tmp2 = '2') or (tmp2 = '3'))
                                   then
                            begin
                                   nCHaF := nCHaF + 1;
                                   nRoot := nRoot + 1;
                            end
                            else
                            begin
                                   nCHaR := nCHaR + 1;
                                   nRoot := nRoot + 3;
                            end;
                     end
                     else
                     begin
                            //영구치

                            case StrToInt(tmp2) of
                                   1..3:
                                          begin
                                                 nHaF := nHaF + 1;
                                                 nRoot := nRoot + 1;
                                          end;
                                   4..5:
                                          begin
                                                 nHaR := nHaR + 1;
                                                 nRoot := nRoot + 1;
                                          end;
                                   6..8:
                                          begin
                                                 nHaR := nHaR + 1;
                                                 nRoot := nRoot + 3;
                                          end;
                            end;
                     end;
              end;
       end;

       //X-ray
       nXu := CntX(sp.sP1 + sp.sP2, 'U');
       nXd := CntX(sp.sP4 + sp.sp3, 'D');
end;

function CntX(flag: string; UorD: string): Integer;
var
       XUa: array[1..8] of Integer;
       XDa: array[1..8] of Integer;
       XUc: array[1..5] of Integer;
       XDc: array[1..5] of Integer;
       gr: array[1..16] of string;
       cCode: Integer;
       i, j, grno, grsum, grchk, nXray: Integer;
       grStart: Boolean;
       gtmp, AorC: string;
begin
       XUa[1] := 14;
       XUa[2] := 14;
       XUa[3] := 14;
       XUa[4] := 14;
       XUa[5] := 14;
       XUa[6] := 14;
       XUa[7] := 14;
       XUa[8] := 14;

       XDa[1] := 14;
       XDa[2] := 14;
       XDa[3] := 14;
       XDa[4] := 14;
       XDa[5] := 14;
       XDa[6] := 14;
       XDa[7] := 14;
       XDa[8] := 14;

       XUc[1] := 14;
       XUc[2] := 14;
       XUc[3] := 14;
       XUc[4] := 14;
       XUc[5] := 14;

       XDc[1] := 14;
       XDc[2] := 14;
       XDc[3] := 14;
       XDc[4] := 14;
       XDc[5] := 14;

       //#############################################################
       grchk := 35;
       //#############################################################
       grno := 1;
       grstart := False;
       gr[grno] := '';

       for i := 1 to length(Flag) do
       begin
              if (Copy(flag, i, 1) = '_') then
              begin
                     if grstart = True then
                     begin
                            grno := grno + 1;
                            gr[grno] := '';
                     end;
              end
              else
              begin
                     gr[grno] := gr[grno] + Copy(flag, i, 1);
                     grstart := True;
              end;

       end;
       gtmp := gr[1] + gr[2] + gr[3] + gr[4] + gr[5] + gr[6] + gr[7] + gr[8] +
              gr[9] + gr[10] + gr[11] + gr[12] + gr[13] + gr[14] + gr[15] +
              gr[16];

       if ((Copy(Trim(gtmp), 1, 1) = 'A') or
              (Copy(Trim(gtmp), 1, 1) = 'B') or
              (Copy(Trim(gtmp), 1, 1) = 'C') or
              (Copy(Trim(gtmp), 1, 1) = 'D') or
              (Copy(Trim(gtmp), 1, 1) = 'E')) then
              AorC := 'C'
       else
              AorC := 'A';

       nXray := 0;
       for i := 1 to 16 do
       begin
              if gr[i] <> '' then
              begin
                     grsum := 0;
                     for j := 1 to length(gr[i]) do
                     begin
                            if AorC = 'A' then
                            begin
                                   if UorD = 'U' then
                                   begin
                                          grsum := grsum +
                                                 XuA[StrtoInt(Copy(gr[i], j,
                                                 1))];
                                   end
                                   else
                                   begin
                                          grsum := grsum +
                                                 XdA[StrtoInt(Copy(gr[i], j,
                                                 1))];
                                   end;
                            end
                            else
                            begin
                                   cCode := chrToInt(Copy(gr[i], j, 1));
                                   if UorD = 'U' then
                                   begin
                                          grsum := grsum + XuC[cCode];
                                   end
                                   else
                                   begin
                                          grsum := grsum + XdC[cCode];
                                   end;
                            end;

                     end;
                     nXray := nXray + Ceil(grSum / grChk);
              end;
              Result := nXray;
       end;
end;

function makesP(flag: string): TsP;
var
       p: string;
       i: Integer;
begin
       if ((flag = 'All Teeth') or (flag = 'U/L') or (flag = '상/하악')) then
       begin
              Result.sp1 := '_7654321';
              Result.sp2 := '1234567_';
              Result.sp3 := '1234567_';
              Result.sp4 := '_7654321';
       end
       else if flag = 'All Milk Teeth' then
       begin
              Result.sp1 := '___EDCBA';
              Result.sp2 := 'ABCDE___';
              Result.sp3 := 'ABCDE___';
              Result.sp4 := '___EDCBA';
       end
       else if ((flag = '11-17,21-27') or (flag = 'U') or (flag = '상악')) then
       begin
              Result.sp1 := '_7654321';
              Result.sp2 := '1234567_';
              Result.sp3 := '________';
              Result.sp4 := '________';
       end

       else if flag = 'UA' then
       begin
              Result.sp1 := '_____321';
              Result.sp2 := '123_____';
              Result.sp3 := '________';
              Result.sp4 := '________';
       end
       else if flag = 'LA' then
       begin
              Result.sp4 := '_____321';
              Result.sp3 := '123_____';
              Result.sp1 := '________';
              Result.sp2 := '________';
       end
       else if flag = 'UL' then
       begin
              Result.sp1 := '________';
              Result.sp2 := '1234567_';
              Result.sp3 := '________';
              Result.sp4 := '________';
       end
       else if flag = 'UR' then
       begin
              Result.sp1 := '1234567_';
              Result.sp2 := '________';
              Result.sp3 := '________';
              Result.sp4 := '________';
       end
       else if flag = 'LR' then
       begin
              Result.sp4 := '1234567_';
              Result.sp2 := '________';
              Result.sp3 := '________';
              Result.sp1 := '________';
       end
       else if flag = 'LL' then
       begin
              Result.sp3 := '1234567_';
              Result.sp2 := '________';
              Result.sp1 := '________';
              Result.sp4 := '________';
       end

       else if ((flag = '31-37,41-47') or (flag = 'L')) then
       begin
              Result.sp1 := '________';
              Result.sp2 := '________';
              Result.sp3 := '1234567_';
              Result.sp4 := '_7654321';
       end
       else if flag = '51-55,61-65' then
       begin
              Result.sp1 := '___EDCBA';
              Result.sp2 := 'ABCDE___';
              Result.sp3 := '________';
              Result.sp4 := '________';
       end
       else if flag = '71-75,81-85' then
       begin
              Result.sp1 := '________';
              Result.sp2 := '________';
              Result.sp3 := 'ABCDE___';
              Result.sp4 := '___EDCBA';
       end
       else if flag = '' then
       begin
              Result.sp1 := '________';
              Result.sp2 := '________';
              Result.sp3 := '________';
              Result.sp4 := '________';
       end
       else
       begin
              Result.sp1 := '________';
              Result.sp2 := '________';
              Result.sp3 := '________';
              Result.sp4 := '________';
              p := '';
              for i := 1 to length(trim(flag)) do
              begin
                     if Copy(flag, i, 1) = '#' then
                     begin
                            //                    if (p <> '') and (checkInt(P)) then
                            if checkInt(P) then
                            begin
                                   case StrToInt(copy(p, 1, 1)) of
                                          1:
                                                 Result.sP1 :=
                                                        Trim(Copy(Result.sP1, 1,
                                                        8 -
                                                        StrToInt(copy(p, 2, 1)))
                                                        + copy(p, 2, 1)
                                                        + Copy(Result.sP1, 10 -
                                                        StrToInt(copy(p, 2, 1)),
                                                        8));
                                          2:
                                                 Result.sP2 :=
                                                        Trim(Copy(Result.sP2, 1,
                                                        StrToInt(copy(p, 2, 1))
                                                        - 1)
                                                        + copy(p, 2, 1)
                                                        + Copy(Result.sP2,
                                                        StrToInt(copy(p, 2, 1))
                                                        + 1, 8));
                                          3:
                                                 Result.sP3 :=
                                                        Trim(Copy(Result.sP3, 1,
                                                        StrToInt(copy(p, 2, 1))
                                                        - 1)
                                                        + copy(p, 2, 1)
                                                        + Copy(Result.sP3,
                                                        StrToInt(copy(p, 2, 1))
                                                        + 1, 8));
                                          4:
                                                 Result.sP4 :=
                                                        Trim(Copy(Result.sP4, 1,
                                                        8 -
                                                        StrToInt(copy(p, 2, 1)))
                                                        + copy(p, 2, 1)
                                                        + Copy(Result.sP4, 10 -
                                                        StrToInt(copy(p, 2, 1)),
                                                        8));
                                          5:
                                                 Result.sP1 :=
                                                        Trim(Copy(Result.sP1, 1,
                                                        8 -
                                                        StrToInt(copy(p, 2, 1)))
                                                        + NumToChr(copy(p, 2, 1))
                                                        + Copy(Result.sP1, 10 -
                                                        StrToInt(copy(p, 2, 1)),
                                                        8));
                                          6:
                                                 Result.sP2 :=
                                                        Trim(Copy(Result.sP2, 1,
                                                        StrToInt(copy(p, 2, 1))
                                                        - 1)
                                                        + NumToChr(copy(p, 2, 1))
                                                        + Copy(Result.sP2,
                                                        StrToInt(copy(p, 2, 1))
                                                        + 1, 8));
                                          7:
                                                 Result.sP3 :=
                                                        Trim(Copy(Result.sP3, 1,
                                                        StrToInt(copy(p, 2, 1))
                                                        - 1)
                                                        + NumToChr(copy(p, 2, 1))
                                                        + Copy(Result.sP3,
                                                        StrToInt(copy(p, 2, 1))
                                                        + 1, 8));
                                          8:

                                                 Result.sP4 :=
                                                        Trim(Copy(Result.sP4, 1,
                                                        8 -
                                                        StrToInt(copy(p, 2, 1)))
                                                        + NumToChr(copy(p, 2, 1))
                                                        + Copy(Result.sP4, 10 -
                                                        StrToInt(copy(p, 2, 1)),
                                                        8));
                                   end;
                                   p := '';
                            end;
                     end
                     else
                     begin
                            if Copy(flag, i, 1) <> ',' then
                            begin
                                   p := p + Copy(flag, i, 1);
                            end;
                     end;
              end;
              if checkInt(P) then
              begin
                     case StrToInt(copy(p, 1, 1)) of
                            1:
                                   Result.sP1 := Trim(Copy(Result.sP1, 1, 8 -
                                          StrToInt(copy(p, 2, 1)))
                                          + copy(p, 2, 1)
                                          + Copy(Result.sP1, 10 -
                                          StrToInt(copy(p, 2, 1)), 8));
                            2:
                                   Result.sP2 := Trim(Copy(Result.sP2, 1,
                                          StrToInt(copy(p, 2, 1)) - 1)
                                          + copy(p, 2, 1)
                                          + Copy(Result.sP2, StrToInt(copy(p, 2,
                                          1)) + 1, 8));
                            3:
                                   Result.sP3 := Trim(Copy(Result.sP3, 1,
                                          StrToInt(copy(p, 2, 1)) - 1)
                                          + copy(p, 2, 1)
                                          + Copy(Result.sP3, StrToInt(copy(p, 2,
                                          1)) + 1, 8));
                            4:
                                   Result.sP4 := Trim(Copy(Result.sP4, 1, 8 -
                                          StrToInt(copy(p, 2, 1)))
                                          + copy(p, 2, 1)
                                          + Copy(Result.sP4, 10 -
                                          StrToInt(copy(p, 2, 1)), 8));
                            5:
                                   Result.sP1 := Trim(Copy(Result.sP1, 1, 8 -
                                          StrToInt(copy(p, 2, 1)))
                                          + NumToChr(copy(p, 2, 1))
                                          + Copy(Result.sP1, 10 -
                                          StrToInt(copy(p, 2, 1)), 8));
                            6:
                                   Result.sP2 := Trim(Copy(Result.sP2, 1,
                                          StrToInt(copy(p, 2, 1)) - 1)
                                          + NumToChr(copy(p, 2, 1))
                                          + Copy(Result.sP2, StrToInt(copy(p, 2,
                                          1)) + 1, 8));
                            7:
                                   Result.sP3 := Trim(Copy(Result.sP3, 1,
                                          StrToInt(copy(p, 2, 1)) - 1)
                                          + NumToChr(copy(p, 2, 1))
                                          + Copy(Result.sP3, StrToInt(copy(p, 2,
                                          1)) + 1, 8));
                            8:
                                   Result.sP4 := Trim(Copy(Result.sP4, 1, 8 -
                                          StrToInt(copy(p, 2, 1)))
                                          + NumToChr(copy(p, 2, 1))
                                          + Copy(Result.sP4, 10 -
                                          StrToInt(copy(p, 2, 1)), 8));
                     end;
              end;
       end;
end;

procedure ChkTImage(Sender: TImage; Flag: Boolean);
var
       runDir: string;
begin
       RunDir := ExtractFileDir(application.exename);

       if Copy((Sender as TImage).Name, 2, 1) = 'i' then
       begin
              if ((Copy((Sender as TImage).Name, 3, 1) = '1') or (Copy((Sender
                     as
                     TImage).Name, 3, 1) = '2')) then
              begin
                     if Flag then
                     begin
                            (Sender as TImage).Picture.LoadFromFile(RunDir +
                                   '/image/tb' + (Copy((Sender as TImage).Name,
                                   3, 2) +
                                   '.bmp'));
                            (Sender as TImage).Hint := 'O'
                     end
                     else
                     begin
                            (Sender as TImage).Picture.LoadFromFile(RunDir +
                                   '/image/t' + (Copy((Sender as TImage).Name,
                                   3, 2) +
                                   '.bmp'));
                            (Sender as TImage).Hint := 'X'
                     end
              end
              else if ((Copy((Sender as TImage).Name, 3, 1) = '3') or
                     (Copy((Sender as TImage).Name, 3, 1) = '4')) then
              begin
                     if Flag then
                     begin
                            (Sender as TImage).Picture.LoadFromFile(RunDir +
                                   '/image/tb' + (Copy((Sender as TImage).Name,
                                   3, 2) +
                                   '.bmp'));
                            (Sender as TImage).Hint := 'O'
                     end
                     else
                     begin
                            (Sender as TImage).Picture.LoadFromFile(RunDir +
                                   '/image/t' + (Copy((Sender as TImage).Name,
                                   3, 2) +
                                   '.bmp'));
                            (Sender as TImage).Hint := 'X'
                     end;
              end;
       end
       else if Copy((Sender as TImage).Name, 2, 1) = 'c' then
       begin
              if ((Copy((Sender as TImage).Name, 3, 1) = '1') or (Copy((Sender
                     as
                     TImage).Name, 3, 1) = '2')) then
              begin
                     if Flag then
                     begin
                            (Sender as TImage).Picture.LoadFromFile(RunDir +
                                   '/image/tb' + InttoStr(StrToInt(Copy((Sender
                                   as
                                   TImage).Name, 3, 1)) + 4) + (Copy((Sender as
                                   TImage).Name, 4, 1) + '.bmp'));
                            (Sender as TImage).Hint := 'O'
                     end
                     else
                     begin
                            (Sender as TImage).Picture.LoadFromFile(RunDir +
                                   '/image/t' + InttoStr(StrToInt(Copy((Sender
                                   as
                                   TImage).Name, 3, 1)) + 4) + (Copy((Sender as
                                   TImage).Name, 4, 1) + '.bmp'));
                            (Sender as TImage).Hint := 'X'
                     end
              end
              else if ((Copy((Sender as TImage).Name, 3, 1) = '3') or
                     (Copy((Sender as TImage).Name, 3, 1) = '4')) then
              begin
                     if Flag then
                     begin
                            (Sender as TImage).Picture.LoadFromFile(RunDir +
                                   '/image/tb' + InttoStr(StrToInt(Copy((Sender
                                   as
                                   TImage).Name, 3, 1)) + 4) + (Copy((Sender as
                                   TImage).Name, 4, 1) + '.bmp'));
                            (Sender as TImage).Hint := 'O'
                     end
                     else
                     begin
                            (Sender as TImage).Picture.LoadFromFile(RunDir +
                                   '/image/t' + InttoStr(StrToInt(Copy((Sender
                                   as
                                   TImage).Name, 3, 1)) + 4) + (Copy((Sender as
                                   TImage).Name, 4, 1) + '.bmp'));
                            (Sender as TImage).Hint := 'X'
                     end;
              end;
       end;

end;

procedure MakeImage(varImage:Timage; Flag: string; sName: string);
var
       SS: TSp;
begin
       if Flag <> '' then
       begin
              if not DirectoryExists('c:\teethTemp') then
                     if not CreateDir('c:\teethTemp') then
                            raise Exception.Create('Cannot create ' +
                                   'c:\teethTemp');

              SS := makesP(Flag);
              varImage.Canvas.Font.Size := 4;

              varImage.Canvas.TextOut(0, -1, SS.sP1);
              varImage.Canvas.TextOut(51, -1, SS.sP2);
              varImage.Canvas.TextOut(0, 12, SS.sP4);
              varImage.Canvas.TextOut(51, 12, SS.sP3);
              varImage.Canvas.MoveTo(0, 11);
              varImage.Canvas.LineTo(100, 11);
              varImage.Canvas.MoveTo(50, -1);
              varImage.Canvas.LineTo(50, 25);
              varImage.Picture.SavetoFile('c:\teethTemp\' + sName + '.bmp');
              varImage.picture := nil;

       end;
end;

function ChrToNum(f1: string): string;
begin
       if f1 = 'A' then
              Result := '1'
       else if f1 = 'B' then
              Result := '2'
       else if f1 = 'C' then
              Result := '3'
       else if f1 = 'D' then
              Result := '4'
       else if f1 = 'E' then
              Result := '5';
end;

end.

