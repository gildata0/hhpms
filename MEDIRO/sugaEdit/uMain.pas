unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  uni,
   ExtCtrls, ShellAPI, StdCtrls, OleCtrls, SHDocVw, ComCtrls,
  ImgList, Menus,
  Mask,     inifiles,
   AdvPanel, Grids, AdvObj, BaseGrid, AdvGrid, System.ImageList, FormSize,
  AdvUtil, Vcl.Buttons, AdvSplitter, AdvEdit, AdvCombo, ColCombo;

type
  PMyRec = ^TMyRec;
  TMyRec = record
    GName: string;
    GCode: string;
    GPath: string;
    Gilsu: string;
    gSangByung1 : string;
    gSangByung2 : string;
    gSangByung3 : string;
    gSangByung4 : string;
    gSangByung5 : string;
    gSangByungCode1 : string;
    gSangByungCode2 : string;
    gSangByungCode3 : string;
    gSangByungCode4 : string;
    gSangByungCode5 : string;
    gKwamok     : string;
    gCC : string;

  end;
  TMain_f = class(TForm)
    Panel26: TPanel;
    SugaTree: TImageList;
    LargeImage: TImageList;
    SmallImage: TImageList;
    TreePopUP: TPopupMenu;
    N32: TMenuItem;
    N33: TMenuItem;
    N2: TMenuItem;
    N35: TMenuItem;
    N34: TMenuItem;
    N38: TMenuItem;
    PopupGroup2: TPopupMenu;
    N27: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N30: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N28: TMenuItem;
    N1: TMenuItem;
    N29: TMenuItem;
    PopupGroup1: TPopupMenu;
    N19: TMenuItem;
    N21: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N3: TMenuItem;
    grdSuga: TAdvStringGrid;
    FormSize1: TFormSize;
    pnlLeft: TAdvPanel;
    grdGroupCode: TAdvStringGrid;
    AdvSplitter4: TAdvSplitter;
    AdvSplitter5: TAdvSplitter;
    pnlMain: TPanel;
    Panel3: TPanel;
    pnlGroupSuga: TAdvPanel;
    grdGroupSuga: TAdvStringGrid;
    AdvSplitter1: TAdvSplitter;
    Panel4: TPanel;
    Panel33: TAdvPanel;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    ComboBox6: TComboBox;
    edtSearchSuga: TEdit;
    btnFind: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    btnIns: TButton;
    btnMod: TButton;
    btnInit: TButton;
    btnDelete: TButton;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    Label10: TLabel;
    edtGroupOrderValue: TEdit;
    btnGroupSearch: TButton;
    rgGroupSugaFind: TRadioGroup;
    btnAllAccept: TButton;
    pnlAllAccept: TAdvPanel;
    Button2: TButton;
    btnAllChange: TButton;
    gbBefore: TGroupBox;
    Label12: TLabel;
    edtBeforeCode: TEdit;
    lblBefName: TLabel;
    gbAfter: TGroupBox;
    Label13: TLabel;
    lblAftName: TLabel;
    edtAfterCode: TEdit;
    rgKind: TRadioGroup;
    N7: TMenuItem;
    lstGroupTemp: TListBox;
    cbAddGroup: TCheckBox;
    Button23: TButton;
    Button15: TButton;
    Button18: TButton;
    btnSchOrgSuga: TButton;
    Button5: TButton;
    btnRefresh: TButton;
    Panel8: TPanel;
    Button1: TButton;
    btnArrowUp: TButton;
    btnArrowDown: TButton;
    btnAddRow: TButton;
    pnlIns: TAdvPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    edtGroupName: TEdit;
    edtGroupCode: TEdit;
    cbKwamok: TComboBox;
    ComboBox2: TComboBox;
    edtQty: TAdvEdit;
    edtOneDay: TAdvEdit;
    edtIlsu: TAdvEdit;
    ColumnComboBox1: TColumnComboBox;
    AdvEdit1: TAdvEdit;
    cbLabSect: TComboBox;
    Memo3: TMemo;
    Memo4: TMemo;
    pnlCC: TAdvPanel;
    memCC: TMemo;
    AdvSplitter2: TAdvSplitter;
    pnlSangByung: TAdvPanel;
    grdSangByung: TAdvStringGrid;
    btnSangbyungFind: TButton;
    cbGubGU: TComboBox;
    Label16: TLabel;
    Label3: TLabel;
    rgCodekind: TRadioGroup;
    N6: TMenuItem;
    btnOneChange: TButton;
    cbDrugSelf: TCheckBox;

    procedure FormShow(Sender: TObject);
    procedure spSkinButton17Click(Sender: TObject);
    procedure ComboBox6Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure ListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N21Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure TreeView_SelNodeMove(TreeView: TTreeView; Up: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    function MakeUCode: string;
    procedure btnSangbyungFindClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdSugaClickSort(Sender: TObject; ACol: Integer);
    procedure grdSugaDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnFindClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure btnModClick(Sender: TObject);
    procedure btnInitClick(Sender: TObject);
    procedure edtGroupOrderValueChange(Sender: TObject);
    procedure btnGroupSearchClick(Sender: TObject);
    procedure grdGroupCodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdGroupSugaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtGroupOrderValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure btnAllAcceptClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnAllChangeClick(Sender: TObject);
    procedure rgKindClick(Sender: TObject);
    procedure grdGroupSugaGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdGroupCodeDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button23Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure edtSearchSugaKeyPress(Sender: TObject; var Key: Char);
    procedure edtSearchSugaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBeforeCodeKeyPress(Sender: TObject; var Key: Char);
    procedure edtAfterCodeKeyPress(Sender: TObject; var Key: Char);
    procedure btnSchOrgSugaClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure edtGroupOrderValueKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddRowClick(Sender: TObject);
    procedure grdGroupSugaButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure Button1Click(Sender: TObject);
    procedure grdSangByungKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSangByungGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure btnArrowUpClick(Sender: TObject);
    procedure btnArrowDownClick(Sender: TObject);


  private
    mRow : integer; //grdGroupCode를 선택 했을 시의 aRow
    preGroupCode : string;

    isSangByungDelete: boolean;


    procedure LoadSugaList;
    procedure fieldClear;
    procedure LoadGroupCode(groupcode : string='';  findCode : string='');
    function  LoadGroupName(groupCode: string): string;

    procedure SelectRow(ARow, ACol: Integer);
    procedure insertGroupSuga(aGroupCode: string; nRow:integer; isGroup:boolean = false);
    procedure saveGroupSuga;
    procedure saveGroupSuga_CC;
    procedure saveGroupSuga_sangByung;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main_f: TMain_f;

implementation

uses uConfig, uDM, uFunctions , uFormInit, SugaProp, SugaRegi, progress, sugaHelp,
  SangSeek, uPharmInfo;

{$R *.dfm}


function getSugaName(user_key:string; codekind : integer):string;
begin
     result:='';
    with dm_f.sqlTemp14 do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from suga ');

          case codekind  of
          1:
              begin
                  Sql.Add(' where user_key= :user_key ');
                  ParamByName('user_Key').AsString := user_key;
              end;
          0:
              begin
                  Sql.Add(' where su_key= :user_key ');
                  ParamByName('user_Key').AsString := user_key;
              end;
          end;

          Open;
          if not isEmpty then
          begin
               Result := FieldByName('su_kor_name').AsString;
          end ;
     end;
end;



procedure TMain_f.FormShow(Sender: TObject);
var
   i : integer;
begin

    {$IFNDEF DEBUG}
      cbDrugSelf.Visible := false;
    {$ENDIF DEBUG}

  edtSearchSuga.Text :='';

  grdSuga.RemoveRows(1, grdSuga.RowCount -1);
  grdSuga.rowcount:=1;


  isSangByungDelete         := false;

  grdGroupSuga.RemoveRows(1, grdGroupSuga.RowCount -1);
  grdGroupSuga.rowcount:=1;

  grdGroupsuga.Options:=  grdGroupsuga.Options +[goEditing] ;

  //GroupCode리스트를 불러오고 저장한 그룹코드를 선택하자.
  LoadGroupCode;

  for i:= 0   to memo3.lines.Count -1 do
  begin
        with ColumnComboBox1.ComboItems.Add do
        begin
          Strings.Add(memo3.lines[i]);
          Strings.Add(memo4.lines[i]);

        end;
  end;


end;


procedure TMain_f.fieldClear;
begin
  edtGroupName.Text   := '';
  edtGroupCode.Text   := '';
  EdtIlsu.Text        := '1';
  edtQty.Text         := '1';
  edtoneDay.Text      := '1';
  memcc.Text          := '';
  cbLabSect.ItemIndex := 0;

  cbAddGroup.Checked := false;
  cbKwamok.ItemIndex:= -1;
  ColumnComboBox1.ItemIndex := -1;

  grdGroupSuga.RemoveRows(1, grdGroupSuga.RowCount - 1);
  grdGroupSuga.RowCount := 1;


  grdSangByung.RemoveRows(1, grdSangByung.RowCount - 1);
  grdSangByung.RowCount := 1;

end;


// 그룹tree창 ...................................................

procedure TMain_f.btnAddRowClick(Sender: TObject);
begin
  //    grdGroupSuga.AddRow;
       grdGroupSuga.InsertRows(grdGroupSuga.Row, 1);
end;

procedure TMain_f.btnAllAcceptClick(Sender: TObject);
begin
      pnlAllAccept.Visible := true;
end;

procedure TMain_f.btnArrowDownClick(Sender: TObject);
begin
   //  grdGroupSuga.MoveRow(grdGroupSuga.Row, grdGroupSuga.Row -1);
   if grdGroupSuga.Row >= 1 then
       begin
              grdGroupSuga.MoveRow(grdGroupSuga.Row, grdGroupSuga.Row + 1);
              grdGroupSuga.Row := grdGroupSuga.Row + 1;
              grdGroupSuga.AutoNumberCol(0);
       end;

end;

procedure TMain_f.btnArrowUpClick(Sender: TObject);
var
   nRow : integer;
begin
      nRow :=  grdGroupSuga.Row;

      if nRow > 1 then
       begin
              grdGroupSuga.MoveRow(grdGroupSuga.Row, grdGroupSuga.Row - 1);
              grdGroupSuga.Row := grdGroupSuga.Row - 1;
              grdGroupSuga.AutoNumberCol(0);
       end;

end;

procedure TMain_f.btnInitClick(Sender: TObject);
begin
     FieldClear;
end;

procedure TMain_f.btnDeleteClick(Sender: TObject);
begin


 if MessageDlg('선택하신 자료를 정말로 삭제합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin


      if edtGroupCode.text <> '' then
      begin
       try
          with dm_f.sqlTemp do
          begin
              Close;
              Sql.Clear;
              Sql.Add('Delete from groupCode where GroupCode=:GroupCode');
              ParamByName('GroupCode').AsString := edtGroupCode.text;
              ExecSql;

              Close;
              Sql.Clear;
              Sql.Add('Delete from groupSuga where GroupCode=:GroupCode');
              ParamByName('GroupCode').AsString :=  edtGroupCode.text;
              ExecSql;
          end;

             grdGroupcode.RemoveRows(grdGroupcode.Row , 1);
             grdGroupcode.AutoNumberCol(0);
       except

       end;
      end;

     end
     else
          showmessage('취소되었습니다.');

end;

procedure TMain_f.btnFindClick(Sender: TObject);
var
  i : integer;

begin
      grdSuga.RemoveRows(1, grdSuga.RowCount -1);
      grdSuga.rowcount:=1;


      with dm_f.sqlWork do
      begin
        Close;
        Sql.Clear;
        Sql.Add('select * from suga ');
//        Sql.Add('where su_gu1 in (''2'',''4'')  and su_key like :su_key ');

        case radiogroup1.ItemIndex of
          0: Sql.Add('where  su_key like :su_key ');
          1: Sql.Add('where  user_key like :su_key ');
          2: Sql.Add('where  su_kor_name like :su_key ');
        end;


        Sql.Add('order by su_kor_name');
        paramByName('su_key').asString := '%'+edtSearchSuga.text +'%';
        Open;
    //     First;

        grdSuga.RowCount := recordCount+ 1;
        i:= 1;
          ProgressBar1.Max := RecordCount;
          ProgressBar1.Min := 0;
          ProgressBar1.Position := 0;

        while not eof do
        begin

          grdSuga.Cells[1, i] := FieldByName('su_key').AsString;
          grdSuga.Cells[2, i] := FieldByName('su_kor_name').AsString;
          grdSuga.Cells[3, i] := FieldByName('sanjungName').AsString;


//         grdSuga.Cells[1, i] :=   FieldByName('su_kor_name').AsString;//명칭


//          grdSuga.Cells[2, i] :=  FieldByName('su_key').AsString;  //코드
          grdSuga.Cells[4, i] :=  FieldByName('su_gu3').AsString;  //구분
          grdSuga.Cells[5, i] :=  FieldByName('bo_dan').AsString;  //bo 단가
          grdSuga.Cells[6, i] :=  FieldByName('il_dan').AsString;  //ilban 단가
          grdSuga.Cells[7, i] :=  FieldByName('dan_qty').AsString;  //단위
          grdSuga.Cells[8, i] :=  FieldByName('user_key').AsString;  //User_key


          i:= i + 1;
          Application.ProcessMessages;
          ProgressBar1.Position :=  ProgressBar1.Position + 1;
          Next;


        end;
        grdSuga.autonumbercol(0);
      end;
end;

procedure TMain_f.N19Click(Sender: TObject);    //코드삭제
begin
//  if ListView1.Selected <> nil then
//  begin
//    if Application.MessageBox(PChar(ListView1.Selected.Caption + '삭제하시겠습니까?'), '확인', MB_YESNO) = 6 then
//    begin
//      ListView1.Selected.Delete;
//      ListView1.Selected.Free;
//      showMessage('삭제되었습니다.저장버튼을 눌러 삭제내역을 적용시켜야 합니다.');
//    end;
//  end;

  grdGroupSuga.RemoveRows(grdGroupSuga.row, 1);



end;

procedure TMain_f.N36Click(Sender: TObject);     //용량수정
begin
//  if ListView1.Selected <> nil then
//  begin
//    if ListView1.Selected.SubItems.Strings[1] = '투약' then
//    begin
//      ListView1.Selected.SubItems.Strings[4] := InputBox('일회 복용량을 입력하십시오', '일회복용량    ', ListView1.Selected.SubItems.Strings[4]);
//      ListView1.Selected.SubItems.Strings[5] := InputBox('일 복용횟수를 입력하십시오', '일일복용횟수    ', ListView1.Selected.SubItems.Strings[5]);
//    end
//    else
//    begin
//      ListView1.Selected.SubItems.Strings[4] := InputBox('투여량을 입력하십시오', '투여량    ', ListView1.Selected.SubItems.Strings[4]);
//    end;
//  end;
end;

procedure TMain_f.N7Click(Sender: TObject);
begin
        pnlAllAccept.Visible := true;

         edtBeforeCode.Text := grdGroupSuga.Cells[14, grdGroupSuga.Row] ;

         btnSchOrgSugaClick(nil);
         edtAfterCode.SetFocus;
end;

procedure TMain_f.rgKindClick(Sender: TObject);
begin
       case rgKind.ItemIndex of
            0:
               begin
                   gbbefore.Caption := '변경전 사용자코드';
                   gbbefore.Visible := true;
                   gbAfter.Visible := true;
               end;
            1:
               begin
                   gbbefore.Caption := '삭제할 사용자코드';
                   gbbefore.Visible := true;
                   gbAfter.Visible := false;
               end;
       end;
end;

procedure TMain_f.N21Click(Sender: TObject);    //등록정보
begin
  if grdGroupSuga.Row > 0 then
  begin
    SugaProp_f := TSugaProp_f.Create(application);
    SugaProp_f.edtSuKey.Text :=  grdGroupSuga.Cells[2, grdGroupSuga.Row];
    SugaProp_f.Showmodal;
    SugaProp_f.Free;
    SugaProp_f := nil;
  end;
end;

procedure TMain_f.ListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Delete then N19Click(Self);
end;




// 수가/재료 기초코드정보창 ....................................................
procedure TMain_f.N24Click(Sender: TObject);   //신규등록
begin
  if ComboBox6.ItemIndex in  [1, 2, 3] then
  begin
    SugaRegi_f := TSugaRegi_f.Create(application);
    case ComboBox6.ItemIndex of
      1: SugaRegi_f.cbKind.ItemIndex := 1;   //재료
      2: SugaRegi_f.cbKind.ItemIndex := 0;
      3: SugaRegi_f.cbKind.ItemIndex := 1;  //신재료
    end;

    SugaRegi_f.Showmodal;
    SugaRegi_f.Free;
    SugaRegi_f := nil;
  end
  else
  begin
    SugaProp_f := TSugaProp_f.Create(application);
    SugaProp_f.Caption := '새 수가등록';
    SugaProp_f.EdtSukey.Text := '';
    SugaProp_f.EdtSukey.ReadOnly := False;
    SugaProp_f.btnSave.Visible := True;
    SugaProp_f.ActiveControl := SugaProp_f.EdtSukey;
    SugaProp_f.Showmodal;
    SugaProp_f.Free;
    SugaProp_f := nil;
  end;

  ComboBox6Click(Self);



  //ShellExecute(GetDeskTopWindow, 'open', Pchar(ExtractFilePath(ParamStr(0)) +
  //        'sugain.exe'), '', nil, SW_SHOWNORMAL);

end;

procedure TMain_f.N30Click(Sender: TObject);     //삭제
begin
//  if ListView2.Selected <> nil then
//  begin
    case
      Application.MessageBox('삭제하시기전에 등록내용을 다시한번 확인하십시오', '삭제확인', MB_YESNOCANCEL) of
      6: //확인후 삭제
        begin
          SugaProp_f := TSugaProp_f.Create(application);
          SugaProp_f.edtSukey.Text := grdSuga.Cells[1,grdSuga.Row];
          SugaProp_f.btnDelete.Visible := True;
          SugaProp_f.Showmodal;
          SugaProp_f.Free;
          SugaProp_f := nil;
        end;
      7: //삭제
        begin
          if Application.MessageBox('삭제합니다', '확인', MB_OKCANCEL) = 6 then
          begin
            with dm_f.sqlTemp do
            begin
              Close;
              Sql.Clear;
              Sql.Add('delete from suga where su_key=:sCode');
              ParamByName('sCode').AsString := grdSuga.Cells[1,grdSuga.Row];
              ExecSql;
            end;
            Showmessage('삭제되었습니다');

            grdSuga.RemoveSelectedRows;
//            ListView2.Selected.Destroy;
//            ListView2.Selected.Free;
          end;
        end;
    end;
//  end;

end;

procedure TMain_f.N23Click(Sender: TObject);   //내용수정
begin


 if grdSuga.Row > 0 then
  begin
    SugaProp_f := TSugaProp_f.Create(application);
    SugaProp_f.edtSuKey.Text := grdSuga.Cells[1, grdSuga.Row];
    SugaProp_f.btnSave.Visible := True;
    SugaProp_f.ActiveControl := SugaProp_f.EdtName;
    SugaProp_f.Showmodal;
    SugaProp_f.Free;
    SugaProp_f := nil;
  end;


end;

procedure TMain_f.N27Click(Sender: TObject);    //수가등록정보
begin
 if grdSuga.Row > 0 then
  begin
    SugaProp_f := TSugaProp_f.Create(application);
    SugaProp_f.edtSuKey.Text := grdSuga.Cells[1, grdSuga.Row];
    SugaProp_f.Showmodal;
    SugaProp_f.Free;
    SugaProp_f := nil;
  end;
end;

procedure TMain_f.ComboBox6Click(Sender: TObject);   //코드목록콤보
begin
      LoadSugaList;
end;



procedure TMain_f.edtAfterCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13  then
     begin

         lblAftName.Caption:=  getSugaName(edtAfterCode.text, rgcodekind.ItemIndex) ;

     end;
end;

procedure TMain_f.edtBeforeCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     begin
            lblBefName.Caption:=  getSugaName(edtBeforeCode.text, rgcodekind.ItemIndex) ;
     end;
end;

procedure TMain_f.edtGroupOrderValueChange(Sender: TObject);
begin
  if copy(edtGroupOrderValue.text,1,1)='+'  then
       grdGroupCode.NarrowDown(edtGroupOrderValue.text, 1)
  else
        grdGroupCode.NarrowDown(edtGroupOrderValue.text, 2) ;

end;

procedure TMain_f.edtGroupOrderValueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
          VK_DOWN :
           begin


             grdGroupCode.SetFocus;


           end;
    end;
end;

procedure TMain_f.edtGroupOrderValueKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13  then
    begin
         btnGroupSearchClick(self);
    end;
end;

procedure TMain_f.edtSearchSugaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
          VK_DOWN :
           begin


             grdSuga.SetFocus;


           end;
    end;
end;

procedure TMain_f.edtSearchSugaKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
       btnFindClick(self);
end;

procedure TMain_f.LoadSugaList;   //코드목록콤보
var
  NewItem: TListItem;
  i, iRow: Integer;
begin

{
0수가
1재료
2약재
3신재료
4와동바니쉬(코파라이트)
5아말감
6복합레진(자가중합)
7글래스아이어노모
8금속강화형시멘트(미라클믹스,캐텍실버)
9필림}

      grdSuga.RemoveRows(1, grdSuga.RowCount -1);
        grdSuga.rowcount:=1;
  try
    with dm_f.SqlTemp2 do
    begin
      Close;
      Sql.Clear;

        case  ComboBox6.Itemindex of

             0 :  //수가
            begin

                 Sql.Add('select * from suga where su_gu1 in (''2'',''4'',''5'',''7'') and su_kor_name<>'''' order by su_gu3,su_gu1,su_kor_name');

            end;
             1 :  //재료
            begin

                       Sql.Add('select * from suga where su_gu1 in (''1'',''3'',''6'') ');
                       Sql.Add(' and su_gu3 not in (''09'',''10'',''11'',''12'',''13'') ');
                       Sql.Add(' and su_kor_name<>'''' ');
                       Sql.Add(' order by su_gu3,su_gu1,su_kor_name');

            end;
              2 : //약재
            begin

                       Sql.Add('select * from suga where su_gu3 in (''09'',''10'',''11'',''12'',''13'') and su_kor_name<>'''' order by su_gu3,su_gu1,su_kor_name');


            end;
       end;

      Open;
      First;



      if not isEmpty then
      begin

        ProgressBar1.Max := RecordCount;
        ProgressBar1.Min := 0;
        ProgressBar1.Position := 0;

        grdSuga.RowCount :=  RecordCount+1;
        iRow := 1;

        while not Eof do
        begin
      //    Application.ProcessMessages;

     {     NewItem := ListView2.Items.Add;
          if ComboBox6.Itemindex = 0 then //행위
          begin
            if FieldByName('su_gu3').AsString = '31' then
            begin
              NewItem.ImageIndex := 2;
            end
            else if FieldByName('su_gu3').AsString = '09' then
            begin
              NewItem.ImageIndex := 7;
            end
            else if FieldByName('su_gu3').AsString = '19' then
            begin
              NewItem.ImageIndex := 0;
            end
            else
            begin
              NewItem.ImageIndex := 5;
            end;
          end
          else if (ComboBox6.Itemindex <> 2) and (ComboBox6.Itemindex <> 0)   then //재료 ,신재료
          begin
            if ((FieldByName('su_gu3').AsString = '09') or (FieldByName('su_gu3').AsString = '10')) then
            begin
              NewItem.ImageIndex := 1;
            end
            else if FieldByName('su_gu3').AsString = '31' then
            begin
              NewItem.ImageIndex := 3;
            end
            else if FieldByName('su_gu3').AsString = '19' then
            begin
              NewItem.ImageIndex := 8;
            end
            else if FieldByName('su_gu3').AsString = '41' then
            begin
              NewItem.ImageIndex := 7; //의약품관리료
            end
            else
            begin
              NewItem.ImageIndex := 6;
            end;
          end
          else if ComboBox6.Itemindex = 2 then //약재
          begin
            if ((Copy(FieldByName('su_key').AsString, 1, 1) = 'J') and (FieldByName('su_gu3').AsString = '09')) then
            begin
              NewItem.ImageIndex := 7;
            end
            else if ((Copy(FieldByName('su_key').AsString, 1, 1) <> 'J') and (FieldByName('su_gu3').AsString = '09')) then
            begin
              NewItem.ImageIndex := 1;
            end
            else if ((FieldByName('su_gu3').AsString = '12') or (FieldByName('su_gu3').AsString = '13')) then
            begin
              NewItem.ImageIndex := 0;
            end
            else
            begin
              NewItem.ImageIndex := 8;
            end;
          end;
      }

         // grdSuga.AddRow;

         {
명칭
코드
구분
단가
단위
}

          grdSuga.Cells[2, iRow] :=   FieldByName('su_kor_name').AsString;//명칭


          grdSuga.Cells[1, iRow] :=  FieldByName('su_key').AsString;  //코드
          grdSuga.Cells[3, iRow] :=  FieldByName('su_gu3').AsString;  //구분
          grdSuga.Cells[4, iRow] :=  FieldByName('bo_dan').AsString;  //단가
          grdSuga.Cells[5, iRow] :=  FieldByName('dan_qty').AsString;  //단위


          iRow := iRow + 1;
          Application.ProcessMessages;
          ProgressBar1.Position :=  ProgressBar1.Position + 1;

          Next;

        end;
      end;

    end;
  finally
     grdSuga.AutoNumberCol(0);
  end;
end;

procedure TMain_f.spSkinButton17Click(Sender: TObject);   //수가묶음종료
begin
  Close;
end;


procedure TMain_f.TreeView_SelNodeMove(TreeView: TTreeView; Up: Boolean);
var
  SelNode, DestNode: TTreeNode;
begin
  TreeView.Items.BeginUpdate;
  try
    SelNode := TreeView.Selected;
    if SelNode <> nil then
    begin
      if Up then
        DestNode := SelNode.GetPrev
      else
        DestNode := SelNode.GetNext;
      while (DestNode <> nil) and ((DestNode.Level > SelNode.Level) or
        (DestNode.Parent <> SelNode.Parent)) do
      begin
        if DestNode.Level < SelNode.Level then
          Exit;
        if Up then
          DestNode := DestNode.GetPrev
        else
          DestNode := DestNode.GetNext;
      end;
      if (DestNode <> nil) and ((DestNode.Level = SelNode.Level) and
        (DestNode.Parent = SelNode.Parent)) then
      begin
        if Up then
        begin
          if DestNode.AbsoluteIndex = 0 then
            SelNode.MoveTo(DestNode, naAddFirst)
          else
            SelNode.MoveTo(DestNode, naInsert);
        end
        else
        begin
          if SelNode.AbsoluteIndex = 0 then
            DestNode.MoveTo(SelNode, naAddFirst)
          else
            DestNode.MoveTo(SelNode, naInsert);
        end;
      end;
    end;
  finally
    TreeView.Items.EndUpdate;
  end;
end;


procedure TMain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(Progress_f) then
  begin
    Progress_f := nil;
    Progress_f.Free;
  end;

  Action := caFree;
end;

procedure TMain_f.FormCreate(Sender: TObject);
begin

    edtGroupOrderValue.Text:='';

     if loadini = true then
     begin
           if dm_f.ConnectDatabase(configvalue.varDbip,
                configvalue.varDbname,
                configvalue.varDbuser, configvalue.varDbpass,
                configvalue.varDbProtocol,
                                configvalue.varDbPort) = true then
           begin

             configvalue.LoadGlobalData_db;
           end;

     end;

         initAdvPanel(pnlLeft, dm_f.PictureContainer1);
         initAdvPanel(pnlIns, dm_f.PictureContainer1);
         initAdvPanel(pnlAllAccept, dm_f.PictureContainer1);
         initAdvPanel(pnlSangByung, dm_f.PictureContainer1);
         initAdvPanel(pnlCC, dm_f.PictureContainer1);
         initAdvPanel(pnlGroupSuga, dm_f.PictureContainer1);


         initAdvGrid(grdGroupCode);
         initAdvGrid(grdSuga);
         initAdvGrid(grdSangByung);
         initAdvGrid(grdGroupSuga);

end;

procedure TMain_f.FormDestroy(Sender: TObject);
var i: Integer;
begin

     Main_f := nil;

end;

procedure TMain_f.LoadGroupCode(groupcode : string=''; findcode : string='');
var
  rCount, i: Integer;
begin
  grdGroupCode.RemoveRows(1, grdGroupCode.RowCount - 1);

  with Dm_f.sqlTemp do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from  groupCode    ');

    if findcode <> '' then
    begin
        SQL.Add('where groupcode like  :groupcode  ');
        paramByName('groupcode').asString := '%' + findcode + '%';
    end;
 {
그룹코드
그룹명칭
일수
일투
총투
과목
}
    open;
    if not isEmpty then
    begin
      rCount := recordCount;
      grdGroupCode.RowCount := rCount + 1;
      i := 1;
      while not eof do
      begin

        grdGroupCode.Cells[1, i] := trim(fieldByname('groupCode').asString);
        grdGroupCode.Cells[2, i] := trim(fieldByname('groupName').asString);
        grdGroupCode.Cells[3, i] := fieldByname('qty').asString;
        grdGroupCode.Cells[4, i] := fieldByname('iltu').asString;
        grdGroupCode.Cells[5, i] := fieldByname('ilsu').asString;
        grdGroupCode.Cells[6, i] := trim(fieldByname('gr_alias').asString);
        grdGroupCode.Cells[7, i] := fieldByname('su_gu2').asString;
        i := i + 1;
        next;
      end;
      grdGroupCode.AutoNumberCol(0);
    end;
  end;


  if groupCode <> '' then
  begin
          grdGroupCode.FindCol := 1;
           grdGroupCode.Find(point(1,1), groupCode ,
                   [fnFindInPresetCol, fnMatchFull,fnAutoGoto]);

  end;
end;




function TMain_f.MakeUCode: string;
begin
//  Result := '';
//
//
//  with dm_f.sqlTemp do
//  begin
//    Close;
//    Sql.Clear;
//    if PMyRec(tvGroups.Selected.Data)^.GName = '원외처방' then
//    begin
//      Sql.Add('Select max(Substring(GroupCode,3,9)) as maxCode from GroupCode where GroupCode like ''RX%''');
//      Open;
//      First;
//      if not IsEmpty then
//      begin
//        if FieldByName('maxCode').IsNull then
//        begin
//          Result := 'RX0001';
//        end
//        else
//        begin
//          Result := 'RX' + FormatFloat('0000', FieldByName('maxCode').AsInteger + 1);
//        end;
//      end
//      else
//      begin
//
//      end;
//    end
//    else
//    begin
//      Sql.Add('Select max(Substring(GroupCode,3,9)) as maxCode from GroupCode where GroupCode like ''UX%''');
//      Open;
//      First;
//      if not IsEmpty then
//      begin
//        if FieldByName('maxCode').IsNull then
//        begin
//          Result := 'UX00001';
//        end
//        else
//        begin
//          Result := 'UX' + FormatFloat('00000', FieldByName('maxCode').AsInteger + 1);
//        end;
//      end
//      else
//      begin
//
//      end;
//    end;
//
//  end;
end;










procedure TMain_f.btnSangbyungFindClick(Sender: TObject);   //상병찾기
var
  ARow: Integer;
begin

   Sangseek_f := TSangseek_f.Create(application);
   Sangseek_f.gsGubn := '9';
   if Sangseek_f.ShowModal  = mrOK then
   begin

    ARow := checkBlankRow(grdSangByung, 1);

    if ARow = 1 then
        grdSangByung.AddRadioButton(0, ARow , true )
    else
        grdSangByung.AddRadioButton(0, ARow , false );

    grdSangByung.Cells[1, ARow] := // grdSangbyung.RowCount - 1] :=
      Sangseek_f.grdMain.Cells[1, Sangseek_f.grdMain.Row];
    grdSangByung.Cells[2, ARow] := //
      Sangseek_f.grdMain.Cells[2, Sangseek_f.grdMain.Row];

   end;


end;




procedure TMain_f.Button15Click(Sender: TObject);
begin
          if cbDrugSelf.Checked then
           begin

                    pharmInfo_f:= TpharmInfo_f.create(nil);
               //     pharmInfo_f.LoadDrugInfoFromAPI('','','');////sugaCode,'','');
                    pharmInfo_f.Show;

           end
           else
           begin


                     SugaRegi_f := TSugaRegi_f.Create(Application);
                     SugaRegi_f.cbKind.itemindex := (Sender as TButton).Tag; // 신재료

                     SugaRegi_f.Showmodal;
                     SugaRegi_f.Free;
                     SugaRegi_f := nil;

           end;
end;

procedure TMain_f.Button1Click(Sender: TObject);
begin
     edtGroupOrderValue.Text:='';
     edtGroupOrderValue.SetFocus;
end;

procedure TMain_f.btnGroupSearchClick(Sender: TObject);
var
   i : integer;
begin

  with Dm_f.sqlwork do
  begin
    close;
    SQL.Clear;

    case rgGroupSugaFind.itemindex of
      0: //그룹코드
        begin

          SQL.Add(' select * from groupcode where groupcode like  :groupcode ');
          SQL.Add(' order by groupname');
          paramByName('groupcode').asString := '%' + edtGroupOrderValue.text + '%';
          open;

        end;

     1: //그룹명칭
        begin

          SQL.Add(' select * from groupcode where groupname like  :groupcode ');
          SQL.Add(' order by groupname');
          paramByName('groupcode').asString := '%' + edtGroupOrderValue.text + '%';
          open;

        end;

      2: // 사용자코드  - groupSuga에서 sugacode로 검색
        begin
          SQL.Add('select *,(select groupname from groupcode where groupcode= Groupsuga.GroupCode) as groupname from groupsuga ');
          SQL.Add('where  sugacode like :sugacode ');
          SQL.Add('order by sugakorname');
          paramByName('sugacode').asString := '%' + edtGroupOrderValue.text + '%';
          open;

        end;


      3: // Su_key  - suga에서 su_key로 검색하고 user_key를 검색해와서 다시 groupSuga에서 검색해서 뿌려주자
        begin

          SQL.Add('select *,(select groupname from groupcode where groupcode= Groupsuga.GroupCode) as groupname   from groupsuga                        ');
          SQL.Add('where  sugacode in (select user_key from suga  ');
          SQL.Add('   where su_key like :su_key)                  ');
          SQL.Add('order by sugakorname                           ');
          paramByName('su_key').asString := '%' + edtGroupOrderValue.text + '%';
          open;

        end;
    end;
    // First;

    grdGroupCode.RowCount := recordCount + 1;
    i := 1;
    while not eof do
    begin

      grdGroupCode.Cells[1, i] := fieldByname('groupCode').asString;
      grdGroupCode.Cells[2, i] := fieldByname('groupname').asString;

      i := i + 1;
      next;
    end;
  end;
  grdGroupCode.AutoNumberCol(0);
end;

procedure TMain_f.Button23Click(Sender: TObject);
begin
  // SugaRegi_f := TSugaRegi_f.Create(application);
  // SugaRegi_f.cbKind.ItemIndex := 1;   //재료
  //
  // SugaRegi_f.Showmodal;
  // SugaRegi_f.Free;
  // SugaRegi_f := nil;

  SugaProp_f := TSugaProp_f.Create(Application);
  SugaProp_f.Caption := '새 수가등록';
  SugaProp_f.EdtUserkey.text := '';
  SugaProp_f.EdtUserkey.ReadOnly := false;
  SugaProp_f.edtSuKey.text := '';
  SugaProp_f.edtSuKey.ReadOnly := false;
  SugaProp_f.btnSave.Visible := true;
  SugaProp_f.ActiveControl := SugaProp_f.edtSuKey;
  SugaProp_f.Showmodal;
  SugaProp_f.Free;
  SugaProp_f := nil;
end;

procedure TMain_f.Button2Click(Sender: TObject);
begin
        pnlAllAccept.Visible := false;
end;

procedure TMain_f.btnAllChangeClick(Sender: TObject);
var
   cKind : integer;

begin
    cKind := (sender as TButton).Tag;

    case rgKind.ItemIndex of
       0:  //변경
          begin
            if  trim(edtBeforeCode.Text) ='' then
            begin
              showmessage('변경 전 코드를 입력하세요.');
              edtBeforeCode.SetFocus;
              exit;
            end;

            if  trim(edtAfterCode.Text) ='' then
            begin
              showmessage('변경 후 코드를 입력하세요.');
              edtAfterCode.SetFocus;
              exit;
            end;

           case cKind of
           0:
               begin
                     if MessageDlg('선택하신 자료'+'['+edtBeforeCode.Text+']'+ '를'
                     +#10#13 +'['+edtAfterCode.Text+']'
                     +'로 변경합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin

                          try


                             with dm_f.sqlTemp do
                             begin

                                  close;
                                  sql.Clear;
                                  sql.Add('update groupsuga set');
                                  sql.Add('sugacode = :sugacode , sugakorname = :sugakorname, GrpInsYon=:GrpInsYon');
                                  sql.Add('where sugacode =:sugacode1 and groupCode=:groupCode');
                                  paramByname('Groupcode').AsString   := edtGroupCode.Text;
                                  paramByname('sugacode').AsString    := edtAfterCode.Text;
                                  paramByname('sugacode1').AsString   := edtBeforeCode.Text;
                                  paramByname('GrpInsYon').AsString   := inttostr(cbGubGU.ItemIndex * 2) ;
                                  paramByname('sugakorname').AsString := lblAftName.caption;

                                  execsql;

                             end;
                              showmessage('변경되었습니다.');
                              pnlAllAccept.Visible := false;
                          except

                          end;
                     end;

               end;
           1:
               begin
                     if MessageDlg('선택하신 코드'+'['+edtBeforeCode.Text+']'+'를'
                     +#10#13 + '['+edtAfterCode.Text+']' +#10#13
                     +'로 정말로 일괄 변경합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin

                          try


                             with dm_f.sqlTemp do
                             begin

                                  close;
                                  sql.Clear;
                                  sql.Add('update groupsuga set');
                                  sql.Add('sugacode = :sugacode , sugakorname = :sugakorname, GrpInsYon=:GrpInsYon');
                                  sql.Add('where sugacode =:sugacode1');
                                  paramByname('sugacode1').AsString    := edtBeforeCode.Text;
                                  paramByname('sugacode').AsString     := edtAfterCode.Text;
                                  paramByname('GrpInsYon').AsString    := inttostr(cbGubGU.ItemIndex * 2) ;
                                  paramByname('sugakorname').AsString  := lblAftName.caption;

                                  execsql;

                             end;
                              showmessage('일괄 변경되었습니다.');
                              pnlAllAccept.Visible := false;
                          except

                          end;
                     end;
               end;
           end;
          end;
       1:  //삭제
          begin
            if  trim(edtBeforeCode.Text) ='' then
            begin
              showmessage('삭제 할 코드를 입력하세요.');
              edtBeforeCode.SetFocus;
              exit;
            end;


           if MessageDlg('선택하신 자료'+'['+edtBeforeCode.Text+']'+'를 정말로 일괄 삭제합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
                try
                   with dm_f.sqlTemp do
                   begin
                        close;
                        sql.Clear;
                        sql.Add('delete from groupsuga');
                        sql.Add('where sugacode =:sugacode');
                        paramByname('sugacode').AsString := edtBeforeCode.Text;

                        execsql;
                        showmessage('일괄 삭제되었습니다.');
                        pnlAllAccept.Visible := false;
                   end;
                except

                end;
           end;
          end;
    end;
end;

procedure TMain_f.btnSchOrgSugaClick(Sender: TObject);
begin
   lblBefName.Caption:=  getSugaName(edtBeforeCode.text, rgcodekind.ItemIndex) ;
end;

procedure TMain_f.Button5Click(Sender: TObject);
begin
  lblAftName.Caption:=  getSugaName(edtAfterCode.text, rgcodekind.ItemIndex) ;
end;

procedure TMain_f.btnHelpClick(Sender: TObject);
begin
       sugaHelp_f := TsugaHelp_f.Create(application);
       sugaHelp_f.showmodal;
end;

procedure TMain_f.btnInsClick(Sender: TObject);    //신규등록
var
  i: Integer;

  iltu, ilsu, sugacode,user_key, qty, sugaKorName : string;
begin
 cbAddGroup.Checked := false;

  if trim( edtgroupcode.Text) = '' then
  begin
         showmessage('코드를 입력하세요.');
         edtgroupcode.SetFocus;
         exit;
  end;


  if trim( edtGroupName.Text) = '' then
  begin
         showmessage('명칭을 입력하세요.');
         edtGroupName.SetFocus;
      exit;
  end;


    with dm_f.sqlTemp do
    begin

      Close;
      Sql.Clear;
      Sql.Add(' select * from Groupcode                                      ');
      Sql.Add(' where GroupCode=:GroupCode                                   ');

      ParamByName('GroupCode').AsString := edtGroupCode.Text;
      open;
      if not isEmpty then
      begin


       if Application.MessageBox(pchar(edtGroupCode.Text+ '는 이미 있습니다.'+#10+
           '선택한 항목을 수정 저장  하시겠습니까?'), '확인', MB_OKCANCEL) = 1 then
        begin

            btnModClick(self);
             exit;
        end
        else
        begin
             exit;
        end;

      end;

    end;


    with dm_f.sqlTemp do
    begin

      try
          Close;
          Sql.Clear;
          Sql.Add('insert into Groupcode (GroupCode,GroupName,sang1,sang2, sang3, su_gu2, kwamok,');
          sql.Add('ilsu, iltu, qty, capital, gr_alias,GroupKind1,GroupKind2,GroupKind3) Values');
          sql.Add('(:GroupCode,:GroupName,:Sang1,:sang2, :sang3, :su_gu2, :kwamok,');
          sql.Add(':ilsu, :iltu, :qty, :capital, :gr_alias,:GroupKind1,:GroupKind2,:GroupKind3) ');

          ParamByName('GroupCode').AsString := edtGroupCode.Text;
          ParamByName('Groupkind1').AsString := '0';
          ParamByName('Groupkind2').AsString := '0';
          ParamByName('Groupkind3').AsString := '0';


          if EdtIlsu.Text = '' then
          begin
            EdtIlsu.Text:= '1';
          end;

          ParamByName('GroupName').AsString := edtGroupName.Text;
          ParamByName('su_gu2').AsString    := inttostr( cbLabSect.ItemIndex);
          ParamByName('sang1').AsString    := '';
          ParamByName('sang2').AsString    := '';
          ParamByName('sang3').AsString    := '';
          ParamByName('ilsu').AsString     := EdtIlsu.Text;
          ParamByName('Kwamok').AsString   :=cbKwamok.Items[cbKwamok.ItemIndex];
          ParamByName('ilsu').AsString     := edtilsu.text ;
          ParamByName('iltu').AsString     := edtOneDay.text ;
          ParamByName('qty').AsString      := edtQty.text ;
          ParamByName('capital').AsString  := edtGroupName.Text;
          ParamByName('gr_alias').AsString := columnComboBox1.ColumnItems[columnComboBox1.itemindex, 0];


          ExecSql;


          saveGroupSuga_CC;
          saveGroupSuga_sangByung;

          saveGroupSuga;



      except

              on E : Exception do
              begin
                    Showmessage('다시저장해 주세요.' + #13#10 +
                    E.Message);

             end;

      end;

    end;


end;

procedure TMain_f.btnModClick(Sender: TObject);
var
  i: Integer;
  iltu, ilsu, sugacode,user_key, qty, sugaKorName : string;
begin

  cbAddGroup.Checked := false;


  if trim( edtgroupcode.Text) = '' then
  begin
         showmessage('코드를 입력하세요.');
         edtgroupcode.SetFocus;
         exit;
  end;


  if trim( edtGroupName.Text) = '' then
  begin
         showmessage('명칭을 입력하세요.');
         edtGroupName.SetFocus;
      exit;
  end;

    with dm_f.sqlTemp do
    begin
     try
      Close;
      Sql.Clear;
      Sql.Add('select * from Groupcode                                      ');
      Sql.Add(' where GroupCode=:GroupCode                                  ');

      ParamByName('GroupCode').AsString := edtGroupCode.Text;
      open;

      if  isEmpty then
      begin
         showmessage('[신규등록] 버튼으로 저장하세요.');
         exit;
      end;


      Close;
      Sql.Clear;
      Sql.Add('update Groupcode set GroupName=:GroupName, sang1=:Sang1,     ');
      Sql.Add('sang2=:Sang2, sang3=:Sang3, kwamok=:kwamok, ilsu=:ilsu, su_gu2=:su_gu2,     ');
      Sql.Add('iltu=:iltu, qty=:qty, capital=:capital, gr_alias=:gr_alias   ');
      Sql.Add(' where GroupCode=:GroupCode                                  ');

      ParamByName('GroupCode').AsString := edtGroupCode.Text;

      if EdtIlsu.Text = '' then
      begin
        EdtIlsu.Text:= '1';
      end;

      ParamByName('GroupName').AsString := edtGroupName.Text;
      ParamByName('su_gu2').AsString    := inttostr( cbLabSect.ItemIndex);
      ParamByName('sang1').AsString    := '';
      ParamByName('sang2').AsString    := '';
      ParamByName('sang3').AsString    := '';
      ParamByName('ilsu').AsString     := EdtIlsu.Text;
      ParamByName('Kwamok').AsString   :=cbKwamok.Items[cbKwamok.ItemIndex];
      ParamByName('ilsu').AsString     := edtilsu.text ;
      ParamByName('iltu').AsString     := edtOneDay.text ;
      ParamByName('qty').AsString      := edtQty.text ;
      ParamByName('capital').AsString  := edtGroupName.Text;
      ParamByName('gr_alias').AsString := columnComboBox1.ColumnItems[columnComboBox1.itemindex, 0];


      ExecSql;

      saveGroupSuga_CC;
      saveGroupSuga_sangByung;

      saveGroupSuga;

      except

              on E : Exception do
              begin
                    Showmessage('다시저장해 주세요.' + #13#10 +
                    E.Message);

             end;

       end;
  end;
  end;



procedure TMain_f.saveGroupSuga;
var
  i: Integer;

  iltu, ilsu, sugacode,user_key, qty, sugaKorName : string;
begin
  if trim( edtgroupcode.Text) = '' then
      exit;

  if trim( edtGroupName.Text) = '' then
      exit;


  try

    dm_f.uniConnection1.StartTransaction;


    with dm_f.sqlTemp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('delete from groupsuga where groupcode=:GroupCode and GrpDgsYon=''O'' ');
      ParamByName('GroupCode').AsString := trim(edtGroupCode.Text);
      ExecSql;
      //----------------------------------------------------------

      //GroupSuga
      for i := 1 to grdGroupSuga.RowCount - 1 do
      begin

        if (grdGroupSuga.Cells[16, i] ='S') or
            (grdGroupSuga.Cells[16, i] ='G') then
        begin
            ilsu           :=    grdGroupSuga.Cells[6, i] ;//'1';
            if ilsu= ''  then
                ilsu :='0'  ;


            user_key       :=    grdGroupSuga.Cells[14, i] ;
            sugacode       :=    grdGroupSuga.Cells[14, i];
            sugaKorName    :=    grdGroupSuga.Cells[1, i];


            qty :=  grdGroupSuga.Cells[7, i];     //용량

            iltu:=  grdGroupSuga.Cells[8, i];    //횟수

            Close;
            Sql.Clear;
            Sql.Add('insert into groupsuga                                                        ');
            Sql.Add(' (groupcode,groupline,sugacode, sugaKorName, iltu,ilsu,qty,apply_day,                      ');
            Sql.Add('  GrpInsYon, GrpItmCod,GrpTrnDep, GrpOutCod, GrpDgsYon) values                          ');
            Sql.Add(' (:groupcode,:groupline,:sugacode, :sugaKorName, :iltu,:ilsu,:qty,:apply_day ,              ');
            Sql.Add('  :GrpInsYon, :GrpItmCod,:GrpTrnDep, :GrpOutCod , :GrpDgsYon)');
            ParamByName('GroupCode').AsString :=  trim(edtGroupCode.Text);
            ParamByName('GroupLine').AsString :=  IntToStr(i);
            ParamByName('SugaCode').AsString  :=  sugacode;
            ParamByName('sugaKorName').AsString  :=  sugaKorName;
            ParamByName('iltu').AsString      :=  iltu;   //용량
            ParamByName('ilsu').AsString      :=  ilsu;
            ParamByName('Qty').AsString       :=  qty;   //단위
            ParamByName('GrpInsYon').AsString :=  grdGroupSuga.Cells[9, i];
            ParamByName('GrpItmCod').AsString :=  grdGroupSuga.Cells[10, i];
            ParamByName('GrpTrnDep').AsString :=  grdGroupSuga.Cells[11, i];
            ParamByName('GrpOutCod').AsString :=  grdGroupSuga.Cells[12, i];
            ParamByName('GrpDgsYon').AsString :=  'O'; //
            ParamByName('apply_day').AsString :=  FormatDateTime('yyyy-mm-dd', Now);
            ExecSql;

       end;

       if(grdGroupSuga.Cells[16, i] ='S') then
       begin
          try
           //수가 수정
            Close;
            Sql.Clear;
            Sql.Add('update suga set                                         ');
            Sql.Add('bo_dan=:bo_dan, il_dan=:il_Dan                          ');
            Sql.Add('where su_key=:su_key                                    ');
            ParamByName('su_key').AsString :=  grdGroupSuga.Cells[2, i];  //su_key
            ParamByName('bo_dan').AsString :=  grdGroupSuga.Cells[4, i];  //보험단가
            ParamByName('il_dan').AsString :=  grdGroupSuga.Cells[5, i];  //일반단가
            ExecSql;
          except
                on E : Exception do
                begin

                      Showmessage('단가 수정 오류.' + #13#10 +
                      E.Message);

               end;
          end;
       end;


      end;
    end;

    dm_f.uniConnection1.commit;
    Showmessage('저장되었습니다');

   //GroupCode리스트를 불러오고 저장한 그룹코드를 선택하자.
   LoadGroupCode( trim(edtGroupCode.Text), trim(edtGroupOrderValue.text));



  except

          on E : Exception do
          begin
            dm_f.uniConnection1.Rollback;
                Showmessage('다시저장해 주세요.' + #13#10 +
                E.Message);

         end;

  end;

end;


procedure TMain_f.saveGroupSuga_CC;
var
  i: Integer;

  iltu, ilsu, sugacode,user_key, qty, sugaKorName : string;
begin
  if trim( edtgroupcode.Text) = '' then
      exit;

  if trim( edtGroupName.Text) = '' then
      exit;

//  if trim( memCC.Text) = '' then
//      exit;


  try

    dm_f.uniConnection1.StartTransaction;


    with dm_f.sqlTemp do
    begin


      Close;
      Sql.Clear;
      Sql.Add('delete from groupsuga where groupcode=:GroupCode and GrpDgsYon=''S'' ');
      ParamByName('GroupCode').AsString := trim(edtGroupCode.Text);
      ExecSql;
      //----------------------------------------------------------

        //GroupSuga
         if trim( memCC.Text) <> '' then
         begin
                Close;
                Sql.Clear;
                Sql.Add('insert into groupsuga                                                        ');
                Sql.Add(' (groupcode,groupline,sugacode, sugaKorName, iltu,ilsu,qty,apply_day,                      ');
                Sql.Add('  GrpInsYon, GrpItmCod,GrpTrnDep, GrpOutCod, GrpDgsYon) values                          ');
                Sql.Add(' (:groupcode,:groupline,:sugacode, :sugaKorName, :iltu,:ilsu,:qty,:apply_day ,              ');
                Sql.Add('  :GrpInsYon, :GrpItmCod,:GrpTrnDep, :GrpOutCod , :GrpDgsYon)');
                ParamByName('GroupCode').AsString :=  trim(edtGroupCode.Text);
                ParamByName('GroupLine').AsString :=  '0';
                ParamByName('SugaCode').AsString  :=  '0';
                ParamByName('sugaKorName').AsString  :=  memCC.Text;
                ParamByName('iltu').AsString      :=  '0';   //용량
                ParamByName('ilsu').AsString      :=  '0';
                ParamByName('Qty').AsString       :=  '0';   //단위
                ParamByName('GrpInsYon').AsString :=  '';
                ParamByName('GrpItmCod').AsString :=  '';
                ParamByName('GrpTrnDep').AsString :=  '';
                ParamByName('GrpOutCod').AsString :=  '';
                ParamByName('GrpDgsYon').AsString :=  'S'; //
                ParamByName('apply_day').AsString :=  FormatDateTime('yyyy-mm-dd', Now);
                ExecSql;
         end;

      end;

    dm_f.uniConnection1.commit;
//    Showmessage('저장되었습니다');

//   //GroupCode리스트를 불러오고 저장한 그룹코드를 선택하자.
//    LoadGroupCode( trim(edtGroupCode.Text), trim(edtGroupOrderValue.text));



   except

          on E : Exception do
          begin
            dm_f.uniConnection1.Rollback;
                Showmessage('다시저장해 주세요.' + #13#10 +
                E.Message);

         end;

  end;

end;



procedure TMain_f.saveGroupSuga_sangByung;
var
  i: Integer;
  stat2 : boolean;
  aRow : integer;

  iltu, ilsu, sugacode,user_key, qty, sugaKorName : string;
begin
  if trim( edtgroupcode.Text) = '' then
      exit;

  if trim( edtGroupName.Text) = '' then
      exit;



  try

    dm_f.uniConnection1.StartTransaction;


    with dm_f.sqlTemp do
    begin

      //기존 그룹코드  상병 모두 지우고...
      Close;
      Sql.Clear;
      Sql.Add('delete from groupsuga where groupcode=:GroupCode and GrpDgsYon=''I'' ');
      ParamByName('GroupCode').AsString := trim(edtGroupCode.Text);
      ExecSql;
      //----------------------------------------------------------


            for ARow := 1 to grdSangByung.RowCount - 1 do
            begin
              if (grdSangByung.Cells[1, ARow] <> '' )
                and (grdSangByung.Cells[3, ARow] <> 'D' )
                 then // 상병코드가 있으면
              begin

                 grdSangByung.GetCheckBoxState(0, ARow, stat2);

           //      nRadioIdx := 0;
               //  stat2:= grdSangByung.GetRadioIdx(0, ARow, nRadioIdx) ;
                 stat2:= grdSangByung.IsRadioButtonChecked(0, ARow) ;



                  Close;
                  Sql.Clear;
                  Sql.Add('insert into groupsuga                                                        ');
                  Sql.Add(' (groupcode,groupline,sugacode, sugaKorName, iltu,ilsu,qty,apply_day,                      ');
                  Sql.Add('  GrpInsYon, GrpItmCod,GrpTrnDep, GrpOutCod, GrpDgsYon) values                          ');
                  Sql.Add(' (:groupcode,:groupline,:sugacode, :sugaKorName, :iltu,:ilsu,:qty,:apply_day ,              ');
                  Sql.Add('  :GrpInsYon, :GrpItmCod,:GrpTrnDep, :GrpOutCod , :GrpDgsYon)');
                  ParamByName('GroupCode').AsString :=  trim(edtGroupCode.Text);
                  ParamByName('GroupLine').AsString :=  '0';
                  ParamByName('SugaCode').AsString     :=  grdSangByung.Cells[1, ARow];
                  ParamByName('sugaKorName').AsString  :=  grdSangByung.Cells[2, ARow];
                  ParamByName('iltu').AsString      :=  '0';   //용량
                  ParamByName('ilsu').AsString      :=  '0';
                  ParamByName('Qty').AsString       :=  '0';   //단위
                  ParamByName('GrpInsYon').AsString :=  '';
                  ParamByName('GrpItmCod').AsString :=  '';
                  ParamByName('GrpOutCod').AsString :=  '';
                  ParamByName('GrpDgsYon').AsString :=  'I'; //
                  ParamByName('apply_day').AsString :=  FormatDateTime('yyyy-mm-dd', Now);


                  //첫번째것이 주상병이다. 하지만 GrpTrnDep='1'인것을 주상병으로 가져오자.
                  if stat2= true then
                    paramByName('GrpTrnDep').asString :=  '1'
                  else
                    paramByName('GrpTrnDep').asString :=  '0' ;

                  execsql;

              end ;

            end;

    end;

    dm_f.uniConnection1.commit;
//    Showmessage('저장되었습니다');



  except

          on E : Exception do
          begin
            dm_f.uniConnection1.Rollback;
                Showmessage('다시저장해 주세요.' + #13#10 +
                E.Message);

         end;

  end;

end;



procedure TMain_f.btnRefreshClick(Sender: TObject);
begin
   // SetGroupTree(tvGroups);
    LoadGroupCode;
end;

procedure TMain_f.grdSangByungGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
      if (grdSangByung.Cells[3, ARow] = 'D')  then //삭제
      begin

            AFont.Color := $00CFCFCF;
            AFont.Style := [fsStrikeOut]   ;
      end;


end;

procedure TMain_f.grdSangByungKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  i:integer;
begin

     case key of
          VK_BACK:
          begin
          end;

          VK_DELETE://, VK_BACK: //Exit

           begin
             if isSangByungDelete = false then
             begin
                 isSangByungDelete := true;

                for i:= 0 to grdSangByung.selectedRowcount -1 do
                begin

                    grdSangByung.Cells[3,  grdSangByung.SelectedRow[i]] := 'D';

                end;
             end
             else
             begin
                   isSangByungDelete := false;

                for i:= 0 to grdSangByung.selectedRowcount -1 do
                begin

                    grdSangByung.Cells[3,  grdSangByung.SelectedRow[i]] := '';

                end;
             end;

             grdSangByung.Repaint;

           end;

     end;
end;
procedure TMain_f.grdSugaClickSort(Sender: TObject; ACol: Integer);
begin

 // grdList.Sort(AColumn.Index, True);
      grdSuga.autonumberCol(0);
      grdSuga.cursor := crDefault;
end;

procedure TMain_f.grdSugaDblClickCell(Sender: TObject; ARow, ACol: Integer);
var

    nRow : integer;

begin



        edtGroupCode.SetFocus;


        if (grdGroupSuga.Cells[0, grdGroupSuga.Row]= '')
           and (grdGroupSuga.rowCount > 1) then  //insert버튼을 눌러서 추가 대기중
        begin
            nRow :=  grdGroupSuga.Row;
        end
        else
        begin


            grdGroupSuga.addRow;
            nRow :=  grdGroupSuga.rowCount-1;


        end;

        {
        명칭
        코드
        구분
        단가
        단위
        용량
        횟수
        }

      grdGroupSuga.cells[1, nRow] :=  grdSuga. cells[2, ARow]  ;
      grdGroupSuga.cells[2, nRow] :=  grdSuga. cells[1, ARow]  ;


      case ComboBox6.Itemindex of
          0:     grdGroupSuga.cells[3, nRow] :=  '행위' ;
          2:     grdGroupSuga.cells[3, nRow] :=  '투약' ;
           else
                 grdGroupSuga.cells[3, nRow] := '재료';
      end;

     grdGroupSuga.cells[4, nRow]  :=  grdSuga.cells[5, ARow]  ;    //bo_dan
     grdGroupSuga.cells[5, nRow]  :=  grdSuga.cells[6, ARow]  ;    //il_dan                          //ilDan
     grdGroupSuga.cells[6, nRow]  :=  grdSuga.cells[7, ARow]  ;    //dan_qty
     grdGroupSuga.cells[7, nRow]  :=  '1'  ; //용량
     grdGroupSuga.cells[8, nRow]  :=  '1'  ; //횟수
     grdGroupSuga.cells[9, nRow]  :=  '0'  ; //급여구분
     grdGroupSuga.cells[14, nRow] :=  grdSuga.cells[8, ARow]   ; //User_key
     grdGroupSuga.cells[16, nRow]  :=  'S'  ; //횟수


     grdGroupSuga.AutoNumberCol(0);


end;


procedure TMain_f.grdGroupCodeDblClickCell(Sender: TObject; ARow,  ACol: Integer);
var
  nRow : integer;
begin
         if cbAddGroup.Checked = true then
         begin


            if Application.MessageBox(PChar(grdGroupCode.Cells[2, grdGroupCode.row]
                 + '그룹을 추가하시겠습니까?'), '확인', MB_YESNO) = 6 then
           begin

                edtGroupCode.SetFocus;


                if (grdGroupSuga.Cells[0, grdGroupSuga.Row]= '')
                   and (grdGroupSuga.rowCount > 1) then  //insert버튼을 눌러서 추가 대기중
                begin
                    nRow :=  grdGroupSuga.Row ;
                end
                else
                begin


                 //   grdGroupSuga.addRow;
                    nRow :=  grdGroupSuga.rowCount;


                end;



              grdGroupSuga.InsertRows(nRow, 1);// .AddRow;


              grdGroupSuga.Cells[0,  nRow ] := 'GR';
              grdGroupSuga.Cells[1,  nRow ] :=  grdGroupCode.Cells[2, grdGroupCode.row]; // 명칭
              grdGroupSuga.Cells[14, nRow ] :=  grdGroupCode.Cells[1, grdGroupCode.row]; // GroupCode
              grdGroupSuga.Cells[16, nRow ] := 'G';
              grdGroupSuga.Cells[7,  nRow ] := '1';   //용량
              grdGroupSuga.Cells[8,  nRow ] := '1';   //횟수


              insertGroupSuga(grdGroupCode.Cells[1, grdGroupCode.row], nRow, true);
                                       //6,7,8 일수, 1회투, 횟수

           end;
         end
         else
         begin

              if cbAddGroup.Checked = false then
                  mRow := ARow;

              if cbAddGroup.Checked =false then
                  SelectRow(ARow, ACol);
         end;


end;

procedure TMain_f.grdGroupCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      case Key of
           VK_UP , VK_DOWN:
           begin
              SelectRow(grdGroupCode.Row , 0);
           end;
      end;

end;

procedure TMain_f.SelectRow(ARow, ACol: Integer);
var
  aGroupCode, AGroupName : string;
  i : integer;
   aModality   : string;
   nModalIndex : integer;

begin

   fieldClear;


  if ARow > 0then
  begin
    preGroupCode      :=  '';
    aGroupCode        :=  grdGroupCode.cells[1, ARow];
    edtGroupCode.Text :=  aGroupCode;
    edtGroupName.Text :=  grdGroupCode.cells[2, ARow];

    cbLabSect.ItemIndex :=strtoint( grdGroupCode.cells[7, ARow]);
    edtQty.Text       :=  grdGroupCode.cells[3, ARow];
    edtOneDay.Text    :=  grdGroupCode.cells[4, ARow];
    EdtIlsu.Text      :=  grdGroupCode.cells[5, ARow];

//    EdtIlsu.Text      :=  grdGroupCode.cells[6, grdGroupCode.Row];
//    EdtIlsu.Text      :=  grdGroupCode.cells[7, grdGroupCode.Row];

    cbKwamok.ItemIndex           := 0;//  cbKwamok.Items.IndexOf( PMyRec(tvGroups.Selected.Data)^.gKwamok);

    aModality :=  trim(grdGroupCode.cells[6, ARow]);

    nModalIndex := ColumnComboBox1.ComboItems.IndexInColumnOf(0, aModality );
    ColumnComboBox1.ItemIndex := nModalIndex  ;

//
//    ColumnComboBox1.ItemIndex :=
//        ColumnComboBox1.ComboItems.IndexInColumnOf(0, grdGroupCode.cells[6, ARow] );


//    dtApplyDay.Date := strToDate(grdApplyDay.Cells[1, grdApplyDay.Row]);


//grdGroupSuga 초기화
    grdGroupSuga.RemoveRows(1, grdGroupSuga.RowCount - 1);
    grdGroupSuga.RowCount := 1;

    insertGroupSuga(aGroupCode,  0);

  if lstGroupTemp.Items.Count > 0 then
  begin
    for i := 0 to lstGroupTemp.Items.Count - 1 do
    begin

      AGroupName := substr(lstGroupTemp.Items[i], 1, '|');
      AGroupCode := substr(lstGroupTemp.Items[i], 2, '|');

//     insertGroupSuga(AGroupName, AGroupCode, 0,    substr(lstGroupTemp.Items[i],  3, '|'));
                  //GroupName    GroupCode   nAdd  aSutak
          grdGroupSuga.AddRow;
          grdGroupSuga.Cells[0,  grdGroupSuga.RowCount - 1] := 'GR';
          grdGroupSuga.Cells[1,  grdGroupSuga.RowCount - 1] := AGroupName; // 명칭
          grdGroupSuga.Cells[14, grdGroupSuga.RowCount - 1] := AGroupCode; // GroupCode
          grdGroupSuga.Cells[16, grdGroupSuga.RowCount - 1] :='G';
          grdGroupSuga.Cells[7,  grdGroupSuga.RowCount - 1] :='1';   //용량
          grdGroupSuga.Cells[8,  grdGroupSuga.RowCount - 1] :='1';   //횟수




          insertGroupSuga(AGroupCode, grdGroupSuga.RowCount -1 , true);
    end;
  end;

    lstGroupTemp.Items.Clear;
 //   lstGroupTemp.Visible := false;


  end;

end;




function  TMain_f.LoadGroupName(groupCode: string): string;
var
  tempQuery: TuniQuery;
begin
  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from groupcode where groupcode=:GrKey ');
      paramByName('GrKey').asString := groupCode;
      open;
      Result := fieldByname('groupName').asString;
    end;

  finally
    tempQuery.Free;
  end;
end;

procedure TMain_f.insertGroupSuga(aGroupCode:string; nRow:integer; isGroup:boolean=false);
const
selQry=

//        'select * from groupsuga g join suga s on g.SugaCode=s.su_key                          '
//   + #10 +' where groupcode =  :Groupcode    and g.grpDgsYon = ''O'' and :jin_day >=su_apply         '
//   + #10 + ' order by GroupLine                                                                      ';

    '         select *,                                                                                                                                                     '
    + #10 + '(select top 1 su_key from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_key,             '
    + #10 + '(select top 1 su_gu3 from suga s where s.user_key= g.SugaCode     order by s.su_apply desc ) as su_gu3,             '
    + #10 + '(select top 1 su_gu2 from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_gu2,              '
    + #10 + '(select top 1 su_danwi from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_danwi,          '
    + #10 + '(select top 1 bo_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as bo_dan,              '
    + #10 + '(select top 1 ja_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as ja_dan,              '
    + #10 + '(select top 1 il_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as il_dan,              '
    + #10 + '(select top 1 dan_qty from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as dan_qty,            '
    + #10 + '(select top 1 su_gu1 from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_gu1,              '
    + #10 + '(select top 1 su_soa from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_soa,              '
    + #10 + '(select top 1 Su_kor_name from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as Su_kor_name,    '
    + #10 + '(select top 1 Su_Eng_name from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as Su_eng_name,    '
    + #10 + '(select top 1 su_yagan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_yagan,          '
    + #10 + '(select top 1 need_chart_memo from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as need_chart_memo,          '
    + #10 + '(select top 1 gasankind from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as gasankind,          '
    + #10 + '(select top 1 sutakupche from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as sutakupche,          '
    + #10 + '(select top 1 sutakgrade from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as sutakgrade,          '
    + #10 + '(select top 1 gasan      from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as gasan,          '
    + #10 + '(select top 1 su_extra   from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_extra,          '
    + #10 + '(select top 1 su_sobulru   from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_sobulru,          '
    + #10 + '(select top 1 modality from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as modality,          '
    + #10 + '(select top 1 bo_dan from                                                                                                                                  '
    + #10 + '      (select bo_dan,su_apply from suga where user_key=g.sugacode and (sugu1 <>''삭제'' or sugu1 is null ) )                                                     '
//    + #10 + '	      union all                                                                                                                                                '
//    + #10 + '       select bo_dan,su_apply from suga_history where user_key=g.sugacode )           '
    + #10 + ' m where   :jin_day >=m.su_apply                                                      '
    + #10 + '           order by su_apply desc) as Bodan                                                                                                                           '
    + #10 + ' from groupsuga g                                                                                                                                             '
    + #10 + ' where groupcode = :Groupcode   and g.grpDgsYon = ''O''                                                                                                          '
    + #10 + ' order by GroupLine                                                                                                                                            ';

var
  i        : Integer;
  su_gu1   : integer;
  sugacode : string;
  GroupName: string;
  nIOrder  : integer;
begin
    i:= 0;
    nIOrder := 1;

    with dm_f.SqlFind do
    begin

        close;
        SQL.Clear;
        SQL.Add(' select * from groupSuga ');
        SQL.Add(' where groupcode=:groupcode and GrpDgsYon=''I'' ');
        paramByName('groupcode').asString := AGroupCode;
        open;
        First;
        if not isEmpty then
        begin


           //상병을 넣자....

           while not eof do
           begin
            nIorder := checkBlankRow(grdSangByung, 1);

            if nIorder = 1 then
                grdSangByung.AddRadioButton(0, nIorder , true )
            else
                grdSangByung.AddRadioButton(0, nIorder , false );

            grdSangByung.Cells[1, nIOrder]  :=  fieldByname('sugacode').asString;;
            grdSangByung.Cells[2, nIOrder] :=  fieldByname('sugakorname').asString;;

            nIorder := nIorder + 1;

            next;
           end;


        end;



        //CC를 넣자......
        close;
        SQL.Clear;
        SQL.Add('select * from groupSuga where groupcode=:groupcode and GrpDgsYon=''S''  ');
        SQL.Add('order by GroupLine');
        paramByName('groupcode').asString := AGroupCode;
        open;
        First;
        nIorder := 1;
        if not isEmpty then
        begin

           // Osang := fieldByname('Sang1').asString;
           while not eof do
           begin

            memcc.Lines.Add(fieldByname('sugakorname').asString) ;

            next;
           end;


        end;




      Close;
      Sql.Clear;

      sql.Text := selQry;
      paramByName('jin_day').asString   :=  FormatDateTime('YYYY-MM-DD', now);//grdApplyDay.Cells[1, grdApplyDay.Row];//FormatDateTime('YYYY-MM-DD', dmain.Date);
      paramByName('Groupcode').asString :=  aGroupCode ;// grdApplyDay.Cells[1, grdApplyDay.Row];

      Open;
      First;

      if not isEmpty then
      begin


    //    grdGroupSuga.RowCount := dm_f.SqlFind.recordCount + grdGroupSuga.RowCount;


        while not Eof do
        begin

          sugacode:=  FieldByName('sugacode').AsString;
          if copy(sugacode, 1, 1) = '+' then
          begin

            // 그룹 템프에다가 넣어두고
            // insertsugacode 다 한 후에
            // 그룹 템프를 한번 더 돌리자.
            GroupName := LoadGroupName(sugacode);
            lstGroupTemp.Items.Add(GroupName + '|' + sugacode + '|' +
              trim(fieldByname('sugacode').asString));
            next;

          end
          else
          begin


          // i:= i+ 1;
          // grdGroupSuga.AddRow;


           nRow :=  nRow + 1 ;
           grdGroupSuga.InsertRows(nRow, 1);

           grdGroupSuga.CellProperties[1, nRow].ReadOnly := true;
           grdGroupSuga.CellProperties[2, nRow].ReadOnly := true;

           grdGroupSuga.Cells[1, nRow ] := FieldByName('su_kor_name').AsString;


           grdGroupSuga.Cells[2, nRow ] := FieldByName('su_key').AsString;

           grdGroupSuga.AddButton(2, nRow,
                          20, 20, '[E]' ,ADVGrid.haRight, ADVGrid.vaCenter);


            if checkInt(FieldByName('su_gu1').AsString ) then
               su_gu1 :=  FieldByName('su_gu1').AsInteger
            else
               su_gu1 := 1;

           case   su_gu1  of
            1, 3, 6:
              begin
                if ((FieldByName('su_gu3').AsString = '09')
                     or (FieldByName('su_gu3').AsString = '10')
                     or (FieldByName('su_gu3').AsString = '11')
                     or (FieldByName('su_gu3').AsString = '12')) then
                begin
                 // NewItem.ImageIndex := 1;
                 // NewITem.SubItems.Add('투약');
                  grdGroupSuga.Cells[3, nRow ] := '투약';

                end
                else if FieldByName('su_gu3').AsString = '31' then
                begin
                  //NewItem.ImageIndex := 3;
                  //NewITem.SubItems.Add('재료');
                  grdGroupSuga.Cells[3, nRow ] := '재료';
              end
                else if FieldByName('su_gu3').AsString = '19' then
                begin
                  //NewItem.ImageIndex := 8;
                  //NewITem.SubItems.Add('재료');
                  grdGroupSuga.Cells[3, nRow ] := '재료';
                end
                else
                begin
                 // NewItem.ImageIndex := 6;
                 // NewITem.SubItems.Add('재료');
                  grdGroupSuga.Cells[3, nRow ] := '재료';
                end;
              end;
            2, 4:
              begin
                if FieldByName('su_gu3').AsString = '31' then
                begin
                 // NewItem.ImageIndex := 2;
                 // NewITem.SubItems.Add('행위');
                  grdGroupSuga.Cells[3, nRow ] := '행위';

                end
                else if FieldByName('su_gu3').AsString = '19' then
                begin
                  //NewItem.ImageIndex := 0;
                  //NewITem.SubItems.Add('행위');
                  grdGroupSuga.Cells[3, nRow ] := '행위';
                end
                else
                begin
                  //NewItem.ImageIndex := 5;
                  //NewITem.SubItems.Add('행위');
                  grdGroupSuga.Cells[3, nRow ] := '행위';
                end;
              end;
            5:
              begin
                if FieldByName('su_gu3').AsString = '31' then
                begin
                  //NewItem.ImageIndex := 2;
                  //NewITem.SubItems.Add('100');
                  grdGroupSuga.Cells[3, nRow ] := '100';
                end
                else if FieldByName('su_gu3').AsString = '19' then
                begin
                  //NewItem.ImageIndex := 0;
                  //NewITem.SubItems.Add('100');
                  grdGroupSuga.Cells[3, nRow ] := '100';
                end
                else
                begin
                  //NewItem.ImageIndex := 5;
                  //NewITem.SubItems.Add('100');
                  grdGroupSuga.Cells[3, nRow ] := '100';
                end;
              end;
             end;


          //NewITem.SubItems.Add(FieldByName('bo_dan').AsString);
          //NewITem.SubItems.Add(FieldByName('dan_Qty').AsString);
          //NewITem.SubItems.Add(FieldByName('qty').AsString);

            grdGroupSuga.Cells[4, nRow ] := FieldByName('bo_dan').AsString;
            grdGroupSuga.Cells[5, nRow ] := FieldByName('il_Dan').AsString;

            //6,7,8 일수 ilsu, 1회투 qty, 횟수 iltu
            grdGroupSuga.Cells[6, nRow ] := FieldByName('ilsu').AsString;//FieldByName('dan_Qty').AsString;

            grdGroupSuga.Cells[7, nRow ] := FieldByName('qty').AsString ;  //용량


            if FieldByName('su_gu2').AsString = '3' then
            begin
             //  NewITem.SubItems.Add(FieldByName('iltu').AsString);
               grdGroupSuga.Cells[8, nRow ] := FieldByName('iltu').AsString;
            end
            else
            begin
             //  NewITem.SubItems.Add('1');
             grdGroupSuga.Cells[8, nRow ] := '1';     //투약횟수

            end;


            //ToDo : 위에거 무시...
            grdGroupSuga.Cells[8, nRow ] := FieldByName('iltu').AsString;

            grdGroupSuga.Cells[9, nRow ] := FieldByName('GrpInsYon').AsString;
            grdGroupSuga.Cells[10, nRow ] := FieldByName('GrpItmCod').AsString;
            grdGroupSuga.Cells[11, nRow ] := FieldByName('GrpTrnDep').AsString;
            grdGroupSuga.Cells[12, nRow ] := FieldByName('GrpOutCod').AsString;

            grdGroupSuga.Cells[13, nRow ] :='';
            grdGroupSuga.Cells[14, nRow ] := FieldByName('sugacode').AsString;
            grdGroupSuga.Cells[15, nRow ] := FieldByName('sugakorname').AsString;

            if isGroup = true then
            begin
                 grdGroupSuga.Cells[16, nRow ] :='I';
            end
            else
            begin
                 grdGroupSuga.Cells[16, nRow ] :='S';
            end;

            Next;
         end;
        end;
        grdGroupSuga.AutoNumberCol(0);
      end;
    end;
end;


procedure TMain_f.grdGroupSugaButtonClick(Sender: TObject; ACol, ARow: Integer);
begin

  if ARow > 0 then
  begin
    grdGroupSuga.Row := Arow;

    SugaProp_f := TSugaProp_f.Create(application);
    SugaProp_f.edtSuKey.Text :=  grdGroupSuga.Cells[2, ARow];
    SugaProp_f.Showmodal;
    SugaProp_f.Free;
    SugaProp_f := nil;
  end;

end;

procedure TMain_f.grdGroupSugaGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
      if (grdGroupSuga.Cells[16, ARow] = 'G') and (aCol > 0 ) then
        ABrush.Color := $00B6FAB4;
      if (grdGroupSuga.Cells[16, ARow] = 'I') and (aCol > 0 ) then
        ABrush.Color := $00F2FFF2;

end;

procedure TMain_f.grdGroupSugaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
          VK_DELETE://, VK_BACK : //Exit
           begin

               grdGroupSuga.RemoveSelectedRows;
           end;

          VK_INSERT://
           begin


                  grdGroupSuga.InsertRows(grdGroupSuga.Row, 1);
                 //   grdGroupSuga.AutoNumberCol(0);

           end;
    end;

end;

end.

