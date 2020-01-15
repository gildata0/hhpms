unit baljuReg;

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
     TbaljuReg_f = class(TForm)
    AdvPanel3: TAdvPanel;
    grdPummok: TAdvStringGrid;
    pnlSch: TAdvPanel;
    AdvGlowButton1: TAdvGlowButton;
    btnSch: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    btnMod: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvPanel4: TAdvPanel;
    Label3: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    cbSch: TComboBox;
    edtSch: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    AdvPanel1: TAdvPanel;
    pnlbtn: TAdvPanel;
    btnAdd: TAdvGlowButton;
    btnDel: TAdvGlowButton;
    btnPrt: TAdvGlowButton;
    btnCls: TAdvGlowButton;
    btnSave: TAdvGlowButton;
    btnPrev: TAdvGlowButton;
    btnNext: TAdvGlowButton;
    pnlTop: TAdvPanel;
    AdvGroupBox2: TAdvGroupBox;
    Label14: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cbUser: TColumnComboBox;
    cbBusu: TColumnComboBox;
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
    cbibchu: TColumnComboBox;
    edtDamName: TEdit;
    edtTel: TEdit;
    dpDate: TDateTimePicker;
    edtFax: TEdit;
    edtHp: TEdit;
    btnUpche: TAdvGlowButton;
    AdvSplitter1: TAdvSplitter;
    Label16: TLabel;
    dpIbgo: TDateTimePicker;
    Label6: TLabel;
    edtSeq: TEdit;
    AdvGlowButton4: TAdvGlowButton;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    cbBuga: TCheckBox;
    grdmain: TAdvStringGrid;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure btnPrtClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure grdmainGetEditorType(Sender: TObject; ACol, ARow: Integer;
               var AEditor: TEditorType);
          procedure grdmainKeyPress(Sender: TObject; var Key: Char);
          procedure btnSaveClick(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
          procedure btnPrevClick(Sender: TObject);
          procedure btnNextClick(Sender: TObject);
          procedure cbibchuChange(Sender: TObject);
    procedure btnUpcheClick(Sender: TObject);
    procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure btnSchClick(Sender: TObject);
    procedure grdPummokDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdPummokGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure grdmainDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnDelClick(Sender: TObject);
    procedure grdPummokCanSort(Sender: TObject; ACol: Integer;
      var DoSort: Boolean);
    procedure edtSchKeyPress(Sender: TObject; var Key: Char);
    procedure grdmainGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdmainCanSort(Sender: TObject; ACol: Integer;
      var DoSort: Boolean);
    procedure FormCreate(Sender: TObject);
     private
    { Private declarations }
          selectedCode: string;
          procedure GridSet;
          procedure ComboLoad;
          procedure fieldSetGrid(varData: string);
          function saveBalju: boolean;
          function JunpyoSeqCreate: string;
          function MaxSeqno: string;
          procedure setSum;
          procedure loadUpcheInfo(varUcCode: string);
    procedure SelectData;
    procedure FieldClear;
    function FindCode(varGrid: TadvStringGrid;
      varCode: string): TGridfindtext;
   function checkInvalid:boolean;
    function DeleteJunpyo(varJunpyoCode: string): boolean;
    procedure JunpyoCreate;

     public
    { Public declarations }
          junpyoInputMode:boolean;
          procedure loadBaljuInfo(varSeq: string);
          procedure loadJunpyo(varSeq: string);
     end;

var
     baljuReg_f: TbaljuReg_f;

implementation

uses main, DM, DynamicPrint, ibgo, uFunctions, findpummok, wait, ibchuReg;
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

function TbaljuReg_f.JunpyoSeqCreate: string;
const
     Select_MaxSeq = 'Select isnull(Max(bjSeq),0)+1 as maxSeq from tblBaljuList';
begin
     with dm_f.sqlWork do
     begin
          SQL.Text := Select_MaxSeq;
          Open;
          result := formatFloat('0000000000', fieldbyname('maxSeq').asfloat);
     end;

end;

function TbaljuReg_f.MaxSeqno: string;
const
     Select_MaxSeq = 'Select isnull(Max(bjSeq),0) as maxSeq from tblBaljuList';
begin
     with dm_f.sqlWork do
     begin
          SQL.Text := Select_MaxSeq;
          Open;
          result := formatFloat('0000000000', fieldbyname('maxSeq').asfloat);
     end;

end;



procedure TbaljuReg_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TbaljuReg_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;
begin
     application.ProcessMessages;
     caption := '주문서 등록';
     iHeight := main_f.ClientHeight;
     iWidth := main_f.ClientWidth;
     iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 64;
     iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 1;
     SetBounds(0, 0, iWidth, iHeight);

     if not Assigned(wait_f) then
          wait_f := Twait_f.Create(application);


     FieldClear;

     with wait_f do
     begin
          show;
          application.ProcessMessages;
          ComboLoad;
          GridSet;
          edtSeq.text := MaxSeqno;
          application.ProcessMessages;
        //  loadJunpyo(edtSeq.text);
        //  loadBaljuInfo(edtSeq.text);
          close;
     end;


end;

procedure TbaljuReg_f.FieldClear;
begin
     cbSch.itemindex := 2;
   //  memchamgo.text:='';
     edtsch.text := '';
     dpIbgo.date := now;

     DateTimepicker1.Date := now;
     DateTimepicker2.Date := now;
     grdmain.Rowcount:=1;

     edtSeq.Text := JunpyoSeqCreate;


     edtDamname.Text := '';
     edtHp.Text := '';
     edtTel.Text := '';
     edtFax.Text := '';
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


procedure TbaljuReg_f.btnClsClick(Sender: TObject);
begin
     close;
end;





procedure TbaljuReg_f.btnPrtClick(Sender: TObject);
var
     DynamicPrint_f: TDynamicPrint_f;
     HospName: string;
begin
//grdmain.PrintPreview();
     DynamicPrint_f := TDynamicPrint_f.CreateFrm(Self, grdmain);
     try
          with DynamicPrint_f, QuickRep1 do
          begin
               Caption := '주문 명세서 인쇄';
               HospName := dm_f.Name;
               LblSubject.Caption := '주문명세서';
               LblTerm.Caption := '';
               LblHospName.Caption := HospName;
               LblPrtDay.Caption := '출력일자:' + FormatDateTime('YYYY-MM-DD', Now);
               PreviewModal;
          end;
     finally
          DynamicPrint_f.Free;
     end;

end;

procedure TbaljuReg_f.GridSet;
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

     with grdPummok do
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


     end;




     with grdmain do
     begin
          ColCount := 11;
          rowcount := 1;
          columnHeaders.LoadFromFile(path + 'gridheader\balju.txt');
          align := alclient;

          RemoveRows(1, RowCount - 1);
          fixedRowAlways:=true;
          rowcount := 1;
          FixedRows := 1;
          FixedCols := 1;

     end;
     FormInit.Free;

end;


procedure TbaljuReg_f.FormDestroy(Sender: TObject);
begin
     baljuReg_f := nil;
end;

procedure TbaljuReg_f.ComboLoad;
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
     Select_Busu = 'Select * from tblBusu' + #13#10 +
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
                    Strings.Add('업체를 선택하세요');
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
                    Strings.Add('담당자를 선택하세요');
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
                    Strings.Add('부서를 선택하세요');
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

procedure TbaljuReg_f.grdmainGetEditorType(Sender: TObject; ACol,
     ARow: Integer; var AEditor: TEditorType);
begin
{     with grdmain do
     begin
          case acol of
               2: begin
                         aEditor := edComboEdit;
                         ClearComboString;
                         with dm_f.sqlWork do
                         begin
                              close;
                              sql.Clear;
                              sql.add('select pmUcode, pmname, pmPrice from tblPummok');
                              open;
                              if not isEmpty then
                              begin
                                   while not eof do
                                   begin
                                        combobox.Items.Add(fieldByname('pmuCode').asString + ':' + fieldByname('pmname').asString + ':' + fieldByname('pmPrice').asString);
                                       // combobox.Items..Items.Add(fieldByname('pmname').asString);
                                        next;
                                   end;
                              end;
                         end;
                         Combobox.Sorted := True;

                    end;
               3: begin
                         aEditor := edComboEdit;
                         ClearComboString;
                         with dm_f.sqlWork do
                         begin
                              close;
                              sql.Clear;
                              sql.add('select pmDanwi from tblPummok');
                              sql.add('group by pmDanwi');
                              open;
                              if not isEmpty then
                              begin
                                   while not eof do
                                   begin
                                        if fieldByname('pmDanwi').asString <> '' then
                                             combobox.Items.Add(fieldByname('pmDanwi').asString);
                                        next;
                                   end;
                              end;
                         end;
                         Combobox.Sorted := True;

                    end;
               7: begin
                         aEditor := edComboEdit;
                         ClearComboString;


                    end;

               8: begin
                         aEditor := edComboEdit;
                         ClearComboString;
                         with dm_f.sqlWork do
                         begin
                              close;
                              sql.Clear;
                              sql.add('select pmJejoName from tblPummok');
                              sql.add('group by  pmJejoName');
                              open;
                              if not isEmpty then
                              begin
                                   while not eof do
                                   begin
                                        combobox.Items.Add(fieldByname('pmJejoName').asString);

                                        next;
                                   end;
                              end;
                         end;
                         Combobox.Sorted := True;

                    end;

               9: begin
                         aEditor := edComboEdit;
                         ClearComboString;
                         with dm_f.sqlWork do
                         begin
                              close;
                              sql.Clear;
                              sql.add('select pmSuibName from tblPummok');
                              sql.add('group by  pmSuibName');
                              open;
                              if not isEmpty then
                              begin
                                   while not eof do
                                   begin
                                        combobox.Items.Add(fieldByname('pmSuibName').asString);
                                        next;
                                   end;
                              end;
                         end;
                         Combobox.Sorted := True;

                    end;
              10: begin
                         aEditor := edComboEdit;
                         ClearComboString;

                    end;

          end;
     end;

     case acol of
          1: aEditor := edDateEdit; //일자
        //  2: aEditor := edComboList; //상품명
         // 3: aEditor := edComboList; //단위

          5: aEditor := edSpinEdit; //수량
        //  7: aEditor := edComboList; //팀
        //  10: aEditor := edComboList; //관리자

     end;
   }
end;





procedure TbaljuReg_f.grdmainKeyPress(Sender: TObject; var Key: Char);
var
     varGridCol: integer;
     varDanga, varGaetsu, varSum : integer;
     varGaetsuStr:string;
begin
    // varGridCol := grdMain.Col - 1;
     varGridCol := grdMain.Col;
     if key = #13 then
     begin
          case varGridCol of

               2://상품명
                    begin

                         if checkInvalid = false then
                         exit;
                          // showmessage('0:'+grdMain.Cells[0, grdMain.Row]) ;
                          // showmessage('1:'+grdMain.Cells[1, grdMain.Row]) ;
                          // showmessage('2:'+grdMain.Cells[2, grdMain.Row]) ;
                         if not Assigned(findPummok_f) then
                              findPummok_f := TfindPummok_f.Create(application);

                         with findPummok_f do
                         begin
                              selectData(baljuReg_f.grdMain.Cells[1, baljuReg_f.grdMain.Row]);
                              if ShowModal = mrOk then
                              begin
                                   fieldSetGrid(selectedData);
                                   setSum;
                              end;
                         end;

                    end;
               5://수량
                    begin
                         varDanga:= grdMain.ints[4, baljuReg_f.grdMain.Row];
                         varGaetsuStr := trim( grdMain.cells[5, baljuReg_f.grdMain.Row]);
                         varGaetsu:=strtoint(trim(grdMain.cells[5, baljuReg_f.grdMain.Row]));
                         varSum := varDanga * varGaetsu;
                         grdMain.ints[6, baljuReg_f.grdMain.Row] :=   varSum ;
                        //    grdMain.ints[4, baljuReg_f.grdMain.Row]
                        //       * grdMain.ints[5, baljuReg_f.grdMain.Row];

                         setSum;
                    end;
          end;
     end;

end;

procedure TbaljuReg_f.setSum;
begin
     if cbBuga.Checked = false then
     begin
        edtGeumek.Text := formatFloat('#,0', grdmain.ColumnSum(6, 1, grdMain.Rowcount - 1));
        edtBugase.Text := formatFloat('#,0', edtGeumek.FloatValue * 0.1);
        edtSum.Text    := formatFloat('#,0', edtGeumek.FloatValue + edtBugase.FloatValue);
     end
     else
     begin
        // grdmain.ColumnSum(6, 1,  grdMain.Rowcount - 1));

        edtGeumek.Text := formatFloat('#,0', grdmain.ColumnSum(6, 1,  grdMain.Rowcount - 1)/1.1 );
        edtBugase.Text := formatFloat('#,0', grdmain.ColumnSum(6, 1,  grdMain.Rowcount - 1)
                                         -   grdmain.ColumnSum(6, 1,  grdMain.Rowcount - 1)/1.1 );
        edtSum.Text    := formatFloat('#,0',  edtGeumek.IntValue + edtBugase.IntValue);
     end;
end;

procedure TbaljuReg_f.fieldSetGrid(varData: string);
var
     varRow: integer;
begin

     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select PmuCode,PmBarCode, PmName, PmDanwi, PmModel, PmPrice, pmBuncode, pmJejocode, pmJejoName, pmSuibName From tblPummok');
          SQL.Add('Where PmuCode = :PmuCode');
          ParamByName('PmuCode').AsString := varData;
          open;
          if not isEmpty then
          begin
              //  varRow:= RowCount - 1;
               varRow := grdmain.Row;
           //   AddRow;
               grdmain.Cells[1, varRow] := FieldByName('pmuCode').AsString;
               grdmain.Cells[2, varRow] := FieldByName('pmName').AsString;
               grdmain.Cells[3, varRow] := FieldByName('pmDanwi').AsString;
               grdmain.ints[4, varRow] := FieldByName('PmPrice').AsInteger;
               grdmain.ints[5, varRow] := 1;
               grdmain.ints[6, varRow] := FieldByName('PmPrice').AsInteger;
               grdmain.Cells[7, varRow] := FieldByName('pmSuibName').AsString;
               grdmain.Cells[8, varRow] := FieldByName('pmJejoName').AsString;
               grdmain.Cells[9, varRow] := substr(cbibchu.text, 3, '|');
               grdmain.cells[10, varRow] := substr(cbBusu.Text, 3, '|');
               grdmain.cells[11, varRow] := substr(cbUser.Text, 3, '|');

          end;
          grdmain.SavefixedCells := false;
          grdmain.autonumbercol(0);
        //  SavefixedCells := false;
          grdmain.FixedRows := 1;
          grdmain.FixedCols := 1;

         // edtEa.Value := edtEa.Value + 1;
        //  edtPrice.Value := edtPrice.Value + FieldByName('PmPrice').AsInteger;

     end;

end;

procedure TbaljuReg_f.btnAddClick(Sender: TObject);
begin

    JunpyoCreate;

end;

procedure TbaljuReg_f.JunpyoCreate;
begin

    //기존전표를 저장하고...
    if grdmain.Rowcount > 1 then
     saveBalju;

     btnAdd.Enabled := false;
     //그리드 초기화 하고.
     grdmain.Rowcount:=1;

     edtSeq.Text := JunpyoSeqCreate;

     junpyoInputMode := true;


     edtDamname.Text := '';
     edtHp.Text := '';
     edtTel.Text := '';
     edtFax.Text := '';
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

procedure TbaljuReg_f.loadUpcheInfo(varUcCode: string);
begin

     with DM_f.SqlWork do
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


procedure TbaljuReg_f.loadBaljuInfo(varSeq: string);
var
      varibchu, varBusu, varUser:string;
begin

     with DM_f.SqlWork do
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

           //   showmessage(inttostr( cbibchu.ComboItems.IndexInColumnOf(1, '덴티스타치과')));
            //   showmessage(inttostr( cbibchu.ComboItems.IndexInColumnOf(0, '0011')));

               dpDate.date := strToDate(fieldByname('bjDate').asString);
               dpDate2.date := strToDate(fieldByname('bjFDate').asString);
               //cbdoc.ItemIndex := cbDoc.ComboItems.IndexOf(fieldByName('doc').asString).y;
                                  //cbDoc.ComboItems.IndexOf( main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex,2]).y;
               cbIbchu.ItemIndex := cbibchu.ComboItems.IndexInColumnOf(0, varibchu);//cbIbchu.ComboItems.IndexOf( fieldByname('bjuName').asString).y;
               cbBusu.ItemIndex := cbBusu.ComboItems.IndexInColumnOf(0, varBusu);
               cbUser.ItemIndex := cbUser.ComboItems.IndexInColumnOf(0, varUser);
               memRemark.Text := fieldByname('bjRemark').asString;
               edtSum.Text := formatFloat('#,0', fieldByname('bjSum').asFloat);
               edtGeumek.Text := formatFloat('#,0', fieldByname('bjGeumEk').asFloat);
               edtBugase.Text := formatFloat('#,0', fieldByname('bjBugase').asFloat);
               edtSeq.text:=  fieldByname('bjSeq').asString;
          end;
     end;
     loadUpcheInfo(substr(cbIbchu.text, 2, '|'));

end;



procedure TbaljuReg_f.loadJunpyo(varSeq: string);
var
     varRow: integer;
begin

     grdmain.RemoveRows(1, grdmain.RowCount - 1);
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * from tblBalju');
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
                    next;
               end;
          end;
          grdmain.SavefixedCells := false;
          grdmain.FixedRows := 1;
          grdmain.FixedCols := 1;
          grdmain.autonumbercol(0);

     end;

end;


function TbaljuReg_f.checkInvalid:boolean;
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

function TbaljuReg_f.saveBalju: boolean;
var
     i: integer;

     varJunpyoSeq: string;
begin
     result := false;




     if checkInvalid = false then
     begin
          exit;
     end;



      //전표코드 생성
     with DM_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from tblbaljulist');
          Sql.Add('where bjSeq=:bjSeq');
          ParamByName('bjSeq').AsString := edtSeq.text;
          open;
          if not isEmpty then
          begin
               varJunpyoSeq := edtSeq.text;
          end
          else
          begin
               varJunpyoSeq := JunpyoSeqCreate;
          end;
     end;



     with DM_f.SqlWork do
     begin
          try
             //  DM_f.Database1.StartTransaction;

               Close;
               Sql.Clear;
               Sql.Add('delete from tblbaljulist');
               Sql.Add('where bjSeq=:bjSeq');
               ParamByName('bjSeq').AsString := varJunpyoSeq;
               execsql;

               Close;
               Sql.Clear;
               Sql.Add('delete from tblbalju');
               Sql.Add('where bjSeq=:bjSeq');
               ParamByName('bjSeq').AsString := varJunpyoSeq;
               ParamByName('bjSeq').AsString := varJunpyoSeq;
               execsql;

               Close;
               Sql.Clear;
               Sql.Add('insert into tblbaljulist');
               Sql.Add('(bjSeq, bjDate, bjFDate, bjuName, bjTeam, bjDam, bjGeumek,bjBugase, bjSum, bjRemark) values');
               Sql.Add('(:bjSeq, :bjDate, :bjFDate, :bjuName, :bjTeam, :bjDam, :bjGeumek,:bjBugase, :bjSum, :bjRemark) ');
               ParamByName('bjSeq').AsString := varJunpyoSeq;
               ParamByName('bjDate').AsString := formatDatetime('YYYY-MM-DD', dpDate.date);
               ParamByName('bjFDate').AsString := formatDatetime('YYYY-MM-DD', dpDate2.date);
               ParamByName('bjuName').AsString := cbibchu.ColumnItems[cbibchu.itemindex, 0];//cbibchu.text; // substr(cbibchu.text, 3, '|');
               ParamByName('bjTeam').AsString := cbBusu.ColumnItems[cbBusu.itemindex, 0];//cbBusu.Text; // substr(cbBusu.Text, 3, '|');
               ParamByName('bjDam').AsString :=cbUser.ColumnItems[cbUser.itemindex, 0];// cbUser.Text; // substr(cbUser.Text, 3, '|');
               ParamByName('bjGeumek').AsString := delcomma(edtGeumek.Text);
               ParamByName('bjBugase').AsString := delcomma(edtBugase.Text);
               ParamByName('bjSum').AsString := delcomma(edtSum.Text);
               ParamByName('bjRemark').AsString := memRemark.Text;
               execSql;

               with grdmain do
               begin
                    for i := 1 to Rowcount - 1 do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('insert into tblbalju');
                         Sql.Add('(bjCd, bjSeq, bjPname,bjPcode, bjDanwi, bjModel, bjDanga,bjSu,bjTot,bjJejosa,bjSuibsa,bjibchu,bjTeam,bjDam ) values');
                         Sql.Add('(:bjCd, :bjSeq, :bjPname,:bjPcode,  :bjDanwi, :bjModel, :bjDanga,:bjSu,:bjTot,:bjJejosa,:bjSuibsa,:bjibchu,:bjTeam,:bjDam ) ');
                         ParamByName('bjSeq').AsString := varJunpyoSeq;
                         ParamByName('bjCd').AsString := inttostr(i);
                         ParamByName('bjPCode').AsString := cells[1, i];
                         ParamByName('bjPname').AsString := cells[2, i];
                         ParamByName('bjDanwi').AsString := cells[3, i];
                         ParamByName('bjDanga').AsString := cells[4, i];
                         ParamByName('bjSu').AsString := cells[5, i];
                         ParamByName('bjTot').AsString := cells[6, i];
                         ParamByName('bjSuibsa').AsString := cells[7, i];
                         ParamByName('bjJejosa').AsString := cells[8, i];
                         ParamByName('bjibchu').AsString := cells[9, i];
                         ParamByName('bjTeam').AsString := cells[10, i];
                         ParamByName('bjDam').AsString := cells[11, i];
                         execSql;
                    end;
               end;
            //   DM_f.Database1.Commit;
               result := true;
          except
               on E: Exception do
               begin
           //         DM_f.Database1.Rollback;

                    ShowMessage(E.Message + ' [저장오류]');
               end;


          end;

     end;
end;


procedure TbaljuReg_f.btnSaveClick(Sender: TObject);
begin
   if    saveBalju = true    then
   begin
       showmessage('저장하였습니다.');
       btnAdd.Enabled := true;

   end;
end;

procedure TbaljuReg_f.btnPrevClick(Sender: TObject);
begin
      saveBalju;
     if strtoint(edtSeq.text) > 1 then
     begin
          if not Assigned(wait_f) then
               wait_f := Twait_f.Create(application);
          with wait_f do
          begin
               show;
               edtSeq.text := formatFloat('0000000000', strtoint(edtSeq.text) - 1);
               application.ProcessMessages;
               loadJunpyo(edtSeq.text);
               loadBaljuInfo(edtSeq.text);
               close;
          end;
     end
     else
     begin
          showmessage('전표의 처음입니다');
     end;


end;

procedure TbaljuReg_f.btnNextClick(Sender: TObject);
begin

      saveBalju;
     if strtoint(edtSeq.text) < strtoint(maxSeqNo) then
     begin
          if not Assigned(wait_f) then
               wait_f := Twait_f.Create(application);
          with wait_f do
          begin
               show;
               edtSeq.text := formatFloat('0000000000', strtoint(edtSeq.text) + 1);
               application.ProcessMessages;
               loadJunpyo(edtSeq.text);
               loadBaljuInfo(edtSeq.text);
               close;
          end;
     end
     else
     begin
          showmessage('전표의 마지막입니다');
     end;

end;

procedure TbaljuReg_f.cbibchuChange(Sender: TObject);
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

procedure TbaljuReg_f.btnUpcheClick(Sender: TObject);
begin
     if not Assigned(ibchuReg_f) then
          ibchuReg_f := TibchuReg_f.Create(application);
     ibchuReg_f.show;
     ibchuReg_f.fieldset(subStr(cbibchu.Text, 2, '|'));

end;

procedure TbaljuReg_f.grdmainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          0, 1, 2, 7, 8:
               begin
                    HAlign := taLeftJustify; // taCenter;
               end;
          3, 9, 10:
               begin
                    HAlign := taCenter;
               end;
          4,5,6:
               begin
                    HAlign := tarightJustify;
               end;
     end;

end;
procedure TbaljuReg_f.SelectData;
const

     Select_All = 'Select * from tblPummok';
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
          grdPummok.RemoveRows(1, grdPummok.RowCount - 1);
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
                    grdPummok.AddRow; // 그리드에 빈 로우를 추가
                    grdPummok.Cells[1, grdPummok.RowCount - 1] := FieldByName('PmuCode').AsString;
                    grdPummok.Cells[2, grdPummok.RowCount - 1] := FieldByName('PmBarCode').AsString;
                    grdPummok.Cells[3, grdPummok.RowCount - 1] := FieldByName('PmName').AsString;
                    grdPummok.Cells[4, grdPummok.RowCount - 1] := FieldByName('PmSpec').AsString;
                    grdPummok.Cells[5, grdPummok.RowCount - 1] := FieldByName('PmDanwi').AsString;
                    grdPummok.Cells[6, grdPummok.RowCount - 1] := FieldByName('Pmpic').AsString;
                    grdPummok.Cells[7, grdPummok.RowCount - 1] := FieldByName('PmBuncode').AsString;
                    grdPummok.Cells[8, grdPummok.RowCount - 1] := FieldByName('PmJejoCode').AsString;
                    grdPummok.Cells[9, grdPummok.RowCount - 1] := FieldByName('PmLocate').AsString;
                    grdPummok.Cells[10, grdPummok.RowCount - 1] := FieldByName('PmJegoMin').AsString;
                   // Cells[11, RowCount - 1] := FieldByName('PmJegoMax').AsString;
                    grdPummok.Cells[11, grdPummok.RowCount - 1] := FieldByName('PmJego').AsString;
                    grdPummok.Cells[12, grdPummok.RowCount - 1] := FieldByName('PmPrice').AsString;
                    grdPummok.Cells[13, grdPummok.RowCount - 1] := FieldByName('PmRate').AsString;
                    grdPummok.Cells[14, grdPummok.RowCount - 1] := FieldByName('PmRegDay').AsString;
                    grdPummok.Cells[15, grdPummok.RowCount - 1] := FieldByName('PmUseDay').AsString;
                    Next;
               end;
          if grdPummok.rowcount < 2 then
          begin
               grdPummok.rowcount := 2;
          end;
          grdPummok.FixedRows := 1;
         // autosizeColumns(true, 38);
          grdPummok.autonumbercol(0);

     end;
end;

{
procedure TbaljuReg_f.SelectData;
begin

{전체
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
{     with Dm_f.SqlSel, grdPummok do
     begin
          RemoveRows(1, RowCount - 1);
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
               8:
                    begin
                         SQL.Text := SELECT_ALL;
                         ParamByName('GOut').AsString := '%' + edtSch.text + '%';
                    end;
          end;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    AddRow; // 그리드에 빈 로우를 추가
                    Cells[1, RowCount - 1] := FieldByName('PmuCode').AsString;
                    Cells[2, RowCount - 1] := FieldByName('PmBarCode').AsString;
                    Cells[3, RowCount - 1] := FieldByName('PmName').AsString;
                    Cells[4, RowCount - 1] := FieldByName('PmSpec').AsString;
                    Cells[5, RowCount - 1] := FieldByName('PmDanwi').AsString;
                    Cells[6, RowCount - 1] := FieldByName('Pmpic').AsString;
                    Cells[7, RowCount - 1] := FieldByName('PmBuncode').AsString;
                    Cells[8, RowCount - 1] := FieldByName('PmJejoCode').AsString;
                    Cells[9, RowCount - 1] := FieldByName('PmLocate').AsString;
                    Cells[10, RowCount - 1] := FieldByName('PmJegoMin').AsString;
                   // Cells[11, RowCount - 1] := FieldByName('PmJegoMax').AsString;
                    Cells[11, RowCount - 1] := FieldByName('PmJego').AsString;
                    Cells[12, RowCount - 1] := FieldByName('PmPrice').AsString;
                    Cells[13, RowCount - 1] := FieldByName('PmRate').AsString;
                    Cells[14, RowCount - 1] := FieldByName('PmRegDay').AsString;
                    Cells[15, RowCount - 1] := FieldByName('PmUseDay').AsString;
                    Cells[16, RowCount - 1] := FieldByName('Pmsuibname').AsString;
                    Cells[17, RowCount - 1] := FieldByName('Pmjejoname').AsString;




                    Next;
               end;
          if rowcount < 2 then
          begin
               rowcount := 2;
          end;
          FixedRows := 1;
         // autosizeColumns(true, 38);
          autonumbercol(0);

     end;
end;
 }


procedure TbaljuReg_f.btnSchClick(Sender: TObject);
begin
       selectData;
end;

procedure TbaljuReg_f.grdPummokDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
     varSelectedRow: integer;
begin

     if  junpyoInputMode = false then
     begin
             if Application.MessageBox(PChar('새 주문 전표를 생성하시겠습니까?'),
          '주문전표생성', MB_YESNO) = IDYES then
           begin
                JunpyoCreate;
           end
           else
           begin
                exit;

           end;

     end;


     if checkInvalid = false then
     exit;

     varSelectedRow := FindCode(grdmain, grdpummok.cells[1, aRow]).varRow;
     //그리드에서   varData를 찾아서 같은 varData가 있으면 수량을 올려준다.
     if varSelectedRow > 0 then
     begin
          grdmain.ints[5, varSelectedRow] := grdmain.ints[5, varSelectedRow] + 1;
          grdmain.ints[6, varSelectedRow] := grdmain.ints[4, varSelectedRow] * grdmain.ints[5, varSelectedRow];
          setSum;
          exit;
     end;
             {  Cells[1, varRow] := FieldByName('pmName').AsString;
               Cells[2, varRow] := FieldByName('pmDanwi').AsString;
               Cells[3, varRow] := FieldByName('pmModel').AsString;
               ints[4, varRow] := FieldByName('PmPrice').AsInteger;
               ints[5, varRow] := 1;
               ints[6, varRow] := FieldByName('PmPrice').AsInteger;
               Cells[7, varRow] := FieldByName('pmSuibName').AsString;
               Cells[8, varRow] := FieldByName('pmJejoName').AsString;
               Cells[9, varRow] := substr(cbibchu.text, 3, '|');
               cells[10, varRow] := substr(cbBusu.Text, 3, '|');
               cells[11, varRow] := substr(cbUser.Text, 3, '|');
              }

             if aRow > 0 then
               with grdmain do
               begin
                    addrow;
                    Cells[1, RowCount - 1]  := grdpummok.cells[1, aRow];//코드
                    Cells[2, RowCount - 1]  := grdpummok.cells[3, aRow];//품명
                    Cells[3, RowCount - 1]  := grdpummok.cells[5, aRow];//단위
                    ints[4, RowCount - 1]   := grdpummok.ints[12, aRow];  //단가
                    ints[5, RowCount - 1]   :=  1 ;  //수량
                    ints[6, RowCount - 1]   := grdpummok.ints[12, aRow];  //단가 * 수량
                    Cells[7, RowCount - 1]  := grdpummok.cells[16,aRow];
                    Cells[8, RowCount - 1]  := grdpummok.cells[17,aRow];
                    Cells[9, RowCount - 1]  := cbibchu.ColumnItems[cbibchu.itemindex, 1];//substr(cbibchu.text, 3, '|');
                    cells[10, RowCount - 1] := cbBusu.ColumnItems[cbBusu.itemindex, 1];//substr(cbBusu.Text, 3, '|');
                    cells[11, RowCount - 1] := cbUser.ColumnItems[cbUser.itemindex, 1];//substr(cbUser.Text, 3, '|');
                    autonumbercol(0);
               end;


         setSum;

end;

function TbaljuReg_f.FindCode(varGrid: TadvStringGrid; varCode: string):
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


procedure TbaljuReg_f.grdPummokGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     HAlign := taLeftJustify; ;

end;

procedure TbaljuReg_f.AdvGlowButton4Click(Sender: TObject);
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

procedure TbaljuReg_f.grdmainDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
       if arow <= 0 then exit;
       if aCol=0 then
       begin
            grdmain.RemoveRows(aRow, 1);
            grdmain.AutoNumberCol(0);
       end;
end;

procedure TbaljuReg_f.btnDelClick(Sender: TObject);
begin
    if   DeleteJunpyo(edtSeq.text)= true then
    fieldclear;
end;
function TbaljuReg_f.DeleteJunpyo(varJunpyoCode:string):boolean;
begin
     if Application.MessageBox(PChar('선택하신 내용을 [삭제]하시겠습니까?'
          +
          #10#13 + '삭제하신 내용은 복구되지 않습니다.'),
          '주문전표삭제', MB_YESNO) = IDYES then
     begin

     result:=true;
     with DM_f.SqlWork do
     begin
          try
             //  DM_f.Database1.StartTransaction;

               Close;
               Sql.Clear;
               Sql.Add('delete from tblbaljulist');
               Sql.Add('where bjSeq=:bjSeq');
               ParamByName('bjSeq').AsString := varJunpyoCode;
               execsql;

               Close;
               Sql.Clear;
               Sql.Add('delete from tblbalju');
               Sql.Add('where bjSeq=:bjSeq');
               ParamByName('bjSeq').AsString := varJunpyoCode;
               execsql;
          except
             result:=false;
          end;
       end;
     end;
end;

procedure TbaljuReg_f.grdPummokCanSort(Sender: TObject; ACol: Integer;
  var DoSort: Boolean);
begin
      grdPummok.AutoNumberDirection:=  sdDescending   ;//sdAscending;//
      grdPummok.AutoNumberCol(0);

end;

procedure TbaljuReg_f.edtSchKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
      begin
                selectdata;

      end;

end;

procedure TbaljuReg_f.grdmainGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          4..6:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure TbaljuReg_f.grdmainCanSort(Sender: TObject; ACol: Integer;
  var DoSort: Boolean);
begin
      grdmain.AutoNumberDirection:=  sdDescending   ;//sdAscending;//
      grdmain.AutoNumberCol(0);

end;

procedure TbaljuReg_f.FormCreate(Sender: TObject);
begin
          junpyoInputMode := false;

end;

end.

