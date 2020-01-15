unit uPromiseFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  dateutils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Planner, PlannerCal,
  AdvGlowButton, Vcl.ComCtrls, Vcl.StdCtrls, EllipsLabel, AdvTabSet,
  Vcl.ExtCtrls, AdvMenus, Vcl.Menus, System.ImageList, Vcl.ImgList, inifiles,
  AdvProgressBar, AdvCombo, ColCombo, AdvEdit, AdvShapeButton, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, AdvTrackBar, AdvPanel, Vcl.Buttons, AdvUtil,

  uni, db, Vcl.Mask, JvExMask, JvToolEdit, JvCombobox, AdvSplitter ;

type
  TpromiseFrame_fr = class(TFrame)
    Planner1: TPlanner;
    pnlCalendar: TPanel;
    PlannerCalendarGroup1: TPlannerCalendarGroup;
    pnlTop: TPanel;
    ImageList1: TImageList;
    ImageList2: TImageList;
    PopupMenu4: TPopupMenu;
    mnuNewPromise: TMenuItem;
    PopupMenu3: TPopupMenu;
    menuDelete: TMenuItem;
    PopupMenu2: TPopupMenu;
    menuPaste: TMenuItem;
    N14: TMenuItem;
    mnuBlockOn: TMenuItem;
    PopupMenu1: TPopupMenu;
    N35: TMenuItem;
    N3: TMenuItem;
    mnuGogekRegi: TMenuItem;
    N30: TMenuItem;
    N29: TMenuItem;
    N28: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    mnuOpenChart: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    RC1: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N9: TMenuItem;
    SMS1: TMenuItem;
    menuWhisper: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    N10: TMenuItem;
    mnuJubsu: TMenuItem;
    N21: TMenuItem;
    mnuNewon: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N27: TMenuItem;
    N32: TMenuItem;
    N19: TMenuItem;
    N11: TMenuItem;
    mnuChange: TMenuItem;
    mnuCancel: TMenuItem;
    mnuDel: TMenuItem;
    mnuMove: TMenuItem;
    N31: TMenuItem;
    N8: TMenuItem;
    mnuRecallLoad: TMenuItem;
    N20: TMenuItem;
    N22: TMenuItem;
    AdvPopupMenu6: TAdvPopupMenu;
    N23: TMenuItem;
    N24: TMenuItem;
    N75: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N2: TMenuItem;
    cbDamteam: TComboBox;
    ProgressBar: TAdvProgressBar;
    cbDamteam2: TColumnComboBox;
    lstPatPhoneList: TListBox;
    tcTeam: TAdvTabSet;
    pnlTeamCap: TPanel;
    lblTeam: TLabel;
    lblDay1: TLabel;
    pnlChangeDaegiTeam: TAdvPanel;
    Label2: TLabel;
    Label3: TLabel;
    AdvGlowButton11: TAdvGlowButton;
    cbStatus: TComboBox;
    edtIDN: TAdvEdit;
    dpfDate: TDateTimePicker;
    dpSdate: TDateTimePicker;
    pnlTermSet: TPanel;
    tabView: TAdvTabSet;
    Splitter1: TSplitter;
    pnlText: TAdvPanel;
    Panel1: TPanel;
    btnCalendarView: TSpeedButton;
    pnlTodayNavi: TPanel;
    lblDay2: TLabel;
    Panel2: TPanel;
    cbCancelView: TCheckBox;
    cbChangeView: TCheckBox;
    cbJubsuView: TCheckBox;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
    Panel3: TPanel;
    prevMonth: TAdvGlowButton;
    PrevYear: TAdvGlowButton;
    Panel4: TPanel;
    nextMonth: TAdvGlowButton;
    nextYear: TAdvGlowButton;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    lblStat: TLabel;
    lblFrom: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel1: TLabel;
    EllipsLabel26: TLabel;
    AdvTrackBar1: TAdvTrackBar;
    JvCheckedComboBox1: TJvCheckedComboBox;
    btnRefresh: TAdvShapeButton;
    edtSch: TAdvEdit;
    cbMove: TCheckBox;
    AdvSplitter2: TAdvSplitter;
    AdvPanel1: TAdvPanel;
    grdMain: TAdvStringGrid;
    Image1: TImage;
    AdvShapeButton1: TAdvShapeButton;
    btnToDay: TAdvShapeButton;
    procedure Planner1HeaderDblClick(Sender: TObject; SectionIndex: Integer);
    procedure Planner1HeaderSized(Sender: TObject; APosition, AWidth: Integer);
    procedure Planner1ItemBalloon(Sender: TObject; APlannerItem: TPlannerItem;
      var ATitle, AText: string; var AIcon: Integer);
    procedure Planner1ItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure Planner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure Planner1ItemImageClick(Sender: TObject; Item: TPlannerItem;
      ImageIndex: Integer);
    procedure Planner1ItemLeftClick(Sender: TObject; Item: TPlannerItem);
    procedure Planner1ItemMove(Sender: TObject; Item: TPlannerItem; FromBegin,
      FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
    procedure Planner1ItemRightClick(Sender: TObject; Item: TPlannerItem);
    procedure Planner1ItemSize(Sender: TObject; Item: TPlannerItem; Position,
      FromBegin, FromEnd, ToBegin, ToEnd: Integer);
    procedure Planner1PlannerBottomLine(Sender: TObject; Index, Pos: Integer;
      APen: TPen);
    procedure Planner1PlannerDblClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure Planner1PlannerLeftClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure Planner1PlannerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Planner1PlannerMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Planner1PlannerRightClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure PlannerCalendarGroup1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure PlannerCalendarGroup1MonthChange(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure PlannerCalendarGroup1YearChange(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure PrevYearClick(Sender: TObject);
    procedure prevMonthClick(Sender: TObject);
    procedure nextMonthClick(Sender: TObject);
    procedure nextYearClick(Sender: TObject);
    procedure btnToDayClick(Sender: TObject);
    procedure dpSdateChange(Sender: TObject);
    procedure dpfDateChange(Sender: TObject);
    procedure btnCalendarViewClick(Sender: TObject);
    procedure mnuNewonClick(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure mnuGogekRegiClick(Sender: TObject);
    procedure mnuChangeClick(Sender: TObject);
    procedure mnuCancelClick(Sender: TObject);
    procedure mnuDelClick(Sender: TObject);
    procedure mnuMoveClick(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure mnuRecallLoadClick(Sender: TObject);
    procedure menuPasteClick(Sender: TObject);
    procedure mnuBlockOnClick(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure SMS1Click(Sender: TObject);
    procedure menuWhisperClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure AdvTrackBar1Change(Sender: TObject);
    procedure cbCancelViewClick(Sender: TObject);
    procedure cbMoveClick(Sender: TObject);
    procedure cbJubsuViewClick(Sender: TObject);
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure Planner1HeaderDragDrop(Sender: TObject; FromSection,
      ToSection: Integer);
    procedure EllipsLabel2Click(Sender: TObject);
    procedure menuDeleteClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure edtSchKeyPress(Sender: TObject; var Key: Char);
    procedure grdMainDblClick(Sender: TObject);
    procedure grdMainResize(Sender: TObject);
    procedure N23Click(Sender: TObject);
  private
    { Private declarations }


          isDamteamLoad : boolean; //team을 불러올때 onChange이벤트 안타도록...

          isClipped : boolean; //이동, 복사, 변경시 true
          varModSelecteditemTag: integer;
          varModType: integer; //재예약3, 이동 2, 변경 1
          varCPhoneNumber: string;
          varDamTeamName: string;
          selecteditemTag: integer;
          selecteditemRemark: string;
          selecteditemChart: string;
          selecteditemChart_forModify: string;
          selecteditemPhone: string;
          selecteditemTeam: string;
          MovingitemPos: integer;
          MovingitemBegin: integer;
          selectedItemInterval: integer;
          varViewItalic : boolean;

          colorMenuArray: array of TmenuItem;



          varDamTeam: string;
          varDamTeamCheck: string;




    procedure viewMode(varKind: integer);
    procedure formSet;
    procedure HeaderSet(varViewMode: integer);
    procedure TimeSet(varTeam: integer);
    procedure LoadYeyakPresent;
    procedure PromiseSelect(chart: string);
    procedure loadCellPhoneList(varChart: string);
    function isHoliday(varDate: TdateTime): boolean;
    procedure GetHoliday;
    procedure PromiseInfoSet(varTabindex: integer);
    procedure BtnColorSet;
    procedure setArrayPanel;
    procedure sendSMS_Change_Cancel(varChart, varName, varDate, varTime,
      varGugan, varRemark, varTeam, varInterval, varTong, varGuk, varBun,
      varContent: string; varIdn: integer);
    procedure MoveSwitch;
    procedure LoadDefaultValue;
    procedure LoadWorkList;
    procedure findgogek(varName: string; varGubun: integer = 0);
  public
    { Public declarations }
    procedure DaySet(varDate: Tdatetime);
    procedure  SelectPromise(varKind: integer; varCancelView: boolean
     = false; varChangeView: boolean = false;  varJubsuView: boolean = true);
    procedure searchPromise(varText: string);

     procedure  PreShow  ;
  end;

implementation
uses uConfig, uDm,uFormInit, uFunctions, uPromiseData, uGogekData, uGogekData_find, uMain, inputPromise, uSendSMS,
  Recall, inputBlock, smsone, regiSchedure, promiseJohoi;
{$R *.dfm}


procedure TpromiseFrame_fr.SelectPromise(varKind: integer; varCancelView: boolean
     = false; varChangeView: boolean = false;  varJubsuView: boolean = true);
var
     sb: integer;
     varDay: string;
     varLunchstart, varLunchInterval: integer;
     varChartView: boolean;

     varChartOnlyView: boolean;
begin
     //     formSet;

     varDay := formatdatetime('YYYY-MM-DD', dpsDate.date);

     if cbCancelView.checked then
          varCancelView := true;

     if cbChangeView.checked then
          varChangeView := true;


     if cbJubsuView.checked then
          varJubsuView := true
          else
           varJubsuView := false;

     if configvalue.p_chartNoView = '1' then
          varChartView := true
     else
          varChartView := false;

     if configvalue.p_chartNoOnlyView = '1' then
          varChartOnlyView := true
     else
          varChartOnlyView := false;

     if configvalue.p_ViewItalic = '1' then
          varViewItalic := true
     else
           varViewItalic := false;

     viewMode(varKind);

     HeaderSet(varKind);

     case varKind of
          0: //일간
               begin

                    lblstat.Caption := '일간보기';

                    planner1.items.Clear;

                    DbdataToPlan(planner1,
                         PopupMenu1,
                         PopupMenu3,
                         varDay,
                         '0',//varDamteam,
                         timeinterval,
                         starttime,
                         varChartView,
                         varCancelView,
                         varChangeView,
                         varChartOnlyView,
                         varViewAll,
                         varViewItalic,
                         0,
                         varJubsuView);// main_f.tsMain.TabIndex);
                    //       planner1.SetFocus;

                  //  LoadYeyakPresent;

                    sb := planner1.AbsTimeToCell(now);

                    if configvalue.P_PositionTime = '1' then
                         planner1.GridTopRow := sb;
                    //    else
                    //         planner1.GridTopRow := 0;

                     //점심시간 설정
                     if dateDayOfWeek(dpsDate.date) = Saturday then
                     begin
                           varLunchInterval := (timetoMin(configvalue.p_LunchfinishTime_sat)
                                                - timetoMin(configvalue.p_Lunchstarttime_sat)) div timeInterval;
                           varLunchstart := timetoMin(configvalue.p_LunchstartTime_sat) div timeInterval;
                     end
                     else
                     begin
                           varLunchInterval := (timetoMin(configvalue.p_LunchfinishTime)
                                             - timetoMin(configvalue.p_Lunchstarttime)) div timeInterval;
                           varLunchstart := timetoMin(configvalue.p_LunchstartTime) div timeInterval;

                     end;



               end;
          1: //주간
               begin
                    lblstat.Caption := '주간보기';

                    DbDataToPlan_term(planner1,
                         PopupMenu1,
                         PopupMenu3,
                         formatdatetime('YYYY-MM-DD', dpsDate.date),
                         formatdatetime('YYYY-MM-DD', dpsDate.date),
                         formatdatetime('YYYY-MM-DD', dpfDate.date),
                         varDamteam,
                         timeinterval,
                         starttime, varViewAll);


                    //  planner1.SetFocus;


                          //점심시간 설정
                           varLunchInterval := (timetoMin(configvalue.p_LunchfinishTime)
                                             - timetoMin(configvalue.p_Lunchstarttime)) div timeInterval;
                           varLunchstart := timetoMin(configvalue.p_LunchstartTime) div timeInterval;

               end;
          2: //기간
               begin
                    lblstat.Caption := '기간보기';

                    DbDataToPlan_term(planner1,
                         PopupMenu1,
                         PopupMenu3,
                         formatdatetime('YYYY-MM-DD', dpsDate.date),
                         formatdatetime('YYYY-MM-DD', dpsDate.date),
                         formatdatetime('YYYY-MM-DD', dpfDate.date),
                         varDamteam,
                         timeinterval,
                         starttime, varViewAll);
                    //      planner1.SetFocus;

                         //점심시간설정
                           varLunchInterval := (timetoMin(configvalue.p_LunchfinishTime)
                                             - timetoMin(configvalue.p_Lunchstarttime)) div timeInterval;
                           varLunchstart := timetoMin(configvalue.p_LunchstartTime) div timeInterval;
               end;
     end;

     LoadWorkList;
     LoadYeyakPresent;




     Promise_DisplasyLunch(planner1,
          columncount, varLunchstart - StartTime, varLunchInterval,
          substr(configvalue.p_LunchColor, 2, ','), configvalue.p_LunchCap);






//     selectRecall;

     //이동여부를 셋팅한다.
     if configvalue.VarPromiseLock = '1' then
     begin
          cbMove.Checked := true
     end
     else
     begin
          cbMove.Checked := false;
     end;

  //   MoveSwitch;
 //    lstPatPhoneList.Items.Clear;

end;
procedure TpromiseFrame_fr.LoadWorkList;
const

     sqlselect = 'SELECT * FROM ma_sawon_work       ' + #13#10 +
        'where swdate >=:regday1 and swdate <= :regday2  order by SwCode desc';

     sqlselect3 = 'SELECT * FROM ma_sawon_work       ' + #13#10 +
        'where SwProcess <> ''2''  order by SwCode desc';

     sqlselect2 = 'SELECT * FROM ma_sawon_work       ' + #13#10 +
        'where ( swdate >=:regday1 and swdate <= :regday2) or  (swProcess <>''2'' and swProcess <>''3'')  order by SwCode desc';
var
     i: integer;
     proc: string;
begin
     with dm_f.sqlwork, grdmain do
     begin
          close;
          sql.clear;
          sql.Text := sqlSelect3;

//          if configvalue.P_DelayWorkView = 1 then
//          begin
//              sql.Text := sqlSelect2;
//          end
//          else
//          begin
//              sql.Text := sqlSelect;
//          end;




//              parambyname('regday1').asString := formatdatetime('yyyy-mm-dd',
//                   dpsdate.date);
//              parambyname('regday2').asString := formatdatetime('yyyy-mm-dd',
//                   dpfdate.date);
          open;
          if not DM_f.SqlWork.isEmpty then
          begin
               rowcount := recordcount + 1;
               for i := 1 to rowcount - 1 do
               begin
                    Cells[1, i] := FieldByName('regDay').AsString;
                    Cells[2, i] := FieldByName('SwName').AsString; //FieldByName('SwId').AsString;
                //    Cells[3, i] := FieldByName('Sect').AsString; //FieldByName('SwId').AsString;
                    Cells[3, i] := FieldByName('SwTitle').AsString; //FieldByName('SwId').AsString;
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
          end
          else
          begin
               rowcount := 1;

          end;
          autonumbercol(0);
     end;
end;



procedure TpromiseFrame_fr.AdvShapeButton1Click(Sender: TObject);
begin
     LoadWorkList;
end;

procedure TpromiseFrame_fr.AdvTrackBar1Change(Sender: TObject);
var
     i: integer;
begin
     planner1.Display.DisplayScale := AdvTrackBar1.Position;
     if advTrackBar1.Position < 50 then

     begin
          for i := 0 to planner1.Items.Count - 1 do
          begin
               planner1.Items.Items[i].CaptionType := TCaptionType.ctNone;
          end;
     end
     else
     begin
          for i := 0 to planner1.Items.Count - 1 do
          begin
               planner1.Items.Items[i].CaptionType := TCaptionType.ctTime;
          end;
     end;

end;

procedure TpromiseFrame_fr.btnCalendarViewClick(Sender: TObject);
var
    path     : string;
    FormInit : TIniFile;
begin

    if   pnlCalendar.Width =0  then
        pnlCalendar.Width := 213 + 28
    else
        pnlCalendar.Width := 0;


     Path := GetConfigDir + 'db.ini';

     FormInit := TIniFile.Create(Path);
     FormInit.WriteInteger('ETC', 'promiseCalendarView', pnlCalendar.Width);

     FormInit.Free;

end;

procedure TpromiseFrame_fr.viewMode(varKind: integer);
begin
     case varKind of
          0:
               begin
                    //  lblto.Visible := false;
                    lblFrom.Visible := true; //false;
                    dpfdate.Visible := true; //false;
                    dpsdate.Date := plannerCalendarGroup1.date;
                    dpfdate.Date := plannerCalendarGroup1.date;
               end;
          1:
               begin
                    //   lblto.Visible := true;
                    lblFrom.Visible := true;
                    dpfdate.Visible := true;
                    dpfdate.Date := dpsdate.Date + 6;
               end;
          2:
               begin
                    //    lblto.Visible := true;
                    lblFrom.Visible := true;
                    dpfdate.Visible := true;
               end;
     end;
end;



procedure TpromiseFrame_fr.HeaderSet(varViewMode: integer);
var
     i: integer;
     varChairNum: string;
     Path: string;
     FormInit: Tinifile;
     varColWidth: integer;

begin
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     with planner1.Header do
     begin

          AllowPositionResize := true;
          AllowResize := true;
          ResizeAll := false;

          DragDrop := True;
          Height := 32;
          Font.Charset := DEFAULT_CHARSET;
          //    Font.Color := $00DB5267;
          Font.Height := -11;
          Font.Name := 'Tahoma';
          Font.Style := [fsBold];
          GroupFont.Charset := DEFAULT_CHARSET;
          //    GroupFont.Color := $00DB5267;
          GroupFont.Height := -11;
          GroupFont.Name := 'MS Sans Serif';
          GroupFont.Style := [];

          // Images := ImageList2;
           // VAlignment := vtaTop;

         //  visible:=false;

     end;

     with dm_f.sqlTemp do
     begin

            Close;
            Sql.Clear;
            Sql.text :=
                 'Select count(*) as colcount From ma_promise_chair';


//                 'Select count(*) as colcount from ma_basic                            ' + #13#10 +
//                 'where  (code like  ''093%'') and (code <> ''09300'')     ' + #13#10 +
//                 'and inuse <>  ''0''  and remark=''TREAT''                ';

            Open;
            columncount := fieldByName('colcount').AsInteger;
     end;


     case varViewMode of
          0: //일간
               begin

                    //  columncount := configvalue.p_columncount;

                    //todo: postion분리모드를 사용할지에 대한 옵션을 설정

                  //  columncount := configvalue.p_columncount;


                    columnStart := 1;

                    if varDamTeam <> '0' then
                    begin
                         if LoadTeam_PromiseGubunCount_team(varDamTeam) <> 0 then
                         begin
                              columncount := LoadTeam_PromiseGubunCount_team(varDamTeam);
                              columnStart := LoadTeam_PromiseGubunStart(varDamTeam);
                         end;
                    end;

                    //uSetDunctions : DB에서 설정값(컬럼수)을 가져온다.
                    with planner1 do
                    begin

                         Positions := columncount;
                         //PositionProps := <> ;
                         //PositionWidth := 0;
                         PositionAutoSize := True;

                    end;


                         planner1.Header.Alignment := taCenter;
                         //    color := $007B7B7B;

                         planner1.Header.Captions.Text := '';


                         planner1.Header.Captions.Add('');


                    with Dm_f.SqlWork do
                    begin


                      //   for i := 0 to columncount - 1 do
                      //   begin

//
//                              varColWidth := FormInit.ReadInteger('예약컬럼', inttostr(i + columnstart - 1), 0);
//
//                              if varColWidth <> 0 then
//                                   planner1.PositionWidths[i] := varColWidth;

                              varChairNum := inttostr(i + 1 + (columnstart - 1));

                              Close;
                              SQL.Clear;
                              SQL.Add('Select ChairName,  ChairRemark From ma_promise_chair');
                              SQL.Add('order by ChairName');
//                              Sql.Add('Where ChairNo=:ChairNo');
//                              ParamByName('ChairNo').AsString := varChairNum;

//                              Close;
//                              Sql.Clear;
//                              Sql.text :=
//                                   'Select * from ma_basic                                   ' + #13#10 +
//                                   'where  (code like  ''093%'') and (code <> ''09300'')     ' + #13#10 +
//                                   'and inuse <>  ''0''  and remark=''TREAT''                ' + #13#10 +
//                                //   'order by val,code                                        ';
//                                   'order by disp                                       ';

                              Open;
                              if not IsEmpty then
                              begin
                                  while not eof do
                                 begin
                                   planner1.Header.Captions.Add(FieldByName('ChairRemark').AsString);
                                 //   planner1.Header.Captions.Add(FieldByName('disp').AsString);
                                    next;
                                 end;


                              end
                              else
                              begin
                                   planner1.Header.Captions.Add(varChairNum);
                              end;



                      //   end;
                    end;
               end;
          1: //주간
               begin
                    columncount := daysu(dpfdate.Date, dpSdate.Date) +
                         1;
                    with planner1.Header do
                    begin
                         Alignment := taCenter;
                         //   color := $007B7B7B;
                         Captions.Text := '';
                         Captions.Add('');
                         for i := 0 to columncount - 1 do
                         begin
                              Captions.Add(datetoStr(dpSdate.Date +
                                   i)
                                   + '(' + returnWeek2(dpSdate.Date
                                   + i) +
                                   ')');
                         end;
                    end;

                    {     planner1.PositionWidths[0]:=30;
                          planner1.PositionWidths[1]:=50;
                          planner1.PositionWidths[2]:=100;
                    }

                    with planner1 do
                    begin

                         Positions := columncount;
                         //PositionProps := <> ;
                         PositionWidth := 0;
                         PositionAutoSize := false; //true;  2012.5.17
                         //    PositionWidths[0] := 150;
                         //    PositionWidths[1] := 150;
                         //    PositionWidths[2] := 150;
                         //    PositionWidths[3] := 150;
                         //    PositionWidths[4] := 150;
                    end;

               end;
          2: //기간
               begin
                    columncount := daysu(dpfdate.Date, dpSdate.Date) +
                         1;
                    with planner1.Header do
                    begin
                         Alignment := taCenter;
                         //       color := $007B7B7B;
                         Captions.Text := '';
                         Captions.Add('');
                         for i := 0 to columncount - 1 do
                         begin
                              Captions.Add(datetoStr(dpSdate.Date +
                                   i)
                                   + '(' + returnWeek2(dpSdate.Date
                                   + i) +
                                   ')');
                         end;
                    end;

                    with planner1 do
                    begin

                         Positions := columncount;
                         //PositionProps := <> ;
                         PositionWidth := 0;
                         PositionAutoSize := false; //true;  2012.5.17
                         //    PositionWidths[0] := 150;
                         //   PositionWidths[1] := 150;
                         //    PositionWidths[2] := 150;
                         //    PositionWidths[3] := 150;
                         //    PositionWidths[4] := 150;
                    end;

               end;
     end;
     FormInit.Free;

end;

procedure TpromiseFrame_fr.TimeSet(varTeam: integer);
var
     sTime, fTime: string;
     Path: string;
     FormInit: Tinifile;
     varTimeKind: string;
     vartimeInterval, varrowinterval: integer;
begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     varTimeKind := FormInit.ReadString('예약시간설정', '체어별적용', '');
     varTimeInterval := FormInit.Readinteger('예약시간설정', '체어별적용시간', 30);
     varRowInterval := FormInit.Readinteger('예약시간설정', '체어별적용로우', 30);

     FormInit.free;

     if varTimeKind <> '1' then
     begin
          timeInterval := configvalue.p_timeinterval;
          //uSetDunctions : DB에서 설정값(시간 간격)을 가져온다.
          rowinterval := configvalue.p_rowinterval;
          //uSetDunctions : DB에서 설정값(Row Height사이즈)을 가져온다.
     end
     else
     begin
          timeInterval := varTimeInterval;
          rowinterval := varrowinterval;
     end;

     if trim(configvalue.p_startTime) <> '' then
          sTime := configvalue.p_startTime
     else
          sTime := '09:00';
     StartTime := timetomin(sTime) div timeinterval;

     if trim(configvalue.p_finishtime) <> '' then
          fTime := configvalue.p_finishtime
     else
          fTime := '20:00';

     //uSetDunctions : DB에서 설정값(시작시간)을 가져온다.
     FinishTime := timetomin(ftime) div timeinterval;

     //uSetDunctions : DB에서 설정값(마침시간)을 가져온다.
     with planner1.display do
     begin
          // HourLinecolor := clwhite;

         //  colorActive := $00E9E9E9;
         //  colorCurrent := $00DCB6B1;
         //  colorCurrentItem := $00494949;
          DisplayScale := rowinterval; //Row간격

          ScaleToFit := false;
          activeStart := 0; //StartTime; //displayunit을 기준으로 설정되고 0부터 시작
          activeEnd := Finishtime - StartTime + 1;

          DisplayUnit := timeinterval;
          //    showmessage(inttostr(StartTime)+':'+ inttostr( FinishTime));
          DisplayStart := StartTime;
          DisplayEnd := Finishtime;

          //  showCurrent := true;
          //  showCurrentitem := true;
     end;

end;

procedure TpromiseFrame_fr.formSet;
begin
     pnlTop.Visible := true;
     pnlTodayNavi.caption:='';

     with planner1 do
     begin

          Left := 0;
          Top := 137;
          Width := 1045;
          Height := 704;
          ActiveDisplay := true;
          Align := alClient;
          //  Balloon.BackgroundColor := clYellow; //16773087;
         //   Balloon.TextColor := clBlack; //clTeal;

          Balloon.Transparency := 0;

          Balloon.enable:=true;
          Balloon.enable:=false;
          Balloon.enable:=true;
          Caption.Visible := false;
          Caption.Title := ' 덴트로 예약정보';
          Caption.Font.Charset := DEFAULT_CHARSET;
          //  Caption.Font.Color := clWhite;
          Caption.Font.Height := -13;
          Caption.Font.Name := 'MS Sans Serif';
          Caption.Font.Style := [fsBold];
          Caption.BackgroundSteps := 32;
          { DayNames.Strings := (
                'Sun'
                'Mon'
                'Tue'
                'Wed'
                'Thu'
                'Fri'
                'Sat');
           }
       {   DefaultItem.BorderColor := clGray;
          DefaultItem.CaptionBkgTo := clSilver;
          DefaultItem.color := $00555555;
          DefaultItem.colorto := $008C8C8C;
          DefaultItem.CaptionFont.Charset := DEFAULT_CHARSET;
          DefaultItem.CaptionFont.Color := clWindowText;
          DefaultItem.CaptionFont.Height := -11;
          DefaultItem.CaptionFont.Name := 'MS Sans Serif';
          DefaultItem.CaptionFont.Style := [];
          DefaultItem.ColorTo := 16250871;
          DefaultItem.Cursor := -1;
          DefaultItem.Font.Charset := DEFAULT_CHARSET;
          DefaultItem.Font.Color := clWindowText;
          DefaultItem.Font.Height := -11;
          DefaultItem.Font.Name := 'MS Sans Serif';
          DefaultItem.Font.Style := [];
        }
          DefaultItem.ItemBegin := 16;
          DefaultItem.ItemEnd := 17;
          DefaultItem.ItemPos := 0;
          DefaultItem.Name := 'PlannerItem0';
          //DefaultItem.PopupMenu := PopupMenu1;
         { DefaultItem.TrackColor := $00D05B6A;
          DefaultItem.TrackSelectColor := $00D05B6A;
          DefaultItem.SelectColor := clWhite;
          DefaultItem.SelectColorTo := clWhite;
          DefaultItem.Shadow := False;
          }

        //  DirectMove := false;
        //  Disjunctselect:=False;

          Font.Charset := ANSI_CHARSET;
          //  Font.Color := clWindowText;
          Font.Height := -11;
          Font.Name := 'Tahoma';
          Font.Style := [];
          {Footer.Captions.Strings := (
               ''
               '0'
               '0'
               '0'
               '0'
               '0'
               '0'
               '0'
               '0');
               }
          {Footer.CompletionFormat := '%d%%';
          Footer.Completion.Font.Charset := DEFAULT_CHARSET;
          Footer.Completion.Font.Color := clWindowText;
          Footer.Completion.Font.Height := -11;
          Footer.Completion.Font.Name := 'Arial';
          Footer.Completion.Font.Style := [];
          Footer.Font.Charset := DEFAULT_CHARSET;
          Footer.Font.Color := clWindowText;
          Footer.Font.Height := -11;
          Footer.Font.Name := 'MS Sans Serif';
          Footer.Font.Style := [];
         }


//          Footer.ShowCompletion := True;
//          Footer.Visible        := True;

          Footer.ShowCompletion := false;
          Footer.Visible        := false;

          GridLeftCol := 1;
          //GridLineColor := clWhite;
          GridTopRow := 0;
          {Header.Captions.Strings := (
               ''
               'Meeting room 1\nBoard room'
               'Meeting room 2\nExecutive room'
               'Meeting room 3\nBackroom'
               'Meeting room 4'
               'Meeting room 5'
               'Meeting room 6'
               'Meeting room 7'
               'Meeting room 8'
               'Meeting room 9'
               'Meeting room 10')
               }
          //     Header.CustomGroups := <> ;

          HourType := ht12hrs;
          HTMLOptions.CellFontStyle := [fsBold];
          HTMLOptions.HeaderFontStyle := [];
          HTMLOptions.SidebarFontStyle := [];
          ItemGap := 10;
          //Items := <> ;
          Mode.Month := 11;
          Mode.PeriodStartDay := 30;
          Mode.PeriodStartMonth := 4;
          Mode.PeriodStartYear := 0;
          Mode.PeriodEndDay := 17;
          Mode.PeriodEndMonth := 6;
          Mode.PeriodEndYear := 0;
          Mode.TimeLineStart := 37605.000000000000000000;
          Mode.TimeLineNVUBegin := 0;
          Mode.TimeLineNVUEnd := 0;
          Mode.Year := 2010;
          NavigatorButtons.PrevHint := 'Goto previous day';
          NavigatorButtons.NextHint := 'Goto next day';
          NavigatorButtons.ShowHint := True;
          NavigatorButtons.visible := false;
          Sidebar.Alignment := taRightJustify;

          {Sidebar.Font.Charset := DEFAULT_CHARSET;
          Sidebar.Font.Color := clwhite;
          Sidebar.Font.Height := -9;
          Sidebar.Font.Name := 'Tahoma';
          Sidebar.Font.Style := [];
          Sidebar.HourFontRatio := 1.800000000000000000;
          Sidebar.OccupiedTo := clWhite;
          Sidebar.TimeIndicator := true;
          Sidebar.ShowOccupied := false;
          Sidebar.ShowInPositionGap := true;

          Sidebar.LineColor := $003C3C3C;
          Sidebar.Background := $003C3C3C;
          Sidebar.Backgroundto := $003C3C3C;
          Sidebar.Border := false;
          sidebar.TimeIndicatorColor := $006E21E0;

          PrintOptions.FooterFont.Charset := DEFAULT_CHARSET;
          PrintOptions.FooterFont.Color := clWindowText;
          PrintOptions.FooterFont.Height := -11;
          PrintOptions.FooterFont.Name := 'MS Sans Serif';
          PrintOptions.FooterFont.Style := [];
          PrintOptions.HeaderFont.Charset := DEFAULT_CHARSET;
          PrintOptions.HeaderFont.Color := clWindowText;
          PrintOptions.HeaderFont.Height := -11;
          PrintOptions.HeaderFont.Name := 'MS Sans Serif';
          PrintOptions.HeaderFont.Style := [];
          ScrollSmooth := True;
          ScrollBarStyle.Color := clBtnFace;
          }
          SelectBlend := 50;
          //  selectColor:=clRed;
          TrackWidth := 5;
          PlannerImages := Imagelist1;
          {Version := '2.5.5.1';
         }
          //          OnItemAnchorClick := planner1ItemAnchorClick;
          //          OnItemAnchorEnter := planner1ItemAnchorEnter;
          //          OnItemAnchorExit := planner1ItemAnchorExit;
          //          OnItemRightClick := planner1ItemRightClick;
          OnItemImageClick := planner1ItemImageClick;
          OnItemBalloon := planner1ItemBalloon;
          OnItemDelete := planner1ItemDelete;
          //          OnItemInsert := planner1PlannerRightClick;
          //          OnItemSelChange := planner1ItemSelChange;
         // OnItemPopupPrepare := planner1ItemPopupPrepare;
          //          OnPlannerRightClick := planner1PlannerRightClick;
         // OnPlannerHeaderDraw := planner1PlannerHeaderDraw;
       //   OnPlannerNext := planner1PlannerNext;
       //   OnPlannerPrev := planner1PlannerPrev;
          OnPlannerMouseMove := planner1PlannerMouseMove;
          OnPlannerDblClick := planner1PlannerDblClick;
          //   OnPlannerKeypress := Planner1PlannerKeyPress;
             //   OnDragDrop := planner1DragDrop;
              //  OnDragOver := planner1DragOver;
          OnItemDblClick := planner1ItemDblClick;
          OnItemMove := planner1ItemMove;
          OnItemSize := planner1ItemSize;

     end;

end;



procedure TpromiseFrame_fr.LoadYeyakPresent;
var
     AllCount, TeamCount: string;
     varQuery: string;
begin

     //예약된 총 건수를 확인
      {use dentro
Select * From ma_promise  --count(*) as aCount From ma_promise
Where pday='2012-12-11'
and Cancel <> 'Y'
and Cancel <> 'U'
and Cancel <> 'C'
--and Cancel <> 'R'
and name <> '[B]'
and name <> ''
order by ptime}
     varQuery := LoadGroupDataQuery;

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select count(*) as aCount From ma_promise');
          Sql.Add('Where pday=:pday and Cancel <> ''Y'' ');
          sql.add('and Cancel <> ''U''  and Cancel <>''C''  ');
          Sql.Add('and name <> ''[B]'' ');
          Sql.Add('and name <> '''' ');
          {'Y'; //다모음에서 예약취소
           'U'; //R 은 다모음에서 에약변경
           'C'; //예약취소
           'R'; //예약변경
           '5'; //예약변경 }

          paramByName('pday').AsString :=  FormatDateTime('YYYY-MM-DD', dpsdate.Date);//DateToStr(dpsdate.Date);

          if varViewAll <> true then
          begin
//               if varQuery <> '' then
//                    sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;


          end;

          Open;
          allCount := Dm_f.SqlWork.FieldByName('aCount').AsString;

          Close;
          Sql.Clear;
          Sql.Add('Select count(*) as aCount From ma_promise');
          Sql.Add('Where pday=:pday and Cancel<>:Cancel ');
          sql.add('and Cancel<>:Cancel2  and Cancel<>:Cancel3   ');
          Sql.Add('and team=:Team');
          Sql.Add('and name <> ''[B]'' ');
          Sql.Add('and name <> '''' ');
          paramByName('pday').AsString := FormatDateTime('YYYY-MM-DD', dpsdate.Date);// DateToStr(dpsdate.Date);
          paramByName('Cancel').AsString := 'Y';
          paramByName('Cancel2').AsString := 'U';
          paramByName('Cancel3').AsString := 'C';
          //   paramByName('Cancel4').AsString := 'R'; //예약변경
          paramByName('Team').AsString := varDamteam;

          if varViewAll <> true then
          begin
//               if varQuery <> '' then
//                    sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

          end;

          Open;
          if varDamteam <> '0' then
               TeamCount := Dm_f.SqlWork.FieldByName('aCount').AsString
          else
               TeamCount := allCount;

     end;
     //lblToday.Caption := FormatDateTime('YYYY', dpsdate.Date) + '년 ' +
     self.Caption := '예약정보 - ' + FormatDateTime('YYYY', dpsdate.Date) +
          '년 ' +
          FormatDateTime('MM', dpsdate.Date) + '월 ' +
          FormatDateTime('DD', dpsdate.Date) + '일' +
          '의 총예약환자는 ' +
          allCount +
          '명 이며, ' +
          FormatDateTime('YYYY', dpsdate.Date) + '년 ' +
          FormatDateTime('MM', dpsdate.Date) + '월 ' +
          FormatDateTime('DD', dpsdate.Date) + '일' +
          '의 ' +
          varDamteamName +
          ' 원장의 ' +
          ' 예약환자는 ' +
          TeamCount +
          '명 입니다';

end;


procedure TpromiseFrame_fr.menuDeleteClick(Sender: TObject);
begin
     if Application.MessageBox(PChar('선택하신 블럭을 [삭제]하시겠습니까?' +
          #10#13 + '삭제하신 내용은 복구되지 않습니다.'),
          '블럭삭제', MB_YESNO) = IDYES then
     begin
          if Promise_Delete(selectedItemTag) = true then
          begin
               //예약SMS 삭제
          end;

          SelectPromise(tabView.TabIndex);
     end;
end;

procedure TpromiseFrame_fr.menuPasteClick(Sender: TObject);
var
     varDate, vartime, varGugan, varChart, varname, varTel, varAlret,
          varJundam, vardam, varColor, varNoSMS, varf_color, varf_size,
          varTeam, varDoc , varInterval,
          varCancel, varRemark, varLock, varMemo, varJundam2:
     string;
     varIdn, scanCount: integer;
     varf_bold:boolean;

     varTong, varGuk, varBun, varSDate, varSendTime, varContent: string;
     varTelYeyak: string;
     varAfterSendDate: integer;

     i : integer;
     nIdn:integer;//insert 후 ind가져오기
begin
     // Planner1.Items.PasteFromClipboardAtPos;
     // showmessage(inttostr(Planner1.Items.Items[0].Tag));
     // showmessage(inttostr(Planner1.Items.Items[0].ItemBegin));
     // showmessage(inttostr(Planner1.Items.Items[0].Itemend));

     varCancel := '5';

     Promise_SelectData(varModSelecteditemTag); //SelectedItemTag);

     varDate := formatDateTime('YYYY-MM-DD', dpsDate.date);
     varTime := mintotime((MovingItemBegin + startTime) *
          timeinterval);

     // showmessage(varTime);
     if columnstart > 1 then
          varGugan := inttostr(Movingitempos  + columnstart - 1)
     else
          varGugan := inttostr(Movingitempos );

     //varTeam := main_f.varDamteam;

     //todo: columnstart > 1 일때는 팀을 바꾸면 안된다.
     varTeam := selecteditemteam; // varDamteam;
     varDoc := '';//cbDoc.ColumnItems[cbDoc.itemindex, 2];

     varInterval := inttostr(selectedItemInterval * timeinterval);

     varidn := varModSelecteditemTag; // SelectedItemTag;
     varRemark    := SelectedItemRemark;
     pnlText.Text := SelectedItemRemark;
     varRemark    := pnlText.RawText;
     varRemark    := StringReplace(varRemark, '(', '',
          [rfReplaceAll]);
     varRemark := StringReplace(varRemark, ')', '',
          [rfReplaceAll]);

     varChart  := selecteditemChart_forModify;
     varname   := varPrname;
     varTel    := varPrtel;
     varAlret  := varPrAlarm;
     varJundam := varPrDam; //varPrTeam;  //담당자임
     vardam    := formatDateTime('YYYY-MM-DD', dpsDate.date);
     varColor    := varPrColor;
     varTelYeyak := varPrTelYeyak;

     varLock    := varPrLock;
     varJundam2 := varPrDam2; //메모입력자
     varMemo    := varPrMemo;
     varnoSMS   := varPrnoSMS;
     varf_color := varPrf_color;
     varf_size  := varPrf_size;
     varf_bold  :=varPrf_bold;

     if promise_saveData(true, varDate, varGugan, vartime, varRemark, varMemo,
          varteam, varDoc,
          varChart,
          varname, varTel, varinterval, varAlret, varLock, varJundam,
          vardam,
          varrHospDocname,
          varrHospCode,
          varColor, varJundam2, varNoSMS, varf_color, varf_size, varf_bold,
          nIDn,
          varTelYeyak,
          varIdn) = true then
     begin

          //SMS예약전송
          if configvalue.p_BeforeSendSms = 1 then
          begin
               //기존 예약 전송을 취소 해야 한다.....
               varAfterSendDate := configvalue.p_BeforSms;
               //예약 며칠전에 보냈는가?
               varSDate := formatDateTime('YYYYMMDD', strtodate(varPrday)
                    -
                    varAfterSendDate);

               if CancelSMS(main_f.SMSCALLMSG1,
                    '', //varGogekName: string;
                    '', //varGogekId: string;
                    substr(varTel, 1, '-'),
                    substr(varTel, 2, '-'),
                    substr(varTel, 3, '-'),
                    varSDate) = 1 then
               begin

                    Promise_UpdateSendedReserveSMS(varDate, varGugan,
                         vartime, varRemark,
                         varteam,
                         varChart,
                         varname, varTel, varinterval, '0', varidn);

               end
               else
               begin
                    showmessage('예약전송 취소 실패(변경).');

               end;


          //부모 전화번호찾아서 예약전송삭제...
          //예약 전송시에 부모에게도 전송해야 한다.


                      try
                            if  lstPatPhoneList.Items.Count > 0 then
                            begin

                                for i:= 0 to   lstPatPhoneList.Items.Count -1 do
                                begin

                                   varTong:= substr(  lstPatPhoneList.Items[i],1, '-') ;
                                   varGuk:=  substr(  lstPatPhoneList.Items[i],2, '-') ;
                                   varBun:=  substr(  lstPatPhoneList.Items[i],3, '-') ;


                                   if CancelSMS(main_f.SMSCALLMSG1,
                                         '', //varGogekName: string;
                                         '', //varGogekId: string;
                                         varTong,
                                         varGuk,
                                         varBun,
                                         varSdate ) = 1 then
                                    begin
                                         Promise_UpdateSendedReserveSMS(varPrDay,
                                              varPrGugan, varprTime,
                                              varPrSulsik, varPrTeam, varPrChart,
                                              varPrName,
                                              varPrtel, varPrInterval, '0',selectedItemTag);

                                    end
                                    else
                                    begin
                                         showmessage('부모 예약전송 삭제 실패.');

                                    end;





                                end;

                            end;
                      except

                      end;








               varSDate := formatDateTime('YYYYMMDD', dpSdate.Date
                    - varAfterSendDate);
               //실제 보낼 일자 , 예약일자 -  varAfterSendDate(며칠전)
               varSendTime := configvalue.p_SmsBeforTime;
               //보내는 시간, 환경설정에서 정해서 일괄전송
               varContent := configvalue.p_SmsContent;
               //예약확인 메시지
               varDate := formatDateTime('YYYY-MM-DD',
                    dpSDate.Date); //예약일자
               varTong := substr(varTel, 1, '-');
               varGuk := substr(varTel, 2, '-');
               varBun := substr(varTel, 3, '-');

               if SendMessage_One(main_f.SMSCALLMSG1,
                    varPrName,
                    varPrChart,
                    varDate, //varDate:예약일자.varTime:예약시간.
                    varTime,
                    varTong,
                    varGuk,
                    varBun,
                    varSDate, varsendTime,
                    varContent) = 1 then
               begin
                    Promise_UpdateSendedReserveSMS(varPrDay,
                         varPrGugan, varTime,
                         varPrSulsik, varPrTeam, varPrChart,
                         varPrName,
                         varPrtel, varPrInterval, '1', varidn);

               end
               else
               begin
                    showmessage('SMS전송실패');
               end;



              try
                    if  lstPatPhoneList.Items.Count > 0 then
                    begin

                        for i:= 0 to    lstPatPhoneList.Items.Count -1 do
                        begin

                           varTong:= substr(  lstPatPhoneList.Items[i],1, '-') ;
                           varGuk:=  substr(  lstPatPhoneList.Items[i],2, '-') ;
                           varBun:=  substr(  lstPatPhoneList.Items[i],3, '-') ;
                           if SendMessage_One(main_f.SMSCALLMSG1,
                                 varPrName,
                                 varPrChart,
                                varDate,   // 예약일자
                                varTime,   // 예약시간.
                                varTong,
                                varGuk,
                                varBun,
                                varSDate,  //SMS  전송일자
                                varsendTime,  //SMS전송 시간
                                varContent) = 1 then
                           begin

                                 Promise_UpdateSendedNowSMS(varDate, varGugan, varTime,
                                      varRemark, varTeam, varChart, varName,
                                      vartel, varInterval, '1', varIdn);   //1: 예약시 즉시전송

                            end
                            else
                            begin

                                 showmessage(' SMS전송실패 : '+varTong+'-'+varGuk+'-'+varBun );

                            end;
                        end;

                    end;
              except

              end;





          end;

          varModSelecteditemTag := 0;

     end;

     // Promise_UpdateDataInPlanner(false, varIdn, varDate, varGugan,
     //        varTime, varTeam, varInterval, varCancel);
     case varModType of
          1: //변경
               begin

                    Promise_Cancel(varIdn, 'U');

                  if   configvalue.varSmsChangesend  = '1' then
                  begin
                     if Application.MessageBox(PChar('변경안내 SMS를 전송하시겠습니까?'),
                        '변경안내SMS전송', MB_YESNO + MB_ICONERROR + MB_SYSTEMMODAL) = IDYES then
                     begin


                         varTong := substr(varTel, 1, '-');
                         varGuk := substr(varTel, 2, '-');
                         varBun := substr(varTel, 3, '-');


                          if trim(configvalue.varSmsChangeSend) ='1' then
                              sendSMS_Change_Cancel(
                                   varPrChart,
                                   varPrName,
                                   varDate,  //예약일
                                   varTime,  //예약시간
                                   varGugan,
                                   varRemark,
                                   varTeam,
                                   varInterval,
                                   varTong,
                                   varGuk,
                                   varBun,
                                   configvalue.VarSmsChangeContent, //'+ddd+님+rr+월+dd+일+hh++mm+에 예약되었습니다.좋은하루보내세요.-+aaa+',
                                   varIdn);
                      end;
                  end;
               end;
          3: //미내원처리 - 재예약
               begin

                    Promise_UpdatePos(varIdn, '5'); //재예약 태그달기

                    if   configvalue.varSmsChangesend = '1' then
                    begin

                         if Application.MessageBox(PChar('변경안내 SMS를 전송하시겠습니까?'),
                            '변경안내SMS전송', MB_YESNO + MB_ICONERROR + MB_SYSTEMMODAL) = IDYES then
                         begin
                              if trim(configvalue.varSmsChangeSend) ='1' then
                                sendSMS_Change_Cancel(
                                   varPrChart,
                                   varPrName,
                                   varDate,  //예약일
                                   varTime,  //예약시간
                                   varGugan,
                                   varRemark,
                                   varTeam,
                                   varInterval,
                                   varTong,
                                   varGuk,
                                   varBun,
                                   configvalue.VarSmsChangeContent, //'+ddd+님+rr+월+dd+일+hh++mm+에 예약되었습니다.좋은하루보내세요.-+aaa+',
                                   varIdn);
                         end;
                    end;
              end;
          4: //복사
               begin

               end;
     else
          Promise_Delete(varIdn);
     end;
     //. ToDo:변경내역테이블에 변경사항을 인서트한다.
     Promise_save_ModifyData(varDate, varGugan, varTime, varRemark, varTeam,
          varChart);
     SelectPromise(tabView.TabIndex);
     isClipped := false;
     menuPaste.Visible := false;
     mnuBlockOn.Visible := true;

end;

procedure TpromiseFrame_fr.menuWhisperClick(Sender: TObject);
begin
  Planner1.Items.BeginUpdate;
     with Planner1.PopupPlannerItem do
     begin
          ImageIndexList.Add(0);
          ImageIndexList.Add(1);
          ImageIndexList.Add(2);
     end;
     Planner1.Items.endUpdate;
end;

procedure TpromiseFrame_fr.mnuBlockOnClick(Sender: TObject);
var
     fromsel, tosel, varPos: integer;
begin


     fromsel := planner1.SelItemBegin;
     tosel := planner1.SelItemEnd;
     varPos := planner1.SelPosition;
     if not assigned(inputblock_f) then
          inputblock_f := Tinputblock_f.Create(application);

     inputblock_f.fromtime := mintotime((FromSel + startTime) * timeinterval);
     inputblock_f.totime := mintotime((ToSel + startTime) * timeinterval);
     inputblock_f.label1.caption := inputblock_f.fromtime;
     inputblock_f.label2.caption := inputblock_f.totime;
     inputblock_f.label3.caption := inttostr(varpos);//inttostr(varpos + 1);
     inputblock_f.label4.caption := inttostr((ToSel - FromSel) *
          timeinterval);
     inputblock_f.Showmodal;

     SelectPromise(tabView.TabIndex);

end;
procedure TpromiseFrame_fr.mnuCancelClick(Sender: TObject);
var
     varDate, vartime, varGugan, varChart, varname, varTel, varAlret,
          varJundam, vardam, varColor, varNoSMS, varf_color, varf_size,
          varTeam, varDoc , varInterval,
          varCancel, varRemark, varLock, varMemo, varJundam2:
     string;


     varIdn, scanCount: integer;
     varf_bold:boolean;

     varTong, varGuk, varBun, varSDate, varSendTime, varContent: string;
     varTelYeyak: string;
     varAfterSendDate: integer;

     i : integer;



begin

     Promise_SelectData(SelectedItemTag);

     varDate := formatDateTime('YYYY-MM-DD', dpsDate.date);
     varTime := mintotime((MovingItemBegin + startTime) *
          timeinterval);

     // showmessage(varTime);
     if columnstart > 1 then
          varGugan := inttostr(Movingitempos + 1 + columnstart - 1)
     else
          varGugan := inttostr(Movingitempos + 1);

     //varTeam := main_f.varDamteam;

     //todo: columnstart > 1 일때는 팀을 바꾸면 안된다.
     varTeam      := selecteditemteam; // varDamteam;
     varDoc       := '';//cbDoc.ColumnItems[cbDoc.itemindex, 2];

     varInterval  := inttostr(selectedItemInterval * timeinterval);

     varidn       :=SelectedItemTag;

     varRemark    := SelectedItemRemark;
     pnlText.Text := SelectedItemRemark;
     varRemark    := pnlText.RawText;
     varRemark    := StringReplace(varRemark, '(', '', [rfReplaceAll]);
     varRemark    := StringReplace(varRemark, ')', '', [rfReplaceAll]);

     varChart     := selecteditemChart;
     varname      := varPrname;
     varTel       := varPrtel;
     varAlret     := varPrAlarm;
     varJundam    := varPrDam; //varPrTeam;  //담당자임
     vardam       := formatDateTime('YYYY-MM-DD', dpsDate.date);
     varColor     := varPrColor;
     varTelYeyak  := varPrTelYeyak;

     varLock      := varPrLock;
     varJundam2   := varPrDam2; //메모입력자
     varMemo      := varPrMemo;
     varnoSMS     := varPrnoSMS;
     varf_color   := varPrf_color;
     varf_size    := varPrf_size;
     varf_bold    := varPrf_bold;


     if
          Application.MessageBox(PChar('선택하신 예약내용을 [취소]하시겠습니까?'),
          '예약취소', MB_YESNO) = IDYES then
     begin
          if Assigned(Planner1.Items.Selected) then
               Planner1.Items.CutToClipboard;
          //  menuPaste.Visible := true;

          if Promise_canCel(selectedItemTag, 'C') = true then
          begin


                 if  ChangeRPStatus(
                   nRpPK,//PK     strtoint( grdDaegi.originalCells[55, grdDaegi.Row]),
                   '4',  //협진 Cancel
                   varChart,//chart    grdDaegi.OriginalCells[3, grdDaegi.Row],
                   varname,
                   now
                   ) = false then
                   begin
                        showmessage('협진상태변경 오류.');
                   end;




                   //Cancel SMS Send

                 if   configvalue.varSmsCancelsend  = '1' then
                 begin

                     if Application.MessageBox(PChar('취소안내 SMS를 전송하시겠습니까?'),
                        '취소안내 SMS전송', MB_YESNO + MB_ICONERROR + MB_SYSTEMMODAL) = IDYES then
                     begin

                               varTong := substr(varTel, 1, '-');
                               varGuk := substr(varTel, 2, '-');
                               varBun := substr(varTel, 3, '-');

                                   if trim(configvalue.varSmsCancelSend) ='1' then
                                    sendSMS_Change_Cancel(
                                         varPrChart,
                                         varPrName,
                                         varDate,  //예약일
                                         varTime,  //예약시간
                                         varGugan,
                                         varRemark,
                                         varTeam,
                                         varInterval,
                                         varTong,
                                         varGuk,
                                         varBun,
                                         configvalue.VarSmsCancelContent, //'+ddd+님 다.좋은하루보내세요.-+aaa+',
                                         varIdn);
                      end;
                 end;
               //예약SMS취소
               // PromiseSelect(selecteditemchart);

                            //SMS예약전송
               if configvalue.p_BeforeSendSms = 1 then
               begin
                    varAfterSendDate := configvalue.p_BeforSms;
                    //예약 며칠전에 보냈는가?
                    varSDate := formatDateTime('YYYYMMDD', dpSdate.Date
                         -
                         varAfterSendDate);

                    if CancelSMS(main_f.SMSCALLMSG1,
                         '', //varGogekName: string;
                         '', //varGogekId: string;
                         substr(selecteditemPhone, 1, '-'),
                         substr(selecteditemPhone, 2, '-'),
                         substr(selecteditemPhone, 3, '-'),
                         varSDate) = 1 then
                    begin
                         Promise_UpdateSendedReserveSMS(varPrDay,
                              varPrGugan, varprTime,
                              varPrSulsik, varPrTeam, varPrChart,
                              varPrName,
                              varPrtel, varPrInterval, '0',
                              selectedItemTag);

                    end
                    else
                    begin
                         showmessage('예약전송 취소 실패.');

                    end;


                        //부모 전화번호찾아서 예약전송삭제...
                       //예약 전송시에 부모에게도 전송해야 한다.


                      try
                            if  lstPatPhoneList.Items.Count > 0 then
                            begin

                                for i:= 0 to   lstPatPhoneList.Items.Count -1 do
                                begin

                                   varTong:= substr(  lstPatPhoneList.Items[i],1, '-') ;
                                   varGuk:=  substr(  lstPatPhoneList.Items[i],2, '-') ;
                                   varBun:=  substr(  lstPatPhoneList.Items[i],3, '-') ;


                                   if CancelSMS(main_f.SMSCALLMSG1,
                                         '', //varGogekName: string;
                                         '', //varGogekId: string;
                                         varTong,
                                         varGuk,
                                         varBun,
                                         varSdate ) = 1 then
                                    begin
                                         Promise_UpdateSendedReserveSMS(varPrDay,
                                              varPrGugan, varprTime,
                                              varPrSulsik, varPrTeam, varPrChart,
                                              varPrName,
                                              varPrtel, varPrInterval, '0',selectedItemTag);

                                    end
                                    else
                                    begin
                                         showmessage('부모 예약전송 삭제 실패.');

                                    end;





                                end;

                            end;
                      except

                      end;







               end;
          end;

          SelectPromise(tabView.TabIndex);
     end
     else
     begin
          menuPaste.Visible := false;
     end;

end;


procedure TpromiseFrame_fr.mnuChangeClick(Sender: TObject);
begin
         if Assigned(Planner1.Items.Selected) then
          Planner1.Items.CutToClipboard;
     menuPaste.Visible := true;

     varModSelecteditemTag := selectedItemTag;
     selecteditemChart_forModify := selecteditemChart;
     varModType := 1;
     isClipped := true;
     showmessage('변경할 날짜를 선택하신후 ' + #10#13 +
          '해당 블럭에서 붙여넣기 하십시오.');
end;

procedure TpromiseFrame_fr.mnuDelClick(Sender: TObject);
var
     varAfterSendDate: integer;
     varSdate: string;
     i: integer;
     varTong, varGuk, varBun : string;
     varChart : string;
     varDay, varTeam : string;
begin

     varChart := selecteditemChart;
     varDay := formatdatetime('YYYY-MM-DD', plannerCalendarGroup1.date);//varPrDay;
     varteam := selecteditemTeam;// varPrteam;

     if Application.MessageBox(PChar('선택하신 예약내용을 [삭제]하시겠습니까?'
          +
          #10#13 + '삭제하신 내용은 복구되지 않습니다.'),
          '예약삭제', MB_YESNO) = IDYES then
     begin

           if Application.MessageBox(PChar('선택하신 예약내용을 [삭제]하시겠습니까?'
          +
          #10#13 + '삭제하신 내용은 복구되지 않습니다. 그대로 삭제 하시겠습니까?'),
          '예약삭제', MB_YESNO) = IDNO then
          begin
             exit;
          end;





          if Promise_Delete(selectedItemTag) = true then
          begin

               //예약내역 삭제
                         //협진상태
                         // ('','검사의뢰','의뢰취소','예약완료','예약 취소','검사완료');

              if  ChangeRPStatus(
                   nRpPK,//PK     strtoint( grdDaegi.originalCells[55, grdDaegi.Row]),
                   '1',  //협진 --검사의뢰 상태로 초기화 됨
                   varChart,//chart    grdDaegi.OriginalCells[3, grdDaegi.Row],
                   varPrName,
                   now
                   ) = false then
                   begin
                        showmessage('협진상태변경 오류.');
                   end;



                             //SMS예약전송
               if configvalue.p_BeforeSendSms = 1 then
               begin

                    varAfterSendDate := configvalue.p_BeforSms;
                    //예약 며칠전에 보냈는가?
                    varSDate := formatDateTime('YYYYMMDD', dpSdate.Date
                         -
                         varAfterSendDate);

                    if CancelSMS(main_f.SMSCALLMSG1,
                         '', //varGogekName: string;
                         '', //varGogekId: string;
                         substr(selecteditemPhone, 1, '-'),
                         substr(selecteditemPhone, 2, '-'),
                         substr(selecteditemPhone, 3, '-'),
                         varSDate) = 1 then
                    begin
                         Promise_UpdateSendedReserveSMS(varPrDay,
                              varPrGugan, varprTime,
                              varPrSulsik, varPrTeam, varPrChart,
                              varPrName,
                              varPrtel, varPrInterval, '0',
                              selectedItemTag);

                    end
                    else
                    begin
                         showmessage('예약전송 취소 실패.');

                    end;


                           //부모 전화번호찾아서 예약전송삭제...
                       //예약 전송시에 부모에게도 전송해야 한다.


                      try
                            if  lstPatPhoneList.Items.Count > 0 then
                            begin

                                for i:= 0 to   lstPatPhoneList.Items.Count -1 do
                                begin

                                   varTong:= substr(  lstPatPhoneList.Items[i],1, '-') ;
                                   varGuk:=  substr(  lstPatPhoneList.Items[i],2, '-') ;
                                   varBun:=  substr(  lstPatPhoneList.Items[i],3, '-') ;


                                   if CancelSMS(main_f.SMSCALLMSG1,
                                         '', //varGogekName: string;
                                         '', //varGogekId: string;
                                         varTong,
                                         varGuk,
                                         varBun,
                                         varSdate ) = 1 then
                                    begin
                                         Promise_UpdateSendedReserveSMS(varPrDay,
                                              varPrGugan, varprTime,
                                              varPrSulsik, varPrTeam, varPrChart,
                                              varPrName,
                                              varPrtel, varPrInterval, '0',selectedItemTag);

                                    end
                                    else
                                    begin
                                         showmessage('부모 예약전송 삭제 실패.');

                                    end;





                                end;

                            end;
                      except

                      end;



               end;

           if configvalue.P_Jubsudelete = 1 then
           begin
               JubsuDelete(
                  '0', //jubsu_id
                  varChart,
                  varDay,
                  varteam,
                  '',//doc_Code,
                   '3',
                   now) ;
                //ToDO : 입원종류를 알아올 방법이 없다.
                //1:숙박입원 2: 낮입원 이므로 이 두개를 피해가자.

           end;

          end;//예약삭제 = true





          SelectPromise(tabView.TabIndex);
     end
     else
     begin
          menuPaste.Visible := false;

     end;
end;


procedure TpromiseFrame_fr.mnuGogekRegiClick(Sender: TObject);
begin
         if not assigned(main_f) then
          main_f := Tmain_f.Create(application);


     //차트번호가 있으면 등록된 고객이라고 뜨게해야 하는데...
     if LoadGogekData_chart(selecteditemChart, progressbar,  varViewALL) = true then
     begin
          isLoading := true;
          main_f.fieldclear;
          main_f.Fieldset;
          main_f.Show;
          main_f.windowstate := wsMaximized;
          main_f.edtname.SetFocus;

     end
     else
     begin
          Promise_SelectData(SelectedItemTag);
          isLoading := false;


          main_f.fieldclear;
//          main_f.Show;

         //예약 할때 의뢰병원 정보 가져오자.
         //============================================================================
           main_f.edtreferHospName.Text:= '';
           main_f.edtReferHospCode.text:= '';

           main_f.edtreferHospName.Text:= LoadReferHospName(varrHospCode);
           main_f.edtReferHospCode.text:= varrHospCode;

           if varrHospCode <> ''then
               main_f.cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(varrHospCode) )
           else
               main_f.cbReferHospDoc.Clear;


           main_f.cbReferHospDoc.ItemIndex :=
                 main_f.cbReferHospDoc.Items.IndexOf(varrHospCode) ;

          // ma_rp_requestpk := nRpPK;
         //============================================================================



//          main_f.windowstate := wsMaximized;
          main_f.edtname.text := varPrName;
          main_f.edtcPhone.text := varPrTel;
          if trim( varPrMemo) <>''  then
                main_f.memchamgo.text := varPrSulSik+ '('+varPrMemo+')'  //varPrSulSik;
          else
                main_f.memchamgo.text := varPrSulSik;

                if configvalue.varChartRule = '6' then
               begin
                     main_f.edtChart.SetFocus;
               end
               else
               begin
                     loadResult:= 6; //신환등록
                     main_f.edtchart.text := ChartNoCreate('1');

                     main_f.edtJumin.SetFocus;
               end;

         isPromiseRegi := true;
         PromiseIdn := inttostr(SelectedItemTag);


     end;
end;

procedure TpromiseFrame_fr.mnuMoveClick(Sender: TObject);
begin
     if Assigned(Planner1.Items.Selected) then
          Planner1.Items.CutToClipboard;
     menuPaste.Visible := true;

     varModSelecteditemTag := selectedItemTag;
     selecteditemChart_forModify := selecteditemChart;

     varModType := 2;

     isClipped := true;

     showmessage('이동할 날짜를 선택하신후 ' + #10#13 +
          '해당 블럭에서 붙여넣기 하십시오.');
end;

procedure TpromiseFrame_fr.mnuNewonClick(Sender: TObject);
var
     vartag: integer;
     varTime: Tdatetime;
     varCrmResult: integer;
     varStat : integer;
     varDaegiGubun : string;

     mResponse : integer;
begin

     if selecteditemChart ='' then
     exit;

     if   formatdatetime('YYYY-MM-DD', dpSdate.Date) <>  formatdatetime('YYYY-MM-DD',now) then
     begin



          mResponse := Application.MessageBox('예약일이 오늘이 아니면 처리할 수 없습니다'+#13#10+
            '그래도 당일 날짜로 처리하시겠습니까?',
               '당일 접수처리 확인', MB_YESNOCANCEL);
          if mResponse = 6 then //YES
          begin

          end
          else
               if mResponse = 7 then //NO
               begin
                               //  showmessage('예약일이 오늘이 아니면 처리할 수 없습니다.');
                         exceptLogging( '예약일 접수 처리 오류');
                         exit;

               end
               else
               begin
               end;


     end;

     //오늘 예약이 두개 이상이면 둘다 접수처리 할것인지 물어보자...

     if  (selecteditemChart <> '') and (selectPromiseCount(selecteditemChart,  formatdatetime('YYYY-MM-DD', dpSdate.Date) )  > 1) then
     begin

         showmessage('오늘 예약이 2건 이상입니다.');

     end;

     varStat := (Sender as Tmenuitem).Tag;




     case main_f.DaegiFrame_fr1.tsMain.TabIndex  of
     0, 1:
        begin
              if varStat=10 then
                   varStat:=0  ;
        end;

     2:
        begin
        end;
     end;



     varTime := now;
     vartag := selectedItemTag;
     //대기구분
     // '10'접수
     // '0', '진료대기'
     // '1', '진료중'
     // '2', '수납완료'
     // '3', '수납대기' 진료완료
     // '9', '수납대기'  진료전 수납


//     Promise_UpdatePos(vartag, inttostr(varStat));
//     SelectPromise(tabView.TabIndex);
//
//     Promise_SelectData(SelectedItemTag); //(Sender as Tmenuitem).Tag);


     if LoadGogekData_chart(selecteditemChart, progressbar, varViewALL) = true then
     begin


            main_f.btnJubsuClick(self);
            //ToDo : 접수가 성공했을 때만
            //아래 코드들 수행 해야 한다.

             Promise_UpdatePos(vartag, inttostr(varStat));
             SelectPromise(tabView.TabIndex);

             Promise_SelectData(SelectedItemTag); //(Sender as Tmenuitem).Tag);


//          main_f.JakyukJohoi(ma_jumin, ma_paName);
//
//          if
//               jubsuSave(selecteditemChart, //main_f.edtChart.Text,
//               varPrTeam, //varDamteam,
//               loadTeamName(varPrteam),
//               //trim(StringReplace(lblTeam.Caption, '원장', '',[rfReplaceAll])),
//               '', //cbHyg.Text,
//               inttostr(varStat), //대기구분
//               formatdatetime('yyyy-mm-dd', now),
//               now,
//               ma_first, //초진일
//               copy(ma_jumin,1,7),
//               ma_h_zip,
//               ma_PaName,
//               ma_c_phone,
//               varPrSulsik, //예약내용
//               Promise_LoadMemo(vartag), //참고사항
//               Inttostr(vartag), //예약 idn
//               varPrTime,            //예약 시간
//              0,                    //Jongbyul
//              1, //초재
//              '', //Sanjung
//              '', //teakryeCode
//              0, //health
//              '', //pregnan
//              '', //chasangNo
//              '', //bonType
//              '', //yujikum
//              '',//Kwamok
//              '',  //TreatRoom
//              '0',  //isInPat
//              '',   //inPat_time
//               0)
//
//
//          = true then
//          begin
//              { main_f.jubsuselect(main_f.grdDaegi,
//                    formatdatetime('yyyy-mm-dd', main_f.dtDate.date),
//                    //일자
//                    inttostr(main_f.cbdaegiGubun.itemindex - 1), //구분
//                    main_f.cbteam.Text); //팀
//               }
//
//                    ChangeStatus(ma_PaName,
//                    formatdatetime('yyyy-mm-dd', now),
//                    varPrTeam ,
//                    selecteditemChart, '', inttostr(varStat));
//
//
//                if configvalue.varimageDBSaveMode <> '0' then    //1:다서버이용, 0:직접저장
//               begin
//                     main_f.DaegiFrame_fr1.DaegiSelect(main_f.DaegiFrame_fr1.tsmain.TabIndex);//서버끊겼다면 갱신이라도...
//
//                   try
////                      if dm_f.IdTCPClient2.Connected = false then
////                          dm_f.ConnectImageDBServer;
////                      dm_f.IdTCPClient2.iohandler.WriteLn('CDS');
//                   except
//
//                   end;
//               end
//               else
//               begin
//                     main_f.DaegiFrame_fr1.DaegiSelect(main_f.DaegiFrame_fr1.tsmain.TabIndex);
//
//               end;
//
//
//
//               if  configvalue.varEasydent  = '1' then
//                    case EasyMode of //0:없음
//                         4:
//                              begin
//                                   //ToDo : maru접수
//                                    if configvalue.varEasydentDaegi = '1' then
//
////                                   main_f.MaruNewonSave(selecteditemChart,
////                                        formatDatetime('YYYY-MM-DD',  main_f.dtDate.Date),
////                                        now,    dKind[varStat]    );
//
//                              end;
//                    end;
//
//          end
//          else
//          begin
//               ChangeStatus(ma_PaName,
//                    formatdatetime('yyyy-mm-dd', now),
//                    varPrTeam ,
//                    selecteditemChart, '', inttostr(varStat));
//
//
//               {main_f.jubsuselect(main_f.grdDaegi,
//                    formatdatetime('yyyy-mm-dd', main_f.dtDate.date),
//                    //일자
//                    inttostr(main_f.cbdaegiGubun.itemindex - 1), //구분
//                    main_f.cbteam.Text); //팀
//                }
//
//
//
//
//               if configvalue.varimageDBSaveMode <> '0' then    //1:다서버이용, 0:직접저장
//               begin
//
//                     main_f.DaegiFrame_fr1.DaegiSelect(main_f.DaegiFrame_fr1.tsmain.TabIndex);
////                    if dm_f.IdTCPClient2.Connected = false then
////                          dm_f.ConnectImageDBServer;
////                    dm_f.IdTCPClient2.iohandler.WriteLn('CDS');
//
//               end
//               else
//               begin
//                      main_f.DaegiFrame_fr1.DaegiSelect(main_f.DaegiFrame_fr1.tsmain.TabIndex);
//
//               end;
//
//
//          end;


      //    main_f.DaegiFrame_fr1.checkPromiseRecall(selecteditemChart);


          //  varCrmResult := main_f.LoadRecallNPromise(main_f.edtChart.text);

           { case varCrmResult of
                   1: //예약있음.
                          begin
                                 if
                                        Application.MessageBox(pchar('오늘 이후 예약내역이 있습니다.' + #10#13 +
                                        '확인하시고 처리하시겠습니까?'),
                                        '예약처리 확인', MB_YESNO) = 6 then
                                 begin
                                        main_f.showGogekAlret;
                                 end;

                          end;
                   2: //리콜있음.
                          begin
                                 if
                                        Application.MessageBox(pchar('오늘 이후 리콜내역이 있습니다.' + #10#13 +
                                        '확인하시고 처리하시겠습니까?'),
                                        '리콜처리 확인', MB_YESNO) = 6 then
                                 begin
                                        main_f.showGogekAlret;

                                 end;
                          end;
                   3: //예약,리콜있음
                          begin
                                 if
                                        Application.MessageBox(pchar('오늘 이후 예약내역과 리콜내역이 있습니다.' + #10#13 +
                                        '확인하시고 처리하시겠습니까?'),
                                        '예약 및 리콜처리 확인', MB_YESNO) = 6
                                               then
                                 begin
                                        main_f.showGogekAlret;

                                 end;
                          end;

            end;
            }
     end;
end;


procedure TpromiseFrame_fr.mnuRecallLoadClick(Sender: TObject);
begin
     Promise_SelectData(SelectedItemTag);

     if not Assigned(recall_f) then
          recall_f := Trecall_f.Create(application);
     with recall_f do
     begin
          loadSawon;

          show;
          fieldclear;
          varRecallKind := '4';

          if CheckInt(varPrdam) then
          begin
               edtDamdang.itemindex := strtoint(varPrdam);
          end
          else
          begin

               if varPrdam <> '' then
                    edtDamdang.itemindex :=
                         edtDamdang.Items.IndexOf(varPrdam)
               else
                    edtDamdang.itemindex := 0;
          end;

          memRecallRemark.Text := varPrSulsik;

          edtrecallchart.text := selecteditemchart;
          edtrecallname.text := varPrName; //main_f.edtname.text;
          edtrecalltel.text := varPrtel; //main_f.edtcphone.text;
          lblCphone.caption := varPrTel; //main_f.edtcphone.text;

          if selecteditemchart = '' then
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
end;

procedure TpromiseFrame_fr.N15Click(Sender: TObject);
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
     vartag: integer;
begin
     vartag := selectedItemTag;

     //       Promise_UpdatePos(vartag, inttostr((Sender as Tmenuitem).Tag));

     case (Sender as Tmenuitem).Tag of
          4: //연락안됨
               begin
                    Promise_UpdatePos(vartag, '4');

               end;
          7: //종결
               begin
                    Promise_UpdatePos(vartag, '7');
               end;
          5: //재예약
               begin
                    if Assigned(Planner1.Items.Selected) then
                         Planner1.Items.CutToClipboard;
                    menuPaste.Visible := true;
                    mnuBlockOn.Visible := false;
                    varModType := 3;
                    showmessage('변경할 날짜를 선택하신후 ' + #10#13 +
                         '해당 블럭에서 붙여넣기 하십시오.');
               end;
          6: //리콜
               begin
                    Promise_SelectData(VarTag);

                    if not Assigned(recall_f) then
                         recall_f := Trecall_f.Create(application);
                    with recall_f do
                    begin
                         loadSawon;

                         //  show;
                         fieldclear;
                         varRecallKind := '4';

                         if CheckInt(varPrdam) then
                         begin
                              edtDamdang.itemindex :=
                                   strtoint(varPrdam);
                         end
                         else
                         begin

                              if varPrdam <> '' then
                                   edtDamdang.itemindex :=
                                        edtDamdang.Items.IndexOf(varPrdam)
                              else
                                   edtDamdang.itemindex := 0;
                         end;
                         memRecallRemark.Text := varPrSulsik;

                         edtrecallchart.text := selecteditemchart;
                         edtrecallname.text := varPrName;
                         //main_f.edtname.text;
                         edtrecalltel.text := varPrtel;
                         //main_f.edtcphone.text;
                         lblCphone.caption := varPrTel;
                         //main_f.edtcphone.text;

                         if selecteditemchart = '' then
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

                         if showmodal = mrOk then
                         begin
                              Promise_UpdatePos(vartag,
                                   INTTOSTR((Sender as
                                   Tmenuitem).Tag));

                         end;

                    end;

               end;
     end;
     SelectPromise(tabView.TabIndex);

end;
procedure TpromiseFrame_fr.N19Click(Sender: TObject);

var
     vartag: integer;
begin
     vartag := selectedItemTag;
     Promise_UpdatePos(vartag, '');
     Promise_Cancel(vartag, '');
     SelectPromise(tabView.TabIndex);


end;

procedure TpromiseFrame_fr.N23Click(Sender: TObject);
var
     ProcCode: string;
begin
     procCode := inttostr((sender as Tmenuitem).tag);

     with Dm_f.sqlwork do
     begin
          close;
          SQL.Clear;
          SQL.Add('Update ma_sawon_work Set');
          SQL.Add('SwProcess=:SwProcess');
          SQL.Add('Where SwCode=:SwCode');
          ParamByName('SwCode').AsString := grdmain.Cells[12, grdmain.Row];
          ParamByName('SwProcess').AsString := procCode;
          execsql;
     end;
     LoadWorkList;

end;


procedure TpromiseFrame_fr.N31Click(Sender: TObject);
begin
     if Assigned(Planner1.Items.Selected) then
          Planner1.Items.CutToClipboard;
     menuPaste.Visible := true;

     varModSelecteditemTag := selectedItemTag;
     selecteditemChart_forModify := selecteditemChart;

     varModType := 4;

     isClipped := true;

     showmessage('복사되었습니다.' + #10#13 +
          '해당 블럭에서 붙여넣기 하십시오.');
end;

procedure TpromiseFrame_fr.N35Click(Sender: TObject);
begin
        Planner1ItemDblClick(Planner1, Planner1.Items.Selected );
end;

procedure TpromiseFrame_fr.N37Click(Sender: TObject);
begin
 if not assigned(regischedule_f) then
     begin
          regiSchedule_f := TregiSchedule_f.Create(application);
          with regiSchedule_f do
          begin
               DeDate.Date := now;
               CmTime.Text := '12';
               CmMinute.Text := '00';
               MemWork.Text := '';
               MemResult.Text := '';
               edtRefer.Text := '';

               SelectDataSWork;
               Showmodal;
          end;
     end;
end;

procedure TpromiseFrame_fr.N5Click(Sender: TObject);
begin
   {if not Assigned(Caller_f) then
            Caller_f := TCaller_f.Create(application);
     main_f.LoadPhoneList(selecteditemChart, Caller_f.textCalleeNumber);
     with caller_f do
     begin
            varChart := main_f.edtChart.text;
            varName := main_f.edtname.text;
            left := mouse.CursorPos.X;
            top := mouse.CursorPos.y;
            show;
     end;
      }
end;

procedure TpromiseFrame_fr.nextMonthClick(Sender: TObject);
begin
      PlannerCalendarGroup1.Date := incMonth( PlannerCalendarGroup1.Date,1);
end;

procedure TpromiseFrame_fr.nextYearClick(Sender: TObject);
begin
      PlannerCalendarGroup1.Date := incYear( PlannerCalendarGroup1.Date,1);
end;

procedure TpromiseFrame_fr.Planner1HeaderDblClick(Sender: TObject;
  SectionIndex: Integer);
begin
   showmessage('');
//     if not assigned(promiseDayMemo_f) then
//          promiseDayMemo_f := TpromiseDayMemo_f.Create(Application);
//     promiseDayMemo_f.varSection := SectionIndex;
//     promiseDayMemo_f.ShowModal;

end;

procedure TpromiseFrame_fr.Planner1HeaderDragDrop(Sender: TObject; FromSection,
  ToSection: Integer);
begin
        showmessage(inttostr(fromSection) +':'+inttostr(toSection));
end;

procedure TpromiseFrame_fr.Planner1HeaderSized(Sender: TObject; APosition,
  AWidth: Integer);
var
     i, varWidth: integer;
     Path: string;
     FormInit: Tinifile;
begin

     Path := GetConfigDir + 'db.ini'; //   i + 1 + (columnstart-1)
     FormInit := TIniFile.Create(Path);
     for i := 0 to columncount - 1 do
     begin
          varWidth := planner1.PositionWidths[i];
          FormInit.WriteInteger('예약컬럼', inttostr(i + columnstart - 1), varWidth);
     end;
     FormInit.Free;

end;
procedure TpromiseFrame_fr.Planner1ItemBalloon(Sender: TObject;
  APlannerItem: TPlannerItem; var ATitle, AText: string; var AIcon: Integer);
begin

     ATitle := '예약정보 : ' + APlannerItem.GetCaptionTimeString;
     //  Atext:='111';
end;

procedure TpromiseFrame_fr.Planner1ItemDblClick(Sender: TObject;
  Item: TPlannerItem);
var
     i: integer;
     varInterval: integer;
     varPos, varCancel, varStat2: string;
     varDoc: string;
     varFdate, varSdate   : TdateTime;

     rHospCode    : string;
     rHospDocName :string;

begin


     for i := 0 to planner1.Items.Count - 1 do
     begin
         planner1.Items[i].FixedPos := true;
     end;




     if item.tag = -1 then
          exit;
     varPos := '';
     varStat2 := '';
     if copy(item.StrippedItemText, 1, 3) = '[B]' then
          exit;
     if not assigned(inputPromise_f) then
     begin
          inputPromise_f := TinputPromise_f.Create(Application);
     end;

     inputPromise_f.fieldset;

     //Next(ma_chart_detail의 su_key가 Next) 검색해서 내용있으면 pnlNext보이도록 한다.
{
     with dm_f.sqlWork do
     begin
            close;
            sql.clear;
            SQL.Text := 'select * from  ma_chart_detail  ' + #13#10 +
                   '     where  chart =     ' + #13#10 +
                   QuotedStr(varPrChart) + #13#10 +
                   '    and  jin_day = :jin_day  ' + #13#10 +
                   '    and  sugacode = :sugacode  ' + #13#10 +
                   '    and  su_key = :su_key  ';
            parambyname('jin_day').asString := formatdatetime('yyyy-mm-dd',
                   now);
            parambyname('sugacode').asString := '@GR';
            parambyname('su_key').asString := 'Next';
            open;
            if not isEmpty then
            begin
                   inputPromise_f.pnlNext.Visible := true;
                   inputPromise_f.tcSulTab.tabindex := 1;
                   inputPromise_f.lstNext.align := alClient;
                   inputPromise_f.lstNext.clear;

                   while not eof do
                   begin
                          inputPromise_f.lstnext.Items.Add(FieldByName('portion').AsString + '/' +
                                 FieldByName('description').AsString);
                          next;
                   end;

            end
            else
            begin
                   inputPromise_f.pnlNext.Visible := false;
                   inputPromise_f.tcSulTab.tabindex := 0;
            end;
     end;
}
     varStat2 := '';
     Promise_SelectData(item.tag);

     rHospCode    := varrHospCode;
     rHospDocName := varrHospDocName;




     varCancel := varPrCancel;

     if varCancel = 'Y' then
          varStat2 := '취소됨'
     else
          if varCancel = 'C' then
               varStat2 := '취소됨'
          else
               if varCancel = 'U' then
                    varStat2 := '변경됨';

     varPos := varPrPos;

     if varPos = '0' then
          varStat2 := '진료대기'
     else
          if varPos = '1' then
               varStat2 := '진료중'
          else
               if varPos = '2' then
                    varStat2 := '수납대기'
               else
                    if varPos = '3' then
                         varStat2 := '수납완료'
                    else
                         if varPos = '4' then
                              varStat2 := '연락안됨'
                         else
                              if varPos = '5' then
                                   varStat2 := '재예약'
                              else
                                   if varPos = '6' then
                                        varStat2 := '리콜함'
                                   else
                                        if varPos = '7' then
                                             varStat2 := '종결';

     inputPromise_f.edtname.ReadOnly := true;
     inputPromise_f.edtChart.ReadOnly := true;


     inputPromise_f.lblAppointNo.Caption := inttostr(item.tag);
     inputPromise_f.Datetimepicker1.Date := promiseFrame_fr.dpsDate.date;
     inputPromise_f.Datetimepicker2.Date := promiseFrame_fr.dpsDate.date;
     inputPromise_f.PlannerCalendar1.Date :=   promiseFrame_fr.dpsDate.date;

     if varprCalldate <> '' then
          inputPromise_f.dtCall.Date := strtodate(varprCalldate)
     else
          inputPromise_f.dtCall.Date := promiseFrame_fr.dpsDate.date;

     {  varPrChart := '';
       varPrname := '';
       varPrSulsik := '';
       varPrTime := '';
       varPrTel := '';
       varPrGugan := '';
       varprColor := '';
       varPrAlarm := '';
       varPrMemo := '';
       varPrLock := '';
       varPrInterval := '';
      }
     inputPromise_f.cbsTime.Text := varPrTime;
     inputPromise_f.cbfTime.Text := minToTime(timetomin(varPrTime) +
          strtoint(varPrInterval));
     inputPromise_f.cbJundam.itemindex := inputPromise_f.cbJundam.Items.indexof(varPrDam);//varPrDam;

     inputPromise_f.cbJundam2.ItemIndex := inputPromise_f.cbJundam2.items.indexof(varPrDam2);// .Text := varPrDam2;

     inputPromise_f.cbTeam.Text := varPrTeam;

     inputPromise_f.edtreferHospName.Text:= LoadReferHospName(rHospCode);
     inputPromise_f.edtReferHospCode.text:= rHospCode;

         if rHospCode <> ''then
             inputPromise_f.cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(rHospCode) )
         else
             inputPromise_f.cbReferHospDoc.Clear;


     inputPromise_f.cbReferHospDoc.ItemIndex :=
           inputPromise_f.cbReferHospDoc.Items.IndexOf(rHospDocName) ;


       inputPromise_f.cbTreatRoom.ItemIndex :=
              inputPromise_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, varPrTeam )  ;

       LoadDoclist(inputPromise_f.cbDoc, inputPromise_f.cbTreatRoom.ColumnItems[inputPromise_f.cbTreatRoom.ItemIndex,0]);



     inputPromise_f.cbDoc.itemindex :=
           inputPromise_f.cbDoc.ComboItems.IndexOf(varPrDoc).y;

     selecteditemTeam := varPrTeam;

     varDoc := loadTeamName(varPrTeam);
     inputPromise_f.cbDoc2.itemindex := inputPromise_f.cbDoc2.Items.IndexOf(varDoc);

     inputPromise_f.cbSoyo.Text := mintotime(strtoint(varPrInterval));

     // inputPromise_f.cbGugan.Text := varPrgugan;
     if columnstart > 1 then
          inputPromise_f.cbGugan.Text := inttostr(strtoint(varPrGugan) - columnstart + 1)
     else
          inputPromise_f.cbGugan.Text := varPrGugan;

     inputPromise_f.lblChairName.Caption := loadChairName(varPrgugan); //2012.6.6
     inputPromise_f.edtname.text := varPrname;
     inputPromise_f.edtChart.text := varPrChart;

     inputPromise_f.edtjumin.text := '';

     inputPromise_f.edtTel.text := varPrTel;
     inputPromise_f.edtTelOr.text := varPrTel;
     inputPromise_f.lblcphone.caption := varPrTel;

     inputPromise_f.edtTel2.text := varPrTel2;
     inputPromise_f.memSulsik.text := varPrSulsik;
     if trim(varPrcolor) <> '' then
          inputPromise_f.pnlColor.Color := stringtocolor(varPrColor)
     else
          inputPromise_f.pnlColor.Color := clWhite;



     if trim(varPrnoSMS) = '1' then
          inputPromise_f.cbnoSMS.Checked := True
     else
          inputPromise_f.cbnoSMS.Checked := false;


     if (ma_sms = '0') and (trim(varPrnoSMS) <> '1')  then
           inputPromise_f.cbnoSMS.Checked := true;
   //  else
   //        inputPromise_f.cbnoSMS.Checked := false;


     if  (ma_sms2 = '0') or (ma_sms3 = '0') then     //Fathenr, Mother is send then NoSms no check
          inputPromise_f.cbnoSMS.Checked := false;


 //    if varPrf_color <> '' then
 //         inputPromise_f.cbFontColor.itemindex := inputPromise_f.cbFontColor.Items.IndexOf(varPrf_color)
 //    else
 //         inputPromise_f.cbFontColor.itemindex := 0;


     if varPrf_size <> '' then
          inputPromise_f.cbFontsize.itemindex := inputPromise_f.cbFontSize.Items.indexof(varPrf_size)
     else
          inputPromise_f.cbFontsize.itemindex := inputPromise_f.cbFontSize.Items.indexof('9');

       inputPromise_f.cbBold.checked:=  varPrf_bold;

     if trim(varPrAlarm) <> '0' then
     begin
          inputPromise_f.cbAlRet.Checked := true;
          inputPromise_f.cbAMin.text := trim(varPrAlarm);

          { if strtoint(trim(varPrAlarm)) > 0 then
           begin
                  inputPromise_f.cbAlRet.Checked := true;
                  inputPromise_f.cbAMin.text := trim(varPrAlarm);
           end
           else
           begin
                  inputPromise_f.cbAlRet.Checked := false;
                  inputPromise_f.cbAMin.text := '';
           end;
           }
     end
     else
     begin
          inputPromise_f.cbAlRet.Checked := false;
          inputPromise_f.cbAMin.text := '';
     end;

     if varPrLock = '1' then
     begin
          inputPromise_f.cbEdit.Checked := true;
          inputPromise_f.cbEdit.Enabled := false;
          inputPromise_f.edtLock.text := varPrSulsik;
     end
     else
     begin
          inputPromise_f.cbEdit.Checked := false;
          inputPromise_f.cbEdit.Enabled := true;
          inputPromise_f.edtLock.text := '';

     end;
     if varPrTelYeyak = '1' then
     begin
          inputPromise_f.cbTel.Checked := true;
     end
     else
     begin
          inputPromise_f.cbTel.Checked := false;
     end;

     inputpromise_f.edtWhisper.text := Promise_LoadMemo(item.tag);

     inputpromise_f.lblStat.caption := varStat2;

     //기존 예약 리스트를 불러온다.
     inputPromise_f.PromiseSelect(inputpromise_f.edtchart.text);


     inputPromise_f.loadCellPhoneList(inputpromise_f.edtchart.text);




//       inputPromise_f.cbTreatRoom.ItemIndex :=
//              inputPromise_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, varPrTeam )  ;
//
//       LoadDoclist(inputPromise_f.cbDoc, inputPromise_f.cbTreatRoom.ColumnItems[inputPromise_f.cbTreatRoom.ItemIndex,0]);



     // inputPromise_f.Showmodal;

     if inputPromise_f.Showmodal = mrOk then
     begin

          SelectPromise(tabView.TabIndex);

     end;

     {   if item.Tag > 0 then
               inputPromise_f.memSulsik.setfocus
        else
               inputPromise_f.edtname.SetFocus;
      }


     for i := 0 to planner1.Items.Count - 1 do
     begin
         planner1.Items[i].FixedPos := cbMove.Checked;
     end;

end;

procedure TpromiseFrame_fr.Planner1ItemDelete(Sender: TObject;
  Item: TPlannerItem);
begin
     Item.Free;
end;

procedure TpromiseFrame_fr.Planner1ItemImageClick(Sender: TObject;
  Item: TPlannerItem; ImageIndex: Integer);
begin
     if Item.ImageIndexList.Count > 0 then
     begin
          if ImageIndex = 0 then
          begin
               if Item.ImageIndexList.Items[0] = 5 then
                    Item.ImageIndexList.Items[0] := 6
               else
                    Item.ImageIndexList.Items[0] := 5;
          end;
     end
     else
     begin
          if Item.ImageID = 5 then
               Item.ImageID := 6
          else
               Item.ImageID := 5;
     end;

end;

procedure TpromiseFrame_fr.Planner1ItemLeftClick(Sender: TObject;
  Item: TPlannerItem);
    var
      i : integer;
      nDocIndex : integer;
begin
     try

          isReferer := False;
          if item.tag = -1 then
               exit;



       //    for i := 0 to planner1.Items.Count - 1 do
       //    begin
       //        planner1.Items[i].FixedPos := true;
       //    end;

          // showmessage('');
          //Promise_SelectData(item.tag);


          //ToDo : better see slow...
          //          screen.cursor := crHourglass;

          //Planner1.enabled:=false;
          selectedItemTag := item.tag;
          selecteditemChart := StringReplace(item.Text[1], '<Z>', '',
               [rfReplaceAll]);
          selecteditemChart := StringReplace(selecteditemChart, '</Z>', '',
               [rfReplaceAll]);
          selecteditemChart := StringReplace(selecteditemChart, '(', '',
               [rfReplaceAll]);
          selecteditemChart := StringReplace(selecteditemChart, ')', '',
               [rfReplaceAll]);

          if selecteditemChart <> '' then
          begin
               PromiseSelect(selecteditemChart); //전화번호 가져오기
          end;

          Promise_SelectData(selectedItemTag) ;

          selecteditemTeam := loadSelectedItemTeam(selectedItemTag);

          selecteditemPhone := StringReplace(item.Text[8], '<Z>', '',
               [rfReplaceAll]);
          selecteditemPhone := StringReplace(selecteditemPhone, '</Z>', '',
               [rfReplaceAll]);
          selecteditemPhone := StringReplace(selecteditemPhone, '(', '',
               [rfReplaceAll]);
          selecteditemPhone := StringReplace(selecteditemPhone, ')', '',
               [rfReplaceAll]);

          // main_f.FieldClear; //2012.5.14
          main_f.fieldclear;//_promise;

          if LoadGogekData_chart(selecteditemChart, progressbar,  varViewAll) = true then
          begin
              isLoading := true;
              //   main_f.Fieldset_promise(formatdatetime('YYYY-MM-DD', now), formatdatetime('YYYY-MM-DD',  plannerCalendarGroup1.date));//varPday);
              main_f.Fieldset( formatdatetime('YYYY-MM-DD', PlannerCalendarGroup1.Date));//(formatdatetime('YYYY-MM-DD', now), formatdatetime('YYYY-MM-DD',  plannerCalendarGroup1.date));//varPday);

          end;
                  //formatdatetime('YYYY-MM-DD', promiseMain_f.PlannerCalendarGroup1.Date)
          loadCellPhoneList(selecteditemChart);

           main_f.cbTreatRoom.ItemIndex :=
                         main_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, varPrTeam )  ;

           LoadDoclist( main_f.cbDoc, varPrTeam);

          if varPrDoc <> '' then
             nDocIndex := main_f.cbDoc.ComboItems.IndexInColumnOf(4, trim( varPrDoc) )
          else
              nDocIndex := 0;

          main_f.cbDoc.ItemIndex       :=  nDocIndex  ;

         //예약 할때 의뢰병원 정보 가져오자.
         //============================================================================
           main_f.edtreferHospName.Text:= '';
           main_f.edtReferHospCode.text:= '';

           main_f.edtreferHospName.Text:= LoadReferHospName(varrHospCode);
           main_f.edtReferHospCode.text:= varrHospCode;

           if varrHospCode <> ''then
               main_f.cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(varrHospCode) )
           else
               main_f.cbReferHospDoc.Clear;


           main_f.cbReferHospDoc.ItemIndex :=
                 main_f.cbReferHospDoc.Items.IndexOf(varrHospCode) ;
         //============================================================================

     finally

//          screen.cursor := crDefault;

       //    for i := 0 to planner1.Items.Count - 1 do
       //    begin
       //        planner1.Items[i].FixedPos := cbMove.checked;
       //    end;

     end;

end;



procedure TpromiseFrame_fr.Planner1ItemMove(Sender: TObject; Item: TPlannerItem;
  FromBegin, FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
var
     varDate, vartime, varGugan,
          varTeam, varDoc,  varInterval, varCancel: string;
     varIdn, scanCount: integer;

     varTong, varGuk, varBun, varSDate, varSendTime, varContent: string;
     varAfterSendDate: integer;
     varTel: string;
begin
     if Application.MessageBox(PChar('선택하신 예약내용을 이동하시겠습니까?'),
          '예약이동', MB_YESNO + MB_ICONERROR + MB_SYSTEMMODAL) = IDYES then
     begin

          //label2.caption:=planner1.Header.Captions.Strings[Topos + 1];
          //

          if tabView.TabIndex > 0 then  //주간, 기간 예약
          begin
               varDate := copy(planner1.Header.Captions.Strings[Topos +
                    1], 1, 10);
               varGugan := '1';
          end
          else
          begin
               varDate := formatDateTime('YYYY-MM-DD', promiseFrame_fr.dpsDate.Date);

               varGugan := inttostr(Topos + columnStart - 1);

          end;
          {  showmessage('Formbegin:' + inttostr(frombegin) + #13 +
                 'FormEnd:' + inttostr(fromEnd) + #13 +
                 'toBegin:' + inttostr(tobegin) + #13 +
                 'toEnd:' + inttostr(toend) + #13 +
                 'starttime:' + inttostr(starttime) + #13 +
                 item.ItemText);

                 'Formbegin:' 변동전 시작시간
                 'FormEnd:' 변동전 끝시간
                 'toBegin:' 변동후 시작시간
                 'toEnd:'    변정후 끝시간
           }
          varTime := mintotime((Tobegin + startTime) * timeinterval);
          //ToEnd,ToBegin,FromEnd,FromBegin등은 현재 나타난 셀의 위치만 보여져서 Starttime을 더해줌.

          //varTeam := main_f.varDamteam;

          varTeam := selecteditemTeam; //varDamteam;
          varDoc := '';  //cbDoc.ColumnItems[cbDoc.itemindex, 2];

          varInterval := inttostr((toEnd - Tobegin) * timeinterval);
          varidn := item.Tag;
          Promise_SelectData(varidn);
          varTel := varPrtel;



          //  showmessage(varPrCancel);
          if (varPrcancel <> 'C')   then //취소,변경는 그대로   놔두자.
               varCancel := '5' // 이동
          else
               varCancel := varPrcancel;

          if  (varPrcancel = 'U')  then //취소,변경는 그대로   놔두자.
                varCancel := varPrcancel;

          if Promise_UpdateDataInPlanner(false, varIdn, varDate, varGugan,
               varTime, varTeam, varDoc, varInterval, varCancel) = true then
          begin

               //SMS예약전송
               if configvalue.p_BeforeSendSms = 1 then
               begin
                    //기존 예약 전송을 취소 해야 한다.....
                    varAfterSendDate := configvalue.p_BeforSms;
                    //예약 며칠전에 보냈는가?
                    varSDate := formatDateTime('YYYYMMDD',
                         strtodate(varPrday)
                         -
                         varAfterSendDate);

                    if CancelSMS(main_f.SMSCALLMSG1,
                         '', //varGogekName: string;
                         '', //varGogekId: string;
                         substr(varTel, 1, '-'),
                         substr(varTel, 2, '-'),
                         substr(varTel, 3, '-'),
                         varSDate) = 1 then
                    begin
                         Promise_UpdateSendedReserveSMS(varPrDay,
                              varPrGugan, varprTime,
                              varPrSulsik, varPrTeam, varPrChart,
                              varPrName,
                              varPrtel, varPrInterval, '0', varidn);

                    end
                    else
                    begin
                         showmessage('예약전송 취소 실패.');

                    end;

                    varSDate := formatDateTime('YYYYMMDD', dpSdate.Date
                         - varAfterSendDate);
                    //실제 보낼 일자 , 예약일자 -  varAfterSendDate(며칠전)
                    varSendTime := configvalue.p_SmsBeforTime;
                    //보내는 시간, 환경설정에서 정해서 일괄전송
                    varContent := configvalue.p_SmsContent;
                    //예약확인 메시지
                    varDate := formatDateTime('YYYY-MM-DD',
                         dpSDate.Date); //예약일자
                    varTong := substr(varTel, 1, '-');
                    varGuk := substr(varTel, 2, '-');
                    varBun := substr(varTel, 3, '-');

                    if SendMessage_One(main_f.SMSCALLMSG1,
                         varPrName,
                         varPrChart,
                         varDate, //varDate:예약일자.varTime:예약시간.
                         varTime,
                         varTong,
                         varGuk,
                         varBun,
                         varSDate, varsendTime,
                         varContent) = 1 then
                    begin
                         Promise_UpdateSendedReserveSMS(varPrDay,
                              varPrGugan, varTime,
                              varPrSulsik, varPrTeam, varPrChart,
                              varPrName,
                              varPrtel, varPrInterval, '1', varidn);

                    end
                    else
                    begin
                         showmessage('SMS전송실패');
                    end;

               end;

          end;
          SelectPromise(tabView.TabIndex);

     end
     else
     begin
          SelectPromise(tabView.TabIndex);
     end;

end;


procedure TpromiseFrame_fr.Planner1ItemRightClick(Sender: TObject;
  Item: TPlannerItem);
  var
     nDocIndex : integer;
begin
     isReferer := False;
     if item.tag = -1 then
          exit;

     item.Selected := true;
     item.Focus := true;


    //  Planner1.Position:= item.ItemPos;

    //item에서 오른 마우스 클릭시 planner셀의 좌표도 옮겨온다.
      Planner1.SelPosition:=     item.ItemPos;
      Planner1.selitemBegin :=     item.ItemBegin;
      Planner1.selItemEnd :=  item.ItemBegin;//  item.ItemEnd;

    //변경, 이동, 복사 클릭시 isClipped = true
    if isClipped = false then
    begin

     selectedItemInterval := item.ItemEnd - item.ItemBegin;

     selectedItemTag := item.tag;

     selecteditemRemark := item.Text[3];
     selecteditemChart := StringReplace(item.Text[1], '<Z>', '',
          [rfReplaceAll]);
     selecteditemChart := StringReplace(selecteditemChart, '</Z>', '',
          [rfReplaceAll]);
     selecteditemChart := StringReplace(selecteditemChart, '(', '',
          [rfReplaceAll]);
     selecteditemChart := StringReplace(selecteditemChart, ')', '',
          [rfReplaceAll]);

     selecteditemPhone := StringReplace(item.Text[8], '<Z>', '',
          [rfReplaceAll]);
     selecteditemPhone := StringReplace(selecteditemPhone, '</Z>', '',
          [rfReplaceAll]);
     selecteditemPhone := StringReplace(selecteditemPhone, '(', '',
          [rfReplaceAll]);
     selecteditemPhone := StringReplace(selecteditemPhone, ')', '',
          [rfReplaceAll]);

     selecteditemTeam := loadSelectedItemTeam(selectedItemTag);


     if LoadGogekData_chart(selecteditemChart, progressbar,  varViewAll) = true then
     begin
       //   main_f.Fieldset_promise;
     //  main_f.Fieldset_promise(formatdatetime('YYYY-MM-DD', now), formatdatetime('YYYY-MM-DD', plannerCalendarGroup1.date));//varPday);
        main_f.Fieldset(   formatdatetime('YYYY-MM-DD', PlannerCalendarGroup1.Date));//_promise(formatdatetime('YYYY-MM-DD', now), formatdatetime('YYYY-MM-DD', plannerCalendarGroup1.date));//varPday);

     end
     else
     begin
          main_f.fieldclear;

     end;



         PromiseSelect(selecteditemChart);

         Promise_SelectData(selectedItemTag) ;


           main_f.cbTreatRoom.ItemIndex :=
                         main_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, varPrTeam )  ;

           LoadDoclist( main_f.cbDoc, varPrTeam);

          if varPrDoc <> '' then
             nDocIndex := main_f.cbDoc.ComboItems.IndexInColumnOf(4, trim( varPrDoc) )
          else
              nDocIndex := 0;

          main_f.cbDoc.ItemIndex       :=  nDocIndex  ;


              //예약 할때 의뢰병원 정보 가져오자.
         //============================================================================
           main_f.edtreferHospName.Text:= '';
           main_f.edtReferHospCode.text:= '';

           main_f.edtreferHospName.Text:= LoadReferHospName(varrHospCode);
           main_f.edtReferHospCode.text:= varrHospCode;

           if varrHospCode <> ''then
               main_f.cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(varrHospCode) )
           else
               main_f.cbReferHospDoc.Clear;


           main_f.cbReferHospDoc.ItemIndex :=
                 main_f.cbReferHospDoc.Items.IndexOf(varrHospCode) ;
         //============================================================================

    end
    else
    begin


        //  showmessage('');

         if Application.MessageBox(PChar('복사/이동/붙여넣기 중입니다. 취소 하시겠습니까?'),
              '복사/이동/붙여넣기 진행', MB_YESNO + MB_ICONERROR + MB_SYSTEMMODAL) = IDYES then
         begin
               menuPaste.Visible := false;

               isClipped := false;
               exit;
         end;


    end;


     //showmessage(selecteditemRemark+';'+selecteditemChart);
end;

procedure TpromiseFrame_fr.Planner1ItemSize(Sender: TObject; Item: TPlannerItem;
  Position, FromBegin, FromEnd, ToBegin, ToEnd: Integer);
var
     varDate, vartime, varGugan,
          varTeam, vardoc, varInterval, varCancel: string;
     varIdn, scanCount: integer;

begin

     if Application.MessageBox(PChar('선택하신 예약내용을 변경하시겠습니까?'),
          '예약변경', MB_YESNO) = IDYES then
     begin
        //  varCancel := 'U';
            //같은날 시간대를 변경하는것이므로 변경으로 처리하지 말자...2015-04-01

            //todo : 이미 변경된 약속을 변경하는 경우는 어떻게 해야하나?
            varCancel := '';

          if tabView.TabIndex > 0 then
          begin
               varDate := copy(planner1.Header.Captions.Strings[position +
                    1], 1, 10);
               varGugan := '1';


          end
          else
          begin
               varDate := formatDateTime('YYYY-MM-DD', promiseFrame_fr.dpsDate.Date);

               varGugan := inttostr(position + 1 + columnStart - 1);

          end;

         //  varGugan := inttostr(position + 1);


          {  showmessage('Formbegin:' + inttostr(frombegin) + #13 +
                 'FormEnd:' + inttostr(fromEnd) + #13 +
                 'toBegin:' + inttostr(tobegin) + #13 +
                 'toEnd:' + inttostr(toend) + #13 +
                 'starttime:' + inttostr(starttime) + #13 +
                 item.ItemText);

                 'Formbegin:' 변동전 시작시간
                 'FormEnd:' 변동전 끝시간
                 'toBegin:' 변동후 시작시간
                 'toEnd:'    변정후 끝시간
           }
          varTime := mintotime((Tobegin + startTime) * timeinterval);
          //ToEnd,ToBegin,FromEnd,FromBegin등은 현재 나타난 셀의 위치만 보여져서 Starttime을 더해줌.

          // varTeam := main_f.varDamteam;
          varTeam := selecteditemTeam; //varDamteam;
          varDoc := '';//cbDoc.ColumnItems[cbDoc.itemindex, 2];

          varInterval := inttostr((toEnd - Tobegin) * timeinterval);
          varidn := item.Tag;
          Promise_UpdateDataInPlanner_withoutGubun_Doc(false, varIdn, varDate, varTime,
                  varInterval);
         // Promise_UpdateDataInPlanner(false, varIdn, varDate, varGugan,
         //      varTime, varTeam, varDoc,  varInterval, varcancel);
     end
     else
     begin
          SelectPromise(tabView.TabIndex);
     end;

end;

procedure TpromiseFrame_fr.Planner1PlannerBottomLine(Sender: TObject; Index,
  Pos: Integer; APen: TPen);
begin
     if timeInterval = 10 then
          if (index + 1) mod 3 = 0 then
          begin
               with apen do
               begin
                    Width := 1;
                    Color := clBlue;
               end;
          end;
end;

procedure TpromiseFrame_fr.Planner1PlannerDblClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
var
     i: integer;
     varInterval: integer;
     varTeam: string;
     varDocName:string;
     varSdate : Tdatetime;//
     varFdate : Tdatetime;//
begin


    // isReferer := False;

    //예약하려는 날이 휴일이면 확인
    if  isHoliday(promiseFrame_fr.dpsDate.date) = true then
    begin
         if Application.MessageBox(PChar('예약일이 휴일입니다. 진행하시겠습니까?'),
              '휴일 예약 진행', MB_YESNO + MB_ICONERROR + MB_SYSTEMMODAL) = IDNO then
         begin
               exit;
         end;
    end;

     varInterval := timeinterval;


     //cbFontColor를 여기서 초기화 시켜야하나...
     varPrf_color:='';

     // selecteditemTeam;
    //Shift키를 누르고 드래그 해서 다중 선택 후 더블 클릭한다.


     //주간인 경우에 날짜를 헤더에서 가져와야한다...
     case tabView.TabIndex of
          0: //일간
               begin
                    varSdate :=    promiseFrame_fr.dpsDate.date;
                    varFdate :=    promiseFrame_fr.dpsDate.date;

               end;
          1: //주간
          begin
                                 //  planner1.pos
                    varSdate :=   strtoDate( copy(planner1.Header.Captions.Strings[ Position  +  1], 1, 10)); // promiseFrame_fr.dpsDate.date;
                    varFdate :=   strtoDate( copy(planner1.Header.Captions.Strings[ Position  +  1], 1, 10)); //  promiseFrame_fr.dpsDate.date;

                   //  varDate := copy(planner1.Header.Captions.Strings[Topos +  1], 1, 10);
                   // varGugan := '1';

          end;
          2: //기간
          begin
                    varSdate :=   strtoDate( copy(planner1.Header.Captions.Strings[ planner1.Positions  +  1], 1, 10)); // promiseFrame_fr.dpsDate.date;
                    varFdate :=   strtoDate( copy(planner1.Header.Captions.Strings[ planner1.Positions  +  1], 1, 10)); //  promiseFrame_fr.dpsDate.date;
          end;
      end;


     if not assigned(inputPromise_f) then
     begin
          inputPromise_f := TinputPromise_f.Create(Application);
     end;



     { inputPromise_f.cbSoyo.items.clear;

      for i := 1 to 30 do
      begin
           // inputPromise_f.cbSoyo.items.Add(inttostr(varinterval * i));
           inputPromise_f.cbSoyo.items.Add(mintotime(varinterval * i));

      end;
      }

     inputPromise_f.fieldset; //예약입력창의 팀 등의 콤보박스를 채운다.

     {
        case Promise_isSelectData(main_f.edtChart.text,
               formatDateTime('YYYY-MM-DD',
               promiseFrame_fr.dpsDate.date), varteam) of
               2: // 이미 앿속있음
                      begin

                             if
                                    Application.MessageBox(PChar('같은 팀에 이미 예약내역이 있습니다.' + #10#13 + '예약을 추가합니까?'),
                                    '예약추가', MB_YESNO) = IDNO then
                             begin

                                    promiseFrame_fr.searchPromise(main_f.edtName.text);

                                    exit;
                             end;

                      end;
               1: //오늘보다 이전
                      begin
                             showmessage('약속하려는 날이 오늘보다 전에 있습니다.');

                             exit;

                      end;

        end;
      }
        //Next 검색해서 내용있으면 pnlNext보이도록 한다.
       {
        with dm_f.sqlWork do
        begin
               close;
               sql.clear;
               SQL.Text := 'select * from  ma_chart_detail  ' + #13#10 +
                      '     where  chart =     ' + #13#10 +
                      QuotedStr(main_f.edtChart.text) + #13#10 +
                      '    and  jin_day = :jin_day  ' + #13#10 +
                      '    and  sugacode = :sugacode  ' + #13#10 +
                      '    and  su_key = :su_key  ';
               parambyname('jin_day').asString := formatdatetime('yyyy-mm-dd',
                      now);
               parambyname('sugacode').asString := '@GR';
               parambyname('su_key').asString := 'Next';
               open;
               if not isEmpty then
               begin
                      inputPromise_f.pnlNext.Visible := true;
                      inputPromise_f.tcsultab.tabindex := 1;
                      inputPromise_f.lstNext.align := alClient;
                      inputPromise_f.lstNext.clear;

                      while not eof do
                      begin
                             inputPromise_f.lstnext.Items.Add(FieldByName('description').AsString + '/' +
                                    FieldByName('portion').AsString);
                             next;
                      end;

               end
               else
               begin
                      inputPromise_f.pnlNext.Visible := false;
                      inputPromise_f.tcsultab.tabindex := 0;
               end;
        end;
        }
     inputPromise_f.edtname.ReadOnly := false;
     inputPromise_f.edtChart.ReadOnly := false;

     inputPromise_f.lblAppointNo.Caption := '';
     inputPromise_f.Datetimepicker1.Date :=    varSdate;//promiseFrame_fr.dpsDate.date;
     inputPromise_f.Datetimepicker2.Date :=    varFdate;// promiseFrame_fr.dpsDate.date;

     inputPromise_f.PlannerCalendar1.Date :=    varSdate;
     inputPromise_f.DtCall.Date := promiseFrame_fr.dpsDate.date;
     inputPromise_f.cbsTime.Text := mintotime(FromSel * timeinterval);
     inputPromise_f.cbfTime.Text := mintotime(ToSel * timeinterval);
     inputPromise_f.cbSoyo.ItemIndex := (tosel - fromsel) - 1;

     if  tabView.TabIndex  > 0 then   //주간, 기간이면...
     begin
          inputPromise_f.cbGugan.ItemIndex := 0;
     end
     else
     begin
          inputPromise_f.cbGugan.ItemIndex := Position;
     end ;



     inputPromise_f.lblChairName.Caption := loadChairName(inttostr(Position + 1)); //2012.6.6

     inputPromise_f.cbJundam.ItemIndex := main_f.cbHyg.ItemIndex;

     if cbdamteam.itemindex > 0 then    //예약탭이 원장이 선택된 상태
          varTeam := cbDamteam.text
     else
     begin
          varTeam := LoadTeaminfo(main_f.edtChart.text);

     end;




     if cbdamteam2.itemindex > 0 then    //예약탭이 원장이 선택된 상태
          varTeam := cbdamteam2.ColumnItems[cbdamteam2.itemindex, 0]
     else
     begin
          varTeam := LoadTeaminfo(main_f.edtChart.text);

     end;

     //     if varDamTeam <> '0' then //예약 팀 탭이 전체가 아니면
     //     begin
     //          inputPromise_f.cbTeam.Text := varDamteam;
     //          inputPromise_f.cbDoc.Text := loadTeamName(varDamteam);
     //     end
     //     else
     //     begin
     inputPromise_f.cbTeam.Text := varTeam;
     varDocName := loadTeamName(varTeam);


     inputPromise_f.cbDoc2.itemindex := inputPromise_f.cbDoc2.items.indexof( varDocName);
     //     end;


     inputPromise_f.cbTreatRoom.ItemIndex := planner1.SelPosition  ;//cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]);

     LoadDoclist(inputPromise_f.cbDoc, inputPromise_f.cbTreatRoom.ColumnItems[inputPromise_f.cbTreatRoom.ItemIndex,0]);



      if configvalue.P_PromiseTeamLoad = 1 then  //무조건 맨 위...
      inputPromise_f.cbDoc2.itemindex :=0;


     inputPromise_f.edtname.text := main_f.edtname.text; //'';


     if trim(main_f.edtjumin.text) <> '' then
          inputPromise_f.edtjumin.text := main_f.edtjumin.text + '-' +
               main_f.edtjumin2.text
               //copy(main_f.edtjumin2.text,1,1)+'******'
     else
          inputPromise_f.edtjumin.text := '';

     inputPromise_f.lblcphone.caption := main_f.edtcphone.text; //'';

     inputPromise_f.edtTel.text := main_f.edtcphone.text; //'';
     inputPromise_f.edtTelOr.text := main_f.edtcphone.text; //'';
     inputPromise_f.edtTel2.text := main_f.edthphone.text; //'';
     inputPromise_f.memSulsik.text := '';
     inputPromise_f.edtWhisper.Clear;
     inputPromise_f.edtLock.text := '';
     inputPromise_f.lblstat.caption := '';



     inputPromise_f.cbnoSMS.Checked := main_f.cbSMS.Checked ;

    //나는 안보내고 부모도 안 보내면 전송방지 체크
     if (ma_sms = '0') and (trim(varPrnoSMS) <> '1')  then
           inputPromise_f.cbnoSMS.Checked := true  ;
  //   else
  //         inputPromise_f.cbnoSMS.Checked := false;


     if  (ma_sms2 = '0') or (ma_sms3 = '0') then     //Fathenr, Mother is send then NoSms no check
          inputPromise_f.cbnoSMS.Checked := false;



     inputPromise_f.loadCellPhoneList(inputpromise_f.edtchart.text);


     inputPromise_f.PromiseSelect(inputPromise_f.edtChart.text);

     // inputPromise_f.Showmodal;
     if inputPromise_f.edtname.text = '' then
          inputPromise_f.activeControl := inputPromise_f.edtname //.SetFocus
     else
          inputPromise_f.activeControl := inputPromise_f.memsulsik; //.SetFocus;

     if GogekExist(main_f.edtChart.text) =true then
          inputPromise_f.edtChart.text := main_f.edtChart.text
      else
      begin
         //  inputPromise_f.edtChart.text :='';
         //  inputPromise_f.edtTel.SetFocus;
      end;




    //의뢰병원 관련-----
     inputPromise_f.edtReferHospCode.Text := '';
     inputPromise_f.edtreferHospName.Text := '';
     inputPromise_f.cbReferHospDoc.clear;

     inputPromise_f.edtRHosp.Text         := '';
     inputPromise_f.edtRHospID.Text       := '';
                                           //  main_f.edtreferHospName.text
                                           //  main_f.edtreferHospCode.text

//      rHospCode    := edtreferHospCode.Text;
//      rHospDocName := cbReferHospDoc.Text;

      if ma_refer_neyuk <> '' then //isReferer = true then
          inputPromise_f.memSulsik.Text :=  ma_refer_neyuk ;

     inputPromise_f.edtreferHospName.Text:= main_f.edtreferHospName.text;
     inputPromise_f.edtReferHospCode.text:= main_f.edtreferHospCode.text;

         if  main_f.edtreferHospCode.text <> ''then
             inputPromise_f.cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc( main_f.edtreferHospCode.text) )
         else
             inputPromise_f.cbReferHospDoc.Clear;




     inputPromise_f.cbReferHospDoc.ItemIndex :=    0;//
    //       inputPromise_f.cbReferHospDoc.Items.IndexOf(rHospDocName) ;



    //-------------------


     if inputPromise_f.Showmodal = mrOk then
     begin

          SelectPromise(tabView.TabIndex);

     end
     else
     begin
          //showmessage('');
     end;

     {       if inputPromise_f.edtname.text = '' then
                   inputPromise_f.edtname.SetFocus
            else
                   inputPromise_f.memsulsik.SetFocus;
      }
end;

procedure TpromiseFrame_fr.Planner1PlannerLeftClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
var
     i: integer;
begin
     i := position;

end;

procedure TpromiseFrame_fr.Planner1PlannerMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
     p: Tpoint;
     aRect: TRect;
begin

     if Assigned(promiseFrame_fr) then
          with promiseFrame_fr do
               sendmessage(handle, wm_mdiactivate, 0, handle);




end;

procedure TpromiseFrame_fr.Planner1PlannerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
     rc: TPoint;
     i, j: Integer;
     s: string;
     plit: TPlanneritem;
begin
     rc := planner1.XytoCell(x, y);
     j := planner1.celltoitemnum(rc.x, rc.y);

     for i := 1 to j do
     begin
          plit := planner1.celltoitemidx(rc.x, rc.y, i - 1);
          if Assigned(plit) then
               s := plit.Text.Text
          else
               s := '';
     end;

end;
procedure TpromiseFrame_fr.Planner1PlannerRightClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
     MovingItemPos := Position;
     MovingitemBegin := FromSel - startTime;
     Planner1.SelPosition := Position;


end;


procedure TpromiseFrame_fr.PlannerCalendarGroup1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  DaySet(selDate);
end;

procedure TpromiseFrame_fr.PlannerCalendarGroup1MonthChange(Sender: TObject;
  origDate, newDate: TDateTime);
begin
     DaySet(newDate);
end;

procedure TpromiseFrame_fr.PlannerCalendarGroup1YearChange(Sender: TObject;
  origDate, newDate: TDateTime);
begin
 DaySet(newDate);
end;

procedure TpromiseFrame_fr.PopupMenu1Popup(Sender: TObject);
begin
           if  selecteditemChart  = '' then
           begin
                mnuGogekRegi.visible:= true;
                mnuJubsu.visible    := false;

           end
           else
           begin
                mnuGogekRegi.visible:= false;
                mnuJubsu.visible    := true;

           end;

end;

procedure TpromiseFrame_fr.searchPromise(varText: string);
var
     Plit: TPlanneritem;
begin
//     plit := nil;
//     repeat
//          plit :=
//               Planner1.Items.FindText(plit, vartext, [fnAutoGoto,
//               fnText]);
//          if Assigned(plit) then
//          begin
//               showmessage('예약을 찾았습니다.');
//          end;
//     until plit = nil;
//     //  showmessage(' 더이상 찾는 내용이 없습니다.');

end;

procedure TpromiseFrame_fr.PromiseSelect(chart: string);
var
     i, reccount: integer;
begin

    //toDo : 전화신환인경우 환자등록이 되어있지 않기때문에 예약시 등록한 핸드폰번호를 가져와야 한다.
     if chart <> '' then
     begin
           with dm_f.SqlWork do
           begin
                Close;
                Sql.Clear;
                Sql.Add('SELECT  c_phone');
                Sql.Add('FROM       view_gogek                   ');
                Sql.Add('WHERE   (chart =:chart)');
                ParamByName('chart').AsString := chart;
                Open;
                if not IsEmpty then
                begin
                     varCPhoneNumber := fieldByName('c_Phone').asString;
                end
                else
                begin
                     varCPhoneNumber := '';

                end;
           end;
     end
     else
     begin

           with dm_f.SqlWork do
           begin
                Close;
                Sql.Clear;
                Sql.Add('SELECT  tel');
                Sql.Add('FROM      ma_promise                  ');
                Sql.Add('WHERE   (idn =:idn)');
                ParamByName('idn').AsString := inttostr(selectedItemTag);
                Open;
                if not IsEmpty then
                begin
                     varCPhoneNumber := fieldByName('tel').asString;
                end
                else
                begin
                     varCPhoneNumber := '';

                end;
           end;

     end;

     loadCellPhoneList(selecteditemChart);
end;


procedure TpromiseFrame_fr.loadCellPhoneList(varChart:string);
begin
          lstPatPhoneList.Items.clear;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;

               Sql.Add('SELECT * FROM ma_gogek_phone ');
               Sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
               ParamByName('SMS').AsString := '0'; //여기서는 0인것이 SMS전송하기로 한거임 불러올거임....
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


function TpromiseFrame_fr.isHoliday(varDate:TdateTime) : boolean;
var
     i: integer;
     varYear, VarMonth, Varday: Variant;
begin
     result := false;
     if ReturnWeek2(varDate) = '일' then
     begin
              result:=true;
              exit;
     end;

     with dm_f.sqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from gonghyu where gh_day=:gh_day'  );
          ParamByName('gh_day').AsString := FormatDateTime('YYYY-MM-DD', varDate);
          Open;
          First;
          if not isEmpty then
          begin
              result:=true;
              exit;
          end;


     end;
end;







procedure TpromiseFrame_fr.setArrayPanel;
begin
    setLength( pnlArray, 4);
    pnlArray[0] :=  pnlTodayNavi;
    pnlArray[1] :=  pnlCalendar;
    pnlArray[2] :=  pnlTop;
    pnlArray[3] :=  pnlTermSet ;

end;
procedure TpromiseFrame_fr.SMS1Click(Sender: TObject);
var
     vartag: integer;
begin
     Promise_SelectData(SelectedItemTag);

     if not assigned(smsone_f) then
          smsone_f := Tsmsone_f.Create(application);
     smsone_f.edtRecvno.text := call_tel_type(varCPhoneNumber);
     smsone_f.edtSendno.text := call_tel_type(varPrTel);
     smsone_f.edtName.text := varPrName;
     smsone_f.lblChart.caption :='';
     smsone_f.lblChart.caption :=varPrChart;

     smsone_f.memcontent.text := '';
     smsone_f.LblMemcontentSize.Caption := '0/';

     if varprCalldate <> '' then
     begin
          smsone_f.edtMonth.text := copy(varprCalldate, 6, 2);
          smsone_f.edtDay.text := copy(varprCalldate, 9, 2);
     end
     else
     begin
          smsone_f.edtMonth.text := formatdatetime('MM',
              dpsDate.date);
          smsone_f.edtDay.text := formatdatetime('DD',
               dpsDate.date);
     end;
     smsone_f.edtTime.text := copy(varPrTime, 1, 2);
     smsone_f.edtMin.text := copy(varPrTime, 4, 2);

     smsone_f.varMode := 1;
     smsone_f.Showmodal;

end;
procedure TpromiseFrame_fr.PreShow ;

var
     Path: string;
     FormInit: Tinifile;
     varPromiseteam, varRecallGridView: string;

     iHeight: Integer;
     iWidth: Integer;
     varPromiseTabWidth:integer;
     i: integer;
begin

     caption := '예약정보';

     with grdmain do
     begin

         Ctl3D := false;
         BevelInner := bvNone;
         BevelKind  := bkNone;
         BevelOuter := bvNone;

     end;



    setArrayPanel;
    for I := 0 to 3 do
    begin
     initPanel(  pnlArray[i]);
    end;


     {$IFDEF DEBUG}
          pnltop.Visible := true  ;
     {$ELSE}
          pnltop.Visible := false ;
     {$ENDIF}



     { iHeight := main_f.ClientHeight;
      iWidth := main_f.ClientWidth;
      iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 20;
      iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 1;
      SetBounds(0, 0, iWidth, iHeight);
      }
      //========================================================================
             // formstyle:=3;
     plannercalendargroup1.Style := plannercal.psCustom; // .psWindows7;

  //   plannercalendargroup1.day := strtoint(formatdatetime('DD' ,now) );
     plannercalendargroup1.date := now;

     varModSelecteditemTag := 0;

     headerset(0);
     formSet;

     //    TimeSet(1, formatdatetime('YYYY-MM-DD', dpSdate.date));
     TimeSet(1);
     //varDamTeamCheck := 'Y';

     //========================================================================




     edtSch.text := '';
     tabView.TabIndex := 0;
     viewMode(tabView.TabIndex);




     if configvalue.P_DocComboView =1 then
     begin
         cbDamteam2.Visible:=true;
         tcTeam.Visible:=false;
         pnlTeamCap.Visible:=false;
         //panel2.Visible:=true;
     end
     else
     begin
         cbDamteam2.Visible:=false;
         tcTeam.Visible:=true;
         pnlTeamCap.Visible:=true;
        // panel2.Visible:=false;
    end;
     //호출하면서 일자 바꿔주기
     //PlannerCalendarGroup1.Date := now;
     //dpsdate.Date := now;
     //dpfdate.Date := now;

     lblStat.Caption := '일간팀별';

     with grdMain do
     begin
          align := alclient;
          colwidths[0] := 20;
          colwidths[1] := 0;
          colwidths[2] := 0;
          colwidths[3] := 20;
          colwidths[4] := 0;
          colwidths[5] := 0;
          colwidths[6] := width - colwidths[0] - colwidths[3];
          colwidths[7] := 0;
          colwidths[8] := 0;
          colwidths[9] := 0;
          colwidths[10] := 0;
          colwidths[11] := 0;
          colwidths[12] := 0;
          colwidths[13] := 0;
     end;

//     with dm_f.SqlWork do
//     begin
//          cbdamTeam.items.Clear;
//
//          with  cbdamTeam2 do
//          begin
//               Columns.Clear;
//               ComboItems.Clear;
//          end;
//
//          tcTeam.AdvTabs.Clear; //.Tabs.Clear;
//
//          cbDamTeam.items.Add('전체');
//
//          with cbDamTeam2 do
//          begin
//               with Columns.Add do
//               begin
//                    Width := 0;
//                    Font.Style := [fsBold];
//               end;
//               with Columns.Add do
//               begin
//                    Width := 0;
//                    Font.Color := clBlue;
//                    Font.Style := [fsBold];
//               end;
//               with Columns.Add do
//               begin
//                    Width := 100;
//               end;
//
//               with ComboItems.Add do
//               begin
//                  Strings.Add('0');
//                  Strings.Add('clWhite');
//                  Strings.Add('전체');
//
//               end;
//          end;
//
//
//          isDamteamLoad := true;
//
//          tcTeam.advTabs.Add; //('전체');
//          tcTeam.advtabs.Items[tcTeam.advtabs.Count -
//               1].Caption := '전체';
//          tcTeam.advtabs.Items[tcTeam.advtabs.Count -
//               1].showclose := false;
//          Close;
//          Sql.Clear;
//          Sql.Add('select * from ma_team');
//          Sql.Add('where teamkind  <> ''1''  or teamkind is null ');
////          Sql.Add('order by convert(int, team_name) ');
//            Sql.Add('order by team_key ');
//          Open;
//          First;
//          if not isEmpty then
//          begin
//               while not eof do
//               begin
//                    cbDamTeam.items.Add(FieldByName('team_name').AsString);
//
//                    with cbDamTeam2 do
//                    begin
//
//                         with ComboItems.Add do
//                         begin
//                            Strings.Add(FieldByName('team_name').AsString);
//                            Strings.Add(FieldByName('team_color').AsString);
//                            Strings.Add(FieldByName('team_doctor1').AsString);
//
//                         end;
//                    end;
//
//
//                    tcTeam.advTabs.Add;
//                    //(FieldByName('Team_Doctor1').AsString);
//                    tcTeam.advtabs.Items[tcTeam.advtabs.Count -
//                         1].Caption :=
//                         (FieldByName('Team_Doctor1').AsString);
//                    tcTeam.advtabs.Items[tcTeam.advtabs.Count -
//                         1].showclose := false;
//
//
//
//
//                    next;
//               end;
//               cbDamteam.ItemIndex := 0;
//               cbDamteam2.ItemIndex := 0;
//               tcTeam.TabIndex := 0;
//          end;
//     end;

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varPromiseteam := FormInit.ReadString('기타정보', '예약팀', '1');
     varRecallGridView := FormInit.ReadString('기타정보', '예약리콜보기', '0');

     varPromiseTabWidth := FormInit.ReadInteger('기타정보', 'PromiseTabWidth', 580);



     pnlCalendar.Width :=  FormInit.ReadInteger('ETC', 'promiseCalendarView', 200);


     FormInit.Free;

     tcTeam.Width :=    varPromiseTabWidth;



//     if varRecallGridView = '1' then
//     begin
//          pnlPromiseInfo.Visible := true ;
//          AdvSplitter2.Visible := true ;
//     end
//     else
//     begin
//          pnlPromiseInfo.Visible := false;
//          AdvSplitter2.Visible := false ;
//     end;


//     cbDamteam.ItemIndex := strtoint(varPromiseteam);
//     cbDamteam2.ItemIndex := strtoint(varPromiseteam);


//     tcTeam.TabIndex := strtoint(varPromiseteam);

//     if cbDamteam.Text <> '전체' then
//     begin
//          varDamTeam := cbDamteam.Text;
//          varDamTeamName := loadTeamName(varDamteam);
//          Lblteam.Caption := loadTeamName(varDamteam) + ' 원장';
//     end
//     else
//     begin
//          varDamTeam := '0';
//          Lblteam.Caption := loadTeamName(varDamteam) + '전체';
//     end;
//
//
//     if cbdamteam2.ColumnItems[cbdamteam2.itemindex, 0] <> '전체' then
//     begin
//          varDamTeam := cbdamteam2.ColumnItems[cbdamteam2.itemindex, 0];
//          varDamTeamName := loadTeamName(varDamteam);
//          Lblteam.Caption := cbdamteam2.ColumnItems[cbdamteam2.itemindex, 2] + ' 원장';
//     end
//     else
//     begin
//          varDamTeam := '0';
//          Lblteam.Caption :=  cbdamteam2.ColumnItems[cbdamteam2.itemindex, 2]  + '전체';
//     end;



    //ToDo: Test Mode....
//     varDamTeam := '0';



     LoadDefaultValue;  //진료실정보 가져오고, 원장정보 가져오자.


     advTrackbar1.Position := configvalue.p_rowinterval;

     GetHoliday;

     lblDay1.caption := formatDateTime('YYYY-MM-DD', now) +
          ' (' + ReturnWeek2(now) + ')';
     lblDay2.caption := formatDateTime('YYYY/MM/DD', now) +
          ' (' + ReturnWeek2(now) + ')';

     //2012.3.27
     cbStatus.items.Clear;
     cbStatus.items.add('');
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_team');
            Sql.Add('order by team_key ');
//          Sql.Add('order by convert(int, team_name) ');
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbStatus.items.add(FieldByName('team_doctor1').AsString);
                    next;
               end;
               cbStatus.ItemIndex := 0;
          end
          else
          begin
          end;
     end;

     //varDamTeamCheck := '';

     //    SelectPromise(tabView.TabIndex);



     PromiseInfoSet(0);
     BtnColorSet;

     isDamteamLoad := false;

end;


procedure TpromiseFrame_fr.prevMonthClick(Sender: TObject);
begin
      PlannerCalendarGroup1.Date := incMonth( PlannerCalendarGroup1.Date,-1);
end;

procedure TpromiseFrame_fr.PrevYearClick(Sender: TObject);
begin
  PlannerCalendarGroup1.Date := incYear( PlannerCalendarGroup1.Date,-1);
end;

procedure TpromiseFrame_fr.GetHoliday;
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

                    with plannercalendargroup1.Events.Add do
                    begin
                         varYear := FormatDateTime('yyyy',
                              fieldByname('gh_day').Value);
                         varMonth := FormatDateTime('MM',
                              fieldByname('gh_day').Value);
                         varDay := FormatDateTime('DD',
                              fieldByname('gh_day').Value);
                         Date := EncodeDate(varYear, varMonth,
                              varDay);
                         Hint := fieldByname('gh_name').Value;
                         FontColor :=ClRed;// ClBlue;
                         Color := clWhite;
                         Shape := evsRectangle;
                    end;
                    next;

               end;
          end;

     end;
  finally
        varuniQuery.Free;
  end;
end;

procedure TpromiseFrame_fr.grdMainDblClick(Sender: TObject);
var
     varSwCode: string;
     varFind: boolean;
begin
     if grdmain.Row <= 0 then
     begin
          if (grdmain.Row = 0) and (grdmain.Col = 1) then
          begin
               regiSchedule_f := TregiSchedule_f.Create(application);
               with regiSchedule_f do
               begin
                    //    Fieldclear;
                    deDate.Date := plannerCalendarGroup1.Date;
                    Showmodal;
               end;

               LoadWorkList;

          end;
     end
     else
     begin
          varswCode := grdmain.cells[12, grdmain.row];
          regiSchedule_f := TregiSchedule_f.Create(application);
          with regiSchedule_f do
          begin
               //    Fieldclear;
               deDate.Date := plannerCalendarGroup1.Date;
               SelectDataSWork;
               if GrdWork2.RowCount > 0 then
               begin
                    varFind := FindGridFirst(grdWork2, varswCode);
                    if varFind = true then
                         fieldset(grdWork2.Row);
               end;
               Show;

          end;
     end;
end;


procedure TpromiseFrame_fr.grdMainResize(Sender: TObject);
begin
     with grdMain do
     begin
          colwidths[6] := width - colwidths[0] - colwidths[3];
     end;

end;

procedure TpromiseFrame_fr.PromiseInfoSet(varTabindex: integer);
begin
     {  case varTabindex of
            0:
                 begin
                      with grdRecall do
                      begin
                           visible := true;
                           align := alClient;
                      end;
                      grdPromiseCancel.Visible := false;
                      selectRecall;

                 end;
            1:
                 begin
                      with grdPromiseCancel do
                      begin
                           visible := true;
                           align := alClient;
                      end;
                      grdRecall.visible := false;
                      selectCancelPromise(1);

                 end;

            2:
                 begin
                      with grdPromiseCancel do
                      begin
                           visible := true;
                           align := alClient;
                      end;
                      grdRecall.visible := false;
                      selectCancelPromise(2);
                 end;

       end;
       }
//     with grdRecall do
//     begin
//          visible := true;
//          align := alClient;
//     end;
//     //grdPromiseCancel.Visible := false;
//     selectRecall;
//     with grdPromiseCancel do
//     begin
//          visible := true;
//          align := alClient;
//     end;
     //grdRecall.visible := false;



 //    selectCancelPromise(2);

end;



procedure TpromiseFrame_fr.BtnColorSet;
var
     varcode: integer;
     varRemark, varColor: string;
begin

  {     colorMenuArray[1].Color := ClWhite;
       colorMenuArray[2].Color := ClWhite;
       colorMenuArray[3].Color := ClWhite;
       colorMenuArray[4].Color := ClWhite;
       colorMenuArray[5].Color := ClWhite;
       colorMenuArray[6].Color := ClWhite;
       colorMenuArray[7].Color := ClWhite;
       colorMenuArray[8].Color := ClWhite;
       colorMenuArray[9].Color := ClWhite;
       colorMenuArray[10].Color := ClWhite;

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
                      //   colorMenuArray[varcode]. . Color :=   StringToColor(varColor);
                       colorMenuArray[varcode].caption :=  varRemark;
                         colorMenuArray[varcode].Hint := varRemark;
                     //    colorMenuArray[varcode].showHint := true;
                    end
                    else
                    begin
                    //     colorMenuArray[varcode].Color := ClWhite;
                    end;
                    next;
               end;
          end;
     end;    }
end;


procedure TpromiseFrame_fr.btnRefreshClick(Sender: TObject);
begin
     SelectPromise(tabView.TabIndex);
end;

procedure TpromiseFrame_fr.btnToDayClick(Sender: TObject);
begin
     dpsDate.Date := now;
     dpFdate.Date := now;

     dayset(dpSdate.Date);
//     SelectPromise(tabView.TabIndex);
end;

procedure TpromiseFrame_fr.cbCancelViewClick(Sender: TObject);
begin
     //   lblDay.caption := formatDateTime('YYYY-MM-DD', now) +
     //          '(' + ReturnWeek2(now) + ')';
     SelectPromise(tabView.TabIndex);


end;

procedure TpromiseFrame_fr.cbMoveClick(Sender: TObject);
begin
    MoveSwitch;
end;


procedure TpromiseFrame_fr.cbTreatRoomSelect(Sender: TObject);
var
    team_key : string;
begin
   // showmessage('');
     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
     LoadDoclist(cbDoc, team_key);


end;

procedure TpromiseFrame_fr.cbJubsuViewClick(Sender: TObject);
begin
     //   lblDay.caption := formatDateTime('YYYY-MM-DD', now) +
     //          '(' + ReturnWeek2(now) + ')';
     SelectPromise(tabView.TabIndex);

end;

procedure TpromiseFrame_fr.MoveSwitch;
var
     i: integer;
begin


     for i := 0 to planner1.Items.Count - 1 do
     begin
          if cbMove.checked = true then
               planner1.Items[i].FixedPos := false
          else
               planner1.Items[i].FixedPos := true;

     end;
end;


procedure TpromiseFrame_fr.DaySet(varDate: Tdatetime);
begin

     dpSdate.DateTime := vardate;
     lblDay2.Caption := formatdatetime('YYYY/MM/DD', vardate) +  '(' + ReturnWeek2(vardate) + ')';
   //  PlannerCalendarGroup1.day := strtoint(formatdatetime('DD', vardate));
   //  PlannerCalendarGroup1.month := strtoint(formatdatetime('MM', vardate));
   //  PlannerCalendarGroup1.year := strtoint(formatdatetime('YYYY', vardate));
     PlannerCalendarGroup1.Date := varDate;
     //   PlannerCalendarGroup1.StartYear := strtoint(formatdatetime('YYYY', varDate));
     //   PlannerCalendarGroup1.StartMonth := strtoint(formatdatetime('MM', varDate));
     //   PlannerCalendargroup1.StartDay := strtoint(formatdatetime('DD', varDate));

     SelectPromise(tabView.TabIndex);

end;
procedure TpromiseFrame_fr.dpfDateChange(Sender: TObject);
begin

     PlannerCalendargroup1.Date := dpSdate.Date;
     SelectPromise(tabView.TabIndex);
end;

procedure TpromiseFrame_fr.dpSdateChange(Sender: TObject);
begin

     PlannerCalendargroup1.Date := dpSdate.Date;
     SelectPromise(tabView.TabIndex);
end;

procedure TpromiseFrame_fr.edtSchKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          //    main_f.varedtName:= trim(edtSch.text);

              vFindName:= trim(edtSch.text);

              if trim(edtSch.text) = '' then exit;
               application.ProcessMessages;
               findgogek(edtSch.text, 0);

      end;


end;

procedure TpromiseFrame_fr.findgogek(varName: string; varGubun: integer = 0);
var
    loadresult: integer;
begin

//     loadResult := LoadGogekData_name(varName, progressbar, varGubun, varViewAll);
//
//     case loadResult of
//          1: //mrOk정보있는 경우
//               begin
//                   // Fieldset;
//                    {TODO 1 -oha -cMake Function:치료중단 안내나, 중단한 가족이있을경우 알려준다.}
//                    {TODO 1 -oha -cMake Function: 소개 감사, 선물감사}
//               end;
//          2: //mrCancel취소한경우
//               begin
//                    //edtName.enabled := true;
//                    //edtname.SetFocus;
//               end;
//          6: //mrYes새로 입력한경우
//               begin
//
//
//               end;
//     end;



     PromiseJohoi_f := TPromiseJohoi_f.Create(application);
     PromiseJohoi_f.selCombo.itemIndex := 0;
     PromiseJohoi_f.varView := 'NAME';
     PromiseJohoi_f.FieldClear;
     if edtsch.text <> '' then
     begin
          PromiseJohoi_f.PatientSearch_whole(edtsch.text);
          PromiseJohoi_f.edtSch.Text := edtsch.text;
     end;
     PromiseJohoi_f.Showmodal;

end;
procedure TpromiseFrame_fr.EllipsLabel2Click(Sender: TObject);
var
   i : integer;
begin
    for i := 0 to 10 do
    begin
        JvCheckedComboBox1.Items.Add(inttostr(i));
    end;
end;

procedure TpromiseFrame_fr.sendSMS_Change_Cancel(
             varChart,
             varName,
             varDate,  //예약일
             varTime,  //예약시간
             varGugan,
             varRemark,
             varTeam,
             varInterval,
             varTong,
             varGuk,
             varBun,
             varContent :string;
             varIdn : integer);
var
   i : integer;
begin

     //예약과 동시에 SMS전송 - 이것을 이용해서 변경시, 취소시 문자 보내야 한다...


          if trim(varPrnoSMS) <> '1' then  //SMS거부자가 아니면
          begin
               if SendMessage_One_Now(
                    main_f.SMSCALLMSG1,
                    varName,
                    varChart,
                    varDate,   //예약일
                    varTime,  //예약시간
                    varTong,
                    varGuk,
                    varBun,
                    varContent) = 1 then
               begin

                    Promise_UpdateSendedNowSMS(varDate, varGugan, varTime,
                         varRemark, varTeam, varChart, varName,
                         varTong+'-'+varGuk+'-'+varBun, varInterval, '1', varIdn);   //1: 예약시 즉시전송

               end
               else
               begin

                    showmessage(' SMS전송실패 : '+varTong+'-'+varGuk+'-'+varBun );

               end
          end;




            //보호자 핸드폰 전송하기로 되어있다면...

              if  lstPatPhoneList.Items.Count > 0 then
              begin

                  for i:= 0 to   lstPatPhoneList.Items.Count -1 do
                  begin

                     varTong:= substr( lstPatPhoneList.Items[i],1, '-') ;
                     varGuk:=  substr( lstPatPhoneList.Items[i],2, '-') ;
                     varBun:=  substr( lstPatPhoneList.Items[i],3, '-') ;
                     if SendMessage_One_Now(main_f.SMSCALLMSG1,
                           varname,
                           varChart,
                           varDate,   //예약일
                           varTime,  //예약시간
                           varTong,
                           varGuk,
                           varBun,
                           varContent) = 1 then
                      begin

                           Promise_UpdateSendedNowSMS(varDate, varGugan, varTime,
                                varRemark, varTeam, varChart, varName,
                                varTong+'-'+varGuk+'-'+varBun, varInterval, '1', varIdn);   //1: 예약시 즉시전송

                      end
                      else
                      begin

                           showmessage(' SMS전송실패 : '+varTong+'-'+varGuk+'-'+varBun );

                      end;
                  end;

              end;

end;



procedure TpromiseFrame_fr.LoadDefaultValue;
var
     varcode: string;
     team_key : string;
begin


      with cbTreatRoom do
      begin
          Columns.Clear;
          ComboItems.Clear;

           with Columns.Add do
           begin
                Width := 0;
                Font.Style := [fsBold];
                 Font.Name:= '맑은 고딕';
                 Font.Size := 12;
           end;
           with Columns.Add do
           begin
                Width := 0;
                Font.Color := clBlue;
                Font.Style := [fsBold];
                 Font.Name:= '맑은 고딕';
                 Font.Size := 12;
           end;
           with Columns.Add do
           begin
                Width := 100;
                 Font.Name:= '맑은 고딕';
                 Font.Size := 12;
           end;


         with ComboItems.Add do
         begin
            Strings.Add('');     //Code
            Strings.Add('');  //code?
            Strings.Add('전체');

         end;

     end;

     with dm_f.SqlWork do
     begin

          Close;
          Sql.Clear;
          Sql.text :=
               'Select * from ma_basic                                   ' + #13#10 +
               'where  (code like  ''093%'') and (code <> ''09300'')     ' + #13#10 +
               'and inuse <>  ''0''  and (remark = ''TREAT'' or remark = ''MED'' )               ' + #13#10 +
            //   'order by val,code                                        ';
               'order by disp                                       ';


          Open;
          if not isEmpty then
          begin
               while not eof do
               begin

                 with cbTreatRoom do
                    begin
//                         with Columns.Add do
//                         begin
//                              Width := 50;
//                              Font.Style := [fsBold];
//                               Font.Name:= '맑은 고딕';
//                               Font.Size := 12;
//                         end;
//                         with Columns.Add do
//                         begin
//                              Width := 50;
//                              Font.Color := clBlue;
//                              Font.Style := [fsBold];
//                               Font.Name:= '맑은 고딕';
//                               Font.Size := 12;
//                         end;
//                         with Columns.Add do
//                         begin
//                              Width := 100;
//                               Font.Name:= '맑은 고딕';
//                               Font.Size := 12;
//                         end;
//
                         with ComboItems.Add do
                         begin
                            Strings.Add(trim(FieldByName('val').AsString));     //Code
                            Strings.Add(trim(FieldByName('remark').AsString));  //code?
                            Strings.Add(trim(FieldByName('disp').AsString));

                         end;
                    end;

                  //  cbTreatRoom.items.add(FieldByName('disp').AsString);




                    next;
               end;
               cbTreatRoom.ItemIndex := 0;  // 전체
          end
          else
          begin
             //  cbTreatRoom.items.add('데스크');
             //  cbTreatRoom.ItemIndex := 0;
          end;

     end;

     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
     LoadDoclist(cbDoc, team_key);



end;





end.
