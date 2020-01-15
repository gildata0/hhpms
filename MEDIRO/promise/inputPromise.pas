unit inputPromise;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs, StdCtrls, EllipsLabel, AdvPanel, ExtCtrls, jpeg, AdvEdit,
     ComCtrls, AdvOfficeButtons, AdvGroupBox, AdvPageControl, Grids,
     BaseGrid, AdvGrid,   AdvGlowButton,
     uni,
     AdvCombo,    Mask, AdvTabSet, AdvObj, Menus,inifiles,
     ColCombo, ImgList, System.ImageList, AdvUtil, PlannerCal, AdvProgressBar,
     uReferHospPatListFrame;


Type
   PMyrec = ^TMyrec;
   TMyrec = Record
   name : string;
   add : string;
   age : integer;
end;

type
     TinputPromise_f = class(TForm)
    ColorDialog1: TColorDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ImageList3: TImageList;
    pnlYeyakList: TAdvPanel;
    pnlYeyakInfo: TAdvPanel;
    lblcphone: TLabel;
    DateTimePicker1: TDateTimePicker;
    edtname: TAdvEdit;
    edtChart: TAdvEdit;
    yList: TListBox;
    edtTel: TAdvEdit;
    cbGugan: TComboBox;
    cbSoyo: TComboBox;
    cbTeam: TComboBox;
    cbJundam: TComboBox;
    cbAmin: TComboBox;
    edtpass: TAdvEdit;
    memSulsik: TMemo;
    ComboBox1: TComboBox;
    cbEdit: TAdvOfficeCheckBox;
    cbsTime: TAdvMaskEdit;
    cbfTime: TAdvMaskEdit;
    AdvGlowButton1: TAdvGlowButton;
    pnlColor: TPanel;
    pnlCol1: TPanel;
    pnlCol2: TPanel;
    pnlCol3: TPanel;
    pnlCol4: TPanel;
    pnlCol5: TPanel;
    pnlCol6: TPanel;
    pnlCol7: TPanel;
    edtLock: TEdit;
    edtTel2: TAdvEdit;
    AdvGlowButton2: TAdvGlowButton;
    cbDoc2: TComboBox;
    edtWhisper: TMemo;
    edtJumin: TAdvEdit;
    cbJundam2: TComboBox;
    pnlCol8: TPanel;
    pnlCol9: TPanel;
    pnlCol10: TPanel;
    DateTimePicker2: TDateTimePicker;
    cbBunryu: TComboBox;
    cbFontColor: TColorBox;
    cbFontSize: TComboBox;
    cbBold: TCheckBox;
    cbDoc: TColumnComboBox;
    pnlChoiceDate: TAdvPanel;
    rgCall: TRadioGroup;
    btnCallConfirm: TAdvGlowButton;
    pnlCall: TAdvPanel;
    dtCall: TDateTimePicker;
    lstPatPhoneList: TListBox;
    AdvGlowButton3: TAdvGlowButton;
    edtTelOR: TEdit;
    AdvGlowButton4: TAdvGlowButton;
    pnlBottom: TPanel;
    lblStat: TLabel;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    pnlMain: TPanel;
    rgMinewon: TRadioGroup;
    btnNewon: TAdvGlowButton;
    cbTreatRoom: TColumnComboBox;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
    EllipsLabel4: TLabel;
    EllipsLabel5: TLabel;
    EllipsLabel6: TLabel;
    lblAppointNo: TLabel;
    EllipsLabel10: TLabel;
    EllipsLabel11: TLabel;
    thdytlrks: TLabel;
    EllipsLabel12: TLabel;
    EllipsLabel13: TLabel;
    EllipsLabel8: TLabel;
    EllipsLabel14: TLabel;
    EllipsLabel15: TLabel;
    EllipsLabel7: TLabel;
    lblChairName: TLabel;
    EllipsLabel9: TLabel;
    EllipsLabel16: TLabel;
    EllipsLabel17: TLabel;
    EllipsLabel18: TLabel;
    EllipsLabel1: TLabel;
    PlannerCalendar1: TPlannerCalendar;
    cbTel: TCheckBox;
    cbAlret: TCheckBox;
    cbSms: TCheckBox;
    AdvOfficeCheckBox1: TCheckBox;
    cbnoSMS: TCheckBox;
    cbAutoSendSMS: TCheckBox;
    AdvOfficeCheckBox2: TCheckBox;
    btnSave: TButton;
    btnCancel: TButton;
    pnlReferHospInfo: TPanel;
    EllipsLabel44: TLabel;
    EllipsLabel46: TLabel;
    edtReferHospCode: TAdvEdit;
    edtreferHospName: TAdvEdit;
    btnReferHospEdit: TButton;
    edtRHosp: TEdit;
    edtRHospID: TEdit;
    cbReferHospDoc: TComboBox;
    Edit1: TEdit;
    ProgressBarSoge: TAdvProgressBar;
    N3: TMenuItem;
    N4: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    grdPromise: TAdvStringGrid;
    ReferHospPatListFrame_fr1: TReferHospPatListFrame_fr;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure edtnameKeyPress(Sender: TObject; var Key: Char);
          procedure btnNewonClick(Sender: TObject);
          procedure yListDblClick(Sender: TObject);
          procedure edtpassChange(Sender: TObject);
          procedure cbSoyoChange(Sender: TObject);
          procedure AdvGlowButton1Click(Sender: TObject);
          procedure pnlCol1MouseDown(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure pnlCol1DblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure pnlColorClick(Sender: TObject);
          procedure rgMinewonClick(Sender: TObject);
          procedure AdvGlowButton2Click(Sender: TObject);
          procedure edtnameClick(Sender: TObject);
          procedure btnCallConfirmClick(Sender: TObject);
          procedure cbAlretClick(Sender: TObject);
          procedure edtTelChange(Sender: TObject);
          procedure cbDoc2Change(Sender: TObject);
          procedure grdPromiseGetCellColor(Sender: TObject; ARow, ACol:
               Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure grdPromiseGridHint(Sender: TObject; ARow, ACol: Integer;
               var hintstr: string);
          procedure rgCallClick(Sender: TObject);
          procedure edtnameMouseDown(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure pnlYeyakListCaptionClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cbBunryuChange(Sender: TObject);
    procedure memSulsikKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtChartKeyPress(Sender: TObject; var Key: Char);
    procedure cbFontColorSelect(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure grdPromiseGridWideHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: WideString);
    procedure cbnoSMSClick(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure PlannerCalendar1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure edtreferHospNameKeyPress(Sender: TObject; var Key: Char);
    procedure N4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
     private
          PnlArray: array of Tpanel;
          isNameChange : boolean;

          procedure sulSikCall(varBunryu:string);
          procedure BtnColorSet;
          procedure SetColorPnlArray;
          procedure savegogekPhone(id, chart, phone, sms, kind, reg_day:
               string);
    procedure savePromiseTemp;
    procedure LoadPromiseTemp;
    procedure GetHoliday;
//    procedure SendData(AData: string);

          { Private declarations }
     public
          { Public declarations }
          procedure FieldSet;
          procedure fieldclear;
          procedure PromiseSelect(chart: string);
          procedure loadCellPhoneList(varChart: string);
     end;
const
  WM_COPYDATA = WM_USER + 4242;

var
     inputPromise_f: TinputPromise_f;

implementation
uses uConfig,  uDM, uPromiseData, uGogekData,uGogekData_find, uPromiseFrame, uMain, uFunctions, uSendSMS,
      passInput, Sulsik, uReferHosp;
{$R *.dfm}

procedure SendRecord(Source, Target: HWnd; const Rec: TMyRec);
var
  Buffer: TMemoryStream;
  Len: Integer;
  CopyData: TCopyDataStruct;
begin
  Buffer := TMemoryStream.Create;
  try
    Len := Length(Rec.name);
    Buffer.Write(Len, SizeOf(Len));
    if Len > 0 then
      Buffer.Write(Rec.name[1], Len * SizeOf(Char));
    Len := Length(Rec.add);
    Buffer.Write(Len, SizeOf(Len));
    if Len > 0 then
      Buffer.Write(Rec.add[1], Len * SizeOf(Char));
    Buffer.Write(Rec.age, SizeOf(Rec.age));
    CopyData.dwData := 0;
    CopyData.cbData := Buffer.Size;
    CopyData.lpData := Buffer.Memory;
    SendMessage(Target, wm_CopyData, Source, LParam(@CopyData));
  finally
    Buffer.free;
  end;
end;


procedure TinputPromise_f.GetHoliday;
var
     i: integer;
     varYear, VarMonth, Varday: Variant;
     varuniQuery : TuniQuery;
begin
     varuniQuery := TuniQuery.create(application);
     varuniQuery.Connection := dm_f.uniConnection1;

  try
     with varuniQuery do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from gonghyu');
          // Sql.Add('select * from gonghyu where gh_day>=:gh_day1 and gh_day<=:gh_day2');
          // ParamByName('gh_day1').AsString := FormatDateTime('yyyy-mm-01',
          //        plannercalendargroup1.Date);
          // ParamByName('gh_day2').AsString := FormatDateTime('yyyy-mm-dd',
          //        IncDay(StrToDate(formatDateTime('yyyy-mm-01',
          //        incMonth(plannercalendargroup1.Date,1))),-1));
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin

                    with plannercalendar1.Events.Add do
                    begin
                         varYear := FormatDateTime('yyyy',
                              fieldByname('gh_day').Value);
                         varMonth := FormatDateTime('MM',
                              fieldByname('gh_day').Value);
                         varDay := FormatDateTime('DD',
                              fieldByname('gh_day').Value);
                         Date := EncodeDate(varYear, varMonth,
                              varDay);

                         Hint := fieldByname('gh_name').asString;

                         FontColor := ClRed;
                         Color     := clWhite;
                         Shape     := evsRectangle;
                    end;
                    next;

               end;
          end;
          plannercalendar1.EventHints  := true;
     end;
  finally
        varuniQuery.Free;
  end;
end;

procedure TinputPromise_f.SetColorPnlArray;
begin
     setLength(pnlArray, 11);
     pnlArray[1] := pnlCol1;
     pnlArray[2] := pnlCol2;
     pnlArray[3] := pnlCol3;
     pnlArray[4] := pnlCol4;
     pnlArray[5] := pnlCol5;
     pnlArray[6] := pnlCol6;
     pnlArray[7] := pnlCol7;
     pnlArray[8] := pnlCol8;
     pnlArray[9] := pnlCol9;
     pnlArray[10] := pnlCol10;
end;

procedure TinputPromise_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TinputPromise_f.FormDestroy(Sender: TObject);
begin
     inputPromise_f := nil;
end;

procedure TinputPromise_f.FormShow(Sender: TObject);

var
     FormInit: Tinifile;
     path: string;

     varinfoSul: string;
     varSulsik_FontColor: string;
begin

     caption := '���� ���';

     pagecontrol1.ActivePageIndex := 0;
     isNameChange := false;

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varinfoSul := FormInit.ReadString('ETC', 'SULSIKBUN', '');
     varSulsik_FontColor := FormInit.ReadString('ETC', 'SULIK_FONTCOLOR', 'clBlack');
     FormInit.Free;

     if configvalue.p_FixPromiseFontcolor <> 1 then
     begin

        if (varPrf_color <> '') and (varPrf_color <> 'clBlack') then
              cbFontColor.itemindex :=  cbFontColor.Items.IndexOf(varPrf_color)
        else
              cbFontColor.ItemIndex:=  cbFontColor.Items.IndexOf( varSulsik_FontColor ) ;
        end
     else
     begin
        if (varPrf_color <> '') and (varPrf_color <> 'clBlack') then
              cbFontColor.itemindex :=  cbFontColor.Items.IndexOf(varPrf_color)
        else
              inputPromise_f.cbFontColor.itemindex := 0;
     end;


    
     cbBunryu.text:=  varinfoSul;

     sulsikCall(varinfoSul);
     //  height := 390;

     GetHoliday;

     BtnColorSet;

     with grdpromise do
     begin

          colwidths[5] := 0;
          colwidths[6] := 0;
          colwidths[7] := 0;
          colwidths[8] := 0;
     end;




   with dm_f.sqlTemp do
   begin
        close;
        sql.Clear;
        sql.Add('Select * from ma_Sawon_basic                 ');
        sql.Add(' where  (sajikGub = ''2'' or sajikGub = ''0'')  and noUse <> ''1'' ');
        sql.Add(' order by sabun ');
        open;
         cbJunDam2.items.Clear;
        cbJunDam2.Items.Add('');
       // stringList2.Add('');
        if not isEmpty then
        begin
          while not eof do
          begin
           // stringList2.Add(fieldbyname('saname').asString);
            cbJunDam2.Items.Add(fieldbyname('saname').asString);
            next;
          end;
        end
    end;




     //fieldset;
     if configvalue.p_BeforeSendSms = 1 then
          cbSms.checked := true
     else
          cbSms.checked := false;

    
     if configvalue.P_AutoSendSMS <> 1 then
          cbAutoSendSMS.Checked := false
     else
          cbAutoSendSMS.Checked := true;

end;

procedure TinputPromise_f.FieldSet;
var
     i: integer;
     varInterval: integer;
     team_key : string;
begin
     fieldClear;

     edtpass.text := '';
     //pgcpromiseinput.
     varInterval := configvalue.p_timeinterval;

     cbSoyo.items.clear;

     for i := 1 to 10 do
     begin
          cbSoyo.items.Add(mintotime(varinterval * i));
     end;


     with dm_f.SqlWork do
     begin
          with cbTreatRoom do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;

          Close;
          Sql.Clear;
          Sql.text :=
               'Select * from ma_basic                                                        ' + #13#10 +
               'where  (code like  ''093%'') and (code <> ''09300'')                          ' + #13#10 +
               'and inuse <>  ''0''  and (remark = ''TREAT'' or remark = ''MED'' )            ' + #13#10 +
            //   'order by val,code                                        ';
               'order by sortorder                                       ';


          Open;
          if not isEmpty then
          begin
               while not eof do
               begin

                 with cbTreatRoom do
                    begin
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Style := [fsBold];
                               Font.Name:= '���� ���';
                               Font.Size := 12;
                         end;
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                               Font.Name:= '���� ���';
                               Font.Size := 12;
                         end;
                         with Columns.Add do
                         begin
                              Width := 200;
                               Font.Name:= '���� ���';
                               Font.Size := 12;
                         end;

                         with ComboItems.Add do
                         begin
                            //  Strings.Add(FieldByName('team_name').AsString);
                            //  Strings.Add(FieldByName('team_color').AsString);
                            //  Strings.Add(FieldByName('team_doctor1').AsString);
                            Strings.Add(trim(FieldByName('val').AsString));     //Code
                            Strings.Add(trim(FieldByName('remark').AsString));  //code?
                            Strings.Add(trim(FieldByName('disp').AsString));

                         end;
                    end;

                  //  cbTreatRoom.items.add(FieldByName('disp').AsString);




                    next;
               end;
         //      cbTreatRoom.ItemIndex := 0;
          end
          else
          begin
             //  cbTreatRoom.items.add('����ũ');
             //  cbTreatRoom.ItemIndex := 0;
          end;
     end;


     with dm_f.SqlWork do
     begin
          cbTeam.items.Clear;
          cbDoc2.items.Clear;

          Close;
          Sql.Clear;
          Sql.Add('select * from ma_team');
      //    Sql.Add('order by convert(int, team_name)');
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbTeam.items.Add(FieldByName('team_name').AsString);
                    cbDoc2.items.Add(FieldByName('team_Doctor1').AsString);
                    next;
               end;
               // cbteam.ItemIndex := 0;
          end;

          cbJundam.items.Clear;
          cbJundam2.items.Clear;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_Sawon_basic');
          Sql.Add('Where  (sajikGub = ''2'' or sajikGub = ''0'') and nouse <> ''1'' ');
          Sql.Add(' order by jubsu_order, sabun ');
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbJundam.items.add(FieldByName('saname').AsString);
                    cbJundam2.items.add(FieldByName('saname').AsString);
                    next;
               end;
          end;

     end;


     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
     LoadDoclist(cbDoc, team_key);


end;

procedure TinputPromise_f.btnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TinputPromise_f.savegogekPhone(id, chart,
     phone: string;
     sms: string;
     kind: string;
     reg_day: string);
const
     dataSelect = 'select id from ma_gogek_phone' + #10#13 +
          'where chart=:chart and phone=:phone and kind=:kind';
     dataAllSelect = 'select * from ma_gogek_phone' + #10#13 +
          'where chart=:chart and phone=:phone and kind=:kind and sms=:sms and reg_day=:reg_day';

     dataInsert =
          'insert into ma_gogek_phone' + #10#13 +
          '( chart, phone, kind, sms, reg_day) values' + #10#13 +
          '( :chart, :phone, :kind, :sms, :reg_day)';
     dataUpdate =
          'update ma_gogek_phone set' + #10#13 +
          'phone=:phone' + #10#13
          +
          'where id= :id';
var
     varaPhone: string;

begin
     varaPhone := lblcphone.caption;
     try
          //�����ÿ��� �Է�â�� ������ ������...�� ���Ѵ�.
          if phone <> '' then
          begin
               with dm_f.SqlWork do
               begin
                    close;
                    sql.clear;
                    sql.text := dataselect;
                    paramByname('chart').asstring := chart;
                    //�ҷ��Դ� �ڵ�����ȣ�� ���� ���� ã��.
                    paramByname('phone').asstring := varaphone;
                    paramByname('kind').asstring := '2';
                    open;
                    if isEmpty then
                    begin
                         close;
                         sql.clear;
                         sql.text := dataInsert;
                         ParamByName('chart').AsString := chart;
                         ParamByName('sms').AsString := sms;
                         ParamByName('kind').AsString := kind;
                         ParamByName('reg_day').AsString := reg_day;
                    end
                    else
                    begin
                         id := fieldByName('id').asString;
                         close;
                         sql.clear;
                         sql.text := dataupdate;
                         ParamByName('id').AsString := id;
                    end;
                    ParamByName('phone').AsString := phone;
                    execsql;

               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('save_gogek_phone' + E.Message);
          end;
     end;
end;

procedure TinputPromise_f.btnSaveClick(Sender: TObject);
var
     varidn, i: integer;
     varDate, vartime, varGugan, varRemark, varMemo, varNoSMS,
     varf_color, varf_Size,
          varTeam, varDoc,
          varChart, varName, vartel, varInterval,
          varColor, varJundam, vardam, varJundam2: string;

     varf_bold:boolean;
     varAlret, varLock: string;
     varIns: boolean;
     varTong, varGuk, varBun, varSDate0 ,varSDate, varSendTime, varContent, varPos:
     string;

     varTelyeyak: string;
     varAfterSendDate: integer;

     aData : PMyrec; //Send Promise Data
     teamCode : string;


      varMonth ,
      varDay    ,
      varhOUR   ,
      varMin    :STRING;


      rHospCode: string;
      rHospDocName : string;

      varCrmResult : integer;
      nIDN : integer;
      nRpPK : integer;

begin




     if edtChart.Text = '' then
     begin
          if Application.MessageBox(PChar('�ش�ȯ���� íƮ��ȣ�� �����ϴ�.�׷��� �����Ͻðڽ��ϱ�?'),
               '��������', MB_YESNO) = IDNO then
          begin
               exit;
          end
          else
          begin
              cbTel.checked:=true;
          end;

     end;




     varAfterSendDate := configvalue.p_BeforSms;
     varSDate0 := formatDateTime('YYYYMMDD', DateTimePicker2.Date -
          varAfterSendDate);  //datetimepicker1���� �����ϱ� ���� ������


     //���� ��ĥ���� �������ΰ�?
     varSDate := formatDateTime('YYYYMMDD', DateTimePicker1.Date -
          varAfterSendDate);
     //���� ���� ���� , �������� -  varAfterSendDate(��ĥ��)
     varSendTime := configvalue.p_SmsBeforTime;
     //������ �ð�, ȯ�漳������ ���ؼ� �ϰ�����
     varContent := configvalue.p_SmsContent; //����Ȯ�� �޽���

     varDate := formatDateTime('YYYY-MM-DD', DateTimePicker1.Date); //��������

     varMonth   :=   formatDateTime('MM', DateTimePicker1.Date) ;
     varDay     :=   formatDateTime('dd', DateTimePicker1.Date) ;
     varHour    := COPY(cbsTime.Text,1,2);
     varMin     := COPY(cbsTime.Text,4,2);


      varContent := StringReplace(varContent, '+ddd+',
           trim(edtname.text), [rfReplaceAll, rfIgnoreCase]);

      varContent := StringReplace(varContent, '+rr+',
           varMonth, [rfReplaceAll, rfIgnoreCase]);

      varContent := StringReplace(varContent, '+dd+',
           varDay,
           [rfReplaceAll, rfIgnoreCase]);
      varContent := StringReplace(varContent, '+hh+',
           varHour,
           [rfReplaceAll, rfIgnoreCase]);

      varContent := StringReplace(varContent, '+mm+',
           varMin,
           [rfReplaceAll, rfIgnoreCase]);









     if trim(lblAppointno.Caption) <> '' then
          varidn := strtoint(lblAppointno.Caption)
     else
          varidn := 0;


         varTime := cbsTime.Text ;


    // varGugan := cbGugan.text ;
//     varGugan := inttostr( strtoint(cbGugan.text) +  (columnStart-1));
//     varGugan := '0';

     varGugan := inttostr(cbTreatRoom.ItemIndex);//cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]);

     varRemark := trim(memSulsik.text);
     varMemo := trim(edtWhisper.text);

      rHospCode    := edtreferHospCode.Text;
      rHospDocName := cbReferHospDoc.Text;


     //���� ���õ��� �ʾ����� ������ 1�� ������...
//     if cbteam.text <> '' then
//          varTeam := cbTeam.text
//     else
//          varTeam := '1';

     varDoc :=      trim(cbDoc.ColumnItems[cbDoc.itemindex, 1]);  //saID

     teamCode :=   cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];//
                 //  trim(cbDoc.ColumnItems[cbDoc.itemindex, 0]);

     varTeam   :=  teamCode ;


     varJundam := cbJunDam.text;
     varJundam2 := cbJunDam2.text;

     if cbAlret.checked = true then //��ȭ��û
          vardam := formatDateTime('YYYY-MM-DD', dtCall.date)
     else
          vardam := '';


     if cbnoSMS.checked = true then //SMS���� ����
          varNoSMS := '1'
     else
          varNoSMS := '';






     varf_color:= colortostring(cbFontcolor.Selected);
     varf_size:=  cbfontsize.text;


     varf_bold := cbbold.checked;


     varColor := colortostring(pnlColor.Color);
     varChart := trim(edtChart.text);
     varname := trim(edtname.text);
     varTel := trim(edtTel.text);

     varTong := substr(edtTel.text, 1, '-');
     varGuk := substr(edtTel.text, 2, '-');
     varBun := substr(edtTel.text, 3, '-');

     varinterval := inttostr(timetoMin(cbSoyo.text));
     if cbAlret.checked = true then
          varAlret := '1' // cbaMin.text
     else
          varAlret := '0';

     if cbEdit.checked = true then
     begin
          if varname = '' then
          begin
               varname := edtLock.text;
               varPos := '8' //���� ��ݿ�  (���� ��)
          end;
          varLock := '1'

     end
     else
     begin
          varLock := '0';
     end;

     if cbTel.checked = true then
     begin
          varTelYeyak := '1'
     end
     else
     begin
          varTelYeyak := '0';
     end;


     //����ð� Ȯ��
    if  length(trim(varTime)) <> 5 then
     begin
        showmessage('�ð� ������ Ȯ���Ͻʽÿ�.');
        exit;
     end;




     if lblAppointNo.Caption <> '' then
     BEGIN
          //���� ���൥���Ͱ� �ִ°���...
          //ToDo : ������ �����ϴ� ���� ���� �������۸޽����� ������� ���ο� ����޽����� �ۼ��� �־�� �Ѵ�.
         varIns := false;



               if configvalue.p_BeforeSendSms = 1 then
               begin


                   if CancelSMS(main_f.SMSCALLMSG1,
                         '', //varGogekName: string;
                         '', //varGogekId: string;
                         substr(varPrTel, 1, '-'),
                         substr(varPrTel, 2, '-'),
                         substr(varPrTel, 3, '-'),
                         varSdate0 ) = 1 then
                    begin
                         Promise_UpdateSendedReserveSMS(varPrDay,
                              varPrGugan, varprTime,
                              varPrSulsik, varPrTeam, varPrChart,
                              varPrName,
                              varPrtel, varPrInterval, '0', varidn);

                    end
                    else
                    begin
                         showmessage('�������� ��� ����.');

                    end;

                   //�θ� ��ȭ��ȣã�Ƽ� �������ۻ���...

                                //���� ���۽ÿ� �θ𿡰Ե� �����ؾ� �Ѵ�.


                      try
                            if  lstPatPhoneList.Items.Count > 0 then
                            begin

                                for i:= 0 to   lstPatPhoneList.Items.Count -1 do
                                begin

                                   varTong:= substr( lstPatPhoneList.Items[i],1, '-') ;
                                   varGuk:=  substr( lstPatPhoneList.Items[i],2, '-') ;
                                   varBun:=  substr( lstPatPhoneList.Items[i],3, '-') ;


                                   if CancelSMS(main_f.SMSCALLMSG1,
                                         '', //varGogekName: string;
                                         '', //varGogekId: string;
                                         varTong,
                                         varGuk,
                                         varBun,
                                         varSdate0 ) = 1 then
                                    begin
                                         Promise_UpdateSendedReserveSMS(varPrDay,
                                              varPrGugan, varprTime,
                                              varPrSulsik, varPrTeam, varPrChart,
                                              varPrName,
                                              varPrtel, varPrInterval, '0', varidn);

                                    end
                                    else
                                    begin
                                         showmessage('�θ� �������� ��� ����.');

                                    end;

                                end;

                            end;
                      except

                      end;




               end;


     end
     else
     begin
          varins := true;
     end;






     if promise_saveData(varIns,
      varDate,
      varGugan,
          vartime,
          varRemark,
          varMemo,
          varteam,
          varDoc,
          varChart,
          varname, varTel, varinterval, varAlret,
          varLock, varJundam,
          vardam,
          rHospDocName,
          rHospCode,
          varColor,
          varJundam2,
          varNoSMS, varf_color, varf_size, varf_bold,
          nIDn,
          varTelYeyak,
          varIdn, varPos) = true then
     begin

          if promiseFrame_fr.cbDamteam.itemindex > 0 then
               varTeam := cbTeam.text
          else
               varTeam := '0';

          {   DbdataToPlan(Promisemain_f.planner1,
                    Promisemain_f.popupmenu1,
                    Promisemain_f.popupmenu3,
                    varDate,
                    varTeam, Promisemain_f.timeinterval,
                    Promisemain_f.starttime);
           }

          //ToDo : ����� ������ ��������.

{           SendData(
      //     varIns + '|' +
          inttostr( varIdn ) + '|' +
           varDate + '|' +
           varGugan + '|' +
          vartime + '|' +
          varRemark + '|' +
          varMemo + '|' +
          varteam + '|' +
          varDoc + '|' +
          varChart + '|' +
          varname + '|' +
          varTel + '|' +
          varinterval + '|' +
          varPos);
}

{
         new(aData);
         aData.Name := 'MyName';
         aData.Add := 'My Address';
         aData.Age := 18;
         SendRecord(0,FindWindow ('TPromiseAppFrm','PromiseAppFrm') ,  aData^ ) ;
          //   Source, Target: HWnd; const Rec: TMyRec);
}




          // ToDo: ���� ����  ===> ���������� ����.
         // {$IFNDEF DEBUG}
          if isReferer = true then
          begin

            if ChangeRPStatus(
                  ma_rp_RequestPK,
                  '3',
                  edtChart.Text,
                  edtName.Text,
                  now) = true then
            begin
                   //ma_promise �� rpPk���� �־�����.
                   Promise_Update_RpPK(nIDn, ma_rp_RequestPK );

            end
            else
            begin
                   showmessage('�������º��� ����.');
            end;


            isReferer := False;


          end
          else
          begin
          //ToDO : ���� �ִ°��� ���� ����.
//             nRpPK := 0;
//            //���� �Ҷ� ����.
//            //ToDo : �������� ������ ��� �Ƿں����� ������ �����ض�.
//            if trim(edtReferHospCode.Text) <> '' then
//             begin
//                // 20191113
//                 if  saveRequest(
//                        nRpPK,
//                        '3',//aState:  //3: ����Ϸ�
//                        edtReferHospCode.Text,
//                        '',//userToken: string; // , varchar(80),>
//                        edtchart.text,// patientID: string; // , nvarchar(50),>
//                        '',//jwt: string; // , varchar(350),>
//                        '',//jwtExpTime: string; // , char(13),>
//                        'N',//cosign: string; // , char(1),>
//                        edtRHospID.Text , //hospitalEmail: string; // , varchar(30),>
//                        edtreferHospName.Text , //hospitalName: string; // , nvarchar(50),>
//                        '',//hospitalPhone: string; // , varchar(13),>
//                        cbReferHospDoc.Text,// doctorName: string; // , nvarchar(50),>
//                        edtName.Text,// patientName: string; // , nvarchar(50),>
//                        edtTel.Text,// patientPhone: string; // , varchar(13),>
//                        memSulsik.text,// content: string; // , ntext,>
//                        'Y',// viewHospital: string; // , char(1),>
//                        'Y',//viewAdmin: string; // , char(1),>
//                        0,//dynCatePK: integer; // , int,>
//                        '',//dynContent: string; // , ntext,>
//                        now,//dynDate: TdateTime; // , smalldatetime,>
//                        now,//studyDate: TdateTime; // , smalldatetime,>
//                        now,//requestDate: TdateTime; // , smalldatetime,>
//                        now,//modifyDate: TdateTime; // , smalldatetime,>)
//                        nRpPK) = true then
//                        begin
//
//
//                           Promise_Update_RpPK(nIDn, nRpPK );
//
//                        end;
//              end;
          end;
          //{$ENDIF DEBUG}

          if cbSms.Checked
               and (not isSendedReserveSMS(varidn)) then
          begin

               //SMS��������

               if SendMessage_One(main_f.SMSCALLMSG1,
                    edtname.text,
                    edtChart.text,
                    varDate,   // ��������
                    varTime,   // ����ð�.
                    varTong,
                    varGuk,
                    varBun,
                    varSDate,  //SMS  ��������
                    varsendTime,  //SMS���� �ð�
                    varContent) = 1 then
               begin

                    Promise_UpdateSendedReserveSMS(varDate, varGugan, varTime,
                         varRemark, varTeam, varChart, varName,
                         vartel, varInterval, '1', varIdn);

               end
               else
               begin

                    showmessage('SMS���۽���');

               end;



               //���� ���۽ÿ� �θ𿡰Ե� �����ؾ� �Ѵ�.


              try
                    if  lstPatPhoneList.Items.Count > 0 then
                    begin

                        for i:= 0 to   lstPatPhoneList.Items.Count -1 do
                        begin

                           varTong:= substr( lstPatPhoneList.Items[i],1, '-') ;
                           varGuk:=  substr( lstPatPhoneList.Items[i],2, '-') ;
                           varBun:=  substr( lstPatPhoneList.Items[i],3, '-') ;
                           if SendMessage_One(main_f.SMSCALLMSG1,
                                edtname.text,
                                edtChart.text,
                                varDate,   // ��������
                                varTime,   // ����ð�.
                                varTong,
                                varGuk,
                                varBun,
                                varSDate,  //SMS  ��������
                                varsendTime,  //SMS���� �ð�
                                varContent) = 1 then
                           begin

                                 Promise_UpdateSendedNowSMS(varDate, varGugan, varTime,
                                      varRemark, varTeam, varChart, varName,
                                      vartel, varInterval, '1', varIdn);   //1: ����� �������

                            end
                            else
                            begin

                                 showmessage(' SMS���۽��� : '+varTong+'-'+varGuk+'-'+varBun );

                            end;
                        end;

                    end;
              except
              
              end;



          end;

          //Recall���� ������ Ȯ���ؼ� ���ݿϷ� ó�� �Ұ�����.
          //��Ʈ��ȣ, ���ݹ̳��� ���� �����ֱ�

            varCrmResult := LoadRecallNPromise(varChart) ;

             case varCrmResult of
                   1: //��������.
                          begin
                                 if
                                        Application.MessageBox(pchar('���� ���� ���೻���� �ֽ��ϴ�.' + #10#13 +
                                        'Ȯ���Ͻð� ó���Ͻðڽ��ϱ�?'),
                                        '����ó�� Ȯ��', MB_YESNO) = 6 then
                                 begin
                                        main_f.showGogekAlret(ma_chart, ma_paname, 0);    //0:����â 1://����â

                                 end;

                          end;
                   2: //��������.
                          begin
                                 if
                                        Application.MessageBox(pchar('���� ���� ���ݳ����� �ֽ��ϴ�.' + #10#13 +
                                        'Ȯ���Ͻð� ó���Ͻðڽ��ϱ�?'),
                                        '����ó�� Ȯ��', MB_YESNO) = 6 then
                                 begin
                                        main_f.showGogekAlret(ma_chart, ma_paname,1);   //0:����â 1://����â

                                 end;
                          end;
                   3: //����,��������
                          begin
                                 if
                                        Application.MessageBox(pchar('���� ���� ���೻���� ���ݳ����� �ֽ��ϴ�.' + #10#13 +
                                        'Ȯ���Ͻð� ó���Ͻðڽ��ϱ�?'),
                                        '���� �� ����ó�� Ȯ��', MB_YESNO) = 6
                                               then
                                 begin
                                        main_f.showGogekAlret(ma_chart, ma_paname, 1);  //0:����â 1://����â

                                 end;
                          end;

            end;


     end;


     //     Promise_UpdateMemo(strtoint(lblAppointno.Caption), edtWhisper.text);
     if (trim(edtTel.text) <> '') and (trim(varChart) <> '') then
     begin
          savegogekPhone('', varchart,
               edtTel.text,
               '1', //sms���ۿ���
               '2', //kind 1:�Ϲ���ȭ 2:�޴���
               vardate);

          //ToDo ��ȭ��ȣ �ٲ�� Ȯ���ؼ� ���� ���� ���೻�� ��ȭ��ȣ �����Ѵ�. ==<������
          //���೻�� ��� ��ȭ��ȣ  �ٲ۴�.
         //ToDo : �̰��� ������ �� ȯ���� ��� ������ ������Ʈ�Ǿ Ʈ���Ű� ������ �߻��ȴ�.
         //�ϴ� ������ȭ��ȣ�� �����Էµ� ��ȭ��ȣ�� ������ ��������.
         if edtTel.text <> edtTelOr.text then
             UpdatePromiseCPhone(varIdn, trim(varChart),  edtTel.text);


     end;
     //���� �Ŀ��� �������� �ٲ� ������ ��ȯ.
     lblcphone.caption := edtTel.text;


     //����� ���ÿ� SMS���� - �̰��� �̿��ؼ� �����, ��ҽ� ���� ������ �Ѵ�...
     if cbAutoSendSms.Checked then
     begin

          {(VarSMSCallMsg: TSMSCALLMSG;
           varGogekName: string;
           varGogekId: string;
           varDate: string;     //������
           varyTime: string;    //����ð�
           varRecvNoTong: string;
           varRecvNoGuk: string;
           varRecvNoBun: string;
           varCont: string)}



           //SMS���۹��� üũ�Ǿ����� �ʴٸ�...
           if cbNosms.checked = false then
           begin

               if SendMessage_One_Now(
                    main_f.SMSCALLMSG1,
                    edtname.text,
                    edtChart.text,
                    varDate,   //������
                    varTime,  //����ð�
                    varTong,
                    varGuk,
                    varBun,
                    varContent) = 1 then
               begin

                    Promise_UpdateSendedNowSMS(varDate, varGugan, varTime,
                         varRemark, varTeam, varChart, varName,
                         vartel, varInterval, '1', varIdn);   //1: ����� �������

               end
               else
               begin

                    showmessage(' SMS���۽��� : '+varTong+'-'+varGuk+'-'+varBun );

               end;

           end;



            //��ȣ�� �ڵ��� �����ϱ�� �Ǿ��ִٸ�...

              if  lstPatPhoneList.Items.Count > 0 then
              begin

                  for i:= 0 to   lstPatPhoneList.Items.Count -1 do
                  begin

                     varTong:= substr( lstPatPhoneList.Items[i],1, '-') ;
                     varGuk:=  substr( lstPatPhoneList.Items[i],2, '-') ;
                     varBun:=  substr( lstPatPhoneList.Items[i],3, '-') ;
                     if SendMessage_One_Now(main_f.SMSCALLMSG1,
                           edtname.text,
                           edtChart.text,
                           varDate,   //������
                           varTime,  //����ð�
                           varTong,
                           varGuk,
                           varBun,
                           varContent) = 1 then
                      begin

                           Promise_UpdateSendedNowSMS(varDate, varGugan, varTime,
                                varRemark, varTeam, varChart, varName,
                                vartel, varInterval, '1', varIdn);   //1: ����� �������

                      end
                      else
                      begin

                           showmessage(' SMS���۽��� : '+varTong+'-'+varGuk+'-'+varBun );

                      end;
                  end;

              end;

     end;

     isNameChange := False;
     //       close;


end;
procedure TinputPromise_f.loadCellPhoneList(varChart:string);
begin
           lstPatPhoneList.Items.clear;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;

               Sql.Add('SELECT * FROM ma_gogek_phone ');
               Sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
               ParamByName('SMS').AsString := '0'; //���⼭�� 0�ΰ��� SMS�����ϱ�� �Ѱ��� �ҷ��ð���....
               ParamByName('chart').AsString :=  varChart;
               Open;
               first;
               while not  eof do
               begin
                    lstPatPhoneList.Items.Add(FieldByName('phone').AsString) ;
                    next;
               end;
          end;

end;

procedure TinputPromise_f.edtnameKeyPress(Sender: TObject; var Key: Char);
begin

     if key = #13 then
     begin
          edtChart.text := '';
          if LoadGogekData_name(edtname.text, main_f.progressbar, 0, varViewAll ) = 1 then //2011.8
          begin
               edtName.text := ma_PaName;
               edtChart.text := ma_Chart;
               edtjumin.text := copy(ma_jumin, 1, 6) + '-' +
                    copy(ma_jumin, 7, 7);
               edttel.text := ma_c_Phone;
               lblcphone.caption := ma_c_Phone;
               edttel2.text := ma_h_Phone;

            //   cbdoc.ItemIndex := cbDoc.ComboItems.IndexOf(ma_doc).y;
                 cbdoc2.ItemIndex := cbDoc2.Items.IndexOf(ma_doc);


          end
          else
          begin
               edttel.setfocus;
          end;

          //2012.3.22  .. ma_Chart �� �ϸ� ���� ���ο� ����ִ� íƮ��ȣ�� üũ�ȴ�.  ���� edtChart.text �� �ٲ���
          // ��ȭ��ȯ�ΰ�� LoadGogekData_name ���� ã�Ƶ� ���⶧���� ma_PaName = '' �̴�. ����  edtName.text �� �ٲ���
          case Promise_isSelectData(edtChart.text, formatDateTime('YYYY-MM-DD',
               DateTimePicker1.Date), cbTeam.text) of
               2:
                    begin

                         if
                              Application.MessageBox(PChar('���� ���� �̹� ���೻���� �ֽ��ϴ�.' + #10#13 + '������ �߰��մϱ�?'),
                              '�����߰�', MB_YESNO) = IDNO then
                         begin

                              PromiseFrame_fr.searchPromise(edtName.text);

                              close;
                         end;

                    end;
               1: //���ú��� ����
                    begin
                         showmessage('����Ϸ��� ���� ���ú��� ���� �ֽ��ϴ�.');
                         close;

                    end;
          end;

          PromiseSelect(edtChart.text);

     end;

end;

procedure TinputPromise_f.btnNewonClick(Sender: TObject);
var
    jubsuID : integer ;//for Out
begin
     //����ó�� ��
     //��ⱸ��
     // '0', '������'
     // '1', '�����Ϸ�'
     // '2', '�������' ����Ϸ�
     // '3', '������'
     if
          jubsuSave(edtChart.Text,
              cbteam.text,
              cbDoc2.Text,
              cbjundam.Text,
              '0', //��ⱸ��
              formatdatetime('yyyy-mm-dd', now),
              now,
              '', //������
              '', //�ֹ�
              '', //�����ȣ
              edtname.text,
              edtTel.text,
              memsulsik.text,       //���೻��
              edtwhisper.text,      //�������
              lblappointno.caption, //���� idn
              cbstime.text,         //���� �ð�
              0,                    //Jongbyul
              1, //����
              '', //Sanjung  --Ư���ڵ� v193
              '',    //
              0, //health
              '', //pregnan
              '', //chasangNo
              '', //bonType
              '', //yujikum
              '', //Kwamok
               trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 0]),//'',  //TreatRoom
              '0',  //isInPat
              '' ,  //inPat_time
              0 ,  //Reparal PAD PK===>rpPK
              '0', //isOutpat
               '',//out_patTime,
               0,//jaboID
              trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 4]),//doc_code
              '0', //isJiwon
              '0' //isBohum100
              )


     > 0 then
     begin
     //ToDo : repair
