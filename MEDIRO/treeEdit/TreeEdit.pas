unit TreeEdit;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, Menus,  
      FormSize, AdvAppStyler, Mask, AdvDropDown,
     AdvColorPickerDropDown,  AdvOfficeComboBox, AdvEdit,
  AdvCombo, ColCombo, JvBaseDlg, JvSelectDirectory;

type
     PMyRec = ^TMyRec;
     TMyRec = record
          FName: string;
          FChartTag: string;
          LName: string;
          FPrice: integer;
          FGroupCode: string;
          FGroupName: string;
          FisGroup: boolean;

          FFontName: string;
          FFontSize: string;
          FFontColor: string; //글자색
          FFontBackColor: string; //글자배경색
          FFontStyle: string;

     end;

type
     TTreeEdit_f = class(TForm)
          Panel4: TPanel;
          TreeView2: TTreeView;
          Panel1: TPanel;
          Panel2: TPanel;
          Label4: TLabel;
          Label7: TLabel;
          BitBtn1: TBitBtn;
          BitBtn2: TBitBtn;
          edtId: TComboBox;
          TreeView1: TTreeView;
          Panel3: TPanel;
          GroupBox1: TGroupBox;
          BitBtn3: TBitBtn;
          BitBtn4: TBitBtn;
          BitBtn5: TBitBtn;
          BitBtn6: TBitBtn;
          BitBtn7: TBitBtn;
          Button2: TButton;
          BitBtn14: TBitBtn;
          BitBtn12: TBitBtn;
          BitBtn11: TBitBtn;
          GroupBox2: TGroupBox;
          Label1: TLabel;
          Label2: TLabel;
          Label3: TLabel;
          Edit1: TEdit;
          Memo1: TMemo;
          btnApply: TBitBtn;
          BitBtn10: TBitBtn;
          Edit2: TEdit;
          BitBtn15: TBitBtn;
          BitBtn8: TBitBtn;
          PopupMenu1: TPopupMenu;
          N1: TMenuItem;
          N2: TMenuItem;
          Option1: TMenuItem;
          N3: TMenuItem;
          SaveDialog1: TSaveDialog;
          FormSize1: TFormSize;
          Panel6: TPanel;
          Label6: TLabel;
          edtid2: TComboBox;
          BitBtn16: TBitBtn;
          edtSearch: TEdit;
          btnFind: TButton;
          Label10: TLabel;
          cbFontColor: TAdvColorPickerDropDown;
          edtPrice: TAdvEdit;
    btnImport: TButton;
          Splitter1: TSplitter;
    ComboBox2: TColumnComboBox;
    ComboBox1: TColumnComboBox;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Edit3: TEdit;
    BitBtn13: TBitBtn;
    edtGroupcode: TEdit;
    Button1: TButton;
    edtGroupName: TEdit;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbBackColor: TAdvColorPickerDropDown;
    cbFontSize: TAdvOfficeFontSizeSelector;
    Label13: TLabel;
    cbChartTag: TComboBox;
    Button4: TButton;
    JvSelectDirectory1: TJvSelectDirectory;
    OpenDialog1: TOpenDialog;
    CheckBox1: TCheckBox;
    cbisGroup: TCheckBox;
    Label14: TLabel;
    ComboBox3: TComboBox;
          procedure BitBtn1Click(Sender: TObject);
          procedure BitBtn2Click(Sender: TObject);
          procedure Makenode2(Flag: Integer; fTree: TTreeView; fTName:
               string; fId: string);
          procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
          procedure TreeView1DragDrop(Sender, Source: TObject; X, Y:
               Integer);
          procedure TreeView1DragOver(Sender, Source: TObject; X, Y:
               Integer;
               State: TDragState; var Accept: Boolean);
          procedure TreeView_SelNodeMove(TreeView: TTreeView; Up: Boolean);
          procedure BitBtn6Click(Sender: TObject);
          procedure BitBtn7Click(Sender: TObject);
          procedure BitBtn5Click(Sender: TObject);
          procedure BitBtn3Click(Sender: TObject);
          procedure BitBtn4Click(Sender: TObject);
          procedure Makenode(Flag: Integer; fTree: TTreeView; fTName:
               string);
          procedure AddCode(cTree: TTreeView; pNode: TTreeNode; kind1:
               Integer; kind2: Integer; kind3: Integer);
          procedure btnApplyClick(Sender: TObject);
          procedure Edit1Change(Sender: TObject);
          procedure BitBtn10Click(Sender: TObject);
          procedure BitBtn8Click(Sender: TObject);
          procedure ComboBox2Change(Sender: TObject);
          procedure BitBtn11Click(Sender: TObject);
          procedure BitBtn12Click(Sender: TObject);
          procedure BitBtn13Click(Sender: TObject);
          procedure TreeView1MouseDown(Sender: TObject; Button:
               TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure Button1Click(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure edtIdChange(Sender: TObject);
          procedure ComboBox1Change(Sender: TObject);
          procedure edtid2Change(Sender: TObject);
          procedure TreeLoad(dTree: TTreeView; dCombo: TcolumnComboBox);
          procedure BitBtn16Click(Sender: TObject);
          procedure testAdd;
          function getNodeIndex1(Text: string): integer;
          procedure Button2Click(Sender: TObject);
          procedure BitBtn14Click(Sender: TObject);
          procedure Edit1KeyPress(Sender: TObject; var Key: Char);
          procedure TreeView1EndDrag(Sender, Target: TObject; X, Y: Integer);
          procedure btnFindClick(Sender: TObject);
          procedure cbFontColorSelect(Sender: TObject);
          procedure cbBackColorSelect(Sender: TObject);
          procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
               Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
          procedure FormPaint(Sender: TObject);
          procedure Memo1KeyPress(Sender: TObject; var Key: Char);
          procedure edtPriceKeyPress(Sender: TObject; var Key: Char);
          procedure btnImportClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cbisGroupClick(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);

     private
          { Private declarations }
          DragOver: boolean;
          CurrentNode: TTreeNode;
          CurrentPos: Char;
          GhostNode: TTreeNode;
          nodeIndex: integer;

  
          targetMdbFile:string;

          function AbsoluteIndexFromNodeText(aTreeView: TTreeView;
               identicalText: string): integer;
          procedure TreeApply;
          procedure Makenode_mdb(Flag: Integer; fTree: TTreeView; fTName,
               fId: string);
    procedure CopyChildNode(SourceTreeView, DestTreeView: TTreeView;
      Source, Dest: TTreeNode);
    procedure loadChartTag;
    procedure LoadTxKind(varKind: integer);
    procedure LoadgroupKind(groupkind1:string);
    procedure fieldSet;
    procedure fieldClear;
     public
          { Public declarations }
          formwhere: string;
     end;

var
     TreeEdit_f: TTreeEdit_f;
     intTmp: integer;

implementation

uses uDM, uMain;//, chartGroup;

{$R *.dfm}

procedure FreeTreeItem(aTree: TTreeView);
var
    I: Integer;
begin
    for I := aTree.Items.Count - 1 downto 0 do
    begin
         Dispose(aTree.Items.Item[I].Data);
         aTree.Items.Item[I].Destroy;
    end;
end;


procedure TTreeEdit_f.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TTreeEdit_f.BitBtn2Click(Sender: TObject);
begin
     TreeLoad(treeview1, combobox2);
end;

procedure TTreeEdit_f.TreeLoad(dTree: TTreeView; dCombo: TColumnComboBox);
var
     MyRecPtr: PMyRec;
     TreeTemp1, TreeTemp2, TreeTemp3: TTreeNode;
begin
     TreeTemp1 := nil;
     TreeTemp2 := nil;
     TreeTemp3 := nil;
     FreeTreeItem(dTree);
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          //-----------------------임시로 묶어둔다----//
          BitBtn3.enabled := True;
          BitBtn4.enabled := True;
          Edit2.Enabled := False;
          //------------------------------------------//
          dCombo.Visible := False;


          Close;
          Sql.Clear;
          Sql.Add(' select * from Txkind ');
          sql.Add(' where groupkind1 = :groupkind1 ');//groupkind2=0 and groupkind3=0 ');
          sql.Add(' order by   sortKey '); //2011.12.21
          paramByName('groupkind1').AsString := inttoStr( comboBox3.ItemIndex);


//          Close;
//          Sql.Clear;
//          Sql.Add('select * from Txkind where groupkind2=0 and groupkind3=0 order by convert(integer, groupkind1,121)'); //2011.12.21
          Open;
          First;
          if RecordCount > 0 then
          begin

               dCombo.Columns.Clear;
               dCombo.ComboItems.Clear;
               while not eof do
               begin
                    with dCombo do
                    begin
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                         end;
                         with Columns.Add do
                         begin
                              Width := 100;
                         end;

                         with ComboItems.Add do
                         begin
                              Strings.Add(FieldByName('groupkind3').AsString);
                              Strings.Add(FieldByName('kindname').AsString);
                           end;
                    end;

                    Next;
               end;
          end;
          dCombo.Visible := True;

     end;
end;

procedure TTreeEdit_f.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
     sTreePath: string;
begin
     if TreeView1.Items.Count > 0 then
     begin
          BitBtn15.Caption := '코드';
          Edit1.Text := TreeView1.Selected.Text;
          Memo1.Text := PMyRec(TReeView1.Selected.Data)^.FName;
          cbCharttag.Text := PMyRec(TReeView1.Selected.Data)^.FCharttag;
          Edit2.Text := PMyRec(TReeView1.Selected.Data)^.LName;
          edtPrice.IntValue := PMyRec(TReeView1.Selected.Data)^.FPrice;
          edtGroupCode.text :=
               PMyRec(TReeView1.Selected.Data)^.FGroupCode;
          edtGroupName.text :=
               PMyRec(TReeView1.Selected.Data)^.FGroupName;

          cbisGroup.checked :=  PMyRec(TReeView1.Selected.Data)^.FisGroup;


          cbFontColor.SelectedColor := stringToColor(PMyRec(TReeView1.Selected.Data)^.FFontColor);
          cbBackColor.SelectedColor := stringToColor(PMyRec(TReeView1.Selected.Data)^.FFontBackColor);
          {      PMyRec(TReeView1.Selected.Data)^.FFontName;
                PMyRec(TReeView1.Selected.Data)^.FFontSize;
                PMyRec(TReeView1.Selected.Data)^.FFontColor;
                PMyRec(TReeView1.Selected.Data)^.FFontBackColor;
                PMyRec(TReeView1.Selected.Data)^.FFontStyle;
           }

          case TreeView1.Selected.Level of
               0: sTreePAth := FormatFloat('000',
                         Treeview1.Selected.Index + 1)
                    + '000000000';
               1: sTreePAth := FormatFloat('000',
                         TreeView1.Selected.Parent.Index + 1)
                    + FormatFloat('000', Treeview1.Selected.Index
                         + 1)
                         + '000000';
               2: sTreePAth := FormatFloat('000',
                         TreeView1.Selected.Parent.Parent.Index + 1)
                    + FormatFloat('000',
                         TreeView1.Selected.Parent.Index + 1)
                         + FormatFloat('000',
                         Treeview1.Selected.Index + 1)
                         + '000';
               3: sTreePAth := FormatFloat('000',
                         TreeView1.Selected.Parent.Parent.Parent.Index
                         + 1)
                    + FormatFloat('000',
                         TreeView1.Selected.Parent.Parent.Index + 1)
                         + FormatFloat('000',
                         TreeView1.Selected.Parent.Index + 1)
                         + FormatFloat('000',
                         Treeview1.Selected.Index + 1);
          end;
          Edit3.Text := sTreePath;
          btnApply.Enabled := False;
          Edit2.Enabled := False;
     end;
end;

procedure TTreeEdit_f.CopyChildNode(SourceTreeView, DestTreeView: TTreeView; Source, Dest: TTreeNode);
var
     Index: Integer;
     Item: TTreeNode;
begin
     for Index := 0 to Source.Count - 1 do
     begin
          // Copies Node
          Item := DestTreeView.Items.AddChild(Dest, '');
          Item.Assign(Source[Index]);
          // Copy Child Nodes
          if Source.Item[Index].HasChildren then
               CopyChildNode(SourceTreeView, DestTreeView, Source[Index], Item);
     end;

     // Deletes Node
    //for Index := Source.Count - 1 to 0 do
    //   SourceTreeView.Items.Delete(Source[Index]);
     if Source.Count > 0 then
          SourceTreeView.Items.Delete(Source[0]);
end;


procedure TTreeEdit_f.TreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
     TreeNode: TTreeNode;
     i: Integer;
     MyRecPtr: PMyRec;

     Node: TTreeNode;
     Expanded: Boolean;


     Item: TTreeNode;
     CursorPos: TPoint;

begin
     if (source is TTreeview) and (TTreeView(Source).Name = 'TreeView2') then
     begin
          {
           New(MyRecPtr);

           MyRecPtr^.FName := PMyRec(TReeView2.Selected.Data)^.FName;
           MyRecPtr^.LName := PMyRec(TReeView2.Selected.Data)^.LName;
           MyRecPtr^.FPrice := PMyRec(TReeView2.Selected.Data)^.FPrice;
           MyRecPtr^.FGroupCode := PMyRec(TReeView2.Selected.Data)^.FGroupCode;
           MyRecPtr^.FGroupName := PMyRec(TReeView2.Selected.Data)^.FGroupName;

           MyRecPtr^.FFontName := PMyRec(TReeView2.Selected.Data)^.FFontName;
           MyRecPtr^.FFontSize := PMyRec(TReeView2.Selected.Data)^.FFontSize;
           MyRecPtr^.FFontColor := PMyRec(TReeView2.Selected.Data)^.FFontColor;
           MyRecPtr^.FFontBackColor := PMyRec(TReeView2.Selected.Data)^.FFontBackColor;
           MyRecPtr^.FFontStyle := PMyRec(TReeView2.Selected.Data)^.FFontStyle;

           TreeNode := TreeView1.GetNodeAt(X, Y);
           TreeNode := TreeView1.Items.AddChildObject(TreeNode,
                TreeView2.Selected.Text, MyRecPtr);
           if TreeView2.Selected.HasChildren then
                for i := 0 to TreeView2.Selected.Count - 1 do
                begin
                     New(MyRecPtr);

                     MyRecPtr^.FName :=
                          PMyRec(TReeView2.Selected.Item[i].Data)^.FName;
                     MyRecPtr^.LName :=
                          PMyRec(TReeView2.Selected.Item[i].Data)^.LName;
                     MyRecPtr^.FPrice :=
                          PMyRec(TReeView2.Selected.Item[i].Data)^.FPrice;
                     MyRecPtr^.FGroupCode :=
                          PMyRec(TReeView2.Selected.Item[i].Data)^.FGroupCode;
                     MyRecPtr^.FGroupName :=
                          PMyRec(TReeView2.Selected.Item[i].Data)^.FGroupName;

                     MyRecPtr^.FFontName := PMyRec(TReeView2.Selected.Item[i].Data)^.FFontName;
                     MyRecPtr^.FFontSize := PMyRec(TReeView2.Selected.Item[i].Data)^.FFontSize;
                     MyRecPtr^.FFontColor := PMyRec(TReeView2.Selected.Item[i].Data)^.FFontColor;
                     MyRecPtr^.FFontBackColor := PMyRec(TReeView2.Selected.Item[i].Data)^.FFontBackColor;
                     MyRecPtr^.FFontStyle := PMyRec(TReeView2.Selected.Item[i].Data)^.FFontStyle;

                     TreeView1.Items.AddChildObject(TreeNode,
                          TreeView2.Selected.Item[i].text, MyRecPtr);
                     //         TreeView1.Items.AddChild(TreeNode, TreeView2.Selected.Item[i].text);
                end;
                }
          if (TTreeView(Source).Selected <> nil) //and(TTreeView(Sender).DropTarget <> nil)
          and (TTreeView(Source).Selected <> TTreeView(Sender).DropTarget) then
          begin

               CursorPos := TTreeView(Sender).ScreenToClient(Point(X, Y));
               Item := TTreeView(Sender).GetNodeAt(X, Y);

               //이동할 서브 노드 리스트(서로다른 트리뷰일때 MoveTo로할경우 문제생김)
               //Item := TTreeView(Sender).Items.AddChild(TTreeView(Sender).DropTarget, '');
               Item := TTreeView(Sender).Items.AddChild(Item, '');
               Item.Assign(TTreeView(Source).Selected);

               CopyChildNode(TTreeView(Source), TTreeView(Sender), TTreeView(Source).Selected, Item);

               //옮기고 지울까>?
           //    TTreeView(Source).Items.Delete(TTreeView(Source).Selected);
          end;

     end
     else
     begin

          if (GhostNode <> nil) and (TTreeView(Sender).Selected <> nil) then
          begin
               TTreeView(Sender).Items.BeginUpdate;
               try
                    Node := TTreeView(Sender).Selected;
                    Expanded := (Node.Count > 0) and Node.Expanded;

                    TTreeView(Sender).Selected.MoveTo(GhostNode,
                         naInsert);

                    Node.Expanded := Expanded;
                    Node.Selected := True;
                    Node.Focused := True;
               finally
                    TTreeView(Sender).Items.EndUpdate;
               end;
               btnApply.Enabled := true;

          end;
     end;
     DragOver := false;
end;

procedure TTreeEdit_f.TreeView1DragOver(Sender, Source: TObject; X,
     Y: Integer; State: TDragState; var Accept: Boolean);
const
     GhostText = '☞                ';
var
     Node: TTreeNode;
     HitPos: Char;
     function GetHitPos: Char;
     var
          Rect: TRect;
     begin
          Rect := Node.DisplayRect(True);
          if (Rect.Top <= Y) and (Y <= Rect.Bottom) then
          begin
               if (Rect.Right - X in [0..14]) and
                    ((Node.Count = 0) or ((Node.Count = 1) and
                    (Node.Item[0] =
                    GhostNode))) then
               begin
                    Result := 'R';
               end
               else
                    if (X - Rect.Left in [0..14]) and
                         ((Node.Parent <> nil) and
                         ((Node.GetNextSibling = nil) or (Node.GetNextSibling
                         =
                         GhostNode))) then
                    begin
                         Result := 'L';
                    end
                    else
                    begin
                         if (Rect.Bottom - Y) > (Rect.Bottom - Rect.Top) div 2 then
                              Result := 'T'
                         else
                              Result := 'B';
                    end;
          end
          else
               Result := #0;
     end;
begin
     DragOver := true;
     if (source is TTreeview) and (TTreeView(Source).Name = 'TreeView2') then
     begin
          if (Source is TTreeView) then
               Accept := True;
          Accept := ((Source is TTreeView)) and (TTreeView(Source).Name =
               'TreeView2');
     end
     else
     begin

          Node := TTreeView(Sender).GetNodeAt(X, Y);

          if (Node <> nil) and (Node <> GhostNode) then
          begin
               HitPos := GetHitPos;

               if (CurrentNode <> Node) or (CurrentPos <> HitPos) and (Node
                    <>
                    TTreeView(Sender).Selected) then
               begin
                    if GhostNode <> nil then
                         GhostNode.Free;

                    if HitPos <> #0 then
                    begin
                         GhostNode :=
                              TTreeNode.Create(TTreeView(Sender).Items);
                         GhostNode.ImageIndex := -1;
                    end
                    else
                         GhostNode := nil;

                    case HitPos of
                         'T':
                              begin
                                   GhostNode :=
                                        TTreeView(Sender).Items.InsertNode(GhostNode,
                                        Node, GhostText, nil);
                              end;
                         'B':
                              begin
                                   if Node.GetNextSibling <> nil then
                                        GhostNode :=
                                             TTreeView(Sender).Items.InsertNode(GhostNode, Node.GetNext, GhostText, nil)
                                   else
                                        GhostNode :=
                                             TTreeView(Sender).Items.AddNode(GhostNode, Node, GhostText, nil, naAdd);
                              end;
                         'R':
                              begin
                                   if Node.Count = 0 then
                                   begin
                                        GhostNode :=
                                             TTreeView(Sender).Items.AddNode(GhostNode, Node, GhostText, nil, naAddChild);
                                        Node.Expand(True);
                                   end;
                              end;
                         'L':
                              begin
                                   Node := Node.Parent;
                                   GhostNode :=
                                        TTreeView(Sender).Items.AddNode(GhostNode,
                                        Node, GhostText, nil,
                                        naAdd);
                              end;
                    else
                         Exit;
                    end;
               end;

               CurrentNode := Node;
               CurrentPos := HitPos;

               ShowCursor(True);
          end;
     end;

end;

procedure TTreeEdit_f.BitBtn6Click(Sender: TObject);
begin
     TreeView_SelNodeMove(TreeView1, True);
     TreeView1.SetFocus;
end;

procedure TTreeEdit_f.TreeView_SelNodeMove(TreeView: TTreeView; Up: Boolean);
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
               while (DestNode <> nil) and ((DestNode.Level >
                    SelNode.Level) or
                    (DestNode.Parent <> SelNode.Parent)) do
               begin
                    if DestNode.Level < SelNode.Level then
                         Exit;
                    if Up then
                         DestNode := DestNode.GetPrev
                    else
                         DestNode := DestNode.GetNext;
               end;
               if (DestNode <> nil) and ((DestNode.Level = SelNode.Level)
                    and
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

procedure TTreeEdit_f.BitBtn7Click(Sender: TObject);
begin

     TreeView_SelNodeMove(TreeView1, False);
     TreeView1.SetFocus;
end;

procedure TTreeEdit_f.BitBtn5Click(Sender: TObject);
begin
     if TreeView1.Selected = nil then
          exit;
     Treeview1.Selected.Delete;
     Treeview1.setfocus;
end;

procedure TTreeEdit_f.BitBtn3Click(Sender: TObject);
var
     MyRecPtr: PMyRec;
     nCnt: Integer;
     sCode: string;
begin
     New(MyRecPtr);
     MyRecPtr^.FName := 'Unknown Name';
     MyRecPtr^.LName := 'Code';
     MyRecPtr^.FCharttag := '';
     MyRecPtr^.FisGroup := false;




     MyRecPtr^.FPrice := 0;
     MyRecPtr^.FGroupCode := '';
     MyRecPtr^.FGroupName := '';

     MyRecPtr^.FFontName := '';
     MyRecPtr^.FFontSize := '';
     MyRecPtr^.FFontColor := 'clBlack';
     MyRecPtr^.FFontBackColor := 'clWhite';
     MyRecPtr^.FFontStyle := '';

     TreeView1.Selected := TreeView1.Items.AddObject(TreeView1.Selected,
          'CapName', MyRecPtr);
     TreeView1.SetFocus;
end;

procedure TTreeEdit_f.BitBtn4Click(Sender: TObject);
var
     MyRecPtr: PMyRec;
begin
     New(MyRecPtr);
     MyRecPtr^.FName := 'Unknown Name';
     MyRecPtr^.FCharttag := '';
     MyRecPtr^.LName := 'Code';
     MyRecPtr^.FPrice := 0;
     MyRecPtr^.FisGroup := false;

     MyRecPtr^.FGroupCode := '';
     MyRecPtr^.FGroupName := '';
     MyRecPtr^.FFontName := '';
     MyRecPtr^.FFontSize := '';
     MyRecPtr^.FFontColor := 'clBlack';
     MyRecPtr^.FFontBackColor := 'clWhite';
     MyRecPtr^.FFontStyle := '';
     TreeView1.Selected := TreeView1.Items.AddChildObject(TreeView1.Selected,
          'CapName', MyRecPtr);
     TreeView1.SetFocus;

end;

procedure TTreeEdit_f.btnApplyClick(Sender: TObject);
begin
     TreeApply;
end;

procedure TTreeEdit_f.TreeApply;
var
     i: integer;
begin
     TreeView1.Selected.Text := Edit1.Text;
     PMyRec(TReeView1.Selected.Data)^.FName := Memo1.Text;
     PMyRec(TReeView1.Selected.Data)^.FChartTag := cbCharttag.Text;
     PMyRec(TReeView1.Selected.Data)^.LName := Edit2.Text; //Code
     PMyRec(TReeView1.Selected.Data)^.FPrice := edtPrice.IntValue;
     PMyRec(TReeView1.Selected.Data)^.FGroupcode := edtGroupcode.text;
     PMyRec(TReeView1.Selected.Data)^.FGroupName := edtGroupName.text;

     PMyRec(TReeView1.Selected.Data)^.FisGroup := cbisGroup.checked;

     PMyRec(TReeView1.Selected.Data)^.FFontName := '';
     PMyRec(TReeView1.Selected.Data)^.FFontSize := '';
     PMyRec(TReeView1.Selected.Data)^.FFontColor := ColorTostring(cbFontColor.SelectedColor);
     PMyRec(TReeView1.Selected.Data)^.FFontBackColor := colorTostring(cbBackColor.SelectedColor);
     PMyRec(TReeView1.Selected.Data)^.FFontStyle := '';

     if TreeView1.Selected.HasChildren then
          for i := 0 to TreeView1.Selected.Count - 1 do
          begin
               PMyRec(TReeView1.Selected.Item[i].Data)^.FFontColor := ColorTostring(cbFontColor.SelectedColor);

          end;

     btnApply.Enabled := False;
     TreeEdit_f.Repaint;
end;

procedure TTreeEdit_f.Edit1Change(Sender: TObject);
begin
     btnApply.Enabled := True;
end;

procedure TTreeEdit_f.BitBtn10Click(Sender: TObject);
begin
//     Edit1.Text := TreeView1.Selected.Text;
//     Memo1.Text := PMyRec(TReeView1.Selected.Data)^.FName;
//     cbCharttag.Text := PMyRec(TReeView1.Selected.Data)^.FChartTag;
//     Edit2.Text := PMyRec(TReeView1.Selected.Data)^.LName;
//     edtPrice.IntValue := PMyRec(TReeView1.Selected.Data)^.FPrice;
//     edtGroupCode.text := PMyRec(TReeView1.Selected.Data)^.FGroupcode;
//     edtGroupName.text := PMyRec(TReeView1.Selected.Data)^.FGroupName;
//
//     cbisGroup.checked:= PMyRec(TReeView1.Selected.Data)^.FisGroup ;
//
//
//     //            PMyRec(TReeView2.Selected.Data)^.FFontName:='';
//     //            PMyRec(TReeView2.Selected.Data)^.FFontSize:='';
//     cbFontColor.SelectedColor := stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontColor);
//     cbBackColor.SelectedColor := stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontBackColor);
//     //            PMyRec(TReeView2.Selected.Data)^.FFontStyle:='';
//
//     btnApply.Enabled := False;

    // fieldSet;
     fieldclear;

end;

procedure TTreeEdit_f.fieldSet;
begin
     Edit1.Text := TreeView1.Selected.Text;
     Memo1.Text := PMyRec(TReeView1.Selected.Data)^.FName;
     cbCharttag.Text := PMyRec(TReeView1.Selected.Data)^.FChartTag;
     Edit2.Text := PMyRec(TReeView1.Selected.Data)^.LName;
     edtPrice.IntValue := PMyRec(TReeView1.Selected.Data)^.FPrice;
     edtGroupCode.text := PMyRec(TReeView1.Selected.Data)^.FGroupcode;
     edtGroupName.text := PMyRec(TReeView1.Selected.Data)^.FGroupName;

     cbisGroup.checked:= PMyRec(TReeView1.Selected.Data)^.FisGroup ;


     //            PMyRec(TReeView2.Selected.Data)^.FFontName:='';
     //            PMyRec(TReeView2.Selected.Data)^.FFontSize:='';
     cbFontColor.SelectedColor := stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontColor);
     cbBackColor.SelectedColor := stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontBackColor);
     //            PMyRec(TReeView2.Selected.Data)^.FFontStyle:='';

     btnApply.Enabled := False;


//     Edit1.Text := '';//TreeView1.Selected.Text;
//     Memo1.Text := '';//PMyRec(TReeView1.Selected.Data)^.FName;
//     cbCharttag.Text := '';//PMyRec(TReeView1.Selected.Data)^.FChartTag;
//     Edit2.Text := '';//PMyRec(TReeView1.Selected.Data)^.LName;
//     edtPrice.IntValue := 0;//PMyRec(TReeView1.Selected.Data)^.FPrice;
//     edtGroupCode.text := '';//PMyRec(TReeView1.Selected.Data)^.FGroupcode;
//     edtGroupName.text := '';//PMyRec(TReeView1.Selected.Data)^.FGroupName;
//
//     cbisGroup.checked:= false;//PMyRec(TReeView1.Selected.Data)^.FisGroup ;
//
//
//     //            PMyRec(TReeView2.Selected.Data)^.FFontName:='';
//     //            PMyRec(TReeView2.Selected.Data)^.FFontSize:='';
//     cbFontColor.SelectedColor := clBlack;// stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontColor);
//     cbBackColor.SelectedColor := clBlack;//stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontBackColor);
//     //            PMyRec(TReeView2.Selected.Data)^.FFontStyle:='';

     btnApply.Enabled := False;

end;
procedure TTreeEdit_f.fieldClear;
begin
//     Edit1.Text := TreeView1.Selected.Text;
//     Memo1.Text := PMyRec(TReeView1.Selected.Data)^.FName;
//     cbCharttag.Text := PMyRec(TReeView1.Selected.Data)^.FChartTag;
//     Edit2.Text := PMyRec(TReeView1.Selected.Data)^.LName;
//     edtPrice.IntValue := PMyRec(TReeView1.Selected.Data)^.FPrice;
//     edtGroupCode.text := PMyRec(TReeView1.Selected.Data)^.FGroupcode;
//     edtGroupName.text := PMyRec(TReeView1.Selected.Data)^.FGroupName;
//
//     cbisGroup.checked:= PMyRec(TReeView1.Selected.Data)^.FisGroup ;
//
//
//     //            PMyRec(TReeView2.Selected.Data)^.FFontName:='';
//     //            PMyRec(TReeView2.Selected.Data)^.FFontSize:='';
//     cbFontColor.SelectedColor := stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontColor);
//     cbBackColor.SelectedColor := stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontBackColor);
//     //            PMyRec(TReeView2.Selected.Data)^.FFontStyle:='';
//
//     btnApply.Enabled := False;


     Edit1.Text := '';//TreeView1.Selected.Text;
     Memo1.Text := '';//PMyRec(TReeView1.Selected.Data)^.FName;
     cbCharttag.Text := '';//PMyRec(TReeView1.Selected.Data)^.FChartTag;
     Edit2.Text := '';//PMyRec(TReeView1.Selected.Data)^.LName;
     edtPrice.IntValue := 0;//PMyRec(TReeView1.Selected.Data)^.FPrice;
     edtGroupCode.text := '';//PMyRec(TReeView1.Selected.Data)^.FGroupcode;
     edtGroupName.text := '';//PMyRec(TReeView1.Selected.Data)^.FGroupName;

     cbisGroup.checked:= false;//PMyRec(TReeView1.Selected.Data)^.FisGroup ;


     //            PMyRec(TReeView2.Selected.Data)^.FFontName:='';
     //            PMyRec(TReeView2.Selected.Data)^.FFontSize:='';
     cbFontColor.SelectedColor := clBlack;// stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontColor);
     cbBackColor.SelectedColor := clBlack;//stringtocolor(PMyRec(TReeView1.Selected.Data)^.FFontBackColor);
     //            PMyRec(TReeView2.Selected.Data)^.FFontStyle:='';

     btnApply.Enabled := False;

end;

procedure TTreeEdit_f.BitBtn8Click(Sender: TObject);
var
     i, NewCode: Integer;
     sTreePath: string;
begin
     TreeApply;
     dm_f.UniConnection1.StartTransaction;
     screen.cursor := crHourGlass;
     try
          with dm_f.SqlTemp do
          begin
               Close;
               Sql.Clear;
               DM_f.sqlWork.Close;
               DM_f.sqlWork.Sql.Clear;
               DM_f.sqlWork.Sql.Add('select max(txcode) as MaxCode from txNew where groupkind1=:groupkind1');
               DM_f.sqlWork.Open;
               if not DM_f.sqlWork.isEmpty then
                    NewCode :=
                         DM_f.sqlWork.FieldByName('MaxCode').AsInteger
               else
                    NewCode := 0;

               Sql.Add('delete from txNew');
               Sql.Add(' where txkind=:Kind and groupkind1 = :groupkind1');
               Sql.Add(' and id=:id');
               ParamByName('kind').AsString :=
                     ComboBox2.ColumnItems[ComboBox2.itemindex, 0];

               ParamByName('groupkind1').AsString := inttostr( ComboBox3.itemindex) ;

               ParamByName('id').AsString := trim(edtId.text);
               ExecSql;

               for i := 0 to TreeView1.Items.Count - 1 do
               begin

                    //   if ComboBox1.ItemIndex = 4 then
                    //   begin
                    //       sTreePath := TreeView1.Items.Item[i].Text;
                    //   end
                    //   else
                    //   begin
                    case TreeView1.Items.Item[i].level of
                         0: sTreePAth := FormatFloat('000',
                                   Treeview1.Items.Item[i].Index +
                                   1)
                              + '000000000000000000';
                         1: sTreePAth := FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Index + 1)
                              + FormatFloat('000',
                                   Treeview1.Items.Item[i].Index +
                                   1)
                                   + '000000000000000';
                         2: sTreePAth := FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Index +
                                   1)
                              + FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Index +
                                   1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Index +
                                   1)
                                   + '000000000000';
                         3: sTreePAth := FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Parent.Index + 1)
                              + FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Index +
                                   1)
                                   + '000000000';
                         4: sTreePAth := FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Parent.Parent.Index + 1)
                              + FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Index +
                                   1)
                                   + '000000';
                         5: sTreePAth := FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Parent.Parent.Parent.Index + 1)
                              + FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Index +
                                   1)
                                   + '000';
                         6: sTreePAth := FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Parent.Parent.Parent.Parent.Index + 1)
                              + FormatFloat('000',
                                   TreeView1.Items.Item[i].Parent.Parent.Parent.Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Parent.Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Parent.Index + 1)
                                   + FormatFloat('000',
                                   Treeview1.Items.Item[i].Index +
                                   1);
                    end;
                    //  end;
                    Close;
                    Sql.Clear;
                    Sql.Add('insert into txnew');
                    Sql.Add(' (id,txcode,txname,treepath,txcap,txkind, groupkind1, Price, GroupCode, chartTag, GroupName, FontName, FontSize, Fontcolor, BackColor,FontStyle, isGroup) values');
                    Sql.Add('(:id,:code,:name,:treepath,:cap,:kind, :groupkind1,:Price, :GroupCode, :chartTag, :GroupName, :FontName, :FontSize, :Fontcolor, :BackColor, :FontStyle, :isGroup)');
                    ParamByName('id').AsString := trim( edtId.text);
                    ParamByName('kind').AsString :=
                         ComboBox2.ColumnItems[ComboBox2.itemindex, 0];

                    ParamByName('groupkind1').AsString :=  inttostr(ComboBox3.itemindex) ;


                    if PMyRec(TReeView1.Items.Item[i].Data)^.LName
                         = 'Code' then
                    begin
                         NewCode := NewCode + 1;
                         ParamByName('code').AsString :=
                              IntToStr(NewCode);
                    end
                    else
                    begin
                         ParamByName('code').AsString :=
                              PMyRec(TReeView1.Items.Item[i].Data)^.LName;
                    end;

                    ParamByName('chartTag').AsString :=
                              PMyRec(TReeView1.Items.Item[i].Data)^.FChartTag;

                    ParamByName('cap').AsString :=
                         TreeView1.Items.Item[i].Text;
                    ParamByName('Price').AsString :=
                         inttostr(PMyRec(TReeView1.Items.Item[i].Data)^.FPrice);
                    ParamByName('GroupCode').AsString :=
                         PMyRec(TReeView1.Items.Item[i].Data)^.FGroupCode;
                    ParamByName('GroupName').AsString :=
                         PMyRec(TReeView1.Items.Item[i].Data)^.FGroupName;

                    ParamByName('name').AsString :=
                         PMyRec(TReeView1.Items.Item[i].Data)^.FName;

                    if   PMyRec(TReeView1.Items.Item[i].Data)^.FisGroup = true then
                         ParamByName('isGroup').AsString := '1'
                    else
                         ParamByName('isGroup').AsString := '0';


                    ParamByName('treepath').AsString := sTreePAth;
                    ParamByName('FontName').AsString := '';
                    ParamByName('FontColor').AsString := PMyRec(TReeView1.Items.Item[i].Data)^.FFontColor;
                    ParamByName('FontSize').AsString := '';
                    ParamByName('FontStyle').AsString := '';
                    ParamByName('BackColor').AsString := PMyRec(TReeView1.Items.Item[i].Data)^.FFontBackColor;
                    ExecSQL;

                    //보험그룹코드와 그룹명칭, 가격을 업데이트 한다.
                    Close;
                    Sql.Clear;
                    Sql.Add('update txnew set');
                    Sql.Add(' GroupCode=:GroupCOde, GroupName=:GroupName, price=:price');
                    Sql.Add('where txcap=:txcap and groupkind1=:groupkind1');
                    //                         showmessage(TreeView1.Items.Item[i].Text);
                    ParamByName('groupkind1').AsString :=  inttostr(ComboBox3.itemindex) ;

                    ParamByName('txcap').AsString :=
                         trim(TreeView1.Items.Item[i].Text);
                    ParamByName('Price').AsString :=
                         inttostr(PMyRec(TReeView1.Items.Item[i].Data)^.FPrice);
                    ParamByName('GroupCode').AsString :=
                         PMyRec(TReeView1.Items.Item[i].Data)^.FGroupCode;
                    ParamByName('GroupName').AsString :=
                         PMyRec(TReeView1.Items.Item[i].Data)^.FGroupName;
                    execsql;

               end;
          end;
          dm_f.UniConnection1.Commit;
          screen.cursor := crDefault;
     except
          on E: Exception do
          begin
               dm_f.UniConnection1.Rollback;
               screen.cursor := crDefault;
               ShowMessage(E.Message + ' [저장오류]');
          end;
     end;
     screen.cursor := crDefault;
