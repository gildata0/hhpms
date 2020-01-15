unit Jungsan_day;

interface

uses
     Windows, Messages, SysUtils,
     Utils,
     Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, printers, ExtCtrls, ComCtrls,
  AdvSplitter, Grids, AdvObj, BaseGrid, AdvGrid, AdvPanel, AdvCombo,
  ColCombo, AdvProgressBar, FormSize, AdvUtil, VclTee.TeeGDIPlus,
  UWebGMapsCommon, UWebGMaps, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
   UWebGMapsGeocoding,   UWebGMapsMarkers, UWebGMapsClusters,

  VCLTee.Chart, AdvPageControl;

type
     TStatAnal = packed record
          hwanCnt: array[0..2] of integer; //0:��ü 1: ��ȯ 2: ��ȯ

          dateCnt: array[0..6] of integer;   //0:��, 1:��...6:��
          genderCnt:array[0..2] of integer;  //0:����, 1: ���� 2:�˼�����

          ageCnt   : array of integer;  //0: 10�� ~ 9: 100��
          ageName  : array of String;   //0: 10�� ~ 9: 100��

          GubunName: array of String;   //���������׸�
          GubunCnt: array of integer;   //�������� ī��Ʈ


          DocName:array of String;      //�ǻ��
          DocCnt:array of Integer;      //�ǻ� ī��Ʈ

          DocName2:array of String;      //�ǻ��
          DocCnt2:array of Integer;      //�ǻ� ī��Ʈ
          DocChojinCnt :array of Integer;   //�ǻ��ȯ
          DocJejinCnt :array of Integer;   //�ǻ籸ȯ
          DocEtcCnt :array of Integer;   //�ǻ籸ȯ

          KwamokName : array of String; //�����
          KwamokCnt : array of Integer; //����ī��Ʈ
     end;

//type
//     TStatAnal = packed record
//          hwanCnt: array[0..2] of integer; //0:��ü 1: ��ȯ 2: ��ȯ
//
//          dateCnt: array[0..6] of integer;   //0:��, 1:��...6:��
//          genderCnt:array[0..2] of integer;  //0:����, 1: ���� 2:�˼�����
//
//
//          GubunName: array of String;   //���������׸�
//          GubunCnt: array of integer;   //�������� ī��Ʈ
//          DocName:array of String;      //�ǻ��
//          DocCnt:array of Integer;      //�ǻ� ī��Ʈ
//          KwamokName : array of String; //�����
//          KwamokCnt : array of Integer; //����ī��Ʈ
//     end;
type
       TGridFindText = record
              varCol: integer;
              varRow: integer;
       end;
type
     TjungsanDay_f = class(TForm)
    pnlExcel: TAdvPanel;
    grdExcel: TAdvStringGrid;
    scrMain: TScrollBox;
    AdvSplitter1: TAdvSplitter;
    AdvSplitter7: TAdvSplitter;
    pnlChong: TAdvPanel;
    grdChong: TAdvStringGrid;
    pnlWonjang: TAdvPanel;
    grdDoc: TAdvStringGrid;
    pnlJichul: TAdvPanel;
    grdjichul: TAdvStringGrid;
    AdvPanel9: TAdvPanel;
    grdSuip: TAdvStringGrid;
    pnlSum: TAdvPanel;
    grdSum: TAdvStringGrid;
    pnlSunapNeyuk: TAdvPanel;
    grdmain: TAdvStringGrid;
    pnlCardCancel: TAdvPanel;
    grdCardCancel: TAdvStringGrid;
    pnlTong: TAdvPanel;
    grdTong: TAdvStringGrid;
    pnlCard: TAdvPanel;
    grdCard: TAdvStringGrid;
    pnlHead: TPanel;
    lblSubject: TLabel;
    pnlSign: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    pnlButtons: TPanel;
    progressbar: TAdvProgressBar;
    btnSch: TButton;
    btnPrt: TButton;
    btnCls: TButton;
    btnDaymagam: TButton;
    btnAllMagam: TButton;
    ComboBox1: TComboBox;
    Button1: TButton;
    grdSummary: TAdvStringGrid;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet7: TAdvTabSheet;
    AdvStringGrid3: TAdvStringGrid;
    WebGMaps1: TWebGMaps;
    Panel1: TPanel;
    Label17: TLabel;
    lblAddUnKnownCount: TLabel;
    Label19: TLabel;
    lblAddKnownCount: TLabel;
    ProgressBar1: TProgressBar;
    Button4: TButton;
    Button5: TButton;
    WebGMapsGeocoding1: TWebGMapsGeocoding;
    FormSize1: TFormSize;
    Panel2: TPanel;
    Chart1: TChart;
    Series1: TPieSeries;
    Chart2: TChart;
    PieSeries1: TPieSeries;
    Panel3: TPanel;
    Chart3: TChart;
    PieSeries2: TBarSeries;
    Chart4: TChart;
    PieSeries3: TPieSeries;
    Panel4: TPanel;
    Chart5: TChart;
    BarSeries1: TBarSeries;
    Chart6: TChart;
    PieSeries4: TPieSeries;
    lblDay2: TLabel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    cbDoc2: TColumnComboBox;
    Image1: TImage;
    AdvPanel1: TAdvPanel;
    grdTreat: TAdvStringGrid;
          procedure btnPrtClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnSchClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
    procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdmainGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdmainGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdChongGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdChongGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdCardGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdCardGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdjichulGetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdjichulGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdSuipGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdSuipGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure FormCreate(Sender: TObject);
    procedure btnDaymagamClick(Sender: TObject);
    procedure btnAllMagamClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure grdDocGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdDocGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure FormResize(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure grdSumGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdSumGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure grdTreatGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdTreatGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure DateTimePicker1Change(Sender: TObject);
     private
    { Private declarations }
      intGubun, intDoc, intKwamok, intAge, intDoc2 : integer;

          procedure LoadsunapList;
          procedure LoadJichulList;
          procedure LoadSuibList;
          procedure calcSum;
          procedure SelectSuip(Sdate: string; FDate: string; suipGubun: string);
    procedure LoadCardList;
    procedure LoadDocList;
    procedure LoadTongList;
    procedure LoadCardCancelList;
    procedure allClear;

      function FindDocName(varGrid: TadvStringGrid;  varDoc: string): TGridfindtext;
    function CntStat(dt1, dt2: Tdatetime; varDoc: string): TStatAnal;
    function isMagamDone(varDay: TdateTime): boolean;
    procedure LoadDailkyStat;
    procedure insertTempDb(docname: string; docCount, cho, je: integer);
    function CntStat2: TStatAnal;
    function loadFromZipcode(areacode: string): string;
    procedure loadPatWithAddress;
    function AddMarker(Address, Hint: string; Cluster: TMapCluster): TMarker;
    function AddMarker2(Latitude, Longitude: double; Address, Hint: string;
      Cluster: TMapCluster): TMarker;
    function ConnectPostMDB: boolean;
    procedure InitClusters;
    procedure TreatCnt;
     public
    { Public declarations }
     end;

var
     jungsanDay_f: TjungsanDay_f;
     varCardGubunArray: array[0..9] of string =
         ('��','����','��ȯ','�Ｚ','����','����','�Ե�','����','�ϳ�','���');

implementation

uses uConfig, udm,  uFunctions, uGogekData;
       //ibgeum, SijeRegi,

{$R *.dfm}

procedure SetDefaultPrinter1(NewDefPrinter: string);
var
  ResStr: array[0..255] of Char;
begin
  StrPCopy(ResStr, NewdefPrinter);
  WriteProfileString('windows', 'device', ResStr);
  StrCopy(ResStr, 'windows');
  SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@ResStr));
end;
procedure SetDefaultPrinter(PrinterName: string);
var
  I: Integer;
  Device: PChar;
  Driver: PChar;
  Port: PChar;
  HdeviceMode: THandle;
  aPrinter: TPrinter;
begin
  Printer.PrinterIndex := -1;
  GetMem(Device, 255);
  GetMem(Driver, 255);
  GetMem(Port, 255);
  aPrinter := TPrinter.Create;
  try
    for I := 0 to Printer.Printers.Count - 1 do
    begin
      if Printer.Printers[i] = PrinterName then
      begin
        aprinter.PrinterIndex := i;
        aPrinter.getprinter(device, driver, port, HdeviceMode);
        StrCat(Device, ',');
        StrCat(Device, Driver);
        StrCat(Device, Port);
        WriteProfileString('windows', 'device', Device);
        StrCopy(Device, 'windows');
        SendMessage(HWND_BROADCAST, WM_WININICHANGE,
          0, Longint(@Device));
      end;
    end;
  finally
    aPrinter.Free;
  end;
  FreeMem(Device, 255);
  FreeMem(Driver, 255);
  FreeMem(Port, 255);
end;
function TjungsanDay_f.FindDocName(varGrid: TadvStringGrid; varDoc: string): TGridfindtext;
var
       res: TPoint;
       findparams: TFindparams;

begin
       //fixedCol�� �ִ� ���� �Ǵ� col�� 0? �ƹ�ư ���Ⲩ�� ��ã��.


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
       findparams := findparams +  [fnMatchFull];
       res := varGrid.findfirst(varDoc, findparams);
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




procedure TjungsanDay_f.allClear;
begin
   with
        grdChong,
        grdDoc,
        grdjichul,
        grdSuip,
        grdCard,
        grdCardCancel,
        grdTong,
        grdmain  do
        begin
           rowcount := 1;
        end;

end;


procedure TjungsanDay_f.btnPrtClick(Sender: TObject);
var
     strTempFolder, strSaveFileName : string;
begin

     if Application.MessageBox(pchar('�μ��Ͻðڽ��ϱ�?'), 'Ȯ��', MB_OKCANCEL) = 1 then
     begin

//
//          with Image1 do
//          begin
//            SetBounds(Left,Top,scrMain.Width,scrMain.Height);
//            scrMain.PaintTo(Image1.Canvas,0,0);
//          end;
//
//        //  Image1.Picture.SaveToFile('c:\temp\scrollbox1.bmp');
//
//                    strTempFolder := extractFilepath(paramstr(0)) + 'temp\';
//                    strSaveFileName := 'cptureAcc'+formatDatetime('yyyymmdd_hhnnss', now);
//                    jungsanDay_f.image1.Picture.SaveToFile(strTempFolder + strSaveFileName + '.bmp');

       try
          pnlButtons.Visible := false;
          pnlSign.Visible := true;
          btnPrt.enabled := false;
          Printer.Orientation := poLandscape; //���� Ⱦ ����
       //   printer.
       //   Printer.PrinterIndex :=  6;

              //      CaptureControl(jungsanDay_f.scrMain,   CAPTURE_AREA_CLIENT,jungsanDay_f.image1.Picture.Bitmap);
                    ScrollCapture(scrMain, image1.Picture.Bitmap );


                    strTempFolder := extractFilepath(paramstr(0)) + 'temp\';
                    strSaveFileName := 'cptureAcc'+formatDatetime('yyyymmdd_hhnnss', now);
                    jungsanDay_f.image1.Picture.SaveToFile(strTempFolder + strSaveFileName + '.bmp');


       //   jungsanDay_f.print;

       finally
          btnPrt.enabled := true;
          pnlButtons.Visible := true;
          pnlSign.Visible := false;
       end;
     end;
end;

procedure TjungsanDay_f.FormShow(Sender: TObject);
begin

//     SetWindowPos(jungsanDay_f.handle,HWND_TOPMOST,
//           jungsanDay_f.left,jungsanDay_f.top,
//           jungsanDay_f.Width,jungsanDay_f.Height,0);

     caption := 'Hospital''s Daily Report';
     dateTimePicker1.Date := now;
     lblDay2.caption := formatDateTime('YYYY-MM-DD', dateTimePicker1.Date) +
          ' [' + ReturnWeek2(dateTimePicker1.Date) + ']';


     //iHeight := 485;//main_f.ClientHeight;
     //iWidth := 1024;//main_f.ClientWidth;
    // iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 20;
    // iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 1;
    // SetBounds(233, 55, iWidth, iHeight);


    with grdSum do
    begin

        RowCount := 10;
        cells[0, 0] :='*���� ���� �� ����';     // lblChongJin.Caption := '0';
        cells[0, 1] :='*���� ';                  //lblHyun.Caption := '0';
        cells[0, 2] :='*ī�� ';                 //lblCard.Caption := '0';
        cells[0, 3] :='*������ü';              //lblTong.Caption := '0';
        cells[0, 4] :='*�����Ѿ�';              //lblChong.Caption := '0';
        cells[0, 5] :='*����';                  //lblJichul.Caption := '0';
        cells[0, 6] :='*�غ�ݾ�: ';            // lblGumgo.Caption := '0';
        cells[0, 7] :='*�߰��Ա�: ';            //lblJungIbgeum.Caption := '0';
        cells[0, 8] :='*ȯ��';                  //lblHwanBul
        cells[0, 9] :='*�����ܰ�(�غ�ݾ�+����-����-�߰��Ա�) :';  // lblCha.Caption := '0';


    end;
//     lblHap.Caption := '0';
//     lblHyun.Caption := '0';
//
//     lblChongJin.Caption := '0';
//
//     lblHyunReceipt.Caption := '0';
//     lblCard.Caption := '0';
//     lblChong.Caption := '0';
//     lblTong.Caption := '0';
//     lblCha.Caption := '0';
//
//     lblGumgo.Caption := '0';
//     lblJichul.Caption := '0';
//     lblJungIbgeum.Caption := '0';