//          main_f.jubsuselect(main_f.grdDaegi,
//               formatdatetime('yyyy-mm-dd', promiseFrame_fr.dpsDate.Date),
//               //����
//               inttostr(main_f.cbdaegiGubun.itemindex - 1), //����
//               main_f.cbteam.Text); //��
     end;

     Close;
end;

procedure TinputPromise_f.yListDblClick(Sender: TObject);
begin


      if  yList.ItemIndex < 0 then exit;

     if memSulsik.text <> '' then
          memSulsik.Text := memsulsik.text + ' ' +
               yList.Items[ylist.ItemIndex]
     else
          memSulsik.Text := yList.Items[ylist.ItemIndex]

end;

procedure TinputPromise_f.edtpassChange(Sender: TObject);
begin
     if edtpass.text = '11' + formatdatetime('dd', now) then
          cbEdit.Enabled := true;
end;

procedure TinputPromise_f.edtreferHospNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) and (length(edtreferHospName.Text) <> 0) then
  begin
    // ShowMessage(edtSoge.text);

    LoadResultReferHosp := LoadReferHosp(edtreferHospName.Text, ProgressBarSoge);

    case LoadResultReferHosp of
      1: // mrOk�����ִ� ���
        begin

    //    lblReferHospID        :=
          edtreferHospName.Text := ma_referHospName;
          edtReferHospCode.Text := ma_ReferHospCode;
          edtRHosp.Text         := ma_RHosp;
          edtRHospID.Text       := ma_RHospID;


         if ma_ReferHospCode <> ''then
            cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(ma_ReferHospCode) )
         else
            cbReferHospDoc.Clear;

         cbReferHospDoc.ItemIndex := 0;

        end;
      2: // mrCancel����Ѱ��
        begin
          edtreferHospName.Text := '';
          edtReferHospCode.Text := '';
          edtRHosp.Text         := '';
          edtRHospID.Text       := '';
           cbReferHospDoc.Clear;
        end;
      6: // mrYes���� �Է��Ѱ��
        begin

          // edtSoge2.SetFocus;
          if not Assigned(referHosp_f) then
          begin
            referHosp_f := TreferHosp_f.Create(application);
            referHosp_f.varmode := 0;

            // regSogeNeyuk_f.edtsogeja.Text :=
            // edtSoge.Text;
            ma_referHospName := edtreferHospName.Text;
            referHosp_f.lblid.Caption := '';
            // regSogeNeyuk_f.FieldSetting;
            referHosp_f.FieldSetting(true) ;
            referHosp_f.Show;
          end;







        end;
    end;

  end;

