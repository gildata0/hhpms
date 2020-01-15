unit baljulist;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,
     AdvPanel, AdvGlowButton, Grids, BaseGrid, AdvGrid,
     AdvPageControl, AdvEdit, AdvMoneyEdit, iniFiles, AdvCombo, EllipsLabel,
     ColCombo, MoneyEdit, dbmnyed, Menus, AdvMenus, AdvGroupBox, AdvObj,
  AdvSplitter, tmsAdvGridExcel, AdvUtil;
type
     TGridFindText = record
          varCol: integer;
          varRow: integer;
     end;

type
     Tbaljulist_f = class(TForm)
    AdvPanel1: TAdvPanel;
    pnlbtn: TAdvPanel;
    btnPrt: TAdvGlowButton;
    btnCls: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    pnlTop: TAdvPanel;
    AdvGroupBox2: TAdvGroupBox;
    Label4: TLabel;
    memRemark: TMemo;
    AdvGroupBox3: TAdvGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtGeumek: TAdvEdit;
    edtBugase: TAdvEdit;
    edtSum: TAdvEdit;
    AdvGroupBox4: TAdvGroupBox;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dpDate2: TDateTimePicker;
    edtDamName: TEdit;
    edtTel: TEdit;
    dpDate: TDateTimePicker;
    edtFax: TEdit;
    edtHp: TEdit;
    btnUpche: TAdvGlowButton;
    AdvSplitter1: TAdvSplitter;
    btnMod: TAdvGlowButton;
    Panel1: TPanel;
    edtSeq: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    cbTerm: TCheckBox;
    btnSch: TAdvGlowButton;
    cbibchu: TColumnComboBox;
    Label3: TLabel;
    cbBusu: TColumnComboBox;
    cbUser: TColumnComboBox;
    Label6: TLabel;
    edtUpche: TEdit;
    Label14: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edtbusu: TEdit;
    edtUser: TEdit;
    btnAppend: TAdvGlowButton;
    pnlWonjangList: TAdvPanel;
    grdBjList: TAdvStringGrid;
    pnlSebuList: TAdvPanel;
    grdmain: TAdvStringGrid;
    btnAppend2: TAdvGlowButton;
    cbBuga: TCheckBox;
    btnJegoSet: TAdvGlowButton;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure btnPrtClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure cbibchuChange(Sender: TObject);
    procedure btnUpcheClick(Sender: TObject);
    procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure btnSchClick(Sender: TObject);
    procedure grdBjListClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnModClick(Sender: TObject);
    procedure grdmainGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdBjListGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdmainCanSort(Sender: TObject; ACol: Integer;
      var DoSort: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnAppendClick(Sender: TObject);
    procedure btnAppend2Click(Sender: TObject);
    procedure btnJegoSetClick(Sender: TObject);
     private
    { Private declarations }
          selectedCode: string;
          procedure GridSet;
          procedure ComboLoad;
          procedure loadJunpyo(varSeq: string);
          procedure loadBaljuInfo(varSeq: string);
          procedure setSum;
          procedure loadUpcheInfo(varUcCode: string )  ;
     function FindCode(varGrid: TadvStringGrid;
      varCode: string): TGridfindtext;
    function checkInvalid:boolean;
    procedure FieldClear;
    procedure loadBjList;
   function  loadUpche(varCode: string; varKind:integer) :string;
    procedure loadJunpyo2(varSDate, varEDate: string;  varteam:string = '');
    procedure loadJunpyo3(varSDate, varEDate: string;  varteam:string = '');

     public
    { Public declarations }
     end;

var
     baljulist_f: Tbaljulist_f;

implementation

uses main, DM, uFunctions, uJegoset,  DynamicPrint, ibgo,  findpummok, wait, ibchuReg,
  baljuReg;
const

     Select_Ibgo = 'Select * from tblIbgo' + #13#10 +
          'where IgNo=:IgNo and IgSeq=:IgSeq';

const

     Select_All = 'Select * from tblPummok';
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





procedure Tbaljulist_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Tbaljulist_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     application.ProcessMessages;
     caption := '주문명세서';
     iHeight := main_f.ClientHeight;
     iWidth := main_f.ClientWidth;
     iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 64;
     iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 1;
     SetBounds(0, 0, iWidth, iHeight);

     ComboLoad;

     FieldClear;



end;

procedure TbaljuList_f.FieldClear;
begin
     edtSeq.text := '';
     edtDamname.Text := '';
     edtHp.Text := '';
     edtTel.Text := '';
     edtFax.Text := '';

     edtUpche.text:='';
     edtUser.text:='';
     edtBusu.text:='';

     cbIbchu.ItemIndex := 0;
     cbBusu.ItemIndex := 0;
     cbUser.ItemIndex := 0;
     dpDate.date := now;
     dpDate2.date := now;
     memRemark.Text := '';

     edtSum.Text := formatFloat('#,0', 0);
     edtGeumek.Text := formatFloat('#,0', 0);
     edtBugase.Text := formatFloat('#,0', 0);


end;


procedure Tbaljulist_f.btnClsClick(Sender: TObject);
begin
     close;
end;





procedure Tbaljulist_f.btnPrtClick(Sender: TObject);
var
     DynamicPrint_f: TDynamicPrint_f;
     HospName: string;
begin
//grdmain.PrintPreview();
     DynamicPrint_f := TDynamicPrint_f.CreateFrm(Self, grdmain);
     try
          with DynamicPrint_f, QuickRep1 do
          begin
               Caption := '발주 명세서 인쇄';
               HospName := dm_f.Name;
               LblSubject.Caption := '발주명세서';
               LblTerm.Caption := '';
               LblHospName.Caption := HospName;
               LblPrtDay.Caption := '출력일자:' + FormatDateTime('YYYY-MM-DD', Now);
               PreviewModal;
          end;
     finally
          DynamicPrint_f.Free;
     end;

end;

procedure Tbaljulist_f.GridSet;
var
     ColWidth: array of integer;
     i: integer;
     FormInit: Tinifile;
     path: string;
begin
     path := ExtractFilePath(ParamStr(0));
      with grdBjList do
     begin
          ColCount := 7;
          rowcount := 2;
          HideColumn(7);
          columnHeaders.LoadFromFile(path + 'gridheader\bjlist.txt');
          align := alClient;

          RemoveRows(1, RowCount - 1);
          rowcount := 2;
          FixedRows := 1;
          FixedCols := 1;
          {No.
발주일자
업체명
팀
담당
금액
참고사항}

     end;

      with grdmain do
     begin
          ColCount := 14;
          rowcount := 2;
          columnHeaders.LoadFromFile(path + 'gridheader\balju.txt');
          align := alclient;

          RemoveRows(1, RowCount - 1);
          rowcount := 1;
          FixedRows := 1;
          FixedCols := 1;
     end;




end;


procedure Tbaljulist_f.FormDestroy(Sender: TObject);
begin
     baljulist_f := nil;
end;

procedure Tbaljulist_f.ComboLoad;
const
     Select_BunSmall = 'Select * from tblBunSmall' + #13#10 +
          'order by Bscode Asc';
     Select_BunMiddle = 'Select * from tblBunMiddle' + #13#10 +
          'order by Bmcode Asc';
     Select_BunLarge = 'Select * from tblBunLarge' + #13#10 +
          'order by Blcode Asc';
     Select_Locate = 'Select * from tblLocate' + #13#10 +
          'order by LcCode Asc';
     Select_UpcheType = 'Select * from tblUpcheType' + #13#10 +
          'order by UtCode Asc';
     Select_IbgoType = 'Select * from tblIbgoType' + #13#10 +
          'order by ItCode Asc';


     Select_Upche = 'Select ucCode, ucSangho from tblUpche' + #13#10 +   //cbUpche
//          'where UcType=:UcType' + #13#10 +
     'order by UcCode Asc';
     Select_Sawon = 'Select * from tblsawon' + #13#10 +                  //cbUser
          'order by sabun Asc';
     Select_Busu = 'Select * from tblBusu' + #13#10 +                    //cbBusu
          'order by busuCode Asc';

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
                    Strings.Add('업체 전체');
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
                    Strings.Add('담당자 전체');
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
     with cbBusu do
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
               with ComboItems.Add do
               begin
                    Strings.Add(' ');
                    Strings.Add('부서 전체');
               end;

               while not eof do
               begin
                    with ComboItems.Add do
                    begin
                         Strings.Add(FieldByName('busuCode').AsString);
                         Strings.Add(FieldByName('busuName').AsString);
                    end;
                    next;
               end;
          end;
          itemIndex := 0;
     end;

end;

procedure Tbaljulist_f.setSum;
begin
     if cbBuga.Checked = false then
     begin
        edtGeumek.Text := formatFloat('#,0', grdmain.ColumnSum(6, 1,  grdMain.Rowcount - 1));
        edtBugase.Text := formatFloat('#,0', edtGeumek.FloatValue * 0.1);
        edtSum.Text := formatFloat('#,0', edtGeumek.FloatValue + edtBugase.FloatValue);
     end
     else
     begin
        edtGeumek.Text := formatFloat('#,0', grdmain.ColumnSum(6, 1, grdMain.Rowcount - 1)/1.1    );
        edtBugase.Text := formatFloat('#,0',grdmain.ColumnSum(6, 1, grdMain.Rowcount - 1)
           -  grdmain.ColumnSum(6, 1, grdMain.Rowcount - 1)/1.1 );
        edtSum.Text := formatFloat('#,0', grdmain.ColumnSum(6, 1,  grdMain.Rowcount - 1));
     end;
end;

procedure Tbaljulist_f.loadUpcheInfo(varUcCode: string);
begin

     with DM_f.SqlWork  do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * from tblUpche');
          SQL.Add('Where ucCode = :ucCode');
          ParamByName('ucCode').AsString := varucCode;
          open;
          if not isEmpty then
          begin
               edtDamname.Text := fieldByName('ucDamdang').asString;
               edtHp.Text := fieldByName('ucHp1').asString;
               edtTel.Text := fieldByName('ucTel1').asString;
               edtFax.Text := fieldByName('ucTel2').asString;
          end;
     end;

end;


procedure Tbaljulist_f.loadBaljuInfo(varSeq: string);
var
      varibchu, varBusu, varUser:string;
begin

     with DM_f.SqlWork  do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * from tblBaljulist');
          SQL.Add('Where bjSeq = :bjSeq');
          ParamByName('bjSeq').AsString := varSeq;
          open;
          if not isEmpty then
          begin

               varibchu:= trim(fieldByname('bjuName').asString);
               varBusu:=  trim(fieldByname('bjTeam').asString);
               varUser:=  trim(fieldByname('bjDam').asString);

               edtseq.text := fieldByname('bjSeq').asString;

           //   showmessage(inttostr( cbibchu.ComboItems.IndexInColumnOf(1, '덴티스타치과')));
            //   showmessage(inttostr( cbibchu.ComboItems.IndexInColumnOf(0, '0011')));

               dpDate.date := strToDate(fieldByname('bjDate').asString);
               dpDate2.date := strToDate(fieldByname('bjFDate').asString);
               //cbdoc.ItemIndex := cbDoc.ComboItems.IndexOf(fieldByName('doc').asString).y;
                                  //cbDoc.ComboItems.IndexOf( main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex,2]).y;


               edtUpche.text:= loadUpche(varibchu,1);
               edtBusu.text:= loadUpche(varBusu,3);
               edtuser.text:= loadUpche(varUser,2);


               //cbIbchu.ItemIndex := cbibchu.ComboItems.IndexInColumnOf(0, varibchu);//cbIbchu.ComboItems.IndexOf( fieldByname('bjuName').asString).y;
               //cbBusu.ItemIndex := cbBusu.ComboItems.IndexInColumnOf(0, varBusu);
               //cbUser.ItemIndex := cbUser.ComboItems.IndexInColumnOf(0, varUser);



               memRemark.Text := fieldByname('bjRemark').asString;
               edtSum.Text := formatFloat('#,0', fieldByname('bjSum').asFloat);
               edtGeumek.Text := formatFloat('#,0', fieldByname('bjGeumEk').asFloat);
               edtBugase.Text := formatFloat('#,0', fieldByname('bjBugase').asFloat);
          end;
     end;
     loadUpcheInfo(substr(cbIbchu.text, 2, '|'));

end;





function Tbaljulist_f.loadUpche(varCode: string;varKind:integer) :string;
const
     Select_Upche = 'Select ucCode, ucSangho from tblUpche where ucCode=:Code';   //cbUpche
     Select_Sawon = 'Select * from tblsawon where sabun=:code';                 //cbUser
     Select_Busu = 'Select * from tblBusu where busuCode=:code';                   //cbBusu

begin
     result:='';
     with DM_f.SqlTemp  do
     begin
          Close;
          SQL.Clear;
          case varKind of
          1:  SQL.text :=  Select_Upche;
          2:  SQL.text :=  Select_Sawon;
          3:  SQL.text :=  Select_Busu;
          end;
          paramByname('code').asString := varCode;
          open;
          if not isEmpty then
          begin
              case varKind of
                1:   result:=  fieldByName('ucSangho').asString;
                2:   result:=  fieldByName('saName1').asString;
                3:   result:=  fieldByName('BusuName').asString;
              end;
          end;
     end;

end;

procedure Tbaljulist_f.loadJunpyo(varSeq: string);
var
     varRow: integer;
begin

     grdmain.RemoveRows(1, grdmain.RowCount - 1);
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * , ( select top 1 pmjego from tblpummok where pmucode=bjpCode) as Jego  from tblBalju');
          SQL.Add('Where bjSeq = :bjSeq');
          ParamByName('bjSeq').AsString := varSeq;
          open;
          first;
          if not isEmpty then
          begin
               while not eof do
               begin
                    grdmain.AddRow;
                    varRow := grdmain.RowCount - 1;
                    grdmain.Cells[1, varRow] := FieldByName('bjpCode').AsString;
                    grdmain.Cells[2, varRow] := FieldByName('bjpName').AsString;
                    grdmain.Cells[3, varRow] := FieldByName('bjDanwi').AsString;
                     grdmain.ints[4, varRow] := FieldByName('bjDanga').AsInteger;
                    grdmain.ints[5, varRow] := FieldByName('bjSu').AsInteger;
                    grdmain.ints[6, varRow] := FieldByName('bjTot').AsInteger; ;
                    grdmain.Cells[7, varRow] := FieldByName('bjSuibsa').AsString;
                    grdmain.Cells[8, varRow] := FieldByName('bjJejosa').AsString;
                    grdmain.Cells[9, varRow] := FieldByName('bjibchu').AsString;
                    grdmain.cells[10, varRow] := FieldByName('bjTeam').AsString;
                    grdmain.cells[11, varRow] := FieldByName('bjDam').AsString;
                    grdmain.cells[12, varRow] := FieldByName('jego').AsString;

                    if  FieldByName('jegoset').AsString ='1' then
                         grdmain.cells[13, varRow] := 'O'
                    else
                         grdmain.cells[13, varRow] := 'X';

                    grdmain.cells[14, varRow] := FieldByName('bjCd').AsString;
                    grdmain.cells[15, varRow] := FieldByName('bjSeq').AsString;

                    next;
               end;
          end;
          grdmain.SavefixedCells := false;
          grdmain.FixedRows := 1;
          grdmain.FixedCols := 1;
          grdmain.autonumbercol(0);

     end;

end;
procedure Tbaljulist_f.loadJunpyo2(varSDate, varEDate: string;  varteam:string = '');
var
     varRow: integer;
begin

     grdmain.RemoveRows(1, grdmain.RowCount - 1);
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('  Select bjcd, b.bjseq,  bjpCode, bjPname, bjDanwi, bjDanga, bjSu, bjTot, bjJejosa, bjsuibsa, bjibchu,');

          SQL.Add(' ( select top 1  pmjego from tblpummok where pmucode=bjpCode) as Jego , jegoset,                              ');
          sql.add('  b.bjDam, b.bjteam from tblBaljulist a join  tblBalju b on a.bjseq=b.bjseq                             ');
          SQL.Add(' Where bjDate >= :D1 and bjdate <= :D2                                                                  ');
          ParamByName('D1').AsString :=  varSDate ;
          ParamByName('D2').AsString :=  varEDate ;
          if varteam <> '' then
          begin
               SQL.Add(' and  b.bjteam = :bjTeam ');
               ParamByName('bjteam').AsString :=  varteam ;
          end;
          open;
          first;
          if not isEmpty then
          begin
               while not eof do
               begin
                    grdmain.AddRow;
                    varRow := grdmain.RowCount - 1;
                    grdmain.Cells[1, varRow] := FieldByName('bjpCode').AsString;
                    grdmain.Cells[2, varRow] := FieldByName('bjpName').AsString;
                    grdmain.Cells[3, varRow] := FieldByName('bjDanwi').AsString;
                     grdmain.ints[4, varRow] := FieldByName('bjDanga').AsInteger;
                    grdmain.ints[5, varRow] := FieldByName('bjSu').AsInteger;
                    grdmain.ints[6, varRow] := FieldByName('bjTot').AsInteger; ;
                    grdmain.Cells[7, varRow] := FieldByName('bjSuibsa').AsString;
                    grdmain.Cells[8, varRow] := FieldByName('bjJejosa').AsString;
                    grdmain.Cells[9, varRow] := FieldByName('bjibchu').AsString;
                    grdmain.cells[10, varRow] := FieldByName('bjTeam').AsString;
                    grdmain.cells[11, varRow] := FieldByName('bjDam').AsString;
                    grdmain.cells[12, varRow] := FieldByName('jego').AsString;
                    if  FieldByName('jegoset').AsString ='1' then
                         grdmain.cells[13, varRow] := 'O'
                    else
                         grdmain.cells[13, varRow] := 'X';

                    grdmain.cells[14, varRow] := FieldByName('bjCd').AsString;
                    grdmain.cells[15, varRow] := FieldByName('bjSeq').AsString;
                    next;
               end;
          end;
          grdmain.SavefixedCells := false;
          grdmain.FixedRows := 1;
          grdmain.FixedCols := 1;
          grdmain.autonumbercol(0);

     end;

end;


procedure Tbaljulist_f.loadJunpyo3(varSDate, varEDate: string;  varteam:string = ''); //수량 병합
var
     varRow: integer;
begin

     grdmain.RemoveRows(1, grdmain.RowCount - 1);
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select bjpCode,  bjPname, bjDanwi, bjDanga, sum(bjSu) as sumSu,  ');
          sql.add('sum(bjTot) as sumTot from tblBaljulist a join  tblBalju b on a.bjseq=b.bjseq');
          SQL.Add('Where bjDate >= :D1 and bjdate <= :D2');
          ParamByName('D1').AsString :=  varSDate ;
          ParamByName('D2').AsString :=  varEDate ;

          if varteam <> '' then
          begin
               SQL.Add(' and  b.bjteam = :bjTeam ');
               ParamByName('bjteam').AsString :=  varteam ;
          end;

           sql.add('  group by bjpCode, bjPname, bjDanwi, bjDanga  ');

          open;
          first;
          if not isEmpty then
          begin
               while not eof do
               begin
                    grdmain.AddRow;
                    varRow := grdmain.RowCount - 1;
                    grdmain.Cells[1, varRow] := FieldByName('bjpCode').AsString;
                    grdmain.Cells[2, varRow] := FieldByName('bjpName').AsString;
                    grdmain.Cells[3, varRow] := FieldByName('bjDanwi').AsString;
                     grdmain.ints[4, varRow] := FieldByName('bjDanga').AsInteger;
                    grdmain.ints[5, varRow] := FieldByName('SumSu').AsInteger;
                    grdmain.ints[6, varRow] := FieldByName('SumTot').AsInteger; ;
                  //  Cells[7, varRow] := FieldByName('bjSuibsa').AsString;
                  //  Cells[8, varRow] := FieldByName('bjJejosa').AsString;
                  //  Cells[9, varRow] := FieldByName('bjibchu').AsString;
                 //   cells[10, varRow] := FieldByName('bjTeam').AsString;
                  //  cells[11, varRow] := FieldByName('bjDam').AsString;
                    next;
               end;
          end;
          grdmain.SavefixedCells := false;
          grdmain.FixedRows := 1;
          grdmain.FixedCols := 1;
          grdmain.autonumbercol(0);

     end;

end;

procedure Tbaljulist_f.loadBjList;
var
     varRow: integer;
     varibchu, varBusu, varUser :string;
     varSql : string;
begin

     grdBjList.RemoveRows(1, grdBjList.RowCount - 1);


     varibchu:= trim(cbibchu.ColumnItems[cbibchu.itemindex, 0]);
     varBusu:= trim(cbBusu.ColumnItems[cbBusu.itemindex, 0]);
     varUser:= trim(cbUser.ColumnItems[cbUser.itemindex, 0]);

     varSql:='';

     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.text := 'Select * from tblBaljuList  ';

          if cbibchu.ItemIndex > 0 then
          begin
             if varSql = '' then
                varSQL := ' where bjuName = :bjuName'
             else
                varSQL :=  varSql + ' and bjuName = :bjuName';
          end;

          if cbBusu.ItemIndex > 0 then
          begin
             if varSql = '' then
                varSql := ' where bjTeam = :bjTeam'
             else
                varSql :=  varSql + ' and bjTeam = :bjTeam';
          end;

          if cbUser.ItemIndex > 0 then
          begin
             if varSql = '' then
                varSql := ' where bjDam = :bjDam'
             else
                varSql :=  varSql + ' and bjDam = :bjDam';
          end;

          if cbTerm.checked = true then
          begin
             if varSql = '' then
                varSql := ' where (bjDate >= :D1 and  bjDate <= :D2) '
             else
                varSql :=  varSql + ' and ( bjDate >= :D1 and  bjDate <= :D2)';
          end;

          sql.Text := sql.text + varSql;




         if cbibchu.ItemIndex > 0 then
          begin
             ParamByName('bjuName').AsString := varibchu ;
          end;

          if cbBusu.ItemIndex > 0 then
          begin
             ParamByName('bjTeam').AsString := varBusu ;
          end;

          if cbUser.ItemIndex > 0 then
          begin
             ParamByName('bjDam').AsString := varUser ;
          end;

          if cbTerm.checked = true then
          begin
             ParamByName('D1').AsString := formatDatetime('YYYY-MM-DD', datetimepicker1.date) ;
             ParamByName('D2').AsString := formatDatetime('YYYY-MM-DD', datetimepicker2.date) ;
          end;


          {1. 주문서 등록창 초기화면 초기화

2. 주문서 삭제

3. 전표저장시 저장확인

4. 일자검색

5. 주문명세서 수정기능 추가

업무등록 별도앱은 월요일에 업데이트 예정입니다.

}

          open;
          first;
          if not isEmpty then
          begin
               while not eof do
               begin
                    grdBjList.AddRow;
                    varRow := grdBjList.RowCount - 1;
                    grdBjList.Cells[1, varRow] := FieldByName('bjdate').AsString;


                    grdBjList.Cells[2, varRow] :=  LoadUpche(FieldByName('bjuName').AsString,1);
                    grdBjList.Cells[3, varRow] :=  LoadUpche(FieldByName('bjTeam').AsString,3);
                    grdBjList.Cells[4, varRow] :=  LoadUpche(FieldByName('bjDam').AsString,2);


                    grdBjList.ints[5, varRow] := FieldByName('bjSum').AsInteger;
                    grdBjList.Cells[6, varRow] := FieldByName('bjRemark').AsString; ;
                    grdBjList.Cells[7, varRow] := FieldByName('bjSeq').AsString; ;
                    next;
               end;
          end;
          grdBjList.SavefixedCells := false;
          grdBjList.FixedRows := 1;
          grdBjList.FixedCols := 1;
          grdBjList.autonumbercol(0);

     end;

end;
 function Tbaljulist_f.checkInvalid:boolean;
begin
     result:=true;
     if cbIbchu.ItemIndex = 0 then
     begin
          showmessage('업체를 선택하세요');
          cbIbchu.setfocus;
          result:=false;
          exit;
     end;
     if cbBusu.ItemIndex = 0 then
     begin
          showmessage('부서를 선택하세요');
          cbBusu.setfocus;
          result:=false;
           exit;
     end;
     if cbUser.ItemIndex = 0 then
     begin
          showmessage('담당자를 선택하세요');
          cbBusu.setfocus;
          result:=false;
           exit;
     end;

end;



procedure Tbaljulist_f.cbibchuChange(Sender: TObject);
const
     Select_Upche = 'Select * from tblUpche' + #13#10 +
          'where UcCode=:UcCode';
begin
     with dm_f.sqlwork do
     begin
          SQL.Text := Select_Upche;
          paramByName('UcCode').asString := subStr(cbibchu.Text, 2, '|');
          Open;
          if not isEmpty then
          begin
               edtDamname.Text := fieldByName('ucDamdang').asString;
               edtHp.Text := fieldByName('ucHp1').asString;
               edtTel.Text := fieldByName('ucTel1').asString;
               edtFax.Text := fieldByName('ucTel2').asString;
          end
          else
          begin
               edtDamname.Text := '';
               edtHp.Text := '';
               edtTel.Text := '';
               edtFax.Text := '';
          end;
     end;

end;

procedure Tbaljulist_f.btnUpcheClick(Sender: TObject);
begin
     if not Assigned(ibchuReg_f) then
          ibchuReg_f := TibchuReg_f.Create(application);
     ibchuReg_f.show;
     ibchuReg_f.fieldset(subStr(cbibchu.Text, 2, '|'));

end;

procedure Tbaljulist_f.grdmainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          0, 1, 2, 7, 8:
               begin
                    HAlign := taLeftJustify; // taCenter;
               end;
          3, 9, 10, 13:
               begin
                    HAlign := taCenter;
               end;
          4, 5, 6, 12:
               begin
                    HAlign := tarightJustify;
               end;
     end;

end;



function Tbaljulist_f.FindCode(varGrid: TadvStringGrid; varCode: string):
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


procedure Tbaljulist_f.AdvGlowButton4Click(Sender: TObject);
begin
    savedialog1.fileName:= '주문명세서' + '_' +edtseq.Text  +'_'
                    +substr(cbBusu.Text, 3, '|')+'_'+
                    substr(cbUser.Text, 3, '|')  +'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;

procedure Tbaljulist_f.btnSchClick(Sender: TObject);
begin


      with grdmain do
     begin
            rowcount := 1;
     end;



       loadBjList;
end;

procedure Tbaljulist_f.grdBjListClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  if aRow > 0 then
  begin
     loadJunpyo( grdBjList.Cells[7, aRow]);
     loadBaljuInfo(grdBjList.Cells[7, aRow]);

  end;
end;

procedure Tbaljulist_f.btnModClick(Sender: TObject);
begin
     if trim(edtSeq.text)  ='' then
     exit;
     if not Assigned(baljureg_f) then
          baljureg_f := Tbaljureg_f.Create(application);
       baljureg_f.show;
       baljureg_f.junpyoInputMode:=true;

         baljureg_f.loadJunpyo(edtSeq.text);
        baljureg_f.loadBaljuInfo(edtSeq.text);

end;

procedure Tbaljulist_f.grdmainGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
           case aCol of
          4,5,6:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure Tbaljulist_f.grdBjListGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
           case aCol of
          5:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure Tbaljulist_f.grdmainCanSort(Sender: TObject; ACol: Integer;
  var DoSort: Boolean);
begin
      grdmain.AutoNumberDirection:=  sdDescending   ;//sdAscending;//
      grdmain.AutoNumberCol(0);

end;

procedure Tbaljulist_f.FormCreate(Sender: TObject);
begin
     //columnCount를 지정하기 때문에 FormCreate에 와야한다.
     //그렇지 않으면 컬럼갯수가 5개 가 넘는것은 지정된 크기를 가져오지 못한다.
     //이래도 안될 경우는 디버깅모드에서 미리 정해줘야한다
     GridSet;
     datetimepicker1.date:=now;
     datetimepicker2.date:=now;
     pnlSebuList.Align:=alClient;

end;

procedure Tbaljulist_f.btnAppendClick(Sender: TObject);
var
     varteam : string;
begin
 if btnAppend.tag = 0 then
 begin
      btnJegoSet.visible:=true;

      btnMod.enabled:=false;
      pnlWonjangList.Height:=20;
      btnAppend.tag:=1;
      btnAppend.caption := '모두 합치기 해제';

      if cbBusu.ItemIndex > 0 then
         varTeam :=   substr(cbBusu.Text, 3, '|')
      else
         varTeam := '';

      loadJunpyo2(formatDatetime('YYYY-MM-DD', datetimepicker1.date),
           formatDatetime('YYYY-MM-DD', datetimepicker2.date), varTeam ) ;

 end
 else
 begin
      btnJegoSet.visible := false;

      btnMod.enabled:=true;
      pnlWonjangList.Height:=200;
      btnAppend.tag:=0;
      btnAppend.caption := '모두 합치기';
      grdMain.rowcount := 1;

 end;
end;

procedure Tbaljulist_f.btnAppend2Click(Sender: TObject);
var
    varTeam:string;
begin
      btnJegoSet.visible := false;

      if cbBusu.ItemIndex > 0 then
         varTeam :=   substr(cbBusu.Text, 3, '|')
      else
         varTeam := '';


 if btnAppend2.tag = 0 then
 begin
      btnMod.enabled:=false;
      pnlWonjangList.Height:=20;
      btnAppend2.tag:=1;
      btnAppend2.caption := '수량으로 모두 합치기 해제';
      loadJunpyo3(formatDatetime('YYYY-MM-DD', datetimepicker1.date),
      formatDatetime('YYYY-MM-DD', datetimepicker2.date), varTeam ) ;
      setSum;

 end
 else
 begin
      btnMod.enabled:=true;
      pnlWonjangList.Height:=200;
      btnAppend2.tag:=0;
      btnAppend2.caption := '수량으로 모두 합치기';
      grdMain.rowcount := 1;

 end;

end;

procedure Tbaljulist_f.btnJegoSetClick(Sender: TObject);
var
    i: integer;
begin
       for i:= 1 to grdmain.rowcount-1 do
       begin


                if  grdmain.Cells[13,i] <> 'O' then
                begin
                     if  jegoset(grdmain.Cells[1,i], grdmain.ints[5,i] *(-1) ) = true then
                     begin
                          //품목의 현 재고량에서 발주량을 빼주고

                          grdmain.Cells[13,i] := '1' ;

                          //발주리스트에서 재고반영했다고 표시를 해주자...
                          baljujegoSet(grdmain.Cells[14,i], grdmain.Cells[15,i]) ;

                     
                     end;
                end;

       end;
       showmessage('재고에 반영되었습니다.');
       btnJegoSet.Enabled:=false;
end;

end.

