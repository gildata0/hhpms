unit main;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
       Forms,
       Dialogs, ExtCtrls, AdvPanel, Grids, BaseGrid, AdvGrid,
       StdCtrls, Lucombo, AdvCombo, AdvProgressBar, ComCtrls,
       AdvProgr, Menus, Spin, iniFiles,
       AdvOfficePager, AdvOfficePagerStylers,
       tmsAdvGridExcel, AdvNavBar, AdvGlowButton, AdvShapeButton, AdvEdit,
       EllipsLabel, jpeg, Buttons, OleServer, SMSCALLLib_TLB, AdvTabSet,
       AdvObj, AdvUtil, AdvSplitter;

type
       Tmain_f = class(TForm)
              AdvPanelStyler1: TAdvPanelStyler;
              AdvGridExcelIO1: TAdvGridExcelIO;
              SaveDialog1: TSaveDialog;
              PopupMenu1: TPopupMenu;
              N271: TMenuItem;
              N281: TMenuItem;
              MainMenu1: TMainMenu;
              File1: TMenuItem;
              Help1: TMenuItem;
              Exit1: TMenuItem;
              Setup1: TMenuItem;
              Progress1: TAdvProgress;
              Stat1: TMenuItem;
              Setup2: TMenuItem;
              StartStat1: TMenuItem;
              N1: TMenuItem;
              N2: TMenuItem;
              OD: TOpenDialog;
              AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
              N3: TMenuItem;
              N4: TMenuItem;
              PopupMenu2: TPopupMenu;
              N5: TMenuItem;
              pnlBody: TAdvPanel;
              pnlnaviBar: TAdvPanel;
              AdvNavBar1: TAdvNavBar;
              AdvNavBarPanel1: TAdvNavBarPanel;
              AdvNavBarPanel2: TAdvNavBarPanel;
              AdvNavBarPanel3: TAdvNavBarPanel;
              Button6: TButton;
              Button5: TButton;
              Button4: TButton;
              Button3: TButton;
              edtTel: TEdit;
              btnPrt: TButton;
              Label1: TLabel;
              SpinEdit1: TSpinEdit;
              AdvNavBarPanel4: TAdvNavBarPanel;
              AdvNavBarPanel5: TAdvNavBarPanel;
              lblNum: TLabel;
              Button2: TButton;
              Button7: TButton;
              Button8: TButton;
              Button9: TButton;
              Button10: TButton;
              Image1: TImage;
              lblSMStype: TEllipsLabel;
              EllipsLabel1: TEllipsLabel;
              lblbyte: TEllipsLabel;
              EllipsLabel2: TEllipsLabel;
              lblpoint: TEllipsLabel;
              EllipsLabel4: TEllipsLabel;
              lblRest: TEllipsLabel;
              EllipsLabel3: TEllipsLabel;
              edtSendNo: TAdvEdit;
              edtSendname: TAdvEdit;
              memSms: TMemo;
              btnCharge: TAdvGlowButton;
              AdvGlowButton1: TAdvGlowButton;
              btnNowSend: TAdvGlowButton;
              btnReserveSend: TAdvGlowButton;
              grdMain: TAdvStringGrid;
              grdCopy: TAdvStringGrid;
              pnlSendList: TAdvPanel;
              grdSmsSend: TAdvStringGrid;
              AdvPanel2: TAdvPanel;
              lblStat2: TEllipsLabel;
              btnOneAdd: TAdvShapeButton;
              btnDel: TAdvShapeButton;
              edtname: TAdvEdit;
              edtHpno: TAdvEdit;
              AdvGlowButton4: TAdvGlowButton;
              AdvGlowButton5: TAdvGlowButton;
              pnlSmsimoticon: TAdvPanel;
              pnlSmsMain: TPanel;
              sbSmsItem: TScrollBox;
              sbItem: TScrollBox;
              pnlSubItemName: TPanel;
              lblSubitemName: TLabel;
              lblContentsKind: TLabel;
              btnsp: TSpeedButton;
              pnlSmsButton: TPanel;
              btnAdd: TSpeedButton;
              SMSCALLMSG1: TSMSCALLMSG;
              tcitem: TAdvTabSet;
    AdvSplitter1: TAdvSplitter;
    Panel1: TPanel;
    btnSearchDesease: TButton;
    cbNewDesease: TCheckBox;
    Panel2: TPanel;
    cbNew: TCheckBox;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label17: TLabel;
    edtSangByung: TEdit;
    grdDesease: TAdvStringGrid;
    TabSheet2: TTabSheet;
    Label18: TLabel;
    edtSuga: TEdit;
    grdSuga: TAdvStringGrid;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cmb1: TLUCombo;
    Lcmb1: TLUCombo;
    edt1: TLUEdit;
    cb1: TCheckBox;
    cmb2: TLUCombo;
    Lcmb2: TLUCombo;
    edt2: TLUEdit;
    cb2: TCheckBox;
    cmb3: TLUCombo;
    Lcmb3: TLUCombo;
    edt3: TLUEdit;
    cb3: TCheckBox;
    cmb4: TLUCombo;
    Lcmb4: TLUCombo;
    edt4: TLUEdit;
    cb4: TCheckBox;
    cmb5: TLUCombo;
    Lcmb5: TLUCombo;
    edt5: TLUEdit;
    cb5: TCheckBox;
    cmbGender: TLUCombo;
    cmbTeam: TLUCombo;
    cmb6: TLUCombo;
    Lcmb6: TLUCombo;
    edt6: TLUEdit;
    cb6: TCheckBox;
    LUCombo1: TLUCombo;
    LUCombo2: TLUCombo;
    edt15: TLUEdit;
    CheckBox1: TCheckBox;
    cmb7: TLUCombo;
    Lcmb7: TLUCombo;
    edt7: TLUEdit;
    cb7: TCheckBox;
    cmb8: TLUCombo;
    Lcmb8: TLUCombo;
    edt8: TLUEdit;
    cb8: TCheckBox;
    cmb9: TLUCombo;
    Lcmb9: TLUCombo;
    edt9: TLUEdit;
    cb9: TCheckBox;
    cmb10: TLUCombo;
    Lcmb10: TLUCombo;
    edt10: TLUEdit;
    cb10: TCheckBox;
    cmb11: TLUCombo;
    Lcmb11: TLUCombo;
    edt11: TLUEdit;
    cb11: TCheckBox;
    cmb12: TLUCombo;
    Lcmb12: TLUCombo;
    edt12: TLUEdit;
    cb12: TCheckBox;
    cmb13: TLUCombo;
    Lcmb13: TLUCombo;
    edt13: TLUEdit;
    cb13: TCheckBox;
    cb14: TCheckBox;
    edtChamgo: TEdit;
    LUCombo3: TLUCombo;
    Panel3: TPanel;
    Label20: TLabel;
    dt1: TDateTimePicker;
    dt2: TDateTimePicker;
    cbTerm: TCheckBox;
    AdvSplitter2: TAdvSplitter;
              procedure Button1Click(Sender: TObject);
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure FormDestroy(Sender: TObject);
              procedure FormShow(Sender: TObject);
              procedure grdMainCanSort(Sender: TObject; ACol: Integer;
                     var DoSort: Boolean);
              procedure grdMainClickSort(Sender: TObject; ACol: Integer);
              procedure Button3Click(Sender: TObject);
              procedure btnPrtClick(Sender: TObject);
              procedure N271Click(Sender: TObject);
              procedure FormCreate(Sender: TObject);
              procedure grdMainDblClick(Sender: TObject);
              procedure grdMainRowChanging(Sender: TObject; OldRow, NewRow:
                     Integer;
                     var Allow: Boolean);
              procedure Button4Click(Sender: TObject);
              procedure Exit1Click(Sender: TObject);
              procedure Button5Click(Sender: TObject);
              procedure N5Click(Sender: TObject);
              procedure Button6Click(Sender: TObject);
              procedure N1Click(Sender: TObject);
              procedure grdMainClickCell(Sender: TObject; ARow, ACol: Integer);
              procedure AdvGlowButton5Click(Sender: TObject);
              procedure AdvNavBar1Change(Sender: TObject);
              procedure memSmsChange(Sender: TObject);
              procedure btnNowSendClick(Sender: TObject);
              procedure btnReserveSendClick(Sender: TObject);
              procedure tcitemChanged(Sender: TObject; NewTab: Integer);
              procedure StartStat1Click(Sender: TObject);
    procedure btnSearchDeseaseClick(Sender: TObject);
    procedure grdMainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
       private
              { Private declarations }
              tabchange: boolean;
              varSize: integer;
              x, y, i, j, clickCount: integer;
              HpName, WonjangName, TelNo, Email, BankCode, BankName: string;

              nRet, nRet2, nRem: INTEGER;
              sCust, sCustName, sReqTel1, sReqtel2, sReqtel3: WideString;
              nUnCost: Integer;

              procedure btnAddClick(Sender: TObject);
              procedure ButtonMouseEnter(Sender: TObject);
              procedure ButtonMouseLeave(Sender: TObject);
              procedure ContentSubjectLabelClick(Sender: TObject);
              procedure DisplaySmsDataKind(varContents, vartreepath: string);
              procedure DrawContent(title, content, ContentNo: string);
              procedure DrawItem(code: string);
              procedure FindDrawItem(schCode: string);
              procedure itemButtonClick(Sender: TObject);
              procedure LabelMouseEnter(Sender: TObject);
              procedure LabelMouseLeave(Sender: TObject);
              procedure LoadSmsDataKind(varCaption: string);
              procedure MemoChange(Sender: TObject);
              procedure memoClick(Sender: TObject);
              procedure memSmsDelete(Sender: TObject);
              procedure memSmsUpdate(Sender: TObject);
              procedure smsItemTabCreate;
              procedure SMSLOGIN;
              procedure SmsSet;
              procedure TempLabelClick(Sender: TObject);
              procedure TempLabelMouseEnter(Sender: TObject);
              procedure TempLabelMouseLeave(Sender: TObject);
              procedure ViewRestMoney;

              function makeTelno(varTelno: string): string;
              procedure PrtDmlist;
              procedure MovetoGrdCopy;
              procedure remainDataLoad;
              procedure SendMessage(varSendDate, varSendTime, varSendType:
                     string);
    procedure LoadDeseaseHx;

       public
              { Public declarations }
              smsTag: integer;
              varContentNo, varContentName, varcontentItem: string;
              //컨텐트 번호,  명칭, 내용
              procedure SaveContent(title, content, path: string);
       end;

var
       main_f: Tmain_f;

implementation
uses dm, uFunctions, uLoadValue, PrtDm1, editAdd, changeChart, DetailSearch,
       saveContent, sms_reservsend, Statistics3;
{$R *.dfm}

