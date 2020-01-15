unit dm;

interface

uses
       SysUtils, Classes, DB,  iniFiles, Forms, DBClient, Dialogs,
       windows, TLHelp32,controls,
       IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Messages,
       IdHTTP, ShellApi, FMTBcd, ADODB,
        uLoadvalue, MemDS, DBAccess, Uni,
       UniProvider, SQLServerUniProvider;

const
       WM_OPENCHART = WM_USER + 1;
type

       Tdm_f = class(TDataModule)
              ADOConnection1: TADOConnection;
              sqlPat: TADOQuery;
              ADOConnection2: TADOConnection;
              sqlImg: TADOQuery;
    ZConnection1: TUniConnection;
    sqlWork: TUniQuery;
    sqlTemp: TUniQuery;
    SQLServerUniProvider1: TSQLServerUniProvider;
              procedure DataModuleCreate(Sender: TObject);
       public
              { Public declarations }
              configvalue: Tconfigvalue;

              FormInit: TIniFile;
              Rundir: string;
              PathAnother: string;
              Path, EasydentPatientpath, EasydentImagepath: string;
              Path2: string;

              PMIP: string;
              PMUserId: string;
              PMPass: string;
              PMDb: string;

              Pass2: string;
              IP2: string;
              USERID2: string;
              DBName2: string;
              xImagename: string;
              DbKind: string;
              function ConnectDatabase(dbIp, dbname, dbUser, dbPass, dbprotocol:
                     string): Boolean;
              function loadini: Boolean;
       end;

var
       dm_f: Tdm_f;
       hL, hP: THandle;

implementation

uses dbsetting, main;

{$R *.dfm}

function TDM_f.ConnectDatabase(dbIp, dbname, dbUser, dbPass, dbprotocol:
       string): Boolean;
begin
       //  currentDir := extractFilePath(ParamStr(0));

       try
              application.ProcessMessages;
              with ZConnection1 do
              begin
               {      connected := false;
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
                     // ZPeople.Active := True; }

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
                     ShowMessage('[데이터베이스서버에  접속 할 수 없습니다.]' +
                            #10#13
                            +
                            '데이터베이스 서버 위치 :' + dbip + #10#13 +
                            '데이터베이스 사용자명 :' + dbuser + #10#13 +
                            '데이터베이스명 :' + dbname + #10#13 +
                            E.Message);
                     { ExceptLogging('[데이터베이스서버에  접속 할 수 없습니다.]'
                             +
                             #10#13
                             +
                             '데이터베이스 서버 위치 :' + dbip + #10#13 +
                             '데이터베이스 사용자명 :' + dbuser + #10#13 +
                             '데이터베이스명 :' + dbname + #10#13
                             + E.Message);
                      }
                     ZConnection1.CleanupInstance;

                     result := false;
              end;

       end;

end;

function TDM_f.loadini: Boolean;
var
       configFile: string;

begin
       configFile := extractFilePath(paramStr(0)) + 'db.ini';
       try

              if fileExists(configfile) then
              begin

                     configvalue := Tconfigvalue.Create;
                     configvalue.LoadGlobalData_ini;
                     if configvalue.varDbIp <> '' then
                            result := true
                     else
                     begin

                            result := false;
                     end;
              end
              else
              begin
                     configvalue := Tconfigvalue.Create;
                     configvalue.LoadGlobalData_ini;
                     ///  configvalue.Free;
                     {if not Assigned(dbSetting_f) then
                            dbSetting_f := TdbSetting_f.Create(application);
                     dbSetting_f.Show();
                     }
                      result :=false;

              end;
       except
              on E: Exception do
              begin
                     //  ExceptLogging('[ini파일을 로드할 수 없습니다.]' + #10#13 +
                     //         E.Message);
                     result := false;
              end;
       end;
end;

procedure Tdm_f.DataModuleCreate(Sender: TObject);
var
       Ai, i: integer;
       vchojae, PMKIND: string;

begin

       if dm_f.Loadini = true then
       begin
              if dm_f.ConnectDatabase(dm_f.configvalue.varDbip,
                    dm_f.configvalue.varDbname,  // 'master',//
                     dm_f.configvalue.varDbuser,
                     dm_f.configvalue.varDbpass,
                     dm_f.configvalue.varDbProtocol) = true then
              begin
                     //  dm_f.configvalue.LoadGlobalData_ini;
                  //  dm_f.configvalue.LoadGlobalData_db;
                           if not Assigned(main_f) then
                                  main_f := Tmain_f.Create(application);
                           main_f.Showmodal;


              end
              else
              begin
              end;
       end
       else
       begin
                          if not Assigned(dbSetting_f) then
                                   dbSetting_f :=
                                          TdbSetting_f.Create(application);
                          if   dbSetting_f.showModal = mrOk then
                          begin
                            dm_f.configvalue.LoadGlobalData_db;
                           if not Assigned(main_f) then
                                  main_f := Tmain_f.Create(application);
                          main_f.Showmodal;
                          end;
       end;
       {  Path := ExtractFilePath(ParamStr(0)) + 'Db.ini';
         FormInit := TIniFile.Create(Path);

         PMIP := FormInit.ReadString('DATABASEINFO', 'PMIP', '');
         PMDB := FormInit.ReadString('DATABASEINFO', 'PMDB', '');
         PMUserId := FormInit.ReadString('DATABASEINFO', 'PMUSER', '');
         PMPass := FormInit.ReadString('DATABASEINFO', 'PMPASS', '');
         EasydentPatientpath := FormInit.ReadString('DATABASEINFO', 'EasydentPatientPath', '');
         EasydentImagepath := FormInit.ReadString('DATABASEINFO', 'EasydentImagePath', '');
         FormInit.Free;

         RunDir := ExtractFileDir(application.exename);

         dm_f.Loadini;
         if dm_f.ConnectDatabase(dm_f.configvalue.varDbip,
              dm_f.configvalue.varDbname,
              dm_f.configvalue.varDbuser, dm_f.configvalue.varDbpass,
              dm_f.configvalue.varDbProtocol) = true then
              begin
              end;
              }
    {
         if trim(PMIP) <> '' then
         begin
              SetDBParams_MsSql(PMDB, PMIP, PMUserId, PMPass);
         end;

         try
              if  AdoConnection1.Connected = false then
                    AdoConnection1.ConnectionString :=

                   'Provider=Microsoft.Jet.OLEDB.4.0;' +
                        'Data Source=' + EasydentPatientpath + ';' +
                        'Persist Security Info=False';
         except
              on E: Exception do begin
                    ShowMessage(E.Message);
              end;
         end;
         try
              if  AdoConnection2.Connected = false then
                    AdoConnection2.ConnectionString :=

                   'Provider=Microsoft.Jet.OLEDB.4.0;' +
                        'Data Source=' + EasydentImagepath + ';' +
                        'Persist Security Info=False';
         except
              on E: Exception do begin
                    ShowMessage(E.Message);
              end;
         end;
    }

end;

end.