end;

procedure TTreeEdit_f.ComboBox2Change(Sender: TObject);
     procedure FreeTreeItem(aTree: TTreeView);
     var
          I: Integer;
     begin
          for I := aTree.Items.Count - 1 downto 0 do
          begin
               Dispose(aTree.Items.Item[I].Data);
               aTree.Items.Item[I].Destroy;
          end;
     end;
begin

     FreeTreeItem(TreeView1);
     fieldclear;
     //원래 테이블 들고 오기
     //MakeNode(ComboBox2.Itemindex + 1, TreeView1, ComboBox2.Items.Strings[ComboBox2.ItemIndex]);
    //새로 만든 테이블로 작업하기
     MakeNode2(strtoint(ComboBox2.ColumnItems[ComboBox2.itemindex, 0]), TreeView1,
           ComboBox2.ColumnItems[ComboBox2.itemindex, 1], trim(edtid.text));
end;

procedure TTreeEdit_f.ComboBox3Change(Sender: TObject);
begin
     LoadgroupKind( inttostr(combobox3.ItemIndex));
end;

procedure TTreeEdit_f.Makenode2(Flag: Integer; fTree: TTreeView; fTName: string;
     fId: string);
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
          //  Sql.Add('select * from groupkind where groupkind1=:GroupKind1 and groupkind2 > 0 order by groupkind1,groupkind2,groupkind3,sortkey');
          //  ParamByName('GroupKind1').AsString := IntToStr(Flag);

    //          Sql.Add('select * from txdefine where txkind=:kind order by treepath');

          Sql.Add('select * from txNew where txkind=:kind and groupkind1=:groupkind1 and id=:id order by treepath');

          ParamByName('Kind').AsString := IntToStr(Flag);

          ParamByName('groupkind1').AsString :=  inttostr(ComboBox3.itemindex) ;

          ParamByName('id').AsString := fId;
          Open;
          First;
          while not eof do
          begin
               New(MyRecPtr);

               MyRecPtr^.FName := FieldByName('txname').AsString;
               MyRecPtr^.FChartTag := FieldByName('chartTag').AsString;
               MyRecPtr^.LName := FieldByName('txcode').AsString;
               MyRecPtr^.FPrice := strtoint(FieldByName('Price').AsString);
               MyRecPtr^.FGroupCode := FieldByName('GroupCode').AsString;
               MyRecPtr^.FGroupName := FieldByName('GroupName').AsString;

               MyRecPtr^.FFontName := FieldByName('FontName').AsString;


               if FieldByName('isGroup').AsString = '1' then
                    MyRecPtr^.FisGroup :=  true
               else
                    MyRecPtr^.FisGroup :=  false;



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

               if Copy(FieldByName('treepath').AsString, 4, 18) =
                    '000000000000000000' then
               begin
                    TreeTemp1 := fTree.Items.AddChildObject(nil,
                         FieldByName('txcap').AsString, MyRecPtr);
               end
               else
                    if Copy(FieldByName('treepath').AsString, 7, 15) =
                         '000000000000000' then
                    begin
                         TreeTemp2 := fTree.Items.AddChildObject(TreeTemp1,
                              FieldByName('txcap').AsString, MyRecPtr);
                    end
                    else
                         if Copy(FieldByName('treepath').AsString, 10, 12) =
                              '000000000000' then
                         begin
                              TreeTemp3 := fTree.Items.AddChildObject(TreeTemp2,
                                   FieldByName('txcap').AsString, MyRecPtr);
                         end
                         else
                              if Copy(FieldByName('treepath').AsString, 13, 9) =
                                   '000000000' then
                              begin
                                   TreeTemp4 := fTree.Items.AddChildObject(TreeTemp3,
                                        FieldByName('txcap').AsString, MyRecPtr);
                              end
                              else
                                   if Copy(FieldByName('treepath').AsString, 16, 6) =
                                        '000000' then
                                   begin
                                        TreeTemp5 := fTree.Items.AddChildObject(TreeTemp4,
                                             FieldByName('txcap').AsString, MyRecPtr);
                                   end
                                   else
                                        if Copy(FieldByName('treepath').AsString, 19, 3) =
                                             '000' then
                                        begin
                                             TreeTemp6 := fTree.Items.AddChildObject(TreeTemp5,
                                                  FieldByName('txcap').AsString, MyRecPtr);
                                        end
                                        else //아이템
                                        begin
                                             fTree.Items.AddChildObject(TreeTemp6,
                                                  FieldByName('txcap').AsString, MyRecPtr);
                                        end;
               Next;
          end;
     end;
