unit ibchuReg;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls,
      AdvPanel, AdvGlowButton,
     Grids, BaseGrid, AdvGrid,  AdvEdit;

type
     TibchuReg_f = class(TForm)
          pnlbtn: TAdvPanel;
          pnlMain: TAdvPanel;
          Label2: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          Label6: TLabel;
          Label7: TLabel;
          Label8: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          Label11: TLabel;
          Label12: TLabel;
          Label1: TLabel;
          Label13: TLabel;
          Label14: TLabel;
          Label15: TLabel;
          Label16: TLabel;

          edtSaupNo: TEdit;
          edtupjong: TEdit;
          edtUptae: TEdit;
          edtjuso1: TEdit;
          edtDaepyo: TEdit;
          edtCode: TEdit;
          edtname: TEdit;
          edtTel1: TEdit;
          edtTel2: TEdit;
          edtDamdang: TEdit;
          edtJuso2: TEdit;
          cbGerre: TCheckBox;
          edtPayday: TEdit;
          edtBankName: TEdit;
          edtBankCode: TEdit;
          edtBank: TEdit;
          edtPost: TEdit;
          Label18: TLabel;
          Label19: TLabel;
          edtTel3: TEdit;
          Label21: TLabel;
          edtType: TEdit;
          Label22: TLabel;
          edtTel4: TEdit;
          Label23: TLabel;
          Label24: TLabel;
          edtRegday: TEdit;
          Label25: TLabel;
          Label26: TLabel;
          edtId: TEdit;
          edtpass: TEdit;
          cbUpcheType: TComboBox;
          cbBank: TComboBox;
          dtSday: TDateTimePicker;
          Label17: TLabel;
          Label27: TLabel;
          edtjuso3: TEdit;
          edtJuso4: TEdit;
          edtPost2: TEdit;
          Label28: TLabel;
          memEtc: TMemo;
          btnCancel: TAdvGlowButton;
          btnSave: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          AdvGlowButton1: TAdvGlowButton;
    edtMijigup: TAdvEdit;
    edtDiscount: TAdvEdit;
          procedure FormShow(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure btnClsClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
          procedure btnModClick(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure cbUpcheTypeChange(Sender: TObject);
          procedure cbBankChange(Sender: TObject);
          procedure edtjuso1KeyPress(Sender: TObject; var Key: Char);
          procedure btnSaveClick(Sender: TObject);
          procedure edtjuso3KeyPress(Sender: TObject; var Key: Char);
          procedure edtnameKeyPress(Sender: TObject; var Key: Char);
          procedure edtSaupNoChange(Sender: TObject);
          procedure AdvGlowButton1Click(Sender: TObject);
     private
          { Private declarations }
          procedure ComboLoad;
          procedure DataSave;
     public
          { Public declarations }
          saved: boolean;
          procedure fieldSet(varUcCode: string);
          procedure FieldClear;
          procedure newSet;
     end;

var
     ibchuReg_f: TibchuReg_f;

implementation

uses main, DM, uFunctions, DynamicPrint;
const
     Select_All = 'Select * from tblUpche';

     Select_Upche = 'Select * from tblUpche' + #13#10 +
          'Where UcCode=:UcCode';
     Insert_Upche = 'Insert Into tblUpche' + #13#10 +
          '(UcCode,UcSaupNo,UcSangho,UcType,UcDaepyo,' + #13#10 +
          'UcUpJong,UcUpTae,UcDamdang,UcHp1,' + #13#10 +
          'UcHp2,UcTel1,UcTel2,UcZip,UcZip2,UcJuso,UcJuso2,UcJuso3,UcJuso4,' + #13#10 +
          'UcPayDay,UcBankCode,UcBankSerial,UcBankUser, UcMisu,' + #13#10 +
          'UcSday,UcUse,UcDiscount,UcRegDay, UcId, UcPass, ucEtc) Values ' + #13#10 +
          '(:UcCode, :UcSaupNo, :UcSangho, :UcType, :UcDaepyo, ' + #13#10 +
          ':UcUpJong, :UcUpTae, :UcDamdang, :UcHp1,' + #13#10 +
          ':UcHp2, :UcTel1, :UcTel2, :UcZip,:UcZip2, :UcJuso,:UcJuso2,:UcJuso3,:UcJuso4, ' + #13#10 +
          ':UcPayDay, :UcBankCode, :UcBankSerial, :UcBankUser, :UcMisu, ' + #13#10 +
          ':UcSday, :UcUse, :UcDiscount, :UcRegDay, :UcId, :UcPass, :ucEtc)';

     Update_Upche = 'Update tblUpche Set' + #13#10 +
          'UcSaupNo = :UcSaupNo, UcSangho = :UcSangho, ' + #13#10 +
          'UcType = :UcType, UcDaepyo = :UcDaepyo, UcUpJong = :UcUpJong,' + #13#10 +
          'UcUpTae = :UcUpTae, UcDamdang = :UcDamdang, UcHp1 = :UcHp1, UcHp2 = :UcHp2,' + #13#10 +
          'UcTel1 = :UcTel1, UcTel2 = :UcTel2, UcZip = :UcZip, UcZip2 = :UcZip2, UcJuso = :UcJuso,UcJuso2 = :UcJuso2,UcJuso3 = :UcJuso3,UcJuso4 = :UcJuso4,' + #13#10 +
          'UcPayDay = :UcPayDay, UcBankCode = :UcBankCode,UcId=:UcId, UcPass=:UcPass,' + #13#10 +
          'UcBankSerial = :UcBankSerial, UcMisu = :UcMisu, UcSday = :UcSday,UcEtc = :UcEtc,' + #13#10 +
          'UcUse = :UcUse, UcDiscount = :UcDiscount, UcRegDay = :UcRegDay,UcBankUser=:UcBankUser' + #13#10 +
          'where UcCode=:UcCode';
     Delete_Upche = 'Delete from tblUpche' + #13#10 +
          'where UcCode=:UcCode';

     {$R *.dfm}

procedure TibchuReg_f.FieldClear;
begin
     saved := true;

     edtType.text := '';
     edtId.text := '';
     edtPass.text := '';
     edtSaupNo.text := '';
     edtupjong.text := '';
     edtUptae.text := '';
     edtjuso1.text := '';
     edtDaepyo.text := '';
     edtCode.text := '';
     edtname.text := '';
     edtTel1.text := '';
     edtTel2.text := '';
     edtTel3.text := '';
     edtTel4.text := '';
     edtDamdang.text := '';
     edtMijigup.value := 0;
     edtJuso2.text := '';
     edtJuso3.text := '';
     edtJuso4.text := '';
     edtPayday.text := '';
     edtBankName.text := '';
     edtBankCode.text := '';
     edtBank.text := '';
     edtPost.text := '';
     edtPost2.text := '';
     edtregday.text := '';
     edtDiscount.value := 0;
     cbUpcheType.itemindex := -1;
     cbBank.itemindex := -1;
     memEtc.text := '';

     edtName.SetFocus;
end;

procedure TibchuReg_f.FormShow(Sender: TObject);
begin
     caption := '관련 업체 등록';
     fieldclear;
     dtsday.date:=now;

     ComboLoad;
     edtType.text := '매입처';
end;

procedure TibchuReg_f.FormDestroy(Sender: TObject);
begin
     ibchuReg_f := nil;
end;

procedure TibchuReg_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TibchuReg_f.btnClsClick(Sender: TObject);
begin
     Close;
end;

procedure TibchuReg_f.fieldSet(varUcCode: string);
begin
     with Dm_f.SqlSel do
     begin
          SQL.Text := SELECT_upChe;
          ParamByName('UcCode').AsString := varUcCode;
          open;
          if not isEmpty then
          begin
               cbUpcheType.ItemIndex := cbUpcheType.Items.IndexOf(FieldByName('UcType').AsString);
               edtCode.text := FieldByName('UcCode').AsString;
               edtname.text := FieldByName('UcSangho').AsString;
               edtSaupNo.text := FieldByName('UcSaupNo').AsString;
               edtupjong.text := FieldByName('UcUpJong').AsString;
               edtUptae.text := FieldByName('UcUpTae').AsString;
               edtTel3.text := FieldByName('UcTel1').AsString;
               edtTel4.text := FieldByName('UcTel2').AsString;
               edtDaepyo.text := FieldByName('UcDaepyo').AsString;
               edtTel1.text := FieldByName('UcHp1').AsString;
               edtDamdang.text := FieldByName('UcDamdang').AsString;
               edtTel2.text := FieldByName('UcHp2').AsString;
               edtPost.text := FieldByName('UcZip').AsString;
               edtPost2.text := FieldByName('UcZip2').AsString;
               edtJuso1.text := FieldByName('UcJuso').AsString;
               edtJuso2.text := FieldByName('UcJuso2').AsString;
               edtJuso3.text := FieldByName('UcJuso3').AsString;
               edtJuso4.text := FieldByName('UcJuso4').AsString;
               edtPayday.text := FieldByName('UcPayDay').AsString;
               cbBank.ItemIndex := cbBank.Items.IndexOf(FieldByName('UcBankCode').AsString);
               edtBankCode.text := FieldByName('UcBankSerial').AsString;
               edtBankName.text := FieldByName('UcBankUser').AsString;
               edtMijigup.Value := FieldByName('UcMisu').AsFloat;
               edtDiscount.Value := FieldByName('UcDisCount').AsFloat;
               dtSday.date := strtodate(FieldByName('UcSDay').AsString);
               edtregday.text := FieldByName('UcRegday').AsString;
               edtId.text := FieldByName('UcID').AsString;
               edtPass.text := FieldByName('UcPass').AsString;
          end;
     end;
end;

procedure TibchuReg_f.btnDelClick(Sender: TObject);
begin
     if MessageDlg('선택하신 자료를 정말로 삭제합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
          with dm_f.sqlwork do
          begin
               SQL.Text := Delete_Upche;
               ParamByName('UcCode').AsString := edtCode.text;
               execsql;
               showmessage('성공적으로 삭제되었습니다');
          end;
     end
     else
          showmessage('취소되었습니다.');

end;

procedure TibchuReg_f.btnAddClick(Sender: TObject);
begin
     fieldclear;
     cbUpcheType.Setfocus;
end;

procedure TibchuReg_f.btnModClick(Sender: TObject);
begin
     edtCode.Setfocus;
end;

procedure TibchuReg_f.btnCancelClick(Sender: TObject);
begin
     FieldClear;

end;

procedure TibchuReg_f.ComboLoad;
const
     Select_Upchetype = 'Select * from tblUpcheType' + #13#10 +
          'order by UtCode Asc';
     Select_Bank = 'Select * from tblBank' + #13#10 +
          'order by BkCode Asc';

begin
     cbUpcheType.items.clear;
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Upchetype;
          Open;

          while not eof do
          begin
               cbUpcheType.items.add(FieldByName('UtCode').AsString);
               next;
          end;
     end;
     cbUpcheType.itemIndex := 0;
     cbBank.items.clear;
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Bank;
          Open;

          while not eof do
          begin
               cbBank.items.add(FieldByName('BkCode').AsString);
               next;
          end;
     end;
     cbBank.itemindex := 0;

end;

procedure TibchuReg_f.cbUpcheTypeChange(Sender: TObject);
const
     Select_UpcheType = 'Select * from tblUpcheType' + #13#10 +
          'where UtCode=:UtCode';

begin
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_UpcheType;
          paramByName('UtCode').AsString := CbUpchetype.text;
          Open;
          edtType.text := FieldByname('UtName').AsString;
     end;

end;

procedure TibchuReg_f.cbBankChange(Sender: TObject);
const
     Select_Bank = 'Select * from tblBank' + #13#10 +
          'where BkCode=:BkCode';

begin
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Bank;
          paramByName('BkCode').AsString := CbBank.text;
          Open;
          edtBank.text := FieldByname('BkName').AsString;
     end;

end;

procedure TibchuReg_f.edtjuso1KeyPress(Sender: TObject; var Key: Char);
var
     FJuso: string;
begin

//     if Key = #13 then
//     begin
//          if edtjuso1.Text <> '' then
//          begin
//               Fjuso := FindZip(edtjuso1.Text);
//               edtPost.Text := Trim(SubStr(Fjuso, 1, '^'));
//               edtJuso1.Text := Trim(SubStr(Fjuso, 2, '^'));
//               edtJuso2.Text := Trim(SubStr(Fjuso, 3, '^'));
//               if edtTel3.Text = '' then
//                    //            edttel3.Text := FindDDD(edtJuso1.Text) + '-';
//                    if edtPost.Text <> '' then
//                    begin
//                         edtJuso2.SetFocus;
//                         Key := #0;
//                    end
//                    else
//                         Key := #0;
//
//          end
//          else
//          begin
//               SelectNext(sender as TWinControl, True, True);
//               Key := #0;
//          end;
//     end;
end;

procedure TibchuReg_f.newSet;
const
     SelectMAX_Upche = 'SELECT MAX(convert(integer, UcCode,121)) As MaxCode  FROM tblUpche';

begin
     with dm_f.SqlWork do
     begin
          SQL.Text := SELECTMAX_upche;
          Open;
          if fieldByName('MaxCode').AsString <> '' then
               edtCode.Text :=
                    formatFloat('0000',
                    StrToInt(fieldByName('MaxCode').AsString) + 1)
          else
               edtCode.Text := '0001';
     end;
end;

procedure TibchuReg_f.DataSave;
begin
     with dm_f.sqltemp do
     begin
          SQL.Text := Select_UpChe;
          ParamByName('UcCode').AsString := edtCode.text;
          open;
     end;

     with dm_f.sqlwork do
     begin
          if dm_f.sqltemp.isEmpty then
               SQL.Text := Insert_Upche
          else
               SQL.Text := Update_Upche;

          ParamByName('UcType').AsString := cbUpcheType.text;
          ParamByName('UcCode').AsString := edtCode.text;
          ParamByName('UcSaupNo').AsString := edtSaupNo.text;
          ParamByName('UcSangho').AsString := edtname.text;
          ParamByName('UcDaepyo').AsString := edtDaePyo.text;
          ParamByName('UcUpJong').AsString := edtUpJong.text;
          ParamByName('UcUpTae').AsString := edtUptae.text;
          ParamByName('UcDamdang').AsString := edtDamdang.text;
          ParamByName('UcHp1').AsString := edtTel1.text;
          ParamByName('UcHp2').AsString := edtTel2.text;
          ParamByName('UcTel1').AsString := edtTel3.text;
          ParamByName('UcTel2').AsString := edtTel4.text;
          ParamByName('UcZip').AsString := edtPost.text;
          ParamByName('UcZip2').AsString := edtPost2.text;
          ParamByName('UcJuso').AsString := edtJuso1.text;
          ParamByName('UcJuso2').AsString := edtJuso2.text;
          ParamByName('UcJuso3').AsString := edtJuso3.text;
          ParamByName('UcJuso4').AsString := edtJuso4.text;
          ParamByName('UcPayDay').AsString := edtPayday.text;
          ParamByName('UcBankCode').AsString := cbBank.text;
          ParamByName('UcBankSerial').AsString := edtBankCode.text;
          ParamByName('UcBankUser').AsString := edtBankName.text;
          ParamByName('UcMisu').AsFloat := edtMijigup.value;
          ParamByName('UcSday').AsString := formatdatetime('YYYY-MM-DD', dtSday.date);
          if cbGerre.Checked = true then
               ParamByName('UcUse').AsString := '1'
          else
               ParamByName('UcUse').AsString := '0';

          ParamByName('UcDiscount').AsFloat := edtDiscount.Value;
          ParamByName('UcRegDay').AsString := formatdatetime('YYYY-MM-DD', now);
          ParamByName('UcId').AsString := edtId.text;
          ParamByName('UcPass').AsString := edtPass.text;
          ParamByName('UcEtc').AsString := memEtc.text;
          execSql;
          showmessage('성공적으로 저장되었습니다');
          saved := true;

     end;

end;

procedure TibchuReg_f.btnSaveClick(Sender: TObject);
begin
     datasave;
end;

procedure TibchuReg_f.edtjuso3KeyPress(Sender: TObject; var Key: Char);
var
     FJuso: string;
begin

     if Key = #13 then
     begin
          if edtjuso3.Text <> '' then
          begin
               //               Fjuso := FindZip(edtjuso3.Text);
               edtPost2.Text := Trim(SubStr(Fjuso, 1, '^'));
               edtJuso3.Text := Trim(SubStr(Fjuso, 2, '^'));
               edtJuso4.Text := Trim(SubStr(Fjuso, 3, '^'));
               if edtPost2.Text <> '' then
               begin
                    edtJuso4.SetFocus;
                    Key := #0;
               end
               else
                    Key := #0;

          end
          else
          begin
               SelectNext(sender as TWinControl, True, True);
               Key := #0;
          end;
     end;

end;

procedure TibchuReg_f.edtnameKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;

end;

procedure TibchuReg_f.edtSaupNoChange(Sender: TObject);
begin
     saved := false;
end;

procedure TibchuReg_f.AdvGlowButton1Click(Sender: TObject);
begin
     if saved = false then
     begin
          if application.MessageBox('저장하시겠습니까?','저장확인',  MB_YESNO) = IDYES then
          begin
               Datasave;
          end;
     end;
     fieldclear;
     ComboLoad;
     newSet;
     edtType.text := '매입처';
end;

end.

{
UcCode
UcSaupNo
UcSangho
UcType
UcDaepyo
UcUpJong
UcUpTae
UcDamdang
UcHp1
UcHp2
UcTel1
UcTel2
UcZip
UcJuso
UcPayDay
UcBankCode
UcBankSerial
UcMisu
UcSday
UcUse
UcDiscount
UcRegDay
}

