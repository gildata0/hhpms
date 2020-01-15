unit uDm;

interface

uses
  System.SysUtils, System.Classes,
  vcl.dialogs,
  vcl.Forms, ODBCUniProvider, AccessUniProvider, UniProvider,
  SQLServerUniProvider, Data.Win.ADODB, Data.DB, MemDS, DBAccess, Uni,
  MySQLUniProvider, PictureContainer, DAAlerter, UniAlerter;

type
  Tdm_f = class(TDataModule)
    UniConnection1: TUniConnection;
    sqlTemp: TUniQuery;
    sqlWork: TUniQuery;
    sqlFindHwanja: TUniQuery;
    sqlCalc: TUniQuery;
    ADOConnection4: TADOConnection;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    sqlRegi: TUniQuery;
    sqlTemp2: TUniQuery;
    sqlTemp12: TUniQuery;
    UniConnection2: TUniConnection;
    sqlAnother3: TUniQuery;
    sqlAnother4: TUniQuery;
    sqlTemp15: TUniQuery;
    SQLServerUniProvider1: TSQLServerUniProvider;
    sqlFind: TUniQuery;
    UniConnection3: TUniConnection;
    UniQuery1: TUniQuery;
    AccessUniProvider1: TAccessUniProvider;
    UniQuery2: TUniQuery;
    sqlmysqldb: TUniQuery;
    mysqldb: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    sqlTemp14: TUniQuery;
    sqlKae: TUniQuery;
    sqlJinryo: TUniQuery;
    sqlTemp13: TUniQuery;
    SqlField: TUniQuery;
    sqlYeyak: TUniQuery;
    connectionEwha: TUniConnection;
    sqlMdbTemp1: TADOQuery;
    sqlMdbTemp: TADOQuery;
    ADOConnection1: TADOConnection;
    sqlSel: TUniQuery;
    UniConnectionBIT: TUniConnection;
    sqlBit: TUniQuery;
    sqlBit2: TUniQuery;
    sqlBit3: TUniQuery;
    PictureContainer1: TPictureContainer;
    ADOConnection2: TADOConnection;
    ADOQuery1: TADOQuery;
    UniConnection4: TUniConnection;
    sqlEpoch: TUniQuery;
    sqlEpoch2: TUniQuery;
    UniAlerter1: TUniAlerter;
    sqlTimer: TUniQuery;
    sqlTimer2: TUniQuery;
    sqlCount: TUniQuery;
    ADOQuery2: TADOQuery;
    ADOConnection3: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //      configvalue: Tconfigvalue;
          smsCustCode: string;



    function ConnectMysqlDB: Boolean;

    function ConnectDatabase(dbIp, dbname, dbUser, dbPass, dbprotocol:  string; Dbport :integer = 0): Boolean;
    function ConnectDatabase2(dbIp, dbname, dbUser, dbPass,
      dbprotocol: string): Boolean;
    function ConnectDatabase3(dbIp, dbname, dbUser, dbPass,
      dbprotocol: string): Boolean;
    function ConnectDatabase4(dbIp, dbname, dbUser, dbPass,
      dbprotocol: string): Boolean;
    function ConnectDatabase_BIT(dbIp, dbname, dbUser, dbPass,
      dbprotocol:  string; Dbport :integer = 0): Boolean;
  end;

var
  dm_f: Tdm_f;

implementation
uses   uConfig, uFunctions;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



function TDM_f.ConnectDatabase(dbIp, dbname, dbUser, dbPass, dbprotocol:  string; Dbport :integer = 0): Boolean;
begin
  //   currentDir := extractFilePath(ParamStr(0));

     try
    //      application.ProcessMessages;



          with uniConnection1 do
          begin
              ProviderName := 'SQL Server';


              Server := dbip;

              if dbuser = '' then
              begin
                 SpecificOptions.Values['Authentication'] := 'auWindows';
                 SpecificOptions.Values['TrustServercertificate'] := 'true';
              end
              else
              begin
                 SpecificOptions.Values['Authentication'] := 'auServer';
                 SpecificOptions.Values['TrustServercertificate'] := 'false';
              end;


              Database := dbname;
              Username := dbuser;
              Password := dbPass;

            //  application.ProcessMessages;

              open;
          end;









          result := true;

     except

          on E: Exception do
          begin
               result := false;
               ShowMessage('[데이터베이스서버에  접속 할 수 없습니다.]' +
                    #10#13
                    +
                    '데이터베이스 서버 위치 :' + dbip + #10#13 +
                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
                    '데이터베이스명 :' + dbname + #10#13 +
                    E.Message);