//     panel1.caption := '';
//     panel2.caption := '';
     pnlHead.caption := '';
    {
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select Team_doctor1 from ma_team');
          Sql.Add(' order by team_key');
          Open;
          First;
          cbTeam.Values.Clear;
          cbTeam.Values.Add('��ü');

          if not isEmpty then
          begin
               while not eof do
               begin
                    cbTeam.Values.Add(FieldByName('Team_doctor1').AsString);
                    next;
               end;
          end
          else
          begin
//               ComboBox1.Items.Add(dm_f.Chief);
//               grdPlan.Columns[11].Values.add(dm_f.Chief);
          end;

     end;
     cbDoc2.itemindex := 0;
     }

          with cbDoc2 do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;
          with cbDoc2 do
          begin
               with Columns.Add do
               begin
                    Width := 20;
                    Font.Style := [fsBold];
               end;
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
                  //  Strings.Add(FieldByName('team_name').AsString);
                  //  Strings.Add(FieldByName('team_color').AsString);
                  //  Strings.Add(FieldByName('team_doctor1').AsString);
                  Strings.Add('0');
                  Strings.Add('0');
                  Strings.Add('��ü');

               end;
          end;


     with dm_f.SqlWork do
     begin




          Close;
          Sql.Clear;
          Sql.Add(' select saName, team_name, team_color, saBun  from  ma_sawon_basic s join ma_team t on s.sateam=t.team_name  ');
          Sql.Add(' where saJikGub= ''1'' and  nouse <> ''1''                                                                   ');
          Sql.Add(' order by  jubsu_order, sabun                                                                                ');//convert(int, sabun)   '); //order by team_name');

          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    // 0:team_name  1:teamColor 2: team_doctro1
                    with cbDoc2 do
                    begin
//                         with Columns.Add do
//                         begin
//                              Width := 100;
//                              Font.Style := [fsBold];
//                         end;
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

                         with ComboItems.Add do
                         begin
                            //  Strings.Add(FieldByName('team_name').AsString);
                            //  Strings.Add(FieldByName('team_color').AsString);
                            //  Strings.Add(FieldByName('team_doctor1').AsString);
                            Strings.Add(FieldByName('team_name').AsString);
                            Strings.Add(FieldByName('team_color').AsString);
                            Strings.Add(FieldByName('saName').AsString);

                         end;
                    end;


                    next;
               end;
          end
          else
          begin
               //               ComboBox1.Items.Add(dm_f.Chief);
               //               grdPlan.Columns[11].Values.add(dm_f.Chief);
          end;
     end;
    cbDoc2.ItemIndex := 0;
 



end;

procedure TjungsanDay_f.btnSchClick(Sender: TObject);
begin
   //  allClear;

     loadSunapList;
     LoadCardList;
     loadJichulList;
     loadSuibList;
     LoadDocList;
     LoadTongList;
     LoadCardCancelList;

     CalcSum;

     LoadDailkyStat;
     TreatCnt;

//    btnDaymagam.Enabled := not  isMagamDone( DateTimePicker1.Date);
//     SelectSuip(FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date),          FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date),          '����')
end;

function TjungsanDay_f.isMagamDone(varDay : TdateTime) : boolean;
begin
     with dm_f.sqlWork  do
     begin
          Close;
          SQL.Clear;
          Sql.Add(' SELECT  count(*) as magamCount from ma_sunap ');
          sql.add(' where sDay=:sDay and magam is null');
          paramByname('sDay').asString := formatDatetime('YYYY-MM-DD', varDay);
          open;

          if fieldByName('magamCount').asInteger  > 0  then
             result := false
          else
             result := true;

      end;
end;

procedure TjungsanDay_f.LoadsunapList;
var
     i: integer;
     varQuery:string;
     varQuery2:string;
begin
     i := 1;
          varQuery := LoadGroupDataQuery;
          varQuery2 := LoadSunapDataQuery;

     with dm_f.sqlWork, grdmain do
     begin
          rowcount:=1;
          Close;
          SQL.Clear;
          Sql.Add(' SELECT   I.name as IName, I.chart, S.team, S.doc, S.sTime,  s.magam, ');
          sql.add(' SUM(S.hyun) AS totHyun, SUM(S.hyunRECEIPT) AS totHyunreceipt, SUM(S.card) AS totCard, sum(hwanBulEk) as TotHwanbulek,');
          Sql.Add('  SUM(S.tong) AS totTong , SUM(S.hyunRECEIPT_tong) AS tothyunRECEIPT_tong ,  SUM(S.tong2) AS totTong2 ,');
          Sql.Add(' sum(s.kamak) as totKamak  ,  ');
          Sql.Add(' sum(s.misuek) as totMisuek');
          Sql.Add(' FROM  ma_sunap S INNER JOIN');
          Sql.Add(' ma_gogek_basic I ON S.chart = I.chart  ');
          Sql.Add(' WHERE   S.sDay = :SDay ');
          if cbDoc2.itemindex > 0 then
          begin
               Sql.Add('and   S.Team = :Team ');
               paramByName('team').AsString := cbDoc2.ColumnItems[cbDoc2.itemindex, 0];
          end;


                if varviewAll <> true then
               begin
                     if varQuery <> '' then
                         sql.Add('and (s.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                     if varQuery2 <> '' then
                         sql.Add('and  (' + varQuery2 + ' or skind is null )' );
               end;



          Sql.Add('GROUP BY S.team, S.doc, S.sTime, I.name, I.chart, s.magam');

          paramByname('sDay').asString := formatDatetime('YYYY-MM-DD', datetimePicker1.date);
          open;
          if not dm_f.sqlWork.isEmpty then
               while not eof do
               begin
                    addrow;
                    Cells[1, i]:= FieldByname('Iname').asString;
                    Cells[2, i]:= FieldByname('chart').asString;
                    Cells[3, i]:= FieldByname('doc').asString;
                    floats[4, i]:= FieldByname('totHyun').asFloat;
                    floats[5, i]:= FieldByname('totHyunReceipt').asFloat;
                    floats[6, i]:= FieldByname('totcard').asFloat;
                    floats[7, i]:= FieldByname('totTong').asFloat;   //����
                    floats[8, i]:= FieldByname('tothyunRECEIPT_tong').asFloat;   //���� ���ݿ�����
                    floats[9, i]:= FieldByname('totTong2').asFloat; //��Ÿ
                    floats[10, i]:= FieldByname('totHwanBulEk').asFloat; //ȯ�ұݾ�
                    if FieldByname('magam').asString ='1' then
                      cells[11, i]:= '����'  //��������   1: ������ 2:���� ���� ����
                      else
                      if FieldByname('magam').asString ='2' then
                      cells[11, i]:= '����������'  //��������   1: ������ 2:���� ���� ����
                         else
                            cells[11, i]:= '';  //��������   1: ������ 2:���� ���� ����


                    floats[12, i]:= FieldByname('totmisuek').asFloat; //�̼��ݾ�
                    floats[13, i]:= FieldByname('totKamak').asFloat; //���αݾ�

                    i := i + 1;
                    next;
               end;
        //  calcFooters;
        AutoNumberCol(0);
     end;
end;


procedure TjungsanDay_f.LoadJichulList;
begin
     with dm_f.sqlWork, grdJichul do
     begin
          rowcount := 1;
          Close;
          SQL.Clear;
          Sql.Add('SELECT   JHangMok, SUBSTRING(CONVERT(CHAR(10), JDay, 112), 5, 2) AS Expr1, ');
          Sql.Add(' SUM(JJichul) AS totHyun, SUM(JJichulHyunYoung) AS totHyunReceipt,');
          sql.add(' SUM(JJichulCARD) AS totCard, SUM(JJichulTong) AS totTong       ');
          Sql.Add('FROM      ma_cash                                                             ');
          Sql.Add('WHERE   JDay =:JDAY  and JGubun2=:JGubun2                                  ');
          Sql.Add('GROUP BY SUBSTRING(CONVERT(CHAR(10), JDay, 112), 5, 2), JHangMok           ');
          Sql.Add('ORDER BY SUBSTRING(CONVERT(CHAR(10), JDay, 112), 5, 2)                     ');

          paramByname('JDay').asString := formatDatetime('YYYY-MM-DD', datetimePicker1.date);
          paramByname('JGubun2').asString := '����';
          open;
          if not dm_f.sqlWork.isEmpty then
               while not eof do
               begin
                    addrow;
                    Cells[1, rowcount - 1] := FieldByname('JHangMok').asString;
                    floats[2, rowcount - 1]  := FieldByname('totHyun').asfloat;
                    floats[3, rowcount - 1]  := FieldByname('totHyunReceipt').asfloat;
                    floats[4, rowcount - 1] := FieldByname('totcard').asfloat;
                    floats[5, rowcount - 1]  := FieldByname('totTong').asfloat;
                    floats[6, rowcount - 1]  := floats[2, rowcount - 1]   //�׸��հ�
                                               +   floats[3, rowcount - 1]
                                               +   floats[4, rowcount - 1]
                                               +   floats[5, rowcount - 1] ;

                 //    Cells[1, rowcount - 1].Asinteger
                 //                                   + Cells[2, rowcount - 1].Asinteger
                //                                    + Cells[3, rowcount - 1].Asinteger
                 //                                   + Cells[4, rowcount - 1].Asinteger;
                    next;
               end;
               autonumbercol(0);
         // calcFooters;
     end;
end;


procedure TjungsanDay_f.LoadCardList;
const
   selectCardek = 'select cardkind, sum(convert(int,cardek, 121)) as cardgeumek, count(cardek) as cardCount  from  sunapcard' +#10#13+
   'where carddate=:sDay1   ' ;


var
     i: integer;
      varQuery :string;
      varQuery2 :string;
            cRCount, rCount: integer;

begin

     i := 0;
          varQuery := LoadGroupDataQuery;
          varQuery2 := LoadSunapDataQuery;
     with dm_f.sqlWork, grdCard do
     begin
          //Clear;
          rowCount:=1;
          Close;
          SQL.Clear;
          sql.text:=selectCardEk;
          if cbDoc2.itemindex > 0 then
          begin
               Sql.Add('and   Team = :Team ');
               paramByName('team').AsString := cbDoc2.ColumnItems[cbDoc2.itemindex, 0];
          end;

               if varviewAll <> true then
               begin
                     if varQuery <> '' then
                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                 //    if varQuery2 <> '' then
                 //        sql.Add('and  (' + varQuery2 + ' or skind is null )' );
               end;



          Sql.Add('group by cardkind                                                                     ');

          paramByname('sDay1').asString := formatDatetime('YYYY-MM-DD', datetimePicker1.date);
          open;
          if not dm_f.sqlWork.isEmpty then
           begin
               cRCount :=  rowcount;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1]  := '1.��';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1]  := '2.����';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1] := '3.��ȯ';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1] := '4.�Ｚ';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1] := '5.����';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1] := '6.����';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1]  := '7.�Ե�';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1]  := '8.����';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
               addrow;
               cells[1, rowcount-1]  := '9.�ϳ�';
               floats[2, rowcount-1]  := 0;
               floats[3, rowcount-1]  := 0;

               rCount := rCount+1;
             //  addrow;
             //  cells[0, rowcount-1].AsString := '10.���';
             //  cells[1, rowcount-1].AsString := '0';
             //  cells[2, rowcount-1].AsString := '0';


               while not eof do
               begin
                  for i:= 0 to 9 do
                  begin
                     if  fieldByName('cardkind').asString =   varCardGubunArray[i] then
                     begin

                             floats[2,  CrCount + i]  :=  fieldByName('cardGeumek').asFloat ;
                             floats[3,  CrCount + i] :=   fieldByName('cardCount').asFloat ;

                     end;
                  end;
                  next;
               end;


             {  while not eof do
               begin
                    addrow;
                    Cells[0, i].AsString := FieldByname('cardkind').asString;
                    Cells[1, i].AsString := FieldByname('cardGeumek').asString;
                    i := i + 1;
                    next;
               end; }
           end;


     with  DM_f.SqlTemp, grdCard do
     begin
          beginupdate;
          close;
          sql.Clear;
          sql.Text:= '   select count(*) as CancelCnt, sum(sunapek) as CancelSum from ma_sunap    ' + #10#13+
               ' where hwanbulek > 0 and card <0  and    sDay = :j1      ';

          parambyname('j1').AsString :=formatDatetime('YYYY-MM-DD', datetimePicker1.date);
        //  parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);


          if cbDoc2.itemindex > 0 then
          begin
              sql.Text:=sql.Text + ' and team = :team    ';
               parambyname('team').AsString := cbDoc2.ColumnItems[cbDoc2.itemindex, 0];
          end;
          open;
          if fieldByName('CancelCnt').AsInteger > 0 then
          begin


           //    rCount := rCount+1;
               addrow;


               rCount := rCount+1;

               cells[1, rowcount-1] := '10.���';
               floats[2, rowcount-1] :=   fieldByName('CancelSum').asFloat;     //�ݾ�
               floats[3, rowcount-1] :=  fieldByName('CancelCnt').asFloat;    //�Ǽ�

           end;


          endUpdate;
     end;


            autonumbercol(0);
          // calcFooters;
     end;
