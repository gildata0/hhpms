unit ibgolist;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,
      AdvPanel, AdvGlowButton, Grids, BaseGrid, AdvGrid,
     AdvPageControl, AdvEdit, AdvMoneyEdit, iniFiles, AdvCombo, EllipsLabel,
     ColCombo, AdvObj, AdvUtil;

type
     Tibgolist_f = class(TForm)
          pnlbtn: TAdvPanel;
          grdmain: TAdvStringGrid;
          btnAdd: TAdvGlowButton;
          btnMod: TAdvGlowButton;
          btnDel: TAdvGlowButton;
          btnPrt: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          AdvPanel1: TAdvPanel;
          Label1: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          Label14: TLabel;
    dtdate1: TDateTimePicker;
          cbibchu: TColumnComboBox;
          cbGubun: TColumnComboBox;
          cbUser: TColumnComboBox;
          btnSch: TAdvGlowButton;
    dtDate2: TDateTimePicker;
    Label2: TLabel;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnPrtClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure grdmainUpdateColumnSize(Sender: TObject; ACol: Integer;
               var AWidth: Integer);
          procedure grdmainRowChanging(Sender: TObject; OldRow, NewRow: Integer;
               var Allow: Boolean);
          procedure btnModClick(Sender: TObject);
          procedure btnSchClick(Sender: TObject);
    procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdmainClickCell(Sender: TObject; ARow, ACol: Integer);
     private
    { Private declarations }
          selectedCode: string;
          procedure selectdata_ibgo(JunpyoNo: string);
          procedure JunpyoNoCreate;
          procedure JunpyoSeqCreate;
          procedure GridSet;
          procedure ComboLoad;

     public
    { Public declarations }
     end;

var
     ibgolist_f: Tibgolist_f;

implementation

uses main, DM, DynamicPrint, ibgo;
const

     Select_Ibgo = 'Select * from tblIbgo' + #13#10 +
          'where IgNo=:IgNo and IgSeq=:IgSeq';



{$R *.dfm}



procedure Tibgolist_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Tibgolist_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     caption := '입고 명세서';
     iHeight := main_f.ClientHeight;
     iWidth := main_f.ClientWidth;
     iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 64;
     iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 1;
     SetBounds(0, 0, iWidth, iHeight);
     dtDate1.date := now;
     dtDate2.date := now;
     ComboLoad;
     GridSet;

end;

procedure Tibgolist_f.btnClsClick(Sender: TObject);
begin
     close;
end;




procedure Tibgolist_f.btnAddClick(Sender: TObject);
begin
     if not Assigned(ibgo_f) then
          ibgo_f := Tibgo_f.Create(application);
     ibgo_f.InsFlag := True;
     ibgo_f.ModFlag := false;
     ibgo_f.show;
end;

procedure Tibgolist_f.btnDelClick(Sender: TObject);
const
     Delete_Ibgo = 'Delete from tblibgo' + #13#10 +
          'where IgNo=:IgNo';

