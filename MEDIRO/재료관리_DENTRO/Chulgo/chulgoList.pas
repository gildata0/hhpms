unit chulgoList;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,
      AdvPanel, AdvGlowButton, Grids, BaseGrid, AdvGrid,
     AdvPageControl, AdvEdit, AdvMoneyEdit, iniFiles, AdvCombo, EllipsLabel,
     ColCombo, AdvObj, AdvUtil;

type
     Tchulgolist_f = class(TForm)
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
          dtchulgo1: TDateTimePicker;
          cbibchu: TColumnComboBox;
          cbGubun: TColumnComboBox;
          cbUser: TColumnComboBox;
          btnSch: TAdvGlowButton;
          dtchulgo2: TDateTimePicker;
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
     private
          { Private declarations }
          selectedCode: string;
          procedure selectdata(JunpyoNo: string);
          procedure JunpyoNoCreate;
          procedure JunpyoSeqCreate;
          procedure GridSet;
          procedure ComboLoad;

     public
          { Public declarations }
     end;

var
     chulgolist_f: Tchulgolist_f;

implementation

uses main, DM, DynamicPrint, ibgo;
const

     Select_Ibgo = 'Select * from tblIbgo' + #13#10 +
          'where IgNo=:IgNo and IgSeq=:IgSeq';

     {$R *.dfm}

procedure Tchulgolist_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Tchulgolist_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     caption := '출고 명세서';
     iHeight := main_f.ClientHeight;
     iWidth := main_f.ClientWidth;
     iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 64;
     iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 1;
     SetBounds(0, 0, iWidth, iHeight);
     dtchulgo1.date := now;
     dtchulgo2.date := now;

     ComboLoad;
     GridSet;

end;

procedure Tchulgolist_f.btnClsClick(Sender: TObject);
begin
     close;
end;

procedure Tchulgolist_f.btnAddClick(Sender: TObject);
begin
     if not Assigned(ibgo_f) then
          ibgo_f := Tibgo_f.Create(application);
     ibgo_f.InsFlag := True;
     ibgo_f.ModFlag := false;
     ibgo_f.show;
end;

procedure Tchulgolist_f.btnDelClick(Sender: TObject);
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

procedure Tchulgolist_f.JunpyoNoCreate;
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

procedure Tchulgolist_f.JunpyoSeqCreate;
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

procedure Tchulgolist_f.SelectData(JunpyoNo: string);
const
     Select_ChulgoItems =
          'select                                                                                             ' + #10#13 +
          '(select blName from tblbunLarge where tblBunlarge.blcode= tblchulgoitem.bunlarge) as bunLarge,     ' + #10#13 +
          '(select bmName from tblbunMiddle where tblBunMiddle.bmcode= tblchulgoitem.bunMiddle) as bunmiddle,' + #10#13 +
          '(select bsName from tblbunSmall where tblBunSmall.bscode= tblchulgoitem.bunSmall) as bunsmall,    ' + #10#13 +
          '(select ucSangho from tblupche where tblupche.ucCode= tblchulgoitem.ibchu) as ibchuName          ' + #10#13 +
          '  , * from tblchulgo join tblchulgoitem on  tblchulgo.chulcode= tblchulgoitem.chulcode          ' + #10#13 +
          '  where cDate >= :cdate1 and cDate <= :cDate2         ';

     //    Select_All = 'Select * from tblpanmeitem join tblPummok on tblpanmeitem.pumcode=tblPummok.pmBarcode';