end;


procedure TjungsanDay_f.LoadSuibList;
var
     i: integer;
begin
     i := 0;
     with dm_f.sqlWork, grdSuip do
     begin
          //ClearData;
          rowcount := 1;
          Close;
          SQL.Clear;
          Sql.Add('SELECT   JHangMok, SUBSTRING(CONVERT(CHAR(10), JDay, 112), 5, 2) AS Expr1, ');
          Sql.Add(' SUM(JJichul) AS totHyun, SUM(JJichulCARD) AS totCard, SUM(JJichulTong) AS totTong       ');
          Sql.Add('FROM     ma_cash                                                              ');
          Sql.Add('WHERE   JDay =:JDAY  and JGubun2=:JGubun2                                  ');
          Sql.Add('GROUP BY SUBSTRING(CONVERT(CHAR(10), JDay, 112), 5, 2), JHangMok           ');
          Sql.Add('ORDER BY SUBSTRING(CONVERT(CHAR(10), JDay, 112), 5, 2)                     ');

          paramByname('JDay').asString := formatDatetime('YYYY-MM-DD', datetimePicker1.date);
          paramByname('JGubun2').asString := '����';
          open;
          if not dm_f.sqlWork.isEmpty then
               while not eof do
               begin
                    Cells[1, i]  := FieldByname('JHangMok').asString;
                    floats[2, i]:= FieldByname('totHyun').asFloat;
                    floats[3, i]:= FieldByname('totcard').asFloat;
                    floats[4, i]:= FieldByname('totTong').asFloat;
                    i := i + 1;
                    next;
               end;
           autonumbercol(0);
      //    calcFooters;
     end;
end;


procedure TjungsanDay_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TjungsanDay_f.FormDestroy(Sender: TObject);
begin
     jungsanDay_f := nil;
end;

procedure TjungsanDay_f.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  Wnd: HWnd;
  Msg: Cardinal;
  Code: Cardinal;
  N, i: Integer;
begin
  Wnd := WindowFromPoint(Mouse.CursorPos);
  if Wnd = scrmain.Handle then
  begin
    //One way of dealing with horz and vert scrollbars:
    if ssShift in Shift then
      Msg := WM_HSCROLL
    else
      Msg := WM_VSCROLL;
    if WheelDelta < 0 then
      Code := SB_LINEDOWN
    else
      Code := SB_LINEUP;

    N:= Mouse.WheelScrollLines;

    for i:= 1 to N do
      scrmain.Perform(Msg, Code, 0);
      scrmain.Perform(Msg, SB_ENDSCROLL, 0);
    Handled := True;

  end
  else
    Handled := False;


end;

procedure TjungsanDay_f.FormResize(Sender: TObject);
var
    hHeight : integer;
begin

        hHeight := GetSystemMetrics(SM_CYCAPTION);

        scrmain.Left     :=0;
        scrmain.Top      :=0;
        scrmain.Height   := jungsanDay_f.height - hHeight - 10 ;
        scrmain.width    := jungsanDay_f.width-30 ;

end;

procedure TjungsanDay_f.CalcSum;
var
     sije, geumgo, jangbu, ibgeum, jichul, suib: integer;
     hyunJichul, hyunSuib: integer;
     varQuery:string;
     varQuery2:string;
begin

     varQuery := LoadGroupDataQuery;
 //    varQuery2 := LoadSunapDataQuery;
    varQuery2 := '';//LoadSunapDataQuery;


     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          Sql.Add(' SELECT  sum(bonin1+chong) as totJin,  SUM(cash) AS totHyun, SUM(hyunreceipt) as totHYunreceipt ,                                   ');
          Sql.Add(' SUM(tongreceipt) AS totHyunReceipt_tong,                                                              ');
          Sql.Add(' SUM(card)  AS totCard,  SUM(tong) AS totTong,  SUM(tong2) AS totTong2, sum(whanbulak) as totHwanbulek,');
          Sql.Add(' SUM(card + cash + hyunReceipt + tong + tong2 + tongreceipt ) AS totHap ,                              ');
          Sql.Add(' sum(bonin) as ����  ,                                                                                 ');
          Sql.Add(' sum(misugeum) as totmisuek   ,                                                                          ');
          Sql.Add(' sum(kamak) as totKamak  ,                                                                             ');
          Sql.Add(' sum(sunapak) as �����ݾ�,                                                                             ');
          Sql.Add(' (case when sum(sunapak) > sum(bonin) then sum( sunapak - bonin)  else 0 end) as ����                ');

          Sql.Add('FROM     jinryo_p ');
          Sql.Add('WHERE   jin_Day = :SDay ');

          if cbDoc2.itemindex > 0 then
          begin
               Sql.Add('and   Team = :Team ');
               paramByName('team').AsString := cbDoc2.ColumnItems[cbDoc2.itemindex, 0];
          end;
          ParamByName('SDay').AsString := formatDatetime('YYYY-MM-DD', datetimepicker1.date);




                if varviewAll <> true then
               begin
                     if varQuery <> '' then
                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                     if varQuery2 <> '' then
                         sql.Add('and  (' + varQuery2 + ' or skind is null )' );
               end;

          Open;



//          lblHyun.Caption :=  formatfloat('#,0', FieldByname('totHyun').asInteger + FieldByname('totHyunReceipt').asInteger);
//
//          lblChongJin.Caption :=   formatfloat('#,0', FieldByname('totJin').asInteger);
//
//
//          lblHyunReceipt.Caption := displayWon(FieldByname('totHyunReceipt').asString);
//          lblCard.Caption := displayWon(FieldByname('totCard').asString);
//
//          lblTong.Caption := formatfloat('#,0', FieldByname('totTong').asInteger +FieldByname('totTong2').asInteger + FieldByname('totHyunReceipt_tong').asInteger);
//
//          lblTongHyunyoung.Caption := displayWon(FieldByname('totHyunReceipt_tong').asString);
//
//
//          lblHap.Caption :=  formatfloat('#,0', FieldByname('totHyun').asInteger
//                          + FieldByname('totHyunReceipt').asInteger
//                          + FieldByname('totCard').asInteger);
//
//          lblChong.Caption :=  formatfloat('#,0', FieldByname('totHyun').asInteger
//                          + FieldByname('totHyunReceipt').asInteger
//                          + FieldByname('totCard').asInteger
//                          + FieldByname('totTong').asInteger
//                          + FieldByname('totTong2').asInteger
//                          + FieldByname('totHyunReceipt_tong').asInteger)  ;
//          lblHwanbul.Caption :=  formatfloat('#,0', FieldByname('totHwanbulek').asInteger) ;


          with grdSum do
          begin

            //  RowCount := 11;
              cells[1, 0] := formatfloat('#,0', FieldByname('totJin').asInteger);//'*���� ���� �� ����';     // lblChongJin.Caption := '0';
              cells[1, 1] := formatfloat('#,0', FieldByname('totHyun').asInteger + FieldByname('totHyunReceipt').asInteger); //'*����';                  //lblHyun.Caption := '0';
              cells[1, 2] := formatfloat('#,0', FieldByname('totCard').asInteger);          //lblCard.Caption := '0';
              cells[1, 3] := formatfloat('#,0', FieldByname('totTong').asInteger +FieldByname('totTong2').asInteger + FieldByname('totHyunReceipt_tong').asInteger);//'*������ü';              //lblTong.Caption := '0';
              cells[1, 4] := //'*�����Ѿ�';              //lblChong.Caption := '0';
                            formatfloat('#,0', FieldByname('totHyun').asInteger
                          + FieldByname('totHyunReceipt').asInteger
                          + FieldByname('totCard').asInteger
                          + FieldByname('totTong').asInteger
                          + FieldByname('totTong2').asInteger
                          + FieldByname('totHyunReceipt_tong').asInteger) ;

              cells[1, 5] := '0';//'*����';                  //lblJichul.Caption := '0';
              cells[1, 6] := '0';//'*�غ�ݾ�: ';            // lblGumgo.Caption := '0';
              cells[1, 7] := '0';//'*�߰��Ա�: ';            //lblJungIbgeum.Caption := '0';
            //  cells[1, 8] := '0';//'*ȯ��';                  //lblHwanBul
              cells[1, 8] := formatfloat('#,0', FieldByname('totHwanbulek').asInteger);//'*ȯ��';                  //lblHwanBul
              cells[1, 9] := '0';//'�����ܰ�(�غ�ݾ�+����-����-�߰��Ա�) :';  // lblCha.Caption := '0';


          end;


          //�������ݼ���
          Suib := FieldByname('totHyun').asinteger
                  + FieldByname('totHYunreceipt').asinteger;


          with grdChong do
          begin
               rowcount := 1;
               addRow;
               Cells[1, rowcount-1] := '�������';
//sum(bonin1+chong+chung+bonin) as totJin,

               floats[2, rowcount-1] := FieldByname('totJin').asFloat;         //������ݾ�
               floats[3, rowcount-1] := FieldByname('�����ݾ�').asFloat;         //�Ѿ�
               floats[4, rowcount-1] := FieldByname('����').asFloat;  //����
               floats[5, rowcount-1] := FieldByname('����').asFloat;         //����
               floats[6, rowcount-1] := FieldByname('totHyun').asFloat;
//               floats[7, rowcount-1] := FieldByname('totHyunreceipt').asFloat;
               floats[7, rowcount-1] := FieldByname('totcard').asFloat;
               floats[8, rowcount-1] := FieldByname('totTong').asFloat;
