unit uEecp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, AdvPanel,      DateUtils,
  Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, MSINKAUTLib_TLB,  DB,
  AdvEdit, Vcl.Imaging.pngimage, Vcl.Mask, JvExMask, JvToolEdit, AdvUtil,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, FormSize;

type
  Teecp_f = class(TForm)
    AdvPanel1: TAdvPanel;
    lblPatInfo: TLabel;
    AdvPanel2: TAdvPanel;
    pnlHeart: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbNitro: TComboBox;
    cbNitro2: TComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cbBujong: TComboBox;
    cbBujong2: TComboBox;
    cbEnergy2: TComboBox;
    cbEnergy: TComboBox;
    cbPharm2: TComboBox;
    cbPharm: TComboBox;
    cbSkin2: TComboBox;
    cbSkin: TComboBox;
    cbHeart2: TComboBox;
    cbHeart: TComboBox;
    Panel2: TPanel;
    dtDate3: TDateTimePicker;
    Label25: TLabel;
    ImageList1: TImageList;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    pnlImage: TPanel;
    Image1: TImage;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    btnSave: TButton;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    memRemark: TMemo;
    edtWeight: TAdvEdit;
    edtBP0: TAdvEdit;
    edtHr: TAdvEdit;
    edtBS: TAdvEdit;
    edtBR: TAdvEdit;
    edtSPO2: TAdvEdit;
    edtWeight2: TAdvEdit;
    edtBP2: TAdvEdit;
    edtHr2: TAdvEdit;
    edtBS2: TAdvEdit;
    edtBR2: TAdvEdit;
    edtSPO22: TAdvEdit;
    edtEpisode: TAdvEdit;
    edtReason: TAdvEdit;
    edtSensitivity: TAdvEdit;
    edtEpisode2: TAdvEdit;
    edtReason2: TAdvEdit;
    edtSensitivity2: TAdvEdit;
    edtBP1: TAdvEdit;
    edtBP3: TAdvEdit;
    Label30: TLabel;
    Label31: TLabel;
    dtDate: TJvDateEdit;
    Button9: TButton;
    grdList: TAdvStringGrid;
    FormSize1: TFormSize;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    edtSeqNo: TAdvEdit;
    CheckBox1: TCheckBox;
    Button13: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cbHeartChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtWeightKeyPress(Sender: TObject; var Key: Char);
    procedure dtDate3Change(Sender: TObject);
    procedure dtDate3CloseUp(Sender: TObject);
    procedure grdListClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdListRowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure grdListGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
     TxInkCollector: TinkCollector;
      viewMode : integer;
      varThickNess : integer;


    procedure fieldClear;
    procedure PeninkSet;
    procedure ColorChange(varColor: tColor);
    procedure EraseStrokes(varptX, varPtY: integer;
      varcurrentStroke: inkStrokes);
    procedure PenKindChange(varPen: integer; sender: TObject);
    procedure ThickChange(varThick: integer);

    procedure SaveEECP(kind : string;  Out Basic_id:integer; seqNO : integer = 0 );
    procedure SaveImage( basic_id : integer);

    procedure LoadEEcp(kind: string; seqNo: integer);
    procedure LoadEEcpImage(basic_id: integer);

    procedure LoadEEcpGrid;
    procedure AllClear;
    procedure LoadAll(aRow:integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  eecp_f: Teecp_f;

implementation
uses uConfig, uFormInit, uDM,  uGogekData, uFunctions;

{$R *.dfm}


procedure Teecp_f.btnSaveClick(Sender: TObject);
var
   basic_id : integer;
   seqNo    : integer;
begin

   try
     seqNo  := edtSeqno.value;

     saveEECP('1',  basic_id, seqNo )  ;
     saveEECP('2',  basic_id, seqNo )  ;


     saveImage(basic_id) ;

     showmessage('Saved.');


     LoadEEcpGrid;
   except
             on E: Exception do
          //     ExceptLogging('Tmain_f.LoadDocumentLayer:' + E.Message);

       showmessage('Do not saved.'+#10+ E.Message);
   end;
end;

procedure Teecp_f.Button10Click(Sender: TObject);
begin
   //   listBox1.Items.Clear ;

      grdList.RemoveRows(1,grdList.RowCount-1 );

      with dm_f.SqlTemp do
      begin
           Close;
           Sql.Clear;

           Sql.Add('select *   from ma_eecp_basic        ');
           Sql.Add(' where kind=''1''                    ');
           Sql.Add(' order by id                         ');

           open;

           if not isEmpty then
           begin
                 while not eof do
                 begin

                    grdList.AddRow;
                    //listBox1.Items.Add( fieldByname('jin_day').AsString );
                    grdList.cells[1, grdList.RowCount - 1] :=  fieldByname('chart').AsString ;
                    grdList.cells[2, grdList.RowCount - 1] :=  fieldByname('jin_day').AsString;
                    grdList.cells[3, grdList.RowCount - 1] := fieldByname('ID').AsString ;

                    next;

                 end;

           end;
      end;

      grdList.AutoNumberDirection := sdDescending;//sdAscending;
      grdList.AutoNumberCol(0);
end;



procedure Teecp_f.Button11Click(Sender: TObject);
var
   i : integer;
begin
     for i:= 1 to  grdList.RowCount-1  do
     begin

                   with dm_f.SqlTemp do
                begin
                     Close;
                     Sql.Clear;

                     Sql.Add(' update   ma_eecp_basic  set                               ');
                     Sql.Add(' seqNo=:seqNo                                              ');
                     Sql.Add(' where chart=:chart and jin_day=:jin_day                   ');
                     paramByName('chart').AsString:=  grdList.Cells[1, i];
                     paramByName('jin_day').AsString:=  grdList.Cells[2, i];
                     paramByName('seqNo').AsInteger:=  i;
                     execsql;
                end;

     end;


end;


procedure Teecp_f.Button12Click(Sender: TObject);
begin

    edtSeqno.Value := 0;

    if checkBox1.Checked then
         fieldClear;
end;

procedure Teecp_f.Button13Click(Sender: TObject);
var
   seqNo : integer;
begin

           if Application.MessageBox(pchar(lblPatInfo.Caption+'('+grdList.Cells[1, grdList.row]+')' +'('+grdList.Cells[2, grdList.row]+')'+ ' ªË¡¶ «œΩ ¥œ±Ó?' ), 'ªË¡¶»Æ¿Œ', MB_YESNO) = 6 then
              begin


                  seqNo :=  edtSeqno.Value;
                  with dm_f.SqlTemp do
                  begin
                       Close;
                       Sql.Clear;
                       Sql.Add('delete from ma_eecp_basic');
                       Sql.Add('Where  chart= :chart and jin_day= :jin_day  and seqNo=:seqNo');
                       ParamByName('Chart').AsString        := ma_chart;
                       ParamByName('jin_day').Asstring      := formatDatetime('YYYY-MM-DD',dtDate.date);
                       ParamByName('seqNo').AsInteger       := seqNo;
                      execsql;
                  end;

                   LoadEEcpGrid;

              end;
end;

procedure Teecp_f.Button1Click(Sender: TObject);
begin

//            ColorChange(stringToColor(substr((sender as TButton).hint,
//                2,
//                '_')));
//

//     if  (sender as TAdvToolBarButton).Down then
//     begin

           PenKindChange(strtoInt(copy((sender as TButton).hint, 1, 1)), (sender as TButton));
           ColorChange(stringToColor(substr((sender as TButton).hint,    2,  '_')));
           ThickChange( strToint(substr((sender as TButton).hint,   3,  '_')));
//     end;



//    TxInkCollector.DefaultDrawingAttributes.Transparency := 0;
//   TxInkCollector.DefaultDrawingAttributes.IgnorePressure := false;
//   TxInkCollector.Enabled := true;


end;

procedure Teecp_f.Button4Click(Sender: TObject);
begin
     try
          viewMode := 2;
          TxInkCollector.Enabled := false;
     except
          on E: Exception do
               ExceptLogging('Tdm_f.btnEraserClick:' + E.Message);
     end;



end;

procedure Teecp_f.EraseStrokes(varptX: integer; varPtY: integer;
     varcurrentStroke: inkStrokes);
var

     strokesHit: inkStrokes;
begin

     // Use HitTest to find the collection of strokes that are intersected
     // by the point.  The HitTestRadius constant is used to specify the
     // radius of the hit test circle in ink space coordinates (1 unit = .01mm).
     strokesHit := TxInkCollector.Ink.HitTestCircle(varptX, varPtY, 30);

     if (varcurrentStroke <> nil) then
          //and (strokesHit.Contains(varcurrentStroke))then

          //strokesHit
          strokesHit.Remove(varcurrentStroke.Item(0));

     // Delete all strokes that were hit by the point

     TxInkCollector.Ink.DeleteStrokes(strokesHit);

     if (strokesHit.Count > 0) then
     begin
          // Repaint the screen to reflect the change
          pnlImage.Refresh;
     end;
end;


procedure Teecp_f.cbHeartChange(Sender: TObject);
begin
      if  (cbHeart.ItemIndex  = 1) or    (cbHeart2.ItemIndex  = 1) then
      begin
            pnlHeart.Visible := true;
      end
      else
      begin
            pnlHeart.Visible := false;
      end;


end;

procedure Teecp_f.fieldClear;

begin

    dtdate.Date := now;
    edtWeight.text := '';
    edtBP0.text := '';
    edtBP1.text := '';
    edtHr.text := '';
    edtBS.text := '';
    edtBR.text := '';
    edtSPO2.text := '';
    edtEpisode.text := '';
    edtReason.text := '';
    edtSensitivity.text := '';
    edtWeight2.text := '';
    edtBP2.text := '';
    edtBP3.text := '';
    edtHr2.text := '';
    edtBS2.text := '';
    edtBR2.text := '';
    edtSPO22.text := '';
    edtEpisode2.text := '';
    edtReason2.text := '';
    edtSensitivity2.text := '';
    cbNitro.ItemIndex := 0;
    cbNitro2.ItemIndex := 0;
    cbBujong.ItemIndex := 0;
    cbBujong2.ItemIndex := 0;
    cbEnergy2.ItemIndex := 0;
    cbEnergy.ItemIndex := 0;
    cbPharm2.ItemIndex := 0;
    cbPharm.ItemIndex := 0;
    cbSkin2.ItemIndex := 0;
    cbSkin.ItemIndex := 0;
    cbHeart2.ItemIndex := 0;
    cbHeart.ItemIndex := 0;

    memRemark.Text := '';
end;

procedure Teecp_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       action:= caFree;
end;

procedure Teecp_f.FormCreate(Sender: TObject);
var
    genderAge : string;
begin

     caption:='EECP Record';
     fieldClear;

       if isDate(JuminToBirthDash(ma_jumin)) = true then
      begin
          //       lblgenderAge.Font.Color := clNavy;
           genderAge := jumintogender(ma_jumin) + ' / '
                +
                inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin))) div 12) + 'y ' +
                inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin))) mod 12) + 'm'; //+ jumintonai(ma_jumin);
      end
      else
      begin
            //     lblgenderAge.Font.Color := clNavy;
          genderAge := jumintogender(ma_jumin) + ' / '
                +
                'unknown';
      end;

         if trim(ma_Chart) <> '' then
     begin

     //  caption:=  '[¡¯∑·Ω«] '+ ' '+ ma_Chart +'('+ ma_Paname+')' + genderAge +'';
       lblPatInfo.caption :=  ma_Chart +'('+ ma_Paname+')' + genderAge +'';
     end;

        penInkSet  ;

