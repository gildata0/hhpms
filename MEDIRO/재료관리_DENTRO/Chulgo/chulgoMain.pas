unit chulgoMain;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, 
      AdvPanel, AdvGlowButton, Grids, BaseGrid, AdvGrid,
     AdvPageControl, AdvEdit, AdvMoneyEdit, iniFiles, AdvCombo, ColCombo,
     AdvTabSet, AdvObj;

type
     TGridFindText = record
          varCol: integer;
          varRow: integer;
     end;
type
     TchulgoMain_f = class(TForm)
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
          Label8: TLabel;
          edtname: TEdit;
          Label2: TLabel;
          edtDc: TAdvMoneyEdit;
    Label7: TLabel;
    edtCode: TEdit;
    btnCls: TAdvGlowButton;
    AdvTabSet1: TAdvTabSet;
    btnCancel: TAdvGlowButton;
    btnSave: TAdvGlowButton;
    Splitter1: TSplitter;
    grdmain: TAdvStringGrid;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    AdvGlowButton24: TAdvGlowButton;
    AdvGlowButton26: TAdvGlowButton;
    AdvGlowButton27: TAdvGlowButton;
    AdvGlowButton28: TAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    AdvGlowButton31: TAdvGlowButton;
    AdvGlowButton32: TAdvGlowButton;
    AdvGlowButton33: TAdvGlowButton;
    AdvGlowButton34: TAdvGlowButton;
    AdvGlowButton36: TAdvGlowButton;
    AdvGlowButton37: TAdvGlowButton;
    AdvGlowButton38: TAdvGlowButton;
    AdvGlowButton39: TAdvGlowButton;
    AdvGlowButton41: TAdvGlowButton;
    AdvGlowButton42: TAdvGlowButton;
    AdvGlowButton43: TAdvGlowButton;
    AdvGlowButton44: TAdvGlowButton;
    AdvGlowButton46: TAdvGlowButton;
    AdvGlowButton47: TAdvGlowButton;
    AdvGlowButton48: TAdvGlowButton;
    AdvGlowButton49: TAdvGlowButton;
    AdvGlowButton51: TAdvGlowButton;
    AdvGlowButton52: TAdvGlowButton;
    AdvGlowButton53: TAdvGlowButton;
    AdvGlowButton54: TAdvGlowButton;
    AdvGlowButton56: TAdvGlowButton;
    AdvGlowButton57: TAdvGlowButton;
    AdvGlowButton58: TAdvGlowButton;
    AdvGlowButton59: TAdvGlowButton;
    AdvGlowButton61: TAdvGlowButton;
    AdvGlowButton62: TAdvGlowButton;
    AdvGlowButton63: TAdvGlowButton;
    AdvGlowButton64: TAdvGlowButton;
    Panel1: TPanel;
    Panel2: TPanel;
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
          procedure AdvGlowButton1Click(Sender: TObject);
          procedure AdvGlowButton2Click(Sender: TObject);
          procedure AdvGlowButton3Click(Sender: TObject);
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
          procedure fieldSetGrid(varData: string; varSu: integer);
          function MakeMChulCode: string;
          function FindCode(varGrid: TadvStringGrid;
               varCode: string): TGridfindtext;
     public
          { Public declarations }
          modFlag, InsFlag: boolean;
          selectedCode: string;
     end;
const
     ConpmName = 1;
     conSu = 2;
     ConPmaPrice = 3;
     ConpmDanwi = 4;
     ConPmPrice = 5;
     ConpmBarcode = 6;
     conUser = 7;
     ConpmBuncode = 8;
     ConpmJejocode = 9;

var
     chulgoMain_f: TchulgoMain_f;

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

function TchulgoMain_f.FindCode(varGrid: TadvStringGrid; varCode: string):
     TGridfindtext;
var
     res: TPoint;
     findparams: TFindparams;

begin

     {
     Where:
     In entire grid
     In current column   [fnFindInCurrentCol]
     In current row   [fnFindInCurrentRow]
     Direction:  [fnDirectionLeftRight]
     Top - down
     Left - right

     Case sensitive   [fnMatchCase]

     Whole words only   [fnMatchFull]

     Regular expressions [fnMatchRegular]
     }
     findparams := [];

     //  findparams := findparams + [fnMatchCase];
     findparams := findparams + [fnMatchFull];
     // findparams := findparams + [fnMatchRegular];
     res := varGrid.findfirst(varCode, findparams);
     if res.y >= 0 then
     begin
          result.varCol := res.x;
          result.varRow := res.y;
          //varGrid.Col := res.x;
    // varGrid.row := res.y;
     end
     else
     begin
          result.varCol := -1;
          result.varRow := -1;
     end;
     //findNext
     {  res := AdvStringGrid1.findnext;
     if (res.x >= 0) and (res.y >= 0) then
     begin
      AdvStringGrid1.Col := res.x;
      AdvStringGrid1.row := res.y;
     end
     else
      MessageDlg('Text not found', mtinformation, [mbOK], 0);
     }
end;

procedure TchulgoMain_f.FieldClear;
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

procedure TchulgoMain_f.FieldClear2;
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

procedure TchulgoMain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TchulgoMain_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     caption := '출고 등록';

     ComboLoad;
     GridSet;
     fieldclear;

end;

