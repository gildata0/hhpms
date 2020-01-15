unit ibchuRegInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, ComCtrls, ExtCtrls,
  AdvPanel, AdvEdit;

type
  TibchuRegInput_f = class(TForm)
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
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label28: TLabel;
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
    edtTel3: TEdit;
    edtType: TEdit;
    edtTel4: TEdit;
    edtRegday: TEdit;
    edtId: TEdit;
    edtpass: TEdit;
    cbUpcheType: TComboBox;
    cbBank: TComboBox;
    dtSday: TDateTimePicker;
    edtjuso3: TEdit;
    edtJuso4: TEdit;
    edtPost2: TEdit;
    memEtc: TMemo;
    pnlbtn: TAdvPanel;
    btnSave: TAdvGlowButton;
    btnCls: TAdvGlowButton;
    btnNew: TAdvGlowButton;
    Label20: TLabel;
    edtMijigup: TAdvEdit;
    edtDiscount: TAdvEdit;
    Label12: TLabel;
    Label23: TLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure DataSave;
    procedure btnNewClick(Sender: TObject);
    procedure FieldClear;
    procedure btnClsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtnameKeyPress(Sender: TObject; var Key: Char);

    procedure ComboLoad;
    procedure bankLoad(varUcCode: string);
    procedure edtTel2Exit(Sender: TObject);
    procedure edtTel4Exit(Sender: TObject);
    procedure edtTel3Exit(Sender: TObject);
    procedure edtTel3KeyPress(Sender: TObject; var Key: Char);
    procedure edtTel4KeyPress(Sender: TObject; var Key: Char);
    procedure edtTel2KeyPress(Sender: TObject; var Key: Char);
  private
     varbankname:  string;
    { Private declarations }
  public
     saved: boolean;
     varsmode: string;
     procedure newSet;
     procedure fieldSet(varUcCode: string);
    { Public declarations }
  end;

var
  ibchuRegInput_f: TibchuRegInput_f;

implementation

uses uDM, uFunctions;

const
     Select_All = 'Select * from tblUpche';

     Select_Upche = 'Select * from tblUpche' + #13#10 +
          'Where UcCode=:UcCode';

     Delete_Upche = 'Delete from tblUpche' + #13#10 +
          'where UcCode=:UcCode';

{$R *.dfm}

procedure TibchuRegInput_f.btnSaveClick(Sender: TObject);
begin
      datasave;
      close;
end;

procedure TibchuRegInput_f.DataSave;
const
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

              {UcType
                 0  : 거채처
                 01 : 재료상
                 02 : 기공소
                 03 : 기타
                 }

          ParamByName('UcType').AsString := formatfloat('00', cbUpcheType.itemindex);//'01';
          ParamByName('UcCode').AsString := edtCode.text;
          ParamByName('UcSaupNo').AsString := edtSaupNo.text;
          ParamByName('UcSangho').AsString := edtname.text;
          ParamByName('UcDaepyo').AsString := edtDaePyo.text;
          ParamByName('UcUpJong').AsString := edtUpJong.text;
          ParamByName('UcUpTae').AsString := edtUptae.text;
          ParamByName('UcDamdang').AsString := edtDamdang.text;
          ParamByName('UcHp1').AsString := '';  //edtTel1.text;   //대표자 휴대폰
          ParamByName('UcHp2').AsString := edtTel2.text;
          ParamByName('UcTel1').AsString := edtTel3.text;
          ParamByName('UcTel2').AsString := edtTel4.text;  //fax
          ParamByName('UcZip').AsString := edtPost.text;
          ParamByName('UcZip2').AsString := edtPost2.text;
          ParamByName('UcJuso').AsString := edtJuso1.text;
          ParamByName('UcJuso2').AsString := edtJuso2.text;
          ParamByName('UcJuso3').AsString := edtJuso3.text;  //e-mail
          ParamByName('UcJuso4').AsString := '';  //edtJuso4.text;
          ParamByName('UcPayDay').AsString := '';  //edtPayday.text;
          ParamByName('UcBankCode').AsString := copy(cbBank.text,1,2);  // cbBank.text;
          ParamByName('UcBankSerial').AsString := edtBankCode.text;
          ParamByName('UcBankUser').AsString := edtBankName.text;
          ParamByName('UcMisu').AsFloat := 0;  //edtMijigup.value;
          ParamByName('UcSday').AsString := formatdatetime('YYYY-MM-DD', dtSday.date);
          if cbGerre.Checked = true then
               ParamByName('UcUse').AsString := '1'
          else
               ParamByName('UcUse').AsString := '0';

          ParamByName('UcDiscount').AsFloat := 0;  //edtDiscount.Value;
          ParamByName('UcRegDay').AsString := formatdatetime('YYYY-MM-DD', now);
          ParamByName('UcId').AsString := '';  //edtId.text;
          ParamByName('UcPass').AsString := '';  //edtPass.text;
          ParamByName('UcEtc').AsString := memEtc.text;
          execSql;
          showmessage('저장되었습니다!!');
          saved := true;

     end;