end;

procedure Teecp_f.FormDestroy(Sender: TObject);
begin
        eecp_f:= nil;
end;

procedure Teecp_f.FormShow(Sender: TObject);
begin

       LoadEEcpGrid;
//       LoadEEcp('1');
//       LoadEEcp('2');
//       LoadEEcpImage(edtSeqNo.Value);

end;

procedure Teecp_f.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

     try
          if (viewmode = 2) and (Shift = [ssLeft]) then
          begin
               TxInkCollector.Renderer.PixelToInkSpace(pnlImage.Handle, X,
                    Y);
               EraseStrokes(X, Y, nil);

               exit;
          end;
     except
          on E: Exception do
               ExceptLogging('ImgScreenMouseMove:' + E.Message);
     end;

end;

procedure Teecp_f.PeninkSet;
begin


     //ink start----------------------------------------------------------------
     coInkCollector.Create;

     TxInkCollector := TInkCollector.Create(self);
     TxInkCollector.HWND_ := pnlImage.Handle;//. .Handle;
     // TxInkCollector.hwnd := mnumemo.Handle;
     // TxInkCollector.hwnd := advStringGrid1.Handle;
     //    TxInkCollector.hwnd := realGrid1.Handle;
     //  TxInkCollector.Transparency := 0;
     //TxInkCollector.Ink.
     TxInkCollector.DefaultDrawingAttributes.Color := clBlack;
     TxInkCollector.DefaultDrawingAttributes.Width := 90;
     TxInkCollector.DefaultDrawingAttributes.Transparency := 100;
     TxInkCollector.DefaultDrawingAttributes.IgnorePressure := true;

     TxInkCollector.Enabled := true;
     //ink end----------------------------------------------------------------