end;

procedure TinputPromise_f.cbSoyoChange(Sender: TObject);
begin
     cbFtime.Text := mintotime(timetomin(cbStime.text) +
          timetomin(cbSoyo.text));
end;

procedure TinputPromise_f.cbTreatRoomSelect(Sender: TObject);
var
    team_key : string;
begin
   // showmessage('');
     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
     LoadDoclist(cbDoc, team_key);
end;

procedure TinputPromise_f.sulSikCall(varBunryu:string);
begin
     //     YSulTeam := 'YSul_' + cbTeam.Text;

     //���ĸ���Ʈ�� ��� �ҷ��´�.
     //������...

     YList.clear;
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_promise_sulsik');
          Sql.Add('where sulBunryu=:sulBunryu');
          Sql.Add('order by SulOrder');
          paramByName('sulBunryu').asString:=varBunryu;
          // Sql.Add('order by SulName');
          Open;

          while not eof do
          begin
               YList.Items.Add(FieldByName('Sulname').AsString);
               next;
          end;
     end;

end;

procedure TinputPromise_f.AdvGlowButton1Click(Sender: TObject);
begin
     sulsik_f := Tsulsik_f.Create(application);
     sulsik_f.Showmodal;

end;

procedure TinputPromise_f.pnlCol1MouseDown(Sender: TObject;
     Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if Button = mbLeft then //���� ���콺 ��ư������...
     begin
          pnlColor.Color := (Sender as TPanel).Color;

          if   configvalue.P_AutoNoSMS = 1  then
          begin
               if  pnlColor.Color = 255 then  //clRed
               begin

                   cbNoSMS.checked:=true;
               end
               else
                  if  pnlColor.Color = clWhite then  //clRed
                  begin

                      cbNoSMS.checked:=false;
                  end
          end;
     end
     else
     begin
          { memColorHint.text := '';
           with Dm_f.SqlWork do
           begin
                Close;
                Sql.Clear;
                Sql.Add('select * from YColor');
                Sql.Add('Where ColorCode=:ColorCode');
                paramByname('ColorCode').AsString := (Sender as TGradRoundBtn).Caption;
                open;
                if not isEmpty then
                begin
                     memColorHint.text := fieldByname('colorRemark').asString;
                end;
           end;

           lbllabelCap.Caption := (Sender as TGradRoundBtn).caption;
           pnlRegiColor.Caption := (Sender as TGradRoundBtn).caption + '��° ���� �ǹ�';
           pnlRegiColor.ManualFloat(Rect(800, 195, 1020, 300));
           pnlRegiColor.BringToFront;

           pnlRegiColor.Visible := True;
           memColorHint.SetFocus;

            }

     end;

end;

procedure TinputPromise_f.pnlCol1DblClick(Sender: TObject);
begin
     if ColorDialog1.Execute then
     begin
          (Sender as TPanel).Color := ColorDialog1.Color;
     end;
     //  showmessage((Sender as TGradRoundBtn).Caption);
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_promise_color');
          Sql.Add('Where ColorCode=:ColorCode');
          paramByname('ColorCode').AsString := (Sender as TPanel).Caption;
          open;
          if isEmpty then
          begin
               Close;
               Sql.Clear;
               Sql.Add('insert into ma_promise_color');
               Sql.Add('(colorCode, Ycolor, ColorRemark) values');
               Sql.Add('(:colorCode, :Ycolor, :ColorRemark)');
               paramByname('ColorCode').AsString := (Sender as
                    Tpanel).Caption;
               paramByname('Ycolor').AsString :=
                    ColorToString(ColorDialog1.Color);
               paramByname('colorRemark').AsString := '';
               execsql;
          end
          else
          begin
               Close;
               Sql.Clear;
               Sql.Add('update  ma_promise_color set');
               Sql.Add(' Ycolor=:Ycolor, ColorRemark=:colorRemark');
               Sql.Add('where colorCode=:colorCode');
               paramByname('ColorCode').AsString := (Sender as
                    Tpanel).Caption;
               paramByname('Ycolor').AsString :=
                    ColortoString(ColorDialog1.Color);
               paramByname('colorRemark').AsString := '';
               execsql;
          end;
     end;

end;

procedure TinputPromise_f.BtnColorSet;
var
     varcode: integer;
     varRemark, varColor: string;
begin

     {  pnlArray[1].Color := ClWhite;
       pnlArray[2].Color := ClWhite;
       pnlArray[3].Color := ClWhite;
       pnlArray[4].Color := ClWhite;
       pnlArray[5].Color := ClWhite;
       pnlArray[6].Color := ClWhite;
       pnlArray[7].Color := ClWhite;
       pnlArray[8].Color := ClWhite;
       pnlArray[9].Color := ClWhite;
       pnlArray[10].Color := ClWhite;   }

     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_promise_Color');
          Sql.Add('order by ColorCode  ');
          Open;
          first;
          if not isEmpty then
          begin
               while not eof do
               begin
                    varcode := FieldByname('ColorCode').Asinteger;
                    varRemark := FieldByname('ColorRemark').AsString;
                    varColor := FieldByname('YColor').AsString;
                    if varColor <> '' then
                    begin
                         pnlArray[varcode].Color :=
                              StringToColor(varColor);
                         pnlArray[varcode].Hint := varRemark;
                         pnlArray[varcode].showHint := true;
                    end
                    else
                    begin
                         pnlArray[varcode].Color := ClWhite;
                    end;
                    next;
               end;
          end;
     end;
end;

procedure TinputPromise_f.FormCreate(Sender: TObject);
begin
     SetColorPnlArray;
end;

procedure TinputPromise_f.pnlColorClick(Sender: TObject);
begin
     if ColorDialog1.Execute then
     begin
          (Sender as TPanel).Color := ColorDialog1.Color;
     end;

end;

procedure TinputPromise_f.rgMinewonClick(Sender: TObject);
begin
     case rgMinewon.ItemIndex of
          0:
               begin
                    showmessage('�����ȵ�');
               end;
          1:
               begin
                    showmessage('�翹��');
               end;
          2:
               begin
                    showmessage('R/C');

               end;
          3:
               begin
                    showmessage('Ÿġ��');
               end;
     end;

end;

procedure TinputPromise_f.AdvGlowButton2Click(Sender: TObject);
begin


     fieldclear;

     edtname.setfocus;
end;


procedure TinputPromise_f.savePromiseTemp;
var
     FormInit: Tinifile;
     path: string;
begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('promiseTemp', 'edtTel', edtTel.text);
     FormInit.WriteString('promiseTemp', 'edtChart', edtChart.text);
     FormInit.WriteString('promiseTemp', 'edtname', edtname.text);
     FormInit.Free;
     
end;

procedure TinputPromise_f.LoadPromiseTemp;
var
     FormInit: Tinifile;
     path: string;
begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     edtTel.text := FormInit.ReadString('promiseTemp', 'edtTel', '');
     edtChart.text := FormInit.ReadString('promiseTemp', 'edtChart','' );
     edtname.text := FormInit.ReadString('promiseTemp', 'edtname','' );
     FormInit.Free;
     
end;

procedure TinputPromise_f.fieldclear;
begin

     nRPPk := 0;


      //��Ʈ��ȣ, �̸�, ��ȭ��ȣ�� ����� ����.
     savePromiseTemp;

     edtname.ReadOnly := false;
     edtChart.ReadOnly := false;
     lblAppointno.Caption := '';
     edtname.text := '';
     edtchart.text := '';
     edtjumin.text := '';
     memsulsik.text := '';
     lblcphone.caption := '';
     edttel.text := '';
     lblStat.caption := '';

    //�Ƿں��� ����-----
     edtReferHospCode.Text := '';
     edtreferHospName.Text := '';
     cbReferHospDoc.clear;

     edtRHosp.Text         := '';
     edtRHospID.Text       := '';
    //-------------------

     grdpromise.RowCount := 1;
     dtCall.date := datetimepicker1.date;
  //  edtname.setfocus;
     lstPatPhoneList.Items.Clear;
     
end;

procedure TinputPromise_f.edtnameClick(Sender: TObject);
begin
     // fieldclear;
end;

procedure TinputPromise_f.btnCallConfirmClick(Sender: TObject);
begin
     pnlChoiceDate.visible := false;
     if (rgCall.itemindex >= 0) and (rgCall.itemindex <= 2) then
          dtCall.date := datetimePicker1.date - rgCall.itemindex;
end;

procedure TinputPromise_f.cbAlretClick(Sender: TObject);
begin
     pnlChoiceDate.visible := cbAlret.checked;
     pnlChoiceDate.left := 228;
     pnlChoiceDate.top := 88;
     dtCall.enabled := cbAlret.checked;

end;

procedure TinputPromise_f.edtTelChange(Sender: TObject);
begin
     edtTel.Text := call_tel_type(edtTel.Text);
     edtTel.SelStart := length(edttel.text);

end;

procedure TinputPromise_f.cbDoc2Change(Sender: TObject);
begin
     cbTeam.ItemIndex := cbDoc2.ItemIndex;
end;

procedure Tinputpromise_f.PromiseSelect(chart: string);
var
     i, reccount: integer;
     //CurrentTime: string;
begin
     if chart = '' then
          exit;
     //CurrentTime := FormatDateTime('HH:MM', now);
     grdpromise.ClearRows(1, grdpromise.RowCount);
     grdpromise.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * ');//jubsuDay, chart, pday, ptime, remark, pos, cancel, idn, pmemo, memodam, team , doc, jubsuday, modUser, modDay');
          Sql.Add('FROM       ma_promise                   ');
          //Sql.Add('WHERE   (chart =:chart) and pday >=  :pday');
          Sql.Add('WHERE   (chart =:chart)');
          Sql.Add('ORDER BY pday DESC         ');
          //ParamByName('pday').AsString := formatDateTime('YYYY-MM-DD',now);
          ParamByName('chart').AsString := chart;
          Open;
          First;
          if not IsEmpty then
          begin
               recCount := recordCount;
               grdpromise.RowCount := recCount + 1;
               grdpromise.FixedRows := 1;

               {

����
�ð�
���೻��
��Ʈ��ȣ
               }
                              //  Application.ProcessMessages;
               grdPromise.BeginUpdate;
               while not dm_f.SqlWork.Eof do
               begin
                    with grdPromise do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin

                              Cells[1, i] :=
                                   FieldByName('pday').AsString;
                              Cells[2, i] :=
                                   FieldByName('ptime').AsString;
                              Cells[3, i] :=
                                   FieldByName('remark').AsString;

                              Cells[5, i] :=
                                   FieldByName('chart').AsString;
                              Cells[6, i] :=
                                   FieldByName('pos').AsString;
                              Cells[7, i] :=
                                   FieldByName('cancel').AsString;
                              Cells[8, i] :=
                                   FieldByName('idn').AsString;
                              Cells[9, i] :=
                                   FieldByName('pmemo').AsString;

                          //    if FieldByName('doc').AsString ='' then
                              Cells[10, i] :=
                                     loadJinjryosil(FieldByName('team').AsString) ;
                        //         else
                        //     Cells[11, i] :=  FieldByName('doc').AsString ;

                              Cells[11, i] :=
                                  LoadDocNameFromSawonWithID( FieldByName('doc').AsString);

                              Cells[12, i] :=
                                   FieldByName('memodam').AsString;
                            
                                   if FieldByName('cancel').AsString
                                        = 'Y' then
                                        Cells[4, i] := '���'
                                   else
                                        if FieldByName('cancel').AsString
                                             = 'C' then
                                             Cells[4, i] := '���'
                                        else
                                             if FieldByName('cancel').AsString
                                                  = 'U' then
                                                  Cells[4, i] := '����'
                                             else
                                                  if FieldByName('cancel').AsString
                                                       = 'R' then
                                                       Cells[4, i] := '����'
                                                  else
                                                       if FieldByName('cancel').AsString
                                                            = '5' then
                                                            Cells[4, i] := '�ð�����' //�ð��뺯��
                                                       else

                              if FieldByName('pos').AsString = '4' then
                                   Cells[4, i] := '�����ȵ�'
                              else
                                   if FieldByName('pos').AsString = '5' then
                                        Cells[4, i] := '�翹��'
                                   else
                                        if FieldByName('pos').AsString = '6' then
                                             Cells[4, i] := '������'
                                        else
                                             if FieldByName('pos').AsString = '7' then
                                                  Cells[4, i] := '����ó��'
                                                  else
                                                  if ( (FieldByName('pos').AsString = '0')  //������(ü��)
                                                     or  (FieldByName('pos').AsString = '1')//������
                                                    or  (FieldByName('pos').AsString = '2') //�������
                                                    or  (FieldByName('pos').AsString = '3') //�����Ϸ�
                                                    or  (FieldByName('pos').AsString = '10') ) // ���� ����
                                                  then
                                                       Cells[4, i] := '����'
                                                  else
                                                 if FieldByName('pos').AsString = '' then
                                                  Cells[4, i] := '��ó��' ;
                             Cells[13, i] := FieldByName('jubsuday').AsString;
                             Cells[14, i] := FieldByName('modday').AsString;

                              AutoNumberCol(0);
                              next;
                         end;
                    end;
               end;
               grdPromise.EndUpdate;
          end;
     end;