procedure Tmain_f.LoadSmsDataKind(varCaption: string);
begin
       x := 10; //checkBox의 초기 Left값
       y := 10; //checkBox의 초기 Top값
       i := 0;
       //sbGroup의 내용을 모두 지운다.
       if sbSmsItem.ControlCount > 0 then
       begin
              while sbSmsItem.ControlCount > 0 do
              begin
                     sbSmsItem.Controls[0].Destroy;
              end;
       end;
       application.ProcessMessages;
       try
              with dm_f.SqlWork do
              begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select * from ma_sms_datakind');
                     Sql.Add(' where groupKind2 =:Code ');
                     Sql.Add('and groupkind1=:Kind');
                     Sql.Add('and not(treepath like :Kind2)');
                     Sql.Add('order by groupKind2');
                     Parambyname('Code').value := varCaption;
                     Parambyname('kind').value := '문자';
                     Parambyname('kind2').value := '114' + '000';
                     Open;
                     First;
                     varContentNo := fieldByName('treepath').asString;
                     if not IsEmpty then
                     begin
                            lblSubItemName.Caption := '★' +
                                   fieldByName('groupKind3').asString;

                            while not eof do
                            begin
                                   DisplaySmsDataKind(fieldByName('groupKind3').asString,
                                          fieldByName('treepath').asString);
                                   if x < sbSmsItem.Width - 180 then
                                   begin
                                          x := x + 90; //checkBox의 Left증가값
                                   end
                                   else
                                   begin //줄바꿔서
                                          x := 10; //checkBox의 초기 Left값
                                          y := y + 35; //checkBox의 Top 증가 값

                                   end;
                                   i := i + 1; //이름 명 변경
                                   Next;
                            end;
                     end;

              end;
       except
              on E: Exception do
              begin

                     ShowMessage('[데이터 불러오기 지연]' + E.Message);
              end;

       end;

end;

procedure Tmain_f.DisplaySmsDataKind(varContents: string; vartreepath: string);

var
       tempLabel: TLabel;

       k: integer;
       varDispNumber: string;
begin
       //#$2460
  //     j := 2022;
       k := Hextointeger(inttostr(j));
       varDispNumber := widechar(k); //#$65;

       tempLabel := TLabel.Create(main_f);

       with tempLabel do
       begin
              Parent := sbSmsItem;
              autosize := false;
              wordwrap := true;
              cursor := crHandPoint;
              Left := x;
              Top := y;
              Font.Name := '돋움체';
              hint := varTreePath;
              Font.Size := 9;
              Width := 95;
              Height := 35;
              Color := clWhite;
              Font.Color := clGray;
              Name := 'lbl' + 'smsKind_' + inttostr(i);
              caption := '*' + varContents;
              transparent := true;
              onClick := TempLabelClick;
              onMouseLeave := TempLabelMouseLeave;
              onMouseEnter := TempLabelMouseEnter;
       end;

end;

procedure Tmain_f.smsItemTabCreate;
var
       I: Integer;
begin
       i := 0;
       tabchange := false;
       tcItem.AdvTabs.Clear;
       with dm_f.sqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('select * from ma_sms_datakind');
              //    Sql.Add(' where groupkind2=:Kind');
              Sql.Add(' order by treepath');
              // Parambyname('kind').value := '이모티콘';
              Open;
              First;
              if not isEmpty then
              begin
                     while not eof do
                     begin
                            if Copy(FieldByName('treepath').AsString, 4, 3) =
                                   '000' then
                            begin

                                   with tcitem.AdvTabs do
                                   begin
                                          Add;
                                          items[i].Caption :=
                                                 (FieldByName('GroupKind2').AsString);
                                          //   items[i].TextColor:=clGray;// $00EABC8C;
                                             //   tcItem.Tabs.DelimitedText:= FieldByName('treepath').AsString;
                                   end;
                                   i := i + 1;
                            end;
                            Next;

                     end;
              end;
       end;
       tabchange := true;

end;

procedure Tmain_f.itemButtonClick(Sender: TObject);
begin
       lblContentsKind.Caption := (sender as TAdvGlowbutton).hint;
       LoadSmsDataKind((sender as TAdvGlowbutton).hint);
       if sbsmsItem.ControlCount > 0 then
             DrawItem(sbsmsItem.Controls[0].Hint);

end;

procedure Tmain_f.TempLabelClick(Sender: TObject);
begin
       lblSubItemName.Caption := '★' + (Sender as TLabel).caption;

       DrawItem((Sender as TLabel).Hint);
end;

procedure Tmain_f.TempLabelMouseLeave(Sender: TObject);
begin
       (Sender as TLabel).Font.Color := clGray;
       (Sender as TLabel).Font.Style := [];

end;

procedure Tmain_f.TempLabelMouseEnter(Sender: TObject);
begin
       (Sender as TLabel).Font.Color := clGray;
       (Sender as TLabel).Font.Style := [fsBold, fsUnderline] - [fsBold,
              fsUnderline];

end;

procedure Tmain_f.FindDrawItem(schCode: string);
begin
       x := 20;
       y := 15;
       i := 1;
       j := 1;

       SbItem.Visible := false;
       if SbItem.ControlCount > 0 then
       begin
              while SbItem.ControlCount > 0 do
              begin
                     SbItem.Controls[0].Destroy;
              end;
       end;

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('select * from ma_sms_contents');
              Sql.Add(' where Content like :Code');
              Sql.Add('order by SML_CLASS');
              Parambyname('Code').value := '%' + SchCode + '%';
              Open;
              First;

              if not IsEmpty then
              begin
                     while not eof do
                     begin
                            DrawContent(FieldByName('title').AsString,
                                   Trim(FieldByName('content').AsString),
                                   FieldByName('Class').AsString +
                                   FieldByName('SML_Class').AsString);
                            i := i + 1;
                            if x < SbItem.Width - 300 then
                            begin
                                   x := x + 200;
                            end
                            else
                            begin
                                   x := 20;
                                   y := y + 180;
                            end;

                            Next;

                     end;
              end;
       end;
       SbItem.Visible := true;

end;

procedure Tmain_f.DrawItem(code: string);
begin
       x := 20;
       y := 15;
       i := 1;
       j := 1;
       varContentNo := Copy(Code, 1, 6);

       SbItem.Visible := false;
       if SbItem.ControlCount > 0 then
       begin
              while SbItem.ControlCount > 0 do
              begin
                     SbItem.Controls[0].Destroy;
              end;
       end;

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('select * from ma_sms_contents');
              Sql.Add(' where CLASS=:Code');
              Sql.Add('order by SML_CLASS');
              Parambyname('Code').value := Copy(Code, 1, 6);
              Open;
              First;

              if not IsEmpty then
              begin
                     while not eof do
                     begin
                            DrawContent(FieldByName('title').AsString,
                                   Trim(FieldByName('content').AsString),
                                   FieldByName('Class').AsString +
                                   FieldByName('SML_Class').AsString);
                            i := i + 1;
                            if x < SbItem.Width - 300 then
                            begin
                                   x := x + 200;
                            end
                            else
                            begin
                                   x := 20;
                                   y := y + 180;
                            end;

                            Next;

                     end;
              end;
       end;
       SbItem.Visible := true;

end;

procedure Tmain_f.DrawContent(title, content, ContentNo: string);
var
       tempImg: TImage;
       tempMemo: TMemo;
       tempLabel: TLabel;
       tempByte: TLabel;
       tempContentNo: TLabel;
       tempButton: TLabel;
       tempButton2: TLabel;

begin
       tempButton := TLabel.Create(main_f);
       tempButton2 := TLabel.Create(main_f);
       tempImg := TImage.Create(main_f);
       tempMemo := TMemo.Create(main_f);
       tempLabel := TLabel.Create(main_f);
       tempByte := TLabel.Create(main_f); //문자크기
       tempContentNo := TLabel.Create(main_f); //문자번호

       with tempImg do
       begin
              Parent := SbItem;
              Left := x;
              Top := y + 5;
              Width := 163;
              Height := 157;
              Name := 'H' + 'Img_' + Contentno + '_' + intToStr(i);
              Picture.LoadFromFile(extractFilePath(paramStr(0)) +
                     'Image\sms_frame.BMP');
       end;

       with tempMemo do
       begin
              Parent := SbItem;
              Left := x + 20;
              Top := y + 35;
              Font.Name := '돋움체';
              Font.Size := 9;
              Font.Color := clGray;
              ScrollBars := ssVertical;
              Width := 123;
              Height := 90;
              Color := $00FFF2EA;
              MaxLength := 0;
              Name := 'H' + 'Memo_' + Contentno + '_' + intToStr(i);
              //  BorderStyle := bsNone;
              ctl3d := false;
              OnClick := MemoClick;
              OnChange := MemoChange;
              Text := content;
       end;

       with tempContentNo do
       begin
              Parent := SbItem;
              AutoSize := False;
              Left := x;
              Top := y;
              Width := tempMemo.Width;
              Alignment := taLeftJustify;
              Transparent := True;
              Caption := contentno;
              Visible := False;
       end;
       with tempByte do
       begin
              Parent := SbItem;
              Left := x + 22;
              Top := y + 15;
              Width := 20;
              AutoSize := False;
              Transparent := True;
              Alignment := taRightJustify;
              Font.Color := $00E6B087;
              Font.Size := 9;
              Font.Name := '돋움체';
              Caption := IntToStr(Length(Content)); //+ 'byte';
              Name := 'BYTE' + 'Label_' + Contentno + '_' + intToStr(i);
       end;
       with tempButton do
       begin

              Parent := SbItem;
              Left := x + 20 + 50;
              Top := y + 15;
              AutoSize := False;
              Width := 30;
              Alignment := taCenter;
              Font.Color := $00E6B087;
              Font.Size := 9;
              Font.Name := '돋움체';
              Font.Style := [];
              curSor := crHandpoint;
              Transparent := True;
              Caption := '수정';
              Hint := '이 컨텐츠의 내용을 수정합니다.';
              showhint := True;
              OnMouseEnter := ButtonMouseEnter;
              OnMouseLeave := ButtonMouseLeave;
              onClick := memSmsUpdate;
              Name := 'E' + 'Label_' + Contentno + '_' + intToStr(i);

       end;

       with tempButton2 do
       begin

              Parent := SbItem;
              Left := x + 40 + 55;
              Top := y + 15;
              AutoSize := False;
              Width := 30;
              Alignment := taCenter;
              Font.Color := $00E6B087;
              Font.Size := 9;
              Font.Name := '돋움체';
              Font.Style := [];
              curSor := crHandpoint;
              Transparent := True;
              Caption := '삭제';
              Hint := '이 컨텐츠의 내용을 삭제합니다.';
              showhint := True;
              OnMouseEnter := ButtonMouseEnter;
              OnMouseLeave := ButtonMouseLeave;
              onClick := memSmsDelete;
              Name := 'D' + 'Label_' + Contentno + intToStr(i);

       end;

       with tempLabel do
       begin
              Parent := SbItem;
              Left := x + 20;
              Top := y + 135;
              AutoSize := False;
              Width := tempMemo.Width;
              Alignment := taCenter;
              Font.Color := clGray;
              Font.Size := 9;
              Font.Name := '돋움체';
              Font.Style := [fsBold];
              curSor := crHandpoint;
              Transparent := True;
              Caption := title;
              Hint := caption;
              showhint := True;
              OnMouseEnter := LabelMouseEnter;
              OnMouseLeave := LabelMouseLeave;
              OnClick := ContentSubjectLabelClick;
              Name := 'H' + 'Label_' + Contentno + intToStr(i);
       end;

end;

procedure Tmain_f.MemoChange(Sender: TObject);
var
       varName: string;