begin
     if MessageDlg('선택하신 자료를 정말로 삭제합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
          with dm_f.sqlWork do
          begin
               SQL.Text := Delete_ibgo;
               ParamByName('IgNo').AsString := selectedCode;
               execsql;
               showmessage('성공적으로 삭제되었습니다');
          end;
     end
     else
          showmessage('취소되었습니다.');

end;

procedure Tibgolist_f.JunpyoNoCreate;
const
     Select_MaxIbgo = 'Select Max(IgNo) As MaxIgno from tblIbgo';
var
     maxNo: string;
begin
     with dm_f.sqlWork do
     begin
          SQL.Text := Select_MaxIbgo;
          Open;
          if not isEmpty then
          begin
               MaxNo := fieldbyName('MaxigNo').AsString;
               if (copy(maxNo, 1, 4) = formatDateTime('YYYY', now)) and
                    (copy(maxNo, 5, 2) = formatDateTime('MM', now)) and
                    (copy(maxNo, 7, 2) = formatDateTime('DD', now)) then
               begin
                    MaxNo := formatDateTime('YYYYMMDD', now) +
                         formatFloat('000', (strtoInt(copy(maxNo, 9, 3)) + 1));
               end
               else
               begin
                    MaxNo := formatDateTime('YYYYMMDD', now) + '001';
               end;
          end
          else
          begin
               MaxNo := formatDateTime('YYYYMMDD', now) + '001';
          end;
     end;
end;

procedure Tibgolist_f.JunpyoSeqCreate;
const
     Select_MaxIbgoSeq = 'Select Max(IgSeq) As MaxIgSeq from tblIbgo' + #10#13 +
          'Where IgNo=:IgNo';
     Select_MaxIbgo = 'Select Max(IgNo) As MaxIgno from tblIbgo';
var
     maxNo: string;
     maxNo2: string;
begin
   { if edtNo.text = '' then
     begin
          with dm_f.sqlWork do
          begin
               SQL.Text := Select_MaxIbgo;
               Open;
               if not isEmpty then
               begin
                    MaxNo2 := fieldbyName('MaxigNo').AsString;
                    if (copy(maxNo, 1, 4) = formatDateTime('YYYY', now)) and
                         (copy(maxNo, 5, 2) = formatDateTime('MM', now)) and
                         (copy(maxNo, 7, 2) = formatDateTime('DD', now)) then
                    begin
                         MaxNo2 := fieldbyName('MaxigNo').AsString;
                    end
                    else
                    begin
                         MaxNo2 := formatDateTime('YYYYMMDD', now) + '001';
                    end;
               end
               else
               begin
                    MaxNo2 := formatDateTime('YYYYMMDD', now) + '001';
               end;
          end;
          edtno.text := MaxNo2;

     end;

     }
     with dm_f.sqlWork do
     begin
          SQL.Text := Select_MaxIbgoSeq;
          paramByName('Igno').AsString := selectedCode;
          Open;
          if not isEmpty then
          begin
               MaxNo := fieldbyName('MaxigSeq').AsString;
               if MaxNo <> '' then
               begin
                    MaxNo := formatFloat('00000', (strtoInt(maxNo) + 1))
               end
               else
               begin
                    MaxNo := '00001';
               end;
          end
          else
          begin
               MaxNo := '00001';
          end;
     end;

end;


procedure Tibgolist_f.SelectData_ibgo(JunpyoNo: string);
const
   //  Select_All = 'Select * from tblibgo'+ #10#13 +
  //    'Select * from tblibgo'+ #10#13 +

  //             'where igNo=:igNo';
     Select_All = 'SELECT   *                     ' + #10#13 +
          'FROM      tblIbgo a INNER JOIN ' + #10#13 +
          '   tblUpche b ON a.IgUCode = b.UcCode' + #10#13 +
          '  where igday >= :cdate1 and igday <= :cDate2         ';
begin
{
입고전표번호  IgNo
연번          IgSeq
입고관리자    IgUser
입고일자      IgDay
입고시간      IgTime
입고업체코드  IgUCode
입고구분      IgType
입고수량      IgQty
입고합계      IgAmount
상품코드      IgPCode
상품명        IgPNmae
단위          IgPDanwi
단가          IgPDanga
수량          IgPQty
금액          IgPAmount
비고          Igremark
}
     with Dm_f.sqlWork do
     begin
          grdmain.SavefixedCells := false;
          grdmain.RemoveRows(1, grdmain.RowCount - 1);

          SQL.Text := SELECT_ALL;
          parambyname('cDate1').AsString := formatdatetime('yyyy-mm-dd', dtDate1.date);
          parambyname('cDate2').AsString := formatdatetime('yyyy-mm-dd', dtDate2.date);
        //  ParamByName('igNo').AsString := JunpyoNo;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    grdmain.AddRow; // 그리드에 빈 로우를 추가
                    grdmain.cells[1, grdmain.Rowcount - 1] := FieldByName('IgDay').AsString;
                    grdmain.cells[2, grdmain.Rowcount - 1] := FieldByName('IgTime').AsString;
                    grdmain.cells[3, grdmain.Rowcount - 1] := FieldByName('IgPNmae').AsString;
                    grdmain.cells[4, grdmain.Rowcount - 1] := FieldByName('IgPDanwi').AsString;
                    grdmain.ints[5, grdmain.Rowcount - 1] := FieldByName('IgPDanga').AsInteger;
                    grdmain.ints[6, grdmain.Rowcount - 1] := FieldByName('IgPQty').AsInteger;
                    grdmain.ints[7, grdmain.Rowcount - 1] := FieldByName('IgPAmount').AsInteger;
                    grdmain.cells[8, grdmain.Rowcount - 1] := FieldByName('IgType').AsString;
                    grdmain.cells[9, grdmain.Rowcount - 1] := FieldByName('ucSangho').AsString;
                    grdmain.cells[10, grdmain.Rowcount - 1] := FieldByName('IgPCode').AsString;
                    grdmain.cells[11, grdmain.Rowcount - 1] := FieldByName('IgUser').AsString;
                    grdmain.cells[12, grdmain.Rowcount - 1] := FieldByName('IgRemark').AsString;
                    grdmain.cells[13, grdmain.Rowcount - 1] := FieldByName('IgNo').AsString;
                 //  grdmain.cells[2, grdmain.Rowcount - 1] := FieldByName('IgSeq').AsString;
                 //  grdmain.cells[15, grdmain.Rowcount - 1] := FieldByName('IgPAmount').AsString;
                 //  grdmain.cells[14, grdmain.Rowcount - 1] := FieldByName('IgPQty').AsString;
                    Next;
               end;
          if grdmain.rowcount < 2 then
          begin
               grdmain.rowcount := 2;
          end;
          grdmain.FixedRows := 1;
          //autosizeColumns(true, 38);
          grdmain.autonumbercol(0);

     end;
end;

procedure Tibgolist_f.grdmainRowChanging(Sender: TObject; OldRow,
     NewRow: Integer; var Allow: Boolean);
begin
     selectedCode := grdmain.Cells[13, Newrow];

end;



procedure Tibgolist_f.btnPrtClick(Sender: TObject);
var
     DynamicPrint_f: TDynamicPrint_f;
     HospName: string;
begin
     DynamicPrint_f := TDynamicPrint_f.CreateFrm(Self, grdmain);
     try
          with DynamicPrint_f, QuickRep1 do
          begin
               Caption := '입고내역인쇄';
               HospName := dm_f.Name;
               LblSubject.Caption := '입고현황';
               LblTerm.Caption := '';
               LblHospName.Caption := HospName;
               LblPrtDay.Caption := '출력일자:' + FormatDateTime('YYYY-MM-DD', Now);
               PreviewModal;
          end;
     finally
          DynamicPrint_f.Free;
     end;
end;

procedure Tibgolist_f.GridSet;
var
     ColWidth: array of integer;
     i: integer;
     FormInit: Tinifile;
     path: string;
     iniFile: string;
begin
     path := ExtractFilePath(ParamStr(0));
     iniFile := path + 'pess.ini';
     FormInit := Tinifile.Create(inifile);
     with grdmain do
     begin
          ColCount := 14;
          rowcount := 2;
          columnHeaders.LoadFromFile(path+'gridheader\ibgo.txt');
          align := alclient;

          RemoveRows(1, RowCount - 1);
          rowcount := 2;
          FixedRows := 1;
          FixedCols := 1;

          setlength(colwidth, ColCount);
          for i := 0 to colCount - 1 do
          begin
               colWidths[i] := strToInt(FormInit.ReadString('COLIBGO', inttostr(i), '38'));
               //showmessage(inttostr(colWidths[i]));
          end;

        


     end;
     FormInit.Free;


end;


procedure Tibgolist_f.FormDestroy(Sender: TObject);
begin
     ibgolist_f := nil;
end;

procedure Tibgolist_f.grdmainUpdateColumnSize(Sender: TObject; ACol: Integer;
     var AWidth: Integer);
var
     nCol: integer;
     FormInit: TIniFile;
     path: string;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'pess.ini';
     FormInit := TIniFile.Create(Path);
          //칼럼 Width 재설정
   //  for nCol := 0 to grdmain.ColCount - 1 do
   //  begin
               //showmessage(inttostr(GrdMain.Columns.Items[nCol].Width));
//          FormInit.WriteString('COLIBGO', inttostr(aCol), inttostr(grdmain.ColWidths[aCol]));
     FormInit.WriteString('COLIBGO', inttostr(aCol), inttostr(aWidth));

   //  end;
     FormInit.Free;
end;




procedure Tibgolist_f.btnModClick(Sender: TObject);
begin
     if not Assigned(ibgo_f) then
          ibgo_f := Tibgo_f.Create(application);
     ibgo_f.InsFlag := false;
     ibgo_f.ModFlag := true;

     ibgo_f.show;
     ibgo_f.selectedCode := selectedCode;
     ibgo_f.fieldset(selectedCode);


end;

procedure Tibgolist_f.btnSchClick(Sender: TObject);
begin
     SelectData_ibgo('');
end;


procedure TibgoList_f.ComboLoad;
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
               Width := 60;
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
               with ComboItems.Add do
               begin
                    Strings.Add(' ');
                    Strings.Add('전체');
               end;
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
          itemIndex := 0;
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
               with ComboItems.Add do
               begin
                    Strings.Add(' ');
                    Strings.Add('전체');
               end;

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
          itemIndex := 0;
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

               with ComboItems.Add do
               begin
                    Strings.Add(' ');
                    Strings.Add('전체');
               end;
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
          itemIndex := 0;
     end;

end;

procedure Tibgolist_f.grdmainClickCell(Sender: TObject; ARow, ACol: Integer);
begin
     selectedCode := grdmain.Cells[13, ARow];

end;

procedure Tibgolist_f.grdmainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          0, 1, 2, 4, 8:
               begin
                    HAlign := taCenter;
               end;
          5, 6, 7:
               begin
                    HAlign := tarightJustify;
               end;
     end;

end;

end.

