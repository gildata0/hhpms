unit chulgoReg;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,
       AdvPanel, AdvGlowButton, Grids, BaseGrid, AdvGrid,
     AdvPageControl, AdvEdit, AdvMoneyEdit, iniFiles, AdvCombo, ColCombo,
  AdvObj, AdvUtil;

type
     TchulgoReg_f = class(TForm)
          pnlInput: TAdvPanel;
          Label12: TLabel;
          Label11: TLabel;
          Label13: TLabel;
          memChamgo: TMemo;
          edtEa: TAdvMoneyEdit;
          edtPrice: TAdvMoneyEdit;
          AdvPanel1: TAdvPanel;
          Label1: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          lblbgoman: TLabel;
          dpDate: TDateTimePicker;
          cbUser: TColumnComboBox;
          cbChulChu: TColumnComboBox;
          cbGubun: TColumnComboBox;
          AdvPanel2: TAdvPanel;
          Label7: TLabel;
          Label8: TLabel;
          edtCode: TEdit;
          edtname: TEdit;
          btnCancel: TAdvGlowButton;
          btnSave: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          grdmain: TAdvStringGrid;
          Label2: TLabel;
          edtDc: TAdvMoneyEdit;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure grdMainUpdateColumnSize(Sender: TObject; ACol: Integer;
               var AWidth: Integer);
          procedure edtCodeKeyPress(Sender: TObject; var Key: Char);
          procedure edtnameKeyPress(Sender: TObject; var Key: Char);
     private
    { Private declarations }
          varChulCode: string;
          varCount, varSum: integer;
          procedure FieldClear;
          procedure FieldClear2;
          procedure ComboLoad;
          procedure saveChulgo;
          procedure saveChulgoitem;

          procedure GridSet;
          procedure fieldSetGrid(varData: string);
          function MakeMChulCode: string;
     public
    { Public declarations }
          modFlag, InsFlag: boolean;
          selectedCode: string;
     end;

var
     chulgoReg_f: TchulgoReg_f;

implementation

uses main, DM, DynamicPrint, findpummok;
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


procedure TchulgoReg_f.FieldClear;
begin
     varCount := 0;
     varSum := 0;

     memChamgo.text := '';

     cbGubun.ItemIndex := 0;
     cbChulchu.ItemIndex := 0;
     cbUser.ItemIndex := 0;

     edtCode.text := '';
     edtname.text := '';

     edtEa.Value := 0;
     edtPrice.Value := 0;

     dpDate.date := now;

end;

procedure TchulgoReg_f.FieldClear2;
begin

     varCount := 0;
     varSum := 0;
     memChamgo.text := '';



     edtCode.text := '';
     edtname.text := '';

     edtEa.Value := 0;
     edtPrice.Value := 0;

     dpDate.date := now;
    // grdmain.RemoveRows(2, grdmain.RowCount - 1);

end;

procedure TchulgoReg_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TchulgoReg_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     caption := '출고 등록';

     ComboLoad;
     GridSet;
     fieldclear;

end;

procedure TchulgoReg_f.btnClsClick(Sender: TObject);
begin
     close;
end;


procedure TchulgoReg_f.ComboLoad;
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
     Select_chulgoType = 'Select * from tblbaljuType' + #13#10 +
          'order by btCode Asc';
     Select_Sawon = 'Select * from tblsawon' + #13#10 +
          'order by sabun Asc';

     Select_Busu = 'SELECT * FROM  tblBusu' + #10#13 +
          'Where busuUse <> ''1''';


begin

     with cbChulChu do
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
               SQL.Text := Select_Busu;
               Open;

               while not eof do
               begin
                    with ComboItems.Add do
                    begin
                         Strings.Add(FieldByName('BusuCode').AsString);
                         Strings.Add(FieldByName('busuName').AsString);
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
               SQL.Text := Select_chulgoType;
               Open;

               while not eof do
               begin
                    with ComboItems.Add do
                    begin
                         Strings.Add(FieldByName('BtCode').AsString);
                         Strings.Add(FieldByName('BtName').AsString);
                    end;
                    next;
               end;
          end;
     end;

end;

procedure TchulgoReg_f.btnSaveClick(Sender: TObject);
begin
     saveChulgo; //먼저 출코드를 생성시킨다.
     saveChulgoitem;
     fieldclear2;
end;



