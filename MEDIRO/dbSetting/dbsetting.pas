unit dbsetting;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Inifiles;

type
     THex = record
          case integer of
               1: (i: word);
               2: (lo: byte; hi: byte);
     end;
type
     Tdbsetting_f = class(TForm)
          Label1: TLabel;
          edtServerIP: TEdit;
          Label2: TLabel;
          edtDbName: TEdit;
          Label3: TLabel;
          edtDbPass: TEdit;
          btnSave: TButton;
          btnClose: TButton;
          Label4: TLabel;
          btnConTest: TButton;
          Label5: TLabel;
          cbDbprotocol: TComboBox;
          Label6: TLabel;
          edtName: TEdit;
          Label7: TLabel;
          edtimgserver: TEdit;
    Label8: TLabel;
    edtDocuServer: TEdit;
    Label9: TLabel;
    edtPort: TEdit;
    ComboBox1: TComboBox;
          procedure btnCloseClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure btnSaveClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnConTestClick(Sender: TObject);
          procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
     private
          { Private declarations }
          savename : string;
          user: tFileRec;


          procedure SaveDbInfo;
   // procedure LoadEncodingInfo(OpenName: string);
     public
          { Public declarations }
     end;



var
     dbsetting_f: Tdbsetting_f;

implementation
uses uConfig, uDm,   uFunctions;

{$R *.dfm}

procedure Tdbsetting_f.btnCloseClick(Sender: TObject);
begin
     close;
end;

procedure Tdbsetting_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure Tdbsetting_f.btnSaveClick(Sender: TObject);
begin
     saveDbInfo;


     SaveDbInfo_encode('c:\info.info'
     ,edtServerIp.text
     ,edtServerIp.text
     ,edtDbName.Text
     ,edtDbpass.text
     ,cbDbprotocol.text
     ,edtname.text
     ,edtimgserver.text
     ,edtDocuserver.text
     ,edtPort.text     ) ;


     Close;

end;

procedure Tdbsetting_f.SaveDbInfo;
var
     FormInit: TIniFile;
     Rundir: string;
     RunFile: string;
     Path: string;

begin


    // Path := GetConfigDir + 'db.ini';
      Path :=extractFilePath(paramStr(0)) + 'db.ini';
       FormInit := TIniFile.Create(Path);                                                               //uLoadValue values
     FormInit.WriteString('DATABASE','dbIP' ,      edtServerIp.text      );               //'dbIP'                 //11 SERVERPORT
     FormInit.WriteString('DATABASE','dbtosIP' , edtServerIp.text      );          //'dbtosIP'              //12 SERVERIP
     FormInit.WriteString('DATABASE','dbName' ,      edtDbName.Text        );                 //'dbName'               //13 DOCUIP
     FormInit.WriteString('DATABASE','dbPASS' ,      edtDbpass.text        );                 //'dbPASS'               //14 dbip
     FormInit.WriteString('DATABASE','dbProtocol' ,      cbDbprotocol.text     );              //'dbProtocol'           //15 dbPort
     FormInit.WriteString('DATABASE','dbUSER' ,      edtname.text          );                   //'dbUSER'               //16 dbname
     FormInit.WriteString('DATABASE','ServerIP',      edtimgserver.text     );              //'ServerIP'             //17 dbuser
     FormInit.WriteString('DATABASE','DocuIP'  ,      edtDocuserver.text    );             //'DocuIP'               //18 dbpass
     FormInit.WriteString('DATABASE','DBPort' ,      edtPort.text          );                   //'DBPort'               //19 dbprotocol
     FormInit.Free;

 {    Path := 'c:\windows\' + 'win.ini';
     FormInit := TIniFile.Create(Path);                                                               //uLoadValue values
     FormInit.WriteString('DATABASE','14' ,      edtServerIp.text      );               //'dbIP'                 //11 SERVERPORT
     FormInit.WriteString('DATABASE','dbtosIP' , edtServerIp.text      );          //'dbtosIP'              //12 SERVERIP
     FormInit.WriteString('DATABASE','16' ,      edtDbName.Text        );                 //'dbName'               //13 DOCUIP
     FormInit.WriteString('DATABASE','18' ,      edtDbpass.text        );                 //'dbPASS'               //14 dbip
     FormInit.WriteString('DATABASE','19' ,      cbDbprotocol.text     );              //'dbProtocol'           //15 dbPort
     FormInit.WriteString('DATABASE','17' ,      edtname.text          );                   //'dbUSER'               //16 dbname
     FormInit.WriteString('DATABASE','12' ,      edtimgserver.text     );              //'ServerIP'             //17 dbuser
     FormInit.WriteString('DATABASE','13' ,      edtDocuserver.text    );             //'DocuIP'               //18 dbpass
     FormInit.WriteString('DATABASE','15' ,      edtPort.text          );                   //'DBPort'               //19 dbprotocol
     FormInit.Free;
  }