//               ExceptLogging('[데이터베이스서버에  접속 할 수 없습니다.]'
//                    +
//                    #10#13
//                    +
//                    '데이터베이스 서버 위치 :' + dbip + #10#13 +
//                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
//                    '데이터베이스명 :' + dbname + #10#13
//                    + E.Message);
             //  ZConnection.CleanupInstance;

          end;

     end;

end;


function TDM_f.ConnectDatabase_BIT(dbIp, dbname, dbUser, dbPass, dbprotocol:  string; Dbport :integer = 0): Boolean;
begin
  //   currentDir := extractFilePath(ParamStr(0));

     try
    //      application.ProcessMessages;



          with UniConnectionBIT do
          begin
              ProviderName := 'SQL Server';


              Server := dbip;

              if dbuser = '' then
              begin
                 SpecificOptions.Values['Authentication'] := 'auWindows';
                 SpecificOptions.Values['TrustServercertificate'] := 'true';
              end
              else
              begin
                 SpecificOptions.Values['Authentication'] := 'auServer';
                 SpecificOptions.Values['TrustServercertificate'] := 'false';
              end;


              Database := dbname;
              Username := dbuser;
              Password := dbPass;

            //  application.ProcessMessages;

              open;
          end;









          result := true;

     except

          on E: Exception do
          begin
               result := false;
               ShowMessage('[BIT 데이터베이스서버에  접속 할 수 없습니다.]' +
                    #10#13
                    +
                    '데이터베이스 서버 위치 :' + dbip + #10#13 +
                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
                    '데이터베이스명 :' + dbname + #10#13 +
                    E.Message);
//               ExceptLogging('[데이터베이스서버에  접속 할 수 없습니다.]'
//                    +
//                    #10#13
//                    +
//                    '데이터베이스 서버 위치 :' + dbip + #10#13 +
//                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
//                    '데이터베이스명 :' + dbname + #10#13
//                    + E.Message);
             //  ZConnection.CleanupInstance;

          end;

     end;

end;


function TDM_f.ConnectDatabase2(dbIp, dbname, dbUser, dbPass, dbprotocol:
     string): Boolean;