//               floats[10, rowcount-1] := FieldByname('totHyunReceipt_tong').asFloat;   //��������
//               floats[11, rowcount-1] := FieldByname('totTong2').asFloat;    //��Ÿ
               floats[9, rowcount-1] := FieldByname('totHwanbulek').asFloat;  //ȯ��
               floats[10, rowcount-1] := FieldByname('totMisuek').asFloat;  //�̼�
               floats[11, rowcount-1] := FieldByname('totKamak').asFloat;  //����

          end;


          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sije');
          Sql.Add('where SijeDate=:SijeDate');
          ParamByName('SijeDate').AsString := formatDatetime('YYYY-MM-DD', datetimepicker1.date);
          open;
          if not isEmpty then
          begin
               Sije := FieldByName('SijeGeum').AsInteger;
               Geumgo := FieldByName('GeumGoGeum').AsInteger;
          end
          else
          begin
               Sije := 0;
               Geumgo := 0;
          end;



          Close;
          Sql.Clear;
          Sql.Add('select sum(jjichul) as SumHyun ,isnull(sum(jjichulHyunYoung),0) as SumHyunReceipt ,');
          Sql.Add('sum(jjichulcard) as SumCard,sum(jjichulTong) as SumTong,  ');
          Sql.Add('  sum(jjichul+jjichulcard+JJichulTong+ isnull(jjichulHyunYoung,0)) as SumJichul from ma_cash');
          Sql.Add('where jday=:jday and jGubun2=:jGubun2');
          ParamByName('jday').AsString := formatDatetime('YYYY-MM-DD', datetimepicker1.date);
          ParamByName('JGubun2').AsString := '����';
          open;

          if not isEmpty then
          begin
               suib := suib + FieldByName('sumJichul').AsInteger;
          end
          else
          begin
               suib := 0;
          end;

          with grdChong do
          begin
               addRow;
               Cells[1, rowcount-1] := '��Ÿ����';
               floats[2, rowcount-1]:= 0;
               floats[3, rowcount-1]:= 0;
               floats[4, rowcount-1]:= 0;
               floats[5, rowcount-1]:= 0;
               floats[6, rowcount-1]:= FieldByname('SumHyun').asFloat;
            //   floats[7, rowcount-1]:= 0;
               floats[7, rowcount-1]:= FieldByname('SumCard').asFloat;
               floats[8, rowcount-1]:= FieldByname('sumTong').asFloat;
           //    floats[10, rowcount-1] := 0;
           //    floats[11, rowcount-1] := 0;
               floats[9, rowcount-1] := 0;
               floats[10, rowcount-1] := 0;
               floats[11, rowcount-1] := 0;

          end;



          Close;
          Sql.Clear;
          Sql.Add('select sum(jjichul) as SumHyun ,isnull(sum(jjichulHyunYoung),0) as SumHyunReceipt ,');
          Sql.Add('sum(jjichulcard) as SumCard, sum(jjichulTong) as SumTong,  ');
          Sql.Add('  sum(jjichul+jjichulcard+JJichulTong+ isnull(jjichulHyunYoung,0)) as SumJichul from ma_cash');
          Sql.Add('where jday=:jday and jGubun2=:jGubun2');
          ParamByName('jday').AsString := formatDatetime('YYYY-MM-DD', datetimepicker1.date);
          ParamByName('JGubun2').AsString := '����';
          open;

          if not isEmpty then
          begin
               Jichul := FieldByName('sumJichul').Asinteger;

               hyunJichul := FieldByName('SumHyun').Asinteger
                         + FieldByName('SumHyunReceipt').Asinteger;
          end
          else
          begin
               Jichul := 0;
                hyunJichul := 0;
          end;

         // lblJichul.Caption:= formatFloat('#,0',   Jichul);



          with grdChong do
          begin
              addRow;
               Cells[1, rowcount-1]  := '���⳻��';
               Floats[2, rowcount-1]:= 0;
               Floats[3, rowcount-1]:= 0;
               Floats[4, rowcount-1]:= 0;
               Floats[5, rowcount-1]:= 0;
               Floats[6, rowcount-1]:= FieldByname('SumHyun').asFloat;
         //      Floats[7, rowcount-1]:= FieldByname('SumHyunReceipt').asFloat;
               Floats[7, rowcount-1]:= FieldByname('SumCard').asFloat;
               Floats[8, rowcount-1]:= FieldByname('SumTong').asFloat;
         //      floats[10, rowcount-1] := 0;
         //      floats[11, rowcount-1] := 0;
               floats[9, rowcount-1] := 0;    //ȯ��
               floats[10, rowcount-1] := 0;    //�̼�
               floats[11, rowcount-1] := 0;    //����

               addRow;
               Cells[1, rowcount-1]  := '�Ұ�';
               Floats[2, rowcount-1]:= Floats[2, 1] + Floats[2, 2];//+ FieldByname('�����ݾ�').asFloat ;         //�Ѱ�
               Floats[3, rowcount-1]:= Floats[3, 1] + Floats[3, 2];//+ FieldByname('�����ݾ�').asFloat ;         //�Ѱ�
               Floats[4, rowcount-1]:= Floats[4, 1] + Floats[4, 2];//+ FieldByname('����').asFloat ;           //����
               Floats[5, rowcount-1]:= Floats[5, 1] + Floats[5, 2];//+ FieldByname('����').asFloat ;         //����
               Floats[6, rowcount-1]:= Floats[6, 1] + Floats[6, 2]+ FieldByname('SumHyun').asFloat ;
          //     Floats[7, rowcount-1]:= Floats[7, 1] + Floats[7, 2]+ FieldByname('SumHyunReceipt').asFloat ;
               Floats[7, rowcount-1]:= Floats[7, 1] + Floats[7, 2]+ FieldByname('SumCard').asFloat ;
               Floats[8, rowcount-1]:= Floats[8, 1] + Floats[8, 2]+ FieldByname('SumTong').asFloat ;   //����
          //     floats[10, rowcount-1] := Floats[10, 1] + Floats[10, 2];   //��������
          //     floats[11, rowcount-1] := Floats[11, 1] + Floats[11, 2];  //��Ÿ
               floats[9, rowcount-1] := Floats[9, 1] + Floats[9, 2];   //ȯ��
               floats[10, rowcount-1] := Floats[10, 1] + Floats[10, 2];   //�̼�
               floats[11, rowcount-1] := Floats[11, 1] + Floats[11, 2];   //����


               autonumbercol(0);
          end;



          //�߰��Ա�
          Close;
          Sql.Clear;
          Sql.Add('select sum(ibgeumEk) as SumIbgeum from ma_ibgeum');
          Sql.Add('where ibgeumDate=:ibgeumDate');
          ParamByName('ibgeumDate').AsString := formatDatetime('YYYY-MM-DD', datetimepicker1.date);
          open;

          if not isEmpty then
          begin
               Ibgeum := FieldByName('sumIbgeum').AsInteger;
          end
          else
          begin
               Ibgeum := 0;
          end;


          //����(����ܾ� - �ݰ��ܾ�)
          Jangbu := Sije + Suib + Jichul - ibgeum;
       //   lblCha.Caption := displayWon(inttostr(Geumgo - Jangbu));

          //�ܰ�(�ݰ��ܾ�+����-����)    //�����ܰ� �����ش�.
         // lblCha.Caption := displayWon(inttostr(Geumgo +Sije + Suib + Jichul ));   //���⼭ ������ (-)��.
        //  lblCha.Caption := displayWon(inttostr(Geumgo + Sije + Suib + hyunJichul ));   //���⼭ ������ (-)��.

          //  lblCha.Caption := displayWon(inttostr(Sije + Suib + hyunJichul - Ibgeum ));   //���⼭ ������ (-)��.


       //   lblJungIbgeum.Caption := displayWon(inttostr(Ibgeum));//Geumgo));
       //   lblGumgo.Caption := displayWon(inttostr(Sije));//Geumgo));

               grdSum.cells[1, 5] := formatFloat('#,0',   Jichul);// '0';//'*����';                  //lblJichul.Caption := '0';
               grdSum.cells[1, 6] := displayWon(inttostr(Ibgeum));// '0';//'*�غ�ݾ�: ';            // lblGumgo.Caption := '0';
               grdSum.cells[1, 7] := displayWon(inttostr(Sije));//'0';//'*�߰��Ա�: ';            //lblJungIbgeum.Caption := '0';
               grdSum.cells[1, 9] := displayWon(inttostr(Sije + Suib + hyunJichul - Ibgeum ));//'0';//'�����ܰ�(�غ�ݾ�+����-����-�߰��Ա�) :';  // lblCha.Caption := '0';

     end;
end;



procedure TjungsanDay_f.SelectSuip(Sdate: string; FDate: string; suipGubun: string);
var
     ARow, ACol: integer;
begin
     with Dm_f.sqlTemp, GrdSuip do
     begin
         // Clear; // RealGrid.Clear;
         rowCount:=1;
          Close;
          Sql.Clear;
          Sql.Add('SELECT JCode, JDay, JChart, JName, JTeam, JHangMok, ');
          Sql.Add('JJukyo, JJichul, JJichulCard, JJichulja, JGubun1, JGubun2 from ma_cash');
          Sql.Add('Where JDay >= :JDay1 and JDay <= :JDay2');
          Sql.Add('and JGubun2= :JGubun2');
          ParamByName('JGubun2').AsString := suipGubun;
          ParamByName('Jday1').AsString := SDate;
          ParamByName('Jday2').AsString := Fdate;
          Open;


          if not Dm_f.sqlTemp.IsEmpty then
               while not EOF do
               begin
                    AddRow; // �׸��忡 �� �ο츦 �߰�
                    Cells[1, RowCount - 1]  := FieldByName('JHangMok').AsString;
                    if FieldByName('JGubun1').AsString = '����' then
                         floats[2, RowCount - 1]  := FieldByName('JJichul').AsFloat
                    else
                         floats[2, RowCount - 1]  := 0;

                    if FieldByName('JGubun1').AsString = 'ī��' then
                         floats[3, RowCount - 1]  := FieldByName('JJichul').AsFloat
                    else
                         floats[3, RowCount - 1]  := 0;
                    if FieldByName('JGubun1').AsString = '������ü' then
                        floats[4, RowCount - 1]  := FieldByName('JJichul').AsFloat
                    else
                         floats[4, RowCount - 1]  := 0;

                    Cells[5, RowCount - 1]  := FieldByName('JJukyo').AsString;
                    Next;
               end;
       //   CalcFooters;
       autonumbercol(0);
     end;

end;



function TjungsanDay_f.CntStat(dt1, dt2 : Tdatetime ; varDoc:string) :TStatAnal;
const
//   SQL_SELECT_sinwan =
//          'SELECT  chart, first_day ,name ,doc, jumin, fam_id, refer_name,    '#10#13 +
//          'h_zip, h_juso, refer_chart                                         '#10#13 +
//          'FROM    view_gogek                                                   '#10#13 +
//          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2           ';

   SQL_SELECT_DateWeek_new =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2           '#10#13 +
          '  group by datepart(dw, jin_day)                                 ';


   SQL_SELECT_DateWeek_shin =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2   and first_day = jin_day        '#10#13 +
          '  group by datepart(dw, jin_day)                                 ';

   SQL_SELECT_DateWeek_all =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2           ';

   SQL_SELECT_sinhwan =
          'SELECT  count(*) as hwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day = :jin_day        ';

   SQL_SELECT_GuHwan =
          'SELECT  count(*) as hwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2  and jin_day <> first_day         ';

   SQL_SELECT_AllHwan =
          'SELECT  count(*) as hwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2        ';


   SQL_SELECT_Gender =
      'select  COUNT(                                                          '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1) in (''1'',''3'',''5'',''7'') )            '+#10#13 +
      '     THEN ''����'' ELSE NULL END) AS ''����'' ,                         '+#10#13 +
      'COUNT(                                                                  '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1)  in (''2'',''4'',''6'',''8'' ) )         '+#10#13 +
      '     THEN ''����'' ELSE NULL END) AS ''����'' ,                         '+#10#13 +
      'COUNT(                                                                  '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1)  not in (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'') )   '+#10#13 +
      '     THEN ''�˼�����'' ELSE NULL END) AS ''�˼�����''                   '+#10#13 +
      '   from ma_jubsu                                                        '+#10#13 +
      ' WHERE   jin_day >= :jin_day1  and  jin_day <= :jin_day2                ';


   SQL_SELECT_DongGi = ' select  val, count(val) as countDong                                                                                  ' + #10#13+
                     ' from ma_gogek_munjin m join ma_gogek_basic b on m.chart=b.chart                                                       ' + #10#13+
                     ' where  kind = ''dong''  and   ( (m.regday  = b.first_day) and   ( b.first_day <= :jin_day2  and    b.first_day >= :jin_day1))      ';



   SQL_SELECT_Doc =
          'SELECT  doc, count(doc) as DocCnt                               '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2        ';






   SQL_SELECT_Where_team = ' and doc_code = :doc      ';
   SQL_SELECT_orderby = 'order by first_day, name          ';

var
   WeekCase, i : integer;
        varQuery: string;

begin

     varQuery := LoadGroupDataQuery;


      //������ �ʱ�ȭ�ؾ���....
     SetLength( result.GubunName, 100);
     SetLength( result.DocName, 100);
     SetLength( result.KwamokName, 100);

     SetLength( result.GubunCnt, 100);
     SetLength( result.DocCnt, 100);
     SetLength( result.KwamokCnt, 100);


     result.HwanCnt[0] :=0;   //������ ��üȯ��
     result.HwanCnt[1] :=0;   //��ȯ
     result.HwanCnt[2] :=0;   //��ȯ


       with DM_f.SqlTemp15 do
       begin
              //��ü���� ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_AllHwan;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2);

              Sql.text :=  Sql.text + SQL_SELECT_Where_team ;

              ParamByName('doc').AsString := varDoc;     //�����


             if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


              open;

              result.HwanCnt[0] := fieldByName('hwan').asInteger;

              //��ȯ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_sinHwan;
              ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD', dt1);
              //ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2);

              Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
              ParamByName('doc').AsString := varDoc;     //�����

             if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;




              open;

              result.HwanCnt[1] := fieldByName('hwan').asInteger;


              //��ȯ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_GuHwan;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2);

                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := varDoc;     //�����

              if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;
              open;

              result.HwanCnt[2] := fieldByName('hwan').asInteger;




      end;
end;



procedure TjungsanDay_f.LoadDocList;
var
     ARow, ACol: integer;
     varQuery:string;
     varQuery2:string;
     varDocname : string;
     varDocRow : integer;

     varNewpat  : integer;
     varOldpat : integer;


     varStatAnal: TStatAnal;

begin



     varQuery := LoadGroupDataQuery;
//     varQuery2 := LoadSunapDataQuery;
    varQuery2 :='';
     with  DM_f.SqlTemp, grdDoc do
     begin
          removerows(1,rowCount-1);
          rowCount:=1;



          beginupdate;
          close;
          sql.Clear;
          Sql.Add(' SELECT  sum(bonin1+chong) as totJin, SUM(cash) AS totHyun, SUM(hyunreceipt) as totHYunreceipt ,                                   ');
          Sql.Add(' SUM(tongreceipt) AS totHyunReceipt_tong,                                                              ');
          Sql.Add(' SUM(card)  AS totCard,  SUM(tong) AS totTong,  SUM(tong2) AS totTong2, sum(whanbulak) as totHwanbulek,');
          Sql.Add(' SUM(card + cash + hyunReceipt + tong + tong2 + tongreceipt ) AS totHap ,                              ');
          Sql.Add(' sum(bonin) as ����  ,                                                                                 ');
          Sql.Add(' sum(misugeum) as totmisuek   ,                                                                          ');
          Sql.Add(' sum(kamak) as totKamak  ,                                                                             ');
          Sql.Add(' sum(sunapak) as �����ݾ�,                                                                             ');
          Sql.Add(' (case when sum(sunapak) > sum(bonin) then sum( sunapak - bonin)  else 0 end) as ����,  doc_code,             ');
          Sql.Add('  (select top 1 disp from ma_basic where (code like  ''093%'') and (code <> ''09300'') and val=team ) as teamname,          ');
          Sql.Add('  (select top 1 saName from ma_sawon_basic where said=doc_code and sateam=team ) as doc                  ');
          Sql.Add('FROM     jinryo_p ');
          Sql.Add('WHERE   jin_Day =   :j1 ');
{    sql.add('Select * from ma_basic                                   ');
    sql.add('where  (code like  ''093%'') and (code <> ''09300'')     ');
    sql.add('and inuse <>  ''0'' and (remark = ''TREAT'' or remark = ''MED'' )   ');
    sql.add('and val= :val');
    paramByname('val').asstring := varCode;
    open;
}