begin
     {
     출고전표번호  IgNo
     연번          IgSeq
     출고관리자    IgUser
     출고일자      IgDay
     출고시간      IgTime
     출고업체코드  IgUCode
     출고구분      IgType
     출고수량      IgQty
     출고합계      IgAmount
     상품코드      IgPCode
     상품명        IgPNmae
     단위          IgPDanwi
     단가          IgPDanga
     수량          IgPQty
     금액          IgPAmount
     비고          Igremark
     }
     with Dm_f.sqlWork  do
     begin
          grdmain.SavefixedCells := false;
          grdmain.RemoveRows(1, grdmain.RowCount - 1);

          SQL.Text := SELECT_ChulgoItems;
          parambyname('cDate1').AsString := formatdatetime('yyyy-mm-dd', dtchulgo1.date);
          parambyname('cDate2').AsString := formatdatetime('yyyy-mm-dd', dtchulgo2.date);
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    grdmain.AddRow; // 그리드에 빈 로우를 추가
                    grdmain.Cells[1, grdmain.RowCount - 1] := FieldByName('cDate').AsString;
                    grdmain.Cells[2, grdmain.RowCount - 1] := FieldByName('busu').AsString;
                    grdmain.Cells[3, grdmain.RowCount - 1] := FieldByName('pumName').AsString;
                    //   Cells[4, RowCount - 1] := FieldByName('pmDanwi').AsString;
                    grdmain.ints[5, grdmain.RowCount - 1] := FieldByName('Qty').AsInteger;
                    grdmain.ints[6, grdmain.RowCount - 1] := FieldByName('Price').AsInteger;
                    grdmain.ints[7, grdmain.RowCount - 1] := FieldByName('Qty').AsInteger * FieldByName('Price').AsInteger;
                    grdmain.Cells[8, grdmain.RowCount - 1] := FieldByName('adminName').AsString; //관리자
                    grdmain.Cells[9, grdmain.RowCount - 1] := FieldByName('remark').AsString; //비고
                    Next;
               end;
          if grdmain.rowcount < 2 then
          begin
               grdmain.rowcount := 2;
          end;
          grdmain.FixedRows := 1;
          grdmain.autonumbercol(0);

     end;
end;

procedure Tchulgolist_f.grdmainRowChanging(Sender: TObject; OldRow,
     NewRow: Integer; var Allow: Boolean);
begin
     selectedCode := grdmain.Cells[13, Newrow];

end;

procedure Tchulgolist_f.btnPrtClick(Sender: TObject);
var
     DynamicPrint_f: TDynamicPrint_f;
     HospName: string;
begin
     DynamicPrint_f := TDynamicPrint_f.CreateFrm(Self, grdmain);
     try
          with DynamicPrint_f, QuickRep1 do
          begin
               Caption := '출고내역인쇄';
               HospName := dm_f.Name;
               LblSubject.Caption := '출고현황';
               LblTerm.Caption := '';
               LblHospName.Caption := HospName;
               LblPrtDay.Caption := '출력일자:' + FormatDateTime('YYYY-MM-DD', Now);
               PreviewModal;
          end;
     finally
          DynamicPrint_f.Free;
     end;
end;

procedure Tchulgolist_f.GridSet;
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
          ColCount := 10;
          rowcount := 2;
          columnHeaders.LoadFromFile(path + 'gridheader\chulgolist.txt');
          align := alclient;

          RemoveRows(1, RowCount - 1);
          rowcount := 2;
          FixedRows := 1;
          FixedCols := 1;

          setlength(colwidth, ColCount);
          for i := 0 to colCount - 1 do
          begin
               colWidths[i] := strToInt(FormInit.ReadString('COLCHULGOLIST', inttostr(i), '38'));
               //showmessage(inttostr(colWidths[i]));
          end;

     end;
     FormInit.Free;

end;

procedure Tchulgolist_f.FormDestroy(Sender: TObject);
begin
     chulgolist_f := nil;
end;

procedure Tchulgolist_f.grdmainUpdateColumnSize(Sender: TObject; ACol: Integer;
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
     FormInit.WriteString('COLCHULGOLIST', inttostr(aCol), inttostr(aWidth));

     //  end;
     FormInit.Free;
end;

procedure Tchulgolist_f.btnModClick(Sender: TObject);
begin
     if not Assigned(ibgo_f) then
          ibgo_f := Tibgo_f.Create(application);
     ibgo_f.InsFlag := false;
     ibgo_f.ModFlag := true;

     ibgo_f.show;
     ibgo_f.selectedCode := selectedCode;
     ibgo_f.fieldset(selectedCode);

end;

procedure Tchulgolist_f.btnSchClick(Sender: TObject);
begin
     SelectData('');
end;

procedure Tchulgolist_f.ComboLoad;
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

procedure Tchulgolist_f.grdmainGetAlignment(Sender: TObject; ARow,
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