end;


procedure Teecp_f.ColorChange(varColor: tColor);
begin
      viewMode := 1;
     try
          TxInkCollector.DefaultDrawingAttributes.Color := varColor;
          TxInkCollector.Enabled := true;
     except
          on E: Exception do
               ExceptLogging('Tdm_f.ColorChange:' + E.Message);
     end;
end;



procedure Teecp_f.dtDate3Change(Sender: TObject);
var
   findRow : integer;
begin



         //    listBox1.ItemIndex := listBox1.Items.IndexOf(formatDatetime('YYYY-MM-DD', dtDate.Date));

         //    FindRow := grdList.Find(1, formatDatetime('YYYY-MM-DD', dtDate.Date));



         //    grdList.Row :=  FindRow;


             grdList.FindCol := 1;
             grdList.Find(point(1,1), formatDatetime('YYYY-MM-DD', dtDate.Date) ,
                   [fnFindInPresetCol, fnMatchFull,fnAutoGoto]);

             fieldClear;

             AllClear;
             LoadEEcp('1', grdList.ints[3,grdList.Row]);
             LoadEEcp('2', grdList.ints[3,grdList.Row]);
             LoadEEcpImage(grdList.ints[3,grdList.Row]);//  edtSeqNo.Value);




end;


procedure Teecp_f.dtDate3CloseUp(Sender: TObject);
begin

             edtWeight.SetFocus;


