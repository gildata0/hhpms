unit uLoadValue;

interface

uses
     Forms,
     SysUtils,
     Dialogs,
     Classes,
     IniFiles,
     Controls, windows;
type
     TConfigValue = class

     private
          ini: TiniFile;
          //DB 정보=======================================
          FDbCon: Boolean;
          configFile: string;
          FvarServerIP: string;
          FvarServerPort: string;
          FvarDbIP: string; //DBIP
          FvarDbname: string;
          FvarDbuser: string;
          FvarDbpass: string;
          FvarDbprotocol: string;

          //로그인 정보=======================================

          FvarLoginId: string;
          FvarLoginPass: string;
          FvarAutoLogin: string;
          Fvarweb: string;
          FvarScheduleDate: string;
          FvarScheduleOpen: string;
          FSMSLogin: string;
          //병원 정보=======================================

          FvarsaupName: string;

          FvarDaepyo: string;
          FvarJumin: string;
          FvarsaupNo: string;
          FvarMyunhu: string;
          FvarYoyang: string;
          FvarZip: string;
          FvarAdd1: string;
          FvarAdd2: string;
          FvarTel1: string;
          FvarTel2: string;
          FvarFax1: string;
          FvarFax2: string;
          FvarEmail: string;
          Fvarilsu: string;
          FvarGubun: string;
          FvarSimjibu: string;
          FvarDocNo: string;
          FvarChubang: string;
          FvarPrintsu: string;
          FvarBunup: string;
          FvarDaeheng: string;
          FvarRmode: string;
          FvarChungname: string;
          FvarChungJumin: string;
          FvarJagyukID: string;
          FvarJagyukpass: string;
          FvarsmsId: string;
          FvarSmspass: string;
          FvarChartRule: string;
          FvarChartNew: string;
          FvarSangMode: string;
          FvarJinryoSave: string;

          //약속환경설정==================================

          Fp_startTime: string;
          Fp_finishtime: string;
          Fp_SmsContent: string;
          Fp_BeforSms: integer;
          Fp_SmsBeforTime: string;

          Fp_timeinterval: integer;
          Fp_rowinterval: integer;
          Fp_columncount: integer;

          //기타 정보
          Fvarpicpath: string;

          FvarImageUse: string;
          FvarImageKind: string;
          FvarImageDBSaveMode: string;
          FvarImageDBPORT:string;
          FvarImageDBIP:string;
          FvarImageDBPATH:string;
          FvarpanoScale:string;



          FvarImageUser: string;
          FvarImageIp: string;
          FvarImagePass: string;
          FvarImageDb: string;
          FvarImageProtocol: string;

          FvarLoadChamgo: string;

          FvarCidIp: string;
          FvarCidPort: string;
          FvarCidUse: string;

          FDetailLoadInfo: string; //환자 정보로드할 때 세부 정보 볼건지(1) 말건지  (0외 기타)
          FInputBohum: string; //환자 정보로드할 때 세부 정보 볼건지(1) 말건지  (0외 기타)
          FBohumApplyDate: string; //환자 정보로드할 때 세부 정보 볼건지(1) 말건지  (0외 기타)

          FLoadSogepan:string;
          FLoadGajokpan:string;


          FvarLoadDur: string;

     public
          constructor Create();
          destructor Destroy();

          //DB 정보=======================================
          property DbCon: Boolean read FDbCon write FDbCon;
          property RunDir: string read configFile;
          property varServerPort: string read FvarServerPort;
          property varServerIP: string read FvarServerIP;
          property varDbIp: string read FvarDbIP;
          property varDbname: string read FvarDbname;
          property varDbuser: string read FvarDbuser;
          property varDbpass: string read FvarDbpass;
          property varDbprotocol: string read FvarDbprotocol;

          //Login 정보=======================================
          property varLoginId: string read FvarLoginId;
          property varLoginPass: string read FvarLoginPass;
          property varAutoLogin: string read FvarAutoLogin;
          property varWEb: string read Fvarweb;
          property VarSMSLogin: string read FSMSLogin;

          property VarScheduleDate: string read FvarScheduleDate;
          property VarScheduleOpen: string read FvarScheduleOpen;

          //병원 정보=======================================

          property varsaupname: string read Fvarsaupname;
          //                                      0101 회사명
          property varDaepyo: string read FvarDaepyo;
          //                                      0102 대표자명
          property varJumin: string read FvarJumin;
          //                                      0103 주민번호
          property varsaupNo: string read FvarsaupNo;
          //                                      0104 사업자번호
          property varMyunhu: string read FvarMyunhu;
          //                                      0105 면허번호
          property varYoyang: string read FvarYoyang;
          //                                      0106 요양기관기호
          property varZip: string read FvarZip;
          //                                      0107 우편번호
          property varAdd1: string read FvarAdd1;
          //                                      0108 기본주소
          property varAdd2: string read FvarAdd2;
          //                                      0109 확장주소
          property varTel1: string read FvarTel1;
          //                                      0110 전화번호1
          property varTel2: string read FvarTel2;
          //                                      0111 전화번호2
          property varFax1: string read FvarFax1;
          //                                      0112 팩스번호1
          property varFax2: string read FvarFax2;
          //                                      0113 팩스번호2
          property varEmail: string read FvarEmail;
          //                                      0114 이메일
          property varilsu: string read Fvarilsu;
          //                                      0115 초재진산정일수
          property varGubun: string read FvarGubun;
          //                                      0116 병의원 구분
          property varSimjibu: string read FvarSimjibu;
          //                                      0117 심평원지부코드
          property varDocNo: string read FvarDocNo;
          //                                      0118 등록된 의사 수
          property varChubang: string read FvarChubang;
          //                                      0119 처방전 사용기간
          property varPrintsu: string read FvarPrintsu;
          //                                      0120 처방전인쇄-약국용, 환자보관용
          property varBunup: string read FvarBunup;
          //                                      0121 의약분업적용
          property varDaeheng: string read FvarDaeheng;
          //                                      0122 청구대행단체
          property varRmode: string read FvarRmode;
          //                                      0123 영수증발급모드
          property varChungname: string read FvarChungname;
          //                                      0124 보험청구 작성자명
          property varChungJumin: string read FvarChungJumin;
          //                                  0125 보험청구 작성자주민번호
          property varJagyukID: string read FvarJagyukID;
          //                                  0126 자격확인 아이디
          property varJagyukpass: string read FvarJagyukpass;
          //                                  0127 자격확인 패스워드
          property varsmsId: string read FvarsmsId;
          //                                  0128 SMS로그인 아이디
          property varSmspass: string read FvarSmspass;
          //                                  0129 SMS패스워드
          property varChartRule: string read FvarChartRule;
          //                                  0130 차트번호 규칙
          property varChartNew: string read FvarChartNew;
          //                                  0131 차트번호 새로시작번호

          property varSangMode: string read FvarSangMode;
          //                                      0132 상병모드(?) 구분
          property varJinryoSave: string read FvarJinryoSave;
          //                                      0133 Sunap테이블에 저장할지 말지
     //약속환경 정보=======================================

          property p_startTime: string read Fp_startTime;
          property p_finishtime: string read Fp_finishtime;
          property p_timeinterval: integer read Fp_timeinterval;
          property p_rowinterval: integer read Fp_rowinterval;
          property p_columncount: integer read Fp_columncount;

          property p_SmsContent: string read Fp_SmsContent;
          property p_BeforSms: integer read Fp_BeforSms;
          property p_SmsBeforTime: string read Fp_SmsBeforTime;

          //기타 정보============================================================
          property varpicpath: string read Fvarpicpath;
          property varImageKind : string read FvarImageKind;
          property varImageDbSaveMode : string read FvarImageDbSaveMode;
          property varImageDbPath : string read FvarImageDbPath;
          property varImageDbPort : string read FvarImageDbPort;
          property varImageDbIp : string read FvarImageDbIp;
           property varpanoScale: string read  FvarpanoScale ;


           property  varLoadChamgo : string read  FvarLoadChamgo;

          property varImageIp : string read FvarImageIp;
          property varImageUse: string read FvarImageUse;
          property varImageUser: string read FvarImageUser;
          property varImagePass: string read FvarImagePass;
          property varImageDB: string read FvarImageDB;
          property varImageProtocol: string read FvarImageProtocol;

          property varCidIp: string read FvarCidIp;
          property varCidPort: string read FvarCidPort;
          property varCidUse: string read FvarCidUse;


          property DetailLoadInfo: string read FDetailLoadInfo;
          property InputBohum: string read FInputBohum;
          property  BohumApplyDate: string read FBohumApplyDate;

          property LoadSogepan: string read FLoadSogepan;
          property LoadGajokPan: string read FLoadGajokPan;

          property varLoadDur: string read  FvarLoadDur;


          procedure LoadGlobalData_ini;
          procedure LoadGlobalData_db;
          //    procedure RestoreForm(const Frm: TForm; const sName: string = '');
          //    procedure SaveForm(const Frm: Tform; const sName: string = '');

     end;

