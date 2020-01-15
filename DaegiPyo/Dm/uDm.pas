unit uDm;

interface

uses
  System.SysUtils, System.Classes, Messages,
  Dialogs, Data.DB, MemDS, DBAccess, Uni,controls,
  Forms,     windows,
  uLoadvalue, UniProvider, SQLServerUniProvider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin;

type
  Tdm_f = class(TDataModule)
    UniConnection1: TUniConnection;
    sqlWork: TUniQuery;
    sqlTemp: TUniQuery;
    UniQuery3: TUniQuery;
    SQLServerUniProvider1: TSQLServerUniProvider;
    memTblUserInfo: TFDMemTable;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    procedure DataModuleCreate(Sender: TObject);
  private
     { Private declarations }
  public
    { Public declarations }
    configvalue: Tconfigvalue;
    function loadini: Boolean;
    procedure DBConnect;
    function ConnectDatabase(dbIp, dbname, dbUser, dbPass,
      dbprotocol: string): Boolean;
 end;

var
  dm_f: Tdm_f;

implementation
uses uMain;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
function TDM_f.ConnectDatabase(dbIp, dbname, dbUser, dbPass, dbprotocol:
       string): Boolean;
begin
       //  currentDir := extractFilePath(ParamStr(0));

       try
               with uniConnection1 do
              begin

             //  Provider Name=SQL Server;Data Source=HAPCD6A6;Initial Catalog=dentro;Port=0;User ID=sa;Password=2002
                     ProviderName :='SQL Server';
                     UserName := dbuser;
                     Password := dbPass;
                     Server := dbip; //'127.0.0.1';
                     Database := dbname; //'madang';
                  //   port := 3500;
                     Connect;
                     // ZCargo.Active := True;
                    //  ZDepartment.Active := True;
                     // ZPeople.Active := True;
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

                     result := false;
              end;

       end;

end;


procedure Tdm_f.DataModuleCreate(Sender: TObject);
begin
DBConnect;
end;

procedure TDM_f.DBConnect;
var
       Ai, i: integer;
       vchojae, PMKIND: string;

begin
       if dm_f.Loadini = true then
       begin
              if dm_f.ConnectDatabase(
                     dm_f.configvalue.varDbip,
                     dm_f.configvalue.varDbname,
                     dm_f.configvalue.varDbuser,
                     dm_f.configvalue.varDbpass,
                     dm_f.configvalue.varDbProtocol) = true then
              begin
                     //  dm_f.configvalue.LoadGlobalData_ini;
               //      dm_f.configvalue.LoadGlobalData_db;
                           if not Assigned(main_f) then
                                  main_f := Tmain_f.Create(self);
                           main_f.Showmodal;


              end
              else
              begin
              end;
       end
       else
       begin
                         { if not Assigned(dbSetting_f) then
                                   dbSetting_f :=
                                          TdbSetting_f.Create(application);
                          if   dbSetting_f.showModal = mrOk then
                          begin
                            dm_f.configvalue.LoadGlobalData_db;
                           if not Assigned(main_f) then
                                  main_f := Tmain_f.Create(application);
                          main_f.Showmodal;
                          end;}
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


end.
