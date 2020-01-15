unit dm;

interface

uses
     SysUtils, Classes, DB, inifiles ,
MemDS,
  DBAccess, Uni, UniProvider, SQLServerUniProvider;

type
     Tdm_f = class(TDataModule)
    ZConnection: TUniConnection;
    SqlWork: TUniQuery;
    sqlSel: TUniQuery;
    sqlTemp: TUniQuery;
    SQLServerUniProvider1: TSQLServerUniProvider;
          procedure DataModuleCreate(Sender: TObject);
          procedure DataModuleDestroy(Sender: TObject);
     private
    { Private declarations }
     public
    { Public declarations }
          picPath: string;
          function MakeMaxIbgoCode: string;
     end;

var
     dm_f: Tdm_f;

implementation

{$R *.dfm}

procedure Tdm_f.DataModuleCreate(Sender: TObject);
var
     path, soIp, soDB, soUserID, soPass: string;
     FormInit: TIniFile;
begin
{     Path := ExtractFilePath(ParamStr(0)) + 'pess.ini';
     FormInit := TIniFile.Create(Path);

     soIP :='hmslab.co.kr';// FormInit.ReadString('DATABASEINFO', 'pessip', '');
     soDB :='ddm';// FormInit.ReadString('DATABASEINFO', 'pessDB', '');
     soUserId := 'sa';//FormInit.ReadString('DATABASEINFO', 'pessUSER', '');
     soPass :='hmslab123';// FormInit.ReadString('DATABASEINFO', 'pessPASS', '');
     FormInit.Free;
 }
     Path := ExtractFilePath(ParamStr(0)) + 'ddm.ini';
     FormInit := TIniFile.Create(Path);

     soIP :=FormInit.ReadString('DATABASE', 'dbip', '');
     soDB := FormInit.ReadString('DATABASE', 'dbname2', 'DDM');
     soUserId := FormInit.ReadString('DATABASE', 'dbUSER', '');
     soPass := FormInit.ReadString('DATABASE', 'dbPASS', '');
     FormInit.Free;



     try

          with ZConnection do
          begin
              ProviderName := 'SQL Server';


              Server := soIP;

              if Username = '' then
              begin
                 SpecificOptions.Values['Authentication'] := 'auWindows';
                 SpecificOptions.Values['TrustServercertificate'] := 'true';
              end
              else
              begin
                 SpecificOptions.Values['Authentication'] := 'auServer';
                 SpecificOptions.Values['TrustServercertificate'] := 'false';
              end;


              Database := soDB;
              Username := soUserId;
              Password := soPass;

            //  application.ProcessMessages;

              open;
          end;
          //result := true;

     except

          on E: Exception do
          begin
           //    ShowMessage('[데이터베이스 접속 오류]' + E.Message);
           //    ExceptLogging('[데이터베이스 접속 오류]' + E.Message);
             //  result := false;
          end;

     end;


end;

procedure Tdm_f.DataModuleDestroy(Sender: TObject);
begin
     dm_f := nil;
end;

function Tdm_f.MakeMaxIbgoCode: string;
const
     Select_Ibgo = 'Select isnull(max(igno),0) as MaxIgno from tblIbgo';

                         
begin
     with dm_f.sqlTemp do
     begin
          SQL.Text := Select_Ibgo;
          Open;
          if not isEmpty then
          begin
               result := formatfloat('00000000000000000000', fieldByName('maxIgno').AsFloat + 1);
          end
          else
          begin
               result := '00000000000000000001';
          end;
     end;

end;

end.