{
CREATE TABLE [dbo].[tblChulgoitem] (
 [chulCode] [char] (12) COLLATE Korean_Wansung_CI_AS NULL ,
 [PumCode] [char] (30) COLLATE Korean_Wansung_CI_AS NULL ,
 [PumName] [char] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [Qty] [float] NULL ,
 [Price] [float] NULL ,
 [aPrice] [float] NULL ,
 [Dc] [float] NULL ,
 [gubun] [char] (10) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
}

procedure TchulgoReg_f.saveChulgoitem;
const
     Insert_chulgoitem = 'Insert Into tblChulgoitem' + #13#10 +
          '(chulCode, pumCode, pumName,            ' + #13#10 +
          'qty, price, aPrice , dc, gubun,         ' + #13#10 +
          'bunLarge, bunMiddle, bunSmall, ibchu) values         ' + #13#10 +
          '(:chulCode, :pumCode, :pumName,        ' + #13#10 +
          ':qty, :price, :aPrice , :dc, :gubun,           ' + #13#10 +
          ':bunLarge, :bunMiddle, :bunSmall, :ibchu)';


     Delete_Panme_gogekId = 'Delete from tblChulgoitem' + #13#10 +
          'where chulCode=:chulCode';

var
     i: integer;
begin

     with dm_f.sqlwork, grdMain do
     begin
          for i := 1 to rowcount - 1 do
          begin
               SQL.Text := Insert_chulgoitem;
               paramByName('chulcode').asString := varChulCode;
               paramByName('PumCode').asString := cells[6, i];
               paramByName('PumName').asString := cells[1, i];
               paramByName('Qty').asFloat := 1;
               paramByName('Price').asinteger := ints[3, i];
               paramByName('aPrice').asinteger := ints[3, i];
               paramByName('Dc').asinteger := 0;
               paramByName('gubun').asString := '';
               paramByName('bunLarge').asString := copy(cells[8, i], 1, 3);
               paramByName('bunMiddle').asString := copy(cells[8, i], 4, 3);
               paramByName('bunSmall').asString := copy(cells[8, i], 7, 3);
               paramByName('ibchu').asString := cells[9, i];
               execsql;
          end;
     end;

     gridset;

end;

{
CREATE TABLE [dbo].[tblChulgo] (
 [chulCode] [char] (12) COLLATE Korean_Wansung_CI_AS NULL ,
 [cDate] [char] (30) COLLATE Korean_Wansung_CI_AS NULL ,
 [cTime] [char] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [sumQty] [float] NULL ,
 [sumPrice] [float] NULL ,
 [sumDc] [float] NULL ,
 [busu] [char] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [remark] [char] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [gubun] [char] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [adminName] [char] (10) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]

}

procedure TchulgoReg_f.saveChulgo;
const
     Insert_chulgo = 'Insert Into tblChulgo' + #13#10 +
          '(chulCode, cDate, cTime,sumQty, sumPrice, sumDc,            ' + #13#10 +
          'busu, remark, gubun, adminName) values         ' + #13#10 +
          '(:chulCode, :cDate, :cTime,:sumQty, :sumPrice, :sumDc,        ' + #13#10 +
          ':busu, :remark, :gubun, :adminName)           ';


     Delete_Panme_gogekId = 'Delete from tblChulgo' + #13#10 +
          'where chulCode=:chulCode';

var
     i: integer;
begin
     varChulCode := MakeMChulCode;
     with dm_f.sqlwork do
     begin

          SQL.Text := Insert_chulgo;
          paramByName('chulcode').asString := varChulCode;
          paramByName('cDate').asString := formatDateTime('YYY-MM-DD', now);
          paramByName('cTime').asString := formatDateTime('hh:nn:ss', now);
          paramByName('sumQty').asFloat := edtEa.IntValue;
          paramByName('sumPrice').asinteger := edtPrice.IntValue;
          paramByName('sumDc').asinteger := edtDc.IntValue;
          paramByName('busu').asString := cbChulchu.ColumnItems[cbChulchu.itemindex, 0];
          paramByName('adminName').asString := cbuser.ColumnItems[cbuser.itemindex, 0];
          paramByName('gubun').asString := cbgubun.ColumnItems[cbgubun.itemindex, 0];
          paramByName('remark').asString := memChamgo.text;
          execsql;

     end;

end;






procedure TchulgoReg_f.btnCancelClick(Sender: TObject);
begin
     fieldclear;
     GridSet;
end;

procedure TchulgoReg_f.FormDestroy(Sender: TObject);
begin
     chulgoReg_f := nil;
end;


procedure TchulgoReg_f.FormCreate(Sender: TObject);
begin
     formstyle := fsStayOnTop;
end;

procedure TchulgoReg_f.grdMainUpdateColumnSize(Sender: TObject;
     ACol: Integer; var AWidth: Integer);
var
     nCol: integer;
     FormInit: TIniFile;
     path: string;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'pess.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('COLCHULGO', inttostr(aCol), inttostr(aWidth));
     FormInit.Free;
end;

procedure TchulgoReg_f.GridSet;
var
     ColWidth: array of integer;
     i: integer;
     FormInit: Tinifile;
     path: string;
begin
     path := ExtractFilePath(ParamStr(0)) + 'pess.ini';
     FormInit := Tinifile.Create(path);
     with grdmain do
     begin
          ColCount := 10;
       //   rowcount := 2;
          columnHeaders.LoadFromFile( ExtractFilePath(ParamStr(0)) + 'gridheader\chulgo.txt');
          align := alclient;

          RemoveRows(1, RowCount - 1);
          rowcount := 2;
          FixedRows := 1;
          FixedCols := 1;

          setlength(colwidth, ColCount);
          for i := 0 to colCount - 1 do
          begin
               colWidths[i] := strToInt(FormInit.ReadString('COLCHULGO', inttostr(i), '38'));
          end;

          RemoveRows(1, RowCount - 1);
          SavefixedCells := false;
          FloatingFooter.ColumnCalc[4] := acSum;
          FloatingFooter.ColumnCalc[5] := acSum;


     end;
     FormInit.Free;

end;


{procedure TchulgoReg_f.edtCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin

          with dm_f.sqlWork, grdMain do
          begin
               close;
               sql.clear;
               sql.Add('select * from tblPummok');
               sql.Add('where pmBarCode=:pmBarCode');
               ParamByName('pmBarcode').asString := edtCode.text;
               open;
               if not isEmpty then
               begin

                    AddRow;
                    Cells[1, RowCount - 1] := formatDateTime('YYYY-MM-DD', now);
                    Cells[2, RowCount - 1] := formatDateTime('hh:nn:ss', now);
                    Cells[3, RowCount - 1] := FieldByName('pmName').AsString;
                    Cells[4, RowCount - 1] := FieldByName('pmDanwi').AsString;
                    ints[5, RowCount - 1] := FieldByName('PmPrice').AsInteger;
                    ints[6, RowCount - 1] := 1;
                    ints[7, RowCount - 1] := FieldByName('PmPrice').AsInteger;
                    cells[8, RowCount - 1] := FieldByName('pmBarcode').AsString;
                    Cells[9, RowCount - 1] := cbUser.Text;
               end;
               SavefixedCells := false;
               autonumbercol(0);
               SavefixedCells := false;
               FixedRows := 1;
               FixedCols := 1;


          end;

     end;

{
Nr.
일자
시간
상품명
단위
단가
수량
합계금액
상품코드
관리자
비고
}
//end;


procedure TchulgoReg_f.edtCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin

          fieldSetGrid(edtCode.text);
          edtCode.Clear;
          edtCode.SetFocus;

     end;

{
Nr.
일자
시간
상품명
단위
단가
수량
합계금액
상품코드
관리자
비고
}
end;

procedure TchulgoReg_f.edtnameKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          if not Assigned(findPummok_f) then
               findPummok_f := TfindPummok_f.Create(application);

          with findPummok_f do
          begin
               selectData(edtName.text);
               if ShowModal = mrOk then
               begin
                    fieldSetGrid(selectedData);
               end;
          end;
          edtname.Clear;
          edtname.SetFocus;

     end;
end;

procedure TchulgoReg_f.fieldSetGrid(varData: string);
begin

     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select PmBarCode, PmName, PmDanwi, PmPrice, pmBuncode, pmJejocode From tblPummok');
          SQL.Add('Where PmBarCode = :PmBarCode');
          ParamByName('PmBarCode').AsString := varData;
          open;
          if not isEmpty then
          begin

               grdmain.AddRow;
               grdmain.Cells[1, grdmain.RowCount - 1] := FieldByName('pmName').AsString;
               grdmain.Cells[2, grdmain.RowCount - 1] := FieldByName('pmDanwi').AsString;
               grdmain.ints[3, grdmain.RowCount - 1] := FieldByName('PmPrice').AsInteger;
               grdmain.ints[4, grdmain.RowCount - 1] := 1;
               grdmain.ints[5, grdmain.RowCount - 1] := FieldByName('PmPrice').AsInteger;
               grdmain.cells[6, grdmain.RowCount - 1] := FieldByName('pmBarcode').AsString;
               grdmain.Cells[7, grdmain.RowCount - 1] := cbUser.Text;
               grdmain.Cells[8, grdmain.RowCount - 1] := FieldByName('pmBuncode').AsString;
               grdmain.Cells[9, grdmain.RowCount - 1] := FieldByName('pmJejocode').AsString;

          end;
          grdmain.SavefixedCells := false;
          grdmain.autonumbercol(0);
          grdmain.SavefixedCells := false;
          grdmain.FixedRows := 1;
          grdmain.FixedCols := 1;

          edtEa.Value := edtEa.Value + 1;
          edtPrice.Value := edtPrice.Value + FieldByName('PmPrice').AsInteger;

     end;

end;

function TchulgoReg_f.MakeMChulCode: string;
const
     Select_Chulgo = 'Select isNull(max(chulCode), 0)+1  as MaxChulCode from tblChulgo';


begin
     with dm_f.sqlTemp do
     begin
          SQL.Text := Select_Chulgo;
          Open;
          if not isEmpty then
          begin
               result := formatfloat('000000000000', fieldByName('MaxChulCode').AsFloat);


          end;
     end;

end;


end.