end;

procedure Teecp_f.edtWeightKeyPress(Sender: TObject; var Key: Char);
begin
       if key=#13 then
       begin

               SelectNext(sender as TWinControl, True, True);
               Key := #0;

       end;
end;

procedure Teecp_f.PenKindChange(varPen: integer; sender: TObject);
begin
     try
          viewMode := 1;
          case varPen of
               0: //ΩŒ¿Œ∆Ê
                    begin
                         TxInkCollector.DefaultDrawingAttributes.Transparency := 0;
                         TxInkCollector.DefaultDrawingAttributes.IgnorePressure := false;
                         TxInkCollector.Enabled := true;
                    end;
               1: //∫º∆Ê
                    begin
                         TxInkCollector.DefaultDrawingAttributes.Transparency := 0;
                         TxInkCollector.DefaultDrawingAttributes.IgnorePressure := true;

                    end;
               2: //«¸±§∆Ê
                    begin
                         TxInkCollector.DefaultDrawingAttributes.Transparency := 100;
                         TxInkCollector.DefaultDrawingAttributes.IgnorePressure := true;
                    end;
          end;
        {  btnBluesignpen.Down := false;
          btnRedsignpen.Down := false;
          btnGreensignpen.Down := false;
          btnBlackSignpen.Down := false;
         }
          //  (sender as TadvToolBarButton).Down := true;

          TxInkCollector.Enabled := true;

     except
          on E: Exception do
               ExceptLogging('Tdm_f.ColorChange:' + E.Message);
     end;
end;




procedure Teecp_f.ThickChange(varThick: integer);
begin
     try
          TxInkCollector.DefaultDrawingAttributes.Width := varthick;
          varThickness:=  varthick;
          viewMode := 1;
          TxInkCollector.Enabled := true;
     except
          on E: Exception do
               ExceptLogging('Tdm_f.ThickChange:' + E.Message);
     end;
end;


procedure Teecp_f.SaveEECP(kind : string;   Out Basic_id:integer; seqNO : integer = 0);
var
    maxSeqNo : integer;
    isNew : boolean;
begin

