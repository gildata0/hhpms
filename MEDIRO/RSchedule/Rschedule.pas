unit Rschedule;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs,
     Inifiles,
     StdCtrls, Mask,  ExtCtrls, 
     ComCtrls,   Grids, BaseGrid, AdvGrid, AdvGlowButton,
     AdvProgressBar, Menus, AdvPanel, EllipsLabel, rtflabel, AdvObj,
     AdvMenus, AdvSplitter, AdvSmoothStatusIndicator, AdvUtil ;

type
     TRSchedule_f = class(TForm)
          PopupMenu1: TPopupMenu;
          N1: TMenuItem;
          N2: TMenuItem;
          N3: TMenuItem;
          N4: TMenuItem;
          N14: TMenuItem;
          N7: TMenuItem;
          Timer1: TTimer;
          AdvPopupMenu6: TAdvPopupMenu;
          N75: TMenuItem;
          MenuItem1: TMenuItem;
          AdvPanelStyler1: TAdvPanelStyler;
          pnlMain: TPanel;
          pnlPromise: TAdvPanel;
          AdvPanel1: TAdvPanel;
          Label12: TLabel;
          GrdYeyak: TAdvStringGrid;
          pnlRecall: TAdvPanel;
          AdvPanel3: TAdvPanel;
          Label11: TLabel;
          grdRecall: TAdvStringGrid;
          AdvSplitter1: TAdvSplitter;
          AdvSplitter2: TAdvSplitter;
          Panel1: TPanel;
          pnlYeyakCall: TAdvPanel;
          AdvPanel2: TAdvPanel;
          Label5: TLabel;
          Label6: TLabel;
          Label7: TLabel;
          progressbar: TAdvProgressBar;
          btnToday: TAdvGlowButton;
          btnSch: TAdvGlowButton;
          btnXls: TAdvGlowButton;
          RadioGroup1: TRadioGroup;
          grdCall: TAdvStringGrid;
          pnlBirth: TAdvPanel;
          AdvPanel4: TAdvPanel;
          Label8: TLabel;
          Label10: TLabel;
          grdBirth: TAdvStringGrid;
          pnlWorkList: TAdvPanel;
          AdvPanel5: TAdvPanel;
          lblVar: TLabel;
          GrdWork2: TAdvStringGrid;
          pnlCall: TAdvPanel;
          AdvPanel6: TAdvPanel;
          Label9: TLabel;
          grdTelRec: TAdvStringGrid;
          AdvSplitter3: TAdvSplitter;
          AdvSplitter4: TAdvSplitter;
          AdvSplitter5: TAdvSplitter;
          yeyakindicator: TAdvSmoothStatusIndicator;
          RecallIndicator: TAdvSmoothStatusIndicator;
          workindicator: TAdvSmoothStatusIndicator;
          birthIndicator: TAdvSmoothStatusIndicator;
          callIndicator: TAdvSmoothStatusIndicator;
          Telindicator: TAdvSmoothStatusIndicator;
          Label3: TLabel;
          Label2: TLabel;
          Label1: TLabel;
          Label4: TLabel;
    pnlMinewon: TAdvPanel;
    MinewonIndicator: TAdvSmoothStatusIndicator;
    grdNew: TAdvStringGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    cbTeam: TComboBox;
    AdvSplitter6: TAdvSplitter;
    PopupMenu2: TPopupMenu;
    N5: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    RC1: TMenuItem;
    MenuItem5: TMenuItem;
    spSkinButton2: TButton;
    Button2: TButton;
    spSkinButton4: TButton;
    spSkinButton3: TButton;
    Button1: TButton;
    spSkinButton5: TButton;
    btnMinewonDateInit: TButton;
    btnMinewon: TButton;
    spSkinButton16: TButton;
    btnPrt: TButton;
    btnSms: TButton;
    spSkinButton10: TButton;
    spSkinButton11: TButton;
    spSkinButton13: TButton;
    spSkinButton12: TButton;
    spSkinButton7: TButton;
    BtnReg: TButton;
    spSkinButton6: TButton;
    Button3: TButton;
    spSkinButton14: TButton;
    spSkinButton1: TButton;
    spSkinButton8: TButton;
    BtnTel: TButton;
    dpYeyak1: TDateTimePicker;
    dpYeyak2: TDateTimePicker;
    dpRecall1: TDateTimePicker;
    dpRecall2: TDateTimePicker;
    dt1: TDateTimePicker;
    dt2: TDateTimePicker;
    dt0: TDateTimePicker;
    dtDate1: TDateTimePicker;
    dtdate2: TDateTimePicker;
    deSch1: TDateTimePicker;
    deSch2: TDateTimePicker;
    DtTelFirst: TDateTimePicker;
    DtTelLast: TDateTimePicker;
    wcYTeam: TComboBox;
    wcRteam: TComboBox;
    spSkinComboBox2: TComboBox;
    wcName: TComboBox;
    spSkinComboBox1: TComboBox;
    CbDoWork: TCheckBox;
    spSkinStdLabel2: TLabel;
    Panel2: TPanel;
    BtnCls: TButton;
    CBView: TCheckBox;
          procedure BtnClsClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure FieldClear;
          procedure SelectDataYeyak;
          procedure SelectDataRECALL;
          procedure DeSchChange(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormCreate(Sender: TObject);
          procedure spSkinButton2Click(Sender: TObject);
          procedure spSkinButton3Click(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure Button3Click(Sender: TObject);
          procedure Button2Click(Sender: TObject);
          procedure spSkinButton5Click(Sender: TObject);
          procedure spSkinButton4Click(Sender: TObject);
          procedure spSkinButton6Click(Sender: TObject);
          procedure wcNameChange(Sender: TObject);
          procedure wcYTeamChange(Sender: TObject);
          procedure wcRteamChange(Sender: TObject);
          procedure BtnRegClick(Sender: TObject);
          procedure BtnTelClick(Sender: TObject);
          procedure spSkinButton9Click(Sender: TObject);
          procedure btnSchClick(Sender: TObject);
          procedure lblWorkClick(Sender: TObject);
          procedure spSkinButton11Click(Sender: TObject);
          procedure spSkinButton13Click(Sender: TObject);
          procedure grdBirthClickCell(Sender: TObject; ARow, ACol: Integer);
          procedure spSkinButton15Click(Sender: TObject);
          procedure dt0Change(Sender: TObject);
          procedure RadioGroup1Click(Sender: TObject);
          procedure N1Click(Sender: TObject);
          procedure btnSmsClick(Sender: TObject);
          procedure N75Click(Sender: TObject);
          procedure GrdWork2GetCellColor(Sender: TObject; ARow, ACol: Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure GrdWork2DblClick(Sender: TObject);
          procedure grdRecallGetCellColor(Sender: TObject; ARow, ACol: Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure Timer1Timer(Sender: TObject);
          procedure CBViewClick(Sender: TObject);
          procedure spSkinButton12Click(Sender: TObject);
          procedure spSkinButton14Click(Sender: TObject);
    procedure GrdYeyakGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure btnMinewonClick(Sender: TObject);
    procedure btnMinewonDateInitClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
     private
          procedure LoadGridData;
          procedure LoadpromiseList(varindex: integer; sDate, fDate: Tdate;
               varKind: string = '0');
          procedure LoadCount;
          procedure SelectDataBirth;
          procedure PromiseWindowOpen(varDay, varName: string);
          procedure SelectTelRecord;
          procedure CloseandSave;
    procedure SetYeyakMiNewon;
          { Private declarations }
     public
          { Public declarations }
          VarId, VarName: string;
          procedure SelectDataWork;
          procedure SawonLoad;
          procedure teamLoad;
     end;

var
     RSchedule_f: TRSchedule_f;
     Path: string;
     FormInit: TIniFile;
var
     //varRecallKind (rcKind)
     //1: Recall
     //2: Chart_Recall
     //3: Happycall
     //4: 예약리콜
     //5: 알람리콜

     RKind1: array[1..7] of string = ('', '', '', '연락안됨', '재예약(연락)',
          '리콜',
          '연락완료');
     RKindrecall: array[1..5] of string = ('F/U', 'F/U', '해피콜', '예약리콜',
          '알람');
 
     RKind2: array[4..7] of string = ('연락안됨', '재예약', '리콜', '종결');

implementation

uses uConfig, uMain, uDM, uGogekData,uGogekData_find, RScheDulePrt, uPromiseData, RYeyakPrt, RRecallPrt,
     uFunctions,
     regiSchedure, TelPrint, smsone, Recall;//, Promisemain;

function RetRKind(ARk: string; kind: integer): string;
var
     K: Integer;
begin
     K := StrToIntDef(ARk, 0);
     if K > 0 then
     begin
          Result := RKind1[K];
     end
     else
          Result := '';
end;

function RetRKind_recall(ARk: string): string;
var
     K: Integer;
begin
     K := StrToIntDef(ARk, 0);
     if K > 0 then
     begin
          Result := RKindRecall[K];
     end
     else
          Result := '';
end;

{$R *.dfm}
const
     // Query
     SQL_SELECT_DATA_WORK_Whole = 'SELECT * FROM ma_sawon_work       ' + #13#10
          +
          'Where SwDate>=:SwDate and SwDate<=:swDate2          ';
     SQL_SELECT_DATA_WORK = 'SELECT * FROM ma_sawon_work       ' + #13#10 +
          'Where SwDate>=:SwDate and SwDate<=:swDate2  and SwName=:SwName         ';
     SQL_SELECT_DATA_WORK_Whole_Dowork = 'SELECT * FROM ma_sawon_work       '
          +
          #13#10 +
          'Where SwDate>=:SwDate and SwDate<=:swDate2  and swProcess<>:swProcess';
     SQL_SELECT_DATA_WORK_Dowork = 'SELECT * FROM ma_sawon_work       ' +
          #13#10
          +
          'Where SwDate>=:SwDate and SwDate<=:swDate2  and SwName=:SwName  and swProcess<>:swProcess     ';
     SQL_SELECT_DATA_promise = 'select  b.chartsaveok  , a.* FROM ma_promise  a join ma_gogek_basic b on a.chart=b.chart     ' + #13#10 +
          'Where (pday >=:pday and pday <=:pday2)  and cancel<> ''C'' and  cancel<> ''Y'' and  cancel<> ''R'' and  cancel<> ''U'' '  ;
     SQL_SELECT_DATA_promise_TEAM = 'select  b.chartsaveok  , a.* FROM ma_promise  a join ma_gogek_basic b on a.chart=b.chart     ' + #13#10
          +
          'Where (pday >=:pday and pday <=:pday2)  and cancel<>''C'' and  cancel<>''Y'' and  cancel<>''R'' and  cancel<>''U'' and team=:team ' ;
     {       SQL_SELECT_DATA_RECALL = 'SELECT * , (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone FROM ma_recall       '
                   + #13#10 +
                   'Where RcDate >= :RcDate1 and RcDate <= :RcDate2  and rckind=''1''   ' + #13#10
                   +
                   'order by RcTIME ASC  ';
            SQL_SELECT_DATA_RECALL_TEAM = 'SELECT * , (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone  FROM ma_recall       '
                   + #13#10 +
                   'Where RcDate >= :RcDate1 and RcDate <= :RcDate2 and RcDamDang=:RcDamDang  and rckind=''1''   ' + #13#10
                   +
                   'order by RcTIME ASC  ';
      }

      SQL_SELECT_DATA_promise_orderby=          'order by ptime ASC  ';

     SQL_SELECT_DATA_RECALL = 'SELECT * , (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone FROM ma_recall       '
          + #13#10 +
          'Where RcDate >= :RcDate1 and RcDate <= :RcDate2    ' + #13#10
          +
          'order by RcTIME ASC  ';
     SQL_SELECT_DATA_RECALL_TEAM = 'SELECT * , (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone  FROM ma_recall       '
          + #13#10 +
          'Where RcDate >= :RcDate1 and RcDate <= :RcDate2 and RcDamDang=:RcDamDang    ' + #13#10
          +
          'order by RcTIME ASC  ';

     SQL_SELECT_DATA_birth = 'SELECT * FROM view_gogek ' + #13#10 +
          'where substring(birth,6,5)>= :sDate and substring(birth,6,5) <= :fdate  ' + #13#10
          +
          ' and (sms <> ''0'' or sms is null)';

procedure TRSchedule_f.BtnClsClick(Sender: TObject);
begin
     closeAndSave;
end;

procedure TRSchedule_f.CloseandSave;
begin
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     if CBView.Checked = True then
     begin
          FormInit.WriteString('SCHEDULE', 'DATE',
               FormatDateTime('YYYY-MM-DD',
               Now));
          FormInit.WriteString('SCHEDULE', 'VIEW', '1');
     end
     else
          if CBView.Checked = False then
          begin
               FormInit.WriteString('SCHEDULE', 'DATE',
                    FormatDateTime('YYYY-MM-DD',
                    Now));
               FormInit.WriteString('SCHEDULE', 'VIEW', '0');
          end;
     Close;
end;

procedure TRSchedule_f.FormShow(Sender: TObject);
begin
     top := 0;
     left := main_f.pnlLeft.width + 10;
     width := screen.width - Left;
     height := screen.height - top - 28;

     with RSchedule_f do
     begin
          caption := '오늘 할 일';
          lblVar.Caption := '전체';

     end;

     dt0.date := now;
     dt1.date := now;
     dt2.date := now;

     pnlMain.align := alclient;


     pnlPromise.Caption.height := 30;
     pnlPromise.Caption.topindent := 8;

     pnlMinewon.Caption.height := 30;
     pnlMinewon.Caption.topindent := 8;

     pnlWorkList.Caption.height := 30;
     pnlWorkList.Caption.topindent := 8;

     pnlCall.Caption.height := 30;
     pnlCall.Caption.topindent := 8;


     pnlyeyakCall.Caption.height := 30;
     pnlyeyakCall.Caption.topindent := 8;

      grdNew.Align := alClient;
      grdNew.rowcount:=1;
      GrdNew.HideColumn(8);
      GrdNew.HideColumn(12);

     datetimepicker1.date := now;
     datetimepicker2.date := now;


     pnlRecall.Caption.height := 30;
     pnlRecall.Caption.topindent := 8;
     pnlRecall.align := alclient;


     pnlBirth.Caption.height := 30;
     pnlBirth.Caption.topindent := 8;

     {     pnlWorkList.align := alclient;
          pnlCall.align := alclient;
          pnlPromise.align := alclient;
          pnlRecall.align := alclient;
          pnlBirth.align := alclient;
      }
     fieldClear;
     teamload;

     if lblvar.Caption = '전체' then
     begin
          SawonLoad;
          SelectdataWork;
     end
     else
     begin
          wcName.items.clear;
          wcName.items.add(lblVar.caption);
          SelectDataWork;
     end;
     {
       grdCall
       grdBirth
       GrdWork2
       GrdYeyak
       grdRecall
       grdTelRec
     }
     with grdcall do
     begin
          align := alClient;

          ColWidths[3] := 0;
          ColWidths[13] := 0; //최근예약일
          ColWidths[15] := 0; //예약등록일
          ColWidths[17] := 0;
          ColWidths[18] := 0;
          ColWidths[19] := 0;
          ColWidths[20] := 0;
          {HideColumn(3);
          HideColumn(17);
          HideColumn(18);
          HideColumn(19);
          HideColumn(20); }
     end;
     with grdbirth do
     begin
          align := alClient;
          ColWidths[8] := 0;
     end;

     with grdwork2 do
     begin
          align := alclient;
          ColWidths[10] := 0;
          ColWidths[11] := 0;
          ColWidths[12] := 0;
          ColWidths[13] := 0;
     end;
     with GrdYeyak do
     begin
          align := alclient;
     end;
     with grdRecall do
     begin
          align := alclient;
         // ColWidths[7] := 0;
         // ColWidths[8] := 0;
          ColWidths[9] := 0;
          ColWidths[10] := 0;
          ColWidths[11] := 0;
          ColWidths[12] := 0;
          ColWidths[13] := 0;
          ColWidths[14] := 0;

     end;
     with grdTelRec do
     begin
          align := alclient;
     end;

     SelectdataYEYAK;
     SelectdataRECALL;
     SelectdataBirth;
     SelectTelRecord;
     loadGridData;
     SetYeyakMiNewon;

end;

procedure TRSchedule_f.FieldClear;
begin

     DeSch1.Date := now;
     desch1.Date := now;
     desch2.Date := now;

     dpyeyak1.Date := now;
     dpYeyak2.Date := now;

     dpRecall1.Date := now;
     dpRecall2.Date := now;
     dtTelfirst.date := now;
     dtTelLast.date := now;
     dtdate1.Date := now;
     dtdate2.Date := now;
end;

procedure TRSchedule_f.SelectDataWork;
var
     proc: string;
     i: integer;
begin
     with Dm_f.sqlWork, GrdWork2 do
     begin
          //Clear; // RealGrid.Clear;

          if cbDoWork.Checked = false then
          begin
               if lblVar.caption = '전체' then
               begin
                    if wcName.itemindex = 0 then
                    begin
                         SQL.Text := SQL_SELECT_DATA_Work_Whole;
                         ParamByName('SwDate').AsString :=
                              FormatDateTime('YYYY-MM-DD',
                              DeSch1.Date);
                         ParamByName('SwDate2').AsString :=
                              FormatDateTime('YYYY-MM-DD',
                              DeSch2.Date);
                    end
                    else
                    begin

                         SQL.Text := SQL_SELECT_DATA_Work;
                         ParamByName('SwDate').AsString :=
                              FormatDateTime('YYYY-MM-DD',
                              DeSch1.Date);
                         ParamByName('SwDate2').AsString :=
                              FormatDateTime('YYYY-MM-DD',
                              DeSch2.Date);
                         ParamByName('SwName').AsString :=
                              wcname.Text;
                    end;
               end
               else
               begin
                    SQL.Text := SQL_SELECT_DATA_Work;
                    ParamByName('SwDate').AsString :=
                         FormatDateTime('YYYY-MM-DD', DeSch1.Date);
                    ParamByName('SwDate2').AsString :=
                         FormatDateTime('YYYY-MM-DD', DeSch2.Date);
                    ParamByName('SwName').AsString := wcname.Text;
               end;
          end
          else
          begin
               if lblVar.Caption = '전체' then
               begin
                    if wcName.itemindex = 0 then
                    begin
                         SQL.Text :=
                              SQL_SELECT_DATA_Work_Whole_doWork;
                         ParamByName('SwDate').AsString :=
                              FormatDateTime('YYYY-MM-DD',
                              DeSch1.Date);
                         ParamByName('SwDate2').AsString :=
                              FormatDateTime('YYYY-MM-DD',
                              DeSch2.Date);
                         ParamByName('SwProcess').AsString := '2';
                    end
                    else
                    begin

                         SQL.Text := SQL_SELECT_DATA_Work_doWork;
                         ParamByName('SwDate').AsString :=
                              FormatDateTime('YYYY-MM-DD',
                              DeSch1.Date);
                         ParamByName('SwDate2').AsString :=
                              FormatDateTime('YYYY-MM-DD',
                              DeSch2.Date);
                         ParamByName('SwName').AsString :=
                              wcname.Text;
                         ParamByName('SwProcess').AsString := '2';
                    end;

               end
               else
               begin
                    SQL.Text := SQL_SELECT_DATA_Work_doWork;
                    ParamByName('SwDate').AsString :=
                         FormatDateTime('YYYY-MM-DD', DeSch1.Date);
                    ParamByName('SwDate2').AsString :=
                         FormatDateTime('YYYY-MM-DD', DeSch2.Date);
                    ParamByName('SwName').AsString := wcname.Text;
                    ParamByName('SwProcess').AsString := '2';
               end;
          end;
          Open;

          if not Dm_f.sqlWork.IsEmpty then
               // while not EOF do
          begin
               rowcount := recordcount + 1;
               for i := 1 to recordcount do
               begin

                    Cells[1, i] := FieldByName('regDay').AsString;
                    Cells[2, i] := FieldByName('SwName').AsString; //FieldByName('SwId').AsString;
                    Cells[3, i] := FieldByName('Sect').AsString; //FieldByName('SwId').AsString;
                    Cells[4, i] := FieldByName('SwSect').AsString;
                    Cells[5, i] := FieldByName('SwDate').AsString + '/' + FieldByName('SwTime').AsString;
                    Cells[6, i] := FieldByName('SwWork').AsString;
                    if checkInt(FieldByName('SwProcess').AsString) then
                    begin
                         case FieldByName('SwProcess').AsInteger of
                              0: Proc := '계획';
                              1: Proc := '진행';
                              2: Proc := '완료';
                              3: Proc := '포기';
                              4: Proc := '지연';
                         end;
                    end
                    else
                         Proc := '계획';
                    Cells[7, i] := Proc;
                    Cells[8, i] := FieldByName('SwRefer').AsString;
                    Cells[9, i] := FieldByName('endDay').AsString + '/' + FieldByName('endTime').AsString;
                    Cells[10, i] := FieldByName('SwRemark').AsString; //처리결과
                    Cells[11, i] := FieldByName('SwProcess').AsString;
                    Cells[12, i] := FieldByName('SwCode').AsString;
                    Cells[13, i] := FieldByName('SwID').AsString;
                    AutoSizeRow(i);

                    next;

               end;

               //  AddRow; // 그리드에 빈 로우를 추가
               //  Cells[0, RowCount - 1] :=
               //         FieldByName('SwDate').AsString;
               //  Cells[1, RowCount - 1] :=
               //         FieldByName('SwName').AsString;
               //  Cells[2, RowCount - 1] :=
               //         FieldByName('SwTime').AsString;
               //  Cells[3, RowCount - 1] :=
               //         FieldByName('SwWork').AsString;

               //  if checkInt(FieldByName('SwProcess').AsString) then
               //  begin
               //         case FieldByName('SwProcess').AsInteger of
               //                0: Proc := '계획';
               //                1: Proc := '진행';
               //                2: Proc := '완료';
               //                3: Proc := '포기';
               //         end;
               //  end
               //  else
               //         Proc := '계획';
                // Cells[4, RowCount - 1] := proc;
                // Cells[5, RowCount - 1] :=
               //         FieldByName('SwCode').AsString;
               //  Cells[6, RowCount - 1] :=
               //         FieldByName('SwId').AsString;
               //  Cells[7, RowCount - 1] :=
               //         FieldByName('SwSect').AsString;
               //  Cells[8, RowCount - 1] :=
               //         FieldByName('SwRefer').AsString;
               //  Cells[9, RowCount - 1] :=
               //         FieldByName('Swremark').AsString;
               //  Cells[10, RowCount - 1] :=
               //         FieldByName('Swprocess').AsString;
               //  Next;
          end
          else
          begin
               rowcount := 1;
          end;
          autonumbercol(0);
     end;
     LoadCount;

end;

procedure TRSchedule_f.SelectDataYeyak;
var
    varQuery: string;
begin

     varQuery := LoadGroupDataQuery;

     with Dm_f.sqlWork, GrdYeyak do
     begin
          Rowcount := 1;
          if wcYteam.itemindex <= 0 then
          begin
               SQL.Text := SQL_SELECT_DATA_promise;
               ParamByName('pday').AsString :=
                    FormatDateTime('YYYY-MM-DD',
                    DpYeyak1.Date);
               ParamByName('pday2').AsString :=
                    FormatDateTime('YYYY-MM-DD',
                    DpYeyak2.Date);
               //  ParamByName('cancel').AsString := 'Y';
               //  ParamByName('cancel2').AsString := 'R';
          end
          else
          begin
               SQL.Text := SQL_SELECT_DATA_promise_team;
               ParamByName('pday').AsString :=
                    FormatDateTime('YYYY-MM-DD',
                    DpYeyak1.Date);
               ParamByName('pday2').AsString :=
                    FormatDateTime('YYYY-MM-DD',
                    DpYeyak2.Date);
               //  ParamByName('cancel').AsString := 'Y';
                // ParamByName('cancel2').AsString := 'R';
               ParamByName('team').AsString :=
                    intToStr(wcYteam.itemindex);

          end;

        if varviewAll <> true then
               begin
                     if varQuery <> '' then
                         // sql.Add('and (chart not in (' + varQuery + ' ) ) ');

                         sql.Add('and (a.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;

                   sql.Add('order by ptime ASC  ');
          Open;
          if not Dm_f.sqlWork.IsEmpty then
               while not EOF do
               begin
                    AddRow; // 그리드에 빈 로우를 추가
                    Cells[1, RowCount - 1] :=
                         FieldByName('pday').AsString;
                    Cells[2, RowCount - 1] :=
                         FieldByName('ptime').AsString;
                    Cells[3, RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    Cells[4, RowCount - 1] :=
                         FieldByName('name').AsString;
                    Cells[5, RowCount - 1] :=
                         FieldByName('tel').AsString;
                    Cells[6, RowCount - 1] :=
                         FieldByName('remark').AsString;
                    Cells[7, RowCount - 1] :=
                         FieldByName('chartSaveOk').AsString;
                    Next;
               end;
          autoNumberCol(0);
     end;
          LoadCount;


end;

procedure TRSchedule_f.SelectDataRecall;
var
     varRemark: string;
begin
     with Dm_f.sqlWork, GrdRECALL do
     begin
          RowCount := 1;
          if wcRteam.itemindex <= 0 then
          begin
               SQL.Text := SQL_SELECT_DATA_RECALL;
               ParamByName('RCDATE1').AsString :=
                    FormatDateTime('YYYY-MM-DD',
                    dPrECALL1.Date);
               ParamByName('RCDATE2').AsString :=
                    FormatDateTime('YYYY-MM-DD',
                    DpRecall2.Date);
          end
          else
          begin
               SQL.Text := SQL_SELECT_DATA_RECALL_TEAM;
               ParamByName('RCDATE1').AsString :=
                    FormatDateTime('YYYY-MM-DD',
                    dPrECALL1.Date);
               ParamByName('RCDATE2').AsString :=
                    FormatDateTime('YYYY-MM-DD',
                    DpRecall2.Date);
               ParamByName('RCDAMDANG').AsString :=
                    intToStr(wcRteam.itemindex);
          end;
          Open;
          if not Dm_f.sqlWork.IsEmpty then
               while not EOF do
               begin
                    varremark :=
                         htmlToString(FieldByName('RCRemark').AsString);
                    //varremark := htmlToString(varremark);

                    AddRow; // 그리드에 빈 로우를 추가
                    Cells[1, RowCount - 1] :=
                         FieldByName('RCDate').AsString;
                    Cells[2, RowCount - 1] :=
                         FieldByName('RCTime').AsString;
                    Cells[3, RowCount - 1] :=
                         FieldByName('RCChart').AsString;
                    Cells[4, RowCount - 1] :=
                         FieldByName('RCname').AsString;
                    Cells[5, RowCount - 1] :=
                         FieldByName('cPhone').AsString;
                    //   FieldByName('RCtel').AsString;
                    Cells[6, RowCount - 1] := varremark;

                    if FieldByName('RcCheck').AsString = '1' then
                                       Cells[7, RowCount - 1] := 'O'
                                   else
                                       Cells[7, RowCount - 1] := 'X';



                    Cells[8, i] :=    FieldByName('RcDamdang').AsString;

                    Cells[9, i] :=  FieldByName('RcBigo').AsString; //숨김
                    Cells[10, i] :=  FieldByName('RcCheckDay').AsString;
                    Cells[11, i] :=   FieldByName('RcRegDate').AsString;    //숨김
                    Cells[12, i] :=      FieldByName('RcCode').AsString; //숨김
                    Cells[13, i] :=     FieldByName('RcKind').AsString; //숨김
                    Cells[14, i] :=        FieldByName('anotherid').AsString;





              //      Cells[7, RowCount - 1] :=
              //           FieldByName('rcKind').AsString;
              //      Cells[8, RowCount - 1] :=
              //           RetRKind_recall(FieldByName('rcKind').AsString);
                    Next;
               end;
          autoNumberCol(0);
     end;
     LoadCount;

end;

procedure TRSchedule_f.SelectDataBirth;
var
     varRemark: string;
     i, recCount: integer;
begin
     with Dm_f.sqlWork, GrdBirth do
     begin
          //Clear; // RealGrid.Clear;
          SQL.Text := SQL_SELECT_DATA_Birth;
          ParamByName('sdate').AsString :=
               FormatDateTime('MM-DD',
               dtDate1.Date);
          ParamByName('fdate').AsString :=
               FormatDateTime('MM-DD',
               DtDate2.Date);
          Open;
          recCount := recordCount;
          RowCount := recCount + 1;
          FixedRows := 1;
          if not Dm_f.sqlWork.IsEmpty then
               while not EOF do
               begin
                    //    AddRow; // 그리드에 빈 로우를 추가
                    for i := 1 to Reccount do
                    begin
                         AddCheckBox(1, i, false, false);

                         Cells[2, i] :=
                              FieldByName('BIRTH').AsString;
                         Cells[3, i] :=
                              FieldByName('CHART').AsString;
                         Cells[4, i] :=
                              FieldByName('NAME').AsString;
                         Cells[5, i] :=
                              FieldByName('C_PHONE').AsString;
                         Cells[6, i] :=
                              BIRTHTONAI(deldash(FieldByName('birth').AsString));

                         Cells[7, i] :=
                              jumintogender(FieldByName('jumin').AsString);
                         if FieldByName('sms').AsString = '0' then
                              AddCheckBox(8, i, true, false)
                         else
                              AddCheckBox(8, i, false, false);

                         Next;
                    end;
               end;
          autoNumberCol(0);
     end;
     LoadCount;

end;

procedure TRSchedule_f.DeSchChange(Sender: TObject);
begin
     SelectdataWork;
     SelectdataYEYAK;
     SelectdataRECALL;
end;

procedure TRSchedule_f.FormDestroy(Sender: TObject);
begin

     RSchedule_f := nil;

end;

procedure TRSchedule_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TRSchedule_f.SawonLoad;
begin

     //팀 콤보박스에 아이템 불러오기
     wcName.items.Clear;
     wcName.items.add('전체');

     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_sawon_basic where nouse <> ''1''');
          Sql.Add('order by SaName');
          Open;
          while not eof do
          begin
               wcName.items.add(FieldByName('SaName').AsString);
               next;
          end;
     end;

     wcName.itemindex := 0;

end;

procedure TRSchedule_f.TeamLoad;
begin

     //팀 콤보박스에 아이템 불러오기
     wcYteam.items.Clear;
     wcRteam.items.Clear;
     wcYteam.items.add('전체');
     wcRteam.items.add('전체');

     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_team');
          Sql.Add('order by team_Name');
          Open;
          while not eof do
          begin
               wcYteam.items.add(FieldByName('team_Doctor1').AsString);
               wcRteam.items.add(FieldByName('team_Doctor1').AsString);
               next;
          end;
     end;

     wcYteam.itemindex := 0;
     wcRteam.itemindex := 0;

end;

procedure TRSchedule_f.FormCreate(Sender: TObject);
begin
     FieldClear;

end;

procedure TRSchedule_f.spSkinButton2Click(Sender: TObject);
var
     RYeyakPrt_f: TRYeyakPrt_f;
begin

     RYeyakPrt_f := TRYeyakPrt_f.CreateFrm(Self, grdYeyak);
     try
          with RYeyakPrt_f, QuickRep1 do
          begin
               PreviewModal;
               //      Print;

          end;
     finally
          RYeyakPrt_f.Free;
     end;
end;

procedure TRSchedule_f.spSkinButton3Click(Sender: TObject);
var
     RRecallPrt_f: TRRecallPrt_f;
begin
     RRecallPrt_f := TRRecallPrt_f.CreateFrm(Self, grdRecall);
     try
          with RRecallPrt_f, QuickRep1 do
          begin
               varDate1:=  dpRecall1.date;
               varDate2:=  dpRecall2.date;

               PreviewModal;
               //Print;
          end;
     finally
          RRecallPrt_f.Free;
     end;
end;

procedure TRSchedule_f.Button1Click(Sender: TObject);
begin
     dPrECALL1.Date := now;
     dPrECALL2.Date := Now;
end;

procedure TRSchedule_f.Button3Click(Sender: TObject);
begin
     desch1.Date := now;
     desch2.Date := now;
end;

procedure TRSchedule_f.Button2Click(Sender: TObject);
begin
     dpYeyak1.Date := now;
     dpYeyak2.Date := now;
end;

procedure TRSchedule_f.spSkinButton5Click(Sender: TObject);
begin
     SelectDataRecall;

end;

procedure TRSchedule_f.spSkinButton4Click(Sender: TObject);
begin
     SelectDataYeyak;

end;

procedure TRSchedule_f.spSkinButton6Click(Sender: TObject);
begin
     SelectDataWork;

end;

procedure TRSchedule_f.wcNameChange(Sender: TObject);
begin
     SelectDataWork;

end;

procedure TRSchedule_f.wcYTeamChange(Sender: TObject);
begin
     SelectDataYeyak;

end;

procedure TRSchedule_f.wcRteamChange(Sender: TObject);
begin
     SelectDataRecall;

end;

procedure TRSchedule_f.BtnRegClick(Sender: TObject);
begin
     if not assigned(regischedule_f) then
     begin
          regiSchedule_f := TregiSchedule_f.Create(application);
          with regiSchedule_f do
          begin

               Fieldclear;
               deDate.Date := now;
               SelectDataSWork;
               Showmodal;
               //  btninsclick(self);
          end;

          SelectDataWork;
     end;

end;

procedure TRSchedule_f.BtnTelClick(Sender: TObject);
begin

     SelectTelRecord;
end;

procedure TRSchedule_f.SelectTelRecord;
const
     SQL_SELECT_DATA_TELREC = 'SELECT * FROM ma_TELREC       ' + #13#10 +
          'Where TRDate >= :TRDate1 and TRDate <= :TRDate2        ';

begin
     with Dm_f.SqlWork, GrdTelRec do
     begin
          rowcount := 1;
          SQL.Text := SQL_SELECT_DATA_TelRec;
          ParamByName('TrDate1').AsString := FormatDateTime('YYYY-MM-DD',
               DtTelFirst.Date);
          ParamByName('TrDate2').AsString := FormatDateTime('YYYY-MM-DD',
               DtTelLast.Date);
          Open;
          if not Dm_f.SqlWork.IsEmpty then
               while not EOF do
               begin
                    AddRow; // 그리드에 빈 로우를 추가
                    Cells[1, RowCount - 1] := FieldByName('TrDate').AsString;
                    Cells[2, RowCount - 1] := FieldByName('Trname').AsString;
                    Cells[3, RowCount - 1] :=
                         FieldByName('TrNumber').AsString;
                    Cells[4, RowCount - 1] :=
                         FieldByName('TrTime').AsString;
                    Cells[5, RowCount - 1] :=
                         FieldByName('TriTime').AsString;
                    Cells[6, RowCount - 1] :=
                         FieldByName('TrRemark').AsString;
                    Cells[7, RowCount - 1] :=
                         FieldByName('TrCode').AsString;
                    Cells[8, RowCount - 1] :=
                         FieldByName('degree').AsString;
                    Cells[9, RowCount - 1] :=
                         FieldByName('subject').AsString;
                    Cells[10, RowCount - 1] :=
                         FieldByName('transfer').AsString;
                    Cells[11, RowCount - 1] :=
                         FieldByName('receiver').AsString;
                    Next;
               end;
          autoNumberCol(0);
     end;
     LoadCount;

end;

procedure TRSchedule_f.spSkinButton9Click(Sender: TObject);
var
     TelPrint_f: TTelPrint_f;
begin
     TelPrint_f := TTelPrint_f.CreateFrm(Self, grdTelRec);
     try
          with TelPrint_f, QuickRep1 do
          begin
               varFirst := FormatDateTime('YYYY-MM-DD', DtTelFirst.Date);
               varLast := FormatDateTime('YYYY-MM-DD', DtTelLast.Date);
               PreviewModal;
               // print;
          end;
     finally
          TelPrint_f.Free;
     end;
end;

procedure TRSchedule_f.LoadGridData;
var
     varKind: string;
     varpath: string;
     varpageindex: integer;
begin
     varpath := extractFilepath(paramStr(0)) + 'header\';
     //varRow := grdCall.Row;
     varpageindex := 1;
     case RadioGroup1.itemindex of
          0: varKind := '0';
          1: varKind := '1';
          2: varKind := '2';
          3: varKind := '3';
          4: varKind := '4';
          5: varKind := '';
     end;

     grdcall.ColumnHeaders.LoadFromFile(varpath +
          'promiseCall.txt');
     LoadpromiseList(varpageindex, dt1.date,
          dt2.date, varKind);

end;

procedure TRSchedule_f.LoadpromiseList(varindex: integer; sDate, fDate: Tdate;
     varKind: string = '0');
const
     sqltext_Promise = 'select b.idn, b.pday, b.ptime,b.team, b.pos, b.pjundam, b.pdam, b.remark, b.jubsuday, b.team, b.pmemo, b.alret,'
          + #10#13 +
          ' a.chart, a.name, a.chamgo, (select top 1 jin_day from ma_jubsu c  ' + #10#13
          +
          '  where jin_day <= getdate() and c.chart= a.chart  ' + #10#13 +
          '  order by jin_day desc) as 최근내원일             ' + #10#13 +
          ', (select top 1 phone from ma_gogek_phone c ' + #10#13 +
          '        where kind=''1'' and c.chart=a.Chart)   as h_phone' + #10#13
          +
          ', (select top 1 phone from ma_gogek_phone c ' + #10#13 +
          '        where kind=''2'' and c.chart=a.Chart)   as c_phone' + #10#13
          +
          ', (select  top 1 pday from ma_promise c            ' + #10#13 +
          '        where pday >= getdate() and c.chart= a.chart     ' + #10#13
          +
          '        order by pday desc) as 근래예약일,                ' + #10#13
          +
          '  (select  top 1 remark from ma_promise  c          ' + #10#13 +
          '        where pday >= getdate() and c.chart= a.chart      ' + #10#13
          +
          '        order by pday desc) as 근래예약내역               ' + #10#13
          +
          ', (select  top 1 pday from ma_promise c             ' + #10#13 +
          '        where  c.chart= a.chart                          ' + #10#13
          +
          '        order by pday desc) as 최근예약일,               ' + #10#13
          +
          '  (select  top 1 remark from ma_promise  c         ' + #10#13 +
          '        where   c.chart= a.chart                         ' + #10#13
          +
          '        order by pday desc) as 최근예약내역,              ' + #10#13
          +
          '(select count(*) from ma_TELREC where ma_TELREC.trchart =b.chart ' + #10#13
          +
          '        and ma_TELREC.trchart<>'''' and ma_TELREC.trDate >=b.pday) as Telcount,' + #10#13
          +
          '(Select  count(*) from ma_sms_sendresult f left join  ma_sms_sendlist e on f.sRcode=e.SbCode  ' + #10#13
          +
          '        where e.sbchart = b.chart and e.sbchart<>''''  and e.sbsenddate >= b.pday) as smscount ' + #10#13
          +
          '        from ma_gogek_basic a join ma_promise b on a.chart=b.chart ' + #10#13
          +
          ' Where  b.name <> '''' ' + #10#13 +
          ' and  pos <> ''C'' and  pos <> ''R''   ';
     sqltext_Promise_call_all =
          ' and (pdam >= :Firstday and pdam  <= :Firstday2)  ';
     sqltext_Promise_call_alret =
          ' and alret = :alret ';
     sqltext_Promise_call_notalret =
          ' and ((alret = ''1'') or(alret = ''4'') or(alret = ''5'') or(alret = ''6'') or(alret = ''7'') ) ';

var
     i: integer;

begin
     screen.cursor := crHourGlass;
     try
          with Dm_f.SqlTemp, GrdCall do
          begin
               GrdCall.Rowcount := 1;
               Close;
               Sql.Clear;
               sql.text := sqltext_promise;
               case
                    //약속확인요청 1, 예약학인2, 연락안됨3
//리콜, 재예약은 POS에 씀

               StrCase(varKind, ['0', '1', '2', '3',
                    '4', '5', '6', '7', '']) of

                    0: //약속확인 전체
                         begin
                              sql.text := sql.text +
                                   sqltext_promise_Call_all +
                                   sqltext_Promise_call_notalret;

                         end;

                    1: //에약확인됨
                         begin
                              sql.text := sql.text +
                                   sqltext_promise_Call_all +
                                   sqltext_promise_call_alret;
                              ParamByName('alret').AsString :=
                                   '7';

                         end;

                    2: //리콜
                         begin
                              sql.text := sql.text +
                                   sqltext_promise_Call_all +
                                   sqltext_promise_call_alret;
                              ParamByName('alret').AsString :=
                                   '6';
                         end;

                    3: //재예약
                         begin
                              sql.text := sql.text +
                                   sqltext_promise_Call_all +
                                   sqltext_promise_call_alret;
                              ParamByName('alret').AsString :=
                                   '5';

                         end;
                    4: //연락안됨
                         begin
                              sql.text := sql.text +
                                   sqltext_promise_call_alret;
                              ParamByName('alret').AsString :=
                                   '4';
                         end;
                    8: // Not Action
                         begin
                              sql.text := sql.text +
                                   sqltext_promise_Call_all +
                                   sqltext_promise_call_alret;
                              ParamByName('alret').AsString :=
                                   '1';

                         end;
               end;

               Sql.Add('Order by pday, ptime');

               if varKind <> '4' then
                    //연락안됨에서는 날짜와 상관없이 모두 가져온다.
               begin
                    ParamByName('FirstDay').Asstring :=
                         FormatDateTime('YYYY-MM-DD', sDate);
                    ParamByName('FirstDay2').Asstring :=
                         FormatDateTime('YYYY-MM-DD',
                         fDate);
               end;
               Open;

               if not Dm_f.SqlTemp.IsEmpty then
               begin
                    beginupdate;
                    rowcount := recordcount + 1;

                    while not EOF do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin
                              AddCheckBox(1, i, false, false);

                              Cells[2, i] :=
                                   FieldByName('name').AsString;
                              Cells[3, i] :=
                                   FieldByName('chart').AsString;
                              Cells[4, i] :=
                                   FieldByName('pdam').AsString;
                              Cells[5, i] :=
                                   FieldByName('pDay').AsString +
                                   '(' +
                                   FieldByName('pTime').AsString +
                                   ')';
                              Cells[6, i] :=
                                   FieldByName('remark').AsString;
                              Cells[9, i] :=
                                   RetRKind(FieldByName('alret').AsString, varindex);
                              Cells[15, i] :=
                                   FieldByName('jubsuday').AsString;
                              Cells[16, i] :=
                                   FieldByName('pmemo').AsString;
                              Cells[17, i] :=
                                   FieldByName('pjundam').AsString;
                              Cells[18, i] :=
                                   FieldByName('pjundam').AsString;
                              Cells[19, i] :=
                                   FieldByName('team').AsString;
                              Cells[20, i] :=
                                   FieldByName('idn').AsString;
                              Cells[21, i] := '';
                              Cells[7, i] :=
                                   FieldByName('h_phone').AsString;
                              Cells[8, i] :=
                                   FieldByName('c_phone').AsString;
                              Cells[10, i] :=
                                   FieldByName('smscount').AsString;
                              Cells[11, i] :=
                                   FieldByName('telcount').AsString;
                              Cells[12, i] :=
                                   FieldByName('최근내원일').AsString;

                              if
                                   trim(FieldByName('최근예약내역').AsString)
                                   <> '' then
                                   Cells[13, i] :=
                                        FieldByName('최근예약일').AsString + '(' + FieldByName('최근예약내역').AsString + ')'
                              else
                                   Cells[13, i] :=
                                        FieldByName('최근예약일').AsString;

                              if
                                   trim(FieldByName('근래예약내역').AsString)
                                   <> '' then
                                   Cells[14, i] :=
                                        FieldByName('근래예약일').AsString + '(' +
                                        FieldByName('근래예약내역').AsString + ')'
                              else
                                   Cells[14, i] :=
                                        FieldByName('근래예약일').AsString;

                              Next;
                         end;
                    end;
               end;

               AutoNumberCol(0);

               Endupdate;

          end;
     except
          screen.cursor := crDefault;
     end;
     screen.cursor := crDefault;
          LoadCount;

end;

procedure TRSchedule_f.btnSchClick(Sender: TObject);
begin
     loadGridData;
end;

procedure TRSchedule_f.lblWorkClick(Sender: TObject);
begin
     //  pgSchedule.ActivePageIndex := (sender as Tellipslabel).Tag;
end;

procedure TRSchedule_f.LoadCount;
const
     SQL_SELECT_work = 'SELECT count(*) as cntWork FROM ma_sawon_work       '
          + #13#10 +
          'Where SwDate>=:sDate and SwDate<=:fDate             ';
     SQL_SELECT_promise = 'SELECT count(*) as cntPromise FROM ma_promise       '
          + #13#10 +
          'Where (pday >=:sDate and pday <=:fDate )  and cancel <> ''R'' and  cancel  <> ''U''  and cancel <> ''Y'' and  cancel  <> ''C''   ';

     SQL_SELECT_recall = 'SELECT count(*) as cntRecall FROM ma_Recall       '
          + #13#10 +
          'Where (rcDate >=:sDate and rcDate <=:fDate )  and rcKind = ''1''  ';

     SQL_SELECT_birth = 'SELECT count(*) As cntBirth FROM ma_gogek_basic ' +
          #13#10 +
          'where substring(birth,6,5)>= :sDate and substring(birth,6,5) <= :fdate  ' + #13#10
          +
          'and (sms <>''0'' or sms is null)';

     SQL_SELECT_PromiseCall = 'SELECT count(*) as cntPromiseCall FROM ma_Promise       '
          + #13#10 +
          '  where (pdam >= :sDate and pdam  <= :fDate)  ' + #13#10 +
          ' and ((alret = ''1'') or(alret = ''4'') or(alret = ''5'') or(alret = ''6'') or(alret = ''7'') ) ';

     SQL_SELECT_DATA_TELREC = 'SELECT count(*) as cntTelrec FROM ma_TELREC       ' + #13#10 +
          'Where TRDate >= :TRDate1 and TRDate <= :TRDate2        ';

var
     cntWork, cntPromise, cntBirth, cntRecall, cntPromiseCall, cntTelRec: integer;
 
    varQuery: string;
begin

     varQuery := LoadGroupDataQuery;
     with Dm_f.sqlWork do
     begin
          SQL.Text := SQL_SELECT_work;
          ParamByName('SDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);

          ParamByName('fDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);
          open;
          cntWork := fieldByName('cntWork').asInteger;

          SQL.Text := SQL_SELECT_promise;
          ParamByName('SDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);

          ParamByName('fDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);


                 if varviewAll <> true then
               begin
                     if varQuery <> '' then
                         // sql.Add('and (chart not in (' + varQuery + ' ) ) ');

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


          open;
          cntPromise := fieldByName('cntPromise').asInteger;

          SQL.Text := SQL_SELECT_recall;
          ParamByName('SDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);

          ParamByName('fDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);
          open;
          cntRecall := fieldByName('cntRecall').asInteger;

          SQL.Text := SQL_SELECT_birth;
          ParamByName('SDate').AsString :=
               FormatDateTime('MM-DD', now);

          ParamByName('fDate').AsString :=
               FormatDateTime('MM-DD', now);
          open;
          cntBirth := fieldByName('cntbirth').asInteger;

          SQL.Text := SQL_SELECT_PromiseCall;
          ParamByName('SDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);

          ParamByName('fDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);
          open;
          cntPromiseCall := fieldByName('cntPromiseCall').asInteger;

          SQL.Text := SQL_SELECT_DATA_TELREC;
          ParamByName('TRDate1').AsString :=
               FormatDateTime('YYYY-MM-DD', now);

          ParamByName('TRDate2').AsString :=
               FormatDateTime('YYYY-MM-DD', now);
          open;
          cntTelRec := fieldByName('cntTelrec').asInteger;

     end;
     if cntPromise > 0 then
     begin
          yeyakindicator.visible := true;
          yeyakindicator.caption := inttostr(cntPromise);
     end
     else
     begin
          yeyakindicator.visible := false;
     end;

     if cntRecall > 0 then
     begin
          RecallIndicator.visible := true;
          RecallIndicator.caption := inttostr(cntRecall);
     end
     else
     begin
          RecallIndicator.visible := false;
     end;

     if cntWork > 0 then
     begin
          workindicator.visible := true;
          workindicator.caption := inttostr(cntWork);
     end
     else
     begin
          workindicator.visible := false;
     end;

     if cntBirth > 0 then
     begin
          birthIndicator.visible := true;
          birthIndicator.caption := inttostr(cntBirth);
     end
     else
     begin
          birthIndicator.visible := false;
     end;

     if cntPromisecall > 0 then
     begin
          callIndicator.visible := true;
          callIndicator.caption := inttostr(cntPromisecall);
     end
     else
     begin
          callIndicator.visible := false;
     end;

     if cntTelrec > 0 then
     begin
          Telindicator.visible := true;
          TelIndicator.caption := inttostr(cntTelRec);

     end
     else
     begin
          Telindicator.visible := false;
     end;

     {

         navWork.caption := '오늘의 할일 (' + inttostr(cntWork) + '건)           *업무완료처리는 해당칸에서 오른쪽버튼*';
          navYeyak.caption := '예약 현황 (' + inttostr(cntPromise) + '건)';
          navRecall.caption := '리콜 현황 (' + inttostr(cntRecall) + '건)';
          navBirth.caption := '생일 현황 (' + inttostr(cntBirth) + '건)';
          navYeyakCall.caption := '예약 전화 확인 (' + inttostr(cntPromisecall) +
               '건)';
      }
end;

procedure TRSchedule_f.spSkinButton11Click(Sender: TObject);
begin
     SelectDataBirth;
end;

procedure TRSchedule_f.spSkinButton13Click(Sender: TObject);
begin

     //   pgSchedule.ActivePageIndex := 4;

end;

procedure TRSchedule_f.grdBirthClickCell(Sender: TObject; ARow,
     ACol: Integer);
var
     stat: boolean;
begin
     if aRow < 1 then
          exit;
     with grdbirth do
          case aCol of
               1:
                    begin
                         //ControlLook에 checkAlwaysActive=true로 해야 체크박스에 체크됨.
                         GetCheckBoxState(aCol, aRow, stat);
                         checkcell(aCol, arow);
                    end;
          end;

end;

procedure TRSchedule_f.spSkinButton15Click(Sender: TObject);
var
     i: integer;
     stat, stat2: boolean;
begin
     for i := 1 to grdBirth.rowcount - 1 do
     begin
          grdBirth.GetCheckBoxState(8, i, stat2);

          if (CheckHpno(grdBirth.cells[5, i]) = true) and (stat2 = false) then
          begin
               grdBirth.GetCheckBoxState(1, i, stat);

               if stat then
                    grdBirth.SetCheckBoxState(1, i, false)
               else
               begin
                    grdBirth.SetCheckBoxState(1, i, true);
               end;

          end;
     end;

end;

procedure TRSchedule_f.dt0Change(Sender: TObject);
begin
     dt1.date := dt0.date;
     dt2.date := dt0.date;

end;

procedure TRSchedule_f.RadioGroup1Click(Sender: TObject);
begin
     loadGridData;

end;

procedure TRSchedule_f.N1Click(Sender: TObject);
//Cancel
//   5:예약이동 - 이동데이터 보이기 전
//   Y: 취소
//   N:취소안함
//   U:예약이동 - 이동되기 전에 데이터

//POS
//  0:  진료대기
//  1: 진료중
//  2: 수납대기
//  3: 수납완료
//  8: 블럭표시
// 공백 :안온사람

//   4:연락안됨
//   5: 재예약
//   6:  리콜함
//   7:  타치과로감

var
     vartag: string;
     varActval: string;
     varRemark: string;
     varUser: string;
     varoffKind: string;

begin
     if grdCall.Row > 0 then
          vartag := grdCall.cells[20,
               grdCall.Row]
     else
     begin
          vartag := '0';
          showmessage('선택내역이 없습니다.');
          exit;
     end;

     {
            n1.caption := '연락안됨';
            n2.caption := '재예약';
            n3.caption := '리콜';
            n4.caption := '종결';

     }

     case (Sender as Tmenuitem).Tag of
          4: //연락안됨
               begin
                    varActval := '4';
                    Promise_UpdateAlret(strtoint(vartag),
                         varActval);

               end;
          5: //재예약
               begin
                    varActval := '5';
                    Promise_UpdateAlret(strtoint(vartag),
                         varActval);
                    PromiseWindowOpen(grdCall.cells[4, grdCall.Row],
                         grdCall.cells[2, grdCall.Row]);

               end;
          6: //리콜
               begin
                    varActval := '6';
                    if not Assigned(recall_f) then
                         recall_f :=
                              Trecall_f.Create(application);
                    with recall_f do
                    begin

                         show;
                         fieldclear;
                         varRecallKind := '4';
                         edtrecallchart.text :=
                              grdCall.cells[3,
                              grdCall.Row];
                         edtrecallname.text :=
                              grdCall.cells[2,
                              grdCall.Row];
                         edtrecalltel.text :=
                              grdCall.cells[7,
                              grdCall.Row];
                         lblCphone.caption :=
                              grdCall.cells[8,
                              grdCall.Row];

                         if grdCall.cells[3, grdCall.Row] = '' then
                         begin
                              fieldclear2;
                              rbChart.Checked := false;
                              rbTerm.Checked := true;
                         end
                         else
                         begin
                              fieldclear1;
                              rbTerm.Checked := false;
                              rbChart.Checked := true;
                              Selectma_recallChart;
                         end;

                    end;
                    Promise_UpdateAlret(strtoint(vartag),
                         varActval);

               end;
          7:
               begin
                    varActval := '7';
                    //종결
                    Promise_UpdateAlret(strtoint(vartag),
                         varActval);
               end;
          100:
               begin
                    varActval := '1';
                    //초기화
                    Promise_UpdateAlret(strtoint(vartag),
                         varActval);
               end;
     end;

     loadGridData;
end;

procedure TRschedule_f.PromiseWindowOpen(varDay, varName: string);

begin
//     if not assigned(Promisemain_f) then
//          Promisemain_f := TPromisemain_f.Create(application);
//     Promisemain_f.PlannerCalendarGroup1.Date := strtodate(varDay);
//     Promisemain_f.dpsdate.Date := strtodate(varDay);
//     Promisemain_f.dpfdate.Date := strtodate(varDay);
//
//     Promisemain_f.WindowState := wsnormal;
//
//     main_f.PromiseMode := true;
//     Promisemain_f.Show;
//     Promisemain_f.SelectPromise(0);
//     PromiseMain_f.searchPromise(varName);

end;

procedure TRSchedule_f.btnSmsClick(Sender: TObject);
begin
     if not assigned(smsone_f) then
          smsone_f :=
               Tsmsone_f.Create(application);
     smsone_f.varmode := 0;
     smsone_f.edtName.text := '';
     smsone_f.edtRecvno.text := '';
     smsone_f.memContent.text := '';

     //smsone_f.memcontent.setfocus;
     smsone_f.LblMemcontentSize.Caption := '0/';

     smsone_f.loadKind := 3;
     //   smsone_f.ChoicePostData(grdcall, 1, 3, 2, 8, '',  edtsendno.text);

     smsone_f.Showmodal;

end;

procedure TRSchedule_f.N75Click(Sender: TObject);
begin

     if GrdWork2.Cells[10, GrdWork2.Row] = '2' then
          GrdWork2.Cells[10, GrdWork2.Row] := '0'
     else
          GrdWork2.Cells[10, GrdWork2.Row] := '2';

     with Dm_f.sqlwork do
     begin
          close;
          SQL.Clear;
          SQL.Add('Update ma_sawon_work Set');
          SQL.Add('SwProcess=:SwProcess');
          SQL.Add('Where SwCode=:SwCode');
          ParamByName('SwCode').AsString := GrdWork2.Cells[6, GrdWork2.Row];
          ParamByName('SwProcess').AsString := GrdWork2.Cells[10, GrdWork2.Row];
          execsql;
     end;
     SelectDataWork;

end;

procedure TRSchedule_f.GrdWork2GetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     with GrdWork2 do
     begin

          if (aRow > 0) and (Cells[10, aRow] = '2') then
               //업무완료
          begin
               if (aCol = 4) or (aCol = 5) then
               begin
                    aBrush.Color := clGray;
                    aFont.Color := clWhite;
               end;
          end;
     end;

end;

procedure TRSchedule_f.GrdWork2DblClick(Sender: TObject);
var
     arow, acol: integer;
begin

     if GrdWork2.rowcount < 0 then
          exit;
     ARow := GrdWork2.Row;
     // Acol := Grdwork2.Selectedindex;

     if not assigned(regischedule_f) then
     begin
          regiSchedule_f := TregiSchedule_f.Create(application);
          with regiSchedule_f do
          begin
               Fieldclear;

               EdtId.Text := RSchedule_f.grdWork2.Cells[6, ARow];
               EdtCode.Text := RSchedule_f.grdWork2.Cells[5, ARow];
               cbSawon.Text := RSchedule_f.grdWork2.Cells[1, ARow];
               DeDate.Date := strToDate( RSchedule_f.grdWork2.Cells[0, ARow]);
               CmTime.Text := Copy(RSchedule_f.grdWork2.Cells[2, ARow], 1, 2);
               CmMinute.Text := Copy(RSchedule_f.grdWork2.Cells[2, ARow], 4, 2);
               MemWork.Text := RSchedule_f.grdWork2.Cells[3, ARow];
               MemResult.Text := RSchedule_f.grdWork2.Cells[9, ARow];
               rgProcess.ItemIndex := RSchedule_f.grdWork2.ints[10, ARow];
               cbSect.Text := RSchedule_f.grdWork2.Cells[7, ARow];
               edtRefer.Text := RSchedule_f.grdWork2.Cells[8, ARow];

               Showmodal;
          end;
     end;

end;

procedure TRSchedule_f.grdRecallGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
     Cellindex: integer;
begin
     if Checkint(GrdRecall.cells[7, aRow]) then
          cellindex := GrdRecall.ints[7, aRow]
     else
          cellindex := 1;

     //1: Recall
     //2: Chart_Recall
     //3: Happycall
     //4: 예약리콜
     //5: 알람리콜

     case cellindex of
          1: AFont.Color := clBlack;
          2: AFont.Color := clBlue;
          3: AFont.Color := clGreen;
          4: AFont.Color := clBlack;
          5: AFont.Color := clRed;
     end;

end;

procedure TRSchedule_f.Timer1Timer(Sender: TObject);
begin

     {  caption:= '<BR><B><FONT face="굴림체"   size="20" size="12">' +
        formatDatetime('YYYY', now) + '년 ' +
        formatDatetime('M', now) + '월 ' +
        formatDatetime('D', now) + '일 ' +
        returnWeek(now) +
        '</FONT></B>  <FONT  size="20" face="굴림체" color="#000080"><P  align="center">' +
        formatDatetime('hh:mm:ss', now) +
        '</P></FONT> '; }
     caption := '오늘 할 일  ==>' +
          formatDatetime('YYYY', now) + '년 ' +
          formatDatetime('M', now) + '월 ' +
          formatDatetime('D', now) + '일 ' +
          returnWeek(now) +
          formatDatetime('hh:mm:ss', now);
end;

procedure TRSchedule_f.CBViewClick(Sender: TObject);
begin
     CloseandSave;
end;

procedure TRSchedule_f.spSkinButton12Click(Sender: TObject);
begin
     if not assigned(smsone_f) then
          smsone_f :=
               Tsmsone_f.Create(application);
     smsone_f.varmode := 0;
     smsone_f.edtName.text := '';
     smsone_f.edtRecvno.text := '';
     smsone_f.memContent.text :=
          '+ddd+님의 생일을 +aaa+ 가족모두 진심으로 축하드립니다. 가장행복한날 되세요';
     smsone_f.loadKind := 2;

     //   smsone_f.ChoicePostData(grdbirth, 1, 3, 4, 5, '',           edtsendno.text, 8);
     smsone_f.Showmodal;

end;

procedure TRSchedule_f.spSkinButton14Click(Sender: TObject);
var
     RScheDulePrt_f: TRScheDulePrt_f;
begin
     RScheDulePrt_f := TRScheDulePrt_f.CreateFrm(Application, grdWork2);
     try
          with RScheDulePrt_f, QuickRep1 do
          begin
               PreviewModal;
               // print;
          end;
     finally
          RScheDulePrt_f.Free;
     end;
end;

procedure TRSchedule_f.GrdYeyakGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
      if  GrdYeyak.cells[7, aRow]='1' then
          aBrush.color:=clYellow
          else
          aBrush.color:=clWhite;
end;

procedure TRSchedule_f.btnMinewonClick(Sender: TObject);
begin
  SetYeyakMinewon;
end;

procedure TRSchedule_f.SetYeyakMiNewon;
var
    i, recCount:integer;
 
    varQuery: string;


     function RetRKind(ARk: string): string;
     var
          K: Integer;
     begin
          K := StrToIntDef(ARk, 0);
          if K > 0 then
          begin
               Result := RKind2[K];
          end
          else
               Result := '';
     end;

begin

     varQuery := LoadGroupDataQuery;


     GrdNew.rowcount := 1;

     with Dm_f.SqlTemp, GrdNew do
     begin
        
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_promise');
          if cbTeam.ItemIndex = 0 then
          begin
               Sql.Add('Where (pday >= :Firstday and pday <= :Firstday2)');
               Sql.Add('and pos <> ''Y'' and  pos <> ''C'' and  pos <> ''R''  and  pos <> ''U'' ');
               Sql.Add('and pos <> ''0'' ');
               Sql.Add('and pos <> ''1'' ');
               Sql.Add('and pos <> ''2'' ');
               Sql.Add('and pos <> ''3'' ');
               Sql.Add('and pos <> ''8'' ');
               Sql.Add('and name <> '''' ');
               Sql.Add('and cancel <> ''Y'' and  cancel <> ''R'' and  cancel <> ''C'' and cancel <> ''U'' ');
               ParamByName('FirstDay').AsDate :=
                    StrToDate(FormatDateTime('YYYY-MM-DD',
                    dateTimePicker1.Date));
               ParamByName('FirstDay2').AsDate :=
                    StrToDate(FormatDateTime('YYYY-MM-DD',
                    dateTimePicker2.Date));
          end
          else
               if cbTeam.ItemIndex > 0 then
               begin
                    Sql.Add('Where (pday >= :Firstday and pday <= :Firstday2) and team=:team');
                    Sql.Add('and pos <> ''Y'' and  pos <> ''C'' and  pos <> ''R''  and  pos <> ''U'' ');
                    Sql.Add('and pos <> ''0'' ');
                    Sql.Add('and pos <> ''1'' ');
                    Sql.Add('and pos <> ''2'' ');
                    Sql.Add('and pos <> ''3'' ');
                    Sql.Add('and pos <> ''8'' ');
                    Sql.Add('and name <> '''' ');
                    Sql.Add('and cancel <> ''Y'' and  cancel <> ''R'' and  cancel <> ''C'' and cancel <> ''U'' ');
                    ParamByName('FirstDay').AsDate :=
                         StrToDate(FormatDateTime('YYYY-MM-DD',
                         dateTimePicker1.Date));
                    ParamByName('FirstDay2').AsDate :=
                         StrToDate(FormatDateTime('YYYY-MM-DD',
                         dateTimePicker2.Date));
                    ParamByName('Team').AsString := GetTeamCode(cbTeam.Items,
                         cbTeam.ItemIndex);

               end;

               if varviewAll <> true then
               begin
                     if varQuery <> '' then
                         // sql.Add('and (chart not in (' + varQuery + ' ) ) ');

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;

          Sql.Add('Order by ptime');

          Open;
          if not Dm_f.SqlTemp.IsEmpty then
          begin
               recCount := recordCount;
               rowcount := recCount + 1;

               minewonIndicator.Caption:=inttostr(recCount);
               while not EOF do
               begin
                    for i := 1 to recCount do
                    begin
                         Cells[1, i] := FieldByName('pday').AsString;
                         Cells[2, i] := FieldByName('pTime').AsString;
                         Cells[3, i] := FieldByName('team').AsString;
                         Cells[4, i] := FieldByName('name').AsString;
                         Cells[5, i] := FieldByName('chart').AsString;
                         Cells[6, i] := FieldByName('tel').AsString;
                         Cells[7, i] := FieldByName('remark').AsString;
                         Cells[8, i] := FieldByName('jubsuday').AsString;
                         Cells[9, i] := RetRKind(FieldByName('pos').AsString);
                         Cells[10, i] := FieldByName('pmemo').AsString;
                         Cells[11, i] := FieldByName('pjundam').AsString;
                         Cells[12, i] := FieldByName('idn').AsString;
                         Next;
                    end;
               end;


          end
          else
          begin
               minewonIndicator.visible := false;
          end;
     end;
end;


procedure TRSchedule_f.btnMinewonDateInitClick(Sender: TObject);
begin
   dateTimepicker1.date:=now;
   dateTimepicker2.date:=now;
end;

procedure TRSchedule_f.N5Click(Sender: TObject);
var
     varDay: string;
begin
//     varDay := grdNew.cells[1, grdNew.row];
//     if not assigned(Promisemain_f) then
//          Promisemain_f := TPromisemain_f.Create(application);
//     Promisemain_f.PlannerCalendarGroup1.Date := strtodate(varDay);
//     Promisemain_f.dpsdate.Date := strtodate(varDay);
//     Promisemain_f.dpfdate.Date := strtodate(varDay);
//
// //    Promisemain_f.WindowState := wsnormal;
//
//     main_f.PromiseMode := true;
//     Promisemain_f.Show;
//     Promisemain_f.SelectPromise(0);
//
//     PromiseMain_f.searchPromise(grdNew.cells[4, grdNew.row]);
//
end;

end.