end;

procedure TTreeEdit_f.Makenode(Flag: Integer; fTree: TTreeView; fTName: string);
var
     TNode1, TNode2, Tnode3: TTreeNode;
     MyRecPtr: PMyRec;
begin
     New(MyRecPtr);
     MyRecPtr^.FName := fTName;
     MyRecPtr^.LName := 'Group';

     TNode1 := fTree.Items.AddChildObject(nil, fTName, MyRecPtr);
     AddCode(fTree, Tnode1, Flag, 0, 0);

     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from groupkind where groupkind1=:GroupKind1 and groupkind2 > 0 order by groupkind1,groupkind2,groupkind3,sortkey');
          ParamByName('GroupKind1').AsString := IntToStr(Flag);
          Open;
          First;
          while not eof do
          begin
               if FieldByName('groupkind3').AsInteger = 0 then
               begin
                    New(MyRecPtr);
                    MyRecPtr^.FName := FieldByName('KindName').AsString;
                    MyRecPtr^.LName := 'Group';
                    TNode2 := fTree.Items.AddChildObject(TNode1,
                         FieldByName('KindName').AsString, MyRecPtr);
                    AddCode(fTree, Tnode2, Flag,
                         FieldByname('groupkind2').Asinteger, 0);
               end
               else
               begin
                    New(MyRecPtr);
                    MyRecPtr^.FName := FieldByName('KindName').AsString;
                    MyRecPtr^.LName := 'Group';
                    TNode3 := fTree.Items.AddChildObject(TNode2,
                         FieldByName('KindName').AsString, MyRecPtr);
                    AddCode(fTree, Tnode3, Flag,
                         FieldByname('groupkind2').Asinteger,
                         FieldByname('groupkind3').Asinteger);
               end;
               Next;
          end;
     end;