begin
       varName := subStr(((Sender as TMemo).Name), 2, '_') + '_' +
              subStr(((Sender
              as TMemo).Name), 3, '_');
       //      'H' + 'Memo_' + Contentno + '_' + intToStr(i);
       varContentItem := (Sender as TMemo).Text;

       (FindComponent('BYTE' + 'Label_' + varName) as TLabel).Caption :=
              IntToStr(Length((Sender as TMemo).text)) + 'byte';

end;

procedure Tmain_f.ButtonMouseEnter(Sender: TObject);
begin
       (Sender as TLabel).Font.Color := $00D99963;
       (Sender as TLabel).Font.Style := [fsUnderline];

end;

procedure Tmain_f.ButtonMouseLeave(Sender: TObject);
begin
       (Sender as TLabel).Font.Color := $00E6B087;
       (Sender as TLabel).Font.Style := [];

end;

procedure Tmain_f.memoClick(Sender: TObject);
var
       RememSms,
              ReMemoHospital,
              ReMemoHospital2,
              ReMemoTel,
              ReMemoBankCode: string;

begin
       varContentNo := SubStr((sender as TMemo).Name, 2, '_');

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;

              Sql.Add('select * from ma_sms_contents');
              Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
              Sql.Add('order by SML_CLASS');
              Parambyname('Class').value := Copy(varContentNo, 1, 6);
              Parambyname('SML_Class').value := Copy(varContentNo, 7, 3);
              Open;
       end;
       varContentName := dm_f.SqlWork.FieldByName('Title').AsString;

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;

              Sql.Add('select * from ma_sms_contents');
              Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
              Sql.Add('order by SML_CLASS');
              Parambyname('Class').value := Copy(varContentNo, 1, 6);
              Parambyname('SML_Class').value := Copy(varContentNo, 7, 3);
              Open;
       end;
       varContentName := dm_f.SqlWork.FieldByName('Title').AsString;
       RememSms := dm_f.SqlWork.FieldByName('Content').AsString;

       ReMemoHospital2 := StringReplace(RememSms, '+aaaa+', HPName,
              [rfReplaceAll, rfIgnoreCase]);
       ReMemoHospital := StringReplace(ReMemoHospital2, '+aaa+', HPName,
              [rfReplaceAll, rfIgnoreCase]);
       ReMemoTel := StringReplace(ReMemoHospital, '+ccc+', TelNo, [rfReplaceAll,
              rfIgnoreCase]);
       ReMemoBankCode := StringReplace(ReMemoTel, '+xxxx+', BankName + ':' +
              BankCode, [rfReplaceAll, rfIgnoreCase]);
       memSms.Text := ReMemoBankCode;
end;

procedure Tmain_f.ContentSubjectLabelClick(Sender: TObject);
var
       RememSms,
              ReMemoHospital,
              ReMemoHospital2,
              ReMemoTel,
              ReMemoBankCode: string;

begin
       varContentNo := SubStr((sender as TLabel).Name, 2, '_');

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;

              Sql.Add('select * from ma_sms_contents');
              Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
              Sql.Add('order by SML_CLASS');
              Parambyname('Class').value := Copy(varContentNo, 1, 6);
              Parambyname('SML_Class').value := Copy(varContentNo, 7, 3);
              Open;
       end;
       varContentName := dm_f.SqlWork.FieldByName('Title').AsString;

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;

              Sql.Add('select * from ma_sms_contents');
              Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
              Sql.Add('order by SML_CLASS');
              Parambyname('Class').value := Copy(varContentNo, 1, 6);
              Parambyname('SML_Class').value := Copy(varContentNo, 7, 3);
              Open;
       end;
       varContentName := dm_f.SqlWork.FieldByName('Title').AsString;
       RememSms := dm_f.SqlWork.FieldByName('Content').AsString;

       ReMemoHospital2 := StringReplace(RememSms, '+aaaa+', HPName,
              [rfReplaceAll, rfIgnoreCase]);
       ReMemoHospital := StringReplace(ReMemoHospital2, '+aaa+', HPName,
              [rfReplaceAll, rfIgnoreCase]);
       ReMemoTel := StringReplace(ReMemoHospital, '+ccc+', TelNo, [rfReplaceAll,
              rfIgnoreCase]);
       ReMemoBankCode := StringReplace(ReMemoTel, '+xxxx+', BankName + ':' +
              BankCode, [rfReplaceAll, rfIgnoreCase]);
       memSms.Text := ReMemoBankCode;
end;

procedure Tmain_f.memSmsUpdate(Sender: TObject);
begin
       varContentNo := SubStr((sender as TLabel).Name, 2, '_');

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;

              Sql.Add('select * from ma_sms_contents');
              Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
              Sql.Add('order by SML_CLASS');
              Parambyname('Class').value := Copy(varContentNo, 1, 6);
              Parambyname('SML_Class').value := Copy(varContentNo, 7, 3);
              Open;
       end;
       varContentName := dm_f.SqlWork.FieldByName('Title').AsString;

       if Application.MessageBox(PChar(varContentName +
              '의 수정된 내용을 저장하시겠습니까?'), '수정 저장', MB_YESNO) =
              IDYES then
       begin
              SaveContent(varContentName, varcontentItem, varContentNo);
       end;

end;

procedure Tmain_f.SaveContent(title, content, path: string);
var
       sTreePath: string;
begin

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('select * from ma_sms_datakind');
              sQL.aDD('where TreePath=:TreePath');
              Parambyname('Treepath').value := '116001'; //사용자정의
              Open;
              Last;
              if IsEmpty then
              begin
                     Close;
                     Sql.Clear;
                     Sql.Add('insert into ma_sms_datakind');
                     Sql.Add('(GroupKind1,GroupKind2,GroupKind3,Treepath) values');
                     Sql.Add('(:GroupKind1,:GroupKind2,:GroupKind3,:Treepath)');
                     Parambyname('GroupKind1').value := '문자';
                     Parambyname('GroupKind2').value := '사용자정의';
                     Parambyname('GroupKind3').value := '사용자정의1';
                     Parambyname('TreePath').value := '116001';
                     ExecSql;
              end;
       end;

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('select * from ma_sms_contents');
              sQL.aDD('where Class=:Class and Sml_Class=:Sml_Class');
              Parambyname('Class').value := Copy(path, 1, 6);
              Parambyname('Sml_Class').value := Copy(path, 7, 3);
              Open;
              Last;
              if not IsEmpty then
              begin
                     Close;
                     Sql.Clear;
                     Sql.Add('Update ma_sms_contents Set');
                     Sql.Add('content=:Content, title=:title');
                     Sql.Add('Where Class=:Class and sml_Class=:Sml_Class');
                     Parambyname('Class').value := Copy(path, 1, 6);
                     Parambyname('Sml_Class').value := Copy(path, 7, 3);
                     Parambyname('title').value := title;
                     Parambyname('content').value := Content;
                     ExecSql;
              end
              else
              begin

                     Close;
                     Sql.Clear;
                     Sql.Add('select * from ma_sms_contents');
                     sQL.aDD('where Class=:Class order by sml_class');

                     if path = '' then
                            Parambyname('Class').value := '116001'
                     else
                            Parambyname('Class').value := Copy(path, 1, 6);

                     Open;
                     Last;
                     if not isEmpty then
                            sTreePath := FormatFloat('000',
                                   StrToInt(FieldByName('Sml_Class').AsString) +
                                   1)
                     else
                            sTreePath := '001';

                     if title = '' then
                     begin
                            showmessage('제목을 입력하세요.');
                            //EdtContName.SetFocus;
                            exit;
                     end;

                     Close;
                     Sql.Clear;
                     Sql.Add('insert into ma_sms_contents');
                     Sql.Add('(Class,Sml_Class,title,content) values');
                     Sql.Add('(:Class,:Sml_Class,:title,:content)');
                     Parambyname('Class').value := Copy(path, 1, 6);
                     Parambyname('Sml_Class').value := sTreepath;
                     Parambyname('title').value := title;
                     Parambyname('content').value := Content;
                     ExecSql;
              end;
       end;

       ShowMessage('저장되었습니다');
       //     memSms.Text := '';
       //     EdtContNo.text := '';
end;

procedure Tmain_f.memSmsDelete(Sender: TObject);
begin
       varContentNo := SubStr((sender as TLabel).Name, 2, '_');

       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;

              Sql.Add('select * from ma_sms_contents');
              Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
              Sql.Add('order by SML_CLASS');
              Parambyname('Class').value := Copy(varContentNo, 1, 6);
              Parambyname('SML_Class').value := Copy(varContentNo, 7, 3);
              Open;
       end;
       varContentName := dm_f.SqlWork.FieldByName('Title').AsString;

       if Application.MessageBox(PChar(varContentName +
              '의 내용을 삭제하시겠습니까?'), '삭제', MB_YESNO) = IDYES then
       begin
              with Dm_f.SqlTemp do
              begin
                     Close;
                     Sql.Clear;
                     Sql.Add('delete from ma_sms_contents');
                     Sql.Add('Where CLass=:Class and SML_CLASS=:SML_CLASS');
                     Parambyname('Class').value := Copy(varContentNo, 1,
                            6);
                     Parambyname('SML_CLASS').value := Copy(varContentNo,
                            7, 3);
                     execSql;
              end;

              DrawItem(varContentNo);
              memSms.text := '';
       end;
end;

procedure Tmain_f.LabelMouseEnter(Sender: TObject);
begin
       (Sender as TLabel).Font.Color := $008DF4CE;
       (Sender as TLabel).Font.Style := [fsBold, fsUnderline];

end;

procedure Tmain_f.LabelMouseLeave(Sender: TObject);
begin
       (Sender as TLabel).Font.Color := $00232323;
       (Sender as TLabel).Font.Style := [fsBold];

end;

procedure Tmain_f.btnAddClick(Sender: TObject);
begin
       if not Assigned(saveContent_f) then
              saveContent_f := TsaveContent_f.Create(application);

       saveContent_f.showmodal;
end;

procedure Tmain_f.SMSLOGIN;
var
       Vtong,
              VGuk,
              VBun,
              VName,
              Vtong2,
              VGuk2,
              VBun2,
              VMem,
              VId,
              VPass: WideString;
begin
       Vtong := '';
       VGuk := '';
       VBun := '';
       VName := '';
       Vtong2 := '';
       VGuk2 := '';
       VBun2 := '';
       VMem := '';
       VPass := '';
       VId := '';

       VPass := dm_f.configvalue.varSmspass;
       VId := dm_f.configvalue.varSmsid;
       nRet2 :=
              main_f.smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName,
              sReqTel1,
              sReqtel2,
              sReqtel3, nRem, nUnCost);
       if nRet2 > 0 then
              viewRestMoney;

end;

procedure Tmain_f.ViewRestMoney;
var
       sYn: widestring;
       VId,
              VPass: WideString;

       nTotalPrice,
              nPerPrice,
              nPermitCount,
              nLeftCount: integer;