end;

procedure TinputPromise_f.grdPromiseGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
     varDate, varPos, varCancel: string;
begin
     varDate := formatdatetime('YYYY-MM-DD', now);
     varPos := grdPromise.Cells[6, aRow];
     varCancel := grdPromise.Cells[7, aRow];

     if (arow > 0) and (aCol > 0) and
          (grdPromise.Cells[1, aRow] <= varDate) then
     begin

          if trim(varCancel) = 'Y' then
          begin
               aBrush.Color := clgray;
               aFont.Color := clwhite;
          end
          else
               if trim(varCancel) = 'C' then
               begin
                    aBrush.Color := clgray;
                    aFont.Color := clwhite;
               end
               else
                    if trim(varCancel) = 'U' then
                    begin
                         aBrush.Color := clpurple;
                         aFont.Color := clwhite;
                    end
                    else
                         if trim(varpos) = '0' then
                              //�����Ϸ�(3)���� ���������� ����(1)
                         begin
                              aBrush.Color := clwhite;
                              aFont.Color := $00373737; //clGray;

                         end
                         else
                              if trim(varpos) = '1' then
                                   //�����Ϸ�(3)���� ���������� ����(1)
                              begin
                                   aBrush.Color := clwhite;
                                   aFont.Color := $00373737; //clGray;

                              end
                              else
                                   if trim(varpos) = '2' then //�����Ϸ�(3)���� �߰�
                                   begin
                                        aBrush.Color := clwhite;
                                        aFont.Color := $00373737; //clGray;

                                   end
                                   else
                                        if trim(varpos) = '3' then //�����Ϸ�(3)���� �߰�
                                        begin
                                             aBrush.Color := clwhite;
                                             aFont.Color := $00373737; //clGray;

                                        end
                                        else
                                             if trim(varpos) = '4' then //�����ȵ�
                                             begin
                                                  aBrush.Color := clRed;
                                                  aFont.Color := clwhite;

                                             end
                                             else
                                                  if trim(varpos) = '5' then //�翹��
                                                  begin
                                                       aBrush.Color := clGreen;
                                                       aFont.Color := clwhite;

                                                  end
                                                  else
                                                       if trim(varpos) = '6' then //����
                                                       begin
                                                            aBrush.Color := clBlue;
                                                            aFont.Color := clwhite;

                                                       end
                                                       else
                                                            if trim(varpos) = '7' then //����
                                                            begin
                                                                 aBrush.Color := clOlive;
                                                                 aFont.Color := clwhite;

                                                            end
                                                            else
                                                            begin
                                                                 aBrush.Color := clwhite;
                                                                 aFont.Color := clblack;
                                                            end;

     end;

     if (grdPromise.Cells[1, aRow] > varDate) then
          aBrush.Color := clSilver;

