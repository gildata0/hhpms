unit ibgo;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,
      AdvPanel, AdvGlowButton, Grids, BaseGrid, AdvGrid,
     AdvPageControl, AdvEdit, AdvMoneyEdit, iniFiles, AdvCombo, ColCombo,
     AdvOfficeButtons;

type
     Tibgo_f = class(TForm)
          pnlInput: TAdvPanel;
          Label7: TLabel;
          Label8: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          Label12: TLabel;
          Label11: TLabel;
          Label13: TLabel;
          edtCode: TEdit;
          edtname: TEdit;
          edtDanwi: TEdit;
          memChamgo: TMemo;
          edtDanga: TAdvMoneyEdit;
          edtEa: TAdvMoneyEdit;
          edtPrice: TAdvMoneyEdit;
          pnlbtn: TAdvPanel;
          btnCancel: TAdvGlowButton;
          btnSave: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          dpIbgo: TDateTimePicker;
          Label1: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          lblbgoman: TLabel;
          cbUser: TColumnComboBox;
          cbibchu: TColumnComboBox;
          cbGubun: TColumnComboBox;
          cbCont: TAdvOfficeCheckBox;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
          procedure btnModClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure cbIbchuChange(Sender: TObject);
          procedure cbIbchuExit(Sender: TObject);
          procedure cbGubunChange(Sender: TObject);
          procedure cbGubunExit(Sender: TObject);
          procedure edtCodeExit(Sender: TObject);
          procedure dpIbgoKeyPress(Sender: TObject; var Key: Char);
          procedure edtDangaChange(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure memChamgoKeyPress(Sender: TObject; var Key: Char);
          procedure FormCreate(Sender: TObject);
          procedure edtnameExit(Sender: TObject);
     private
    { Private declarations }
          procedure FieldClear;
          procedure FieldClear2;
          procedure ComboLoad;
          procedure saveIbgo(varCode: string);
          procedure fieldsetPummok(Code: string);
 //   procedure jegoSet(varPumCode: string; varQty: integer);

     public
    { Public declarations }
          modFlag, InsFlag: boolean;
          selectedCode: string;
          procedure fieldset(Code: string);
     end;

var
     ibgo_f: Tibgo_f;

implementation

uses main, DM, uJegoset, DynamicPrint, findpummok;
const

     Select_All = 'Select * from tblPummok';
     Select_Pummok = 'Select * from tblPummok' + #13#10 +
          'Where PmBarcode=:PmBarcode';
     Insert_Pummok = 'Insert Into tblPummok' + #13#10 +
          '(PmuCode,PmBarCode,PmName,Pmmodel,PmDanwi,' + #13#10 +
          'Pmpic,PmBuncode,PmJejoCode,PmLocate,PmJegoMin,' + #13#10 +
          'PmJegoMax,PmJego,PmPrice,PmRate,PmRegDay) values' + #13#10 +
          '(:PmuCode,:PmBarCode,:PmName,:Pmmodel, :PmDanwi,   ' + #13#10 +
          ':Pmpic,:PmBuncode,:PmJejoCode,:PmLocate,:PmJegoMin,' + #13#10 +
          ':PmJegoMax,:PmJego,:PmPrice,:PmRate,:PmRegDay)';
     Update_Pummok = 'Update tblPummok Set' + #13#10 +
          'PmuCode=:PmuCode,PmName=:PmName,Pmmodel=:Pmmodel,PmDanwi=:PmDanwi,' + #13#10 +
          'Pmpic=:Pmpic,PmBuncode=:PmBuncode,PmJejoCode=:PmJejoCode,PmLocate=:PmLocate,PmJegoMin=:PmJegoMin,' + #13#10 +
          'PmJegoMax=:PmJegoMax,PmJego=:PmJego,PmPrice=:PmPrice,PmRate=:PmRate,PmRegDay=:PmRegDay' + #13#10 +
          'where PmBarCode=:PmBarCode';
     Delete_Pummok = 'Delete from tblPummok' + #13#10 +
          'where PmBarCode=:PmBarCode';

     Select_Ibgo = 'Select * from tblIbgo' + #13#10 +
          'where IgNo=:IgNo';



{$R *.dfm}


procedure Tibgo_f.FieldClear;
begin

     memChamgo.text := '';

     cbGubun.ItemIndex := -1;
     cbIbchu.ItemIndex := -1;
     cbUser.ItemIndex := -1;






     edtCode.text := '';
     edtname.text := '';
     edtDanwi.text := '';

     edtEa.Value := 0;
     edtDanga.Value := 0;
     edtPrice.Value := 0;

     dpIbgo.date := now;
end;

procedure Tibgo_f.FieldClear2;
begin

     edtCode.text := '';
     edtname.text := '';
     edtDanwi.text := '';
     edtEa.Value := 0;
     edtDanga.Value := 0;
     edtPrice.Value := 0;
     memChamgo.text := '';





end;

procedure Tibgo_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Tibgo_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     caption := '입고 등록';

     fieldclear;
     ComboLoad;

end;

procedure Tibgo_f.btnClsClick(Sender: TObject);
begin
     close;
end;


procedure Tibgo_f.ComboLoad;
const
     Select_BunSmall = 'Select * from tblBunSmall' + #13#10 +
          'order by Bscode Asc';
     Select_BunMiddle = 'Select * from tblBunMiddle' + #13#10 +
          'order by Bmcode Asc';
     Select_BunLarge = 'Select * from tblBunLarge' + #13#10 +
          'order by Blcode Asc';
     Select_Upche = 'Select ucCode, ucSangho from tblUpche' + #13#10 +
//          'where UcType=:UcType' + #13#10 +
     'order by UcCode Asc';
     Select_Locate = 'Select * from tblLocate' + #13#10 +
          'order by LcCode Asc';
     Select_UpcheType = 'Select * from tblUpcheType' + #13#10 +
          'order by UtCode Asc';
     Select_IbgoType = 'Select * from tblIbgoType' + #13#10 +
          'order by ItCode Asc';
     Select_Sawon = 'Select * from tblsawon' + #13#10 +
          'order by sabun Asc';

begin

     with cbibchu do
     begin
          Columns.Clear;
          ComboItems.Clear;
          with Columns.Add do
          begin
               Width := 30;
               Font.Style := [fsBold];
          end;
          with Columns.Add do
          begin
               Width := 70;
               Alignment := taRightJustify;
               Font.Color := clBlue;
               Font.Style := [fsBold];
          end;

          with dm_f.sqlwork do
          begin
               SQL.Text := Select_Upche;
               Open;

               while not eof do
               begin
                    with ComboItems.Add do
                    begin
                         Strings.Add(FieldByName('UcCode').AsString);
                         Strings.Add(FieldByName('UcSangHo').AsString);
                    end;
                    next;
               end;
          end;
     end;

     with cbUser do
     begin
          Columns.Clear;
          ComboItems.Clear;
          with Columns.Add do
          begin
               Width := 30;
               Font.Style := [fsBold];
          end;
          with Columns.Add do
          begin
               Width := 70;
               Alignment := taRightJustify;
               Font.Color := clBlue;
               Font.Style := [fsBold];
          end;

          with dm_f.sqlwork do
          begin
               SQL.Text := Select_Sawon;
               Open;

               while not eof do
               begin
                    with ComboItems.Add do
                    begin
                         Strings.Add(FieldByName('sabun').AsString);
                         Strings.Add(FieldByName('saname1').AsString);
                    end;
                    next;
               end;
          end;
     end;
     with cbGubun do
     begin
          Columns.Clear;
          ComboItems.Clear;
          with Columns.Add do
          begin
               Width := 30;
               Font.Style := [fsBold];
          end;
          with Columns.Add do
          begin
               Width := 70;
               Alignment := taRightJustify;
               Font.Color := clBlue;
               Font.Style := [fsBold];
          end;

          with dm_f.sqlwork do
          begin
               SQL.Text := Select_IbgoType;
               Open;

               while not eof do
               begin
                    with ComboItems.Add do
                    begin
                         Strings.Add(FieldByName('ItCode').AsString);
                         Strings.Add(FieldByName('ItName').AsString);
                    end;
                    next;
               end;
          end;
     end;

end;

procedure Tibgo_f.btnAddClick(Sender: TObject);
begin
     fieldclear2;
     edtname.Setfocus;
end;

procedure Tibgo_f.btnModClick(Sender: TObject);
begin
     cbIbchu.Setfocus;

end;

procedure Tibgo_f.btnSaveClick(Sender: TObject);
begin
     saveIbgo(selectedCode);
     if cbCont.Checked then
     begin
          FieldClear2;
          edtname.SetFocus;
     end;
end;


procedure Tibgo_f.saveIbgo(varCode: string);
const


     Insert_ibgo = 'Insert Into tblibgo' + #13#10 +
          '(IgUser, IgDay,IgTime,IgNo,' + #13#10 +
          'IgUCode,IgType,IgQty,IgAmount,' + #13#10 +
          'IgPCode,IgPNmae,IgPPrice,IgRemark, ' + #13#10 +
          'IgPDanwi,IgPDanga,IgPQty,IgPAmount)values' + #13#10 +
          '(:IgUser, :IgDay,:IgTime,:IgNo,' + #13#10 +
          ':IgUCode,:IgType,:IgQty,:IgAmount,' + #13#10 +
          ':IgPCode,:IgPNmae,:IgPPrice,:IgRemark, ' + #13#10 +
          ':IgPDanwi,:IgPDanga,:IgPQty,:IgPAmount)';

     Update_ibgo = 'Update tblIbgo Set' + #13#10 +
          'IgUser=:IgUser,IgDay=:IgDay,' + #13#10 +
          'IgTime=:IgTime,IgRemark=:IgRemark,  ' + #13#10 +
          'IgUCode=:IgUCode,IgType=:IgType, ' + #13#10 +
          'IgQty=:IgQty,IgAmount=:IgAmount,' + #13#10 +
          'IgPCode=:IgPCode,IgPNmae=:IgPNmae, ' + #13#10 +
          'IgPPrice=:IgPPrice,IgPDanwi=:IgPDanwi, ' + #13#10 +
          'IgPDanga=:IgPDanga,IgPQty=:IgPQty, ' + #13#10 +
          'IgPAmount=:IgPAmount' + #13#10 +
          'where IgNo=:IgNo';
begin

     if cbIbchu.text = '' then
     begin
          showmessage('입고처 선택되지 않았습니다.');
          cbIbchu.Setfocus;
          exit;
     end;
     if cbGubun.text = '' then
     begin
          showmessage('입고구분이 선택되지 않았습니다.');
          cbGubun.Setfocus;
          exit;
     end;
     if edtCode.text = '' then
     begin
          showmessage('자재코드가 없습니다.');
          edtCode.Setfocus;
          exit;
     end;
     if edtName.text = '' then
     begin
          showmessage('자재명이 없습니다.');
          edtName.Setfocus;
          exit;
     end;
     if edtDanga.Value = 0 then
     begin
          showmessage('자재단가가 0 입니다.');
          edtDanga.Setfocus;
          exit;
     end;
     if edtEa.Value = 0 then
     begin
          showmessage('수량이 0 입니다.');
          edtEa.Setfocus;
          exit;
     end;

     with dm_f.sqlWork do
     begin
          if InsFlag = true then
          begin
               SQL.Text := Insert_Ibgo;
               ParamByName('IgNo').AsString := dm_f.MakeMaxIbgoCode;
          end

          else if ModFlag = true then
          begin
               SQL.Text := Update_Ibgo;
               ParamByName('IgNo').AsString := varCode;
          end;

          ParamByName('IgUser').AsString := cbUser.ColumnItems[cbUser.itemindex, 1];
          ParamByName('IgDay').AsString := formatDateTime('YYYY-MM-DD', now);
          ParamByName('IgTime').AsString := formatdatetime('HH:MM:SS', now);
          ParamByName('IgUCode').AsString := cbIbchu.ColumnItems[cbIbchu.itemindex, 0];
          ParamByName('IgType').AsString := cbGubun.ColumnItems[cbGubun.itemindex, 0];
          ParamByName('IgQty').AsFloat := edtEa.Value;
          ParamByName('IgAmount').AsFloat := edtPrice.Value;
          ParamByName('IgPCode').AsString := edtCode.text;
          ParamByName('IgPNmae').AsString := edtName.text;
          ParamByName('IgPPrice').AsFloat := edtDanga.Value;
          ParamByName('IgPDanwi').AsString := edtDanwi.text;
          ParamByName('IgPDanga').AsFloat := edtDanga.Value;
          ParamByName('IgPQty').AsFloat := edtEa.Value;
          ParamByName('IgPAmount').AsFloat := edtPrice.Value;
          ParamByName('IgRemark').AsString := MemChamgo.text;
          execSql;
          showmessage('성공적으로 저장되었습니다');
     end;

        jegoset(edtCode.text, round(edtEa.Value));


end;

procedure Tibgo_f.fieldset(Code: string);
begin
     with Dm_f.SqlSel do
     begin
          SQL.Text := SELECT_Ibgo;
          ParamByName('IgNo').AsString := Code;
          open;
          if not IsEmpty then
          begin
               dpIbgo.Date := FieldByName('IgDay').AsDateTime;
               cbUser.ItemIndex := 0; ////FieldByName('IgUser').AsString;
               cbGubun.ItemIndex := 0; //FieldByName('IgUCode').AsString;
               cbibchu.ItemIndex := 0; //FieldByName('IgType').AsString;
               edtCode.text := FieldByName('IgPCode').AsString;
               edtName.text := FieldByName('IgPNmae').AsString;
               edtDanwi.text := FieldByName('IgPDanwi').AsString;
               edtDanga.Value := FieldByName('IgPDanga').AsFloat;
               edtEa.Value := FieldByName('IgPQty').AsFloat;
               edtPrice.Value := FieldByName('IgPAmount').AsFloat;
               MemChamgo.text := FieldByName('IgRemark').AsString;
          end;
     end;
end;


procedure Tibgo_f.fieldsetPummok(Code: string);
begin
     with Dm_f.SqlSel do
     begin
          SQL.Text := SELECT_Pummok;
          ParamByName('PmBarCode').AsString := Code;
          open;
          if not IsEmpty then
          begin

               edtCode.text := FieldByName('PmBarCode').AsString;
               edtName.text := FieldByName('PmName').AsString;
               edtDanwi.text := FieldByName('PmDanwi').AsString;
               edtDanga.text := FieldByName('PmPrice').AsString;
          end;
     end;
end;




procedure Tibgo_f.btnCancelClick(Sender: TObject);
begin
     fieldclear;

end;

procedure Tibgo_f.cbIbchuChange(Sender: TObject);
const
     Select_Upche = 'Select * from tblUpche' + #13#10 +
          'Where UcCode=:UcCode';
begin
 {    with dm_f.sqlwork do
     begin
          SQL.Text := Select_UpChe;
          ParamByName('UcCode').AsString := cbIbchu.text;
          Open;
          if not isEmpty then
               edtIbchu.text := fieldbyName('UcSangho').AsString
          else
               edtIbchu.text := '';
     end;
     }
end;



procedure Tibgo_f.cbIbchuExit(Sender: TObject);
begin
     cbIbchuChange(self);
end;

procedure Tibgo_f.cbGubunChange(Sender: TObject);
const
     Select_IbgoType = 'Select * from tblIbgoType' + #13#10 +
          'Where ItCode=:ItCode';
begin
   {  with dm_f.sqlwork do
     begin
          SQL.Text := Select_IbgoType;
          ParamByName('ItCode').AsString := cbGubun.text;
          Open;
          if not isEmpty then
               edtGubun.text := fieldbyName('ItName').AsString
          else
               edtGubun.text := '';
     end;
     }
end;

procedure Tibgo_f.cbGubunExit(Sender: TObject);
begin
     cbGubunChange(self);
end;


procedure Tibgo_f.edtCodeExit(Sender: TObject);
begin
     fieldsetPummok(edtCode.text);
end;

procedure Tibgo_f.dpIbgoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;

end;

procedure Tibgo_f.edtDangaChange(Sender: TObject);
begin
     edtprice.Value := edtDanga.value * edtEa.value;
end;


procedure Tibgo_f.FormDestroy(Sender: TObject);
begin
     ibgo_f := nil;
end;


procedure Tibgo_f.memChamgoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          btnSave.SetFocus;
          Key := #0;
     end;

end;

procedure Tibgo_f.FormCreate(Sender: TObject);
begin
     formstyle := fsStayOnTop;
end;

procedure Tibgo_f.edtnameExit(Sender: TObject);
begin
     if not Assigned(findPummok_f) then
          findPummok_f := TfindPummok_f.Create(application);

     with findPummok_f do
     begin
          selectData(edtName.text);
          if ShowModal = mrOk then
          begin
               with DM_f.SqlWork do
               begin
                    Close;
                    SQL.Clear;
                    SQL.Add('Select PmBarCode, PmName, PmDanwi, PmPrice From tblPummok');
                    SQL.Add('Where PmBarCode = :PmBarCode');
                    ParamByName('PmBarCode').AsString := selectedData;
                    open;
                    if not isEmpty then
                    begin

                         edtCode.text := FieldByName('PmBarCode').AsString;
                         edtName.text := FieldByName('PmName').AsString;
                         edtDanwi.text := FieldByName('PmDanwi').AsString;
                         edtDanga.text := FieldByName('PmPrice').AsString;

                         edtEa.SetFocus;
                    end;
               end;
          end;

     end;
end;

{
procedure Tibgo_f.jegoSet(varPumCode:string; varQty:integer);
const
     select_Pummok_jego = 'select pmJego from tblPummok ' + #13#10 +
          'where PmBarCode=:PmBarCode';
     Update_Pummok_jego = 'Update tblPummok Set' + #13#10 +
        'PmJego=:PmJego' + #13#10 +
          'where PmBarCode=:PmBarCode';
var
    varPumJego:integer;
begin
     with dm_f.sqlwork do
     begin
          SQL.Text := select_Pummok_jego;
          ParamByName('PmBarCode').AsString := varPumCode;
          open;
          if not isEmpty then
             varPumJego:= fieldByName('PmJego').Asinteger 
          else
             varPumJego:= 0 ;



          SQL.Text := Update_Pummok_jego;
          ParamByName('PmBarCode').AsString := varPumCode;
          ParamByName('PmJego').Asinteger := varPumJego + varQty;
          execsql;
     end;

end;

}
end.