begin
       VPass := '';
       VId := '';
       VPass := dm_f.configvalue.varSmspass;
       VId := dm_f.configvalue.varSmsid;

       nRet := main_f.smscallmsg1.CashCheck(Vid, VPass, sCust, '1',
              nTotalPrice,
              nPerPrice,
              sYn, nPermitCount, nLeftCount);

       //     LblRest.Caption :=
       //          '총금액' + FormatFloat('###,###,###,##0', nTotalPrice) +
       //          '건당금액' + FormatFloat('###,###,###,##0', nPerPrice) +
       //     '사용허용건수' + FormatFloat('###,###,###,##0', nPermitCount)+
       //     '사용가능건수' + FormatFloat('###,###,###,##0', nLeftCount)+
       //     '사용가능건수' + FormatFloat('###,###,###,##0', nTotalPrice / nPerPrice);
       if nRet > 0 then
       begin
              if (nTotalPrice <> 0) and (nPerPrice <> 0) then
              begin
                     LblPoint.Caption := FormatFloat('###,###,###,##0',
                            nTotalPrice);
                     LblRest.Caption := FormatFloat('###,###,###,##0',
                            nTotalPrice / nPerPrice);
              end
              else
              begin
                     LblPoint.Caption := '0';
                     LblRest.Caption := '0';
              end;
       end
       else
       begin
       end;
end;





procedure Tmain_f.LoadDeseaseHx;
var
       varNum ,  varRecordCount, r : integer;