end;

procedure TinputPromise_f.grdPromiseGridHint(Sender: TObject; ARow,
     ACol: Integer; var hintstr: string);
var
     varpos: string;
     varCancel: string;
     varHint: string;
begin
     {      varPos := grdPromise.Cells[6, aRow];
           varCancel := grdPromise.Cells[7, aRow];

           if (arow > 0) then
           begin

                  if trim(varCancel) = 'Y' then
                  begin
                         varHint := '���';
                  end
                  else if trim(varCancel) = 'C' then
                  begin
                         varHint := '���';
                  end
                  else if trim(varCancel) = 'U' then
                  begin
                         varHint := '����';
                  end
                  else if trim(varCancel) = '5' then
                         varHint := '�ð�����'

                  else if trim(varpos) = '0' then
                  begin
                         varHint := '������';

                  end
                  else if trim(varpos) = '1' then
                  begin
                         varHint := '������';

                  end
                  else if trim(varpos) = '2' then
                  begin
                         varHint := '�������';
                  end
                  else if trim(varpos) = '3' then
                  begin
                         varHint := '�����Ϸ�';
                  end
                  else if trim(varpos) = '4' then //�����ȵ�
                  begin
                         varHint := '�����ȵ�'

                  end
                  else if trim(varpos) = '5' then //�翹��
                  begin
                         varHint := '�翹��';
                  end
                  else if trim(varpos) = '6' then //����
                  begin
                         varHint := '������';

                  end
                  else if trim(varpos) = '7' then //����
                  begin
                         varHint := '����ó��';

                  end
                  else
                  begin
                         varHint := '�̳���';
                  end;

           end;

           hintstr := '<FONT color="clBlue" size=11>' + '<B>' +
                  varHint + '</B>' +
                  '</FONT>';
                                  }