procedure TchulgoMain_f.btnClsClick(Sender: TObject);
begin
     close;
end;

procedure TchulgoMain_f.ComboLoad;
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
               Width := 20;
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
               Width := 20;
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

procedure TchulgoMain_f.btnSaveClick(Sender: TObject);
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

procedure TchulgoMain_f.saveChulgoitem;
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
               paramByName('PumCode').asString := cells[conPmBarcode, i];
               paramByName('PumName').asString := cells[conPmname, i];
               paramByName('Qty').asFloat := Floats[conSu, i];
               paramByName('Price').asinteger := ints[conPmPrice, i];
               paramByName('aPrice').asinteger := ints[conPmPrice, i];
               paramByName('Dc').asinteger := 0;
               paramByName('gubun').asString := '';
               paramByName('bunLarge').asString := copy(cells[conPmBuncode, i], 1, 3);
               paramByName('bunMiddle').asString := copy(cells[conPmBuncode, i], 4, 3);
               paramByName('bunSmall').asString := copy(cells[conPmBuncode, i], 7, 3);
               paramByName('ibchu').asString := cells[ConpmJejocode, i];
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

procedure TchulgoMain_f.saveChulgo;
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

procedure TchulgoMain_f.btnCancelClick(Sender: TObject);
begin
     fieldclear;
     GridSet;
end;

procedure TchulgoMain_f.FormDestroy(Sender: TObject);
begin
     chulgoMain_f := nil;
end;

procedure TchulgoMain_f.FormCreate(Sender: TObject);
begin
     formstyle := fsStayOnTop;
end;

procedure TchulgoMain_f.grdMainUpdateColumnSize(Sender: TObject;
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

procedure TchulgoMain_f.GridSet;
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
          columnHeaders.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'gridheader\chulgo.txt');
          //  align := alclient;

          RemoveRows(1, RowCount - 1);
          rowcount := 2;
          FixedRows := 1;
          FixedCols := 1;

          setlength(colwidth, ColCount);
          for i := 0 to colCount - 1 do
          begin
               colWidths[i] := strToInt(FormInit.ReadString('COLCHULGO', inttostr(i), '30'));
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

procedure TchulgoMain_f.edtCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin

          fieldSetGrid(edtCode.text, 1);
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

procedure TchulgoMain_f.edtnameKeyPress(Sender: TObject; var Key: Char);
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
                    fieldSetGrid(selectedData, 1);
               end;
          end;
          edtname.Clear;
          edtname.SetFocus;

     end;
end;

procedure TchulgoMain_f.fieldSetGrid(varData: string; varSu: integer);
var
     varSelectedRow: integer;
begin
     varSelectedRow := FindCode(grdmain, varData).varRow;
     //그리드에서   varData를 찾아서 같은 varData가 있으면 수량을 올려준다.
     if varSelectedRow > 0 then
     begin
          grdmain.ints[conSu, varSelectedRow] := grdmain.ints[conSu, varSelectedRow] + 1;
          grdmain.ints[conPmaPrice, varSelectedRow] := grdmain.ints[conPmPrice, varSelectedRow] * grdmain.ints[conSu, varSelectedRow];
          exit;
     end;
     //없으면 Pummok에서 찾아서 그리드에 넣어준다.
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
               grdmain.Cells[conPmName, grdmain.RowCount - 1] := FieldByName('pmName').AsString;
               grdmain.Cells[conPmDanwi, grdmain.RowCount - 1] := FieldByName('pmDanwi').AsString;
               grdmain.ints[conPmPrice, grdmain.RowCount - 1] := FieldByName('PmPrice').AsInteger;
               grdmain.ints[conSu, grdmain.RowCount - 1] := 1;
               grdmain.ints[conPmaPrice, grdmain.RowCount - 1] := FieldByName('PmPrice').AsInteger
                                                                  * grdmain.ints[conSu, grdmain.RowCount - 1];
               grdmain.ints[conPmPrice, grdmain.RowCount - 1] := FieldByName('PmPrice').AsInteger;
               grdmain.cells[conPmbarcode, grdmain.RowCount - 1] := FieldByName('pmBarcode').AsString;
               grdmain.Cells[conuser, grdmain.RowCount - 1] := cbUser.Text;
               grdmain.Cells[conPmBuncode, grdmain.RowCount - 1] := FieldByName('pmBuncode').AsString;
               grdmain.Cells[conPmJejoCode, grdmain.RowCount - 1] := FieldByName('pmJejocode').AsString;

          end;
          grdmain.SavefixedCells := false;
          grdmain.autonumbercol(0);
          grdmain.FixedRows := 1;
          grdmain.FixedCols := 1;

          edtEa.Value := edtEa.Value + 1;
          edtPrice.Value := edtPrice.Value + FieldByName('PmPrice').AsInteger;

     end;

end;

function TchulgoMain_f.MakeMChulCode: string;
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

procedure TchulgoMain_f.AdvGlowButton1Click(Sender: TObject);
begin
     fieldSetGrid('k2061004', 1);
end;

procedure TchulgoMain_f.AdvGlowButton2Click(Sender: TObject);
begin
     fieldSetGrid('L7031020', 1);
end;

procedure TchulgoMain_f.AdvGlowButton3Click(Sender: TObject);
begin
     fieldSetGrid('L7203020', 1);
end;

end.