begin

       r:=0;
       with dm_f.sqlWork, grdDesease do
       begin

              close;
              sql.Clear;

              Sql.Text :=

              'select s_key1, sang1 from jinryo_o      '+#10+
              'where s_key1 not like ''CH%''  and s_key1 <>''''         '+#10+
              'group by s_key1, sang1                  '+#10+
              'order by s_key1                         ';


              open;


              if not dm_f.sqlWork.isEmpty then
              begin


                     varNum := RecordCount;
                     rowCount := varNum + 1;

                     while not eof do
                     begin

                            r:= r+ 1;
                            cells[0, r] :=
                                   fieldByname('s_key1').asString;
                            cells[1, r] :=
                                   fieldByname('sang1').asString;

                            next;
                     end;
                    // autonumbercol(0);

              end;
       end;

end;


procedure Tmain_f.btnSearchDeseaseClick(Sender: TObject);
var
       varNum ,  varRecordCount, r : integer;
begin
       if cbNewDesease.Checked = true then
       begin
              grdMain.RemoveRows(1, grdMain.RowCount - 1);
              grdmain.RowCount := 2;
              grdmain.FixedRows := 1;

       end
       else
       begin
              if grdmain.Rowcount <= 1 then
              begin
                     grdmain.RowCount := 1;
                     grdmain.FixedRows := 1;
              end;
       end;



       with dm_f.sqlWork, grdmain do
       begin

              if cbNewDesease.Checked = true then
              begin
                  rowCount := 1;
                  r:= 0;
              end
              else
              begin
                  r:= rowCount;
              end;


              Qsort;

              close;
              sql.Clear;

              case pageControl1.ActivePageIndex of


                  0:
                  begin
                    if trim(edtsangByung.Text) <> '' then
                    begin

                        Sql.Text :=
                             ' select * from view_gogek            '+#10+
                             ' where chart in                      '+#10+
                             ' (select chart from jinryo_o         '+#10+
                             ' where sang1 like :sang1)      ';


                        paramByName('sang1').AsString := '%' + edtsangByung.Text + '%';

                    end
                    else
                    begin
                       showmessage('검색어(질병명)를 입력하세요.');
                        edtsangByung.setfocus;
                       exit;
                    end;

                  end;
                  1:
                  begin
                       if trim(edtSuga.Text) <> '' then
                      begin

                          Sql.Text :=
                               ' select * from view_gogek            '+#10+
                               ' where chart in                      '+#10+
                               ' (select chart from jinryo_s        '+#10+
                               ' where su_kor_name like :su_kor_name)      ';
                          paramByName('su_kor_name').AsString := '%' + edtSuga.Text + '%';

                      end
                      else
                      begin
                        showmessage('검색어(수가명)를 입력하세요.');
                        edtSuga.setfocus;
                        exit;
                      end;

                  end;

              end;


              open;


              if not dm_f.sqlWork.isEmpty then
              begin


//                     application.ProcessMessages;

//                     progress1.Min := 0;
//                     progress1.Max := varRecordCount;
//                     progress1.step := varRecordCount;
//                     progress1.Position := 0;

                     varNum := RecordCount + r;
                     rowCount := varNum + 1;

                     while not eof do
                     begin
                           // addRow;
                            r:= r+ 1;

                            AddCheckBox(1, r, true, true);
                            // cells[0, r] := inttostr(varnum);
                            // cells[1, r] := '';
                            cells[2, r] :=
                                   fieldByname('team').asString;
                            cells[3, r] :=
                                   fieldByname('chart').asString;
                            cells[4, r] :=
                                   fieldByname('name').asString;
                            cells[5, r] :=
                                   GenderDisp(fieldByname('jumin').asString);  //성별

                            cells[6, r] :=
                                   naiCalc(fieldByname('jumin').asString); //나이
                            cells[7, r] :=
                                   JuminToBirth(fieldByname('jumin').asString); //생일

                            cells[8, r] :=
                                   fieldByname('h_zip').asString;
                            cells[9, r] :=
                                   fieldByname('h_juso').asString;
                            cells[10, r] :=
                                   fieldByname('c_phone').asString;
                            cells[11, r] :=
                                   fieldByname('h_phone').asString;
                            cells[12, r] :=
                                   fieldByname('refername').asString;
                            cells[13, r] :=
                                   fieldByname('mail').asString;
                            cells[14, r] :=
                                   fieldByname('first_day').asString;
                            cells[15, r] :=
                                   fieldByname('last_day').asString;
                            if cb14.Checked = true then
                                   cells[16, r] :=
                                          fieldByname('remark').asString;


//                            Progress1.Position := Progress1.Position + 1;
//                            application.ProcessMessages;
//                            lblNum.Caption := inttostr(r);
                            next;
                     end;
                     // autosizecolumns(false, 10);
                     autonumbercol(0);

              end;
       end;

end;

procedure Tmain_f.Button1Click(Sender: TObject);
var
       varGroup, varNum, CountNum, varRecordCount: integer;
       varSqlText: string;
         varSqlText_Treat: string;
         varSqlText3: string;
       r: integer;
begin

       varSqlText := '';
       countNum := 0;
       for varGroup := 1 to 14 do
       begin

              if (FindComponent('cb' + inttostr(varGroup)) as TCheckBox).Checked
                     = true then
              begin

                     countNum := countNum + 1;
                     case vargroup of
                            1..3, 7..11:
                                   begin
                                          if varSqltext = '' then
                                          begin
                                                 varSqlText := 'where '
                                                        + (FindComponent('cb' +
                                                        inttostr(varGroup)) as
                                                        TCheckBox).Hint
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' ';
                                                 if (FindComponent('Lcmb' +
                                                        inttostr(varGroup)) as
                                                        TLUCombo).Text = 'LIKE'
                                                               then
                                                        varSqlText :=
                                                               varSqlText
                                                               + '''' + '%' +
                                                               (FindComponent('edt' + inttostr(varGroup)) as TLUEdit).text + '%' + ''''
                                                 else
                                                        varSqlText :=
                                                               varSqlText
                                                               + '''' +
                                                               (FindComponent('edt' + inttostr(varGroup)) as TLUEdit).text + ''''

                                          end
                                          else
                                          begin
                                                 varSqlText := varSqlText
                                                        + ' '
                                                        + (FindComponent('cmb' +
                                                        inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        //논리연산자
                                                 + ' '
                                                        + (FindComponent('cb' +
                                                        inttostr(varGroup)) as
                                                        TCheckBox).Hint
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' ';

                                                 if (FindComponent('Lcmb' +
                                                        inttostr(varGroup)) as
                                                        TLUCombo).Text = 'LIKE'
                                                               then
                                                        varSqlText :=
                                                               varSqlText
                                                               + '''' + '%' +
                                                               (FindComponent('edt' + inttostr(varGroup)) as TLUEdit).text + '%' + ''''
                                                 else
                                                        varSqlText :=
                                                               varSqlText
                                                               + '''' +
                                                               (FindComponent('edt' + inttostr(varGroup)) as TLUEdit).text + ''''
                                          end;
                                   end;
                            4: //성별
                                   begin

                                          if varSqltext = '' then
                                          begin
                                                 varSqlText :=
                                                        'where '
                                                        + 'substring('
                                                        + (FindComponent('cb' +
                                                        inttostr(varGroup)) as
                                                        TCheckBox).Hint
                                                        + ',7,1) % 2'
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' '
                                                        + '''' +
                                                        (FindComponent('edt' +
                                                        inttostr(varGroup)) as
                                                        TLUEdit).text + '''';
                                          end
                                          else
                                          begin
                                                 varSqlText := varSqlText
                                                        + ' '
                                                        + (FindComponent('cmb' +
                                                        inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        //논리연산자
                                                 + ' '
                                                        + 'substring('
                                                        + (FindComponent('cb' +
                                                        inttostr(varGroup)) as
                                                        TCheckBox).Hint
                                                        + ',7,1) % 2'
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' '
                                                        + '''' +
                                                        (FindComponent('edt' +
                                                        inttostr(varGroup)) as
                                                        TLUEdit).text + '''';
                                          end;
                                   end;
                            5: //나이
                                   begin

                                          if varSqltext = '' then
                                          begin
                                                 varSqlText :=
                                                        'where '
                                                        + '(year(getdate()))- (cast(((case when (substring('
                                                        + (FindComponent('cb' +
                                                        inttostr(varGroup)) as
                                                        TCheckBox).Hint
                                                        + ',7,1)=3) or '
                                                        + ' (substring(jumin,7,1)=4) then ''20'' else ''19'' end) +  substring('
                                                        + (FindComponent('cb' +
                                                        inttostr(varGroup)) as
                                                        TCheckBox).Hint
                                                        + ',1,2)) as integer))'
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' '
                                                        + '''' +
                                                        (FindComponent('edt' +
                                                        inttostr(varGroup)) as
                                                        TLUEdit).text + '''';
                                          end
                                          else
                                          begin
                                                 varSqlText := varSqlText
                                                        + ' '
                                                        + (FindComponent('cmb' +
                                                        inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        //논리연산자
                                                 + ' '
                                                        + '(year(getdate()))- (cast(((case when (substring(jumin,7,1)=3) or '
                                                        + ' (substring(jumin,7,1)=4) then ''20'' else ''19'' end) +  substring(jumin,1,2)) as integer))'
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' '
                                                        + '''' +
                                                        (FindComponent('edt' +
                                                        inttostr(varGroup)) as
                                                        TLUEdit).text + '''';
                                          end;
                                   end;
                            6: //생일
                                   begin

                                          if varSqltext = '' then
                                          begin
                                                 varSqlText :=
                                                        'where '
                                                        + ' substring(jumin,3,4)'
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' '
                                                        + '''' +
                                                        (FindComponent('edt' +
                                                        inttostr(varGroup)) as
                                                        TLUEdit).text + '''';
                                          end
                                          else
                                          begin
                                                 varSqlText := varSqlText
                                                        + ' '
                                                        + (FindComponent('cmb' +
                                                        inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        //논리연산자
                                                 + ' '
                                                        + ' substring(jumin,3,4)'
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' '
                                                        + '''' +
                                                        (FindComponent('edt' +
                                                        inttostr(varGroup)) as
                                                        TLUEdit).text + '''';
                                          end;
                                   end;

                            12, 13:
                                   begin
                                          if varSqltext = '' then
                                          begin
                                                 varSqlText := 'where '
                                                        + (FindComponent('cb' +
                                                        inttostr(varGroup)) as
                                                        TCheckBox).Hint
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' '
                                                        + '''' +
                                                        (FindComponent('edt' +
                                                        inttostr(varGroup)) as
                                                        TLUEdit).text + '''';
                                          end
                                          else
                                          begin
                                                 varSqlText := varSqlText
                                                        + ' '
                                                        + (FindComponent('cmb' +
                                                        inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        //논리연산자
                                                 + ' '
                                                        + (FindComponent('cb' +
                                                        inttostr(varGroup)) as
                                                        TCheckBox).Hint
                                                        + ' '
                                                        + (FindComponent('Lcmb'
                                                        + inttostr(varGroup)) as
                                                        TLUCombo).Text
                                                        + ' '
                                                        + '''' +
                                                        (FindComponent('edt' +
                                                        inttostr(varGroup)) as
                                                        TLUEdit).text + '''';
                                          end;
                                   end;

                            14:
                                   begin
                                          if varSqltext = '' then
                                          begin
                                                 varSqlText :=
                                                        'SELECT   * '
                                                        + 'FROM      ma_gogek_remark a INNER JOIN '
                                                        + '  view_gogek b ON b.chart = a.CHART '
                                                        + 'WHERE   a.remark LIKE '
                                                        + '''' + '%' +
                                                        edtChamgo.text + '%' +
                                                        '''';
                                          end
                                          else
                                          begin
                                                 varSqlText := varSqlText
                                                        + ' '
                                                        + 'SELECT   * '
                                                        + 'FROM      ma_gogek_remark  a INNER JOIN '
                                                        + '                view_gogek b ON b.chart = a.CHART '
                                                        + 'WHERE   a.remark LIKE '
                                                        + '''' + '%' +
                                                        edtChamgo.text + '%' +
                                                        '''';
                                          end;
                                   end;

                     end;
              end;
       end;



                   //     paramByName('sang1').AsString := '%' + edtsangByung.Text + '%';

       if CountNum = 0 then
       begin
              if
                     Application.MessageBox(pchar('조건자를 하나 이상 선택하지 않으면 전체를 검색합니다.' + #10#13 +
                     '생각보다 시간이 오래 걸릴 수 있습니다.' + #10#13 +
                     '그래도 진행하시겠습니까?'), '전체 검색 확인', MB_OKCANCEL)
                     = 1 then
              begin
              end
              else
              begin
                     exit;
              end;

       end;
       ///  if varSqlText <> '' then
        //      varSqlText := 'and (' + varSqltext + ')';
       if cbNew.Checked = true then
       begin
              grdMain.RemoveRows(1, grdMain.RowCount - 1);
              grdmain.RowCount := 2;
              grdmain.FixedRows := 1;

       end
       else
       begin
              if grdmain.Rowcount <= 1 then
              begin
                     grdmain.RowCount := 1;
                     grdmain.FixedRows := 1;
              end;
       end;






              case pageControl1.ActivePageIndex of


                  0:
                  begin
                  //  if trim(edtsangByung.Text) <> '' then
                  //  begin

                    varSqlText_Treat:=
                     ' and( chart in                      '+#10+
                     ' (select chart from jinryo_o         '+#10+
                     ' where sang1 like '+ ''''+'%'  +edtsangByung.Text+  '%'+''''  ;

//                    end
//                    else
//                    begin
//                       showmessage('검색어(질병명)를 입력하세요.');
//                        edtsangByung.setfocus;
//                       exit;
//                    end;

                  end;
                  1:
                  begin
//                       if trim(edtSuga.Text) <> '' then
//                      begin
                          varSqlText_Treat:=
                           ' and( chart in                      '+#10+
                           ' (select chart from jinryo_s         '+#10+
                           ' where su_kor_name like '+ ''''+'%'  +edtSuga.Text+  '%'+'''';

//                      end
//                      else
//                      begin
//                        showmessage('검색어(수가명)를 입력하세요.');
//                        edtSuga.setfocus;
//                        exit;
//                      end;

                  end;

              end;

                if cbterm.Checked  then
                begin
                    varSqlText3 :=     ' and jin_day between ' +''''+ formatDateTime('YYYY-MM-DD' , dt1.Date) +''''+
                          ' and '+''''+ formatDateTime('YYYY-MM-DD' , dt2.Date)+''''
                      +' ))' ;

                    varSqlText_Treat :=  varSqlText_Treat + #10+  varSqlText3   ;
                end
                else
                begin
                    varSqlText_Treat :=  varSqlText_Treat +'))'  ;
                end;

       with dm_f.sqlWork, grdmain do
       begin
              rowCount := 1;
              Qsort;
              if cb14.Checked = false then
              begin
                     Sql.Text := 'select count(*) as MaxCount from view_gogek';
                     Sql.Text := Sql.Text + varSqlText + varSqlText_Treat;

                     open;
                     if not dm_f.sqlWork.isEmpty then
                     begin
                            varRecordCount := fieldByname('maxCount').AsInteger;
                     end;
                     close;

                     Sql.Text := 'select * from view_gogek';
                     Sql.Text := Sql.Text + varSqlText +varSqlText_Treat;
              end
              else
              begin
                     Sql.Text := 'SELECT   count(*) as  maxCount '
                            + 'FROM      ma_gogek_remark a INNER JOIN '
                            + '  view_gogek b ON b.chart = a.CHART '
                            + 'WHERE   a.remark LIKE '
                            + '''' + '%' + edtChamgo.text + '%' + '''';

                     open;
                     if not dm_f.sqlWork.isEmpty then
                     begin
                            varRecordCount := fieldByname('maxCount').AsInteger;
                     end;
                     close;
                     Sql.Text := varSqlText + varSqlText_Treat;
              end;



              open;

              if not dm_f.sqlWork.isEmpty then
              begin


//                     application.ProcessMessages;

//                     progress1.Min := 0;
//                     progress1.Max := varRecordCount;
//                     progress1.step := varRecordCount;
//                     progress1.Position := 0;

                     varNum := varRecordCount;
                     rowCount := varRecordCount + 1;
                     r:= 0;
                     while not eof do
                     begin
                           // addRow;
                            r:= r+ 1;

                            AddCheckBox(1, r, true, true);
                            // cells[0, r] := inttostr(varnum);
                            // cells[1, r] := '';
                            cells[2, r] :=
                                   fieldByname('team').asString;
                            cells[3, r] :=
                                   fieldByname('chart').asString;
                            cells[4, r] :=
                                   fieldByname('name').asString;
                            cells[5, r] :=
                                   GenderDisp(fieldByname('jumin').asString);
                            //성별
                            cells[6, r] :=
                                   naiCalc(fieldByname('jumin').asString); //나이
                            cells[7, r] :=
                                   JuminToBirth(fieldByname('jumin').asString);
                            //생일
                            cells[8, r] :=
                                   fieldByname('h_zip').asString;
                            cells[9, r] :=
                                   fieldByname('h_juso').asString;
                            cells[10, r] :=
                                   fieldByname('c_phone').asString;
                            cells[11, r] :=
                                   fieldByname('h_phone').asString;
                            cells[12, r] :=
                                   fieldByname('refername').asString;
                            cells[13, r] :=
                                   fieldByname('mail').asString;
                            cells[14, r] :=
                                   fieldByname('first_day').asString;
                            cells[15, r] :=
                                   fieldByname('last_day').asString;
                            if cb14.Checked = true then
                                   cells[16, r] :=
                                          fieldByname('remark').asString;

                            // varNum := varNum + 1;
                            varNum := varNum - 1;
//                            Progress1.Position := Progress1.Position + 1;
//                            application.ProcessMessages;
//                            lblNum.Caption := inttostr(varNum);
                            next;
                     end;
                     // autosizecolumns(false, 10);
                     autonumbercol(0);

              end;
       end;

end;

procedure Tmain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       action := caFree;
end;

procedure Tmain_f.FormDestroy(Sender: TObject);
begin
       main_f := nil;
end;

procedure Tmain_f.SmsSet;
begin
       sCust := 'OV-JJG-9R';
       //todo : 병원기본정보를 가져온다.
       HpName := dm_f.Configvalue.varsaupname;
       WonjangName := dm_f.Configvalue.varDaepyo;
       TelNo := dm_f.Configvalue.varTel1;
       Email := dm_f.Configvalue.varEmail;
       BankCode := '';
       BankName := '';

       edtSendName.text := HpName; //wonjangname;
       edtSendno.Text := TelNo;

       //pnlSmsImoticon.Align := alclient;
      // sbsmsItem.Align := alclient;
       pnlsmsMain.Align := alclient;
       sbitem.align := alClient;
       pnlSendList.Align := alClient;

       grdmain.ColWidths[7] := 0;
       clickCount := 0;
       lblStat2.Caption := '(0/0)';

       lblSmsType.Caption := 'SMS';
       lblByte.Caption := '0';
       lblPoint.Caption := '0';
       lblRest.Caption := '0';

       pnlsmsButton.caption := '';
       pnlSubitemName.Caption := '';
       pnlsmsMain.caption := '';

       memSms.text := '';

       smsItemTabCreate;
       if tcItem.advTabs.Count > 0 then
       begin
              LoadSmsDataKind('예약');

              lblContentsKind.Caption :=
                     tcItem.advTabs[tcItem.TabIndex].Caption;

              if sbsmsItem.ControlCount > 0 then
                    DrawItem(sbsmsItem.Controls[0].Hint);
       end;

       SMSLOGIN;
       // remainDataLoad;

end;

procedure Tmain_f.FormShow(Sender: TObject);
var
       i: integer;
begin
       caption := 'PRM매니저 ver1.0';

       lblNum.Caption := '0';
       edtChamgo.text := '';
       varsize := 28;
       btnPrt.Caption := 'DM용지 인쇄 2*8';

       for i := 1 to 13 do
       begin
              (FindComponent('Lcmb' + inttostr(i)) as TLUCombo).Items.Clear;
              (FindComponent('Lcmb' + inttostr(i)) as TLUCombo).Items.Add('=');
              (FindComponent('Lcmb' + inttostr(i)) as TLUCombo).Items.Add('>=');
              (FindComponent('Lcmb' + inttostr(i)) as TLUCombo).Items.Add('<=');
              (FindComponent('Lcmb' + inttostr(i)) as TLUCombo).Items.Add('>');
              (FindComponent('Lcmb' + inttostr(i)) as TLUCombo).Items.Add('<');
              (FindComponent('Lcmb' + inttostr(i)) as TLUCombo).Items.Add('<>');
              (FindComponent('Lcmb' + inttostr(i)) as
                     TLUCombo).Items.Add('LIKE');
       end;

       for i := 1 to 13 do
       begin
              (FindComponent('cb' + inttostr(i)) as TCheckBox).Checked := false;
              (FindComponent('edt' + inttostr(i)) as TLUEdit).text := '';
              (FindComponent('cmb' + inttostr(i)) as TLUCombo).ItemIndex := 0;
              (FindComponent('Lcmb' + inttostr(i)) as TLUCombo).ItemIndex := 0;
       end;
       edt1.text := '0';
       edt4.text := '0';
       edt15.text := '';
       //grdMain.RemoveRows(1, 1);

end;

procedure Tmain_f.grdMainCanSort(Sender: TObject; ACol: Integer;
       var DoSort: Boolean);
begin
       grdMain.cursor := crHourGlass;
       if aCol > 1 then
              doSort := true;
end;

procedure Tmain_f.grdMainClickSort(Sender: TObject; ACol: Integer);
begin
       grdmain.cursor := crDefault;

end;

procedure Tmain_f.Button3Click(Sender: TObject);
begin
       if savedialog1.execute then
       begin
              if fileexists(savedialog1.filename) then
                     deletefile(savedialog1.filename);
              advgridexcelio1.XLSExport(savedialog1.filename);
       end;

end;

procedure Tmain_f.btnPrtClick(Sender: TObject);
begin
       MovetoGrdCopy;
       PrtDmlist;
end;

procedure Tmain_f.PrtDmlist;
var
       PrtDm1_f: TPrtDm1_f;
       i, j: integer;
       s: string;
begin

       i := 0;
       j := 0;
       PrtDm1_f := TPrtDm1_f.CreateFrm(Self, grdCopy);
       try
              with PrtDm1_f, QuickRep1 do
              begin

                     case varsize of
                            28:
                                   begin

                                          qrBand1.Height := spinEdit1.Value;
                                          //.Height div 8 ;
                                          lblZip.Top := lblZip.Top - 25;
                                          lblName.Top := lblName.Top - 25;
                                          lblSub.Top := lblSub.Top - 25;

                                          PreviewModal;

                                   end;
                            27:
                                   begin
                                          // qrBand1.Height := quickRep1.Height;
                                         //  lblZip.Top := lblZip.Top;
                                          // lblName.Top := lblName.Top;
                                         //  lblSub.Top := lblSub.Top;
                                          PreviewModal;
                                   end;

                     end;

              end;
       finally
              PrtDm1_f.Free;
       end;

       //Close;
end;

procedure Tmain_f.N271Click(Sender: TObject);
begin
       varSize := (sender as Tmenuitem).Tag;

       case varsize of
              28:
                     begin
                            btnPrt.Caption := 'DM용지 인쇄 2*8';
                     end;
              27:
                     begin
                            btnPrt.Caption := 'DM용지 인쇄 2*7';
                     end;
       end;
end;

procedure Tmain_f.FormCreate(Sender: TObject);
var
       i: integer;
begin
      edtSangByung.Text := '';
      edtSuga.Text := '';

       LoadDeseaseHx;

       {
         dm_f.Loadini;
         if dm_f.ConnectDatabase(dm_f.configvalue.varDbip,
                dm_f.configvalue.varDbname,
                dm_f.configvalue.varDbuser,
                dm_f.configvalue.varDbpass,
                dm_f.configvalue.varDbProtocol) = true then
         begin
              //  dm_f.configvalue.LoadGlobalData_ini;
                dm_f.configvalue.LoadGlobalData_db;
         end;
        }



       with grdmain do
       begin

              // Options := [goRowSizing, goColSizing, goEditing, gorowselect];
               //goAlwaysShowEditor];//, gorowselect];
              ColCount := 17;
              rowcount:= 200;
              columnHeaders.LoadFromFile('personal.txt');
              //  SizeWhileTyping.Height := True;
              multilinecells := true;
              //  MouseActions.DisjunctRowSelect := true;
//              FixedColWidth := 100;
//              ColWidths[0] := 64;
//              ColWidths[1] := 29;
//              ColWidths[2] := 25;
//              ColWidths[3] := 71;
//              ColWidths[4] := 55;
//              ColWidths[5] := 34;
//              ColWidths[6] := 34;
//              ColWidths[7] := 64;
//              ColWidths[8] := 69;
//              ColWidths[9] := 191;
//              ColWidths[10] := 63;
//              ColWidths[11] := 64;
//              ColWidths[12] := 51;
//              ColWidths[13] := 61;
//              ColWidths[14] := 64;
//              ColWidths[15] := 64;
//              ColWidths[16] := 300;

              align := alClient;

       end;
       grdSmsSend.align := alClient;
       pnlBody.align := alClient;
       advnavbar1.ActiveTabIndex := 3;
end;

procedure Tmain_f.MovetoGrdCopy;
var
       i, j, k: integer;
       state: Boolean;
       varRemark: string;
begin
       GrdCopy.RemoveRows(1, GrdCopy.RowCount - 1);
       k := 1;
       with grdMain do
       begin
              for i := 1 to Rowcount - 1 do
              begin
                     if GetCheckBoxState(1, i, state) then
                     begin
                            if state then
                            begin
                                   GrdCopy.addRow;
                                   for j := 0 to grdMain.ColCount - 1 do
                                   begin
                                          //showmessage('i:'+ inttostr(i));
                                          //showmessage('j:'+ inttostr(j));
                                         // showmessage('(' + inttostr(j) + ',' + inttostr(k) + ') =' + varRemark);
                                          varRemark := GrdMain.cells[j, i];
                                          GrdCopy.cells[j, k] := varRemark;

                                   end;
                                   inc(k);
                            end;
                     end;
              end;
       end;
end;

procedure Tmain_f.grdMainDblClick(Sender: TObject);
begin
       if not Assigned(editAdd_f) then
              editAdd_f := TeditAdd_f.Create(application);

       with editAdd_f do
       begin
              lblChart.caption := grdMain.Cells[3, grdMain.Row];
              edtPost1.Text := grdMain.Cells[8, grdMain.Row];
              edtAdd1.Text := grdMain.Cells[9, grdMain.Row];

              edtAdd2.Text := grdMain.Cells[9, grdMain.Row];
              edtPost2.Text := grdMain.Cells[8, grdMain.Row];

              with dm_f.sqlWork do
              begin
                     close;
                     sql.Clear;
                     sql.Add('select * from view_gogek');
                     sql.Add('where chart=:chart');
                     paramByName('chart').asString := lblChart.Caption;
                     open;
                     if not isEmpty then
                     begin

                            edtBadd2.Text :=
                                   Trim(FieldByName('h_juso').AsString);
                            with dm_f.SqlTemp do
                            begin
                                   Close;
                                   Sql.Clear;
                                   Sql.Add('Select * from ma_Post');
                                   Sql.Add('Where zipcode= :ZipCode');
                                   ParamByName('ZipCode').AsString :=
                                          DisplayDash(Dm_f.sqlWork.FieldByName('H_zip').AsString);
                                   Open;
                                   edtBadd1.Text :=
                                          Trim(FieldByName('Sido').AsString) +
                                          ' '
                                          + Trim(FieldByName('GuGun').AsString)
                                          +
                                          ' ' +
                                          Trim(FieldByName('DOng').AsString);
                            end;

                     end;
              end;

              ShowModal;

       end;

end;

procedure Tmain_f.grdMainGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
      if ARow = 0 then
      begin
           HAlign := taCenter;
      end;

end;

procedure Tmain_f.grdMainRowChanging(Sender: TObject; OldRow,
       NewRow: Integer; var Allow: Boolean);
begin
       {   with dm_f.sqlWork do
          begin
               close;
               sql.Clear;
               sql.Add('Update injek set');
               sql.Add('h_juso=:h_Juso, h_zip=:h_zip');
               sql.Add('where chart=:chart');
               paramByName('chart').asString := grdMain.Cells[3, main_f.grdMain.Row];
               paramByName('h_juso').asString := grdMain.Cells[9, main_f.grdMain.Row];
               paramByName('h_zip').asString := deldash(grdMain.Cells[8, main_f.grdMain.Row]);
               execSql;
          end;
        }

end;

procedure Tmain_f.Button4Click(Sender: TObject);
var
       i: integer;
       state: boolean;
begin

       for i := 1 to grdMain.Rowcount do
       begin

              if grdMain.GetCheckBoxState(1, i, state) = true then
              begin
                     if state then
                            grdMain.RemoveRows(i, 1);
              end;
       end;

end;

procedure Tmain_f.Exit1Click(Sender: TObject);
begin
       Close;
end;

procedure Tmain_f.Button5Click(Sender: TObject);
var
       varJuso1, varJuso2: string;
       i: integer;
begin
       with grdMain do
       begin

              application.ProcessMessages;

              progress1.Min := 0;
              progress1.Max := Rowcount - 1;
              progress1.step := Rowcount - 1;
              progress1.Position := 0;

              for i := 1 to Rowcount - 1 do
              begin

                     // showmessage(DisplayDash(Cells[8, i]));
                     if Cells[9, i] = '' then
                     begin

                            with dm_f.sqlWork do
                            begin
                                   close;
                                   sql.Clear;
                                   sql.Add('select * from view_gogek');
                                   sql.Add('where chart=:chart');
                                   paramByName('chart').asString := Cells[3, i];
                                   open;
                                   if not isEmpty then
                                   begin

                                          varJuso2 :=
                                                 Trim(FieldByName('h_juso').AsString);
                                          with dm_f.SqlTemp do
                                          begin
                                                 Close;
                                                 Sql.Clear;
                                                 Sql.Add('Select * from ma_Post');
                                                 Sql.Add('Where zipcode= :ZipCode');
                                                 ParamByName('ZipCode').AsString
                                                        :=
                                                        DisplayDash(Cells[8,
                                                        i]);
                                                 //Dm_f.sqlWork.FieldByName('H_zip').AsString);
                                                 Open;
                                                 varJuso1 :=
                                                        Trim(FieldByName('Sido').AsString) + ' '
                                                        +
                                                        Trim(FieldByName('GuGun').AsString) + ' ' +
                                                        Trim(FieldByName('DOng').AsString);
                                          end;

                                   end;
                            end;

                            with dm_f.sqlWork do
                            begin
                                   close;
                                   sql.Clear;
                                   sql.Add('Update ma_gogek_address set');
                                   sql.Add('juso=:Juso');
                                   sql.Add('where chart=:chart and kind=''1'' ');
                                   paramByName('chart').asString := Cells[3, i];
                                   paramByName('juso').asString := varJuso1 + ' '
                                          + varJuso2;
                                   execSql;
                            end;

                            main_f.grdMain.Cells[9, i] := varJuso1 + ' ' +
                                   varJuso2;

                     end;
                     Progress1.Position := Progress1.Position + 1;
                     application.ProcessMessages;

              end;
       end;

end;

procedure Tmain_f.N5Click(Sender: TObject);
begin
       if not Assigned(changeChart_f) then
              changeChart_f := TchangeChart_f.Create(application);
       with changeChart_f do
       begin

              edtChart1.Text := grdMain.Cells[3, grdMain.Row];
              edtchart2.Text := '';
              Showmodal;

       end;
end;

procedure Tmain_f.Button6Click(Sender: TObject);
var
       varcPhone, varHphone, varoPhone, varpphone: string;
       i: integer;
begin
       with grdMain do
       begin

              application.ProcessMessages;

              progress1.Min := 0;
              progress1.Max := Rowcount - 1;
              progress1.step := Rowcount - 1;
              progress1.Position := 0;

              for i := 1 to Rowcount - 1 do
              begin
                     varcPhone := '';
                     varhPhone := '';
                     varoPhone := '';
                     varpPhone := '';
                     main_f.grdMain.Cells[10, i] := varCphone;
                     main_f.grdMain.Cells[11, i] := varHphone;

                     with dm_f.sqlWork do
                     begin
                            close;
                            sql.Clear;
                            sql.Add('select * from ma_gogek_phone');
                            sql.Add('where chart=:chart');
                            paramByName('chart').asString := Cells[3, i];
                            open;
                            if not isEmpty then
                            begin

                                   varcPhone :=
                                          makeTelno(FieldByName('c_Phone').AsString);
                                   varhPhone :=
                                          makeTelno(FieldByName('h_Phone').AsString);
                                   varoPhone :=
                                          makeTelno(FieldByName('o_Phone').AsString);
                                   varpPhone :=
                                          makeTelno(FieldByName('p_Phone').AsString);

                                   with dm_f.sqltemp do
                                   begin
                                          close;
                                          sql.Clear;
                                          sql.Add('Update injek set');
                                          sql.Add('h_phone=:h_phone, c_phone=:c_phone, o_Phone=:o_Phone, p_phone=:p_phone');
                                          sql.Add('where chart=:chart');
                                          paramByName('chart').asString :=
                                                 Cells[3, i];
                                          paramByName('o_phone').asString :=
                                                 varOphone;
                                          paramByName('c_phone').asString :=
                                                 varCphone;
                                          paramByName('h_phone').asString :=
                                                 varHphone;
                                          paramByName('p_phone').asString :=
                                                 varPphone;
                                          execSql;
                                   end;

                                   main_f.grdMain.Cells[10, i] := varCphone;
                                   main_f.grdMain.Cells[11, i] := varHphone;

                            end
                            else
                            begin
                                   varcPhone := '';
                                   varhPhone := '';
                                   varoPhone := '';
                                   varpPhone := '';
                                   main_f.grdMain.Cells[10, i] := varCphone;
                                   main_f.grdMain.Cells[11, i] := varHphone;

                            end;

                     end;

                     Progress1.Position := Progress1.Position + 1;
                     application.ProcessMessages;

              end;
       end;

end;

function Tmain_f.makeTelno(varTelno: string): string;
var
       Str: string;
       Str1, Str2, Str3: string;
       varSearchGajok: string;
begin
       Str := Deldash(varTelno);

       if (length(str) < 9) and (length(str) >= 7) then //지역번호 없이 들어오면
              str := trim(edtTel.text) + str;

       if (Copy(Str, 1, 2) <> '02') and (str <> '') then
       begin
              if length(str) <= 4 then
              begin
                     Str1 := Copy(str, 1, 3);
                     Str2 := '';
                     Str3 := '';
              end
              else
              begin
                     Str1 := Copy(str, 1, 3) + '-';
                     Str2 := Copy(str, 4, length(str) - 7) + '-';
                     Str3 := Copy(str, length(str) - 3, 4);
              end;
              if length(str2 + str3) > 1 then
                     result := Str1 + Str2 + Str3
              else
                     result := '';

       end

       else if (Copy(Str, 1, 2) = '02') and (str <> '') then
       begin
              if length(str) <= 3 then
              begin
                     Str1 := Copy(str, 1, 2);
                     Str2 := '';
                     Str3 := '';
              end
              else
              begin
                     Str1 := Copy(str, 1, 2) + '-';
                     Str2 := Copy(str, 3, length(str) - 6) + '-';
                     Str3 := Copy(str, length(str) - 3, 4);
              end;
              if length(str2 + str3) > 1 then
                     result := Str1 + Str2 + Str3
              else
                     result := '';
       end;
end;

procedure Tmain_f.N1Click(Sender: TObject);
begin
       if not Assigned(detailSearch_f) then
       begin
              detailSearch_f := TdetailSearch_f.Create(Self);
       end;
       detailSearch_f.Showmodal;

end;

procedure Tmain_f.grdMainClickCell(Sender: TObject; ARow, ACol: Integer);
var
       i: integer;
       state: Boolean;
begin
       case aCol of
              1:
                     begin
                            if aRow = 0 then
                            begin
                                   with grdMain do
                                   begin
                                          for i := 1 to Rowcount - 1 do
                                          begin

                                                 if GetCheckBoxState(1, i, state)
                                                        = true then
                                                 begin
                                                        if state then
                                                               SetCheckBoxState(1, i, false)

                                                        else
                                                               SetCheckBoxState(1, i, true);
                                                 end;
                                          end;
                                   end;
                            end;
                     end;
       end;

end;

procedure Tmain_f.AdvGlowButton5Click(Sender: TObject);
begin
       pnlSendList.visible := not pnlSendList.visible;

end;

procedure Tmain_f.AdvNavBar1Change(Sender: TObject);
begin
       case AdvNavBar1.activeTabindex of
              1:
                     begin

                            SmsSet;

                            pnlsmsimoticon.align := alTop;
                            pnlsmsimoticon.Visible := true;
                            AdvSplitter1.Visible := true;
                            AdvSplitter1.align := alTop;
                             pnlsmsimoticon.Top := -1;
                            AdvSplitter1.Top := 100;

                     end;
              2:
                     begin
                            pnlsmsimoticon.Visible := false;
                     end;
              3:
                     begin
                            pnlsmsimoticon.Visible := false;
                     end;
              4:
                     begin

                            pnlsmsimoticon.Visible := false;

                     end;
       end;
end;

procedure Tmain_f.memSmsChange(Sender: TObject);
begin
       Lblbyte.Caption := IntToStr(Length(MemSMS.Text));
       if Length(MemSMS.Text) > 90 then
       begin
              lblSmsType.Caption := 'LMS'  ;
              EllipsLabel1.caption:= '/2000 BYTE';
       end
       else
       begin
              lblSmsType.Caption := 'SMS';
               EllipsLabel1.caption:= '/90 BYTE';
       end;

end;

procedure Tmain_f.btnNowSendClick(Sender: TObject);
var
       ncount: integer;
begin
       nCount := grdmain.rowcount - 1;
       if Application.MessageBox(PChar(inttostr(nCount) + '건을' + #10#13 +
              '즉시 전송 하시겠습니까?'), '즉시전송 확인', MB_YESNO) = IDYES
                     then
       begin

              SendMessage(FormatDateTime('YYYY-MM-DD', now),
                     FormatDateTime('HH:MM', now),
                     '0');
              ViewRestMoney;
              remainDataLoad;
       end;

end;

procedure Tmain_f.remainDataLoad;
const
       SQL_SELECT_DATA_SMS = 'SELECT SBCode, SBChart,SBName,SBTel,SBMail,     '
              +
              #13#10 +
              'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
              'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
              'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL' + #13#10 +
              'FROM  ma_sms_sendlist' + #13#10 +
              'where SBRegDate =:SBRegDate and SBCHOICE=:SBCHOICE and SBSFSMS<>:SBSFSMS' + #13#10
              +
              'order by SBCODE                                        ';

var
       dCount, i: integer;
begin
       grdmain.RowCount := 2;
       grdmain.FixedRows := 1;
       grdmain.ClearRows(1, grdMain.RowCount - 1);

       with DM_f.SqlWork do
       begin
              close;
              Sql.Clear;
              Sql.Add('Select Count(*) As tblGogekCount from  ma_sms_sendlist ');
              Sql.Add('Where SBRegDate=:SBRegDate  and SBCHOICE=:SBCHOICE and SBSFSMS<>:SBSFSMS');
              Parambyname('SBRegDate').value := formatdatetime('YYYY-MM-DD',
                     now);
              Parambyname('SBCHOICE').value := '1';
              Parambyname('SBSFSMS').value := '1';
              //전송결과가 1(성공)이 아닌것.
              Open;
              dCount := FieldByname('tblGogekCount').AsInteger;
       end;

       with DM_f.sqlTemp do
       begin
              Close;
              Sql.Clear;
              SQL.Text := SQL_SELECT_DATA_SMS;
              Parambyname('SBRegDate').value :=
                     formatdatetime('YYYY-MM-DD',
                     now);
              Parambyname('SBCHOICE').value := '1';
              Parambyname('SBSFSMS').value := '1';
              //성공하지 않은것만 불러온다. 1=성공
              Open;
              Application.ProcessMessages;
              Enabled := false;

              Application.ProcessMessages;

              progress1.Position := 0;

              progress1.Max := dCount;
              // wait_f.label2.Caption := '0/' + inttostr(dcount);

              Application.ProcessMessages;

              if dCount > 0 then
              begin
                     grdmain.RowCount := dCount + 1;
                     while not EOF do
                     begin
                            for i := 1 to dCount do
                            begin
                                   with grdmain do
                                   begin
                                          Cells[2, i] :=
                                                 FieldByName('SBName').AsString;
                                          Cells[3, i] :=
                                                 FieldByName('SbHp').AsString;
                                          Cells[4, i] :=
                                                 FieldByName('SbContent').AsString;

                                          AddCheckBox(5, i, true, true);

                                          AddImageIdx(6, i, 0, haBeforeText,
                                                 vaTop);
                                          cells[7, i] :=
                                                 FieldByName('SBCode').AsString;
                                          AutoNumberCol(0);
                                          Application.ProcessMessages;
                                          next;
                                          progress1.Position :=
                                                 progress1.Position
                                                 + 1;
                                          ///label2.Caption :=
                                           //     inttostr(wait_f.progressbar1.Position +
                                           //     1) + '/' + inttostr(rowcount - 1);

                                   end;

                            end;

                     end;
                     Enabled := True;
              end
              else
              begin
                     Enabled := True;

              end;
       end;
       lblStat2.Caption := '(' + inttostr(0) + '/' +
              inttostr(grdmain.RowCount - 2) + ')';

end;

procedure Tmain_f.btnReserveSendClick(Sender: TObject);
var
       ncount: integer;
       varDate: string;
       varCbTime: string;
       varCbMin: string;
begin
       nCount := grdmain.rowcount - 1;
       if not assigned(sms_reservsend_f) then
       begin
              sms_reservsend_f := Tsms_reservsend_f.Create(application);
       end;
       if sms_reservsend_f.ShowModal = mrOk then
       begin
              varDate := FormatDateTime('YYYYMMDD',
                     sms_reservsend_f.PlannerCalendar1.Date);
              varcbTime := sms_reservsend_f.CbTime.Text;
              varcbMin := sms_reservsend_f.Cbmin.Text;
              if Application.MessageBox(PChar(inttostr(nCount) + '건을' + #10#13
                     +
                     FormatDateTime('YYYY-MM-DD',
                     sms_reservsend_f.PlannerCalendar1.Date) + '일자로' + #10#13
                     +
                     '예약 전송 하시겠습니까?'), '예약전송 확인', MB_YESNO) =
                     IDYES then
              begin

                     //   showmessage(varDate);

                     SendMessage(varDate,
                            varcbTime + varcbMin +
                            '00',
                            '1');

                     //  remainDataLoad;
              end;
       end;
end;

procedure Tmain_f.SendMessage(varSendDate, varSendTime, varSendType: string);
const
       SQL_INSERT_DATA = 'INSERT INTO ma_sms_sendlist                    ' +
              #13#10
              +
              '(SBCode, SBChart,SBName,SBTel,SBMail,     ' + #13#10 +
              'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
              'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
              'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL)' + #13#10 +
              'VALUES                                              ' + #13#10 +
              '(:SBCode, :SBChart, :SBName, :SBTel,:SBMail,     ' + #13#10 +
              ':SBHp,:SBContent, :SBRegDate, :SBSendDate,      ' + #13#10 +
              ':SBSendTime, :SBZip, :SBAdd, :SBQty, :SBGroup,:SBCHOICE,       ' + #13#10
              +
              ':SBSFSMS, :SBSFMAIL, :SBSFFAX, :SBSFDM, :SBSFRECALL)';

       SQL_INSERT_DATA2 = 'INSERT INTO ma_sms_sendresult                   ' +
              #13#10 +
              ' (SRCode, SRDate, SRTime, SRResult,SRResult2)                          ' + #13#10
              +
              ' VALUES                                              ' + #13#10 +
              ' (:SRCode, :SRDate, :SRTime, :SRResult,:SRResult2)                        ';

       SQL_UPDATE_DATA = 'UPDATE ma_sms_sendlist SET ' + #13#10 +
              '                    SBSFSMS  = :SBSFSMS, SBSFRECALL=:SBSFRECALL,' + #13#10
              +
              '                    SBSENDDATE  = :SBSENDDATE, SBSENDTIME=:SBSENDTIME, SBREGDATE=:SBREGDATE ' + #13#10
              +
              '              WHERE SBCode=:SBCode';

var
       MaxSBcode, MaxSrCode, VTelNo: string;
       Vtong,
              VGuk,
              VBun,
              VName,
              Vtong2,
              VGuk2,
              VBun2,
              VMem,
              VId,
              VPass,
              VYDay,
              VYTime,
              VTel
              : WideString;
       i, j: integer;
       state: boolean;
begin
       i := 0;
       Vtong := '';
       VGuk := '';
       VBun := '';
       VName := '';
       Vtong2 := '';
       VGuk2 := '';
       VBun2 := '';
       VMem := '';
       VPass := '';
       VId := '';
       VTel := EdtSendNo.Text;
       sCustname := edtSendname.text;

       VPass := dm_f.configvalue.varSmspass;
       VId := dm_f.configvalue.varSmsid;

       with grdMain do
       begin
              Enabled := false;
              progress1.Position := 0;
              progress1.Max := rowcount - 1;
              // wait_f.label2.Caption := '0/' + inttostr(rowcount - 1);

              Application.ProcessMessages;
              for j := 1 to rowcount - 1 do
              begin
                     GetCheckBoxState(1, j, state);

                     if state then
                     begin

                            if trim(cells[10, j]) <> '' then
                            begin
                                   vTelNo := call_tel_type(cells[10, j]);
                                   Vtong := subStr(vTelNo, 1, '-');
                                   VGuk := SubStr(vTelNo, 2, '-');
                                   VBun := SubStr(vTelNo, 3, '-');
                                   VName := cells[4, j];
                                   Vtong2 := SubStr(Vtel, 1, '-');
                                   VGuk2 := SubStr(Vtel, 2, '-');
                                   VBun2 := SubStr(Vtel, 3, '-');
                                   VMem := memsms.text;

                                   VMem := StringReplace(vMem, '+ddd+',
                                          cells[4, j],
                                          [rfReplaceAll,
                                          rfIgnoreCase]);

                                   VMem := StringReplace(VMem,
                                          '+aaa+', edtSendname.text,
                                          [rfReplaceAll, rfIgnoreCase]);

                                   VMem := StringReplace(VMem, '+ccc+',
                                          edtSendno.text,
                                          [rfReplaceAll, rfIgnoreCase]);

                                   //예약안된것 '1'인것만 에약된거
                                   if varSendType = '0' then //즉시전송
                                   begin
                                          nRet :=
                                                 smscallmsg1.SMSSendUnit(1, VId,
                                                 sCustName,
                                                 sCust,
                                                 sCustName,
                                                 VTong, VGuk, VBun,
                                                 VName,
                                                 VTong2, VGuk2, VBun2,
                                                 Trim(VMem), '00000000',
                                                 '000000', nRem,
                                                 nUnCost);
                                   end
                                   else
                                   begin

                                          nRet :=
                                                 smscallmsg1.SMSSendUnit(1, VId,
                                                 sCustName,
                                                 sCust,
                                                 sCustName,
                                                 VTong, VGuk, VBun,
                                                 VName,
                                                 VTong2, VGuk2, VBun2,
                                                 Trim(VMem), varSendDate,
                                                 varSendtime, nRem,
                                                 nUnCost);
                                   end;
                                   //   if cbDbSave.checked = true then
                                   //   begin
                                   with Dm_f.sqlWork do
                                   begin

                                          close;
                                          sql.clear;
                                          sql.add('select max(SBCode) as MSBcode from ma_sms_sendlist');
                                          open;
                                          MaxSBCode :=
                                                 FieldByName('MSBcode').AsString;

                                          if MaxSBCode <> '' then
                                                 MaxSBCode :=
                                                        FormatFloat('0000000000', (StrToInt(MaxSBcode) + 1))
                                          else
                                                 MaxSBCode :=
                                                        '0000000001';

                                          if cells[7, j] <> '' then
                                                 MaxSrCode := cells[7, j]
                                          else
                                                 MaxSrCode := MaxSbCode;

                                          SQL.Text :=
                                                 'INSERT INTO ma_sms_sendresult                   ' +
                                                 #13#10 +
                                                 ' (SRCode, SRDate, SRTime, SRResult,SRResult2)                          ' + #13#10
                                                 +
                                                 ' VALUES                                              ' + #13#10
                                                 +
                                                 ' (' + #13
                                                 + QuotedStr(MaxSrCode) +
                                                 ',' + #13
                                                 +
                                                 QuotedStr(FormatDateTime('YYYY-MM-DD', now)) + ',' + #13
                                                 +
                                                 QuotedStr(FormatDateTime('hh:mm', now)) + ',' + #13
                                                 +
                                                 QuotedStr(IntTostr(nRet2)) + ','
                                                 + #13
                                                 +
                                                 QuotedStr(IntTostr(nRet))
                                                 + #13
                                                 + ')';

                                          { SQL_INSERT_DATA2;
                                           Parambyname('SRCode').value := cells[7, j];
                                           Parambyname('SRDate').value :=
                                                FormatDateTime('YYYY-MM-DD', now);
                                           Parambyname('SRTime').value :=
                                                FormatDateTime('hh:mm', now);
                                           Parambyname('SRResult').value :=
                                                IntTostr(nRet2);
                                           //Login
                                           Parambyname('SRResult2').value :=
                                                IntTostr(nRet);
                                           //Send
                                           }
                                          ExecSQL;
                                   end;
                                   try
                                          with Dm_f.sqlTemp do
                                          begin

                                                 close;
                                                 sql.clear;

                                                 SQL.Text :=
                                                        'INSERT INTO ma_sms_sendlist                    ' + #13#10
                                                        +
                                                        '(SBCode, SBChart,SBName,SBTel,SBMail,     ' + #13#10
                                                        +
                                                        'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10
                                                        +
                                                        'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10
                                                        +
                                                        'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL)' + #13#10
                                                        +
                                                        'VALUES                                              ' + #13#10
                                                        +
                                                        '('
                                                        +
                                                        QuotedStr(MaxSbCode) +
                                                        ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr(vname)
                                                        + ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr(vTong
                                                        + '-' + vGuk + '-'
                                                        + vBun) + ',' +
                                                        #13
                                                        + QuotedStr(vMem)
                                                        + ',' + #13
                                                        +
                                                        QuotedStr(formatdatetime('YYYY-MM-DD', now)) + ',' + #13
                                                        +
                                                        QuotedStr(copy(varSendDate, 1, 4) + '-' + copy(varSendDate, 5, 2) + '-' +
                                                        copy(varSendDate,
                                                        7, 2)) + ',' +
                                                        #13
                                                        +
                                                        QuotedStr(copy(varSendTime, 1, 2) + ':' + copy(varSendTime, 3, 2)) + ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr('1')
                                                        +
                                                        ',' + #13
                                                        +
                                                        QuotedStr(IntTostr(nRet))
                                                        + ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr('') +
                                                        ',' + #13
                                                        + QuotedStr('0')
                                                        + ')';

                                                 {        SQL_INSERT_DATA;
                                                         if MaxSBCode <> '' then
                                                              Parambyname('SBCODE').value :=
                                                                   FormatFloat('0000000000',
                                                                   (StrToInt(MaxSBcode)
                                                                   + 1))
                                                         else
                                                              Parambyname('SBCODE').value :=
                                                                   '0000000001';
                                                         Parambyname('SBChart').value := '';
                                                         Parambyname('SBName').value := vname;
                                                         Parambyname('SBTel').value := '';
                                                         Parambyname('SBMail').value := '';
                                                         Parambyname('SBHp').value := vTong + '-' +
                                                              vGuk + '-' + vBun;
                                                         Parambyname('SBContent').value := VMem;
                                                         Parambyname('SBRegDate').value :=
                                                              formatdatetime('YYYY-MM-DD',
                                                              now);
                                                         Parambyname('SBZip').value := '';
                                                         Parambyname('SBAdd').value := '';
                                                         Parambyname('SBQty').value := '';
                                                         Parambyname('SBGroup').value := '';
                                                         Parambyname('SBSFSMS').value :=
                                                              IntTostr(nRet);
                                                         Parambyname('SBSFMAIL').value := '';
                                                         Parambyname('SBSFFAX').value := '';
                                                         Parambyname('SBSFDM').value := '';
                                                         Parambyname('SBSFRECALL').value :=
                                                              varSendType;
                                                         Parambyname('SBSendDate').value :=
                                                              varSendDate;
                                                         Parambyname('SBSendTime').value :=
                                                              varSendTime;
                                                         Parambyname('SBCHOICE').value := '1';

                                                         //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL

                                                  }

                                                 ExecSQL;

                                          end;

                                   except

                                          on E: Exception do
                                          begin

                                                 ShowMessage('[ma_sms_sendlist 저장 오류]'
                                                        + E.Message);
                                          end;
                                   end;
                            end;
                            Application.ProcessMessages;
                            //  wait_f.label2.Caption := inttostr(wait_f.progressbar1.Position +
                            //       1) + '/' + inttostr(rowcount - 1);

                            progress1.Position := progress1.Position + 1;
                     end;

              end;
              Enabled := True;

       end;
end;

procedure Tmain_f.tcitemChanged(Sender: TObject; NewTab: Integer);
begin
       if (tabchange = true) and (tcItem.advTabs.Count > 0) then
       begin

              lblContentsKind.Caption :=
                     tcItem.advTabs[tcItem.TabIndex].Caption;
              LoadSmsDataKind(tcItem.advTabs[tcItem.TabIndex].Caption);

              if sbsmsItem.ControlCount > 0 then
                    DrawItem(sbsmsItem.Controls[0].Hint);
       end;

end;

procedure Tmain_f.StartStat1Click(Sender: TObject);
begin
       if not Assigned(Statistics3_f) then
              Statistics3_f := TStatistics3_f.Create(application);
       Statistics3_f.Showmodal;

end;

end.