end;

procedure TTreeEdit_f.AddCode(cTree: TTreeView; pNode: TTreeNode; kind1:
     Integer; kind2: Integer; kind3: Integer);
var
     MyRecPtr: PMyRec;
begin
     with DM_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from groupcodec where groupkind=:Groupkind1 and kind2=:Groupkind2 and kind3=:Groupkind3 order by sortkey');
          ParamByName('Groupkind1').AsInteger := kind1;
          ParamByName('Groupkind2').AsInteger := kind2;
          ParamByName('Groupkind3').AsInteger := kind3;
          Open;
          First;
          if RecordCount > 0 then
          begin
               while not eof do
               begin
                    New(MyRecPtr);
                    MyRecPtr^.FName :=
                         FieldByName('groupname').AsString;
                    MyRecPtr^.LName := FieldByName('code').AsString;

                    //hNode := cTree.Items.AddChild(pNode, FieldByName('capital').AsString);
                    cTree.Items.AddChildObject(pNode,
                         FieldByName('capital').AsString, MyRecPtr);

                    next;
               end;
          end;
     end;
end;

procedure TTreeEdit_f.BitBtn11Click(Sender: TObject);
begin
     TreeView1.FullCollapse;
end;

procedure TTreeEdit_f.BitBtn12Click(Sender: TObject);
begin
     TreeView1.FullExpand;