implementation
uses dm, uFunctions;
const
     POSFMT = '%d,%d,%d,%d';

constructor TConfigValue.Create();
begin
     inherited Create();
end;

destructor TConfigValue.Destroy();
begin
     inherited Destroy();

end;

procedure TConfigValue.LoadGlobalData_ini;
var
     forminit: Tinifile;
begin
     //Load GlobalSet
     //Db Password는 Open한다...

    // configFile := GetConfigDir + 'db.ini';
     configFile := extractFilePath(paramStr(0)) + 'db.ini';

     FormInit := TIniFile.Create(runDir);

     FvarServerPort := FormInit.ReadString('DATABASE', 'SERVERPORT', '9887');
     FvarServerIP := FormInit.ReadString('DATABASE', 'SERVERIP', '127.0.0.1');
     FvarDbIP := FormInit.ReadString('DATABASE', 'dbip', '127.0.0.1\MADANG');
     FvarDbname := FormInit.ReadString('DATABASE', 'dbname', 'MADANG');
     FvarDbuser := FormInit.ReadString('DATABASE', 'dbuser', 'SA');
     FvarDbpass := FormInit.ReadString('DATABASE', 'dbpass', '2002');
     FvarDbprotocol := FormInit.ReadString('DATABASE', 'dbprotocol', 'MSSQL');

     FvarLoginId := FormInit.ReadString('LOGIN', 'ID', '1');
     FvarLoginPass := FormInit.ReadString('LOGIN', 'PASS', '1');
     FvarAutoLogin := FormInit.ReadString('LOGIN', 'IDSAVE', '1');
     FvarWeb := FormInit.ReadString('LOGIN', 'WEB', '1');
     FSMSLogin := FormInit.ReadString('LOGIN', 'SMS', '0');

     FvarScheDuleDate := FormInit.ReadString('SCHEDULE', 'DATE', '2010-01-01');
     FvarScheDuleOpen := FormInit.ReadString('SCHEDULE', 'VIEW', '0');

     FvarSaupNo := FormInit.ReadString('BASEINFO', 'COMPCODE', '');
     fVarSaupName := FormInit.ReadString('BASEINFO', 'COMPNAME', '');
     fDetailLoadInfo := FormInit.ReadString('BASEINFO', 'DETAILLOAD', '');
     fInputBohum := FormInit.ReadString('BASEINFO', 'INPUTBOHUM', '1');

     fLoadGajokPan := FormInit.ReadString('ETC', 'GAJOKPAN', '1');



     fLoadSogePan := FormInit.ReadString('ETC', 'SOGEPAN', '1');

     //FvarLoadDur := FormInit.ReadString('ETC', 'LOADDUR', '');

     FvarPicPath :=  FormInit.ReadString('BASEINFO', 'DICAPATH', '');

     FvarCidUse :=  FormInit.ReadString('BASEINFO', 'CIDUSE', '');

     FvarJagyukID :=  FormInit.ReadString('ETC', 'CERTPOSITION', '0');

     FvarLoadChamgo := FormInit.ReadString('ETC', 'CHAMGOLOAD', '0');

     FormInit.Free;