end;

procedure TinputPromise_f.rgCallClick(Sender: TObject);
begin
     if rgCall.itemindex = 3 then
          pnlCall.visible := true
     else
          pnlCall.visible := false;
      
end;

procedure TinputPromise_f.edtnameMouseDown(Sender: TObject;
     Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if isNameChange = false then
     fieldclear;
end;

procedure TinputPromise_f.pnlYeyakListCaptionClick(Sender: TObject);
var
     varPass: string;
begin
{     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.Add('select * from  ma_pgpower');
          sql.Add('where PowerId = ''1'' and pgid=:pgid and pgset = ''1''                ');
          parambyname('pgid').AsString := 'btnYeyak'; //���೻�� ����ȭ
          open;
          if not isEmpty then
          begin

               varpass := trim(FieldByName('tongID').AsString);
               if varpass = '' then
                    varPass := '12' + formatdatetime('DD', now);

          end
          else
          begin
               if varpass = '' then
                    varPass := '12' + formatdatetime('DD', now);

          end;
     end;

     PassInput_f := TPassInput_f.Create(application);
     if PassInput_f.Showmodal = mrOK then
     begin
          if PassInput_f.edtpass.text = varPass then //main_f.v_UserPass then
          begin
               if Application.MessageBox(PChar('ȯ���� ������ ����ȭ�ϰڽ��ϱ�?'),
                    '��������ȭ', MB_YESNO) = IDYES then
               begin
                    //������ �����.
                    Promise_Delete_all(edtChart.text);
               end;
          end
          else
          begin

               //�׸����� ������ �����.

          end;
     end;
     }
end;
procedure TinputPromise_f.N1Click(Sender: TObject);
var
     varIdn: integer;
     varDay,
          varGubun,
          varTime,
          varTeam, varDoc,
          varInterval, varcancel: string;
begin
     if Application.MessageBox(PChar('�����Ͻ� ���೻���� �����Ͻðڽ��ϱ�?'),
          '���ຯ��', MB_YESNO) = IDYES then
     begin
          varIdn := grdPromise.Ints[8, grdPromise.Row];
          varDay := formatDateTime('YYYY-MM-DD', DateTimePicker1.Date);
          //��������

          varTime := cbsTime.Text;
          varGubun := cbGugan.text;

          varTeam := cbTeam.text;
          varDoc := cbDoc.ColumnItems[cbDoc.itemindex, 0];  //SaID

          varcancel := '';
          varinterval := inttostr(timetoMin(cbSoyo.text));

          Promise_UpdateDataInPlanner(false, varIdn, varDay, varGubun,
               varTime, varTeam, varDoc, varInterval, varCancel);

          promiseFrame_fr.SelectPromise(promiseFrame_fr.tabView.TabIndex);
          close;

     end;
end;


procedure TinputPromise_f.N2Click(Sender: TObject);
var
     varDay: string;
begin
     varDay := grdpromise.cells[1, grdpromise.row];
     if not assigned(promiseFrame_fr) then
          promiseFrame_fr := TpromiseFrame_fr.Create(application);
     promiseFrame_fr.PlannerCalendarGroup1.Date := strtodate(varDay);
     promiseFrame_fr.dpsdate.Date := strtodate(varDay);
     promiseFrame_fr.dpfdate.Date := strtodate(varDay);

 //    promiseFrame_fr.WindowState := wsnormal;

     PromiseMode := true;
//     promiseFrame_fr.Show;
     promiseFrame_fr.SelectPromise(0);

     promiseFrame_fr.searchPromise(main_f.edtName.text);

end;



procedure TinputPromise_f.N4Click(Sender: TObject);
var
   varIdn : integer;
   chart  : string;
begin
    chart  :=  grdPromise.cells[5, grdPromise.Row];
    varIdn :=  grdPromise.Ints[8, grdPromise.Row];
     if Application.MessageBox(PChar('�����Ͻ� ���೻���� �����Ͻðڽ��ϱ�?'),
          '�������', MB_YESNO) = IDYES then
     begin

           if Promise_Delete(varIdn) = true then
           begin
                PromiseSelect(chart);
           end;

     end;

end;

procedure TinputPromise_f.PageControl1Change(Sender: TObject);
begin
      case PageControl1.Activepageindex of
           0:  ;
           1:  ReferHospPatListFrame_fr1.preshow;

      end;
end;

procedure TinputPromise_f.PlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin

       dateTimePicker1.DateTime := SelDate;

end;

procedure TinputPromise_f.cbBunryuChange(Sender: TObject);
var
     path: string;
     FormInit: Tinifile;

begin
     Path := GetConfigDir + 'db.ini';
     sulsikCall(cbBunryu.text);

     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('ETC', 'SULSIKBUN', cbBunryu.text);
     FormInit.Free;

end;

procedure TinputPromise_f.memSulsikKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (ssCtrl in Shift) and (key = vk_Return) then
     begin
        btnSaveClick(self);
        promiseFrame_fr.SelectPromise(promiseFrame_fr.tabView.TabIndex);

        close;
     end;
end;

procedure TinputPromise_f.edtChartKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     begin
          if trim(edtchart.Text) = '' then
               exit;

          if LoadGogekData_chart(edtChart.Text, main_f.progressbar,  varViewAll) =
               true then
          begin
               edtName.text := ma_PaName;
               edtChart.text := ma_Chart;
               edtjumin.text := copy(ma_jumin, 1, 6) + '-' +
                    copy(ma_jumin, 7, 7);
               edttel.text := ma_c_Phone;
               lblcphone.caption := ma_c_Phone;
               edttel2.text := ma_h_Phone;




          end
          else
          begin
               fieldclear;
               edtChart.SetFocus;
          end;



     end;
end;

procedure TinputPromise_f.cbFontColorSelect(Sender: TObject);
var
     path: string;
     FormInit: Tinifile;

begin
     Path := GetConfigDir + 'db.ini';

     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('ETC', 'SULIK_FONTCOLOR', cbFontColor.Items[cbFontColor.ItemIndex]);
     FormInit.Free;
end;

procedure TinputPromise_f.AdvGlowButton3Click(Sender: TObject);
begin
     LoadPromiseTemp;
end;

procedure TinputPromise_f.grdPromiseGridWideHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: WideString);
var
     varpos: string;
     varHint: string;