{          ([chart]          ([chart]
           ,[jin_day]        ,[jin_day]
           ,[kind]           ,[kind]
           ,[weight]         ,[weight]
           ,[bp]             ,[bp]
           ,[Hr]             ,[Hr]
           ,[bs]             ,[bs]
           ,[br]             ,[br]
           ,[spo2]           ,[spo2]
           ,[energy]         ,[energy]
           ,[pharm]          ,[pharm]
           ,[heart]          ,[heart]
           ,[episode]        ,[episode]
           ,[reason]         ,[reason]
           ,[sensitivity]    ,[sensitivity]
           ,[nitro]          ,[nitro]
           ,[bujong]         ,[bujong]
           ,[skin]           ,[skin]
           ,[remark])      ,[remark])}


      isNew:= false;

      with dm_f.SqlTemp do
      begin
           Close;
           Sql.Clear;
           Sql.Add('select *   from ma_eecp_basic');
           Sql.Add('Where  chart= :chart and jin_day= :jin_day and kind=:kind and seqNo=:seqNo');
           ParamByName('Chart').AsString        := ma_chart;
           ParamByName('jin_day').Asstring      := formatDatetime('YYYY-MM-DD',dtDate.date);
           ParamByName('kind').AsString         := kind;
           ParamByName('seqNo').AsInteger       := seqNo;
          open;
          if isEmpty  then

          begin


               isNew:= true;

               Close;
               Sql.Clear;
               Sql.Add('select Max(isNull(seqNo, 0)) as MaxSeqNo   from ma_eecp_basic');
               Sql.Add('Where    kind=:kind ');
               ParamByName('kind').AsString         := kind;
               open;
               maxSeqNo:= FieldByName('MaxSeqNo').AsInteger;

               seqNo:=  maxSeqNo + 1;

           Close;
           Sql.Clear;
           Sql.Add('insert into ma_eecp_basic');
           Sql.Add(' (chart  ,jin_day    ,kind  ,weight  ,bph, bpl, Hr ,bs   ,br   ,spo2, seqNo   ');
           Sql.Add(',energy ,pharm  ,heart ,episode   ,reason   ,sensitivity  ,nitro  ,bujong  ,skin  ,remark) values');
           Sql.Add(' (:chart  , :jin_day    , :kind  , :weight  , :bph,:bpl , :Hr , :bs   , :br   , :spo2 , :seqNo  ');
           Sql.Add(', :energy , :pharm  , :heart , :episode   , :reason   , :sensitivity  , :nitro  , :bujong  , :skin  , :remark)');

          end
          else
          begin

            Close;
            Sql.Clear;
            Sql.Add('update  ma_eecp_basic set');
            Sql.Add('weight         = :weight , ' );
            Sql.Add('bpl             = :bpl , ' );
            Sql.Add('bph             = :bph , ' );
            Sql.Add('Hr             = :Hr , ' );
            Sql.Add('bs             = :bs , ' );
            Sql.Add('br             = :br , ' );
            Sql.Add('spo2           = :spo2 , ' );
            Sql.Add('energy         = :energy , ' );
            Sql.Add('pharm          = :pharm , ' );
            Sql.Add('heart          = :heart , ' );
            Sql.Add('episode        = :episode , ' );
            Sql.Add('reason         = :reason , ' );
            Sql.Add('sensitivity    = :sensitivity , ' );
            Sql.Add('nitro          = :nitro , ' );
            Sql.Add('bujong         = :bujong , ' );
            Sql.Add('skin           = :skin ' );
            Sql.Add('Where  chart= :chart and jin_day= :jin_day and kind=:kind and seqNo=:seqNo');

          end;
           ParamByName('Chart').AsString         :=  ma_chart;
           ParamByName('jin_day').Asstring       :=  formatDatetime('YYYY-MM-DD',dtDate.date);
           ParamByName('kind').AsString          :=  kind;
           ParamByName('seqNO').asInteger         :=  seqNO;

           if kind='1' then
           begin
               ParamByName('weight').AsString      :=  edtweight.text    ;
               ParamByName('bpl').AsString          :=  edtbp0.text    ;
               ParamByName('bph').AsString          :=  edtbp1.text    ;
               ParamByName('Hr').AsString          :=  edtHr.text    ;
               ParamByName('bs').AsString          :=  edtBs.text    ;
               ParamByName('br').AsString          :=  edtBr.text    ;
               ParamByName('spo2').AsString        :=  edtspo2.text   ;
               ParamByName('energy').AsString      :=  inttostr(cbEnergy.ItemIndex)  ;
               ParamByName('pharm').AsString       :=  inttostr(cbPharm.ItemIndex)   ;
               ParamByName('heart').AsString       :=  inttostr(cbHeart.ItemIndex)   ;
               ParamByName('episode').AsString     :=  edtepisode.text   ;
               ParamByName('reason').AsString      :=  edtreason.text    ;
               ParamByName('sensitivity').AsString :=  edtsensitivity.text   ;
               ParamByName('nitro').AsString       :=  inttostr(cbNitro.ItemIndex)   ;
               ParamByName('bujong').AsString      :=  inttostr(cbBujong.ItemIndex)   ;
               ParamByName('skin').AsString        :=  inttostr(cbSkin.ItemIndex)   ;
    //           ParamByName('MedDate').AsDate := dtChamgo.date;
    //           paramByName('MedMemo').asMemo := rEdit.Text;
    //           paramByName('Portion').asString := varPortion;
    //           paramByName('richtext').LoadFromStream(ms, ftBlob);
           end
               else
               if kind='2' then
               begin



                   ParamByName('weight').AsString      :=  edtweight2.text    ;
                   ParamByName('bpl').AsString         :=  edtbp3.text    ;
                   ParamByName('bph').AsString         :=  edtbp2.text    ;
                   ParamByName('Hr').AsString          :=  edtHr2.text    ;
                   ParamByName('bs').AsString          :=  edtBs2.text    ;
                   ParamByName('br').AsString          :=  edtBr2.text    ;
                   ParamByName('spo2').AsString        :=  edtspo22.text   ;
                   ParamByName('energy').AsString      :=  inttostr(cbEnergy2.ItemIndex)  ;
                   ParamByName('pharm').AsString       :=  inttostr(cbPharm2.ItemIndex)   ;
                   ParamByName('heart').AsString       :=  inttostr(cbHeart2.ItemIndex)   ;
                   ParamByName('episode').AsString     :=  edtepisode2.text   ;
                   ParamByName('reason').AsString      :=  edtreason2.text    ;
                   ParamByName('sensitivity').AsString :=  edtsensitivity2.text   ;
                   ParamByName('nitro').AsString       :=  inttostr(cbNitro2.ItemIndex)   ;
                   ParamByName('bujong').AsString      :=  inttostr(cbBujong2.ItemIndex)   ;
                   ParamByName('skin').AsString        :=  inttostr(cbSkin2.ItemIndex)   ;
        //           ParamByName('MedDate').AsDate := dtChamgo.date;

              end;


              execsql;

              Basic_id := seqNo;