//          sql.Text:= '  select doc, sum(sunapek) as �����ݾ�, sum(bohum) as ����  ,   ' + #10#13+
//                     '  (case when sum(sunapek) > sum(bohum) then sum( sunapek - bohum)  else 0 end) as ���� ,  ' + #10#13+
//                     '  SUM(hyun) AS totHyun, SUM(hyunRECEIPT) AS totHyunreceipt, SUM(card) AS totCard,   sum(misuek) as totMisuek, sum(Kamak) as totKamak,   ' + #10#13+
//                     '  SUM(tong) AS totTong , SUM(hyunRECEIPT_tong) AS tothyunRECEIPT_tong, SUM(tong2) AS totTong2, sum(hwanbulek) as TotHwanBulek, '+ #10#13+
//                     '  SUM(hyun + hyunRECEIPT +tong+ hyunRECEIPT_tong +tong2 ) AS totHyun2     '+ #10#13+
//                     '  from ma_sunap' + #10#13+
//                     'where    sday = :j1 '  ;

          parambyname('j1').AsString :=formatdatetime('YYYY-MM-DD', datetimepicker1.date);
       //   parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);



          if cbDoc2.itemindex > 0 then
          begin
              sql.Text:=sql.Text + ' and team = :team    ';
               parambyname('team').AsString := cbDoc2.ColumnItems[cbDoc2.itemindex, 0];
          end;



                if varviewAll <> true then
               begin
                     if varQuery <> '' then
                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                     if varQuery2 <> '' then
                         sql.Add('and  (' + varQuery2 + ' or skind is null )' );
               end;

         sql.Text:=sql.Text +     ' group by  doc_code, team    order by doc';//doc ';
                        //      ' group by   (select top 1 saName from ma_sawon_basic where said=doc_code and sateam=team )  ';

         open;
         if not Dm_f.sqlTemp.isEmpty then
         begin

            while not eof do
            begin
               addrow;

               cells[1, rowcount-1] := trim(fieldByName('doc').asString)  +'['+fieldByName('teamname').asString+']';
               cells[2, rowcount-1] := displaywon(fieldByName('totjin').asString);
               cells[3, rowcount-1] := displaywon(fieldByName('�����ݾ�').asString);
               cells[4, rowcount-1] := displaywon( fieldByName('����').asString);
               cells[5, rowcount-1] := displaywon( fieldByName('����').asString);


              //���⼭  cells[1, rowcount-1]�� ��ȯ���� ��ȯ���� ����´�.
              varDocname:=  cells[1, rowcount-1];
            {  varDocRow:= findDocName(  grdMain,  varDocname ).varRow;
              if     (varDocRow > 0)  and  (varDocname <> '') then
              begin
                 varNewpat :=     grdMain.ints[2, varDocRow] ;
                 varOldpat :=     grdMain.ints[3, varDocRow] ;
              end
              else
              begin
                 varNewpat :=     0;
                 varOldpat :=     0 ;
              end;  }
              varStatAnal := CntStat( datetimepicker1.date,  datetimepicker1.date,
               fieldByName('doc_code').asString);//  varDocname) ;

               ints[6, rowcount-1] :=  varStatAnal.hwanCnt[1] ;//displaywon(inttostr(varNewpat));
               ints[7, rowcount-1] :=  varStatAnal.hwanCnt[2] ; //displaywon(inttostr(varOldpat));// '��ȯ';


{               while not eof do
               begin
                  for i:= 0 to 9 do
                  begin
                     if  fieldByName('cardkind').asString =   varCardGubunArray[i] then
                     begin

                             floats[2,  CrCount + i]  :=  fieldByName('cardGeumek').asFloat ;
                             floats[3,  CrCount + i] :=   fieldByName('cardCount').asFloat ;

                     end;
                  end;
                  next;
               end;

}
{
1����
2������
3����
4����
5��ȯ
6��ȯ
7����
8����
9ī��
10����
11��������
12��Ÿ
13ȯ��
}
               cells[8, rowcount-1] := displaywon( fieldByName('totHyun').asString);
             //  cells[9, rowcount-1] := displaywon( fieldByName('totHyunreceipt').asString);
               cells[9, rowcount-1] := displaywon( fieldByName('totCard').asString);
               cells[10, rowcount-1] := displaywon( fieldByName('totTong').asString);

             //  cells[12, rowcount-1] := displaywon( fieldByName('tothyunRECEIPT_tong').asString);
             //  cells[13, rowcount-1] := displaywon( fieldByName('totTong2').asString);
               cells[11, rowcount-1] := displaywon( fieldByName('totHwanBulEk').asString);
               cells[12, rowcount-1] := displaywon( fieldByName('totMisuEk').asString);
               cells[13, rowcount-1] := displaywon( fieldByName('totKamak').asString);

               next;
            end;



         end
         else
         begin
         end;
          autonumbercol(0);
          endupdate;
    end;
end;

 procedure TjungsanDay_f.LoadTongList;
var
     ARow, ACol: integer;
begin

     with  DM_f.SqlTemp, grdTong do
     begin
          removerows(1,rowCount-1);
          rowCount:=1;
          beginupdate;
          close;
          sql.Clear;
          sql.Text:=
                   ' select chart, (select name from ma_gogek_basic where chart= s.Chart) as iname, tong, tong2, HyunReceipt_tong               ' + #10#13+
                   ' FROM      ma_sunap S   '+ #10#13 +
                   ' WHERE   S.sDay = :j1   and (tong > 0 or tong2 > 0  or HyunReceipt_tong > 0 ) ' ;

          parambyname('j1').AsString :=formatdatetime('YYYY-MM-DD', datetimepicker1.date);

          if cbDoc2.itemindex > 0 then
          begin
              sql.Text:=sql.Text + ' and team = :team    ';
               parambyname('team').AsString := cbDoc2.ColumnItems[cbDoc2.itemindex, 0];
          end;

         open;
         if not Dm_f.sqlTemp.isEmpty then
         begin

            while not eof do
            begin
               addrow;

                    Cells[1, rowcount-1]:= FieldByname('Iname').asString;
                    Cells[2, rowcount-1]:= FieldByname('chart').asString;
                    floats[3, rowcount-1]:= FieldByname('HyunReceipt_tong').asFloat;;   //���� ���ݿ�����
                    floats[4, rowcount-1]:= FieldByname('Tong').asFloat;;   //����
                    floats[5, rowcount-1]:= FieldByname('Tong2').asFloat;; //��Ÿ




               next;
            end;


         end;
          autonumbercol(0);
         endupdate;
    end;
end;


procedure TjungsanDay_f.LoadCardCancelList;
var
     ARow, ACol: integer;
begin

     with  DM_f.SqlTemp, grdCardCancel do
     begin
          removerows(1,rowCount-1);
          rowCount:=1;
          beginupdate;
          close;
          sql.Clear;
          sql.Text:=
                   ' select chart, (select name from ma_gogek_basic where chart= s.Chart) as iname, card               ' + #10#13+
                   ' FROM      ma_sunap S   '+ #10#13 +
                   ' WHERE   S.sDay = :j1   and (card < 0 ) ' ;

          parambyname('j1').AsString :=formatdatetime('YYYY-MM-DD', datetimepicker1.date);

          if cbDoc2.itemindex > 0 then
          begin
              sql.Text:=sql.Text + ' and team = :team    ';
               parambyname('team').AsString := cbDoc2.ColumnItems[cbDoc2.itemindex, 0];
          end;

         open;
         if not Dm_f.sqlTemp.isEmpty then
         begin

            while not eof do
            begin
               addrow;

                    Cells[1, rowcount-1]:= FieldByname('Iname').asString;
                    Cells[2, rowcount-1]:= FieldByname('chart').asString;
                    floats[3, rowcount-1]:= FieldByname('card').asFloat;;   //ī��




               next;
            end;


         end;
          autonumbercol(0);
         endupdate;
    end;
end;


procedure TjungsanDay_f.btnClsClick(Sender: TObject);
begin
     close;
end;

procedure TjungsanDay_f.grdmainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          4..10,12,13:
               begin
                    hAlign := taRightJustify;
               end;
     end;



end;

procedure TjungsanDay_f.grdmainGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          4..10,12,13:
               begin
                    aStyle := ssFinancial;

               end;
     end;

end;

procedure TjungsanDay_f.grdmainGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if ARow mod 2 = 0 then
          ABrush.color := $00EFEFEF;


      if (sender as TadvstringGrid) =  grdmain then
      begin
            if aRow > 0 then
            begin
                if grdmain.cells[11, aRow] =   '����'  then
                begin
                    if aCol= 0 then
                         ABrush.color := clYellow;

                end
                else
                if grdmain.cells[11, aRow] =   '����������'  then
                begin
                    if aCol= 0 then
                         ABrush.color := clRed;

                end;
            end;
      end;



end;

procedure TjungsanDay_f.grdChongGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if aRow = 0 then
          hAlign := taCenter;

     case aCol of
          2..14:
               begin
                    hAlign := taRightJustify;
               end;
     end;

end;

procedure TjungsanDay_f.grdChongGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          2..14:
               begin
                    aStyle := ssFinancial;

               end;
     end;


end;

procedure TjungsanDay_f.grdDocGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if aRow = 0 then
          hAlign := taCenter;
     case aCol of
          2..16 :
               begin
                    hAlign := taRightJustify;
               end;
     end;

end;

procedure TjungsanDay_f.grdDocGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
     case aCol of
          2..16 :
               begin
                    aStyle := ssFinancial;

               end;
     end;


end;

procedure TjungsanDay_f.grdCardGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          2..15 :
               begin
                    aStyle := ssFinancial;

               end;
     end;

end;

procedure TjungsanDay_f.grdCardGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if aRow = 0 then
          hAlign := taCenter;
     case aCol of
          2..15 :
               begin
                    hAlign := taRightJustify;
               end;
     end;

end;

procedure TjungsanDay_f.grdjichulGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if aRow = 0 then
          hAlign := taCenter;
     case aCol of
          2..6:
               begin
                    hAlign := taRightJustify;
               end;
     end;


end;

