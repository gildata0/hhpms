program HHPMSStatics;

uses
  Forms,
  SysUtils,
  dialogs,
  Windows,
  iniFiles,
  shellAPI,
  Controls,
  messages,
  uStaticsMain in 'statics\uStaticsMain.pas' {StatisticsMain_f},
  statTerm in 'statics\statTerm.pas' {statTerm_f},
  uCorpHospStat in 'statics\uCorpHospStat.pas' {corpHospStat_f},
  uDailyAmount in 'statics\uDailyAmount.pas' {DailyAmount_f},
  uConfig in 'class\uConfig.pas',
  uFunctions in 'class\uFunctions.pas',
  uGogekData in 'class\uGogekData.pas',
  uJinryoCalc in 'class\uJinryoCalc.pas',
  uLoadValue in 'class\uLoadValue.pas',
  uSysinfo in 'class\uSysinfo.pas',
  uTeeth in 'class\uTeeth.pas',
  uDm in 'statics\uDm.pas' {DM_f: TDataModule},
  uInputTeakJung in 'jinryo\uInputTeakJung.pas' {InputTeakJung_f},
  login in 'statics\login\login.pas' {Login_f},
  Vcl.Themes,
  Vcl.Styles,
  uPatientABC in 'statics\uPatientABC.pas' {PatientABC_f},
  stat_Sangbyung in 'subForms\stat_Sangbyung.pas' {stat_sangbyung_f},
  uReferImageCount in 'statics\uReferImageCount.pas' {ReferImageCount_f},
  uRisSave in 'class\uRisSave.pas',
  uHLClass in 'HL7\uHLClass.pas',
  ZAUSegUnit in 'HL7\ZAUSegUnit.pas',
  ZINSegUnit in 'HL7\ZINSegUnit.pas',
  ZPI_Z01MsgUnit in 'HL7\ZPI_Z01MsgUnit.pas',
  uTCPcs in 'Dm\uTCPcs.pas' {dmTcpCs_f: TDataModule};

{$R *.res}

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


     Mutex := CreateMutex(nil, True, 'HHPMSSTASTICSSuccess');
     if (Mutex <> 0) and (GetLastError = 0) then
     begin
          Application.Initialize;
          Application.ProcessMessages;


          if not assigned(dm_f) then
                TStyleManager.TrySetStyle('Windows10');

          Application.CreateForm(TDM_f, DM_f);
  Application.CreateForm(TdmTcpCs_f, dmTcpCs_f);
  if not assigned(Login_f) then
                 Application.CreateForm(TLogin_f, Login_f);

          Application.Initialize;
          Application.Title := '통계';

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

               Application.CreateForm(TStatisticsMain_f, StatisticsMain_f);

               lblStatus.Caption := '  ' +
                    'HHPMSStatics를 시작 하는 중입니다. 잠시 기다리세요.';
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
         Application.MessageBox('HHPMSStatics가 이미 실행중입니다', '확인', 0);

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