//                if isNew = true then
//                begin
//                  close;
//                  SQL.Clear;
//                  SQL.text := ' select @@Identity as sid';
//                  open;
//
//                  Basic_id := fieldByname('sid').asinteger;
//
//                end;





      end;



end;



procedure Teecp_f.LoadEEcp(kind : string; seqNo: integer);
begin
      with dm_f.SqlTemp do
      begin
           Close;
           Sql.Clear;
           Sql.Add('select *   from ma_eecp_basic');
           Sql.Add('Where  chart= :chart and jin_day= :jin_day and kind=:kind and seqNo=:seqNo');
           ParamByName('Chart').AsString         := ma_chart;
           ParamByName('jin_day').Asstring       := formatDatetime('YYYY-MM-DD',dtDate.date);
           ParamByName('kind').AsString          := kind;
           ParamByName('seqNo').AsInteger        := seqNo;
           open;


           if not isEmpty then
           begin

               if kind='2' then
               begin
                 edtweight2.text        :=       FieldByName('weight').AsString      ;
                 edtbp2.text            :=       FieldByName('bph').AsString          ;
                 edtbp3.text            :=       FieldByName('bpl').AsString          ;
                 edtHr2.text            :=       FieldByName('Hr').AsString          ;
                 edtBs2.text            :=       FieldByName('bs').AsString          ;
                 edtBr2.text            :=       FieldByName('br').AsString          ;
                 edtspo22.text          :=       FieldByName('spo2').AsString        ;
                 cbEnergy2.ItemIndex    :=       FieldByName('energy').AsInteger     ;
                 cbPharm2.ItemIndex     :=       FieldByName('pharm').AsInteger      ;
                 cbHeart2.ItemIndex     :=       FieldByName('heart').AsInteger      ;
                 edtepisode2.text       :=       FieldByName('episode').AsString     ;
                 edtreason2.text        :=       FieldByName('reason').AsString      ;
                 edtsensitivity2.text   :=       FieldByName('sensitivity').AsString ;
                 cbNitro2.ItemIndex     :=       FieldByName('nitro').AsInteger      ;
                 cbBujong2.ItemIndex    :=       FieldByName('bujong').AsInteger     ;
                 cbSkin2.ItemIndex      :=       FieldByName('skin').AsInteger       ;

               end
               else
               if kind='1'  then
               begin
                 edtweight.text        :=       FieldByName('weight').AsString      ;
                 edtbp0.text            :=       FieldByName('bpl').AsString          ;
                 edtbp1.text            :=       FieldByName('bph').AsString          ;
                 edtHr.text            :=       FieldByName('Hr').AsString          ;
                 edtBs.text            :=       FieldByName('bs').AsString          ;
                 edtBr.text            :=       FieldByName('br').AsString          ;
                 edtspo2.text          :=       FieldByName('spo2').AsString        ;
                 cbEnergy.ItemIndex    :=       FieldByName('energy').AsInteger     ;
                 cbPharm.ItemIndex     :=       FieldByName('pharm').AsInteger      ;
                 cbHeart.ItemIndex     :=       FieldByName('heart').AsInteger      ;
                 edtepisode.text       :=       FieldByName('episode').AsString     ;
                 edtreason.text        :=       FieldByName('reason').AsString      ;
                 edtsensitivity.text   :=       FieldByName('sensitivity').AsString ;
                 cbNitro.ItemIndex     :=       FieldByName('nitro').AsInteger      ;
                 cbBujong.ItemIndex    :=       FieldByName('bujong').AsInteger     ;
                 cbSkin.ItemIndex      :=       FieldByName('skin').AsInteger       ;

               end;

           end;
      end;