procedure TjungsanDay_f.grdjichulGetFormat(Sender: TObject;
  ACol: Integer; var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          2..6:
               begin
                    aStyle := ssFinancial;

               end;
     end;

end;

procedure TjungsanDay_f.grdSuipGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if aRow = 0 then
          hAlign := taCenter;
     case aCol of
          2..4:
               begin
                    hAlign := taRightJustify;
               end;
     end;


end;

procedure TjungsanDay_f.grdSuipGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          2..5:
               begin
                    aStyle := ssFinancial;

               end;
     end;

end;

procedure TjungsanDay_f.grdSumGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin

     case aCol of
          1:
               begin
                    hAlign := taRightJustify;
               end;
     end;


end;

procedure TjungsanDay_f.grdSumGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
      case aCol of
          1:
               begin
                    aStyle := ssFinancial;

               end;
     end;

end;

procedure TjungsanDay_f.FormCreate(Sender: TObject);
begin
//      datetimePicker1.Enabled := false;
      //Panel2.Align := alClient;
//      pnlSunapNeyuk.Align := alClient;

//      Combobox1.Items.Clear;
//      Combobox1.Items.AddStrings(Printer.Printers);

     WebGMaps1.APIKey          :=  configValue.varGoogleMapApiKey ;
     WebGMapsGeocoding1.APIKey :=  configValue.varGoogleMapApiKey ;

     //AIzaSyAW509glli1hVJdSfFvOfVBpAdgrq78j9Y


     //���� Seoul, South Korea
     WebGMaps1.MapOptions.DefaultLatitude  :=      37.5326  ;
     WebGMaps1.MapOptions.DefaultLongitude :=      127.024612;


end;


procedure TjungsanDay_f.btnDaymagamClick(Sender: TObject);
var
   varDay : pChar;
begin
          varDay :=pChar( formatdatetime('YYYY-MM-DD',datetimePicker1.date) );

          if   Application.MessageBox( pchar(varDay  + #10 +  '������ ������ �����Ͻðڽ��ϱ�?') , 'Ȯ��',

                         MB_OKCANCEL) = 1 then
                    begin
                         with dm_f.sqlWork do
                         begin

                              Close;
                              SQL.Clear;
                              Sql.Add('update ma_sunap set');
                              Sql.Add('magam = :magam');
                              Sql.Add('where sday = :sday');
                              paramByname('magam').asString := '1';
                              paramByname('sday').asString := formatdatetime('YYYY-MM-DD',datetimePicker1.date);
                              ExecSQL;


                              btnDaymagam.Enabled := false;
                         end;
                  end;

end;

procedure TjungsanDay_f.Button1Click(Sender: TObject);
begin
     SetDefaultPrinter1(Combobox1.Text);
end;

procedure TjungsanDay_f.btnAllMagamClick(Sender: TObject);
begin
          if   Application.MessageBox('��ü ��������� ����ó�� �˴ϴ�.'+#10+'��ü ������ �����Ͻðڽ��ϱ�?', 'Ȯ��',
                         MB_OKCANCEL) = 1 then
                    begin
                         with dm_f.sqlWork do
                         begin
                              Close;
                              SQL.Clear;
                              Sql.Add('update ma_sunap set');
                              Sql.Add('magam = :magam');
                         //     Sql.Add('where sday = :sday');
                              paramByname('magam').asString := '1';
                         //     paramByname('sday').asString := formatdatetime('YYYY-MM-DD',now);
                              ExecSQL;
                         end;
                  end;

end;

procedure TjungsanDay_f.Button4Click(Sender: TObject);
begin
 try
       Button4.Enabled := false;
       if connectPostMDB = true then
             loadPatWithAddress
             else
             begin
               showmessage('Db Ȯ��');
             end;
   finally
       Button4.Enabled := true;
   end;
end;

procedure TjungsanDay_f.LoadDailkyStat;
var
   varStatAnal: TStatAnal;
   i:integer;
var
   adoConn : string;
begin
     //MsAccess ����   TempDB ���庰 ȯ�ڼ� ��ȯ��ȯ ���п�
     adoConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
               extractfilepath(paramstr(0))+'temp\tempdb\temp.mdb'+';Persist Security Info=False';

      try
           Dm_f.AdoConnection3.Connected := false;
           if Dm_f.AdoConnection3.Connected = false then
           begin
                Dm_f.AdoConnection3.ConnectionString := adoConn;
                Dm_f.AdoConnection3.Connected := true;
               // result := true;

           end
           else
           begin
              //  result := true;
           end;

                 with dm_f.ADOQuery2  do
                 begin
                      close;
                      sql.Clear;
                      sql.Text := 'delete from DocTabletemp      ';
                         execSql;
                  end;



      except
           on E: Exception do
           begin
                application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('�˸�'));


                Exit;
           end;
      end;



     //1.�迭�� ��񿡼� �ҷ��� ������ �־�ΰ�,
     varStatAnal:= CntStat2;

     //2. �׸��忡 �Ѹ���.
     with   grdSummary  do
     begin
         rowcount:=1;

         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********��ȯ/��ȯ**********' ;

         addrow;
         cells[0, rowcount - 1] := '��ü����';
         cells[1, rowcount - 1] := '��ȯ' ;
         cells[2, rowcount - 1] := '��ȯ' ;





         addrow;
         cells[0, rowcount - 1] :=  formatFloat('#,0',varStatAnal.hwanCnt[0]) + '��' ;
         cells[1, rowcount - 1] :=  formatFloat('#,0',varStatAnal.hwanCnt[1]) + '��' ;
         cells[2, rowcount - 1] :=  formatFloat('#,0',varStatAnal.hwanCnt[2]) + '��' ;


         with chart1.Series[0] do
         begin
              Clear;
              Add(varStatAnal.hwanCnt[1], '��ȯ');//,  clGreen);    //��ȯ
              Add(varStatAnal.hwanCnt[2], '��ȯ');//,  clYellow);   //��ȯ

         end;



         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********����**********' ;
         addrow;
         cells[0, rowcount - 1] := '����'  ;
         cells[1, rowcount - 1] := '����'  ;
         cells[2, rowcount - 1] := '�� �� ����'  ;
         addrow;
         cells[0, rowcount - 1] := formatfloat('#,0', varStatAnal.genderCnt[0] )+ '��' ;
         cells[1, rowcount - 1] := formatfloat('#,0', varStatAnal.genderCnt[1] )+ '��' ;
         cells[2, rowcount - 1] := formatfloat('#,0', varStatAnal.genderCnt[2] )+ '��' ;


         with chart2.Series[0] do
         begin
              Clear;
              Add(varStatAnal.genderCnt[0], '����');//,  clBlue);
              Add(varStatAnal.genderCnt[1], '����');//,  clPurple);
              Add(varStatAnal.genderCnt[2], '�˼�����');//,  clGray);

         end;




         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********���Ϻ�**********'  ;
         addrow;
         cells[0, rowcount - 1] := '��' ;
         cells[1, rowcount - 1] := '��'  ;
         cells[2, rowcount - 1] := 'ȭ' ;
         cells[3, rowcount - 1] := '��'  ;
         cells[4, rowcount - 1] := '��'  ;
         cells[5, rowcount - 1] := '��' ;
         cells[6, rowcount - 1] := '��' ;

         addrow;
         cells[0, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[0] )+ '��' ;
         cells[1, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[1] )+'��' ;
         cells[2, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[2] )+'��' ;
         cells[3, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[3] )+'��' ;
         cells[4, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[4] )+'��' ;
         cells[5, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[5] )+'��' ;
         cells[6, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[6] )+'��' ;

         with chart5.Series[0] do
         begin
              Clear;
              Add(varStatAnal.dateCnt[0], '��');
              Add(varStatAnal.DateCnt[1], '��');
              Add(varStatAnal.DateCnt[2], 'ȭ');
              Add(varStatAnal.DateCnt[3], '��');
              Add(varStatAnal.DateCnt[4], '��');
              Add(varStatAnal.DateCnt[5], '��');
              Add(varStatAnal.DateCnt[6], '��');

         end;




         addrow;
         MergeRowCells(rowcount - 1 , true);
         cells[0, rowcount - 1] := '**********������κ�**********';



         addrow;
         cells[0, rowcount - 1] := '��� ' ;
         cells[3, rowcount - 1] := 'ȯ�� ��' ;
         MergeCells (0, rowcount-1, 3,1);

         chart3.Series[0].Clear;
         for i:= 0 to intGubun-1 do
         begin
            addrow;
            //showmessage(varStatAnal.gubunName[i]) ;
            cells[0, rowcount - 1 ] :=   varStatAnal.gubunName[i];
            cells[3, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.gubunCnt[i]);
            MergeCells (0, rowcount-1, 3,1);

            with chart3.Series[0] do
            begin

              Add(varStatAnal.gubunCnt[i], varStatAnal.gubunName[i]);


            end;



         end;



         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********�ǻ纰**********';

         addrow;
         cells[0, rowcount - 1] := '�ǻ�';
         cells[3, rowcount - 1] := 'ȯ�� ��' ;
         MergeCells (0, rowcount-1, 3,1);
         chart4.Series[0].Clear;

         for i:= 0 to intDoc-1 do
         begin
            addrow;
            //showmessage(varStatAnal.gubunName[i]) ;
            cells[0, rowcount - 1 ] :=   varStatAnal.DocName[i];
            cells[3, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocCnt[i]);
            MergeCells (0, rowcount-1, 3,1);

            with chart4.Series[0] do
            begin

              Add( varStatAnal.DocCnt[i], varStatAnal.DocName[i]);


            end;


         end;





         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********���̴뺰**********';

         addrow;
         cells[0, rowcount - 1] := '���̴�';
         cells[3, rowcount - 1] := 'ȯ�� ��' ;
         MergeCells (0, rowcount-1, 3,1);
         chart6.Series[0].Clear;

         for i:= 0 to intAge-1 do
         begin
            addrow;
            //showmessage(varStatAnal.gubunName[i]) ;
            cells[0, rowcount - 1 ] :=   varStatAnal.ageName[i];
            cells[3, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.ageCnt[i]);
            MergeCells (0, rowcount-1, 3,1);

            with chart6.Series[0] do
            begin

              Add( varStatAnal.ageCnt[i], varStatAnal.ageName[i]);


            end;


         end;




    {     addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********�������**********';
         addrow;
         cells[0, rowcount - 1] := '����1' ;
         cells[1, rowcount - 1] := '����2' ;

         addrow;
         cells[0, rowcount - 1]   := '~��' ;
         cells[1, rowcount - 1]   := '~��' ;
     }

         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********�ǻ纰   ��ȯ / ��ȯ**********';

         addrow;
         cells[0, rowcount - 1] := '�ǻ�';
         cells[3, rowcount - 1] := 'ȯ�� ��' ;
         cells[4, rowcount - 1] := '��ȯ' ;
         cells[5, rowcount - 1] := '��ȯ' ;
         cells[6, rowcount - 1] := '��Ÿ' ;
       //  MergeCells (0, rowcount-1, 3,1);
        // chart4.Series[0].Clear;

         for i:= 0 to intDoc2-1 do
         begin
            addrow;
            //showmessage(varStatAnal.gubunName[i]) ;


            cells[0, rowcount - 1 ] :=   varStatAnal.DocName2[i];
            cells[3, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocCnt2[i]);
            cells[4, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocChojinCnt[i]);
            cells[5, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocJejinCnt[i]);
            cells[6, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocEtcCnt[i]);
            MergeCells (0, rowcount-1, 3,1);

//            with chart4.Series[0] do
//            begin
//
//              Add( varStatAnal.DocCnt[i], varStatAnal.DocName[i]);
//
//
//            end;


         end;




     end;


end;





function TjungsanDay_f.CntStat2  :TStatAnal;
const
//   SQL_SELECT_sinwan =
//          'SELECT  chart, first_day ,name ,doc, jumin, fam_id, refer_name,    '#10#13 +
//          'h_zip, h_juso, refer_chart                                         '#10#13 +
//          'FROM    view_gogek                                                   '#10#13 +
//          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2           ';

   SQL_SELECT_DateWeek_new =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2           '#10#13 +
          '  group by datepart(dw, jin_day)                                 ';


   SQL_SELECT_DateWeek_shin =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2   and first_day = jin_day        '#10#13 +
          '  group by datepart(dw, jin_day)                                 ';

   SQL_SELECT_DateWeek_all =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2           ';


          //Distinct �ϸ� �ߺ� ������ ���� �پ ���ڰ� �ȸ¾�,,,,�Ф�
   SQL_SELECT_sinhwan =
       //   'SELECT  count(distinct chart) as hwan                                                                    '#10#13 +
          'SELECT  count(*) as hwan                                                                    '#10#13 +
          'FROM    ma_jubsu                                                                            '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2   and first_day = jin_day        ';

   SQL_SELECT_GuHwan =
          'SELECT  count(*) as hwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2  and jin_day <> first_day         ';

   SQL_SELECT_AllHwan =
          'SELECT  count(*) as hwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2        ';


   SQL_SELECT_Gender =
      'select  COUNT(                                                          '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1) in (''1'',''3'',''5'',''7'') )            '+#10#13 +
      '     THEN ''����'' ELSE NULL END) AS ''����'' ,                         '+#10#13 +
      'COUNT(                                                                  '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1)  in (''2'',''4'',''6'',''8'' ) )         '+#10#13 +
      '     THEN ''����'' ELSE NULL END) AS ''����'' ,                         '+#10#13 +
      'COUNT(                                                                  '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1)  not in (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'') )   '+#10#13 +
      '     THEN ''�˼�����'' ELSE NULL END) AS ''�˼�����''                   '+#10#13 +
      '   from ma_jubsu                                                        '+#10#13 +
      ' WHERE   jin_day >= :jin_day1  and  jin_day <= :jin_day2                ';




    SQL_SELECT_Age =
      'select  (left(year(getdate()),4) - convert(int,((convert(varchar,case substring(jumin,1,1) when ''0'' then ''20''    '+#10#13 +
      'else ''19'' end))) +  convert(varchar,substring(jumin,1,2)))) / 10  as JinNai                                         '+#10#13 +
      ', count(*)  as OldMan                                                                                                 '+#10#13 +
      'from ma_jubsu                                                                                                          '+#10#13 +
      'WHERE   (jin_day >=:jin_day1 ) AND (jin_day <= :jin_day2 )  and ((jin_day <> first_day) or (first_day is null)) '+#10#13 +
      'group by   (left(year(getdate()),4) - convert(int,((convert(varchar,case substring(jumin,1,1) when ''0'' then ''20''    '+#10#13 +
      'else ''19'' end))) +  convert(varchar,substring(jumin,1,2)))) / 10                                                      '+#10#13 +
      'order by   (left(year(getdate()),4) - convert(int,((convert(varchar,case substring(jumin,1,1) when ''0'' then ''20''   '+#10#13 +
      'else ''19'' end))) +  convert(varchar,substring(jumin,1,2)))) / 10                                                    ';


    SQL_SELECT_Area =
          'select  (select  top 1 dong+'' ''+Ri +'' ''+ bunji from post where substring(area,1,3)                       '+#10#13 +
          '  +''-''+substring(area,4,3) =zipcode) as dongname , area,                                                   '+#10#13 +
          ' count(*) as oldMan                                                                                          '+#10#13 +
          'from  ma_jubsu                                                                                               '+#10#13 +
          'WHERE   (jin_day >= :Jin_day1) AND (jin_day <= :Jin_Day2)                                                    '+#10#13 +
          'group by  area                                                                                               '+#10#13 +
          'order by dongname                                                                                            ';



   SQL_SELECT_DongGi =
           ' select  val, count(val) as countDong                                                                                  ' + #10#13+
           ' from ma_gogek_munjin m join ma_gogek_basic b on m.chart=b.chart    ' + #10#13+
           ' where  kind = ''dong''  and   ( (m.regday  = b.first_day) and      '#10#13 +
           ' ( b.first_day <= :jin_day2  and  b.first_day >= :jin_day1))        ';



   SQL_SELECT_Doc =
          'SELECT  doc, count(doc) as DocCnt                               '#10#13 +
          'FROM    ma_jubsu                                                '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2  and choje <> ''9''  ';






   SQL_SELECT_Where_team = ' and doc=:doc      ';
   SQL_SELECT_orderby = 'order by first_day, name          ';



   // �ӽ����̺� Drop
   dropTempTable =
    'IF OBJECT_ID(''tempdb..#DocTabletemp'') IS NOT NULL    '+#10+  // �ӽ����̺��� ���� ���
    '   DROP TABLE #DocTabletemp                               ';  // �ӽ����̺� ����

   //����/ �������� ����
   selChojeDoctoTemp =
      'select * into #DocTabletemp                                                                  '+#10+
      ' from (                                                                                      '+#10+
      '                                                                                             '+#10+
      'SELECT  (SELECT  TOP (1) SaName                                                              '+#10+
      '        FROM     ma_sawon_basic                                                              '+#10+
      '        WHERE  (SaID = jinryo_p.doc_code) AND (sateam = jinryo_p.team)) AS docName,          '+#10+
      '              count(doc_code) as docCount,                                                   '+#10+
      '         (case when (select first_day from ma_gogek_basic where chart=jinryo_p.chart)        '+#10+
      '                = jin_day then  count(jin_Day) else 0 end) as cho,                           '+#10+
      '         (case when (select first_day from ma_gogek_basic where chart=jinryo_p.chart)        '+#10+
      '               <> jin_day  then  count(jin_day) else 0 end) as je                            '+#10+
      '                                                                                             '+#10+
      'FROM     jinryo_p                                                                            '+#10+
      'WHERE  (jin_day >= :jin_Day1) AND (jin_day <= :jin_day2)                                     '+#10+
      'group by  team, doc_code ,jin_day, chart                                                     '+#10+
      ') as aaa                                                                                     ';




   selChojeDoc  =
      'select docName, sum(docCount) as tot, sum(cho) as chojin , sum(je) as jejin ,  '+#10+
      '           sum(docCount-cho-je) as etc  from   DocTabletemp                    '+#10+
      'group by docName                                                               ';

   selChojeDocFromMSSQL =
      '                                                                                             '+#10+
      'SELECT  (SELECT  TOP (1) SaName                                                              '+#10+
      '        FROM     ma_sawon_basic                                                              '+#10+
      '        WHERE  (SaID = jinryo_p.doc_code) AND (sateam = jinryo_p.team)) AS docName,          '+#10+
      '              count(doc_code) as docCount,                                                   '+#10+
      '         (case when (select first_day from ma_gogek_basic where chart=jinryo_p.chart)        '+#10+
      '                = jin_day then  count(jin_Day) else 0 end) as cho,                           '+#10+
      '         (case when (select first_day from ma_gogek_basic where chart=jinryo_p.chart)        '+#10+
      '               <> jin_day  then  count(jin_day) else 0 end) as je                            '+#10+
      '                                                                                             '+#10+
      'FROM     jinryo_p                                                                            '+#10+
      'WHERE  (jin_day >= :jin_Day1) AND (jin_day <= :jin_day2) and chojae<>''9''      '+#10+
      'group by  team, doc_code ,jin_day, chart                                                     ';
   selChojeDocFromMsAccess  =
      'select docName, sum(docCount) as tot, sum(cho) as chojin , sum(je) as jejin ,  '+#10+
      '           sum(docCount-cho-je) as etc  from   DocTabletemp                   '+#10+
      'group by docName                                                               ';
