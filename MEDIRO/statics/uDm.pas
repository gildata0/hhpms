unit uDm;

interface

uses
  System.SysUtils,
  vcl.dialogs, System.Classes, UniProvider, SQLServerUniProvider, Data.DB,
  MemDS, DBAccess, Uni, Data.Win.ADODB;

type
  TDM_f = class(TDataModule)
    UniConnectionBIT: TUniConnection;
    sqlTemp: TUniQuery;
    sqlWork: TUniQuery;
    SQLServerUniProvider1: TSQLServerUniProvider;
    UniConnection1: TUniConnection;
    UniQuery1: TUniQuery;
    sqlCalc: TUniQuery;
    sqlRegi: TUniQuery;
    sqltemp12: TUniQuery;
    sqlTemp2: TUniQuery;
    sqlAnother3: TUniQuery;
    sqlBit: TUniQuery;
    connectionEwha: TUniConnection;
    sqlFind: TUniQuery;
    sqlTemp14: TUniQuery;
    sqltemp15: TUniQuery;
    sqltemp13: TUniQuery;
    sqlfindHwanja: TUniQuery;
    sqlJinryo: TUniQuery;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    sqltimer2: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
     function  ConnectDatabase(dbIp, dbname, dbUser, dbPass, dbprotocol:  string; Dbport :integer = 0): Boolean;
     function  ConnectDatabase_BIT(dbIp, dbname, dbUser, dbPass, dbprotocol:  string; Dbport :integer = 0): Boolean;
  end;

var
  DM_f: TDM_f;

implementation
uses  uConfig, uFunctions;
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

end.
