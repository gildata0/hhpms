unit pummokList;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls,  ExtCtrls, Buttons, ComCtrls,
      ExtDlgs, AdvGlowButton, AdvPanel,
     Grids, BaseGrid, AdvGrid, inifiles, AdvObj, AdvUtil;

type
     TpummokList_f = class(TForm)
          pnlSch: TAdvPanel;
          btnPrt: TAdvGlowButton;
          btnCls: TAdvGlowButton;
          btnSch: TAdvGlowButton;
          btnAdd: TAdvGlowButton;
          btnMod: TAdvGlowButton;
          btnDel: TAdvGlowButton;
          AdvPanel1: TAdvPanel;
          Label1: TLabel;
          cbSch: TComboBox;
          edtSch: TEdit;
          DateTimePicker1: TDateTimePicker;
          DateTimePicker2: TDateTimePicker;
          Label19: TLabel;
          Label2: TLabel;
          grdmain: TAdvStringGrid;
    Button1: TButton;


          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure btnSchClick(Sender: TObject);
          procedure btnPrtClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure grdMainRowChanging(Sender: TObject; OldRow,
               NewRow: Integer; var Allow: Boolean);
          procedure btnAddClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnModClick(Sender: TObject);
    procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdmainDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdmainCanSort(Sender: TObject; ACol: Integer;
      var DoSort: Boolean);
    procedure edtSchKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
     private                           
    { Private declarations }
          selectedCode: string;
          procedure GridSet;
          procedure FieldClear;
     public
    { Public declarations }
          procedure SelectData;
     end;

var
     pummokList_f: TpummokList_f;

implementation

uses main,  uFunctions,  dm, DynamicPrint, PummokReg;
const
      Select_Pummok = 'Select * from tblPummok' + #13#10 +
          'Where PmBarcode=:PmBarcode';
     Insert_Pummok = 'Insert Into tblPummok' + #13#10 +
          '(PmuCode,PmBarCode,PmName,Pmmodel,PmDanwi,PmSpec,' + #13#10 +
          'Pmpic,PmBuncode,PmJejoCode,PmLocate,PmJegoMin,' + #13#10 +
          'PmJegoMax,PmJego,PmPrice,PmRate,PmRegDay) values' + #13#10 +
          '(:PmuCode,:PmBarCode,:PmName,:Pmmodel, :PmDanwi, :PmSpec,  ' + #13#10 +
          ':Pmpic,:PmBuncode,:PmJejoCode,:PmLocate,:PmJegoMin,' + #13#10 +
          ':PmJegoMax,:PmJego,:PmPrice,:PmRate,:PmRegDay)';
     Update_Pummok = 'Update tblPummok Set' + #13#10 +
          'PmuCode=:PmuCode,PmName=:PmName,Pmmodel=:Pmmodel,PmDanwi=:PmDanwi,PmSpec=:PmSpec,' + #13#10 +
          'Pmpic=:Pmpic,PmBuncode=:PmBuncode,PmJejoCode=:PmJejoCode,PmLocate=:PmLocate,PmJegoMin=:PmJegoMin,' + #13#10 +
          'PmJegoMax=:PmJegoMax,PmJego=:PmJego,PmPrice=:PmPrice,PmRate=:PmRate,PmRegDay=:PmRegDay' + #13#10 +
          'where PmBarCode=:PmBarCode';
     Delete_Pummok = 'Delete from tblPummok' + #13#10 +
          'where PmBarCode=:PmBarCode';

{$R *.dfm}




procedure TpummokList_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TpummokList_f.FormDestroy(Sender: TObject);
begin
     pummoklist_f := nil;
end;

procedure TpummokList_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     caption := '품목 명세서';
     iHeight := main_f.ClientHeight;
     iWidth := main_f.ClientWidth;
     iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 61;
     iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 2;
     SetBounds(0, 0, iWidth, iHeight);
     FieldClear;
end;

procedure TpummokList_f.btnClsClick(Sender: TObject);
begin
     Close;
end;

procedure Tpummoklist_f.FieldClear;
begin
     cbSch.itemindex := 2;

     edtsch.text := '';

     DateTimepicker1.Date := now;
     DateTimepicker2.Date := now;
end;


procedure TpummokList_f.SelectData;
const

     Select_All = 'Select *, ( select ucSangHo from tblUpche where ucCode= tblPummok.pmJejocode) as sangho from tblPummok';
     where_Code = ' where pmBarCode = :Code';
     where_name = ' where pmName Like :Code ';
     where_Model = ' where pmModel Like  :Code ';