//  selChojeDocFromMSSQL
//  selChojeDocFromMsAccess
var
   WeekCase, i : integer;
        varQuery: string;
        weekStartDay: TDate;

begin


   //       shinhwan: integer;
   //       guhwan: integer;
   //       dateCnt: array[0..6] of integer;   //0:��, 1:��...6:��
   //       genderCnt:array[0..1] of integer;  //0:����, 1: ����   2:�˼�����


   //       GubunName: array of String;   //���������׸�
   //       GubunCnt: array of integer;   //�������� ī��Ʈ
   //       DocName:array of String;      //�ǻ��
   //       DocCnt:array of Integer;      //�ǻ� ī��Ʈ
   //       KwamokName : array of String; //�����
   //       KwamokCnt : array of Integer; //����ī��Ʈ

     varQuery := LoadGroupDataQuery;


      //������ �ʱ�ȭ�ؾ���....
     SetLength( result.GubunName, 100);
     SetLength( result.DocName, 100);
     SetLength( result.KwamokName, 100);
     SetLength( result.AgeName, 100);

     SetLength( result.GubunCnt, 100);
     SetLength( result.DocCnt, 100);

     SetLength( result.DocName2, 100);
     SetLength( result.DocCnt2, 100);
     SetLength( result.DocChojinCnt, 100);
     SetLength( result.DocJejinCnt, 100);
     SetLength( result.DocEtcCnt, 100);




     SetLength( result.KwamokCnt, 100);
     SetLength( result.AgeCnt, 100);


     for i:= 0 to 99 do
     begin
       result.GubunName[i] :='';
       result.DocName[i] :='';
       result.KwaMokName[i] :='';
       result.AgeName[i] :='';

       result.GubunCnt[i] :=0;
       result.DocCnt[i] :=0;

       result.DocName2[i] :='';
       result.DocCnt2[i] :=0;
       result.DocChojinCnt[i] :=0;
       result.DocJejinCnt[i] :=0;
       result.DocEtcCnt[i] :=0;



       result.KwaMokCnt[i] :=0;
       result.AgeCnt[i] :=0;

     end;


     for i:= 0 to 6 do
     begin
       result.dateCnt[i] :=0;
     end;


     result.genderCnt[0] :=0;//����
     result.genderCnt[1] :=0; //����
     result.genderCnt[2] :=0; //�˼�����

     result.HwanCnt[0] :=0;   //������ ��üȯ��
     result.HwanCnt[1] :=0;   //��ȯ
     result.HwanCnt[2] :=0;   //��ȯ

     intGubun  := 0;
     intDoc    := 0;
     intDoc2   := 0;
     intKwamok := 0;
     intAge    := 0;


       with DM_f.SqlTemp do
       begin
              //��ü���� ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_AllHwan;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);

//              if cbTeamName.itemindex > 0 then
//              begin
//                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
//                 ParamByName('doc').AsString := cbTeamName.text;     //�����
//              end;


             if  varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


              open;

              result.HwanCnt[0] := fieldByName('hwan').asInteger;

              //��ȯ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_sinHwan;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);

//              if cbTeamName.itemindex > 0 then
//              begin
//                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
//                 ParamByName('doc').AsString := cbTeamName.text;     //�����
//              end;

             if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;




              open;

              result.HwanCnt[1] := fieldByName('hwan').asInteger;


              //��ȯ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_GuHwan;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);

//              if cbTeamName.itemindex > 0 then
//              begin
//                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
//                 ParamByName('doc').AsString := cbTeamName.text;     //�����
//              end;

              if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;
              open;

              result.HwanCnt[2] := fieldByName('hwan').asInteger;




              //���Ϻ� ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_DateWeek_all;
              weekStartDay :=   dateBeginOfWeek(datetimepicker1.Date , dateWeekOfYear(datetimepicker1.Date));   //�̹��� ù��...

              ParamByName('jin_day1').AsString :=  FormatDateTime('YYYY-MM-DD',weekStartDay);// datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);

//              if cbTeamName.itemindex > 0 then
//              begin
//                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
//                 ParamByName('doc').AsString := cbTeamName.text;     //�����
//              end;

               if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


               Sql.text :=  Sql.text +          '  group by datepart(dw, jin_day)                                 ';



              open;
              if not isEmpty then
              begin

                   while not eof do
                   begin
                       WeekCase:=  strcase( fieldByname('DayWeek').asString,['1','2','3','4','5','6','7']);

                      case   WeekCase of
                         0..6:  result.dateCnt[WeekCase] := fieldByName('hwan').asInteger;
                      end;
                      next;
                   end;

              end;

             //���� ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_Gender;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);

//              if cbTeamName.itemindex > 0 then
//              begin
//                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
//                 ParamByName('doc').AsString := cbTeamName.text;     //�����
//              end;


               if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


              open;
              if not isEmpty then
              begin
                     result.genderCnt[0]:= fieldByname('����').asinteger;
                     result.genderCnt[1]:= fieldByname('����').asinteger;
                     result.genderCnt[2]:= fieldByname('�˼�����').asinteger;

              end;

             //Age �� ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_Age;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);

//              if cbTeamName.itemindex > 0 then
//              begin
//                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
//                 ParamByName('doc').AsString := cbTeamName.text;     //�����
//              end;


               if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


              open;
              if not isEmpty then
              begin

                  while not eof do
                   begin
                       result.ageName[intAge]  :=  fieldByName('jinNai').asString+'0 ��';
                       result.AgeCnt[intAge]   :=  fieldByName('oldMan').asInteger;
                       next;
                       intAge := intAge + 1;
                   end;


              end;



              //�������� ��  ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_DongGi;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);

//              if cbTeamName.itemindex > 0 then
//              begin
//                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
//                 ParamByName('doc').AsString := cbTeamName.text;     //�����
//              end;

               if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (m.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;



              sql.Text:=sql.Text +   ' group by val ';

              open;
              if not isEmpty then
              begin
                   while not eof do
                   begin
                       result.GubunName[intGubun]  :=  fieldByName('val').asString;
                       result.GubunCnt[intGubun]  :=  fieldByName('CountDong').asInteger;
                       next;
                       intGubun := intGubun + 1;
                   end;
              end;

              //�ǻ纰 ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_Doc;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);

//              if cbTeamName.itemindex > 0 then
//              begin
//                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
//                 ParamByName('doc').AsString := cbTeamName.text;     //�����
//              end;


              if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;

              sql.Text:=sql.Text +   ' group by doc ';

              open;
              if not isEmpty then
              begin
                   while not eof do
                   begin
                       result.DocName[intDoc]  :=  fieldByName('Doc').asString;
                       result.DocCnt[intDoc]  :=  fieldByName('DocCnt').asInteger;
                       next;
                       intDoc := intDoc + 1;
                   end;
              end;




      end;




       with DM_f.SqlTemp do
       begin
              //------------------------------------------------------------------------------
//    selChojeDocFromMSSQL
//  selChojeDocFromMsAccess

              //�ǻ纰 ȯ�ڼ�, ��ȯ��, ��ȯ��

              close;
              sql.clear;
                  //����/ �������� ���� �� tempTable�� insert
              SQL.Text := selChojeDocFromMSSQL;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', datetimepicker1.Date);
              open;
                 if not isEmpty then
                begin
                   while not eof do
                   begin

                     insertTempDb( fieldByName('docName').AsString,
                          fieldByName('docCount').AsInteger,
                          fieldByName('cho').AsInteger,
                          fieldByName('je').AsInteger);

                     next;
                   end;
                end;



             //-------------------------------------------------------------------
     end;

     with dm_f.ADOQuery2 do
     begin
              SQL.Text := selChojeDoc ;
              open;

              if not isEmpty then
              begin
                   while not eof do
                   begin


                       result.DocName2[intDoc2]       :=  fieldByName('Docname').asString;
                       result.DocCnt2[intDoc2]        :=  fieldByName('tot').asInteger;
                       result.DocChojinCnt[intDoc2]   :=  fieldByName('Chojin').asInteger;
                       result.DocJejinCnt[intDoc2]    :=  fieldByName('Jejin').asInteger;
                       result.DocEtcCnt[intDoc2]      :=  fieldByName('Etc').asInteger;

                       next;
                       intDoc2 := intDoc2 + 1;
                   end;
              end;
     end;

end;

procedure TjungsanDay_f.insertTempDb(docname:string; docCount, cho, je:integer);
begin


     with dm_f.ADOQuery2  do
     begin

          close;
          sql.Clear;
          sql.Text := 'insert into DocTabletemp      ' +#10+
                '(docname, docCount, cho, je) values ' +#10+
                '(:docname, :docCount, :cho, :je)    ' ;
            parameters.ParamByName('docname').Value  :=   docname;
            parameters.ParamByName('docCount').Value :=   docCount;
            parameters.ParamByName('cho').Value      :=   cho;
            parameters.ParamByName('je').Value       :=   je;
            execSql;
     end;

end;

procedure TjungsanDay_f.InitClusters;
var
  c: TMapCluster;
begin
  WebGMaps1.Clusters.Clear;
  WebGMaps1.DeleteAllMapCluster;
    c := WebGMaps1.Clusters.Add().Cluster;
    c.Title := 'korea';

 end;


function TjungsanDay_f.AddMarker(Address: string; Hint : string; Cluster: TMapCluster): TMarker;
var
  m: TMarker;
begin
//  address := '';
//  InputQuery('Lookup address','Address',address);
//  if address <> '' then
//  begin
//    WebGMapsGeocoding1.Address := address;
//
//    if WebGMapsGeocoding1.LaunchGeocoding = erOk then
//    begin
//      WebGMaps1.Markers.Add(WebGMapsGeocoding1.ResultLatitude,
//                            WebGMapsGeocoding1.ResultLongitude,
//                            address,'',false,true,false,false,true,0);
//      WebGMaps1.MapPanTo(WebGMapsGeocoding1.ResultLatitude,WebGMapsGeocoding1.ResultLongitude);
//    end
//    else
//    begin
//      Showmessage('Problem with the geocoding of the address !!!');
//    end;
//  end;

     try
      WebGMapsGeocoding1.Address := Address;
      if WebGMapsGeocoding1.LaunchGeocoding = erOk then
      begin
        m := WebGMaps1.Markers.Add(WebGMapsGeocoding1.ResultLatitude,
                            WebGMapsGeocoding1.ResultLongitude, Address);
                 m.Title :=hint;
        m.Cluster := Cluster;
        Result := m;

      end
      else
        Result := nil;
     except

     end;

//     try
//      WebGMapsGeocoding1.Address := Address;
//      if WebGMapsGeocoding1.LaunchGeocoding = erOk then
//      begin
//        m := WebGMaps1.Markers.Add(WebGMapsGeocoding1.ResultLatitude,
//                            WebGMapsGeocoding1.ResultLongitude, Address);
//                 m.Title :=hint;
//        m.Cluster := Cluster;
//        Result := m;
//
//      end
//      else
//        Result := nil;
//     except
//
//     end;


end;


function TjungsanDay_f.AddMarker2(
    Latitude  : double;
    Longitude : double;
    Address: string;
    Hint : string;
    Cluster: TMapCluster): TMarker;
var
  m: TMarker;
begin

     try
   //   WebGMapsGeocoding1.Address := Address;
   //   if WebGMapsGeocoding1.LaunchGeocoding = erOk then
   //   begin
        m := WebGMaps1.Markers.Add( Latitude,
                                    Longitude,
                                    Address);
        m.Title   :=hint;
        m.Cluster := Cluster;
        Result    := m;

   //   end
   //   else
   //     Result := nil;
     except
          Result := nil;
     end;



end;



procedure TjungsanDay_f.grdTreatGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if aRow = 0 then
          hAlign := taCenter;

     case aCol of
          2..7 :
               begin
                    hAlign := taRightJustify;
               end;
     end;

end;

procedure TjungsanDay_f.grdTreatGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
 case aCol of
          2..7:
               begin
                    aStyle := ssFinancial;

               end;
     end;

end;

function TjungsanDay_f.ConnectPostMDB:boolean;
var
   adoConn : string;

begin
  result:=true;
      //MsAccess ���� Post���� �����ȣ�� �ּ� ��������.
     adoConn :=   'Provider=Microsoft.Jet.OLEDB.4.0;'
                    + 'Jet OLEDB:Database Password=dlrjtdldkaghekgkgkgk;'
                    + 'Data Source=' + extractfilepath(paramstr(0))+'postDB\newpost.mdb'
                    + ';Mode=ReadWrite;'
                    + 'Persist Security Info=False';

      try
           Dm_f.AdoConnection1.Connected := false;
           if Dm_f.AdoConnection1.Connected = false then
           begin
                Dm_f.AdoConnection1.ConnectionString := adoConn;
                Dm_f.AdoConnection1.Connected := true;
           end;


      except
           on E: Exception do
           begin
                result:= false;
                application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('�˸�'));