end;

{procedure Tdbsetting_f.LoadEncodingInfo(OpenName: string);
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
               showmessage('정보파일 읽기 오류');

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
 }



procedure Tdbsetting_f.FormDestroy(Sender: TObject);
begin
     dbsetting_f := nil;
end;

procedure Tdbsetting_f.FormShow(Sender: TObject);
var

 dbIP
 ,dbName
 ,dbPASS
 ,dbProtocol
 ,dbUSER
 ,ServerIP
 ,DocuIP : string;
  DBPort : integer;

begin
    {
     saveName := 'c:\' + 'info.info';


     LoadEncodingInfo(savename);

 

    dbIP        :=   headmark.HdbIP       ;
    dbName      :=   headmark.HdbName     ;
    dbPASS      :=   headmark.HdbPASS     ;
    dbProtocol  :=   headmark.HdbProtocol ;
    dbUSER      :=   headmark.HdbUSER     ;
    ServerIP    :=   headmark.HServerIP   ;
    DocuIP      :=   headmark.HDocuIP     ;
    DBPort      :=   strtoint( headmark.HDBPort)     ;



     edtServerIP.text :=  DbIp;
     edtName.text :=  DbUser;
     edtDbName.text := Dbname;
     edtDbPass.text := DbPass;
     cbDbprotocol.Items.IndexOf( Dbprotocol);
     edtimgserver.text :=  ServerIP;
     edtDocuserver.text :=  DocuIP;
     edtPort.text := inttostr(  DbPort);
     }

     edtServerIP.text   := configvalue.varDbIp;
     edtName.text       := configvalue.varDbUser;
     edtDbName.text     := configvalue.varDbname;
     edtDbPass.text     := configvalue.varDbPass;
     cbDbprotocol.ItemIndex :=
                    cbDbprotocol.Items.IndexOf(configvalue.varDbprotocol);
     edtimgserver.text  := configvalue.varServerIP;
     edtDocuserver.text := configvalue.varDocuIP;
     edtPort.text       := inttostr( configvalue.varDbPort);

end;

procedure Tdbsetting_f.btnConTestClick(Sender: TObject);
begin
     if dm_f.ConnectDatabase(edtServerip.Text, edtDbname.text, edtName.text,
          edtDbpass.text, cbDbprotocol.text, strtoint(edtPort.text)) = true then
     begin
          showmessage('연결 성공');
          saveDbInfo;
     end
     else
     begin
          showmessage('연결할 수 없습니다.' + #10#13 +
               '관리자에게 문의하세요');
          exit;
     end;

end;

procedure Tdbsetting_f.FormCloseQuery(Sender: TObject;
     var CanClose: Boolean);
begin
     configvalue.LoadGlobalData_ini;
     if configvalue.varDbIp = '' then
     begin
           configvalue.LoadGlobalData_db2Set; //db연결정보 및  2차서버 정보를 불러온다.

     end;

end;

procedure Tdbsetting_f.ComboBox1CloseUp(Sender: TObject);
begin
     edtServerIP.Text :=  ComboBox1.Text;
end;

procedure Tdbsetting_f.FormCreate(Sender: TObject);
var
     varmaclist: TStringList;
begin


    // ENCRYPT_MARK := '123'; // 'OURGREANGELHART→';
     //맥주소 불러오자...
  //   varmaclist:= TStringList.Create;
  //   Get_AdaptersInfo(varmaclist);

  //   ENCRYPT_MARK := 'OURGREANGELHART→'+ varmaclist[0];


end;

end.