begin
//     currentDir := extractFilePath(ParamStr(0));
//
//     try
//          application.ProcessMessages;
//
//
//          with ZConnection1 do
//          begin
//               connected := false;
//               autocommit:=true;
//               Properties.Clear;
//               Disconnect;
//               User := dbuser;
//               Password := dbPass;
//               Protocol := dbprotocol; //'mssql';
//               HostName := dbip; //'127.0.0.1';
//               Database := dbname; //'madang';
//               //   port := 3500;
//               Connect;
//               // ZCargo.Active := True;
//              //  ZDepartment.Active := True;
//               // ZPeople.Active := True;
//         end;
//
//          //  UniConnection은 Mssql2000에 접속하지 못한다.
//  {        with ZConnection1 do
//          begin
//              ProviderName := 'ODBC'; //  'SQL Server';
//              ConnectString :=
//              'Provider=SQL Server;Persist Security Info=False;  '+       //SQLNCLI11.1
//              'User ID='+ dbuser+';' +
//              'Password='+dbPass+ ';'+
//              'Initial Catalog=dentro_go;'+
//              'Data Source='+dbip+';';
//         //     Server := dbip;
//
//
//
//          {    if dbuser = '' then
//              begin
//                 SpecificOptions.Values['Authentication'] := 'auWindows';
//                 SpecificOptions.Values['TrustServercertificate'] := 'true';
//              end
//              else
//              begin
//                 SpecificOptions.Values['Authentication'] := 'auServer';
//                 SpecificOptions.Values['TrustServercertificate'] := 'false';
//              end;
//
//
//              Database := dbname;
//              Username := dbuser;
//              Password := dbPass;
//            }
//
//   {           application.ProcessMessages;
//
//              open;
//          end;
//
//    }
//
//          result := true;
//
//     except
//          on E: Exception do
//          begin
//               ShowMessage('[이지덴트 또는 다른 영상뷰어용 데이터베이스서버에  접속 할 수 없습니다.]'    + #10#13
//                   +  'X-ray실 PC가 정상적으로 작동하는지 확인하십시오.' + #10#13
//                   +  '데이터베이스 서버(2) 위치 :' + dbip + #10#13
//                   +  '데이터베이스 사용자명 :' + dbuser + #10#13
//                   +  '데이터베이스명 :' + dbname + #10#13
//                   +  E.Message);
//               ExceptLogging('[이지덴트 데이터베이스서버에  접속 할 수 없습니다.]'
//                    +
//                    #10#13
//                    +
//                    '데이터베이스 서버(2) 위치 :' + dbip + #10#13 +
//                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
//                    '데이터베이스명 :' + dbname + #10#13
//                    + E.Message);
//               ZConnection1.CleanupInstance;
//
//               result := false;
//          end;
//
//     end;

end;



function TDM_f.ConnectDatabase3(dbIp, dbname, dbUser, dbPass, dbprotocol:
     string): Boolean; //백업 , 예약백업용
begin
//     currentDir := extractFilePath(ParamStr(0));
//
//     try
//          application.ProcessMessages;
//         { with ZConnection2 do
//          begin
//               connected := false;
//               Properties.Clear;
//               Disconnect;
//               User := dbuser;
//               Password := dbPass;
//               Protocol := dbprotocol; //'mssql';
//               HostName := dbip; //'127.0.0.1';
//               Database := dbname; //'madang';
//               //   port := 3500;
//               Connect;
//               // ZCargo.Active := True;
//              //  ZDepartment.Active := True;
//               // ZPeople.Active := True;
//          end;
//               }
//
//          with ZConnection2  do
//          begin
//              ProviderName := 'SQL Server';
//
//
//              Server := dbip;
//
//
//          //    SpecificOptions.Values['UseUnicode'] := 'True';
//
//              if dbuser = '' then
//              begin
//                 SpecificOptions.Values['Authentication'] := 'auWindows';
//                 SpecificOptions.Values['TrustServercertificate'] := 'true';
//              end
//              else
//              begin
//                 SpecificOptions.Values['Authentication'] := 'auServer';
//                 SpecificOptions.Values['TrustServercertificate'] := 'false';
//              end;
//
//
//              Database := dbname;
//              Username := dbuser;
//              Password := dbPass;
//              application.ProcessMessages;
//
//              open;
//          end;
//
//
//
//
//          result := true;
//
//     except
//          on E: Exception do
//          begin
//               ShowMessage('[데이터베이스서버(3)에  접속 할 수 없습니다.]'
//                    + #10#13
//                    +
//                    '데이터베이스 서버(3) 위치 :' + dbip + #10#13 +
//                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
//                    '데이터베이스명 :' + dbname + #10#13 +
//                    E.Message);
//               ExceptLogging('[데이터베이스서버(3)에  접속 할 수 없습니다.]'
//                    +
//                    #10#13
//                    +
//                    '데이터베이스 서버(3) 위치 :' + dbip + #10#13 +
//                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
//                    '데이터베이스명 :' + dbname + #10#13
//                    + E.Message);
//               ZConnection2.CleanupInstance;
//
//               result := false;
//          end;
//
//     end;

end;


