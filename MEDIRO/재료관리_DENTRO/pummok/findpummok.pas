unit findPummok;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls,
      ExtDlgs,   AdvGlowButton, AdvPanel,
     Grids, BaseGrid, AdvGrid, inifiles, AdvObj, AdvUtil;

type
     TfindPummok_f = class(TForm)
          grdMain: TAdvStringGrid;
          pnlSch: TAdvPanel;
          btnCls: TAdvGlowButton;
          btnSch: TAdvGlowButton;
    btnNew: TAdvGlowButton;


          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure grdMainUpdateColumnSize(Sender: TObject; ACol: Integer;
               var AWidth: Integer);
          procedure grdMainKeyPress(Sender: TObject; var Key: Char);
          procedure btnSchClick(Sender: TObject);
          procedure grdMainDblClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure grdMainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
     private
    { Private declarations }
          selectedCode: string;
          procedure GridSet;
     public
          selectedData: string;
    { Public declarations }
          procedure SelectData(varData: string);
     end;

var
     findPummok_f: TfindPummok_f;

implementation

uses main, dm, pummokReg;
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




procedure TfindPummok_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TfindPummok_f.FormDestroy(Sender: TObject);
begin
     findPummok_f := nil;
end;

procedure TfindPummok_f.FormShow(Sender: TObject);
begin
     caption := '품목 검색';
end;

procedure TfindPummok_f.btnClsClick(Sender: TObject);
begin
     Close;
end;



procedure TfindPummok_f.SelectData(varData: string);
const
     Select_All = 'Select * from tblPummok' + #13#10 +
          'where pmName like :pmName';

begin
{
전체
상품코드
상품명
모델명
제조회사
위치정보
보험코드
대분류
중분류
소분류
재고량
판매가격
최종등록일
}
     with Dm_f.SqlSel  do
     begin
          grdmain.RemoveRows(1, grdmain.RowCount - 1);
          SQL.Text := SELECT_ALL;
          ParamByName('pmName').AsString := '%' + varData + '%';
          Open;
          if not IsEmpty then
          begin
               while not EOF do
               begin
                   grdmain.AddRow; // 그리드에 빈 로우를 추가
                    grdmain.Cells[1, grdmain.RowCount - 1] := FieldByName('PmBarCode').AsString;
                    grdmain.Cells[2, grdmain.RowCount - 1] := FieldByName('PmName').AsString;
                    grdmain.Cells[3, grdmain.RowCount - 1] := FieldByName('Pmmodel').AsString;
                    grdmain.Cells[4, grdmain.RowCount - 1] := FieldByName('PmDanwi').AsString;
                    grdmain.Cells[5, grdmain.RowCount - 1] := FieldByName('PmPrice').AsString;
                    Next;
               end;
          end;
          if grdmain.rowcount < 2 then
          begin
               grdmain.rowcount := 2;
          end;
          grdmain.FixedRows := 1;
          grdmain.autonumbercol(0);

     end;
end;

procedure TfindPummok_f.GridSet;
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
          ColCount := 6;
          rowcount := 2;
          columnHeaders.LoadFromFile(path+'gridheader\pummokfind.txt');
          align := alclient;

          RemoveRows(1, RowCount - 1);
          rowcount := 2;
          FixedRows := 1;
          FixedCols := 1;

          setlength(colwidth, ColCount);
          for i := 0 to colCount - 1 do
          begin
               colWidths[i] := strToInt(FormInit.ReadString('COLPUMMOKFIND', inttostr(i), '38'));
          end;

     end;
     FormInit.Free;

end;



procedure TfindPummok_f.FormCreate(Sender: TObject);
begin
     GridSet;
end;

procedure TfindPummok_f.grdMainUpdateColumnSize(Sender: TObject;
     ACol: Integer; var AWidth: Integer);
var
     nCol: integer;
     FormInit: TIniFile;
     path: string;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'pess.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('COLPUMMOKFIND', inttostr(aCol), inttostr(aWidth));
     FormInit.Free;

end;

procedure TfindPummok_f.grdMainKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          selectedData := grdMain.Cells[1, grdMain.row];
          ModalResult := mrOk;
     end
     else if key = #27 then
     begin
          ModalResult := mrCancel;
     end;

end;

procedure TfindPummok_f.btnSchClick(Sender: TObject);
begin
     selectedData := grdMain.Cells[1, grdMain.row];

end;

procedure TfindPummok_f.grdMainDblClick(Sender: TObject);
begin
     selectedData := grdMain.Cells[1, grdMain.row];
     ModalResult := mrOk;

end;

procedure TfindPummok_f.btnNewClick(Sender: TObject);
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

procedure TfindPummok_f.grdMainGetAlignment(Sender: TObject; ARow,
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