begin
{
0 전체
1 상품코드
2 상품명
3 모델명
4 제조회사
5 위치정보
6 보험코드
7 대분류
8 중분류
9 소분류
10재고량
11판매가격
12최종등록일
}
     with Dm_f.SqlSel do
     begin
          grdmain.RemoveRows(1, grdmain.RowCount - 1);
          case cbSch.ItemIndex of
               0:
                    begin
                         SQL.Text := SELECT_ALL;
                    end;
               1:       //상품코드
                    begin
                         SQL.Text := SELECT_ALL + where_Code;

                         ParamByName('code').AsString := edtSch.text;
                      end;
               2:      //상품명
                    begin
                         SQL.Text := SELECT_ALL + where_name;

                         ParamByName('code').AsString :='%'+ edtSch.text +'%';
                end;
               3:      //모델명
                    begin
                         SQL.Text := SELECT_ALL + where_Model;

                         ParamByName('code').AsString :='%'+ edtSch.text +'%';

                    end;
               4:      //제조회사
                    begin

                    end;

               5:      //위치정보
                    begin
                        end;
               6:      //보험코드
                    begin
                         end;
               7:       //대분류
                    begin
                        end;
               8:        //중분류
                    begin
                         end;
               9: // 소분류
               begin
               end;
               10: // 재고량
               begin
               end;
               11: // 판매가격
               begin
               end;
               12: // 최종등록일
               begin
               end;

          end;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    grdmain.AddRow; // 그리드에 빈 로우를 추가
                    grdmain.cells[1, grdmain.Rowcount - 1] := FieldByName('PmuCode').AsString;
                    grdmain.cells[2, grdmain.Rowcount - 1] := FieldByName('PmBarCode').AsString;
                    grdmain.cells[3, grdmain.Rowcount - 1] := FieldByName('PmName').AsString;
                    grdmain.cells[4, grdmain.Rowcount - 1] := FieldByName('PmSpec').AsString;
                    grdmain.cells[5, grdmain.Rowcount - 1] := FieldByName('PmDanwi').AsString;
                    grdmain.cells[6, grdmain.Rowcount - 1] := FieldByName('Pmpic').AsString;
                    grdmain.cells[7, grdmain.Rowcount - 1] := FieldByName('PmBuncode').AsString;
                    grdmain.cells[8, grdmain.Rowcount - 1] :=  FieldByName('sangho').AsString
                       +'('+FieldByName('PmJejoCode').AsString+')';
                    grdmain.cells[9, grdmain.Rowcount - 1] := FieldByName('PmLocate').AsString;
                    grdmain.cells[10, grdmain.Rowcount - 1] := FieldByName('PmJegoMin').AsString;
                   // grdmain.cells[11, grdmain.Rowcount - 1] := FieldByName('PmJegoMax').AsString;
                    grdmain.cells[11, grdmain.Rowcount - 1] := FieldByName('PmJego').AsString;
                    grdmain.cells[12, grdmain.Rowcount - 1] := FieldByName('PmPrice').AsString;
                    grdmain.cells[13, grdmain.Rowcount - 1] := FieldByName('PmRate').AsString;
                    grdmain.cells[14, grdmain.Rowcount - 1] := FieldByName('PmRegDay').AsString;
                    grdmain.cells[15, grdmain.Rowcount - 1] := FieldByName('PmUseDay').AsString;
                    grdmain.cells[16, grdmain.Rowcount - 1] := FieldByName('ID').AsString;
                    Next;
               end;
          if grdmain.rowcount < 2 then
          begin
               grdmain.rowcount := 2;
          end;
          grdmain.FixedRows := 1;
         // autosizeColumns(true, 38);
          grdmain.autonumbercol(0);

     end;
end;

procedure TpummokList_f.btnSchClick(Sender: TObject);
begin
     selectdata;
end;


procedure TpummokList_f.btnPrtClick(Sender: TObject);
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
               Caption := '상품내역인쇄';
               HospName := dm_f.Name;
               LblSubject.Caption := '상품현황';
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


procedure TpummokList_f.GridSet;
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
          ColCount := 16;
          rowcount := 2;

          Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRowSelect,goDrawFocusSelected,goRowSizing,goColSizing];
          SizeWhileTyping.Height := True;

          columnHeaders.LoadFromFile(path + 'gridheader\pummok.txt');
          align := alclient;

          RemoveRows(1, RowCount - 1);
          rowcount := 2;
          FixedRows := 1;
          FixedCols := 1;

          setlength(colwidth, ColCount);
        //  for i := 0 to colCount - 1 do
       //   begin
       //        colWidths[i] := strToInt(FormInit.ReadString('COLPUMMOK', inttostr(i), '38'));
       //   end;

     end;
     FormInit.Free;

