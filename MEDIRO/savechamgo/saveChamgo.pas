unit saveChamgo;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, DB,  GifIMG,
     Menus, Spin, AdvPanel, Grids, AdvObj, BaseGrid, AdvGrid, math,
     AdvToolBar, AdvGlowButton, MSINKAUTLib_TLB,
       iniFiles, System.ImageList, Vcl.ImgList, AdvUtil;
type
     PMyRec = ^TMyRec;
     TMyRec = record
          FName: string;
          LName: string;
          FPrice: string;
          FGroupCode: string;
          FGroupName: string;

          FChartTag: string;

          FFontName: string;
          FFontSize: string;
          FFontColor: string; //글자색
          FFontBackColor: string; //글자배경색
          FFontStyle: string;

     end;
type
     TsaveChamgo_f = class(TForm)
          PopupMenu1: TPopupMenu;
          N1: TMenuItem;
          pnlTop: TAdvPanel;
          lblChart: TLabel;
          lblName: TLabel;
          pnlMain: TAdvPanel;
          GroupBox2: TGroupBox;
          cb13: TCheckBox;
          cb14: TCheckBox;
          CB15: TCheckBox;
          cb16: TCheckBox;
          cb17: TCheckBox;
          cb18: TCheckBox;
          cb19: TCheckBox;
          cb20: TCheckBox;
          cb21: TCheckBox;
          cb22: TCheckBox;
          cb23: TCheckBox;
          spSkinGroupBox1: TGroupBox;
          cb2: TCheckBox;
          cb3: TCheckBox;
          cb4: TCheckBox;
          cb5: TCheckBox;
          cb6: TCheckBox;
          cb7: TCheckBox;
          cb8: TCheckBox;
          cb9: TCheckBox;
          cb10: TCheckBox;
          cb11: TCheckBox;
          cb1: TCheckBox;
          cb12: TCheckBox;
          grdCC: TAdvStringGrid;
          tcCCdate: TTabControl;
          Label4: TLabel;
          ImageList4: TImageList;
          PopupMenu2: TPopupMenu;
          N2: TMenuItem;
          lblSeq: TLabel;
          AdvPanel1: TAdvPanel;
          AdvGlowButton1: TAdvGlowButton;
          AdvGlowButton2: TAdvGlowButton;
          AdvGlowButton3: TAdvGlowButton;
          AdvPanel2: TAdvPanel;
          pnlPen: TPanel;
          pnlBpInfo: TAdvPanel;
          Label1: TLabel;
          Label2: TLabel;
          Label5: TLabel;
          Label6: TLabel;
          Label3: TLabel;
          edtBp1: TSpinEdit;
          edtBp2: TSpinEdit;
          edtDm: TSpinEdit;
          AdvPanel3: TAdvPanel;
    pnlEditTool: TAdvPanel;
          ItalBtn: TSpeedButton;
          BoldBtn: TSpeedButton;
          UnderBtn: TSpeedButton;
          ColorBtn: TSpeedButton;
          FontBtn: TSpeedButton;
          LeftBtn: TSpeedButton;
          CenterBtn: TSpeedButton;
          RightBtn: TSpeedButton;
          FontName: TComboBox;
          FontSize: TComboBox;
          pnlCol1: TPanel;
          pnlcol2: TPanel;
          pnlcol3: TPanel;
          pnlcol4: TPanel;
          pnlcol5: TPanel;
          pnlCol6: TPanel;
          pnlCommon: TAdvPanel;
          lbUseWord: TListBox;
    rEdit: TRichEdit;
    cbClose: TCheckBox;
    btnIns: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    Label7: TLabel;
    spSkinButton2: TButton;
    spSkinButton12: TButton;
    btnAdd: TButton;
    btnApply: TButton;
    dtChamgo: TDateTimePicker;
    Tree0: TTreeView;
    pgTXProgress: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lbCharttagList: TListBox;
    rgSelect: TRadioGroup;
    edtChartTag: TEdit;
    edtCharttagOrder: TEdit;
    pnlChildUse: TPanel;
    cbChildUse: TCheckBox;
    pnlSulsikTree: TPanel;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnCloseClick(Sender: TObject);
          procedure Label1MouseEnter(Sender: TObject);
          procedure Label1MouseLeave(Sender: TObject);
          procedure lbUseWordDblClick(Sender: TObject);
          procedure lblAddClick(Sender: TObject);
          procedure N1Click(Sender: TObject);
          procedure Label1Click(Sender: TObject);
          procedure btnApplyClick(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
          procedure dtChamgoChange(Sender: TObject);
          procedure tcCCdateChange(Sender: TObject);
          procedure grdCCClickCell(Sender: TObject; ARow, ACol: Integer);
          procedure AdvGlowButton1Click(Sender: TObject);
          procedure grdCCDblClickCell(Sender: TObject; ARow, ACol: Integer);
          procedure N2Click(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure AdvGlowButton3Click(Sender: TObject);
          procedure spSkinButton2Click(Sender: TObject);
          procedure spSkinButton12Click(Sender: TObject);
          procedure pnlMainResize(Sender: TObject);
    procedure rEditSelectionChange(Sender: TObject);
    procedure pnlCol6Click(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure cbCloseClick(Sender: TObject);
    procedure BoldBtnClick(Sender: TObject);
    procedure ItalBtnClick(Sender: TObject);
    procedure UnderBtnClick(Sender: TObject);
    procedure FontBtnClick(Sender: TObject);
    procedure ColorBtnClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
     private
          { Private declarations }
          imgcnt: integer;

          varDoctor, varHygine, varAppday, varArch1, varArch2: string;
          j, varCircleDefault, varCircleValue: integer;
          CharCircle: string;
          varCurrPos : integer;
          isEditMode:boolean;  //그리드를 클릭했을때 버튼이 뜬다 - 이것이 편집모드

          procedure fieldClear;
          procedure SaveChamgoData;
          procedure UseWordDelete;

          function DeleteCC(varID: string): boolean;
          procedure DeleteChamgo(Sender: TObject);
          function LoadPenChartImage(varChartseq: double; varRow: integer; varKind: string = ''):
               string;
          procedure LoadInkCollector;
    procedure btnSet(bs: integer);
    procedure setCheckbox;
    procedure MakeTree;
    procedure Tree0DblClick(Sender: TObject);
    procedure Tree0CustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure Makenode(Flag: Integer; fTree: TTreeView; fTName, UId: string);
    procedure MakeTabSheet(UsePageControl: TPageControl);
     public
          { Public declarations }
          viewKind: integer;
          varRgTag: integer ;
          //    varPeninputmode: integer;
          procedure LoadUseWord;
          procedure LoadChamgo2(varChart:string);

     end;

var
     saveChamgo_f: TsaveChamgo_f;
     TxInkCollector: TinkCollector;

implementation
uses uDM, uGogekData, addUseWord, uMain, uFunctions, peninput;
{$R *.dfm}

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
     FontType: Integer; Data: Pointer): Integer; stdcall;
begin
     TStrings(Data).Add(LogFont.lfFaceName);
     Result := 1;
end;




procedure TsaveChamgo_f.MakeTree;
var
     NewTreeS: TTreeView;
     i, varGroupKind: Integer;
     FormInit: Tinifile;
     Path : string;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'DB.ini';
     FormInit := TIniFile.Create(Path);
     varTreeFontSize := FormInit.ReadInteger('기타정보', 'TREEFONTSIZE', 10);
     FormInit.Free;
     SetLength(varTreeViewArray, pgTxProgress.PageCount);

     // MakeNode(0, Tree0, pgTxProgress.Pages[0].Caption, dm_f.sawonNo);
     for i := 0 to pgTxProgress.PageCount - 1 do
     begin

          varGroupKind := pgTxProgress.Pages[i].Tag;

          NewTreeS := TTreeView.Create(saveChamgo_f);


          NewTreeS.Parent := pgTxProgress.Pages[i];
          NewTreeS.Align              := alClient;
          NewTreeS.readonly           := true;
          NewTrees.Font.Size          := varTreeFontSize;
          NewTreeS.Name               := 'Tree0' + IntToStr(i);
          NewTreeS.DragCursor         := crDrag;
          NewTreeS.DragMode           := dmAutomatic;
          NewTreeS.OnDblClick         := Tree0DblClick;
          NewTreeS.OnCustomDrawItem   := Tree0CustomDrawItem;
          //MakeNode(i + 1, NewTreeS, pgTxProgress.Pages[i].Caption, dm_f.sawonNo);

          varTreeViewArray[i]:=  NewTreeS;

          MakeNode(varGroupKind, NewTreeS, pgTxProgress.Pages[i].Caption,
               main_f.V_UserID);
     end;
     pgTxProgress.ActivePageIndex := 0;
end;

procedure TsaveChamgo_f.Makenode(Flag: Integer; fTree: TTreeView; fTName: string;
     UId: string);
var
     MyRecPtr: PMyRec;
     TreeTemp1, TreeTemp2, TreeTemp3, TreeTemp4, TreeTemp5, TreeTemp6:
     TTreeNode;
begin
     TreeTemp1 := nil;
     TreeTemp2 := nil;
     TreeTemp3 := nil;
     TreeTemp4 := nil;
     TreeTemp5 := nil;
     TreeTemp6 := nil;
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from txnew');
          Sql.Add(' where txkind=:txkind ');
          Sql.Add(' and id=:id  and ( inUse <> ''0'' or inUse is null) ');
          Sql.Add('order by treepath');
          ParamByName('txKind').value := IntToStr(Flag);
          ParamByName('id').value := UId;
          Open;

          First;
          while not eof do
          begin
               New(MyRecPtr);
               MyRecPtr^.FName := FieldByName('txname').asString;
               MyRecPtr^.FChartTag := FieldByName('charttag').asString;
               MyRecPtr^.LName := FieldByName('txcode').asString;
               MyRecPtr^.FPrice := FieldByName('Price').asString;
               MyRecPtr^.FGroupCode := FieldByName('GroupCode').asString;
               MyRecPtr^.FGroupName := FieldByName('GroupName').asString;

               MyRecPtr^.FFontName := FieldByName('FontName').AsString;

               if FieldByName('FontColor').AsString <> '' then
                    MyRecPtr^.FFontColor := FieldByName('FontColor').AsString
               else
                    MyRecPtr^.FFontColor := 'clblack';

               if FieldByName('BackColor').AsString <> '' then
                    MyRecPtr^.FFontBackColor := FieldByName('BackColor').AsString
               else
                    MyRecPtr^.FFontBackColor := 'clWhite';

               MyRecPtr^.FFontSize := FieldByName('FontSize').AsString;
               MyRecPtr^.FFontStyle := FieldByName('FontStyle').AsString;

               if Copy(FieldByName('treepath').value, 4, 18) =
                    '000000000000000000' then
               begin
                    TreeTemp1 := fTree.Items.AddChildObject(nil,
                         FieldByName('txcap').value, MyRecPtr);
               end
               else
                    if Copy(FieldByName('treepath').value, 7, 15) =
                         '000000000000000' then
                    begin
                         TreeTemp2 := fTree.Items.AddChildObject(TreeTemp1,
                              FieldByName('txcap').value, MyRecPtr);
                    end
                    else
                         if Copy(FieldByName('treepath').value, 10, 12) =
                              '000000000000' then
                         begin
                              TreeTemp3 := fTree.Items.AddChildObject(TreeTemp2,
                                   FieldByName('txcap').value, MyRecPtr);
                         end
                         else
                              if Copy(FieldByName('treepath').value, 13, 9) =
                                   '000000000' then
                              begin
                                   TreeTemp4 := fTree.Items.AddChildObject(TreeTemp3,
                                        FieldByName('txcap').value, MyRecPtr);
                              end
                              else
                                   if Copy(FieldByName('treepath').value, 16, 6) =
                                        '000000' then
                                   begin
                                        TreeTemp5 := fTree.Items.AddChildObject(TreeTemp4,
                                             FieldByName('txcap').value, MyRecPtr);
                                   end
                                   else
                                        if Copy(FieldByName('treepath').value, 19, 3) = '000' then
                                        begin
                                             TreeTemp6 := fTree.Items.AddChildObject(TreeTemp5,
                                                  FieldByName('txcap').value, MyRecPtr);
                                        end
                                        else {//아이템}
                                        begin
                                             fTree.Items.AddChildObject(TreeTemp6,
                                                  FieldByName('txcap').value, MyRecPtr);
                                        end;
               Next;
          end;
     end;
end;



procedure TsaveChamgo_f.Tree0CustomDrawItem(Sender: TCustomTreeView;
     Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
     with (Sender as TTreeView).Canvas do
     begin
          font.color := $00723708;
          font.Size := varTreeFontSize;
          brush.color := clwhite;
          if pmyRec(node.Data)^.FFontColor <> '' then
               Font.Color := stringtocolor(pmyRec(node.Data)^.FFontColor);
          if pmyRec(node.Data)^.FFontBackColor <> '' then
               Brush.Color := stringtocolor(pmyRec(node.Data)^.FFontBackColor);

     end;

end;
procedure TsaveChamgo_f.Tree0DblClick(Sender: TObject);
var
     i: integer;
     varDispNumber: string;
     varSelectedItem: string;
     varSelectedItemHead: string;
     varSelectedItemBody: string;
     varCharttag : string;
     varCharttagOrder : string;
     varEditEnd: integer;
     varSelLength :integer;
begin
//     showmessage((Sender as TTReeView).name);
     if (Sender as TTReeView).Items.Count <= 0 then
          exit;
     if rEdit.text <> '' then
          varEditEnd := length(rEdit.text) + 1
     else
          varEditEnd := 0;

     //커서가 위치한곳에 이어서 단어를 넣기 위해서
     //현재 커서의 위치를 기억해놓자.

     rEdit.SelAttributes.Color := clBlack;

     varSelectedItem := trim(PMyRec((Sender as TTReeView).Selected.Data)^.FName);


 {

상담
상담완료
진단준비
진단
진단완료
1차교정
2차교정
전체교정
부분교정
단순교정
재교정
단순교정완료
1차교정완료
1차교정종료
디본딩
Check Stop

}


     varCharttag:= trim(PMyRec((Sender as TTReeView).Selected.Data)^.FChartTag);

     varCharttagOrder:=  inttostr( lbChartTagList.Items.IndexOf(varCharttag));


     varSelectedItemHead := copy(varSelectedItem, 1, 1);





     if cbChildUse.Checked = False then
     begin
          if not (Sender as TTReeView).Selected.HasChildren then
          begin
               if PMyRec((Sender as TTReeView).Selected.Data)^.LName =
                    'Group' then
               begin

                    //그룹kind
               end
               else
               begin
                    // pnlTxprg.Caption := pnlTxprg.Caption + PMyRec((Sender as TTReeView).Selected.Data)^.FName + '+';
                    case rgSelect.itemindex of
                         0:

                              begin

                                   //#$2460
                                  // i:= varCircleDefault+j;//:= 2460;
                                   i := 2460;
                                   varCircleValue :=
                                        Hextointeger(inttostr(i));

                                   if (varSelectedItemHead = '~')
                                        or (varSelectedItemHead
                                        =
                                        '^')
                                        or (varSelectedItemHead
                                        =
                                        '=')
                                        or (varSelectedItemHead
                                        =
                                        '@')
                                        or (varSelectedItemHead
                                        =
                                        '$')
                                        or (varSelectedItemHead
                                        =
                                        '%')
                                        or (varSelectedItemHead
                                        =
                                        '&')
                                        or (varSelectedItemHead
                                        =
                                        '*')
                                        or (varSelectedItemHead
                                        =
                                        '!')
                                        or (varSelectedItemHead
                                        =
                                        '+')
                                        or (varSelectedItemHead
                                        =
                                        '-')
                                        or (varSelectedItemHead
                                        =
                                        '#') then
                                   begin
                                        varSelectedItemBody :=
                                             copy(varSelectedItem, 2,
                                             length(varSelectedItem)
                                             + 1);
                                        varDispNumber := '';

                                   end
                                   else
                                   begin
                                        varDispNumber :=
                                             widechar(varCircleValue
                                             + j); //#$65;
                                        j := j + 1;
                                        i := i + 1;

                                   end;

                                   if CharCircle = '1' then
                                   begin
                                        rEdit.Text :=
                                             rEdit.Text
                                             +
                                             varDispNumber +
                                             varSelectedItem;
                                   end
                                   else
                                   begin

                                        //Richedit1으로 보내는지 rEdit로 보내는지 결정하자.
                                        //  if pnlChartMod.visible = false then
                                        //  begin


                                                  if PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor <> '' then
                                                       rEdit.SelAttributes.Color :=
                                                           stringtoColor(PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor);

                                                  if
                                                       length(trim(rEdit.Text)) > 0 then
                                                  begin
                                                       rEdit.SelText
                                                            := ' ' +
                                                            varSelectedItem +
                                                            ' ';
                                                  end
                                                  else
                                                  begin
                                                       rEdit.SelStart := 0;
                                                       rEdit.Text :=
                                                            varSelectedItem;

                                                  end;


                                                  rEdit.selStart := varEditEnd;
                                                  varSelLength :=  length(varSelectedItem);

                                                  rEdit.SelLength := varSelLength;

                                                  if PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor <> '' then
                                                       rEdit.SelAttributes.Color := stringtoColor(PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor);

                                               //   rEdit.Perform(EM_LINESCROLL, 100, 100);

                                                  rEdit.SelStart :=  varCurrPos + varSelLength +1;
                                                  varCurrPos :=  rEdit.SelStart;
                                                   //    length(rEdit.text) +
                                                   //    1;


                                                  rEdit.setfocus;
//                                           end
//                                           else  //isEditMode = True pnlChartMod.Visible := true;
//                                           begin
//
//                                                   if richEdit1.text <> '' then
//                                                        varEditEnd := length(richEdit1.text) + 1
//                                                   else
//                                                        varEditEnd := 0;
//
//
//                                                //   richEdit1.SelAttributes.Color := clBlack;
//
//
//                                                   if    length(trim(richEdit1.Text)) > 0 then
//                                                  begin
//                                                       richEdit1.SelText
//                                                            := ' ' +
//                                                            varSelectedItem +
//                                                            ' ';
//                                                  end
//                                                  else
//                                                  begin
//                                                       richEdit1.Text :=
//                                                            varSelectedItem;
//
//                                                  end;
//                                           //       richEdit1.selStart := varEditEnd;
//                                           //       richEdit1.selLength := length(varSelectedItem);
//
//                                                  //rEdit.SelectAll;
//                                                  //rEdit.SelText:= varSelectedItem;
//                                           //       if PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor <> '' then
//                                           //            rEdit.SelAttributes.Color := stringtoColor(PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor);
//                                                  // if PMyRec((Sender as TTReeView).Selected.Data)^.FFontBackColor <> '' then
//                                                  //  rEdit.SelAttributes.BackColor := stringtoColor(PMyRec((Sender as TTReeView).Selected.Data)^.FFontBackColor);
//
//                                           //       richEdit1.Perform(EM_LINESCROLL, 100, 100);
//
//                                           //       richEdit1.SelStart :=
//                                           //            length(rEdit.text) +
//                                           //            1;
//
//                                           //       richEdit1.setfocus;
//
//
//                                           end;

                                   end;


//                                   if edtTxprice.text <> '' then
//                                        edtTxprice.text :=
//                                             edtTxprice.text +
//                                             '/' +
//                                             displaywon(PMyRec((Sender
//                                             as
//                                             TTReeView).Selected.Data)^.FPrice)
//                                   else
//                                        edtTxprice.text :=
//                                             displaywon(PMyRec((Sender
//                                             as
//                                             TTReeView).Selected.Data)^.FPrice);

                              end;
                         1:  ;
//                              edtCC.Text := edtCC.Text +
//                                   varSelectedItem; // + '+';
                         2:  ;
//                              edtTx.Text := edtTx.Text +
//                                   varSelectedItem; // + '+';

                    end;

//                    if ((Copy(varPortion, 1, 1) = '#') or
//                         (Copy(varPortion, 1, 1) = 'A') or
//                         (Copy(varPortion, 1, 1) = 'L') or
//                         (Copy(varPortion, 1, 1) = 'U') or
//                         (Copy(varPortion, 1, 1) = '1') or
//                         (Copy(varPortion, 1, 1) = '3') or
//                         (Copy(varPortion, 1, 1) = '5') or
//                         (Copy(varPortion, 1, 1) = '7')) then
//                         edit7.text := varPortion;

               end;
               //    TeethClass_fr11.ChoiceToothClear;
          end;
     end
     else
     begin
          if PMyRec((Sender as TTReeView).Selected.Data)^.LName = 'Group' then
          begin

               //그룹kind
          end
          else
          begin
               // pnlTxprg.Caption := pnlTxprg.Caption + PMyRec((Sender as TTReeView).Selected.Data)^.FName + '+';
               case rgSelect.itemindex of
                    0:
                         begin

//                              if isEditMode = false then
//                              rEdit.Text := rEdit.Text +
//                                   varSelectedItem  //+ '+';
//                               else
//                               richedit1.Text :=varSelectedItem;
//
//
//                              if edtTxprice.text <> '' then
//                                   edtTxprice.text :=
//                                        edtTxprice.text + '/' +
//                                        displaywon(PMyRec((Sender
//                                        as
//                                        TTReeView).Selected.Data)^.FPrice)
//                              else
//                                   edtTxprice.text :=
//                                        displaywon(PMyRec((Sender
//                                        as
//                                        TTReeView).Selected.Data)^.FPrice);
                         end;
                    1: ;
                       //  memcc.Lines.Add(varSelectedItem);
                    2: ;
                       //  memTx.Lines.Add(varSelectedItem);
               end;

//               if ((Copy(varPortion, 1, 1) = '#') or
//                    (Copy(varPortion, 1, 1) = 'A') or
//                    (Copy(varPortion, 1, 1) = 'L') or
//                    (Copy(varPortion, 1, 1) = 'U') or
//                    (Copy(varPortion, 1, 1) = '1') or
//                    (Copy(varPortion, 1, 1) = '3') or
//                    (Copy(varPortion, 1, 1) = '5') or
//                    (Copy(varPortion, 1, 1) = '7')) then
//                    edit7.text := varPortion;
          end;


          //   TeethClass_fr11.ChoiceToothClear;
     end;
     edtCharttag.text:= varCharttag;
     edtCharttagOrder.text:= varCharttagOrder;
end;


procedure TsaveChamgo_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin

     action := caFree;

end;

procedure TsaveChamgo_f.FormDestroy(Sender: TObject);
begin
     saveChamgo_f := nil;
end;

procedure TsaveChamgo_f.FormShow(Sender: TObject);
begin

     lblChart.Caption := main_f.edtChart.Text;
     lblName.Caption := main_f.edtName.Text;

     LoadUseWord;
     LoadChamgo2(main_f.edtChart.text);

     pnlSulsikTree.Align := alclient;
     pgTxProgress.Align := alClient;

     pnlMain.Align := alclient;

     grdCC.Align := alclient;

     grdCC.ColWidths[2] := 0;
     grdCC.ColWidths[4] := 0;
     grdCC.ColWidths[5] := 0;
   //  grdCC.ColWidths[5] := 200;

     fieldClear;
     setCheckbox;

      MakeTabSheet(pgTxProgress);
      MakeTree;


end;


procedure TsaveChamgo_f.MakeTabSheet(UsePageControl: TPageControl);
     procedure FreePagess(aPageControl: TPagecontrol);
     var
          I: Integer;
     begin
          for I := aPageControl.PageCount - 1 downto 0 do
          begin
               //    aPageControl.AdvPages[i].RemoveComponent(Ttreeview);
               aPageControl.Pages[i].Destroy;
          end;
     end;

var
     NewTabSheet: TTabsheet;
     //     i: integer;
begin
     //     i := 50;
     FreePagess(UsePageControl);
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from Txkind');
          Sql.Add(' where groupkind2=0 ');
          Sql.Add(' and groupkind3=0');
          Sql.Add(' order by sortkey');
          Open;
          First;
          if RecordCount > 0 then
          begin
               while not eof do
               begin
                    NewTabSheet := TTabsheet.Create(UsePageControl);
                    NewTabSheet.PageControl  := UsePageControl;
                    NewTabSheet.Align := alClient;
                    NewTabSheet.Caption :=
                         FieldByName('KindName').asString;
                    NewTabsheet.Tag :=
                         FieldByName('groupkind1').asinteger;
                    NewTabSheet.Name := UsePageControl.name +
                         FieldByName('sortKey').asString;
                    //  NewTabSheet := true;
                    //  NewTabSheet.Font.Color:=clWhite;
                    //  NewTabSheet.TabColor := i * 1000; // $0083FCB0+i*2550;
                    //  NewTabSheet.Color := i * 1000; //$0083FCB0+i*2550;
                    //  i := i + 1;
                    Next;
               end;
          end;
     end;
end;


procedure TsaveChamgo_f.fieldClear;
begin
     //  pnlTop.caption := '';
     //  pnlMain.caption := '';
     //  pnlBottom.caption := '';
//     pnlChoiceTeeth2.Visible := true;
//
//     with pnlBpInfo do
//     begin
//          Visible := false;
//          left := pnlChoiceTeeth2.left;
//          top := pnlChoiceTeeth2.top;
//          width := pnlChoiceTeeth2.width;
//          height := pnlChoiceTeeth2.height;
//
//     end;
//     with pnlCommon do
//     begin
//          Visible := false;
//          left := pnlChoiceTeeth2.left;
//          top := pnlChoiceTeeth2.top;
//          width := pnlChoiceTeeth2.width;
//          height := pnlChoiceTeeth2.height;
//
//     end;
//
     dtChamgo.Date := now;
     lblSeq.caption := '0';
     rEdit.setFocus;
     rEdit.clear;

     btnset(1);
end;

procedure TSaveChamgo_f.LoadChamgo2(varChart:string);
var
     i: integer;
     varPath, tFileName: string;
     varPenImage: string;
     bstream: Tstream;
begin
     //if not assigned(SaveChamgo_f) then

     varPath := extractfilepath(paramstr(0)) + 'temp\teethtemp\';
     imgCnt := 0;
     case saveChamgo_f.varRgTag of
          0: //참고사항
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxSRemark');
                         Sql.Add('Where srchart= :srChart'); // and srDate= :srDate');
                         Sql.Add('order by srdate desc'); // and srDate= :srDate');

                         ParamByName('srChart').AsString := varChart;
                         //  ParamByName('srDate').AsDate := varDate;
                         Open;

                         if not IsEmpty then
                         begin
                              //rEdit.Text := FieldByName('srMemo').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('SRDATE').asString;
                               //    grdcc.cells[3, i] := FieldByName('srMemo').asString;
                                   grdcc.cells[4, i] := FieldByName('ID').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;

                                   if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                        grdcc.cells[3, i] := FieldByName('srMemo').asString;



                                   next;
                                   i := i + 1;
                              end;
                              {  if tcCCdate.Tabs.IndexOf(FieldByName('SRDATE').asString) = -1 then
                                     tcCCDate.Tabs.Add(FieldByName('SRDATE').asString);
                                rEdit.Text := FieldByName('srMemo').AsString;
                              }

                         end;
                    end;

               end;
          1: //CC
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxCC');
                         Sql.Add('Where CCchart= :CCChart '); //and CCDate= :CCDate');
                         Sql.Add('order by ccdate desc');
                         ParamByName('ccChart').AsString := varChart;

                         //   ParamByName('CCDate').AsDate := varDate;
                         Open;
                         first;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('CCMemo').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('ccDATE').asString;

                                   tFileName := 'CC' + IntToStr(imgCnt + 1);

                                   
                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                              //     grdcc.cells[3, i] := FieldByName('ccMemo').asString;
                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;

                                   if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                        grdcc.cells[3, i] := FieldByName('ccMemo').asString;



                                   next;
                                   i := i + 1;
                              end;
                              {
                               { if tcCCdate.Tabs.IndexOf(FieldByName('CCDATE').asString) = -1 then
                                     tcCCDate.Tabs.Add(FieldByName('CCDATE').asString);
                                rEdit.Text := FieldByName('CCMemo').AsString;
                                }
                         end;
                    end;
               end;
          2: //문진
               begin
                    pnlBpInfo.Visible := true;
                    //pnlChoiceTeeth2.Visible := false;
                    // rEdit.Height := 91;
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxMed');
                         Sql.Add('Where Medchart= :MedChart'); // and MedDate= :MedDate');
                         Sql.Add('order by meddate desc');
                         ParamByName('MedChart').AsString := varChart;
                         // ParamByName('MedDate').AsDate := varDate;
                         Open;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('MedMemo').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('medDATE').asString;
                                   tFileName := 'med' + IntToStr(imgCnt + 1);

                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                                //   grdcc.cells[3, i] := FieldByName('medMemo').asString;

                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;

                                   if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                         grdcc.cells[3, i] := FieldByName('medMemo').asString;
                                   next;
                                   i := i + 1;
                              end;

                              {
                              if tcCCdate.Tabs.IndexOf(FieldByName('MedDATE').asString) = -1 then
                                   tcCCDate.Tabs.Add(FieldByName('MedDATE').asString);
                              rEdit.Text := FieldByName('MedMemo').AsString;
                              }
                         end;
                    end;
                    with dm_f.sqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from chk_list');
                         Sql.Add('Where  chart= :Chart'); // and ChkDate= :ChkDate');
                         ParamByName('Chart').AsString := varChart;
                         //ParamByName('ChkDate').AsDate := StrToDate(tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
                         Open;
                         if not isEmpty then
                         begin

                              edtBp1.Text := substr(FieldByName('Bp').AsString, 1, '/');
                              edtBp2.Text := substr(FieldByName('Bp').AsString, 2, '/');
                              edtDm.Text := FieldByName('Dm').AsString;

                         end;
                    end;

               end;
          3: //원장 요구사항
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxDent');
                         Sql.Add('Where Dchart= :DChart'); // and DDate= :DDate');
                         Sql.Add('order by ddate desc');
                         ParamByName('DChart').AsString := varChart;
                         //ParamByName('DDate').AsDate := varDate;
                         Open;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('DMemo').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('DDATE').asString;
                                   tFileName := 'dent' + IntToStr(imgCnt + 1);
                                   
                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                               //    grdcc.cells[3, i] := FieldByName('dMemo').asString;

                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;


                                   if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                         grdcc.cells[3, i] := FieldByName('dMemo').asString;
                                   next;
                                   i := i + 1;
                              end;

                              {     if tcCCdate.Tabs.IndexOf(FieldByName('DDate').asString) = -1 then
                                        tcCCDate.Tabs.Add(FieldByName('DDate').asString);
                                   rEdit.Text := FieldByName('DMemo').AsString;
                              }
                         end;

                    end;
               end;
          4: //환자요청사항
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxDesire');
                         Sql.Add('Where DSchart= :DSChart'); // and DSDate= :DSDate');
                         Sql.Add('order by dsdate desc');
                         ParamByName('DSChart').AsString := varChart;
                         //ParamByName('DSDate').AsDate := varDate;
                         Open;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('DSMemo').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('dsDATE').asString;
                                   tFileName := 'ds' + IntToStr(imgCnt + 1);

                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                              //     grdcc.cells[3, i] := FieldByName('dsMemo').asString;

                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;
                                   if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                       grdcc.cells[3, i] := FieldByName('dsMemo').asString;


                                   next;
                                   i := i + 1;
                              end;

                              { if tcCCdate.Tabs.IndexOf(FieldByName('DSDate').asString) = -1 then
                                    tcCCDate.Tabs.Add(FieldByName('DSDate').asString);
                               rEdit.Text := FieldByName('DSMemo').AsString;
                               }
                         end;
                    end;
               end;

          5: //Pi
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxPi');
                         Sql.Add('Where chart= :Chart');
                         Sql.Add('order by jin_day desc');
                         ParamByName('Chart').AsString := varChart;
                         Open;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('Descript').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('jin_day').asString;
                                   tFileName := 'pi' + IntToStr(imgCnt + 1);

                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                               //    grdcc.cells[3, i] := FieldByName('descript').asString;

                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;

                                   if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                        grdcc.cells[3, i] := FieldByName('descript').asString;
                                   next;
                                   i := i + 1;
                              end;

                         end;
                    end;
               end;
          6: //imp
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hximp');
                         Sql.Add('Where chart= :Chart');
                         Sql.Add('order by jin_day desc');
                         ParamByName('Chart').AsString := varChart;
                         Open;
                         first;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('Descript').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('jin_day').asString;
                                   tFileName := 'imp' + IntToStr(imgCnt + 1);
                                  
                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                              //     grdcc.cells[3, i] := FieldByName('descript').asString;

                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;
                                  if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                        grdcc.cells[3, i] := FieldByName('descript').asString;

                                   next;
                                   i := i + 1;
                              end;

                         end;
                    end;
               end;
          7: //Plan
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxPlan');
                         Sql.Add('Where chart= :Chart');
                         Sql.Add('order by jin_day desc');
                         ParamByName('Chart').AsString := varChart;
                         Open;
                         first;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('Descript').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('jin_day').asString;
                                   tFileName := 'plan' + IntToStr(imgCnt + 1);

                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                             //      grdcc.cells[3, i] := FieldByName('descript').asString;

                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;
                                 if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                        grdcc.cells[3, i] := FieldByName('descript').asString;

                                   next;
                                   i := i + 1;
                              end;

                         end;
                    end;
               end;
            8: //Sunap참고사항
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxSunap');
                         Sql.Add('Where chart= :Chart');
                         Sql.Add('order by jin_day desc');
                         ParamByName('Chart').AsString := varChart;
                         Open;
                         first;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('Descript').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('jin_day').asString;
                                   tFileName := 'sunap' + IntToStr(imgCnt + 1);

                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                              //     grdcc.cells[3, i] := FieldByName('descript').asString;

                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;
                                   if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                        grdcc.cells[3, i] := FieldByName('descript').asString;

                                   next;
                                   i := i + 1;
                              end;

                         end;
                    end;



               end;

          9: //원장 비밀메모
               begin
                    with dm_f.sqlWork do
                    begin
                         i := 1;
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxDent_m');
                         Sql.Add('Where Dchart= :DChart'); // and DDate= :DDate');
                         Sql.Add('order by ddate desc');
                         ParamByName('DChart').AsString := varChart;
                         //ParamByName('DDate').AsDate := varDate;
                         Open;
                         if not IsEmpty then
                         begin
                              grdcc.rowCount := 1;
                              //rEdit.Text := FieldByName('DMemo').AsString;
                              while not eof do
                              begin
                                   grdcc.addRow;
                                   grdcc.cells[1, i] := FieldByName('DDATE').asString;
                                   tFileName := 'dent' + IntToStr(imgCnt + 1);

                                   imgCnt := imgCnt + 1;

//                                   grdCC.CreatePicture(2, i, false, ShrinkWithAspectRatio, 0,
//                                        AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile(varPath + tFileName + '.BMP'); //치식도 가져오기

                               //    grdcc.cells[3, i] := FieldByName('dMemo').asString;

                                   grdcc.Cells[4, i] := FieldByName('seq').asString;
                                   grdcc.Cells[5, i] := FieldByName('portion').asString;

                                   if FieldByName('isImage').asString = '1' then
                                   begin
                                        grdCc.MergeCells(2, i, 2, 1);

                                        varPenImage :=
                                             LoadPenChartImage(grdcc.Floats[4, i], i, inttostr(saveChamgo_f.varRgTag));
                                        grdCc.CreatePicture(2, i, false,
                                             noStretch, 0,
                                             AdvGrid.haLeft,
                                             AdvGrid.vaTop).LoadFromFile(varPenImage);
                                   end
                                   else
                                   begin
                                        grdCC.RemovePicture(3, i);
                                   end;


                                   if   FieldByName('richtext').AsString <>'' then
                                   begin
                                       BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                                       rEdit.Lines.LoadFromStream(bStream);
                                       BStream.Free;

                                       grdCc.HideInplaceEdit;
                                       grdCc.RichToCell(3, i, rEdit);
                                   end
                                   else
                                         grdcc.cells[3, i] := FieldByName('dMemo').asString;
                                   next;
                                   i := i + 1;
                              end;

                              {     if tcCCdate.Tabs.IndexOf(FieldByName('DDate').asString) = -1 then
                                        tcCCDate.Tabs.Add(FieldByName('DDate').asString);
                                   rEdit.Text := FieldByName('DMemo').AsString;
                              }
                         end;

                    end;
               end;


     end;
     grdCC.AutoSizeRows(false);
     grdcc.AutoNumberCol(0);

     lblSeq.Caption := grdCC.cells[4, grdCC.rowcount-1];

end;

procedure TsaveChamgo_f.btnCloseClick(Sender: TObject);
begin
     Close;
end;
procedure TsaveChamgo_f.btnSet(bs:integer);
begin
    case bs of
          0:
          begin
             btnIns.Enabled := false;
          end;
          1:
          begin
            btnIns.Enabled := true;
          end;
    end;
end;

procedure TsaveChamgo_f.Label1MouseEnter(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $008DF4CE;
     (Sender as TLabel).Font.Style := [fsBold, fsUnderline];

end;

procedure TsaveChamgo_f.Label1MouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $00232323;
     (Sender as TLabel).Font.Style := [fsBold];

end;

procedure TsaveChamgo_f.lbUseWordDblClick(Sender: TObject);
begin
     rEdit.Text := rEdit.Text + ' ' +
          (sender as TListBox).Items[(sender as TListBox).ItemIndex];
end;

procedure TsaveChamgo_f.lblAddClick(Sender: TObject);
begin
     if not Assigned(addUseWord_f) then
          addUseWord_f := TaddUseWord_f.Create(application);
     addUseWord_f.varKind := saveChamgo_f.varRgTag;
     addUseWord_f.ShowModal;

end;

procedure TsaveChamgo_f.LoadUseWord;
begin
     lbUseWord.Clear;
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_UseWord');
          Sql.Add('Where sect= :sect');
          Sql.Add('order by Code');
          ParamByName('sect').Asinteger := saveChamgo_f.varRgTag;
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    lbUseWord.Items.Add(FieldByName('Word').AsString);
                    next;
               end;
          end;
     end;

end;

procedure TsaveChamgo_f.UseWordDelete;
begin
     if lbUseWord.Items.Count > 0 then
     begin
          if
               MessageDlg('[' + lbUseWord.Items[lbUseWord.ItemIndex] + ']' + '항목을 삭제합니까?', MtInformation, [mbYes, mbNo], 0) =
               mrYes then
          begin
               with dm_f.SqlTemp do
               begin
                    try
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from ma_UseWord');
                         Sql.Add('Where Word= :Word and  sect= :sect');
                         ParamByName('Word').AsString := lbUseWord.Items[lbUseWord.ItemIndex];
                         ParamByName('sect').Asinteger := saveChamgo_f.varRgTag;
                         ExecSql;
                    except
                         on E: Exception do
                         begin
                              ShowMessage(E.Message + ' [삭제 확인]');
                         end;
                    end;
               end;

               loadUseWord;
          end
          else
          begin
               exit;
          end;
     end;
end;

procedure TsaveChamgo_f.N1Click(Sender: TObject);
begin
     UseWordDelete;
end;

procedure TsaveChamgo_f.SaveChamgoData;
var
     ms: TMemorystream;

begin
     if trim(rEdit.text) = '' then
          exit;

     ms := TMemoryStream.Create;
     rEdit.Lines.SaveToStream(ms);
     case saveChamgo_f.varRgTag of
          0: //참고사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('select id from hxSremark');
                         Sql.Add('Where id= ' + '''' + lblseq.caption + '''');
                         open;
                         if isEmpty then
                         begin

                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxSremark');
                              Sql.Add('(srchart, srDate, srMemo, modDay,richtext) values');
                              Sql.Add('(:srchart, :srDate, :srMemo, :modDay, :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update hxSremark set');
                              Sql.Add('srchart=:srchart, srDate=:srDate, srMemo= :srMemo, modDay= :modDay, richtext=:richtext');
                              Sql.Add('where id=:id');
                              ParamByName('id').AsString := lblseq.caption;

                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('srChart').AsString := main_f.edtchart.text;
                         ParamByName('srDate').AsDate := dtChamgo.date;
                         paramByName('srMemo').asMemo := rEdit.Text;
                         paramByName('richtext').LoadFromStream(ms, ftBlob);
                         execsql;

                    end;
               end;
          1: //CC
               begin

                    with dm_f.SqlTemp do
                    begin

                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from hxCC');
                         Sql.Add('Where seq= ' + '''' + lblseq.caption + '''');

                         open;
                         if isEmpty then
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxCC');
                              Sql.Add('(CCchart, CCDate, CCMemo, portion, modDay, richtext) values');
                              Sql.Add('(:CCchart, :CCDate, :CCMemo, :portion, :modDay,  :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update hxCC set');
                              sql.Add('CCchart=:CCchart, CCDate=:CCDate, CCMemo =:CCMemo, portion=:portion, modDay= :modDay, richtext=:richtext');

                              Sql.Add('Where seq= :seq  ');
                              ParamByName('seq').AsString := lblseq.Caption;
                              execsql;
                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('CCChart').AsString := main_f.edtchart.text;
                         ParamByName('CCDate').AsDate := dtChamgo.date;
                         paramByName('CCMemo').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';//varPortion;
                         paramByName('richtext').LoadFromStream(ms, ftBlob);
                         execsql;
                    end;
               end;
          2: //문진
               begin
                    with dm_f.SqlTemp do
                    begin

                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from hxMed');
                         Sql.Add('Where seq= :seq ');
                         ParamByName('seq').AsString := lblseq.Caption;
                         open;
                         if isEmpty then
                         begin

                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxMed');
                              Sql.Add('(Medchart, MedDate, MedMemo, portion, modDay, richtext) values');
                              Sql.Add('(:Medchart, :MedDate, :MedMemo, :portion, :modDay, :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update hxMed set');
                              Sql.Add('Medchart=:Medchart,MedDate =:MedDate,MedMemo =:MedMemo,portion =:portion, modDay= :modDay, richtext=:richtext');
                              Sql.Add('Where seq= :seq   ');
                              ParamByName('seq').AsString := lblseq.Caption;
                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('MedChart').AsString := main_f.edtchart.text;
                         ParamByName('MedDate').AsDate := dtChamgo.date;
                         paramByName('MedMemo').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';
                         paramByName('richtext').LoadFromStream(ms, ftBlob);

                         execsql;
                    end;

                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete  from Chk_list');
                         Sql.Add('Where  chart= :chart and ChkDate= :ChkDate');
                         ParamByName('Chart').AsString := main_f.edtchart.text;
                         ParamByName('ChkDate').AsDate := dtChamgo.date;
                         execsql;

                         Close;
                         Sql.Clear;
                         Sql.Add('insert into Chk_list');
                         Sql.Add('(chart, chkDate, bp, dm) values');
                         Sql.Add('(:chart, :ChkDate, :bp, :dm)');
                         ParamByName('Chart').AsString := main_f.edtchart.text;
                         ParamByName('ChkDate').AsDate := dtChamgo.date;
                         paramByName('bp').asString := edtBp1.Text + '/' + edtBp2.text;
                         paramByName('Dm').asString := edtDm.Text;
                         execsql;

                    end;
                    //  main_f.lblBpH.Caption := edtBp1.Text;
                    //  main_f.lblBpL.Caption := edtBp2.text;
                    //  main_f.lblGp.Caption := edtDm.Text;

               end;
          3: //원장 요구사항
               begin
                    with dm_f.SqlTemp do
                    begin

                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from hxDent');
                         Sql.Add('Where seq= :seq ');
                         ParamByName('seq').AsString := lblseq.Caption;
                         open;
                         if isEmpty then
                         begin

                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxDent');
                              Sql.Add('(Dchart, DDate, DMemo, portion, modDay, richtext) values');
                              Sql.Add('(:Dchart, :DDate, :DMemo, :portion, :modDay, :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update   hxDent  set');
                              Sql.Add('Dchart=:Dchart, DDate=:DDate, DMemo =:DMemo, portion=:portion, modDay= :modDay, richtext=:richtext');
                              Sql.Add('Where seq= :seq   ');
                              ParamByName('seq').AsString := lblseq.Caption;
                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('DChart').AsString := main_f.edtchart.text;
                         ParamByName('DDate').AsDate := dtChamgo.date;
                         paramByName('DMemo').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';
                         paramByName('richtext').LoadFromStream(ms, ftBlob);

                         execsql;

                    end;
               end;
          4: //환자요청사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from  hxDesire');
                         Sql.Add('Where seq= :seq ');
                         ParamByName('seq').AsString := lblseq.Caption;
                         open;
                         if isEmpty then
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxDesire');
                              Sql.Add('(DSchart, DSDate, DSMemo, portion, modDay, richtext) values');
                              Sql.Add('(:DSchart, :DSDate, :DSMemo, :portion, :modDay, :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update hxDesire set');
                              Sql.Add('DSchart=:DSchart, DSDate=:DSDate, DSMemo =:DSMemo, portion=:portion, modDay= :modDay, richtext=:richtext');
                              Sql.Add('Where seq= :seq   ');
                              ParamByName('seq').AsString := lblseq.Caption;
                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('DSChart').AsString := main_f.edtchart.text;
                         ParamByName('DSDate').AsDate := dtChamgo.date;
                         paramByName('DSMemo').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';
                         paramByName('richtext').LoadFromStream(ms, ftBlob);
                         execsql;

                    end;
               end;
          5: //PI
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from hxPi');
                         Sql.Add('Where seq= :seq ');
                         ParamByName('seq').AsString := lblseq.Caption;
                         open;
                         if isEmpty then
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxPi');
                              Sql.Add('(chart, jin_day, descript, portion, modDay, richtext) values');
                              Sql.Add('(:chart, :jin_day, :descript, :portion, :modDay, :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update hxPi set');
                              Sql.Add('chart=:chart, jin_day=:jin_day, descript=:descript, portion=:portion, modDay= :modDay, richtext=:richtext');

                              Sql.Add('Where seq= :seq  ');
                              ParamByName('seq').AsString := lblseq.Caption;
                              execsql;

                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('Chart').AsString := main_f.edtchart.text;
                         ParamByName('jin_day').AsDate := dtChamgo.date;
                         paramByName('descript').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';
                         paramByName('richtext').LoadFromStream(ms, ftBlob);
                         execsql;

                    end;
               end;
          6: //impression
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from hxImp');
                         Sql.Add('Where seq= :seq ');
                         ParamByName('seq').AsString := lblseq.Caption;
                         open;
                         if isEmpty then
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxImp');
                              Sql.Add('(chart, jin_day, descript, portion, modDay, richtext) values');
                              Sql.Add('(:chart, :jin_day, :descript, :portion, :modDay, :richtext)');

                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update hxImp set');
                              Sql.Add('chart=:chart, jin_day=:jin_day, descript =:descript, portion =:portion, modDay= :modDay, richtext=:richtext');
                              Sql.Add('Where seq= :seq  ');
                              ParamByName('seq').AsString := lblseq.Caption;
                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('Chart').AsString := main_f.edtchart.text;
                         ParamByName('jin_day').AsDate := dtChamgo.date;
                         paramByName('descript').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';
                         paramByName('richtext').LoadFromStream(ms, ftBlob);
                         execsql;

                    end;
               end;
          7: //Plan
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from  hxPlan');
                         Sql.Add('Where seq= :seq ');
                         ParamByName('seq').AsString := lblseq.Caption;
                         open;
                         if isEmpty then
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxPlan');
                              Sql.Add('(chart, jin_day, descript, portion, modDay, richtext) values');
                              Sql.Add('(:chart, :jin_day, :descript, :portion, :modDay, :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update hxPlan set');
                              Sql.Add('chart=:chart, jin_day=:jin_day, descript=:descript, portion=:portion, modDay= :modDay, richtext=:richtext');

                              Sql.Add('Where seq= :seq  ');
                              ParamByName('seq').AsString := lblseq.Caption;

                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('Chart').AsString := main_f.edtchart.text;
                         ParamByName('jin_day').AsDate := dtChamgo.date;
                         paramByName('descript').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';
                         paramByName('richtext').LoadFromStream(ms, ftBlob);
                         execsql;

                    end;
               end;

          8: //수납참고사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from  hxSunap');
                         Sql.Add('Where seq= :seq ');
                         ParamByName('seq').AsString := lblseq.Caption;
                         open;
                         if isEmpty then
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxSunap');
                              Sql.Add('(chart, jin_day, descript, portion, modDay, richtext) values');
                              Sql.Add('(:chart, :jin_day, :descript, :portion, :modDay, :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update hxSunap set');
                              Sql.Add('chart=:chart, jin_day=:jin_day, descript=:descript, portion=:portion, modDay= :modDay, richtext=:richtext');

                              Sql.Add('Where seq= :seq  ');
                              ParamByName('seq').AsString := lblseq.Caption;

                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('Chart').AsString := main_f.edtchart.text;
                         ParamByName('jin_day').AsDate := dtChamgo.date;
                         paramByName('descript').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';
                         paramByName('richtext').LoadFromStream(ms, ftBlob);
                         execsql;

                    end;
               end;

          9: //원장 비밀메모
               begin
                    with dm_f.SqlTemp do
                    begin

                         Close;
                         Sql.Clear;
                         Sql.Add('select seq from hxDent_m');
                         Sql.Add('Where seq= :seq ');
                         ParamByName('seq').AsString := lblseq.Caption;
                         open;
                         if isEmpty then
                         begin

                              Close;
                              Sql.Clear;
                              Sql.Add('insert into hxDent_m');
                              Sql.Add('(Dchart, DDate, DMemo, portion, modDay, richtext) values');
                              Sql.Add('(:Dchart, :DDate, :DMemo, :portion, :modDay, :richtext)');
                         end
                         else
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('update   hxDent_m  set');
                              Sql.Add('Dchart=:Dchart, DDate=:DDate, DMemo =:DMemo, portion=:portion, modDay= :modDay, richtext=:richtext');
                              Sql.Add('Where seq= :seq   ');
                              ParamByName('seq').AsString := lblseq.Caption;
                         end;
                         ParamByName('modDay').asDateTime := now;
                         ParamByName('DChart').AsString := main_f.edtchart.text;
                         ParamByName('DDate').AsDate := dtChamgo.date;
                         paramByName('DMemo').asMemo := rEdit.Text;
                         paramByName('Portion').asString := '';
                         paramByName('richtext').LoadFromStream(ms, ftBlob);

                         execsql;

                    end;
               end;

     end;
     //   gogek_f.LoadRichData(main_f.edtchart.text);
     //   main_f.LoadmainChamgo(main_f.edtchart.text);

end;

procedure TsaveChamgo_f.Label1Click(Sender: TObject);
var
     varMaxCode: integer;
begin

     { with dm_f.SqlTemp do
      begin
           Close;
           Sql.Clear;
           Sql.Add('Select max(Code) as maxCode from tblUseWord');
           Sql.Add('Where sect= :sect');
           ParamByName('sect').Asinteger := saveChamgo_f.varRgTag;
           Open;
           varMaxCode := FieldByName('maxCode').AsInteger + 1;

           Close;
           Sql.Clear;
           Sql.Add('Insert into tblUseWord');
           Sql.Add('(sect,Code,word) values');
           Sql.Add('(:sect,:Code,:word)');
           ParamByName('sect').Asinteger := saveChamgo_f.varRgTag;
           ParamByName('code').Asinteger := varMaxCode;
           ParamByName('Word').AsString := rEdit.text;
           ExecSql;
      end;
      }
     loadUseWord;
end;

procedure TsaveChamgo_f.btnApplyClick(Sender: TObject);
var
     varMaxCode: integer;
begin

     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select max(Code) as maxCode from ma_UseWord');
          Sql.Add('Where sect= :sect');
          ParamByName('sect').Asinteger := saveChamgo_f.varRgTag;
          Open;
          varMaxCode := FieldByName('maxCode').AsInteger + 1;

          Close;
          Sql.Clear;
          Sql.Add('Insert into ma_UseWord');
          Sql.Add('(sect,Code,word) values');
          Sql.Add('(:sect,:Code,:word)');
          ParamByName('sect').Asinteger := saveChamgo_f.varRgTag;
          ParamByName('code').Asinteger := varMaxCode;
          ParamByName('Word').AsString := rEdit.text;
          ExecSql;
     end;

     loadUseWord;
end;

procedure TsaveChamgo_f.btnAddClick(Sender: TObject);
begin
     if not Assigned(addUseWord_f) then
          addUseWord_f := TaddUseWord_f.Create(application);
     addUseWord_f.varKind := saveChamgo_f.varRgTag;
     addUseWord_f.ShowModal;
end;

procedure TsaveChamgo_f.dtChamgoChange(Sender: TObject);
var
     sDate: string;
begin
     sDate := FormatDateTime('YYYY-MM-DD', dtChamgo.Date);
     tcCCdate.TabIndex := tcCCdate.Tabs.IndexOf(sDate);
 //    if tcCCdate.TabIndex = -1 then
 //         rEdit.Text := '';

end;

procedure TsaveChamgo_f.tcCCdateChange(Sender: TObject);
begin
     dtChamgo.Date := StrToDate(tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
     case saveChamgo_f.varRgTag of
          0: //참고사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxSRemark');
                         Sql.Add('Where srchart= :srChart and srDate= :srDate');
                         ParamByName('srChart').AsString := main_f.edtchart.text;
                         ParamByName('srDate').AsDate := StrToDate(tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
                         Open;
                         if not isEmpty then
                         begin
                              rEdit.Text := FieldByName('srMemo').AsString;
                         end
                         else
                         begin
                              rEdit.Text := '';
                         end;
                    end;
               end;
          1: //CC
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxCC');
                         Sql.Add('Where CCchart= :CCChart and CCDate= :CCDate');
                         ParamByName('ccChart').AsString := main_f.edtchart.text;
                         ParamByName('CCDate').AsDate := StrToDate(tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
                         Open;
                         if not isEmpty then
                         begin
                              rEdit.Text := FieldByName('ccMemo').AsString;
                         end
                         else
                         begin
                              rEdit.Text := '';
                         end;
                    end;
               end;
          2: //문진
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxMed');
                         Sql.Add('Where Medchart= :MedChart and MedDate= :MedDate');
                         ParamByName('MedChart').AsString := main_f.edtchart.text;
                         ParamByName('MedDate').AsDate := StrToDate(tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
                         Open;
                         if not isEmpty then
                         begin
                              rEdit.Text := FieldByName('MedMemo').AsString;
                         end
                         else
                         begin
                              rEdit.Text := '';
                         end;
                    end;
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from chk_list');
                         Sql.Add('Where  chart= :Chart and ChkDate= :ChkDate');
                         ParamByName('Chart').AsString := main_f.edtchart.text;
                         ParamByName('ChkDate').AsDate := StrToDate(tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
                         Open;
                         if not isEmpty then
                         begin
                              edtBp1.Text := substr(FieldByName('Bp').AsString, 1, '/');
                              edtBp2.Text := substr(FieldByName('Bp').AsString, 2, '/');
                         end
                         else
                         begin
                              edtDm.Text := FieldByName('Dm').AsString;

                         end;
                    end;
               end;
          3: //원장 요구사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxDent');
                         Sql.Add('Where Dchart= :DChart and DDate= :DDate');
                         ParamByName('DChart').AsString := main_f.edtchart.text;
                         ParamByName('DDate').AsDate := StrToDate(tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
                         Open;
                         if not isEmpty then
                         begin
                              rEdit.Text := FieldByName('DMemo').AsString;
                         end
                         else
                         begin
                              rEdit.Text := '';
                         end;
                    end;
               end;
          4: //환자요청사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from hxDesire');
                         Sql.Add('Where DSchart= :DSChart and DSDate= :DSDate');
                         ParamByName('DSChart').AsString := main_f.edtchart.text;
                         ParamByName('DSDate').AsDate := StrToDate(tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
                         Open;
                         if not isEmpty then
                         begin
                              rEdit.Text := FieldByName('DSMemo').AsString;
                         end
                         else
                         begin
                              rEdit.Text := '';
                         end;
                    end;
               end;
     end;
end;

procedure TsaveChamgo_f.grdCCClickCell(Sender: TObject; ARow,
     ACol: Integer);
begin
     if aRow <= 0 then
          exit;
     if grdCC.cells[1, aRow] = '' then
          exit;

  //   rEdit.text := grdCC.cells[3, aRow];

     grdCC.CellToRich(3, grdCC.Row, rEdit);

     lblSeq.Caption := grdCC.cells[4, aRow];

     dtChamgo.date := strtoDate(grdCC.cells[1, aRow]);


end;

procedure TsaveChamgo_f.AdvGlowButton1Click(Sender: TObject);
var
     varLeft, varTop, varRight, varBottom: integer;
begin
     if not assigned(peninput_f) then
          peninput_f := Tpeninput_f.Create(application);
     peninput_f.LoadType := saveChamgo_f.varRgTag;

     if (sender as TAdvGlowButton).tag = 0 then
     begin
          peninput_f.varPeninputMode := 0; //insert
     end
     else
     begin
          peninput_f.varPeninputMode := 1; //Modify
     end;

     //peninput_f.varPeninputmode := 0;

     peninput_f.varChartSeq := grdcc.ints[4, grdcc.Row];
     peninput_f.varInputDate := formatDatetime('YYYY-MM-DD', dtchamgo.Date);

     peninput_f.Show;

     //     LoadChamgo2(dtChamgo.Date);

end;

procedure TsaveChamgo_f.grdCCDblClickCell(Sender: TObject; ARow,
     ACol: Integer);
begin
     case aCol of
          0:

               begin
                    if aRow > 0 then
                    begin
                         grdCC.Row := aRow;
                         DeleteChamgo(grdCC);
                    end;
               end;
     end;
end;

procedure Tsavechamgo_f.DeleteChamgo(Sender: TObject);
begin
     if (((Sender as TAdvStringGrid).RowCount > 0) and ((Sender as
          TAdvStringGrid).Row >= 0)) then
     begin

          if Application.MessageBox('기록을 삭제하시겠습니까?', '확인',
               MB_OKCANCEL) = 1 then
          begin
               DeleteCC((Sender as TAdvStringGrid).cells[4, grdCC.Row]);
               (Sender as TAdvStringGrid).RemoveRows((Sender as TAdvStringGrid).Row, 1);

               //  close;

          end;
     end;
end;

function TSaveChamgo_f.DeleteCC(varID: string): boolean; //varChart: string; varDate: string): boolean;
begin
     result := false;
     case saveChamgo_f.varRgTag of
          0: //참고사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hxSRemark');
                         Sql.Add('Where Id= :ID');

                         ParamByName('ID').AsString := varID;
                         execsql;

                         result := true;
                    end;

               end;
          1: //CC
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hxCC');
                         Sql.Add('Where seq=:seq');
                         ParamByName('seq').AsString := varID;

                         execsql;

                         result := true;
                    end;
               end;
          2: //문진
               begin
                    pnlBpInfo.Visible := true;
                    //pnlChoiceTeeth2.Visible := false;
                    // rEdit.Height := 91;
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hxMed');
                         Sql.Add('Where seq=:seq');
                         ParamByName('seq').AsString := varID;
                         execsql;
                    end;
               {     with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from chk_list');
                         Sql.Add('Where ID= :ID');
                         ParamByName('ID').AsString := varID;
                         execsql;
                    end;
                  }
                    result := true;

               end;
          3: //원장 요구사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hxDent');
                         Sql.Add('Where seq=:seq');
                         ParamByName('seq').AsString := varID;
                         execsql;

                         result := true;

                    end;
               end;
          4: //환자요청사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hxDesire');
                         Sql.Add('Where seq=:seq');
                         ParamByName('seq').AsString := varID;
                         execsql;

                         result := true;

                    end;
               end;

          5: //Pi
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hxPi');
                         Sql.Add('Where seq=:seq');
                         ParamByName('seq').AsString := varID;
                         execsql;

                         result := true;

                    end;
               end;
          6: //imp
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hximp');
                         Sql.Add('Where seq=:seq');
                         ParamByName('seq').AsString := varID;
                         execsql;

                         result := true;
                    end;
               end;
          7: //Plan
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hxPlan');
                         Sql.Add('Where seq=:seq');
                         ParamByName('seq').AsString := varID;
                         execsql;

                         result := true;
                    end;
               end;

          8: //수납참고사항
               begin
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('delete from hxSunap');
                         Sql.Add('Where seq=:seq');
                         ParamByName('seq').AsString := varID;
                         execsql;

                         result := true;
                    end;
               end;

     end;
end;

procedure TsaveChamgo_f.N2Click(Sender: TObject);
begin
     if grdCC.Row > 0 then
     begin
          //  grdCC.Row := aRow;
          lblSeq.Caption := grdCC.cells[4, grdCC.Row];
          DeleteChamgo(grdCC);
     end;
end;

function TsaveChamgo_f.LoadPenChartImage(varChartseq: double; varRow: integer; varKind: string = ''):
     string;
var
     loadedInk: TinkDisp;
     BinSize: integer;
     nFileStream: Tfilestream;
     BinData: array of byte;
     S: string;
     i: integer;

     aString: TStringList;
     MemSize: Integer;
     BStream: TStream;
     A: string;
     Buffer: array of Byte;
     VarBMP: TBitMap;

     signature, ms: TMemoryStream;
     img: TGIFImage;
     bt: array of byte;
     varRowHeight: integer;
begin
     result := '';
//     try
//          with dm_f.sqlTemp do
//          begin
//               Close;
//               SQL.Clear;
//               Sql.Add('select * from ma_chart_i ');
//
//               if varkind = '' then
//               begin
//                    Sql.Add('where chartseq= :chartseq and kind is null');
//                    ParamByName('chartseq').value := varChartSeq;
//               end
//               else
//               begin
//                    Sql.Add('where chartseq= :chartseq and kind = :kind');
//                    ParamByName('chartseq').value := varChartSeq;
//                    ParamByName('kind').value := varkind;
//               end;
//               Open;
//
//               if not isEmpty then
//               begin
//                    try
//
//                         BStream :=
//                              CreateBlobStream(FieldByName('ChartImage'),
//                              bmRead);
//                         MemSize := BStream.Size;
//                         SetLength(Buffer, MemSize);
//                         Inc(MemSize);
//                         BStream.Read(Pointer(Buffer)^, MemSize);
//                         for i := 0 to Memsize - 1 do
//                         begin
//                              A := A + Char(Buffer[i]);
//                         end;
//
//                         try
//                              aString := TStringList.Create;
//                              aString.Add(A);
//                              aString.SaveToFile(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\' + floatTostr(varChartSeq) + '.txt');
//                         finally
//                              aString.Free;
//                         end;
//
//                    finally
//                         BStream.Free;
//
//                    end;
//
//                    S := ExtractFilePath(ParamStr(0)) + 'temp\TempImage\'
//                         + floatTostr(varChartSeq) + '.txt';
//                    nFileStream := TFileStream.Create(S, fmOpenRead);
//                    BinSize := nFileStream.Size;
//                    SetLength(BinData, BinSize);
//
//                    nFileStream.Position := 0;
//                  //  for i := 0 to BinSize - 3 do
//                      for i := 0 to BinSize - 1 do
//                    begin
//                         nFileStream.Read(BinData[i], 1);
//                    end;
//                    nFileStream.Free;
//
//                    TxInkCollector.Enabled := false;
//
//                    loadedInk := TinkDisp.Create(pnlPen);
//                    loadedInk.Load(BinData);
//                    TxInkCollector.Ink := loadedInk.Clone;
//                    TxInkCollector.Enabled := false;
//
//                    ms := TMemoryStream.Create;
//                    signature := TMemoryStream.Create;
//
//                    img := TGIFImage.Create;
//                    try
//                         bt := TxInkCollector.Ink.Save(IPF_GIF,
//                              IPCM_MaximumCompression);
//                         //IPCM_NoCompression); //IPCM_Default);
//                         ms.Size := length(bt);
//                         ms.Write(Pointer(bt)^, length(bt));
//                         ms.Position := 0;
//                         img.LoadFromStream(ms);
//
//                         img.Bitmap.SaveToStream(signature);
//                         varRowHeight := img.Height;
//                         signature.Position := 0;
//                         img.SaveToFile(extractFilePath(paramstr(0)) +
//                              'temp\TempImage\' +
//                              floattostr(varChartSeq) +
//                              '.gif');
//
//                         // now to save the stream to a database you do the following
//                         //TBlobField(dataset.FieldByName('NameBlobField')).LoadFromStream(signature);
//
//                         result := extractFilePath(paramstr(0)) +
//                              'temp\TempImage\' +
//                              floattostr(varChartSeq) +
//                              '.gif'
//
//                    finally // wrap up
//                         img.Destroy;
//                         signature.free;
//                         ms.Free;
//                    end; // try/finally
//                    //ShrinkWithAspectRatio
//                 {   grdProgress.CreatePicture(3, varRow, false,
//                           noStretch, 0,
//                           AdvGrid.haLeft,
//                           AdvGrid.vaTop).LoadFromFile(ExtractFilePath(paramStr(0)) + 'temp\TempImage\' + floattostr(varChartSeq) + '.gif');
//
//                    grdProgress.RowHeights[varRow] :=
//                           varRowHeight;
//                  }
//               end;
//          end;
//     except
//          on E: Exception do
//               ExceptLogging('Tdm_f.LoadPenChartImage:' + E.Message);
//     end;
end;

procedure TsaveChamgo_f.FormCreate(Sender: TObject);
var
   DC: HDC;
begin


     if not DirectoryExists( ExtractFilePath(ParamStr(0)) + 'temp\TempImage\') then
         ForceDirectories( ExtractFilePath(ParamStr(0)) + 'temp\TempImage\');

     //ink start----------------------------------------------------------------
     coInkCollector.Create;

     TxInkCollector := TInkCollector.Create(self);
     TxInkCollector.HWND_ := pnlPen.Handle;
     // TxInkCollector.hwnd := mnumemo.Handle;
     // TxInkCollector.hwnd := advStringGrid1.Handle;
     //    TxInkCollector.hwnd := realGrid1.Handle;
     //  TxInkCollector.Transparency := 0;
     //TxInkCollector.Ink.
     TxInkCollector.DefaultDrawingAttributes.Color := clRed;
     TxInkCollector.DefaultDrawingAttributes.Width := 90;
     TxInkCollector.DefaultDrawingAttributes.Transparency := 100;
     TxInkCollector.DefaultDrawingAttributes.IgnorePressure := true;

     TxInkCollector.Enabled := true;
     //ink end----------------------------------------------------------------

     LoadInkCollector;


     btnSet(0);

     DC := GetDC(0);
     EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
     ReleaseDC(0, DC);
     FontName.Sorted := True;

end;

procedure TsaveChamgo_f.LoadInkCollector;
begin

     //   coInkCollector.Create;

     //   TxInkCollector := TInkCollector.Create(self);

     TxInkCollector.Enabled := false;
//     TxInkCollector.hWnd := pnlPen.Handle;
     TxInkCollector.DefaultDrawingAttributes.Width := 20;
     TxInkCollector.DefaultDrawingAttributes.Color := clRed;

     TxInkCollector.DefaultDrawingAttributes.AntiAliased := true;
     TxInkCollector.DefaultDrawingAttributes.FitToCurve := true;
     TxInkCollector.DefaultDrawingAttributes.Height := 5;
     TxInkCollector.DefaultDrawingAttributes.IgnorePressure := false;
     TxInkCollector.DefaultDrawingAttributes.PenTip := IPT_Ball;
     // IPT_Rectangle;
     TxInkCollector.MousePointer := IMP_Default;

     {
       IRO_Black = $00000001;
       IRO_NotMergePen = $00000002;
       IRO_MaskNotPen = $00000003;
       IRO_NotCopyPen = $00000004;
       IRO_MaskPenNot = $00000005;
       IRO_Not = $00000006;
       IRO_XOrPen = $00000007;
       IRO_NotMaskPen = $00000008;
       IRO_MaskPen = $00000009;
       IRO_NotXOrPen = $0000000A;
       IRO_NoOperation = $0000000B;
       IRO_MergeNotPen = $0000000C;
       IRO_CopyPen = $0000000D;
       IRO_MergePenNot = $0000000E;
       IRO_MergePen = $0000000F;
       IRO_White = $00000010;
     }

     {
       IMP_Default = $00000000;
       IMP_Arrow = $00000001;
       IMP_Crosshair = $00000002;
       IMP_Ibeam = $00000003;
       IMP_SizeNESW = $00000004;
       IMP_SizeNS = $00000005;
       IMP_SizeNWSE = $00000006;
       IMP_SizeWE = $00000007;
       IMP_UpArrow = $00000008;
       IMP_Hourglass = $00000009;
       IMP_NoDrop = $0000000A;
       IMP_ArrowHourglass = $0000000B;
       IMP_ArrowQuestion = $0000000C;
       IMP_SizeAll = $0000000D;
       IMP_Hand = $0000000E;
       IMP_Custom = $00000063;
      }

     TxInkCollector.DefaultDrawingAttributes.RasterOperation := IRO_CopyPen;
     TxInkCollector.DefaultDrawingAttributes.Transparency := 0;
     TxInkCollector.DefaultDrawingAttributes.width := 53;

     TxInkCollector.Enabled := true;

end;

procedure TsaveChamgo_f.AdvGlowButton3Click(Sender: TObject);
begin
     SaveChamgoData;

     if cbClose.Checked then
       close
     else
       LoadChamgo2(main_f.edtChart.text);
     btnSet(1) ;
end;

procedure TsaveChamgo_f.spSkinButton2Click(Sender: TObject);
begin
     pnlCommon.visible := true;
     //pnlChoiceTeeth2.visible := false;
     pnlBpinfo.visible := false;
end;

procedure TsaveChamgo_f.spSkinButton12Click(Sender: TObject);
begin
     pnlCommon.visible := false;
     //pnlChoiceTeeth2.visible := true;
     pnlBpinfo.visible := false;

end;

procedure TsaveChamgo_f.pnlMainResize(Sender: TObject);
begin
     with grdCC do
     begin
          ColWidths[3] := pnlMain.Width -
               (ColWidths[0] +
               ColWidths[1] +
               ColWidths[2] +
             //  ColWidths[5] +
               40);
     end;
end;

procedure TsaveChamgo_f.rEditSelectionChange(Sender: TObject);
begin

     BoldBtn.Down := fsBold in rEdit.SelAttributes.Style;
     ItalBtn.Down := fsItalic in rEdit.SelAttributes.Style;
     UnderBtn.Down := fsUnderline in rEdit.SelAttributes.Style;

     LeftBtn.Down := rEdit.Paragraph.Alignment = taLeftJustify;
     CenterBtn.Down := rEdit.Paragraph.Alignment = taCenter;
     RightBtn.Down := rEdit.Paragraph.Alignment =  taRightJustify;

     FontName.ItemIndex :=
          FontName.Items.IndexOf(rEdit.SelAttributes.Name);
     FontSize.ItemIndex :=
          FontSize.Items.IndexOf(IntToStr(rEdit.SelAttributes.Size));


end;

procedure TsaveChamgo_f.pnlCol6Click(Sender: TObject);
begin
    rEdit.SelAttributes.Color := (sender as
          TPanel).color;

end;

procedure TsaveChamgo_f.btnInsClick(Sender: TObject);
begin
    fieldClear;
end;

procedure TsaveChamgo_f.btnCancelClick(Sender: TObject);
begin
    fieldClear;
end;

procedure TsaveChamgo_f.AdvGlowButton4Click(Sender: TObject);
begin
     Close;
end;

procedure TsaveChamgo_f.cbCloseClick(Sender: TObject);
var
     Path: string;
     FormInit: TInifile;
begin

     if   cbClose.Checked   then
     begin
          Path := getConfigdir + 'db.ini';
          FormInit := TIniFile.Create(Path);
          FormInit.WriteString('기타정보', 'ChamgoSavenClose', 'Y');
          FormInit.Free;

     end
     else
     begin

          Path := getConfigdir + 'db.ini';
          FormInit := TIniFile.Create(Path);
          FormInit.WriteString('기타정보', 'ChamgoSavenClose', '');
          FormInit.Free;
     end;

end;

procedure TsaveChamgo_f.setCheckbox;
var
     setIni: TIniFile;
     strPath , isClose: string;
begin
     strPath := ExtractFilePath(paramStr(0)) + 'db.ini';
     setIni := TIniFile.Create(strPath);
     isClose := setIni.ReadString('기타정보', 'ChamgoSavenClose', '');

     cbClose.Checked := false;
     if isClose <> '' then
          cbClose.Checked := true;
end;
procedure TsaveChamgo_f.BoldBtnClick(Sender: TObject);
begin

   

      if fsBold in rEdit.SelAttributes.Style then
           rEdit.SelAttributes.Style :=
                rEdit.SelAttributes.Style -[fsBold]
      else
           rEdit.SelAttributes.Style :=
                rEdit.SelAttributes.Style +  [fsBold];



end;

procedure TsaveChamgo_f.ItalBtnClick(Sender: TObject);
begin
  if fsItalic in rEdit.SelAttributes.Style then
               rEdit.SelAttributes.Style :=
                    rEdit.SelAttributes.Style -
                    [fsItalic]
          else
               rEdit.SelAttributes.Style :=
                    rEdit.SelAttributes.Style +
                    [fsItalic] ;
end;

procedure TsaveChamgo_f.UnderBtnClick(Sender: TObject);
begin
          if fsUnderline in rEdit.SelAttributes.Style then
               rEdit.SelAttributes.Style :=
                    rEdit.SelAttributes.Style -
                    [fsUnderline]
          else
               rEdit.SelAttributes.Style :=
                    rEdit.SelAttributes.Style +
                    [fsUnderline]
end;

procedure TsaveChamgo_f.FontBtnClick(Sender: TObject);
begin


           FontDialog1.Font.Name := rEdit.SelAttributes.Name;
           FontDialog1.Font.Style :=
                rEdit.SelAttributes.Style;
           FontDialog1.Font.Size := rEdit.SelAttributes.Size;

           if FontDialog1.Execute then
           begin
                rEdit.SelAttributes.Name :=
                     FontDialog1.Font.Name;
                rEdit.SelAttributes.Style :=
                     FontDialog1.Font.Style;
                rEdit.SelAttributes.Size :=
                     FontDialog1.Font.Size;
           end;

end;

procedure TsaveChamgo_f.ColorBtnClick(Sender: TObject);
begin
         ColorDialog1.Color := rEdit.SelAttributes.Color;

         if ColorDialog1.Execute then
         begin
                rEdit.SelAttributes.Color :=
                   ColorDialog1.Color;
         end;
end;

procedure TsaveChamgo_f.FontNameChange(Sender: TObject);
begin

     rEdit.SelAttributes.Name :=
          FontName.Items[FontName.ItemIndex];
end;

procedure TsaveChamgo_f.FontSizeChange(Sender: TObject);
begin
     rEdit.Font.size := strtoint(FontSize.text);
     rEdit.SelAttributes.Size := strtoint(FontSize.text);
end;

end.

