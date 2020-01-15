unit BasicInfo;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls,  AdvGlowButton,
     ExtCtrls, AdvPanel;

type
     TbasicInfo_f = class(TForm)
          spSkinPanel1: TAdvPanel;
          spSkinPanel2: TAdvPanel;
          spSkinLabel1: TLabel;
          spSkinLabel2: TLabel;
          spSkinLabel3: TLabel;
          spSkinLabel4: TLabel;
          edtSaupName: TEdit;
          edtSaupNo: TEdit;
          edtDepyoName: TEdit;
          spSkinPanel3: TAdvPanel;
          spSkinLabel5: TLabel;
          spSkinLabel6: TLabel;
          edtJuso: TEdit;
          edtTel: TEdit;
          spSkinLabel7: TLabel;
          edtCode: TEdit;
          btnSave: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          procedure FormShow(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure edtCodeKeyPress(Sender: TObject; var Key: Char);
          procedure btnClsClick(Sender: TObject);
     private
    { Private declarations }
          procedure fieldClear;
          procedure fieldSet;
     public
    { Public declarations }
     end;

var
     basicInfo_f: TbasicInfo_f;

implementation
uses main, dm;
{$R *.dfm}

procedure TbasicInfo_f.FormShow(Sender: TObject);
begin
     caption := '�⺻ ���� ���';
     fieldset;

end;

procedure TbasicInfo_f.FieldSet;
begin

     with DM_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from tblBasicInfo');
          open;
          if not isEmpty then
          begin
               edtCode.Text := fieldbyName('jumpocode').AsString;
               edtSaupName.Text := fieldbyName('SaupName').AsString;
               edtSaupNo.Text := fieldbyName('SaupNo').AsString;
               edtJuso.Text := fieldbyName('Juso').AsString;
               edtTel.Text := fieldbyName('Tel').AsString;
               edtDepyoName.Text := fieldbyName('DepyoName').AsString;
          end
          else
               fieldclear;
     end;
end;

procedure TbasicInfo_f.FieldClear;
begin
     edtCode.Text := '';
     edtSaupName.Text := '';
     edtSaupNo.Text := '';
     edtJuso.Text := '';
     edtTel.Text := '';
     edtDepyoName.Text := '';
end;


procedure TbasicInfo_f.btnSaveClick(Sender: TObject);
begin
     if edtCode.Text = '' then
     begin
          showmessage('�����ڵ带 ����ϼ���.');
          edtCode.setFocus;
          exit;
     end;
     if edtSaupName.Text = '' then
     begin
          showmessage('�������� ����ϼ���.');
          edtSaupName.setFocus;
          exit;
     end;
     if edtSaupNo.Text = '' then
     begin
          showmessage('����ڵ�Ϲ�ȣ�� ����ϼ���.');
          edtSaupNo.setFocus;
          exit;
     end;
     if edtJuso.Text = '' then
     begin
          showmessage('�ּҸ� ����ϼ���.');
          edtJuso.setFocus;
          exit;
     end;
     if edtTel.Text = '' then
     begin
          showmessage('��ȭ��ȣ�� ����ϼ���.');
          edtTel.setFocus;
          exit;
     end;
     if edtDepyoName.Text = '' then
     begin
          showmessage('��ǥ�ڸ��� ����ϼ���.');
          edtDepyoName.setFocus;
          exit;
     end;

     with DM_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('delete from tblBasicInfo');
          execSql;

          Close;
          Sql.Clear;
          Sql.Add('insert into tblBasicInfo');
          Sql.Add('(JumpoCode, SaupName, SaupNo, Tel, Juso, DepyoName) values');
          Sql.Add('(:JumpoCode, :SaupName, :SaupNo, :Tel, :Juso, :DepyoName) ');
          ParamByName('JumpoCode').AsString := edtCode.text;
          ParamByName('SaupName').AsString := edtSaupname.text;
          ParamByName('SaupNo').AsString := edtSaupNo.text;
          ParamByName('Tel').AsString := edtTel.text;
          ParamByName('Juso').AsString := edtJuso.text;
          ParamByName('DepyoName').AsString := edtDepyoName.text;
          execSql;
     end;
     close;

end;

procedure TbasicInfo_f.FormDestroy(Sender: TObject);
begin
     basicInfo_f := nil;
end;

procedure TbasicInfo_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TbasicInfo_f.edtCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          key := #0;
     end;

end;

procedure TbasicInfo_f.btnClsClick(Sender: TObject);
begin
     close;
end;

end.