end;



procedure TpummokList_f.FormCreate(Sender: TObject);
begin
     GridSet;
end;

procedure TpummokList_f.grdMainRowChanging(Sender: TObject; OldRow,
     NewRow: Integer; var Allow: Boolean);
begin
     selectedCode := grdmain.Cells[2, Newrow];
   {
     if Assigned(pummokReg_f) then
     begin
          if newRow > 0 then
          begin
               pummokReg_f.fieldset(selectedCode);
          end;
     end;
    }
end;

procedure TpummokList_f.btnAddClick(Sender: TObject);
begin
     if not Assigned(pummokReg_f) then
          pummokReg_f := TpummokReg_f.Create(application);
     pummokReg_f.InsFlag := True;
     pummokReg_f.ModFlag := false;
     pummokReg_f.show;
     if Assigned(pummokReg_f) then
     begin
            //   pummokReg_f.fieldset(selectedCode);
               pummokReg_f.fieldclear;
     end;

end;

procedure TpummokList_f.btnDelClick(Sender: TObject);
begin
     if MessageDlg('선택하신 자료를 정말로 삭제합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
          with dm_f.sqlwork do
          begin
               SQL.Text := Delete_Pummok;
               ParamByName('PmBarCode').AsString := selectedCode;
               execsql;
               showmessage('성공적으로 삭제되었습니다');
          end;
     end
     else
          showmessage('취소되었습니다.');

end;

procedure TpummokList_f.btnModClick(Sender: TObject);
begin
     if not Assigned(pummokReg_f) then
          pummokReg_f := TpummokReg_f.Create(application);
     pummokReg_f.show;

     pummokReg_f.InsFlag := false;
     pummokReg_f.ModFlag := true;
     pummokReg_f.fieldset(selectedCode);


end;

procedure TpummokList_f.grdmainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     HAlign := taLeftJustify; ;
  {  case aCol of
          0, 1, 2, 4, 8:
               begin
                    HAlign := taCenter;
               end;
          5, 6, 7:
               begin
                    HAlign := tarightJustify;
               end;
     end;
   }

end;

procedure TpummokList_f.grdmainDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
         if aRow > 0 then
          begin
              // selectedCode := grdmain.Cells[2, ARow];
              selectedCode := grdmain.Cells[16, ARow];

              if not Assigned(pummokReg_f) then
                   pummokReg_f := TpummokReg_f.Create(application);
                pummokReg_f.show;
                pummokReg_f.fieldset(selectedCode);
          end;


end;

procedure TpummokList_f.grdmainCanSort(Sender: TObject; ACol: Integer;
  var DoSort: Boolean);
begin
      grdmain.AutoNumberDirection:=  sdDescending   ;//sdAscending;//
      grdmain.AutoNumberCol(0);
end;

procedure TpummokList_f.edtSchKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
      begin
                selectdata;

      end;
end;

procedure TpummokList_f.Button1Click(Sender: TObject);
var
   barCode, uCode :string;
   code1, code2, code3 : string;
begin

      with dm_f.Sqltemp do
      begin
          close;
          sql.Clear;
          sql.Text:='select * from tblpummok   ';
          open;
          first;
          while not eof do
          begin
                  barCode:=  fieldbyname('pmbarcode').asString;
                  uCode:= fieldbyname('pmucode').asString;

                  if substr( fieldbyname('pmucode').asString,1,'-') <>'' then
                   code1:= formatfloat('00',strtoint( substr( fieldbyname('pmucode').asString,1,'-'))  )
                  else
                   code1:='01';


                  if substr( fieldbyname('pmucode').asString,2,'-') <>'' then
                     code2:=  formatfloat('00',strtoint( substr( fieldbyname('pmucode').asString,2,'-'))  )
                  else
                     code2:='01';

                  if substr( fieldbyname('pmucode').asString,3,'-') <>'' then
                     code3:= formatfloat('00',strtoint( substr( fieldbyname('pmucode').asString,3,'-'))  )
                  else
                     code3:='01';
                   uCode:=code1+code2+code3;

                  with dm_f.SqlWork do
                  begin
                      close;
                      sql.Clear;
                      sql.Text:='update tblpummok set pmucode=:pmucode  where pmbarcode =:pmbarcode   '  ;
                      parambyname('pmbarcode').asString:=barcode;
                      parambyname('pmucode').asString:=ucode;
                      execsql;

                  end;

                  next;
          end;

     end;
end;

end.



{
CREATE TABLE [dbo].[tblBalju] (
 [BjUser] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjTime] [varchar] (8) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjNo] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjUCode] [varchar] (5) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjType] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjQty] [int] NULL ,
 [BjAmount] [bigint] NULL ,
 [BjPCode] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjPNmae] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjPPrice] [float] NULL ,
 [BjPDanwi] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [BjPDanga] [float] NULL ,
 [BjPQty] [int] NULL ,
 [BjPAmount] [float] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[tblIbgo] (
 [IgUser] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgTime] [varchar] (8) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgNo] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgUCode] [varchar] (5) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgType] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgQty] [int] NULL ,
 [IgAmount] [float] NULL ,
 [IgPCode] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgPNmae] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgPPrice] [float] NULL ,
 [IgPDanwi] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [IgPDanga] [float] NULL ,
 [IgPQty] [int] NULL ,
 [IgPAmount] [float] NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[tblPummok] (
 [PmuCode] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmBarCode] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmName] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [Pmmodel] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmDanwi] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [Pmpic] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmBuncode] [varchar] (9) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmJejoCode] [varchar] (5) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmLocate] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [PmJegoMin] [int] NULL ,
 [PmJegoMax] [int] NULL ,
 [PmJego] [int] NULL ,
 [PmPrice] [float] NULL ,
 [PmRate] [float] NULL ,
 [PmRegDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblUpche] (
 [UcCode] [varchar] (5) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcSaupNo] [varchar] (12) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcSangho] [varchar] (30) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcType] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcDaepyo] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcUpJong] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcUpTae] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcDamdang] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcHp1] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcHp2] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcTel1] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcTel2] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcZip] [varchar] (7) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcJuso] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcPayDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcBankCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcBankSerial] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcMisu] [float] NULL ,
 [UcSday] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcUse] [varchar] (1) COLLATE Korean_Wansung_CI_AS NULL ,
 [UcDiscount] [float] NULL ,
 [UcRegDay] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[tblCard] (
 [CdCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [CdName] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [CdRate] [float] NULL ,
 [CdPrefix1] [varchar] (7) COLLATE Korean_Wansung_CI_AS NULL ,
 [CdPrefix2] [varchar] (7) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblIbgoType] (
 [ItCode] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [ItName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tblBaljuType] (
 [BtCode] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [BtName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblInfo] (
 [IfHpName] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfHeadName] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfHeadQty] [int] NULL ,
 [IfSaupNo] [varchar] (12) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfTel] [varchar] (13) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfYoyangNo] [varchar] (15) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfZip] [varchar] (7) COLLATE Korean_Wansung_CI_AS NULL ,
 [IfJuso] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[tblBank] (
 [BkCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [BkName] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblBunSmall] (
 [BsCode] [varchar] (9) COLLATE Korean_Wansung_CI_AS NULL ,
 [BsName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblBunlarge] (
 [Blcode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [BlName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblBunmiddle] (
 [BmCode] [varchar] (6) COLLATE Korean_Wansung_CI_AS NULL ,
 [BmName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[tblLocate] (
 [LcCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
 [LcName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL ,
 [LcRemark] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[tblUpcheType] (
 [UtCode] [varchar] (2) COLLATE Korean_Wansung_CI_AS NULL ,
 [UtName] [varchar] (20) COLLATE Korean_Wansung_CI_AS NULL
) ON [PRIMARY]
GO

}
{alter table tblUpche add CdRegDay char(10) null,
CdUse char(1) null
alter table tblIbgoType add ItRegDay char(10) null,
ItUse char(1) null
alter table tblBaljuType add BtRegDay char(10) null,
BtUse char(1) null
alter table tblInfo add IfRegDay char(10) null,
IfUse char(1) null
alter table tblBank add BkRegDay char(10) null,
BkUse char(1) null

alter table tblBunSmall add BsRegDay char(10) null,
BsUse char(1) null
alter table tblBunlarge add BlRegDay char(10) null,
BlUse char(1) null
alter table tblBunmiddle add BmRegDay char(10) null,
BmUse char(1) null

alter table tblLocate add LcRegDay char(10) null,
LcUse char(1) null
alter table tblUpcheType add UtRegDay char(10) null,
UtUse char(1) null

tblCard
tblIbgoType
tblBaljuType
tblInfo
tblBank
tblBunSmall
tblBunlarge
tblBunmiddle
tblLocate
tblUpcheType




}