end;




procedure Teecp_f.LoadEEcpGrid;
begin


   //   listBox1.Items.Clear ;

      grdList.RemoveRows(1,grdList.RowCount-1 );

      with dm_f.SqlTemp do
      begin
           Close;
           Sql.Clear;
           Sql.Add('select jin_Day , seqno from ma_eecp_basic');
           Sql.Add('Where  chart= :chart                  ');
           Sql.Add('group by  jin_Day , seqno                ');
           Sql.Add('order by  jin_Day desc, seqno            ');
           ParamByName('Chart').AsString       := ma_chart;
           open;

           if not isEmpty then
           begin
                 while not eof do
                 begin

                    grdList.AddRow;
                    //listBox1.Items.Add( fieldByname('jin_day').AsString );
                    grdList.cells[1, grdList.RowCount - 1] :=  fieldByname('jin_day').AsString ;
                    grdList.cells[2, grdList.RowCount - 1] :=
                          ReturnWeek2( strtodatetime(fieldByname('jin_day').AsString)) ;

                    grdList.cells[3, grdList.RowCount - 1] := fieldByname('seqno').AsString ;

                    next;

                 end;

           end;
      end;

      grdList.AutoNumberDirection := sdDescending;//sdAscending;
      grdList.AutoNumberCol(0);
end;


//select id as iid, row_number() over(order by  jin_day),  *   from ma_eecp_basic
//where kind='1'
//order by id



procedure Teecp_f.SaveImage( basic_id : integer);
var
     myBytes: array of Byte;
     aString: TStringList;

     A: string;
     i, bufferSize: integer;

     Strm : TMemoryStream;

begin


      with dm_f.SqlTemp do
      begin
           Close;
           Sql.Clear;
           Sql.Add('select *   from ma_eecp_image');
           Sql.Add('Where  chart= :chart and jin_day= :jin_day and basic_id=:basic_id');
           ParamByName('basic_id').AsInteger     := basic_id;
           ParamByName('Chart').AsString         := ma_chart;
           ParamByName('jin_day').Asstring       := formatDatetime('YYYY-MM-DD',dtDate.date);
           open;

           if isEmpty  then
           begin
           Close;
           Sql.Clear;
           Sql.Add('insert into ma_eecp_image');
           Sql.Add(' (chart  ,jin_day    ,sImage  ,sRemark,  basic_id) values   ');
           Sql.Add(' (:chart  , :jin_day    , :sImage  , :sRemark, :basic_id )');

          end
          else
          begin

            Close;
            Sql.Clear;
            Sql.Add('update  ma_eecp_image set');
            Sql.Add('sImage         = :sImage , ' );
            Sql.Add('sRemark        = :sRemark  ' );
            Sql.Add('Where  chart= :chart and jin_day= :jin_day and basic_id=:basic_id');

          end;
           ParamByName('Chart').AsString         :=  ma_chart;
           ParamByName('jin_day').Asstring       := formatDatetime('YYYY-MM-DD',dtDate.date);
           paramByName('sRemark').asMemo         :=  memRemark.Text;
           paramByName('basic_id').asInteger     :=  basic_id;


            try
              myBytes := TxInkCollector.Ink.Save(IPF_InkSerializedFormat, IPCM_Default); //(0,0);
           //   bufferSize := length(myBytes);
              Strm := TmemoryStream.Create;
            //  Strm.Write(myBytes[0],  bufferSize);

               Strm.Size := length(myBytes);
               Strm.Write(Pointer(myBytes)^, length(myBytes));
               Strm.Position := 0;

              paramByName('sImage').LoadFromStream(Strm, ftBlob);
            finally
              Strm.Free;
            end;

           execsql;

      end;