end;

procedure TTreeEdit_f.BitBtn13Click(Sender: TObject);
begin
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from txdefine where txcode=:txCode');
          ParamByName('txCode').AsString := Edit2.text;
          Open;
          First;
          if RecordCount > 0 then
          begin
               Showmessage(FieldByName('treepath').AsString);
          end;
     end;
end;

procedure TTreeEdit_f.TreeView1MouseDown(Sender: TObject;
     Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
     MyHitTest: THitTests;
begin
     MyHitTest := TreeView1.GetHitTestInfoAt(X, Y);
     if (Button = mbRight) then
     begin
          n1.Enabled := False;
          n2.Enabled := False;
          Option1.Enabled := True;
          n3.Enabled := True;
          PopupMenu1.Popup(self.Left + X, self.Top + Y);
     end;
end;

procedure TTreeEdit_f.Button1Click(Sender: TObject);
begin
     //     makeinput_f := Tmakeinput_f.Create(Application);
     //     Makeinput_f.Show;
end;

procedure TTreeEdit_f.FormShow(Sender: TObject);
begin
     nodeIndex := 0;

//     with dm_f.SqlTemp do
//     begin
//          Close;
//          Sql.Clear;
//          Sql.Add('select ID from txNew where groupkind1=:groupkind1');
//          Sql.Add(' Group by ID');
//          Sql.Add(' order by ID');
//
//          ParamByName('groupkind1').AsString :=  inttostr(ComboBox3.itemindex) ;
//
//          Open;
//          First;
//          edtid.clear;
//          if RecordCount > 0 then
//          begin
//               while not eof do
//               begin
//                    edtid.Items.Add(FieldByName('ID').AsString);
//                    edtid2.Items.Add(FieldByName('ID').AsString);
//                    Next;
//               end;
//          end;
//
//          Close;
//          Sql.Clear;
//          Sql.Add(' select * from Txkind ');
//          sql.Add(' where groupkind1 = :groupkind1 ');//groupkind2=0 and groupkind3=0 ');
//          sql.Add(' order by   sortKey '); //2011.12.21
//          paramByName('groupkind1').AsString := inttoStr( comboBox3.ItemIndex);
//
//          Open;
//          First;
//          if RecordCount > 0 then
//          begin
//
//               combobox1.Columns.Clear;
//               combobox1.ComboItems.Clear;
//
//               combobox2.Columns.Clear;
//               combobox2.ComboItems.Clear;
//
//
//
//
//
//
//
//
//               while not eof do
//               begin
//
//
//
//                    with combobox1 do
//                    begin
//                         with Columns.Add do
//                         begin
//                              Width := 0;
//                              Font.Color := clBlue;
//                              Font.Style := [fsBold];
//                         end;
//                         with Columns.Add do
//                         begin
//                              Width := 100;
//                         end;
//
//                         with ComboItems.Add do
//                         begin
//                              Strings.Add(FieldByName('groupkind3').AsString);
//                              Strings.Add(FieldByName('kindname').AsString);
//                           end;
//                    end;
//
//                    with combobox2 do
//                    begin
//                         with Columns.Add do
//                         begin
//                              Width := 0;
//                              Font.Color := clBlue;
//                              Font.Style := [fsBold];
//                         end;
//                         with Columns.Add do
//                         begin
//                              Width := 100;
//                         end;
//
//                         with ComboItems.Add do
//                         begin
//                              Strings.Add(FieldByName('groupkind3').AsString);
//                              Strings.Add(FieldByName('kindname').AsString);
//                           end;
//                    end;
//
//
//
//
//                    Next;
//               end;
//          end;
//
//     end;
//     edtid.itemindex := 0;
//     edtid2.itemindex := 0;
//
//     combobox1.ItemIndex := 0;
//     combobox2.itemindex := 0;
//
//
//
//     if formwhere = 'tx' then
//     begin
//          combobox2.itemindex := ComboBox2.ComboItems.IndexOf('상담').y ;
//          MakeNode2(strtoint(ComboBox2.ColumnItems[ComboBox2.itemindex, 0]), TreeView1,
//                ComboBox2.ColumnItems[ComboBox2.itemindex, 1],trim( edtid.text));
//     end
//     else
//     begin
//          combobox2.itemindex := 0;
//          MakeNode2(strtoint(ComboBox1.ColumnItems[ComboBox1.itemindex, 0]),  TreeView2,
//               ComboBox1.ColumnItems[ComboBox1.itemindex, 1], trim(edtid2.text));
//
//          MakeNode2(strtoint(ComboBox2.ColumnItems[ComboBox2.itemindex, 0]), TreeView1,
//              ComboBox2.ColumnItems[ComboBox2.itemindex, 1], trim(edtid.text));
//
//     end;


     LoadgroupKind( inttostr(combobox3.itemindex));

     loadChartTag;

     treeview1.Align := alClient;
     treeview2.Align := alClient;
     panel1.Align := alClient;

end;




procedure TTreeEdit_f.LoadgroupKind(groupKind1:string);
begin
     nodeIndex := 0;


     combobox1.Columns.Clear;
     combobox1.ComboItems.Clear;

     combobox2.Columns.Clear;
     combobox2.ComboItems.Clear;

//     combobox3.Clear;

     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select ID from txNew where groupkind1=:groupkind1');
          Sql.Add(' Group by ID');
          Sql.Add(' order by ID');

          ParamByName('groupkind1').AsString := groupKind1;// inttostr(ComboBox3.itemindex) ;

          Open;
          First;
          edtid.clear;
          if RecordCount > 0 then
          begin
               while not eof do
               begin
                    edtid.Items.Add(FieldByName('ID').AsString);
                    edtid2.Items.Add(FieldByName('ID').AsString);
                    Next;
               end;
          end;

          Close;
          Sql.Clear;
          Sql.Add(' select * from Txkind ');
          sql.Add(' where groupkind1 = :groupkind1 ');//groupkind2=0 and groupkind3=0 ');
          sql.Add(' order by   sortKey '); //2011.12.21
          paramByName('groupkind1').AsString := groupKind1;// inttoStr( comboBox3.ItemIndex);

          Open;
          First;
          if RecordCount > 0 then
          begin


               while not eof do
               begin

                    with combobox1 do
                    begin
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                         end;
                         with Columns.Add do
                         begin
                              Width := 100;
                         end;

                         with ComboItems.Add do
                         begin
                              Strings.Add(FieldByName('groupkind3').AsString);
                              Strings.Add(FieldByName('kindname').AsString);
                           end;
                    end;

                    with combobox2 do
                    begin
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                         end;
                         with Columns.Add do
                         begin
                              Width := 100;
                         end;

                         with ComboItems.Add do
                         begin
                              Strings.Add(FieldByName('groupkind3').AsString);
                              Strings.Add(FieldByName('kindname').AsString);
                           end;
                    end;




                    Next;
               end;
          end;

     end;
     edtid.itemindex := 0;
     edtid2.itemindex := 0;

     combobox1.ItemIndex := 0;
     combobox2.itemindex := 0;



     if formwhere = 'tx' then
     begin
          combobox2.itemindex := ComboBox2.ComboItems.IndexOf('상담').y ;
          MakeNode2(strtoint(ComboBox2.ColumnItems[ComboBox2.itemindex, 0]), TreeView1,
                ComboBox2.ColumnItems[ComboBox2.itemindex, 1],trim( edtid.text));
     end
     else
     begin


          combobox2.itemindex := 0;

          FreeTreeItem(TreeView1);
          FreeTreeItem(TreeView2);
          MakeNode2(strtoint(ComboBox1.ColumnItems[ComboBox1.itemindex, 0]),  TreeView2,
               ComboBox1.ColumnItems[ComboBox1.itemindex, 1], trim(edtid2.text));

          MakeNode2(strtoint(ComboBox2.ColumnItems[ComboBox2.itemindex, 0]), TreeView1,
              ComboBox2.ColumnItems[ComboBox2.itemindex, 1], trim(edtid.text));

     end;



end;


procedure TTreeEdit_f.edtIdChange(Sender: TObject);
     procedure FreeTreeItem(aTree: TTreeView);
     var
          I: Integer;
     begin
          for I := aTree.Items.Count - 1 downto 0 do
          begin
               Dispose(aTree.Items.Item[I].Data);
               aTree.Items.Item[I].Destroy;
          end;
     end;
begin
     FreeTreeItem(TreeView1);
     //원래 테이블 들고 오기
     //MakeNode(ComboBox2.Itemindex + 1, TreeView1, ComboBox2.Items.Strings[ComboBox2.ItemIndex]);
    //새로 만든 테이블로 작업하기
     MakeNode2(strtoint(ComboBox2.ColumnItems[ComboBox2.itemindex, 0]), TreeView1,
         ComboBox2.ColumnItems[ComboBox2.itemindex, 1], trim(edtid.text));
end;

procedure TTreeEdit_f.ComboBox1Change(Sender: TObject);
     procedure FreeTreeItem(aTree: TTreeView);
     var
          I: Integer;
     begin
          for I := aTree.Items.Count - 1 downto 0 do
          begin
               Dispose(aTree.Items.Item[I].Data);
               aTree.Items.Item[I].Destroy;
          end;
     end;
begin
     FreeTreeItem(TreeView2);
     //원래 테이블 들고 오기
     //MakeNode(ComboBox2.Itemindex + 1, TreeView1, ComboBox2.Items.Strings[ComboBox2.ItemIndex]);
    //새로 만든 테이블로 작업하기


     if checkbox1.Checked = false then
     begin
             MakeNode2(strtoint( ComboBox1.ColumnItems[ComboBox1.itemindex, 0]), TreeView2,
                  ComboBox1.ColumnItems[ComboBox1.itemindex, 1], trim(edtid2.text));
     end
     else
     begin

             Makenode_mdb( strtoint(ComboBox1.ColumnItems[ComboBox1.itemindex, 0]), TreeView2,
                   ComboBox1.ColumnItems[ComboBox1.itemindex, 1], trim(edtid2.text));
     end;

end;

procedure TTreeEdit_f.edtid2Change(Sender: TObject);
     procedure FreeTreeItem(aTree: TTreeView);
     var
          I: Integer;
     begin
          for I := aTree.Items.Count - 1 downto 0 do
          begin
               Dispose(aTree.Items.Item[I].Data);
               aTree.Items.Item[I].Destroy;
          end;
     end;
begin
     {     FreeTreeItem(TreeView2);
          //원래 테이블 들고 오기
          //MakeNode(ComboBox2.Itemindex + 1, TreeView1, ComboBox2.Items.Strings[ComboBox2.ItemIndex]);
         //새로 만든 테이블로 작업하기
          MakeNode2(ComboBox4.Itemindex, TreeView2,
                 ComboBox4.Items.Strings[ComboBox4.ItemIndex], edtid2.text);
   }
end;

procedure TTreeEdit_f.BitBtn16Click(Sender: TObject);
begin

     if checkBox1.Checked = false then
     begin
            LoadTxKind(0);
           TreeLoad(treeview2, combobox1);
     end
     else
     begin
           LoadTxKind(1);
           Makenode_mdb( strtoint(ComboBox1.ColumnItems[ComboBox1.itemindex, 0]), TreeView2,
                 ComboBox1.ColumnItems[ComboBox1.itemindex, 1], trim(edtid2.text));
     end;
end;

function TTreeEdit_f.getNodeIndex1(Text: string): integer;
var
     i: integer;
begin
     result := -1;
     for i := 0 to TreeView2.items.Count - 1 do
     begin
          if TreeView2.Items.Item[i].Text = Text then
          begin
               result := i;
               Exit;
          end;
     end;
end;

procedure TTreeEdit_f.testadd;
var
     strTmp, kkk: string;
     i, j: integer;
     TN: TTreeNode;
begin
     i := intTmp;
     strTmp := Copy(Edit3.Text, 1, Length(Edit3.Text) - intTmp);
     if getNodeindex1(strTmp) = -1 then
     begin
          if length(strTmp) = 1 then
          begin
               TreeView1.Items.Add(nil, strTmp);
               exit;
          end
          else
          begin
               inc(intTmp);
               testadd;
          end;
     end
     else
          exit;
     kkk := Copy(Edit3.Text, 1, Length(Edit3.Text) - i - 1);
     j := getNodeindex1(kkk);
     TN := TreeView1.Items.Item[j];
     if TN = nil then
          exit;
     TreeView1.Items.AddChild(TN, strTmp);
end;

procedure TTreeEdit_f.Button2Click(Sender: TObject);
begin
     //  showmessage(inttostr(getNodeIndex1(TreeView2.Selected.Text)));

     if SaveDialog1.Execute then
          treeview1.SaveToFile(SaveDialog1.FileName);



end;

procedure TTreeEdit_f.BitBtn14Click(Sender: TObject);
begin
//     chartgroup_f := Tchartgroup_f.Create(application);
//     chartgroup_f.Showmodal;

end;

procedure TTreeEdit_f.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          memo1.text := edit1.text;
          memo1.SelStart := Length(memo1.text);
          memo1.SetFocus;

     end;
end;

procedure TTreeEdit_f.TreeView1EndDrag(Sender, Target: TObject; X,
     Y: Integer);
begin
     if GhostNode <> nil then
     begin
          GhostNode.Free;
          GhostNode := nil;
     end;

end;

function TTreeEdit_f.AbsoluteIndexFromNodeText(aTreeView: TTreeView;
     identicalText: string): integer;
var
     i: integer;
     aNode: TTreeNode;
begin
     Result := -1;

     for i := nodeindex to aTreeView.Items.Count - 1 do
     begin
          aNode := aTreeView.Items[i];

          if Pos(uppercase(identicalText), uppercase(aNode.Text)) > 0 then
               //You need your comparer
          begin
               Result := aNode.AbsoluteIndex;
               exit;
          end;
     end; //for
end;

procedure TTreeEdit_f.btnFindClick(Sender: TObject);
var
     aAbsoluteIndex: integer;
begin
     TreeView1.FullExpand;
     aAbsoluteIndex := 0;
     aAbsoluteIndex := AbsoluteIndexFromNodeText(TreeView1,
          trim(edtSearch.Text));
     nodeIndex := aAbsoluteIndex + 1; //nodeIndex + aAbsoluteIndex + 1;

     if aAbsoluteIndex <> -1 then
     begin
          TreeView1.Items[aAbsoluteIndex].Selected := true;
          TreeView1.SetFocus;
     end
     else
     begin
          if Application.MessageBox(pchar('[' +
               trim(edtSearch.Text) +
               ']이(가) 더 이상 없습니다. 처음부터 다시 찾을까요?'),
               '다시 찾기 확인', MB_YESNO) = 6 then
          begin
               nodeIndex := 0;
               TreeView1.FullExpand;
               aAbsoluteIndex := 0;
               aAbsoluteIndex :=
                    AbsoluteIndexFromNodeText(TreeView1,
                    trim(edtSearch.Text));
               nodeIndex := aAbsoluteIndex + 1;
               // nodeIndex + aAbsoluteIndex + 1;

               if aAbsoluteIndex <> -1 then
               begin
                    TreeView1.Items[aAbsoluteIndex].Selected :=
                         true;
                    TreeView1.SetFocus;
               end
               else
               begin

               end;
          end
          else
          begin
               nodeIndex := 0;
          end;
     end;
end;

procedure TTreeEdit_f.cbFontColorSelect(Sender: TObject);
begin
     btnApply.Enabled := True;

end;

procedure TTreeEdit_f.cbBackColorSelect(Sender: TObject);
begin
     btnApply.Enabled := True;

end;

procedure TTreeEdit_f.TreeView1CustomDrawItem(Sender: TCustomTreeView;
     Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
//var
     //  MyRecPtr: PMyRec;
begin
     //  New(MyRecPtr);
     if DragOver = false then
     begin
          with TreeView1.Canvas do
          begin
               font.color := clBlack;
               font.Size := 11;
               brush.color := clwhite;

               if pmyRec(node.Data)^.FFontColor <> '' then
                    Font.Color := stringtocolor(pmyRec(node.Data)^.FFontColor);
               if pmyRec(node.Data)^.FFontBackColor <> '' then
                    Brush.Color := stringtocolor(pmyRec(node.Data)^.FFontBackColor);

          end;
     end;

end;

procedure TTreeEdit_f.FormPaint(Sender: TObject);
begin
     TreeView1.Repaint;
     TreeView2.Repaint;
end;

procedure TTreeEdit_f.Memo1KeyPress(Sender: TObject; var Key: Char);
begin

     if (key = #13) then
     begin
          edtPrice.SetFocus;
     end;

end;

procedure TTreeEdit_f.edtPriceKeyPress(Sender: TObject; var Key: Char);
begin

     if (key = #13) then
     begin
          btnApply.SetFocus;
     end;

end;

procedure TTreeEdit_f.btnImportClick(Sender: TObject);
     procedure FreeTreeItem(aTree: TTreeView);
     var
          I: Integer;
     begin
          for I := aTree.Items.Count - 1 downto 0 do
          begin
               Dispose(aTree.Items.Item[I].Data);
               aTree.Items.Item[I].Destroy;
          end;
     end;

begin
//            if OpenDialog1.Execute then
//            begin
//                 targetMdbFile:=  OpenDialog1.filename;
//            end;
//
//
//
//
//     FreeTreeItem(TreeView2);
//     //원래 테이블 들고 오기
//     //MakeNode(ComboBox2.Itemindex + 1, TreeView1, ComboBox2.Items.Strings[ComboBox2.ItemIndex]);
//    //새로 만든 테이블로 작업하기
//
//     if dm_f.ADOConnection2.Connected = false then
//          dm_f.adoConnection2.ConnectionString :=
//               'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +  targetMdbFile
//               + ';Mode=ReadWrite;Persist Security Info=False';
//
//     Makenode_mdb( strtoint(ComboBox1.ColumnItems[ComboBox1.itemindex, 0]), TreeView2,
//           ComboBox1.ColumnItems[ComboBox1.itemindex, 1], trim(edtid2.text));
//
//


end;

procedure TTreeEdit_f.Makenode_mdb(Flag: Integer; fTree: TTreeView; fTName: string;
     fId: string);
var
     MyRecPtr: PMyRec;
     TreeTemp1, TreeTemp2, TreeTemp3, TreeTemp4, TreeTemp5, TreeTemp6:
     TTreeNode;
begin
//     TreeTemp1 := nil;
//     TreeTemp2 := nil;
//     TreeTemp3 := nil;
//     TreeTemp4 := nil;
//     TreeTemp5 := nil;
//     TreeTemp6 := nil;
//     with dm_f.adoQuery1 do
//     begin
//          Close;
//          Sql.Clear;
//          //  Sql.Add('select * from groupkind where groupkind1=:GroupKind1 and groupkind2 > 0 order by groupkind1,groupkind2,groupkind3,sortkey');
//          //  ParamByName('GroupKind1').AsString := IntToStr(Flag);
//
//    //          Sql.Add('select * from txdefine where txkind=:kind order by treepath');
//
//          Sql.Add('select * from txNew where txkind=:kind and id=:id order by treepath');
//
//          parameters.ParamByName('Kind').Value := IntToStr(Flag);
//          parameters.ParamByName('id').Value := fId;
//          Open;
//          First;
//          while not eof do
//          begin
//               New(MyRecPtr);
//
//               MyRecPtr^.FName := FieldByName('txname').AsString;
//               MyRecPtr^.FChartTag := FieldByName('ChartTag').AsString;
//               MyRecPtr^.LName := FieldByName('txcode').AsString;
//               MyRecPtr^.FPrice := strtoint(FieldByName('Price').AsString);
//               MyRecPtr^.FGroupCode := FieldByName('GroupCode').AsString;
//               MyRecPtr^.FGroupName := FieldByName('GroupName').AsString;
//
//               if FieldByName('isGroup').AsString  ='1' then
//                  MyRecPtr^.FisGroup := true
//               else
//                  MyRecPtr^.FisGroup := false;
//
//               MyRecPtr^.FFontName := FieldByName('FontName').AsString;
//
//               if FieldByName('FontColor').AsString <> '' then
//                    MyRecPtr^.FFontColor := FieldByName('FontColor').AsString
//               else
//                    MyRecPtr^.FFontColor := 'clblack';
//
//               if FieldByName('BackColor').AsString <> '' then
//                    MyRecPtr^.FFontBackColor := FieldByName('BackColor').AsString
//               else
//                    MyRecPtr^.FFontBackColor := 'clWhite';
//
//               MyRecPtr^.FFontSize := FieldByName('FontSize').AsString;
//               MyRecPtr^.FFontStyle := FieldByName('FontStyle').AsString;
//
//               if Copy(FieldByName('treepath').AsString, 4, 18) =
//                    '000000000000000000' then
//               begin
//                    TreeTemp1 := fTree.Items.AddChildObject(nil,
//                         FieldByName('txcap').AsString, MyRecPtr);
//               end
//               else
//                    if Copy(FieldByName('treepath').AsString, 7, 15) =
//                         '000000000000000' then
//                    begin
//                         TreeTemp2 := fTree.Items.AddChildObject(TreeTemp1,
//                              FieldByName('txcap').AsString, MyRecPtr);
//                    end
//                    else
//                         if Copy(FieldByName('treepath').AsString, 10, 12) =
//                              '000000000000' then
//                         begin
//                              TreeTemp3 := fTree.Items.AddChildObject(TreeTemp2,
//                                   FieldByName('txcap').AsString, MyRecPtr);
//                         end
//                         else
//                              if Copy(FieldByName('treepath').AsString, 13, 9) =
//                                   '000000000' then
//                              begin
//                                   TreeTemp4 := fTree.Items.AddChildObject(TreeTemp3,
//                                        FieldByName('txcap').AsString, MyRecPtr);
//                              end
//                              else
//                                   if Copy(FieldByName('treepath').AsString, 16, 6) =
//                                        '000000' then
//                                   begin
//                                        TreeTemp5 := fTree.Items.AddChildObject(TreeTemp4,
//                                             FieldByName('txcap').AsString, MyRecPtr);
//                                   end
//                                   else
//                                        if Copy(FieldByName('treepath').AsString, 19, 3) =
//                                             '000' then
//                                        begin
//                                             TreeTemp6 := fTree.Items.AddChildObject(TreeTemp5,
//                                                  FieldByName('txcap').AsString, MyRecPtr);
//                                        end
//                                        else //아이템
//                                        begin
//                                             fTree.Items.AddChildObject(TreeTemp6,
//                                                  FieldByName('txcap').AsString, MyRecPtr);
//                                        end;
//               Next;
//          end;
//     end;
end;


procedure TTreeEdit_f.loadChartTag;
var
      varCode : string;
begin
          varCode := '103'; //Charttag
          with dm_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('select * from ma_basic');
               Sql.Add(' where Code like :Code and Code <> :code2 and inuse <>''0''     ');
               Sql.Add('order by Code');
               ParamByName('Code').AsString := varCode + '%';
               ParamByName('Code2').AsString := varCode + '000';
               Open;
               First;
               if not isEmpty then
               begin
                    cbCharttag.items.clear;
                    while not eof do
                    begin
                         cbCharttag.items.Add(fieldByName('disp').asString);
                         next;
                    end;
               end;
          end;
end;

procedure TTreeEdit_f.Button4Click(Sender: TObject);
var
        TreeInfo: TMemoryStream;
        TreeStringList: TStringList;

         sourceFile,
          targetFile : string;
begin

      //Export;

//    { 속성을 복사해오지 못한다....
//        TreeStringList := TStringList.Create;
//        TreeInfo := TMemoryStream.Create;
//
//
//        TreeView1.SaveToStream(TreeInfo);
//        //TreeInfo.SaveToFile('c:\test.dat');
//
//        TreeInfo.Position := 0;
//        TreeStringList.LoadFromStream(TreeInfo);
//
//        TreeInfo.Position := 0;
//        TreeView2.LoadFromStream(TreeInfo);
//
//        Memo1.Lines.Assign(TreeStringList);
//        //Memo1.Lines.LoadFromFile('c:\test.dat');
//
//        TreeInfo.Free;
//        TreeStringList.Free;
//      }
//            sourceFile:= extractFilepath(paramstr(0))+'ImportData\chartitem1.mdb';
//              //ToDo: 여기서 내보내기파일을 복사해준다.
//            if JvSelectDirectory1.Execute then     //   sd.Directory
//            begin
//             targetFile:=   JvSelectDirectory1.Directory +'\dentro_Chartitem'
//                 + formatdatetime('YYYYMMDDhhmmss', now)
//                 + '.mdb';
//             copyFile(pchar(sourceFile),
//                 pChar(targetFile),true);
//
//
//            end;
//
//     if dm_f.ADOConnection2.Connected = false then
//          dm_f.adoConnection2.ConnectionString :=
//               'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + targetFile
//               + ';Mode=ReadWrite;Persist Security Info=False';
//
//
//
//           dm_f.sqlWork.Close;
//           dm_f.sqlWork.sql.clear;
//           dm_f.sqlWork.sql.Text:= 'select * from txNew where id= ' + ''''+ trim(edtId.text)  +'''' + ' and ( inUse <> ''0'' or inUse is null) ';
//           dm_f.sqlWork.open;
//           while not dm_f.sqlWork.eof do
//           begin
//               dm_f.adoQuery1.SQL.Text := 'insert into txNew (      ' +#10+
//                 ' id                                                   ' +#10+
//                 ',txcode                                               ' +#10+
//                 ',txname                                               ' +#10+
//                 ',treepath                                             ' +#10+
//                 ',txcap                                                ' +#10+
//                 ',txkind                                               ' +#10+
//                 ',groupName                                            ' +#10+
//                 ',groupCode                                            ' +#10+
//                 ',price                                                ' +#10+
//                 ',FontName                                             ' +#10+
//                 ',FontColor                                            ' +#10+
//                 ',BackColor                                            ' +#10+
//                 ',FontSize                                             ' +#10+
//                 ',FontStyle                                            ' +#10+
//                 ',chartTag) values                                     ' +#10+
//                 '(:id                                                    ' +#10+
//                 ',:txcode                                                ' +#10+
//                 ',:txname                                                ' +#10+
//                 ',:treepath                                              ' +#10+
//                 ',:txcap                                                 ' +#10+
//                 ',:txkind                                                ' +#10+
//                 ',:groupName                                             ' +#10+
//                 ',:groupCode                                             ' +#10+
//                 ',:price                                                 ' +#10+
//                 ',:FontName                                              ' +#10+
//                 ',:FontColor                                             ' +#10+
//                 ',:BackColor                                             ' +#10+
//                 ',:FontSize                                              ' +#10+
//                 ',:FontStyle                                             ' +#10+
//                 ',:chartTag)                                             ';
//                 dm_f.adoQuery1.Parameters.paramByName('id').Value:=   dm_f.sqlWork.fieldByName('id').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('txcode').Value:=   dm_f.sqlWork.fieldByName('txcode').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('txname').Value:=   dm_f.sqlWork.fieldByName('txname').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('treepath').Value:=   dm_f.sqlWork.fieldByName('treepath').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('txcap').Value:=   dm_f.sqlWork.fieldByName('txcap').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('txkind').Value:=   dm_f.sqlWork.fieldByName('txkind').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('groupName').Value:=   dm_f.sqlWork.fieldByName('groupName').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('groupCode').Value:=   dm_f.sqlWork.fieldByName('groupCode').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('price').Value:=   dm_f.sqlWork.fieldByName('price').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('FontName').Value:=   dm_f.sqlWork.fieldByName('FontName').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('FontColor').Value:=   dm_f.sqlWork.fieldByName('FontColor').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('BackColor').Value:=   dm_f.sqlWork.fieldByName('BackColor').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('FontSize').Value:=   dm_f.sqlWork.fieldByName('FontSize').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('FontStyle').Value:=   dm_f.sqlWork.fieldByName('FontStyle').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('chartTag').Value:=   dm_f.sqlWork.fieldByName('chartTag').asString ;
//                 dm_f.adoQuery1.execsql;
//
//                 dm_f.sqlWork.next;
//           end;
//
//
//
//
//           dm_f.sqlWork.Close;
//           dm_f.sqlWork.sql.clear;
//           dm_f.sqlWork.sql.Text:= 'select * from txkind  ';
//           dm_f.sqlWork.open;
//           while not dm_f.sqlWork.eof do
//           begin
//               dm_f.adoQuery1.SQL.Text := 'insert into txKind (      ' +#10+
//                 ' Groupkind1                                         ' +#10+
//                 ',Groupkind2                                         ' +#10+
//                 ',Groupkind3                                         ' +#10+
//                 ',KindName                                            ' +#10+
//                 ',sortKey                                             ' +#10+
//                 ',g_id  ) values                                     ' +#10+
//                 '(:Groupkind1                                        ' +#10+
//                 ',:Groupkind2                                        ' +#10+
//                 ',:Groupkind3                                        ' +#10+
//                 ',:KindName                                          ' +#10+
//                 ',:sortKey                                           ' +#10+
//                 ',:g_id  )                                           ';
//
//                 dm_f.adoQuery1.Parameters.paramByName('Groupkind1').Value:=   dm_f.sqlWork.fieldByName('Groupkind1').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('Groupkind2').Value:=   dm_f.sqlWork.fieldByName('Groupkind2').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('Groupkind3').Value:=   dm_f.sqlWork.fieldByName('Groupkind3').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('KindName').Value:=   dm_f.sqlWork.fieldByName('KindName').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('sortKey').Value:=   dm_f.sqlWork.fieldByName('sortKey').asString ;
//                 dm_f.adoQuery1.Parameters.paramByName('g_id').Value:=   dm_f.sqlWork.fieldByName('g_id').asString ;
//                 dm_f.adoQuery1.execsql;
//
//                 dm_f.sqlWork.next;
//           end;
//
//
//
//     dm_f.ADOConnection2.Connected := false;

end;



procedure TTreeEdit_f.LoadTxKind(varKind:integer);
begin

     case varKind of
     0:
     begin
           with dm_f.SqlTemp do
           begin
                Close;
                Sql.Clear;
                Sql.Add(' select * from Txkind ');
                sql.Add(' where groupkind1 = :groupkind1 ');//groupkind2=0 and groupkind3=0 ');
                sql.Add(' order by   sortKey '); //2011.12.21
                paramByName('groupkind1').AsString := inttoStr( comboBox3.ItemIndex);



//                Close;
//                Sql.Clear;
//                Sql.Add('select * from Txkind ');
//                Sql.Add('where groupkind2=0 and groupkind3=0 ');
//                Sql.Add('order by convert(integer, groupkind1,121)'); //2011.12.21
                Open;
                First;
                if RecordCount > 0 then
                begin

                     combobox1.Columns.Clear;
                     combobox1.ComboItems.Clear;

                     while not eof do
                     begin
                          with combobox1 do
                          begin
                               with Columns.Add do
                               begin
                                    Width := 0;
                                    Font.Color := clBlue;
                                    Font.Style := [fsBold];
                               end;
                               with Columns.Add do
                               begin
                                    Width := 100;
                               end;

                               with ComboItems.Add do
                               begin
                                    Strings.Add(FieldByName('groupkind3').AsString);
                                    Strings.Add(FieldByName('kindname').AsString);
                                 end;
                          end;


                          Next;
                     end;
                end;

           end;
       end;
       1:
       begin
//               if dm_f.ADOConnection2.Connected = false then
//                    dm_f.adoConnection2.ConnectionString :=
//                         'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +  targetMDBFile
//                         + ';Mode=ReadWrite;Persist Security Info=False';
//
//
//
//           with dm_f.ADOQuery1 do
//           begin
//                Close;
//                Sql.Clear;
//                Sql.Add('select * from Txkind order by groupkind1');
//                Open;
//                First;
//                if RecordCount > 0 then
//                begin
//
//                     combobox1.Columns.Clear;
//                     combobox1.ComboItems.Clear;
//
//                     while not eof do
//                     begin
//                          with combobox1 do
//                          begin
//                               with Columns.Add do
//                               begin
//                                    Width := 0;
//                                    Font.Color := clBlue;
//                                    Font.Style := [fsBold];
//                               end;
//                               with Columns.Add do
//                               begin
//                                    Width := 100;
//                               end;
//
//                               with ComboItems.Add do
//                               begin
//                                    Strings.Add(FieldByName('groupkind1').AsString);
//                                    Strings.Add(FieldByName('kindname').AsString);
//                                 end;
//                          end;
//
//
//                          Next;
//                     end;
//                end;
//
//           end;



       end;
   end;

end;
procedure TTreeEdit_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//     dm_f.ADOConnection2.Connected := false;
     Action:=CaFree;

end;

procedure TTreeEdit_f.FormDestroy(Sender: TObject);
begin
       TreeEdit_f:=nil;
end;

procedure TTreeEdit_f.cbisGroupClick(Sender: TObject);
begin
  btnApply.Enabled := True;
end;

end.


Eye Lid Surgery	        NULL	NULL	0	성형
Rhinoplasty Surgery	    NULL	NULL	1	성형
Augmentation	          NULL	NULL	2	성형
Corrective	            NULL	NULL	3	성형
Mammaplasty Surgery
(Breastplasty)	        NULL	NULL	4	성형
Maxilla	                NULL	NULL	5	성형
Face Lift	              NULL	NULL	6	성형
Fatgraft	              NULL	NULL	7	성형
Lipo Suction