function TDM_f.ConnectMysqlDB: Boolean;
begin

     try

          application.ProcessMessages;


      {    with mysqldb do
          begin
               User := 'gildata';
               Password := 'gkgjsdu0';
               Protocol := 'mysql-5';
               HostName := 'mysql2.hosting.paran.com';
               Database := 'gildata_db';
               Connect;
          end;
      }


           with mysqldb do
          begin
              ProviderName := 'MySQL';


              Server := 'mysql2.hosting.paran.com';


              Database := 'gildata_db';
              Username := 'gildata';
              Password := 'gkgjsdu0';
              application.ProcessMessages;

              open;
          end;







          with sqlmysqldb do
          begin

               close;
               sql.Clear;
               sql.add('set names euckr');
               execsql;
          end;
          result := true;

     except

          on E: Exception do
          begin
               ExceptLogging('[MY데이터베이스 접속 오류]' + E.Message);
               result := false;
          end;

     end;

end;


procedure Tdm_f.DataModuleCreate(Sender: TObject);
begin
//     if loadini = true then
//     begin
//        configvalue.LoadGlobalData_ini;  //ini정보를 열자.
//
//
//     if dm_f.ConnectDatabase(configvalue.varDbip,
//          configvalue.varDbname,
//          configvalue.varDbuser, configvalue.varDbpass,
//          configvalue.varDbProtocol,
//                          configvalue.varDbPort) = true then
//     begin
//
//       configvalue.LoadGlobalData_db;
//
//       //tableUpdate;
//
//
//
//          {$IFNDEF DEBUG}
//             if dm_f.ConnectDatabase_BIT(configvalue.varImageIp,
//                  'mediroPack',
//                  'sa',
//                  'bit',
//                  'mssql',
//                  51983) = true then
//             begin
//
//             end
//             else
//             begin
//                    showmessage('BIT conn check.'+#10+#13+configvalue.varImageIp);
//             end;
//          {$ENDIF DEBUG}
//
//     end
//     else
//     begin
//         showmessage('Required Internet status or Network.');
//         application.Terminate;
//     end;
//
//   end
//   else
//   begin
//      showmessage('Required Internet status or Network.');
//      application.Terminate;
//   end;
end;

function TDM_f.ConnectDatabase4(dbIp, dbname, dbUser, dbPass, dbprotocol:
     string): Boolean; //두번에 기타용
begin
     currentDir := extractFilePath(ParamStr(0));

     try
          application.ProcessMessages;
       {   with ZConnection3 do
          begin
               connected := false;
               Properties.Clear;
               Disconnect;
               User := dbuser;
               Password := dbPass;
               Protocol := dbprotocol; //'mssql';
               HostName := dbip; //'127.0.0.1';
               Database := dbname; //'madang';
               //   port := 3500;
               Connect;
               // ZCargo.Active := True;
              //  ZDepartment.Active := True;
               // ZPeople.Active := True;
          end;
       }

          with dm_f.UniConnection1 do
          begin
              ProviderName := 'SQL Server';


              Server := dbip;

              if dbuser = '' then
              begin
                 SpecificOptions.Values['Authentication'] := 'auWindows';
                 SpecificOptions.Values['TrustServercertificate'] := 'true';
              end
              else
              begin
                 SpecificOptions.Values['Authentication'] := 'auServer';
                 SpecificOptions.Values['TrustServercertificate'] := 'false';
              end;


              Database := dbname;
              Username := dbuser;
              Password := dbPass;
              application.ProcessMessages;

              open;
          end;


          result := true;

     except
          on E: Exception do
          begin
               ShowMessage('[데이터베이스서버 (4)에  접속 할 수 없습니다.]'
                    + #10#13
                    +
                    '데이터베이스 서버 (4) 위치 :' + dbip + #10#13 +
                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
                    '데이터베이스명 :' + dbname + #10#13 +
                    E.Message);
               ExceptLogging('[데이터베이스서버(4)에  접속 할 수 없습니다.]'
                    +
                    #10#13
                    +
                    '데이터베이스 서버(4) 위치 :' + dbip + #10#13 +
                    '데이터베이스 사용자명 :' + dbuser + #10#13 +
                    '데이터베이스명 :' + dbname + #10#13
                    + E.Message);
               //ZConnection3.CleanupInstance;

               result := false;
          end;

     end;

end;




end.
