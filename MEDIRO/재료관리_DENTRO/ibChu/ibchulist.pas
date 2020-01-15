unit ibchulist;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls,  ComCtrls,
     AdvPanel, AdvGlowButton,
     Grids, BaseGrid, AdvGrid, inifiles, AdvObj, AdvUtil;

type
     Tibchulist_f = class(TForm)
          pnlbtn: TAdvPanel;
          pnlSch: TAdvPanel;
          Label20: TLabel;
          cbSch: TComboBox;
          edtSch: TEdit;
          DateTimePicker1: TDateTimePicker;
          DateTimePicker2: TDateTimePicker;
          pnlGrd: TAdvPanel;
          grdmain: TAdvStringGrid;
          btnAdd: TAdvGlowButton;
          btnMod: TAdvGlowButton;
          btnDel: TAdvGlowButton;
          btnPrt: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          btnSch: TAdvGlowButton;
          Label1: TLabel;
          procedure FormShow(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure btnClsClick(Sender: TObject);
          procedure btnSchClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnPrtClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure grdmainUpdateColumnSize(Sender: TObject; ACol: Integer;
               var AWidth: Integer);
          procedure btnModClick(Sender: TObject);
          procedure grdmainRowChanging(Sender: TObject; OldRow, NewRow: Integer;
               var Allow: Boolean);
          procedure btnAddClick(Sender: TObject);
     private
          { Private declarations }
          selectedCode: string;
          procedure SelectData;
          procedure GridSet;
          procedure FieldClear;
     public
          { Public declarations }
     end;

var
     ibchulist_f: Tibchulist_f;

implementation

uses main, DM, uFunctions, DynamicPrint, ibchuReg;
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

procedure Tibchulist_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     caption := '관련 업체 명세서';
     iHeight := main_f.ClientHeight;
     iWidth := main_f.ClientWidth;
     iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 72 - 20;
     iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 2;
     SetBounds(0, 0, iWidth, iHeight);
     FieldClear;
end;

procedure Tibchulist_f.FieldClear;
begin
     cbSch.itemindex := 0;

     edtsch.text := '';

     DateTimepicker1.Date := now;
     DateTimepicker2.Date := now;
end;

procedure Tibchulist_f.FormDestroy(Sender: TObject);
begin
     ibchulist_f := nil;
end;

procedure Tibchulist_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Tibchulist_f.btnClsClick(Sender: TObject);
begin
     Close;
end;

procedure Tibchulist_f.SelectData;
begin
     {
     전체
     구매처코드
     대펴자명
     상호
     업종
     업태
     전화
     주소
     }
     with Dm_f.SqlSel do
     begin
          grdmain.RemoveRows(1, grdmain.RowCount - 1);

          case cbSch.ItemIndex of
               0:
                    begin
                         SQL.Text := SELECT_ALL;
                    end;
               1:
                    begin
                         SQL.Text := SELECT_ALL;
                         ParamByName('Gmakeday2').AsString := formatDatetime('YYYY-MM-DD', DateTimePicker1.date);
                         ParamByName('Gmakeday3').AsString := formatDatetime('YYYY-MM-DD', DateTimePicker2.date);
                    end;
               2:
                    begin
                         SQL.Text := SELECT_ALL;
                         ParamByName('GGetDay2').AsString := formatDatetime('YYYY-MM-DD', DateTimePicker1.date);
                         ParamByName('GGetDay3').AsString := formatDatetime('YYYY-MM-DD', DateTimePicker2.date);
                    end;
               3:
                    begin
                         SQL.Text := SELECT_ALL;
                         ParamByName('GDate2').AsString := formatDatetime('YYYY-MM-DD', DateTimePicker1.date);
                         ParamByName('GDate3').AsString := formatDatetime('YYYY-MM-DD', DateTimePicker2.date);
                    end;
               4:
                    begin
                         SQL.Text := SELECT_ALL;
                         ParamByName('GName').AsString := edtSch.text;
                    end;

               5:
                    begin
                         SQL.Text := SELECT_ALL;
                         ParamByName('GHwanName').AsString := edtSch.text;
                    end;
               6:
                    begin
                         SQL.Text := SELECT_ALL;
                         ParamByName('GMaterial').AsString := '%' + edtSch.text + '%';
                    end;
               7:
                    begin
                         SQL.Text := SELECT_ALL;
                         ParamByName('GMemo').AsString := '%' + edtSch.text + '%';
                    end;
          end;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    grdmain.AddRow; // 그리드에 빈 로우를 추가
                    grdmain.cells[1, grdmain.RowCount - 1] := FieldByName('UcType').AsString;
                    grdmain.cells[2, grdmain.RowCount - 1] := FieldByName('UcCode').AsString;
                    grdmain.cells[3, grdmain.RowCount - 1] := FieldByName('UcSangho').AsString;
                    grdmain.cells[4, grdmain.RowCount - 1] := FieldByName('UcSaupNo').AsString;
                    grdmain.cells[5, grdmain.RowCount - 1] := FieldByName('UcUpJong').AsString;
                    grdmain.cells[6, grdmain.RowCount - 1] := FieldByName('UcUpTae').AsString;
                    grdmain.cells[7, grdmain.RowCount - 1] := FieldByName('UcTel1').AsString;
                    grdmain.cells[8, grdmain.RowCount - 1] := FieldByName('UcTel2').AsString;
                    grdmain.cells[9, grdmain.RowCount - 1] := FieldByName('UcDaepyo').AsString;
                    grdmain.cells[10, grdmain.RowCount - 1] := FieldByName('UcHp1').AsString;
                    grdmain.cells[11, grdmain.RowCount - 1] := FieldByName('UcDamdang').AsString;
                    grdmain.cells[12, grdmain.RowCount - 1] := FieldByName('UcHp2').AsString;
                    grdmain.cells[13, grdmain.RowCount - 1] := FieldByName('UcZip').AsString;
                    grdmain.cells[14, grdmain.RowCount - 1] := FieldByName('UcJuso').AsString;
                    grdmain.cells[15, grdmain.RowCount - 1] := FieldByName('UcPayDay').AsString;
                    grdmain.cells[16, grdmain.RowCount - 1] := FieldByName('UcBankCode').AsString;
                    grdmain.cells[17, grdmain.RowCount - 1] := FieldByName('UcBankSerial').AsString;
                    grdmain.cells[18, grdmain.RowCount - 1] := FieldByName('UcBankUser').AsString;
                    grdmain.cells[19, grdmain.RowCount - 1] := FieldByName('UcMisu').AsString;
                    grdmain.cells[20, grdmain.RowCount - 1] := FieldByName('UcSday').AsString;
                    grdmain.cells[21, grdmain.RowCount - 1] := FieldByName('UcUse').AsString;
                    grdmain.cells[22, grdmain.RowCount - 1] := FieldByName('UcDisCount').AsString;
                    grdmain.cells[23, grdmain.RowCount - 1] := FieldByName('UcRegday').AsString;
                    grdmain.cells[24, grdmain.RowCount - 1] := FieldByName('UcID').AsString;
                    grdmain.cells[25, grdmain.RowCount - 1] := FieldByName('UcPass').AsString;
                    Next;
               end;
          //  autosizeColumns(true, 38);
          grdmain.autonumbercol(0);
          if grdmain.rowcount < 2 then
          begin
               grdmain.rowcount := 2;
          end;
          grdmain.FixedRows := 1;
     end;
end;

procedure Tibchulist_f.btnSchClick(Sender: TObject);
begin
     selectdata;
end;

procedure Tibchulist_f.btnDelClick(Sender: TObject);
begin
     if MessageDlg('선택하신 자료를 정말로 삭제합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
          with dm_f.sqlwork do
          begin
               SQL.Text := Delete_Upche;
               ParamByName('UcCode').AsString := selectedcode;
               execsql;
               showmessage('성공적으로 삭제되었습니다');
          end;
          SelectData;
     end
     else
          showmessage('취소되었습니다.');

end;

procedure Tibchulist_f.btnPrtClick(Sender: TObject);
var
     DynamicPrint_f: TDynamicPrint_f;
     HospName: string;
     SDay, FDay: Word;
begin
     SDay := DayofWeek(DateTimepicker1.Date);
     FDay := DayofWeek(DateTimepicker2.Date);
     DynamicPrint_f := TDynamicPrint_f.CreateFrm(Self, grdmain);
     try
          with DynamicPrint_f, QuickRep1 do
          begin
               Caption := '거래처명부인쇄';
               HospName := dm_f.Name;
               LblSubject.Caption := '거래처 현황';
               //    LblTerm.Caption := '';
               LblHospName.Caption := HospName;
               LblPrtDay.Caption := '출력일자:' + FormatDateTime('YYYY-MM-DD', Now);
               LblSchDay.Caption := '검색일자:'
                    + FormatDateTime('YYYY-MM-DD', DateTimepicker1.Date)
                    + '(' + '' + ')' + ' ~ '
                    + FormatDateTime('YYYY-MM-DD', DateTimepicker2.Date)
                    + '(' + '' + ')';
               PreviewModal;
          end;
     finally
          DynamicPrint_f.Free;
     end;
end;

procedure TibChulist_f.GridSet;
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
          ColCount := 26;
          rowcount := 2;
          columnHeaders.LoadFromFile(path + 'gridheader\ibchu.txt');
          align := alclient;

          RemoveRows(1, RowCount - 1);
          rowcount := 2;
          FixedRows := 1;
          FixedCols := 1;

          setlength(colwidth, ColCount);
          for i := 0 to colCount - 1 do
          begin
               colWidths[i] := strToInt(FormInit.ReadString('COLIBCHULIST', inttostr(i), '38'));
               //showmessage(inttostr(colWidths[i]));
          end;

     end;
     FormInit.Free;

end;

procedure Tibchulist_f.FormCreate(Sender: TObject);
begin
     GridSet;
end;

procedure Tibchulist_f.grdmainUpdateColumnSize(Sender: TObject;
     ACol: Integer; var AWidth: Integer);
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
     FormInit.WriteString('COLIBCHULIST', inttostr(aCol), inttostr(aWidth));

     //  end;
     FormInit.Free;
end;

procedure Tibchulist_f.btnModClick(Sender: TObject);
begin
     if not Assigned(ibchuReg_f) then
          ibchuReg_f := TibchuReg_f.Create(application);
     ibchuReg_f.show;
     ibchuReg_f.fieldset(selectedCode);

end;

procedure Tibchulist_f.grdmainRowChanging(Sender: TObject; OldRow,
     NewRow: Integer; var Allow: Boolean);
begin

     selectedCode := grdmain.Cells[2, Newrow];

end;

procedure Tibchulist_f.btnAddClick(Sender: TObject);
begin
     if not Assigned(ibchuReg_f) then
          ibchuReg_f := TibchuReg_f.Create(application);
     ibchuReg_f.newset;
     ibchuReg_f.show;

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

