unit saveContent;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, jpeg, ExtCtrls;

type
     TsaveContent_f = class(TForm)
    pnlContentsSave: TPanel;
    pnlSaveButton: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    EdtContNo: TEdit;
    EdtContName: TEdit;
    pnlSmsCont: TPanel;
    Image1: TImage;
    memSmsContentsSave: TMemo;
    btnSave: TButton;
    btnCls: TButton;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
     private
    procedure SaveContent(title, content, path: string);
          { Private declarations }
     public
          { Public declarations }
     end;

var
     saveContent_f: TsaveContent_f;

implementation

{$R *.dfm}
uses dm, main;

procedure TsaveContent_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TsaveContent_f.FormDestroy(Sender: TObject);
begin
     saveContent_f := nil;
end;


procedure TsaveContent_f.FormShow(Sender: TObject);
var
     sPath: string;
begin
     Caption := 'SMS 컨텐트 추가';
     pnlContentsSave.Caption := '';
     memSmsContentsSave.Text := '';
     pnlsaveButton.Caption := '';

     edtContName.text := ''; // varContentName;
     edtContNo.text := main_f.varContentno;
     memSmsContentsSave.Text := '';
     edtContName.Enabled := true;
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_contents');
          sQL.aDD('where Class=:Class');
          sQL.aDD('order by  Class, Sml_Class');

          if Copy(edtcontno.text, 1, 6) = '' then
               Parambyname('Class').value := '116001'
          else
               Parambyname('Class').value := Copy(edtcontno.text, 1, 6);
          Open;
          Last;
          if not isEmpty then
               sPath := FormatFloat('000',
                    StrToInt(FieldByName('Sml_Class').AsString) + 1)
          else
               sPath := '116001001';
     end;
     edtcontno.text := Copy(edtcontno.text, 1, 6) + sPath;
          edtcontname.SetFocus;

 

end;

procedure TsaveContent_f.btnSaveClick(Sender: TObject);
begin
         if EdtContName.Text = '' then
          begin
               showmessage('제목을 입력하세요.');
                EdtContName.SetFocus;
               Exit;
          end;

          if memSmsContentsSave.Text = '' then
          begin
               showmessage('내용을 입력하세요.');
                 memSmsContentsSave.SetFocus;
               Exit;
          end;

          if EdtContNo.text = '' then
          begin
               showmessage('번호를 입력하세요.');
                  EdtContNo.SetFocus;
               Exit;
          end;
          main_f.SaveContent(EdtContName.Text,  StringReplace(memSmsContentsSave.Text, dm_f.configvalue.varsaupname,
               '+aaa+', [rfReplaceAll,
               rfIgnoreCase]), EdtContNo.text);
          edtContName.Enabled := False;

end;


procedure TsaveContent_f.SaveContent(title, content, path: string);
var
     sTreePath: string;
begin

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_datakind');
          sQL.aDD('where TreePath=:TreePath');
          Parambyname('Treepath').value := '116001'; //사용자정의
          Open;
          Last;
          if IsEmpty then
          begin
               Close;
               Sql.Clear;
               Sql.Add('insert into ma_sms_datakind');
               Sql.Add('(GroupKind1,GroupKind2,GroupKind3,Treepath) values');
               Sql.Add('(:GroupKind1,:GroupKind2,:GroupKind3,:Treepath)');
               Parambyname('GroupKind1').value := '문자';
               Parambyname('GroupKind2').value := '사용자정의';
               Parambyname('GroupKind3').value := '사용자정의1';
               Parambyname('TreePath').value := '116001';
               ExecSql;
          end;
     end;

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_contents');
          sQL.aDD('where Class=:Class and Sml_Class=:Sml_Class');
          Parambyname('Class').value := Copy(path, 1, 6);
          Parambyname('Sml_Class').value := Copy(path, 7, 3);
          Open;
          Last;
          if not IsEmpty then
          begin
               Close;
               Sql.Clear;
               Sql.Add('Update ma_sms_contents Set');
               Sql.Add('content=:Content, title=:title');
               Sql.Add('Where Class=:Class and sml_Class=:Sml_Class');
               Parambyname('Class').value := Copy(path, 1, 6);
               Parambyname('Sml_Class').value := Copy(path, 7, 3);
               Parambyname('title').value := title;
               Parambyname('content').value := Content;
               ExecSql;
          end
          else
          begin

               Close;
               Sql.Clear;
               Sql.Add('select * from ma_sms_contents');
               sQL.aDD('where Class=:Class order by sml_class');

               if path = '' then
                    Parambyname('Class').value := '116001'
               else
                    Parambyname('Class').value := Copy(path, 1, 6);

               Open;
               Last;
               if not isEmpty then
                    sTreePath := FormatFloat('000',
                         StrToInt(FieldByName('Sml_Class').AsString) + 1)
               else
                    sTreePath := '001';

               if title = '' then
               begin
                    showmessage('제목을 입력하세요.');
                    //EdtContName.SetFocus;
                    exit;
               end;

               Close;
               Sql.Clear;
               Sql.Add('insert into ma_sms_contents');
               Sql.Add('(Class,Sml_Class,title,content) values');
               Sql.Add('(:Class,:Sml_Class,:title,:content)');
               Parambyname('Class').value := Copy(path, 1, 6);
               Parambyname('Sml_Class').value := sTreepath;
               Parambyname('title').value := title;
               Parambyname('content').value := Content;
               ExecSql;
          end;
     end;

     ShowMessage('저장되었습니다');
     //     memSms.Text := '';
     //     EdtContNo.text := '';
end;


end.

