unit dbsetting;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Inifiles;

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
          procedure btnCloseClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure btnSaveClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnConTestClick(Sender: TObject);
          procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
     private
          { Private declarations }

          procedure SaveDbInfo;
     public
          { Public declarations }
     end;

var
     dbsetting_f: Tdbsetting_f;

implementation
uses dm, uFunctions;

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
      if dm_f.Loadini = false then
      exit;
     case cbDbProtocol.itemindex of
     0://MsSql
     begin
     if dm_f.ConnectDatabase(dm_f.configvalue.varDbip,
          dm_f.configvalue.varDbname,
          dm_f.configvalue.varDbuser, dm_f.configvalue.varDbpass,
          dm_f.configvalue.varDbProtocol) = true then
          ModalResult := mrOk
          else
           ModalResult := mrNo;
     end;
     1://MySql
     begin
 { if dm_f.ConnectDatabaseMySql(dm_f.configvalue.varDbip,
          dm_f.configvalue.varDbname,
          dm_f.configvalue.varDbuser, dm_f.configvalue.varDbpass,
          dm_f.configvalue.varDbProtocol) = true then
          ModalResult := mrOk;
  }
     end;

     end;
     {     if dm_f.ConnectDatabase(dm_f.configvalue.varDbip,
               dm_f.configvalue.varDbname,
               dm_f.configvalue.varDbuser, dm_f.configvalue.varDbpass,
               dm_f.configvalue.varDbProtocol) = true then
          begin
               dm_f.configvalue.LoadGlobalData_db;
          end;
      }

    // Close;

end;

procedure Tdbsetting_f.SaveDbInfo;
var
     FormInit: TIniFile;
     Rundir: string;
     RunFile: string;
     Path: string;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('DATABASE', 'dbIP', edtServerIp.text);
     FormInit.WriteString('DATABASE', 'dbName', edtDbName.Text);
     FormInit.WriteString('DATABASE', 'dbPASS', edtDbpass.text);
     FormInit.WriteString('DATABASE', 'dbProtocol', cbDbprotocol.text);
     FormInit.WriteString('DATABASE', 'dbUSER', edtname.text);
     FormInit.Free;

end;

procedure Tdbsetting_f.FormDestroy(Sender: TObject);
begin
     dbsetting_f := nil;
end;

procedure Tdbsetting_f.FormShow(Sender: TObject);
begin
     caption:='DB Setting';
     if not assigned(dm_f) then
          dm_f := Tdm_f.Create(application);
     dm_f.Loadini;
     edtServerIP.text := dm_f.configvalue.varDbIp;
     edtDbName.text := dm_f.configvalue.varDbname;
     edtDbPass.text := dm_f.configvalue.varDbPass;
     edtname.text := dm_f.configvalue.varDbUser;
     cbDbprotocol.ItemIndex :=
          cbDbprotocol.Items.IndexOf(dm_f.configvalue.varDbprotocol);
end;

procedure Tdbsetting_f.btnConTestClick(Sender: TObject);
begin
     if dm_f.ConnectDatabase(edtServerip.Text, edtDbname.text, edtName.text,
          edtDbpass.text, cbDbprotocol.text) = true then
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
     dm_f.configvalue.LoadGlobalData_ini;
end;

end.