end;

procedure TConfigValue.LoadGlobalData_db;
{var
     varProperty: array[0..30] of string = ('Fvarsaupname'
          , 'FvarDaepyo'
          , 'FvarJumin'
          , 'FvarsaupNo'
          , 'FvarMyunhu'
          , 'FvarYoyang'
          , 'FvarZip'
          , 'FvarAdd1'
          , 'FvarAdd2'
          , 'FvarTel1'
          , 'FvarTel2'
          , 'FvarFax1'
          , 'FvarFax2'
          , 'FvarEmail'
          , 'Fvarilsu'
          , 'FvarGubun'
          , 'FvarSimjibu'
          , 'FvarDocNo'
          , 'FvarChubang'
          , 'FvarPrintsu'
          , 'FvarBunup'
          , 'FvarDaeheng'
          , 'FvarRmode'
          , 'FvarChungname'
          , 'FvarChungJumin'
          , 'FvarJagyukID'
          , 'FvarJagyukpass'
          , 'FvarsmsId'
          , 'FvarSmspass'
          , 'FvarChartRule'
          , 'FvarChartNew');
          }
begin
     //DB에 접속 후 환경설정 정보를 가져오며,
     //초기에 DB를 연결시켜놓는 역할을 한다.
     //Load GlobalSet

     with dm_f.Sqlwork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0101'; //회사명
          open;
          FvarsaupName := FieldByName('val').AsString;
          //fVarSaupName := FieldByName('val').AsString;

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0102'; //대표자명
          open;
          FvarDaepyo := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0103'; //주민번호
          open;
          FvarJumin := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0104'; //사업자번호
          open;
          FvarsaupNo := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0105'; //면허번호
          open;
          FvarMyunhu := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0106'; //요양기관기호
          open;
          FvarYoyang := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0107'; //우편번호
          open;
          FvarZip := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0108'; //주소1
          open;
          FvarAdd1 := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0109'; //주소2
          open;
          FvarAdd2 := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0110'; //전화1
          open;
          FvarTel1 := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0111'; //전화2
          open;
          FvarTel2 := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0112'; //팩스1
          open;
          FvarFax1 := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0113'; //팩스2
          open;
          FvarFax2 := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0114'; //이메일
          open;
          FvarEmail := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0115'; //초재진 산정  일수
          open;
          Fvarilsu := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0116'; //병의원 구분
          open;
          FvarGubun := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0117'; //심평원 지부
          open;
          FvarSimjibu := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0118'; //의사수
          open;
          FvarDocNo := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0119'; //처방전 사용기간
          open;
          FvarChubang := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0120'; //처방전 인쇄/약국-환자용
          open;
          FvarPrintsu := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0121'; //의약분업예외
          open;
          FvarBunup := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0122'; //청구대행단체
          open;
          FvarDaeheng := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0123'; //영수증 발급 모드
          open;
          FvarRmode := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0124'; //청구자 성명
          open;
          FvarChungname := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0125'; //청구자 주민번호
          open;
          FvarChungJumin := FieldByName('val').AsString;

          {Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0126'; //자격확인 아이디
          open;
          FvarJagyukID := FieldByName('val').AsString;
          }

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0127'; //자격확인 패스워드
          open;
          FvarJagyukpass := FieldByName('val').AsString;

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0128'; //SMS아이디
          open;
          FvarsmsId := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0129'; //SMS패스워드
          open;
          FvarSmspass := FieldByName('val').AsString;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0130'; //차트번호 규칙
          open;
          FvarChartRule := FieldByName('val').AsString;


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0131'; //새로운 차트번호
          open;
          FvarChartNew := FieldByName('val').AsString;

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0132'; //SangMode
          open;
          FvarSangMode := FieldByName('val').AsString;


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0133'; //Sunap table에 저장여부e
          open;
          FvarJinryoSave := FieldByName('val').AsString;


          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0201';
          open;
          if not isempty then
               Fp_startTime := fieldByName('val').asString
          else
               Fp_startTime := '09:00';
          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0202';
          open;
          if not isempty then
               Fp_finishtime := fieldByName('val').asString
          else
               Fp_finishtime := '19:00';

          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0203';
          open;
          if not isempty then
          begin
              if   fieldByName('val').asString ='' then
               Fp_timeinterval := 30
               else
               Fp_timeinterval := fieldByName('val').asInteger;
          end
          else
          begin
               Fp_timeinterval := 30;

          end;
          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0204';
          open;
          if not isempty then
          begin
              if  fieldByName('val').asString <>'' then
               Fp_rowinterval := fieldByName('val').asInteger
              else
              Fp_rowinterval := 50;



          end
          else
               Fp_rowinterval := 50;

          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0205';
          open;
          if not isempty then
          begin

              if  fieldByName('val').asString <> '' then
               Fp_columncount := fieldByName('val').asInteger
               else
               Fp_columncount := 5;




          end
          else
          begin
               Fp_columncount := 5;
         end;
          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0206';
          open;
          if not isempty then
               Fp_smsContent := fieldByName('val').asString
          else
               Fp_smsContent := '';

          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0207';
          open;
          if not isempty then
          begin
              if   fieldByName('val').asString <> '' then
               Fp_beforSms := fieldByName('val').asinteger
               else
               Fp_beForSMS := 1;


          end
          else
               Fp_beForSMS := 1;

          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0208';
          open;
          if not isempty then
               Fp_smsBeforTime := fieldByName('val').asString
          else
               Fp_smsBeforTime := '110000';



          close;
          sql.Clear;
          sql.add('select * from ma_config');
          sql.add('where code=:code');
          paramByName('code').asString := '0132';
          open;
          if not isempty then
               FBohumApplyDate := fieldByName('val').asString
          else
               FBohumApplyDate := '1900-01-01';



          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0401'; //타 영상뷰어 사용
          open;
          if not isempty then
              FvarImageUse := FieldByName('val').AsString
          else
              FvarImageUse:='0';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0402'; //영상뷰어 종류
          open;
          if not isempty then
              FvarImageKind := FieldByName('val').AsString
          else
              FvarImageKind :='0';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0403'; //영상뷰어 IP Path
          open;
          if not isempty then
              FvarImageIP := FieldByName('val').AsString
          else
              FvarImageIP :='127.0.0.1';
          Close;


          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0404'; //영상뷰어 DB Name
          open;
          if not isempty then
              FvarImageDB := FieldByName('val').AsString
          else
              FvarImageDB :='madang';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0405'; //영상뷰어 User
          open;
          if not isempty then
              FvarImageUser := FieldByName('val').AsString
          else
              FvarImageUser :='sa';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0406'; //영상뷰어 Pass
          open;
          if not isempty then
              FvarImagePass := FieldByName('val').AsString
          else
              FvarImagePass :='2002';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0407'; //영상뷰어 Protocol
          open;
          if not isempty then
              FvarImageProtocol := FieldByName('val').AsString
          else
              FvarImageProtocol :='mssql';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0408'; //영상뷰어 저장 방법
          open;
          if not isempty then
              FvarImageDBSaveMode := FieldByName('val').AsString
          else
              FvarImageDBSaveMode :='0';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0409'; //타영상 이미지DB경로 및 이름
          open;
          if not isempty then
              FvarImageDBPath := FieldByName('val').AsString
          else
              FvarImageDBPath :='';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0410'; //마당DB서버 IP
          open;
          if not isempty then
              FvarImageDBIP := FieldByName('val').AsString
          else
              FvarImageDBIP :='127.0.0.1';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0411'; //마당DB서버 PORT
          open;
          if not isempty then
              FvarImageDBPORT := FieldByName('val').AsString
          else
              FvarImageDBPORT :='9001';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0412'; //파노라마초기비율
          open;
          if not isempty then
              FvarpanoScale := FieldByName('val').AsString
          else
              FvarpanoScale :='38';





          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0501'; //CID IP
          open;
          if not isempty then
              FvarCidIp := FieldByName('val').AsString
          else
              FvarCidIp :='127.0.0.1';
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0502'; //CID Port
          open;
          if not isempty then
              FvarCidPort := FieldByName('val').AsString
          else
              FvarCidPort :='9000';


   {        Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0301'; //환자의 참고사항을 사진에 불러오기
          open;
          if not isEmpty then
              FvarLoadChamgo := FieldByName('val').AsString
          else
             FvarLoadChamgo  :='0';
    }

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where Code=:Code');
          ParamByName('CODE').AsString := '0302'; //DUr실행
          open;
          if not isEmpty then
              FvarLoadDur := FieldByName('val').AsString
          else
             FvarLoadChamgo  :='0';
         //  FvarLoadDur := FormInit.ReadString('ETC', 'LOADDUR', '');

     end;