//                Exit;
           end;
      end;


end;


procedure TjungsanDay_f.DateTimePicker1Change(Sender: TObject);
begin
     lblDay2.caption := formatDateTime('YYYY-MM-DD', dateTimePicker1.Date) +
          ' [' + ReturnWeek2(dateTimePicker1.Date) + ']';

end;

function TjungsanDay_f.loadFromZipcode(areacode : string):string;
  var
   adoConn : string;

begin
     result := '';
     if length(areacode) <=0 then
      exit;


             try
                 with dm_f.ADOQuery2  do
                 begin
                      close;
                      sql.Clear;
                      if length(areacode) = 5 then

                          sql.Text := 'select top 1 * from PostCode where ������ȣ=:areacode '
                      else
                        if length(areacode) = 6 then
                           sql.Text := 'select top 1 * from PostCode where �����ȣ=:areacode ';
                      parameters.paramByname('areacode').Value  := areacode;
                      open;
                      result:= fieldByName('�õ�').AsString +' '+
                          fieldByName('�ñ���').AsString +' '+
                          fieldByName('����').AsString +' '+
                          fieldByName('���θ�').AsString;
                  end;

             except

             end;

end;

procedure TjungsanDay_f.loadPatWithAddress;
var
   i, j : integer;
   h_juso : string;
   chart  : string;

   aLatitude  : string;
   aLongitude : string;
   fLatitude  : double;
   fLongitude : double;

begin
      //
    InitClusters;

      i:= 0;
      j:= 0;
   //   advstringGrid1.RemoveRows(1,advstringGrid1.RowCount-1);

    Screen.Cursor := crHourGlass;
    WebGMaps1.Markers.Clear;
    WebGMaps1.MapPanTo(WebGMaps1.MapOptions.DefaultLatitude,
              WebGMaps1.MapOptions.DefaultLongitude);

    WebGMaps1.MapOptions.ZoomMap := 10;
      with dm_f.sqlTemp do
      begin
           close;
           sql.Clear;
//           sql.Text := 'select h_juso from view_gogek where h_juso <> '''' '+#10+
//                 ' and (first_day >= :first_day1 and  first_day <= :first_day2) '+#10+
//                 ' and  h_juso not like ''%(%'' ';


           sql.Text :=
//                 'select (select top 1 zipcode from ma_gogek_address where chart=ma_jubsu.chart and kind=''1'') as area2,  '+#10+
//                 ' chart, (select top 1 name from ma_gogek_basic where chart=ma_jubsu.chart) as pName from ma_jubsu where  '+#10+
//                 '  (jin_day >= :first_day1 and  jin_day <= :first_day2)                                                   ';

              'select (select top 1 zipcode from ma_gogek_address where chart=ma_jubsu.chart and kind=''1'') as area2,  '+#10+
              '  (select top 1 Latitude from ma_gogek_address where chart=ma_jubsu.chart and kind=''1'') as Latitude,  '+#10+
              '  (select top 1 Longitude from ma_gogek_address where chart=ma_jubsu.chart and kind=''1'') as Longitude,  '+#10+
                 ' chart, (select top 1 name from ma_gogek_basic where chart=ma_jubsu.chart) as pName from ma_jubsu where  '+#10+
                 '  (jin_day >= :first_day1 and  jin_day <= :first_day2)                                                   ';


                 paramByname('first_day1').AsString:= formatDatetime('YYYY-MM-DD',datetimepicker1.Date);
                 paramByname('first_day2').AsString:= formatDatetime('YYYY-MM-DD',datetimepicker1.Date);
           open;
           if not isEmpty then
           begin
              //  advstringGrid1.RowCount := recordCount + 1;
               progressbar1.Position := 0;
               progressbar1.Min := 0;
               progressbar1.Max:=   recordCount;
                while not eof do
                begin

                    //  advstringGrid1.Cells[0, i] := fieldByname('h_juso').Text;
                    //  h_juso := fieldByname('h_juso').asString;
                  //    h_juso := loadFromZipcode( fieldByname('area2').asString);
                      h_juso :=  fieldByname('area2').asString;
                      chart  := fieldByname('pname').asString +'('+ fieldByname('chart').asString+')' ;


                      aLatitude  :=  fieldByname('Latitude').asString;
                      aLongitude :=  fieldByname('Longitude').asString;

                  if trim(aLatitude)  <> '' then
                  begin
                      fLatitude  :=  strtoFloat(aLatitude);
                      fLongitude :=  strtoFloat(aLongitude);

                     if AddMarker2(fLatitude, fLongitude, h_juso,
                          chart,  WebGMaps1.Clusters[0].Cluster) = nil then
                     begin
                          j:= j+1;
                          lblAddUnKnownCount.Caption := inttostr(j);
                     end
                     else
                     begin
                           i:= i+1;
                          lblAddKnownCount.Caption := inttostr(i);
                     end;
                  end
                  else
                  begin
                          j:= j+1;
                          lblAddUnKnownCount.Caption := inttostr(j);
                  end;

                      progressbar1.Position := i+j;
                      application.ProcessMessages;
                      next;
                end;
           end;
      end;
      {1: World
5: Landmass/continent
10: City
15: Streets
20: Buildings}
         WebGMaps1.MapOptions.ZoomMap := 10;
          WebGMaps1.CreateMapCluster(WebGMaps1.Clusters[0].Cluster);

          Screen.Cursor := crDefault;

end;



procedure TjungsanDay_f.TreatCnt;
const

          //--���ʰ�
          sqlOsip=
          '  select                                                                                                    '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 9 then 1 end ),0)[2019-09],                                        '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 10 then 1 end ),0)[2019-10],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 11 then 1 end ),0)[2019-11],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 12 then 1 end ),0)[2019-12],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 1 then 1 end ),0)[2020-01],                                        '+#10+
          'isNull(sum(case  jin_Day   when  convert(char(10),GETDATE(),121)  then 1 end ),0)  [����]                     '+#10+
          'FROM jinryo_s                                                                                                 '+#10+
          'where jin_day >=:jinday1  and  jin_day <=:jinday2  and su_kor_name like ''%shoulder%''  and g_check =''G''  ';

          //--VIP �ǰ�����

          sqlVIP=
          '  select                                                                                                    '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 9 then 1 end ),0)[2019-09],                                        '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 10 then 1 end ),0)[2019-10],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 11 then 1 end ),0)[2019-11],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 12 then 1 end ),0)[2019-12],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 1 then 1 end ),0)[2020-01],                                        '+#10+
          'isNull(sum(case  jin_Day   when  convert(char(10),GETDATE(),121)  then 1 end ),0)  [����]                     '+#10+
          'FROM jinryo_s                                                                                                 '+#10+
          'where jin_day >=:jinday1  and  jin_day <=:jinday2  and su_kor_name like ''%�޻�%''  and g_check =''G''  ';



          //--AVF
          sqlAVF=
          '  select                                                                                                    '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 9 then 1 end ),0)[2019-09],                                        '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 10 then 1 end ),0)[2019-10],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 11 then 1 end ),0)[2019-11],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 12 then 1 end ),0)[2019-12],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 1 then 1 end ),0)[2020-01],                                        '+#10+
          'isNull(sum(case  jin_Day   when  convert(char(10),GETDATE(),121)  then 1 end ),0)  [����]                     '+#10+
          'FROM jinryo_s                                                                                                 '+#10+
          'where jin_day >=:jinday1  and  jin_day <=:jinday2  and su_kor_name like ''%avf%''  and g_check =''G''  ';

          //--�ڱñ��� '%����������-��Ÿ����%'

          sqlJaGung=
          '  select                                                                                                    '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 9 then 1 end ),0)[2019-09],                                        '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 10 then 1 end ),0)[2019-10],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 11 then 1 end ),0)[2019-11],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 12 then 1 end ),0)[2019-12],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 1 then 1 end ),0)[2020-01],                                        '+#10+
          'isNull(sum(case  jin_Day   when  convert(char(10),GETDATE(),121)  then 1 end ),0)  [����]                     '+#10+
          'FROM jinryo_s                                                                                                 '+#10+
          'where jin_day >=:jinday1  and  jin_day <=:jinday2  and su_key like ''%M6644%''  ';



          //--��������������

          sqlJunRip=
          '  select                                                                                                    '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 9 then 1 end ),0)[2019-09],                                        '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 10 then 1 end ),0)[2019-10],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 11 then 1 end ),0)[2019-11],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 12 then 1 end ),0)[2019-12],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 1 then 1 end ),0)[2020-01],                                        '+#10+
          'isNull(sum(case  jin_Day   when  convert(char(10),GETDATE(),121)  then 1 end ),0)  [����]                     '+#10+
          'FROM jinryo_s                                                                                                 '+#10+
          'where jin_day >=:jinday1  and  jin_day <=:jinday2  and su_key like ''%m1660%''  ';

          //--������

          sqlVenasil=
          '  select                                                                                                    '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 9 then 1 end ),0)[2019-09],                                        '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 10 then 1 end ),0)[2019-10],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 11 then 1 end ),0)[2019-11],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 12 then 1 end ),0)[2019-12],                                       '+#10+
          'isNull(sum(case datepart(mm,jin_Day)  when 1 then 1 end ),0)[2020-01],                                        '+#10+
          'isNull(sum(case  jin_Day   when  convert(char(10),GETDATE(),121)  then 1 end ),0)  [����]                     '+#10+
          'FROM jinryo_s                                                                                                 '+#10+
          'where jin_day >=:jinday1  and  jin_day <=:jinday2  and su_key like ''%BJ4321DU%''  ';


var
     ARow, ACol, i: integer;
begin

     with  DM_f.SqlTemp, grdTreat do
     begin
        //  removerows(1,rowCount-1);
        //  rowCount:=1;
          beginupdate;

         for I := 0 to 5 do
         begin
          close;
          sql.Clear;
          case i of
             0:    sql.Text:=  sqlOsip;
             1:    sql.Text:=  sqlVIP;
             2:    sql.Text:=  sqlAVF;
             3:    sql.Text:=  sqlJaGung;
             4:    sql.Text:=  sqlJunRip;
             5:    sql.Text:=  sqlVenasil;
          end;


           parambyname('jinday1').AsString :='2019-09-01';
           parambyname('jinday2').AsString :=formatdatetime('YYYY-MM-DD', datetimepicker1.date);

           open;
           if not Dm_f.sqlTemp.isEmpty then
           begin

          case i of
             0:    Cells[1, i+1 ]:= '���ʰ�';
             1:    Cells[1, i+1 ]:= 'VIP �ǰ�����';
             2:    Cells[1, i+1 ]:= 'AVF';
             3:    Cells[1, i+1 ]:= '�ڱñ���';
             4:    Cells[1, i+1 ]:= '��������������';
             5:    Cells[1, i+1 ]:= '������';
          end;


                Cells[2, i+1 ]:= Fields[0].asString;
                Cells[3, i+1 ]:= Fields[1].asString;
                cells[4, i+1 ]:= Fields[2].asString;
                cells[5, i+1 ]:= Fields[3].asString;
                cells[6, i+1 ]:= Fields[4].asString;
                cells[7, i+1 ]:= Fields[5].asString;
           end;
         end;

          autonumbercol(0);
          endupdate;
    end;
end;



end.