end;




procedure Teecp_f.LoadEEcpImage(basic_id: integer);
var
  BStream : TStream;
    BinData: array of byte;
    BinSize , i: integer;
     loadedInk: TinkDisp;
begin
      with dm_f.SqlTemp do
      begin
           Close;
           Sql.Clear;
           Sql.Add('select *  from ma_eecp_image');
           Sql.Add('Where  chart= :chart and jin_day=:jin_day and basic_id=:basic_id');
           ParamByName('basic_id').AsInteger     := basic_id;
           ParamByName('Chart').AsString         := ma_chart;
           ParamByName('jin_day').Asstring       := formatDatetime('YYYY-MM-DD',dtDate.date);
           open;

           if not isEmpty then
           begin

//                  BStream := CreateBlobStream(FieldByName('sRemark'), bmRead);
//                  memRemark.Lines.LoadFromStream(bStream);
//                  BStream.Free;

                  memRemark.Lines.Add(FieldByName('sRemark').AsString) ;



                  // Set cursor position :
                  memRemark.SelStart := 0;
                  memRemark.SelLength := 0;
                  // Go to cursor (have it visible) :
                  SendMessage(memRemark.Handle, EM_SCROLLCARET, 0, 0);




                    BStream :=    CreateBlobStream(FieldByName('sImage'),  bmRead);

                    BinSize := BStream.Size;
                    SetLength(BinData, BinSize);
                    Inc(BinSize);
                    BStream.Position := 0;
                 //   BStream.Read(Pointer(BinData)^,   BinSize);

                    for i := 0 to BinSize - 3 do
                    begin
                         BStream.Read(BinData[i], 1);
                    end;

                    BStream.Free;

                    loadedInk := TinkDisp.Create(pnlImage);
                    loadedInk.Load(BinData);
                    TxInkCollector.Enabled := false;
                    TxInkCollector.Ink := loadedInk.Clone;
                end;





       end;
end;



procedure Teecp_f.grdListClickCell(Sender: TObject; ARow, ACol: Integer);
begin

       LoadAll(aRow);

end;

procedure Teecp_f.grdListGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of

          0..2:
               begin
                    hAlign := taCenter;
                    Valign := vtaCenter;
               end;

     end;
end;

procedure Teecp_f.grdListRowChanging(Sender: TObject; OldRow, NewRow: Integer;
  var Allow: Boolean);
begin
  LoadAll(NewRow);
end;

procedure Teecp_f.LoadAll(aRow:integer);
begin

        if ARow >= 1 then
        begin
             fieldClear;

             AllClear;

             dtDate.Date := strtoDate(    grdList.Cells[1, aRow]  );

             edtSeqNo.Value  :=   grdList.Ints[3, aRow] ;

             LoadEEcp('1',edtSeqNo.Value );
             LoadEEcp('2',edtSeqNo.Value);
             LoadEEcpImage(edtSeqNo.Value);

        end;
end;

procedure Teecp_f.AllClear; //∆Ê ¿ÃπÃ¡ˆ ªË¡¶
var
     strokesToDelete: inkStrokes;
begin


     try
          strokesToDelete := TxInkCollector.Ink.Strokes;

          if not TxInkCollector.CollectingInk then
          begin
               TxInkCollector.Ink.DeleteStrokes(strokesToDelete);

               pnlImage.Refresh;
          end
          else
               Showmessage('Cannot clear ink while the ink collector is busy.');

          // myInkCollector.Ink.DeleteStrokes(strokesToDelete);
     except
          on E: Exception do ExceptLogging('Tmain_f.AllClear:' + E.Message);

     end;




end;

end.