end;
{
procedure TConfigValue.SaveForm(const Frm: Tform; const sName: string = '');
var
     R: TRect;
begin
      configFile := GetConfigDir + 'db.ini';
    ini := TIniFile.Create(ConfigFile);

     try
          with frm do
               if sName = '' then // 저장할 키 값을 지정하지 않은 경우.
               begin
                    case GetWinShowState(frm.Handle) of
                         SW_SHOWMAXIMIZED, SW_SHOWMINIMIZED:
                              begin
                                   R := GetWinPos(frm.Handle);
                                   ini.WriteString(PRGSECTION, Name,
                                        Format(POSFMT, [R.Left, R.Top, R.Right,
                                        R.Bottom]));
                              end;
                    else // 보통크기일 때는 현재 좌표 저장
                         ini.WriteString(PRGSECTION, Name, Format(POSFMT, [Left,
                              Top, Width, Height]));
                    end;
               end
               else
                    ini.WriteString(PRGSECTION, sName, Format(POSFMT, [Left,
                         Top, Width, Height]))

     finally
          ini.Free;
     end;
end;

procedure TConfigValue.RestoreForm(const Frm: TForm; const sName: string = '');
var
     s: TStringList;
     pos: string;
begin
     configFile := GetConfigDir + 'db.ini';
     ini := TIniFile.Create(ConfigFile);
     s := TStringList.Create;

     try
          if sName = '' then
               pos := ini.ReadString(PRGSECTION, frm.name, '')
          else
               pos := ini.ReadString(PRGSECTION, sName, '');

          if pos <> '' then
               with frm do
               begin
                    s.CommaText := pos;
                    SetBounds(StrToInt(s[0]), StrToInt(s[1]), StrToInt(s[2]),
                         StrToInt(s[3]));
               end;

     finally
          ini.Free;
          s.Free;
     end;
end;
}
end.