end;

procedure TibchuRegInput_f.btnNewClick(Sender: TObject);
begin

   fieldclear;
   newSet;

end;

procedure TibchuRegInput_f.FieldClear;
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

procedure TibchuRegInput_f.newSet;
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

     cbUpcheType.itemindex:=0;
end;

procedure TibchuRegInput_f.btnClsClick(Sender: TObject);
begin
    Close;
end;

procedure TibchuRegInput_f.FormShow(Sender: TObject);
begin
    fieldclear;
    dtsday.date:=now;
    ComboLoad;

    if varsmode = '' then
       newset
    else
       fieldset(varsmode);
end;

procedure TibchuRegInput_f.ComboLoad;
const

     Select_Bank = 'Select * from ma_basic_Bank' + #13#10 +
           'order by BankCode asc';

begin

     cbBank.items.clear;
     cbBank.items.Add('');
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Bank;
          Open;

          while not eof do
          begin
               cbBank.items.add(FieldByName('BankCode').AsString + ' ' + FieldByname('BankName').AsString);
               next;
          end;
     end;
     cbBank.itemindex := 0;

end;


procedure TibchuRegInput_f.FormDestroy(Sender: TObject);
begin
    ibchuRegInput_f := nil;
end;

procedure TibchuRegInput_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action := caFree;
end;

procedure TibchuRegInput_f.edtnameKeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
     begin

          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;
end;

procedure TibchuRegInput_f.fieldSet(varUcCode: string);
begin
     with Dm_f.SqlSel do
     begin
          SQL.Text := SELECT_upChe;
          ParamByName('UcCode').AsString := varUcCode;
          open;
          if not isEmpty then
          begin
               if checkInt(FieldByName('UcType').AsString ) then
               cbUpcheType.ItemIndex := FieldByName('UcType').AsInteger   //cbUpcheType.Items.IndexOf(FieldByName('UcType').AsString);
              else
                  cbUpcheType.ItemIndex := 0;
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

               bankLoad(FieldByName('UcBankCode').AsString);
               cbBank.Text := FieldByName('UcBankCode').AsString + ' ' + varbankname;

               edtBankCode.text := FieldByName('UcBankSerial').AsString;
               edtBankName.text := FieldByName('UcBankUser').AsString;
               edtMijigup.Value := FieldByName('UcMisu').AsFloat;
               edtDiscount.Value := FieldByName('UcDisCount').AsFloat;
               dtSday.date := strtodate(FieldByName('UcSDay').AsString);
               edtregday.text := FieldByName('UcRegday').AsString;
               edtId.text := FieldByName('UcID').AsString;
               edtPass.text := FieldByName('UcPass').AsString;

               if FieldByName('UcUse').AsString = '1' then
                  cbGerre.Checked := true
               else
                  cbGerre.Checked := false;

          end;
     end;
end;

procedure TibchuRegInput_f.bankLoad(varUcCode: string);
const

     Select_Bank = 'Select * from ma_basic_Bank' + #13#10 +
           'where BankCode=:BkCode';

begin

     with dm_f.sqlTemp do
     begin
          SQL.Text := Select_Bank;
          paramByName('BkCode').AsString := varUcCode;
          Open;

          if not IsEmpty then
             varbankname := FieldByname('BankName').AsString
          else
             varbankname := '';

     end;

end;


procedure TibchuRegInput_f.edtTel2Exit(Sender: TObject);
begin
    edtTel2.text := call_tel_type(edtTel2.text);
end;

procedure TibchuRegInput_f.edtTel4Exit(Sender: TObject);
begin
    edtTel4.text := call_tel_type(edtTel4.text);
end;

procedure TibchuRegInput_f.edtTel3Exit(Sender: TObject);
begin
   edtTel3.text := call_tel_type(edtTel3.text);
end;

procedure TibchuRegInput_f.edtTel3KeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
     begin
          edtTel3.text := call_tel_type(edtTel3.text);
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;
end;

procedure TibchuRegInput_f.edtTel4KeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
     begin
          edtTel4.text := call_tel_type(edtTel4.text);
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;
end;

procedure TibchuRegInput_f.edtTel2KeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
     begin
          edtTel2.text := call_tel_type(edtTel2.text);
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;
end;

end.