begin
     varPos := grdPromise.Cells[9, aRow];

     if (arow > 0) then
     begin
          varHint := trim(varPos);

     end;
     hintstr := varHint;
end;

procedure TinputPromise_f.cbnoSMSClick(Sender: TObject);
begin
     if  (ma_sms2 = '0') or (ma_sms3 = '0') then     //Fathenr, Mother is send then NoSms no check
     begin
       showmessage('ȯ�ڵ��â���� �θ������� ���õǾ����ϴ�.' +#13+
        'ȯ�ڵ��â���� �θ����� ���� �ؾ� ����˴ϴ�.'   );
        cbnoSMS.Checked := false;
     end;
end;



{
procedure TinputPromise_f.SendData(AData: string);
var
     DataBuf: TCopyDataStruct;
     nLen: integer;
     aHWND : hwnd;
begin
     AData:='12345';
     nLen := Length(trim(AData)) + 1;
   //  AData := AData + #0;

     with DataBuf do
     begin
        dwData := 0;
        cbData := nLen;
        lpData := pChar(AData);
     end;


     try
     aHWND := FindWindow ('TPromiseAppFrm','PromiseAppFrm');

 //    if aHWND=0 then OutputDebugString('none datum!')
 //    else
 //    begin
          SendMessage(aHWND, WM_COPYDATA, inputPromise_f.handle, integer(@DataBuf));
       //     SendMessage(aHWND, WM_COPYDATA, 0,      DWORD(PChar(AData)) );
  //        OutputDebugString('sended!');
  //   end;

      finally
     //    CloseHandle(aHWND);
      end;
end;
}


procedure TinputPromise_f.AdvGlowButton4Click(Sender: TObject);
begin
      isNameChange := true;

      edtName.SetFocus;
      edtName.SelectAll;
      edtName.Enabled := true;
      edtName.ReadOnly := false;
end;

end.

