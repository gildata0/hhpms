unit uDaegiFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvTabSet, Vcl.StdCtrls,
  AdvShapeButton, AdvCombo, ColCombo, Vcl.ComCtrls, EllipsLabel, Vcl.Buttons,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ExtCtrls, iniFiles, Vcl.Menus,
  AdvMenus,
  Activex,
  Vcl.OleServer,
  SpeechLib_TLB,
  uni, db,

  System.ImageList, Vcl.ImgList, AdvProgressBar, AdvPanel,
  AdvSplitter, AdvUtil, Vcl.Tabs, Vcl.CheckLst;

//type
//
//   TDispValue = record
//    nJubsuCnt        : integer;
//    nInPatCnt        : integer;
//    nSunapTotalCnt   : integer;
//    nSunapWaitCnt    : integer;
//    nSunapCnt        : integer;
//    nPromiseCnt      : integer;
//    nWaitCnt         : integer;
//end;
type
  TQueryThread = class(TThread)
  private
    Fconnection     : TuniConnection;
    FQuery          : TuniQuery;
    FDatasource     : TDatasource;
    FQueryException : Exception;
    FJinDay         : string;
    FcompoName      : string;

    // Message to report
//    fMsg: TDispValue;

//    nJubsuCnt        : integer;
//    nInPatCnt        : integer;
//    nSunapTotalCnt   : integer;
//    nSunapWaitCnt    : integer;
//    nSunapCnt        : integer;
//    nPromiseCnt      : integer;
//    nWaitCnt         : integer;

    procedure ConnectDataSource;
    procedure ShowQryError;
  protected
    procedure Execute; override;
  public
    constructor Create(connection: TuniConnection;
                       aQuery: TuniQuery;
                       aJinDay:string;
                       aCompoName : string );  virtual;
  end;

type
  TDaegiFrame_fr = class(TFrame)
    pnlWaitingList: TPanel;
    Timer1: TTimer;
    AdvPopupMenu2: TAdvPopupMenu;
    N68: TMenuItem;
    N69: TMenuItem;
    mnuPrev: TMenuItem;
    mnuNext: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    ImageList1: TImageList;
    progressbar: TAdvProgressBar;
    pnlEditRemark: TAdvPanel;
    lblJubsuID: TLabel;
    memo1: TMemo;
    Panel6: TPanel;
    Button9: TButton;
    Button10: TButton;
    pnlSunapDaegi: TAdvPanel;
    AdvSplitter1: TAdvSplitter;
    pgSunapDaegi: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    grdSunapDaegi: TAdvStringGrid;
    grdSunapFinish: TAdvStringGrid;
    PopupMenu1: TPopupMenu;
    mnuTxView_SunapDaegi: TMenuItem;
    N6: TMenuItem;
    N9: TMenuItem;
    PopupMenu2: TPopupMenu;
    mnuTxView_SunapFinish: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    clbSunapDaegi: TCheckListBox;
    clbSunapFinish: TCheckListBox;
    N12: TMenuItem;
    N13: TMenuItem;
    PopupMenu3: TAdvPopupMenu;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    PopupMenu4: TPopupMenu;
    mnuJubsu: TMenuItem;
    MenuItem5: TMenuItem;
    mnuModPromise: TMenuItem;
    MenuItem6: TMenuItem;
    N30: TMenuItem;
    N29: TMenuItem;
    N28: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    mnuOpenChart: TMenuItem;
    MenuItem9: TMenuItem;
    SMS1: TMenuItem;
    menuWhisper: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    mnuNewon: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    N27: TMenuItem;
    mnuGogekRegi: TMenuItem;
    MenuItem17: TMenuItem;
    mnuChange: TMenuItem;
    mnuCancel: TMenuItem;
    mnuDel: TMenuItem;
    mnuMove: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    RC1: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    mnuRecallLoad: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    N7: TMenuItem;
    mnuNewPromise: TMenuItem;
    AdvShapeButton1: TAdvShapeButton;
    Button3: TButton;
    pnlDaegimain: TAdvPanel;
    grdDaegi: TAdvStringGrid;
    clbColumnCheck: TCheckListBox;
    grdPromise: TAdvStringGrid;
    clbPromise: TCheckListBox;
    Panel1: TPanel;
    pnlDaegiInfo: TPanel;
    SpeedButton12: TSpeedButton;
    lblYc: TLabel;
    lblTeam: TLabel;
    lblNewPatient: TLabel;
    lblNc: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    EllipsLabel17: TLabel;
    EllipsLabel18: TLabel;
    EllipsLabel25: TLabel;
    EllipsLabel1: TLabel;
    dtDate: TDateTimePicker;
    cbDoc2: TColumnComboBox;
    cbChartCol: TCheckBox;
    Button11: TButton;
    btnRefresh: TAdvShapeButton;
    btnDaegiUpArrow: TButton;
    btnDaegiDownArrow: TButton;
    cbTeamName: TComboBox;
    cbDaegiGubun: TComboBox;
    cbTeam: TComboBox;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
    cbYeyakView: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    CheckBox2: TCheckBox;
    Button4: TButton;
    N1: TMenuItem;
    N5: TMenuItem;
    N21: TMenuItem;
    N26: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    AdvPopupMenu6: TPopupMenu;
    N10: TMenuItem;
    N8: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N24: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N79: TMenuItem;
    N88: TMenuItem;
    N95: TMenuItem;
    N23: TMenuItem;
    N37: TMenuItem;
    N25: TMenuItem;
    N75: TMenuItem;
    N40: TMenuItem;
    N22: TMenuItem;
    N20: TMenuItem;
    N64: TMenuItem;
    N4: TMenuItem;
    mnuTxView_daegi: TMenuItem;
    N65: TMenuItem;
    mnuJinDaegi: TMenuItem;
    mnuJinJung: TMenuItem;
    mnuSunapDaegi: TMenuItem;
    mnuSunapEnd: TMenuItem;
    N2: TMenuItem;
    N34: TMenuItem;
    N3: TMenuItem;
    mnuJubsuChange: TMenuItem;
    N11: TMenuItem;
    mnuJubsuDelete: TMenuItem;
    Timer2: TTimer;
    tsMain: TAdvTabSet;
    cbAF: TCheckBox;
    N42: TMenuItem;
    N43: TMenuItem;
    timerResults: TTimer;
    Shape1: TShape;
    procedure Timer1Timer(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure grdDaegiGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdDaegiClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button9Click(Sender: TObject);
    procedure mnuJubsuDeleteClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure btnDaegiUpArrowClick(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure mnuJinDaegiClick(Sender: TObject);
    procedure grdDaegiGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure btnDaegiDownArrowClick(Sender: TObject);
    procedure grdSunapDaegiClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdSunapDaegiDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure pgSunapDaegiChange(Sender: TObject);
    procedure mnuTxView_SunapDaegiClick(Sender: TObject);
    procedure mnuTxView_daegiClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure grdSunapFinishClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure cbYeyakViewClick(Sender: TObject);
    procedure cbDocChange(Sender: TObject);
    procedure cbDaegiGubunChange(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure grdSunapFinishDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure grdSunapDaegiMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N14Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure grdSunapDaegiGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdSunapFinishGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdSunapFinishGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure grdSunapDaegiGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure mnuTxView_SunapFinishClick(Sender: TObject);
    procedure mnuJubsuChangeClick(Sender: TObject);
    procedure grdDaegiClickSort(Sender: TObject; ACol: Integer);
    procedure grdSunapFinishClickSort(Sender: TObject; ACol: Integer);
    procedure grdSunapDaegiClickSort(Sender: TObject; ACol: Integer);
    procedure N68Click(Sender: TObject);
    procedure grdDaegiRightClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure grdDaegiColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure grdSunapFinishGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure mnuJubsuClick(Sender: TObject);
    procedure PopupMenu4Popup(Sender: TObject);
    procedure SMS1Click(Sender: TObject);
    procedure mnuModPromiseClick(Sender: TObject);
    procedure mnuNewPromiseClick(Sender: TObject);
    procedure mnuGogekRegiClick(Sender: TObject);
    procedure mnuCancelClick(Sender: TObject);
    procedure mnuDelClick(Sender: TObject);
    procedure grdDaegiKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure AdvPopupMenu6Popup(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure grdDaegiGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
    procedure dtDateCloseUp(Sender: TObject);
    procedure tsMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N42Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private


    varTopRow:integer;

      // 그리드 카운팅
//      nJubsuCnt        :integer;
//      nWaitCnt         :integer;
//      nInPatCnt        :integer;
//      nPromiseCnt      :integer;
//      nSunapTotalCnt   :integer;
//      nSunapWaitCnt    :integer;
//      nSunapCnt        :integer;


    procedure daegiGridChange(index: integer);
    procedure JPSelect(varGrid: TadvStringGrid; daegidate, gubun, team:string; remark: string='');
    procedure jubsuSelect(varGrid: TadvStringGrid; daegidate, gubun,
               team:string; remark: string='');

    procedure PromiseSelect(daegidate, gubun, team: string);
    procedure   updateDaegiStat(aGrid : TadvStringGrid; varStat:integer; varGridKind:integer = 0);
    procedure cbJubsuStatusChange_Emergency(varKind: integer; status: boolean);


    procedure LoadDefaultValue;
    procedure setArrayPanel;
    procedure gridSunap(aGrid: TAdvStringGrid; ARow, ACol: Integer);
//    procedure StartThread;
    procedure Refresh2;
//    procedure RefreshCount;
    procedure RunBackgroundQuery(DataBase: TuniConnection; Query: TuniQuery;
      aJinDay: string );
    { Private declarations }
  public
    { Public declarations }

       aQueryThread: TQueryThread;
       procedure  preShow(aKind : integer);
       procedure  DaegiSelect(index : integer);
       procedure  checkPromiseRecall(varChart: string);
       procedure  DispCount;

  end;
  var
      DaegiFrame_fr1 : TDaegiFrame_fr;

implementation
uses uConfig, uDM, uFormInit, uFunctions, uJinryoCalc,  usysInfo, uGogekData, uGogekData_find,
  uPromiseData, choiceChair, smsone,
  uMain, jinryo, Sunap, uChangeStat, inputPromise, uOutPatient, uFontInfoSave;
{$R *.dfm}



constructor TQueryThread.Create(connection: TUniConnection;
    aQuery: TuniQuery; aJinDay:string ; aCompoName : string );
begin
  // thread object의 instance를 생성한다
  // Create의 파라미터가 False이면 thread를 생성한후 즉시 Execute를 호출하여 실행한다
  //            "        True이면 Resume을 호출하기 전까지 실행하지 않는다
  inherited Create(True);

  Fconnection := connection;
  FQuery      := aQuery;
  fJinDay     := aJinDay;
  FcompoName  := aCompoName;
//  FMsg    := DispCount;
//  FDataSource := Datasource;

  // thread의 실행이 종료하면 자동으로 free되게 설정
//  FreeOnTerminate := True;

  // 실행이 일시 중지된(suspended) thread를 실행한다
//  Resume;
end;

procedure TQueryThread.Execute;
begin
  inherited;

  try
    // Query를 open하고 DataSource를 연결한다
    FQuery.Close;
    FQuery.SQL.clear;
    FQuery.SQL.Text :=
          ' SELECT a.nCount as nSunapWaitCnt, b.nCount as nSunapCnt, c.nCount as nInPatCnt,    ' + #10 +
          '   d.nCount as nJubsuCnt, e.nCount as nWaitCnt, f.nCount  as  nPromiseCnt           ' + #10 +
          '     FROM                                                                           ' + #10 +
          ' (select count(jin_day) as nCount from jinryo_p  where  sunap = ''0''  and          ' + #10 +
          ' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)      ' + #10 +
          '              when ( isOutpat is null)  then jin_day else jin_day end)              ' + #10 +
          ' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day    ) a                    ' + #10 +
          '                                                                                    ' + #10 +
          ' , ( select count(jin_day) as nCount from jinryo_p  where  sunap = ''1''  and       ' + #10 +
          ' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)      ' + #10 +
          '              when ( isOutpat is null)  then jin_day else jin_day end)              ' + #10 +
          ' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day    ) b                    ' + #10 +
          ' ,( select  count(jin_day) as nCount  from ma_jubsu                                 ' + #10 +
          ' where (isInpat=''1'' or isInpat=''2'') and isOutPat=''0'' ) c                      ' + #10 +
//          ' and gubun=''6''                                                         ) c        ' + #10 +
          ' ,(select  count(jin_day) as nCount from ma_jubsu                                   ' + #10 +
          ' where  jin_day =:jin_day  and  gubun=''0'' ) d                                     ' + #10 +
          ' ,(select  count(jin_day) as nCount from ma_jubsu                                   ' + #10 +
          ' where  jin_day =:jin_day   and  gubun=''4'' ) e                                    ' + #10 +
          ' ,( select  count(pday) as nCount from ma_promise                                   ' + #10 +
          ' WHERE   (pday = :jin_day ) and (cancel <> ''Y'')                                   ' + #10 +
          ' and (cancel <> ''C'') and ( cancel <> ''R'' )                                      ' + #10 +
          ' and ( cancel <> ''U'' )                                                            ' + #10 +
          '           and name <> ''''                                                         ' + #10 +
          ' and pos <> ''8''     and Pos = ''''           ) f                                  ';
         fQuery.paramByName('jin_day').AsString :=   fJinDay;//jin_day;

     Coinitialize(nil)  ;
     FQuery.Open;
     CoUninitialize;



    // thread간의 충돌을 피하여 ConnectDataSource 를 호촐한다
    Synchronize(ConnectDataSource);
  except
    // Handle the exception
    FQueryException := ExceptObject as Exception;
    // thread간의 충돌을 피하여 ShowQryError 를 호촐한다
    Synchronize(ShowQryError);
    // Do not use the properties and methods of other objects directly in the Execute method of a thread.
    // Instead, separate the use of other objects into a separate procedure call, and call that procedure
    // by passing it as a parameter to the Synchronize method.
  end;
end;

// TQuery object를 접근하므로 Synchronize 로 호출해야함
procedure TQueryThread.ConnectDataSource;
//var
 //  dispValue : TDispValue;
begin
  // DataSource를 연결한다
  // TQuery를 접근하므로 Synchronize 로 호출했음
 // FDataSource.DataSet := FQuery;

//       FMsg.nJubsuCnt          := fQuery.FieldByName('nJubsuCnt').AsInteger ;
//       FMsg.nInPatCnt          := fQuery.FieldByName('nInPatCnt').AsInteger ;
//       FMsg.nSunapWaitCnt      := fQuery.FieldByName('nSunapWaitCnt').AsInteger ;
//       FMsg.nSunapCnt          := fQuery.FieldByName('nSunapCnt').AsInteger ;
//       FMsg.nSunapTotalCnt     := FMsg.nSunapWaitCnt + FMsg.nSunapCnt;
//       FMsg.nPromiseCnt        := fQuery.FieldByName('nPromiseCnt').AsInteger ;
//       FMsg.nWaitCnt           := fQuery.FieldByName('nWaitCnt').AsInteger ;
//
      if not fQuery.IsEmpty then
      begin
       nJubsuCnt          := fQuery.FieldByName('nJubsuCnt').AsInteger ;
       nInPatCnt          := fQuery.FieldByName('nInPatCnt').AsInteger ;
       nSunapWaitCnt      := fQuery.FieldByName('nSunapWaitCnt').AsInteger ;
       nSunapCnt          := fQuery.FieldByName('nSunapCnt').AsInteger ;
       nSunapTotalCnt     := nSunapWaitCnt + nSunapCnt;
       nPromiseCnt        := fQuery.FieldByName('nPromiseCnt').AsInteger ;
       nWaitCnt           := fQuery.FieldByName('nWaitCnt').AsInteger ;
      end;
//
//nJubsuCnt
//nInPatCnt
//nSunapTotalCnt
//nSunapWaitCnt
//nSunapCnt
//nPromiseCnt
//nWaitCnt

//        fMsg := Format('%d', [nJubsuCnt] ) +'|'+
//                Format('%d', [nInPatCnt] ) +'|'+
//                Format('%d', [nSunapTotalCnt] ) +'|'+
//                Format('%d', [nSunapWaitCnt] ) +'|'+
//                Format('%d', [nSunapCnt] ) +'|'+
//                Format('%d', [nPromiseCnt] ) +'|'+
//                Format('%d', [nWaitCnt] );
             // .RecordCount]);
       // close the query
       fQuery.Close;

//      compoName :=  'pnlWait' ;//(self.parent  as TAdvpanel).Name;

     if FcompoName = 'pnlWait' then //진료실
      begin

             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[0].Caption := ' 접수' +  '('+ inttostr(nJubsuCnt)    +')'  ;
             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[1].Caption := ' 보류' +  '('+ inttostr(nWaitCnt)     +')'  ;
             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[2].Caption := ' 예약' +  '('+ inttostr(nPromiseCnt)  +')'  ;
             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[3].Caption := ' 입원' +  '('+ inttostr(nInPatCnt)    +')'  ;
             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[4].Caption := ' 완료' +  '('+ inttostr(nSunapTotalCnt)    +')'  ;


      end
      else
      begin  //접수실


            main_f.DaegiFrame_fr1.tsMain.advTabs[0].Caption:=  ' 접수완료' +  '('+ inttostr(nJubsuCnt)    +')'  ;
            main_f.DaegiFrame_fr1.tsMain.advTabs[1].Caption:=  ' 보    류' +  '('+ inttostr(nWaitCnt)     +')'  ;
            main_f.DaegiFrame_fr1.tsMain.advTabs[2].Caption:=  ' 예약내역' +  '('+ inttostr(nPromiseCnt)  +')'  ;
            main_f.DaegiFrame_fr1.tsMain.advTabs[3].Caption:=  ' 입원내역' +  '('+ inttostr(nInPatCnt)    +')'  ;

            main_f.DaegiFrame_fr1.pgSunapDaegi.Pages[0].Caption := '수납대기' +  '('+ inttostr(nSunapWaitCnt) +')' ;//inttostr((grdSunapDaegi.RowCount-1)) +')' ;
            main_f.DaegiFrame_fr1.pgSunapDaegi.Pages[1].Caption := '수납완료' +  '('+ inttostr(nSunapCnt) +')' ;// '('+ inttostr((grdSunapFinish.RowCount-1)) +')' ;
      end;





end;

// Application object를 접근하므로 Synchronize 로 호출해야함
procedure TQueryThread.ShowQryError;
begin
  // Handle the exception
  Application.ShowException(FQueryException);
end;

procedure TDaegiFrame_fr.RunBackgroundQuery(DataBase: TuniConnection;
            Query: TuniQuery; aJinDay:string);
var
        compoName : string;
begin

   compoName := (Self.Parent.parent  as TAdvpanel).Name;

  {thread instance 생성}
//  TQueryThread.Create(Database, Query, aJinDay);
   aQueryThread.Free;
//  AQuery:= TQuery.Create;
//  AQuery.SQL.Text:= .....
   aQueryThread := TQueryThread.Create(Database, Query, aJinDay, compoName);
//  aQueryThread.OnTerminate:= MyTerminationHandler;


   aQueryThread.FreeOnTerminate:= false;

   aQueryThread.Resume;

 //  dispCount;

//   aQueryThread :=  TQueryThread.Create(Database, Query, aJinDay);
  //If the work is not over yet, we display message informing the user we're still working

// if Assigned(aQueryThread) then
//  begin
// //   aQueryThread.Free;
//
//   aQueryThread.Terminate;
//    aQueryThread.WaitFor;
//    FreeAndNil(aQueryThread);
//  end;
//  if (aQueryThread = nil) //and   then
//  then
////  aQueryThread.free;
//    //  (WaitForSingleObject(aQueryThread.Handle, 0)<>WAIT_OBJECT_0)
//      //then
//      begin
//          aQueryThread :=  TQueryThread.Create(Database, Query, aJinDay);
//         // aQueryThread.Free;
//      end;
//    MessageBox(Self.Handle, pchar("The work is not yet done!"), pchar("Still running"), MB_OK);
//e

////  aMsg := QueryThread.fMsg ;
//      nJubsuCnt          :=  dispCount.nJubsuCnt;// fQuery.FieldByName('nJubsuCnt').AsInteger ;
//      nInPatCnt          :=  dispCount.nInPatCnt;
//      nSunapWaitCnt      :=  dispCount.nSunapWaitCnt;
//      nSunapCnt          :=  dispCount.nSunapCnt;
//      nSunapTotalCnt     :=  dispCount.nSunapTotalCnt;
//      nPromiseCnt        :=  dispCount.nPromiseCnt;
//      nWaitCnt           :=  dispCount.nWaitCnt;
//    //  QueryThread.Free;

end;


procedure TDaegiFrame_fr.preShow(aKind : integer);
var
     varDaegiTabIndex: integer;
     path : string;
     FormInit :TIniFile;
     i : integer;

     compoName : string;
begin

     nStatus := 0;

     Path     := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varDaegiTabIndex      := FormInit.ReadInteger('ETC', 'Daegitabinfo', 0);

//     pnlSunapDaegi.Height  := FormInit.ReadInteger('splitInfo', 'WaitAccountHeight',100);
     pnlDaegimain.Height  := FormInit.ReadInteger('splitInfo', 'pnlDaegimainHeight',500);
     FormInit.Free;

     tsMain.BackgroundColor := $00F9EDE1;//

     lblYc.Caption := '0';
     lblNc.Caption := '0';
     lblNewPatient.Caption := '0';
   //Daegi List
     lblYc.Caption := '0';
     lblNc.Caption := '0';
     lblNewPatient.Caption := '0';

     dtDate.date := now;

     pgSunapDaegi.tabindex := 0;
     grdSunapFinish.align   := alClient;
     grdSunapDaegi.align    := alClient;

     pnlWaitingList.align   := alClient;


  //   pnlSunapDaegi.align   := alBottom;
  //   pnlDaegimain.align   := alClient;

     pnlDaegiInfo.height  := 40;//56;//75;
     pnlDaegiInfo.Caption := '';

     grdDaegi.align := alClient;

//     with grdDaegi do
//     begin
//        for I := 1 to 49 do
//              ColWidths[i]:=0;
//     end;


  // initAdvPanel(pnlDaegimain, dm_f.PictureContainer1 , 0);

   initAdvGrid(grdDaegi);
   initAdvGrid(grdSunapDaegi);
   initAdvGrid(grdSunapFinish);
   initAdvGrid(grdPromise);

   setArrayPanel;
     for I := 0 to 1 do
    begin
     initPanel(  pnlArray[i]);
    end;


    initAdvPanel(pnlDaegimain, dm_f.PictureContainer1 , 0);
    initAdvPanel(pnlSunapDaegi, dm_f.PictureContainer1);
//   initAdvGrid(grdPromise);


     LoadDefaultValue;



     {
접수
보류
예약
입원
수납}
     case aKind  of
        0 :     //접수창
            begin
                  tsMain.advTabs.Clear;

                  tsMain.advTabs.Add;
               //   tsMain.advTabs.Items[tsMain.advtabs.Count - 1].
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤ 접수완료';
                    tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :=' 접수완료';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤ 보    류' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :=' 보    류' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤ 예약내역' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :=' 예약내역' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤ 입원내역';
                    tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='입원내역';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

            end;
        1 :     //진료창
            begin
//                  tsMain.advTabs.Clear;
//                   tsMain.advTabs.Add('♤접  수') ;
//                   tsMain.advTabs.Add('♤보  류') ;
//                   tsMain.advTabs.Add('♤예  약') ;
//                   tsMain.advTabs.Add('♤입  원') ;
//                   tsMain.advTabs.Add('♤수  납') ;
               //    tsMain.Tabs.Add('♤수납') ;

                  tsMain.advTabs.Clear;
                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤접  수';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='접  수';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤보  류' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='보  류' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤예  약' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='예  약' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤입  원';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='입  원';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='♤수  납';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='완  료';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

            end;

     end;

     compoName := (Self.Parent.parent  as TAdvpanel).Name;

  if compoName = 'pnlDaegi' then   //Main_f
   begin
        pnlDaegimain.Align := alTop;

        if varDaegiTabIndex > 3 then
             varDaegiTabIndex := 0;

        tsMain.TabIndex := varDaegiTabIndex;
        //그리드 셋팅값을 불러오자...
        LoadGridColumnOrder(grdDaegi, 'mainform');
   end
   else
  if compoName = 'pnlWait' then   //JinRyo_f
   begin
        pnlDaegimain.Align := alClient;
        tsMain.TabIndex := varDaegiTabIndex;
        //그리드 셋팅값을 불러오자...
        LoadGridColumnOrder(grdDaegi,'jinryo');
   end;


//     daegiGridChange(varDaegiTabIndex);


     daegiselect(tsmain.TabIndex);

     RunBackgroundQuery(dm_f.UniConnection1,
        dm_f.sqlCount,
        formatdatetime('YYYY-MM-DD', dtDate.date));




//     StartThread;

//     timer1.Enabled := true;


     {$IFNDEF DEBUG}
        checkBox2.visible := false;
     {$ENDIF DEBUG}
end;

procedure TDaegiFrame_fr.AdvPopupMenu6Popup(Sender: TObject);
var
      compoName : string;
      newtab : integer;
begin
      newtab := tsmain.TabIndex;
      compoName := (Self.Parent.parent  as TAdvpanel).Name;

      if compoName = 'pnlDaegi' then   //Main_f
       begin
          n10.Visible := false;
          N8.Visible  := false;
          N38.Visible := false;
       end
       else
       if compoName = 'pnlWait' then   //JinRyo_f
       begin
          n10.Visible := true;
          N8.Visible  := true;
          N38.Visible := true;

          mnuJinDaegi.visible    := false;   // 보류를 접수로보내기
          mnuJubsuDelete.visible      := false;   // 접수취소
          mnuTxView_daegi.visible:= false;   // 처방보기
          mnuJubsuChange.visible            := false;   // 접수내역변경

         case newtab of
            0:
               begin

                  mnuJinDaegi.visible    := false;   // 보류를 접수로보내기
                  mnuJubsuDelete.visible      := true;   // 접수취소
                  mnuTxView_daegi.visible:= true;   // 처방보기
                  mnuJubsuChange.visible            := true;   // 접수내역변경

               end;
            1:
               begin
                  mnuJinDaegi.visible    := true;   // 보류를 접수로보내기
                   mnuJubsuChange.visible           := true;
               end;
            2:   //예약
               begin
                  N8.Visible  :=false  ;
               end;
            3:   //입원
               begin
                  N8.Visible  :=false  ;
               end;
            4:   //완료
               begin
                   N8.Visible  :=false  ;
               end;
         end;


       end;

end;

procedure TDaegiFrame_fr.btnDaegiDownArrowClick(Sender: TObject);
var
     r, i, j: integer;
begin
     timer1.Enabled := false;
     r := grdDaegi.Row;

     if (grdDaegi.OriginalCells[10, r] <> '0') then exit;

     //대기v 마지막 라인 체크
     if r = grdDaegi.rowcount - 1 then exit;

     //대기 마지막 라인 체크
     if grdDaegi.OriginalCells[10, r + 1] <> '0' then exit;

     grdDaegi.MoveRow(r, r + 1);
     grdDaegi.row := r + 1;

     //대기표 표시 순서를 바꾸고...
//     i := grdDaegi.ints[0, r + 1];
     i := strToInt(grdDaegi.originalCells[0, r + 1]);

     if varLoadOrderKind = '0' then
     begin

          grdDaegi.OriginalCells[0, r + 1] := inttostr(i + 1);
          grdDaegi.OriginalCells[0, r] := inttostr(i);
     end
     else
     begin
          grdDaegi.OriginalCells[0, r + 1] := inttostr(i - 1);

          grdDaegi.OriginalCells[0, r] := inttostr(i);
     end;

     //DB의 표시 순서를 바꾸자.....
//     j := grdDaegi.ints[27, r + 1];
     j := strToInt(grdDaegi.originalCells[27, r + 1]);

     grdDaegi.OriginalCells[27, r + 1] := inttostr(j - 1); //nOrder
     ChangeJubsuOrderNum(formatdatetime('YYYY-MM-DD', dtDate.date),
          grdDaegi.OriginalCells[3, r + 1], j - 1);

     grdDaegi.OriginalCells[27, r] := inttostr(j);  //nOrder
     ChangeJubsuOrderNum(formatdatetime('YYYY-MM-DD', dtDate.date),
          grdDaegi.OriginalCells[3, r], j);

     timer1.Enabled := true;

end;

procedure TDaegiFrame_fr.btnDaegiUpArrowClick(Sender: TObject);
var
     r, i, j: integer;
begin

     timer1.Enabled := false;
     r := grdDaegi.Row;
     if r <= 2 then exit;
     if (grdDaegi.OriginalCells[10, r] <> '0') then exit;

     grdDaegi.MoveRow(r, r - 1);
     grdDaegi.row := r - 1;

     //대기표 표시 순서를 바꾸고...
//     i := grdDaegi.ints[0, r - 1];
     i := strtoint(grdDaegi.originalCells[0, r - 1]);

     if varLoadOrderKind = '0' then
     begin

          grdDaegi.OriginalCells[0, r - 1] := inttostr(i - 1);
          grdDaegi.OriginalCells[0, r] := inttostr(i);
     end
     else
     begin
          grdDaegi.OriginalCells[0, r - 1] := inttostr(i + 1);

          grdDaegi.OriginalCells[0, r] := inttostr(i);
     end;

     //DB의 표시 순서를 바꾸자.....
//     j := grdDaegi.ints[27, r - 1];
     j:=  strtoint(grdDaegi.originalCells[27, r - 1]);

     grdDaegi.OriginalCells[27, r - 1] := inttostr(j + 1);
     ChangeJubsuOrderNum(formatdatetime('YYYY-MM-DD', dtDate.date),
          grdDaegi.OriginalCells[3, r - 1], j + 1);

     grdDaegi.OriginalCells[27, r] := inttostr(j);
     ChangeJubsuOrderNum(formatdatetime('YYYY-MM-DD', dtDate.date),
          grdDaegi.OriginalCells[3, r], j);

     timer1.Enabled := true;


end;

procedure TDaegiFrame_fr.btnRefreshClick(Sender: TObject);
var
   sTime     : integer;
   compoName : string;
begin
    try
    //      screen.cursor := crHourglass;
      //    (sender as TadvShapeButton).Enabled := false;
        if checkBox2.Checked= false then
        begin

              dtDate.date := now;

        end;



        // DaDaegiSelectData(formatdatetime('YYYY-MM-DD', dtDate.date));

         stime:= GettickCount;


         //ToDo : 속도 개선 필요... 속도가 느려서  daegiselect에서 옮겨 놓음.
         //약 1초~2초사이
//         CountDaegi(formatdatetime('YYYY-MM-DD', dtDate.date) , //jin_day:string;
//             cbAF.checked,
//             nJubsuCnt       ,
//             nWaitCnt        ,
//             nInPatCnt       ,
//             nPromiseCnt     ,
//             nSunapTotalCnt  ,
//             nSunapWaitCnt   ,
//             nSunapCnt  );

          daegiselect(tsmain.TabIndex);

//         DispCount;

          RunBackgroundQuery(dm_f.UniConnection1,
              dm_f.sqlCount,
              formatdatetime('YYYY-MM-DD', dtDate.date));


          compoName := (Self.Parent.parent  as TAdvpanel).Name;

          if compoName = 'pnlDaegi' then   //Main_f
           begin

                 main_f.lblStatus.Caption := inttostr(GetTickCount - stime) + 'ms';

           end
           else
          if compoName = 'pnlWait' then   //JinRyo_f
           begin

                jinryo_f.lblstatus.Caption := inttostr(GetTickCount - stime) + 'ms';

           end;





    finally
    //    screen.cursor := crDefault;
    //    (sender as TadvShapeButton).Enabled := true;;

    end;
end;

procedure TDaegiFrame_fr.Button10Click(Sender: TObject);
begin

      pnlEditRemark.visible:= not   pnlEditRemark.visible;

end;

procedure TDaegiFrame_fr.Button1Click(Sender: TObject);
begin
     // saveGridColumnOrder('');
end;


procedure TDaegiFrame_fr.Button2Click(Sender: TObject);
begin
    //  LoadGridColumnOrder('');
end;



procedure TDaegiFrame_fr.Button4Click(Sender: TObject);
begin
          RunBackgroundQuery(dm_f.UniConnection1,
              dm_f.sqlCount,
              formatdatetime('YYYY-MM-DD', dtDate.date));


end;

procedure TDaegiFrame_fr.Button9Click(Sender: TObject);
begin
  if Update_jubsuChamgo(  lblJubsuID.Caption, memo1.Text) = true then
    begin

          //DaegiFrame_fr.DaegiSelect;
          pnlEditRemark.visible:= false;

    end;
end;

procedure TDaegiFrame_fr.daegiGridChange(index : integer);
var
     FormInit: Tinifile;
     path: string;
     grdDaegiValue : string;
begin
     Path := GetConfigDir + 'db.ini';
     FormInit := Tinifile.Create(path);

  //   grdDaegiValue := FormInit .ReadString('main_grdDaegi','col0',0)

    case  index  of
    0:
    begin


    if FormInit.SectionExists('main_grdDaegi') = false then
    begin
     with grdDaegi do
     begin
          ColWidths[0] := 25; //no.
          ColWidths[1] := 25; //icon
          ColWidths[2] := 0; //일자
          ColWidths[3] := 58; //성명
          ColWidths[4] := 0; //차트번호
          ColWidths[5] := 0; //팀
          ColWidths[6] := 0; //전담위생사
          ColWidths[7] := 0; //구분
          ColWidths[8] := 34; //접수시간
          ColWidths[9] := 34; //대기시간
          ColWidths[10] := 34; //예약시간
          ColWidths[11] := 140; //예약시간/내역
          ColWidths[12] := 0;
          ColWidths[13] := 0;
          ColWidths[14] := 0;
          ColWidths[15] := 0;
          ColWidths[16] := 0;
          ColWidths[17] := 0; //PR_IDN
          ColWidths[18] := 0;
          ColWidths[19] := 0;
          ColWidths[20] := 0;
          ColWidths[21] := 0;
          ColWidths[22] := 0;
          ColWidths[23] := 0;
          ColWidths[24] := 0;
          ColWidths[25] := 0;
          ColWidths[26] := 0;
          ColWidths[27] := 0;
          ColWidths[28] := 0;
       end;
     end;
//        grdDaegi.ColumnHeaders.Clear;
//        grdDaegi.ColumnHeaders.Add('');
//        grdDaegi.ColumnHeaders.Add('ico');
//        grdDaegi.ColumnHeaders.Add('일자');
//        grdDaegi.ColumnHeaders.Add('성명');
//        grdDaegi.ColumnHeaders.Add('차트번호');
//        grdDaegi.ColumnHeaders.Add('팀');
//        grdDaegi.ColumnHeaders.Add('전담위생사');
//        grdDaegi.ColumnHeaders.Add('구분');
//        grdDaegi.ColumnHeaders.Add('접수');
//        grdDaegi.ColumnHeaders.Add('대기');
//        grdDaegi.ColumnHeaders.Add('예약');
//        grdDaegi.ColumnHeaders.Add('내역');
//        grdDaegi.ColumnHeaders.Add('예약참고사항');
//        grdDaegi.ColumnHeaders.Add('진료시작시간');
//        grdDaegi.ColumnHeaders.Add('진료마침시간');
//        grdDaegi.ColumnHeaders.Add('수납시간');
//        grdDaegi.ColumnHeaders.Add('휴대폰');
//        grdDaegi.ColumnHeaders.Add('pidn');
//        grdDaegi.ColumnHeaders.Add('초진일');
//        grdDaegi.ColumnHeaders.Add('체어');
//        grdDaegi.ColumnHeaders.Add('주민번호');
//        grdDaegi.ColumnHeaders.Add('예약시간');
//        grdDaegi.ColumnHeaders.Add('예약참고사항');
//        grdDaegi.ColumnHeaders.Add('대기시간');
//        grdDaegi.ColumnHeaders.Add('원장명');
//        grdDaegi.ColumnHeaders.Add('nOrder');
//        grdDaegi.ColumnHeaders.Add('Color');
//
    end;
    2:
        begin

//            grdDaegi.ColumnHeaders.Clear;
//            grdDaegi.ColumnHeaders.Add('');
//            grdDaegi.ColumnHeaders.Add('ico');
//            grdDaegi.ColumnHeaders.Add('일자');
//            grdDaegi.ColumnHeaders.Add('성명');
//            grdDaegi.ColumnHeaders.Add('차트번호');
//            grdDaegi.ColumnHeaders.Add('팀');
//            grdDaegi.ColumnHeaders.Add('전담위생사');
//            grdDaegi.ColumnHeaders.Add('구분');
//            grdDaegi.ColumnHeaders.Add('시간');
//            grdDaegi.ColumnHeaders.Add('예약내역');
//            grdDaegi.ColumnHeaders.Add('시간');
//            grdDaegi.ColumnHeaders.Add('');
//            grdDaegi.ColumnHeaders.Add('예약참고사항');
//            grdDaegi.ColumnHeaders.Add('진료시작시간');
//            grdDaegi.ColumnHeaders.Add('진료마침시간');
//            grdDaegi.ColumnHeaders.Add('수납시간');
//            grdDaegi.ColumnHeaders.Add('휴대폰');
//            grdDaegi.ColumnHeaders.Add('pidn');
//            grdDaegi.ColumnHeaders.Add('초진일');
//            grdDaegi.ColumnHeaders.Add('체어');
//            grdDaegi.ColumnHeaders.Add('주민번호');
//            grdDaegi.ColumnHeaders.Add('예약시간');
//            grdDaegi.ColumnHeaders.Add('예약참고사항');
//            grdDaegi.ColumnHeaders.Add('대기시간');
//            grdDaegi.ColumnHeaders.Add('원장명');
//            grdDaegi.ColumnHeaders.Add('nOrder');
//            grdDaegi.ColumnHeaders.Add('Color');

            if FormInit.SectionExists('main_grdDaegi') = false then
            begin
              with grdDaegi do
               begin
                    ColWidths[0] := 0; //icon
                    ColWidths[1] := 30; //icon
                    ColWidths[2] := 0; //일자
                    ColWidths[3] := 50; //성명
                    ColWidths[4] := 0; //차트번호
                    ColWidths[5] := 0; //팀
                    ColWidths[6] := 0; //전담위생사
                    ColWidths[7] := 0; //구분
                    ColWidths[8] := 38; //대기시간
                    ColWidths[9] := 140; //예약내역
                    ColWidths[10] := 0; //예약시간
                    ColWidths[11] := 0; //예약시간/내역
                    ColWidths[12] := 0;
                    ColWidths[13] := 0;
                    ColWidths[14] := 0;
                    ColWidths[15] := 0;
                    ColWidths[16] := 0;
                    ColWidths[17] := 0; //PR_IDN
                    ColWidths[18] := 0;
                    ColWidths[19] := 0;
                    ColWidths[20] := 0;
                    ColWidths[21] := 0;
                    ColWidths[22] := 0;
                    ColWidths[23] := 0;
                    ColWidths[24] := 0;
                    ColWidths[25] := 0;
                    ColWidths[26] := 0;
                    ColWidths[27] := 0;
                    ColWidths[28] := 0;
               end;
             end;
        end;
    end;
end;


procedure TDaegiFrame_fr.DaegiSelect(index : integer);

var
      daegiTeamIndex : string;


      nCnt             :integer;
      tabIndex         : integer;


      compoName : string;
      sTime : integer;
begin
    try
       screen.cursor := crHourGlass;

      sTime := getTickCount;

//     dm_f.SqlChart.Active := true;
//     dm_f.DataSource1.DataSet.Active := true;

      daegiTeamIndex :=  cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
   //   cbTeam.text;//cbDoc2.ColumnItems[cbDoc2.itemindex, 0];

 //    grdDaegi.RemoveRows(1,grdDaegi.RowCount-1);

    //   grdDaegi.RemoveRows(1,grdDaegi.RowCount-1);

    //   case tsmain.TabIndex of
         case Index of
          0:   //접수완료
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    '0',//inttostr(cbDaegigubun.itemindex - 1), //구분
                    daegiTeamIndex //팀
                    );
          1:   //접수보류  4
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    '4',//inttostr(cbDaegigubun.itemindex - 1), //구분
                    daegiTeamIndex //팀
                    );
          2:   //예약내역
               promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    daegiTeamIndex //팀
                    );
          3:   //입원     5
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    '5',//inttostr(cbDaegigubun.itemindex - 1), //구분
                    daegiTeamIndex //팀
                    );

          4:   //수납대기+완료 6
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    '6',//inttostr(cbDaegigubun.itemindex - 1), //구분
                    daegiTeamIndex //팀
                    );
          5:   //수납완료 3
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    '3',//inttostr(cbDaegigubun.itemindex - 1), //구분
                    daegiTeamIndex //팀
                    );
          6:    //????? 미정
               JPselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    daegiTeamIndex //팀
                    );
     end;


          compoName := (Self.Parent.parent  as TAdvpanel).Name;

          if compoName = 'pnlDaegi' then   //Main_f
           begin

                case pgSunapDaegi.ActivePageIndex of
                    0:
                    begin

                         SunapView('0', grdSunapDaegi, nCnt, '',  formatdatetime('YYYY-MM-DD', dtDate.date));  //수납대기

                    end;
                    1:
                    begin

                         SunapView('1', grdSunapFinish, nCnt, '', formatdatetime('YYYY-MM-DD', dtDate.date));   //수납완료

                    end;
  //        0:  SunapView('0', grdSunapDaegi, '');
  //        1:  SunapView('1', grdSunapFinish,'');
                end;

                 main_f.lblStatus.Caption := inttostr(GetTickCount - stime) + 'ms';

           end
           else
          if compoName = 'pnlWait' then   //JinRyo_f
           begin

                jinryo_f.lblstatus.Caption := inttostr(GetTickCount - stime) + 'ms';

           end;
    finally
         screen.Cursor := crDefault;
    end;
end;





procedure TDaegiFrame_fr.DispCount;
var
   compoName : string;

begin


//      ♤ 접수완료
//      ♤ 보    류
//      ♤ 예약내역
//      ♤ 입원내역
//      ♤ 수납대기
//      ♤ 수납완료



      compoName := (Self.Parent.parent  as TAdvpanel).Name;

     if compoName = 'pnlWait' then //진료실
      begin

//            tsMain.advTabs[0].Caption := ' ♤ 접수' +  '('+ inttostr(nJubsuCnt)    +')'  ;
//            tsMain.advTabs[1].Caption := ' ♤ 보류' +  '('+ inttostr(nWaitCnt)     +')'  ;
//            tsMain.advTabs[2].Caption := ' ♤ 예약' +  '('+ inttostr(nPromiseCnt)  +')'  ;
//            tsMain.advTabs[3].Caption := ' ♤ 입원' +  '('+ inttostr(nInPatCnt)    +')'  ;
//            tsMain.advTabs[4].Caption := ' ♤ 수납' +  '('+ inttostr(nSunapTotalCnt)    +')'  ;


            tsMain.advTabs[0].Caption := ' 접수' +  '('+ inttostr(nJubsuCnt)    +')'  ;
            tsMain.advTabs[1].Caption := ' 보류' +  '('+ inttostr(nWaitCnt)     +')'  ;
            tsMain.advTabs[2].Caption := ' 예약' +  '('+ inttostr(nPromiseCnt)  +')'  ;
            tsMain.advTabs[3].Caption := ' 입원' +  '('+ inttostr(nInPatCnt)    +')'  ;
            tsMain.advTabs[4].Caption := ' 완료' +  '('+ inttostr(nSunapTotalCnt)    +')'  ;


      end
      else
      begin  //접수실

//            tsMain.advTabs[0].Caption:=  ' ♤ 접수완료' +  '('+ inttostr(nJubsuCnt)    +')'  ;
//            tsMain.advTabs[1].Caption:=  ' ♤ 보    류' +  '('+ inttostr(nWaitCnt)     +')'  ;
//            tsMain.advTabs[2].Caption:=  ' ♤ 예약내역' +  '('+ inttostr(nPromiseCnt)  +')'  ;
//            tsMain.advTabs[3].Caption:=  ' ♤ 입원내역' +  '('+ inttostr(nInPatCnt)    +')'  ;

            tsMain.advTabs[0].Caption:=  ' 접수완료' +  '('+ inttostr(nJubsuCnt)    +')'  ;
            tsMain.advTabs[1].Caption:=  ' 보    류' +  '('+ inttostr(nWaitCnt)     +')'  ;
            tsMain.advTabs[2].Caption:=  ' 예약내역' +  '('+ inttostr(nPromiseCnt)  +')'  ;
            tsMain.advTabs[3].Caption:=  ' 입원내역' +  '('+ inttostr(nInPatCnt)    +')'  ;

            pgSunapDaegi.Pages[0].Caption := '수납대기' +  '('+ inttostr(nSunapWaitCnt) +')' ;//inttostr((grdSunapDaegi.RowCount-1)) +')' ;
            pgSunapDaegi.Pages[1].Caption := '수납완료' +  '('+ inttostr(nSunapCnt) +')' ;// '('+ inttostr((grdSunapFinish.RowCount-1)) +')' ;
      end;

end;


procedure TDaegiFrame_fr.dtDateCloseUp(Sender: TObject);
var
    compoName : string;
    nTabIndex : integer;
begin

  try
      screen.Cursor := crHourGlass;

     nTabIndex:= tsmain.TabIndex;
     //ToDo : 속도 개선 필요... 속도가 느려서  daegiselect에서 옮겨 놓음.
//     CountDaegi(formatdatetime('YYYY-MM-DD', dtDate.date) , //jin_day:string;
//             cbAF.checked,
//         nJubsuCnt       ,
//         nWaitCnt        ,
//         nInPatCnt       ,
//         nPromiseCnt     ,
//         nSunapTotalCnt  ,
//         nSunapWaitCnt   ,
//         nSunapCnt  );
      //ToDo : DtChange이벤트에서 하면 이 프로시저를 두번 탄다.CloseUp으로  수정 함.
      nTabIndex:= tsmain.TabIndex;


      daegiselect(nTabIndex);//tsmain.TabIndex);

//      DispCount;
      RunBackgroundQuery(dm_f.UniConnection1,
          dm_f.sqlCount,
          formatdatetime('YYYY-MM-DD', dtDate.date));

      compoName := (Self.Parent.parent  as TAdvpanel).Name;

     if compoName = 'pnlWait' then
      begin

          jinryo_f.dmain.Date := dtDate.Date;
          // 캡션날짜 동기화
           jinryo_f.DaySet(dtDate.Date);
          /// dmain.date);
           jinryo_f.GetHoliday;

          // CalendarChangeSave;
          //      dMain.Date := RealGrid17.Cells[0,  RealGrid17.Row].AsDateTime;


          //   jinryo_f.dMainDaySelect(jinryo_f,  jinryo_f.dmain.date);

      end;

//
//        KillThreads;
//      // Reset thread id counter
//        nThreads := 0;
//      // Clear listbox results
//    //  lbResults.Items.Clear;
//      // clear shared resource
//        ClearQueryTimes;
//
//        StartThread;

  finally
        screen.Cursor := crDefault;
  end;

end;

procedure TDaegiFrame_fr.grdDaegiClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
     Button: TMouseButton;

     btnRect: Trect;
     varTag : string;
     compoName : string;
     treatRoom : string;
     doc : string;

     grdRect: Trect;
     i  : integer;
     LockStatResult : TLockStatResult ;
     DoLock : boolean; //락을 걸어라.

     nIO : integer; //입원, 외래 구분 0: 외래, 1: 숙박 2: 낮

     sTime : integer;
     irealCol : integer;
begin

   try

     isNeyukLoad := false;



     stime := GetTickCount;

     grdRect := grdDaegi.CellRect(ACol, Arow);

//   showmessage( inttostr( grdDaegi.RealColIndex(aCol) ));
//   showmessage( inttostr( grdDaegi.DisplColIndex(aCol) ));

     if (aRow=0) and (acol=0) then
     begin

             gridColSelect(grdDaegi, grdRect, clbColumnCheck);
//          if clbColumnCheck.visible = false then
//          begin
//
//             with clbColumnCheck do  //ColumnCheck do//
//             begin
//
//                  Items.Clear;
//
//                   for I := 0 to grdDaegi.ColumnHeaders.Count -1 do
//                   begin
//                         Items.Add(grdDaegi.ColumnHeaders[i]) ;
//
//                        if grdDaegi.ColWidths[i] <> 0  then
//                            Checked[i]:= true;
//
//                   end;
//
//                   width:= 165;
//
//                   Left   :=   grdRect.left +  grdDaegi.fixedColWidth;
//                   top    :=   grdRect.Top  +  grdDaegi.fixedRowHeight;   ;// +( btnRect.Bottom- btnRect.Top);
//                    //  width :=  grdRect.right -  grdRect.left ;
//                   height :=   grdDaegi.Height - 50;
//
//                   Visible := true;
//
//             end;
//          end
//          else
//          begin
//
//              with clbColumnCheck do  //ColumnCheck do//
//             begin
//                       for I := 0 to grdDaegi.ColumnHeaders.Count -1 do
//                       begin
//
//                            if  Checked[i]= false then
//
//                              grdDaegi.ColWidths[i] :=  0 ;
//
//
//                       end;
//                       Visible := false;
//             end;
//
//          end;

     end;

     if (arow > 0) then
     begin
          case aCol of

              -1:   //ico
                    begin
//                         if (grdDaegi.ints[7, aRow] = 0)
//                              //  진료대기 이거나...
//                         or (grdDaegi.ints[7, aRow] = 1) then
//                              //  진료중 체어를 바꾸는 경우
//                         begin
//
//
//
//                              //showmessage('Choice Unit Chair');
//                              if not assigned(choiceChair_f) then
//                                   choiceChair_f :=
//                                        TchoiceChair_f.Create(application);
//
//
//
//
//                             choiceChair_f.varjinDay  :=  dtDate.dateTime;
//
//                              if (screen.height - mouse.CursorPos.y) > choiceChair_f.height then
//                                 choiceChair_f.top :=  mouse.CursorPos.y
//                              else
//                                 choiceChair_f.top :=  mouse.CursorPos.y - choiceChair_f.height;
//
//
//                              if (screen.width - mouse.CursorPos.x) > choiceChair_f.width then
//                                 choiceChair_f.left := mouse.CursorPos.x // grdDaegi.left;
//                              else
//                                 choiceChair_f.left := mouse.CursorPos.x - choiceChair_f.Width ;// grdDaegi.left;
//
//                              varPidn2 := grdDaegi.OriginalCells[17, aRow];
//                             if     choiceChair_f.showmodal = mrOk then
//                             begin
//
//
//                                     if  choiceChair_f.varJubsuId <> '' then
//                                     begin
//
//                                          if Application.MessageBox(pchar(
//                                          '이미 체어'+  choiceChair_f.varChair + '를 사용중입니다.'+#10#13+
//                                             '기존 대기상태를 수납대기로 변경 하시겠습니까?'), '확인', MB_YESNO) = 6 then
//                                          begin
//                                                varTag := '2';  //수납대기
//                                               if ChangeStatus_JubsuID(choiceChair_f.varJubsuId)  = true then
//                                               begin
//
//
//                                               end;
//
//                                          end;
//
//                                    end;
//
//
//                                           varTag := '1';  //수납대기
//
//                                          if ChangeStatus(grdDaegi.OriginalCells[3,grdDaegi.Row],
//                                               formatdatetime('yyyy-mm-dd', dtDate.date),
//                                              grdDaegi.OriginalCells[5, grdDaegi.Row],// varPrTeam,
//                                                grdDaegi.OriginalCells[4, grdDaegi.Row],
//                                                    '', varTag, choiceChair_f.varChair) = true then
//                                          begin
//                                               jubsuselect(grdDaegi,
//                                                    formatdatetime('yyyy-mm-dd', dtDate.date), //일자
//                                                    inttostr(cbDaegigubun.itemindex - 1), //구분
//                                                       cbteam.Text //팀
//                                                    );
//                                               if trim(grdDaegi.OriginalCells[17, grdDaegi.Row]) <> '' then  //  varPridn
//                                                    Promise_UpdatePos(strtoint(trim(grdDaegi.OriginalCells[17, grdDaegi.Row])), vartag);
//
//                                          end;
//
//
//
//                             end;
//                         end;

                        //   showmessage(ma_jubsu_id);

                    end;

               1..65:

                    begin

                         compoName := (Self.Parent.parent  as TAdvpanel).Name;

                         if grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), arow] <> '' then   //차트번호
                         begin
                              if
                                   LoadGogekData_chart(grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), arow], progressbar, varViewAll) =
                                   true then
                              begin

                              //     jubsuID :=  grdDaegi.OriginalCells[grdDaegi.RealColIndex(33), arow] ;


                                   ma_jubsu_ID := grdDaegi.OriginalCells[grdDaegi.RealColIndex(35), arow];
                                   varPidn2    := grdDaegi.OriginalCells[grdDaegi.RealColIndex(20), aRow];//예약ID




                                 //  ma_rp_RequestPK :=  grdDaegi.ints[grdDaegi.RealColIndex(55), arow] ;
                                   ma_rp_RequestPK :=  strtoint(grdDaegi.originalCells[grdDaegi.RealColIndex(55), arow]);

                                   if ma_rp_RequestPK > 0 then
                                      isReferer := true;


                                    if compoName = 'pnlDaegi' then //접수실
                                    begin





                                         if trim( grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), arow]) ='' then
                                         begin
                                            main_f.FieldClear;
                                            exit;
                                         end;


                                        if checkInt( grdDaegi.OriginalCells[grdDaegi.RealColIndex(57), arow] ) then

                                            nIO := strToInt( grdDaegi.OriginalCells[grdDaegi.RealColIndex(57), arow] )
                                        else
                                            nIO := 0;




                                      //  main_f.cbDoc.BeginUpdate;

                                        TreatRoom := grdDaegi.OriginalCells[54, arow];

                                        if TreatRoom  <>'' then   //TreatRoom
                                        begin
                                          main_f.cbTreatRoom.ItemIndex :=
                                                main_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;
                                                                               //   공단검진
                                          LoadDoclist( main_f.cbDoc, TreatRoom);
                                       end
                                        else
                                        begin
                                          main_f.cbTreatRoom.ItemIndex := 0;
                                        end;

                                        //LoadDoclist에서 cbDoc을 초기화 한다.
                                        main_f.Fieldset;

                                        ma_PatIn :=  nIO;
                                        main_f.cbIO.itemIndex := nIO;

                                        if  grdDaegi.OriginalCells[grdDaegi.RealColIndex(65), arow]  ='1' then
                                        begin
                                             main_f.cbBohum100.checked  :=  true;
                                             ma_isBohum100 := '1';
                                        end
                                        else
                                        begin
                                             main_f.cbBohum100.checked := false;
                                             ma_isBohum100 := '0';
                                        end;

                                    //    main_f.cbJong.ItemIndex      := grdDaegi.ints[grdDaegi.RealColIndex(52), arow] ;  //jongbyul
                                    //    main_f.cbChoje.ItemIndex     := grdDaegi.ints[grdDaegi.RealColIndex(53), arow] ;;  //choje

                                       main_f.cbJong.ItemIndex      :=strtointDef(grdDaegi.originalCells[grdDaegi.RealColIndex(52), arow],0);
                                       main_f.cbChoje.ItemIndex     :=strtointDef(grdDaegi.originalCells[grdDaegi.RealColIndex(53), arow],0);
                                   //     main_f.cbTreatRoom.ItemIndex := grdDaegi.ints[44, arow] ;  //TreatRoom

                                       ma_jongbeul := inttoStr( strtoIntDef(grdDaegi.originalCells[grdDaegi.RealColIndex(52), arow],0)+1);

                                       ma_choje    :=  strtoIntDef(grdDaegi.originalCells[grdDaegi.RealColIndex(53), arow],0)+1 ;
                                       ma_jinTime  :=  grdDaegi.originalCells[grdDaegi.RealColIndex(13), arow] ;




//                                         doc := trim( grdDaegi.OriginalCells[24, arow]);
//
//
//                                        if doc <> '' then   //Doc
//                                          main_f.cbdoc.ItemIndex :=
//                                           main_f.cbDoc.ComboItems.IndexInColumnOf(2, Doc )
//                                        else
//                                          main_f.cbdoc.ItemIndex := 0;
                                        if checkint(grdDaegi.OriginalCells[grdDaegi.RealColIndex(40), arow]   ) = true then
                                        begin
                                            main_f.cbSanCode3.ItemIndex   := strToint( grdDaegi.originalCells[grdDaegi.RealColIndex(40), arow] ); //health
                                            ma_healthSanCode              := strToint( grdDaegi.originalCells[grdDaegi.RealColIndex(40), arow] );
                                        end
                                        else
                                        begin
                                            main_f.cbSanCode3.ItemIndex   := 0;
                                            ma_healthSanCode              := 0;
                                        end;

                                        main_f.edtSanjung.text        := grdDaegi.OriginalCells[grdDaegi.RealColIndex(39), arow]; //sanjung
                                        main_f.edtFirst.text          := grdDaegi.OriginalCells[grdDaegi.RealColIndex(21), arow]; //first_day
                                        ma_jubsu_ID                   := grdDaegi.OriginalCells[grdDaegi.RealColIndex(35), arow];
                                        main_f.edtJiwon.text        := grdDaegi.OriginalCells[grdDaegi.RealColIndex(64), arow]; //산젇특례 지원금 여부

                                        varGridprIdn                  := grdDaegi.OriginalCells[grdDaegi.RealColIndex(20), arow];

//                                        if varGridPridn <>'' then
//                                        begin
//                                               Promise_SelectData(strtoint(varGridprIdn));
//
//                                            //예약 할때 의뢰병원 정보 가져오자.
//                                             //============================================================================
//                                               main_f.edtreferHospName.Text:= LoadReferHospName(varrHospCode);
//                                               main_f.edtReferHospCode.text:= varrHospCode;
//
//                                               if varrHospCode <> ''then
//                                                   main_f.cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(varrHospCode) )
//                                               else
//                                                   main_f.cbReferHospDoc.Clear;
//
//
//                                               main_f.cbReferHospDoc.ItemIndex :=
//                                                     main_f.cbReferHospDoc.Items.IndexOf(varrHospDocName) ;
//                                             //============================================================================
//
//
//                                        end;

                                        doc := trim( grdDaegi.OriginalCells[26, arow]);


                                        if doc <> '' then   //Doc
                                          main_f.cbdoc.ItemIndex :=
                                                   main_f.cbDoc.ComboItems.IndexInColumnOf(2, Doc )
                                        else
                                          main_f.cbdoc.ItemIndex := 0;


                                     //  main_f.cbDoc.EndUpdate;


                                        main_f.lblStatus.Caption := inttostr(GetTickCount - stime) + 'ms';

                                    end;

                                    if compoName = 'pnlWait' then //진료실
                                    begin

                                        if trim( grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), arow]) ='' then
                                         begin
                                            jinryo_f.fieldClear;
                                            exit;
                                         end;

                                        jinryo_f.dmain.Date :=
                                              strtodate(grdDaegi.originalCells[grdDaegi.RealColIndex(2), arow]);

                                        jinryo_f.lblChart.Caption := grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), arow];
                                        jinryo_f.lblJubsuID.caption := grdDaegi.OriginalCells[grdDaegi.RealColIndex(35), arow];
                                        Jinryo_f.rpPk := strtoint( grdDaegi.originalCells[grdDaegi.RealColIndex(55), arow]) ;




                                        varGridprIdn          := grdDaegi.OriginalCells[grdDaegi.RealColIndex(20), arow];

                                        if trim(grdDaegi.OriginalCells[grdDaegi.RealColIndex(66), arow]) <> '' then
                                              jinryo_f.aDateTime    := strToDateTime(grdDaegi.OriginalCells[grdDaegi.RealColIndex(66), arow])
                                        else
                                              jinryo_f.aDateTime    :=  now;

                                        TreatRoom             := trim(grdDaegi.OriginalCells[54, arow]);

                                        if TreatRoom  <>'' then   //TreatRoom
                                        begin

                                        //ToDo : 왜 진료실에서 대기를 클릭하면 진료실 정보가 사라지나?
                                        Jinryo_f.cbTreatRoom.Update;

                                        Jinryo_f.cbTreatRoom.ItemIndex :=
                                                Jinryo_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;

                                        LoadDoclist( Jinryo_f.cbDoc, TreatRoom);
                                       end
                                        else
                                        begin
                                          Jinryo_f.cbTreatRoom.ItemIndex := 0;
                                        end;







                                         doc := trim( grdDaegi.OriginalCells[26, arow]);
                                        if doc <> '' then   //Doc
                                          Jinryo_f.cbdoc.ItemIndex :=
                                                   Jinryo_f.cbDoc.ComboItems.IndexInColumnOf(2, Doc )
                                        else
                                          Jinryo_f.cbdoc.ItemIndex := 0;



                                        Jinryo_f.syncJa;
                                        Jinryo_f.JinryoHistoryView( grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), arow]);

                                        jinryo_f.lblisInPat.caption     := grdDaegi.OriginalCells[grdDaegi.RealColIndex(57), arow];

                                        if  grdDaegi.OriginalCells[grdDaegi.RealColIndex(65), arow]  ='1' then
                                        begin
                                             jinryo_f.cbBohum100.checked  :=  true;
                                             ma_isBohum100 := '1';
                                        end
                                        else
                                        begin
                                             jinryo_f.cbBohum100.checked := false;
                                             ma_isBohum100 := '0';
                                        end;

                                        //입원일
                                        if copy(grdDaegi.OriginalCells[grdDaegi.RealColIndex(58), arow], 1,10) <> '' then
                                           jinryo_f.datetimepicker4.Date   := strtoDate( copy(grdDaegi.OriginalCells[grdDaegi.RealColIndex(58), arow], 1,10));



                                        if checkInt(jinryo_f.lblisInPat.caption ) then
                                            nIO := strToInt(jinryo_f.lblisInPat.caption )
                                         else
                                            nIO := 0;

                                         jinryo_f.cbIO.ItemIndex := nIO;

                                        if nIO > 0 then
                                          jinryo_f.btnOutHosp.Visible := true
                                        else
                                          jinryo_f.btnOutHosp.Visible := false;

                                        Jinryo_f.FieldSetJin(ma_chart, grdDaegi.OriginalCells[2, arow] );

                                    //    Jinryo_f.LoadJinryo_S(ma_chart);

                                        Jinryo_f.LoadJinryo_TxHx(ma_chart);
                                        Jinryo_f.LoadJinryo_TxHx_MakeNode;







                                         {
                                          35  접수 ID         <<<========
                                          36  참고사항
                                          37  종별jongbyul
                                          38  초재chojae
                                          39  sanjung
                                          40  health
                                          41  pregnan
                                          42  chasangno
                                          43  bontype
                                          44  yujikum
                                          45  kwamok
                                          46  진료실 treatRoom
                                          47  artteeth1
                                          48  artteeth2
                                          49  implteeth1
                                          50  implteeth2
                                          51  jubsu_id         <<<======== 사용안함
                                          52  jongbyul 코드
                                          53  chojae 코드
                                          54  treatRoom 코드
                                          55 rpPk  Referal Pad===>   Rp_Request..PK
                                          56    teakRye
                                          57    입원
                                          58    입원시간
                                          59    퇴원
                                          60    퇴원시간
                                          61    자보

                                          }

                                        // 날짜는 맞추자...
                                        /// jinryo_f.dmain.Date := dtDate.Date;
                                        // jinryo_f.dmainDaySelect(jinryo_f,  jinryo_f.dmain.Date);




                                        {
                                        main_f.cbJong.ItemIndex      :=strtoint(grdDaegi.originalCells[grdDaegi.RealColIndex(52), arow]);
                                        main_f.cbChoje.ItemIndex     :=strtoint(grdDaegi.originalCells[grdDaegi.RealColIndex(53), arow]);
}

                                        Jinryo_f.cbJong.ItemIndex       := strtoint(grdDaegi.originalCells[grdDaegi.RealColIndex(52), arow]) ;  //jongbyul
                                        Jinryo_f.cbChoje.ItemIndex      := strtoint(grdDaegi.originalCells[grdDaegi.RealColIndex(53), arow]) ;  //choje
                                        Jinryo_f.cbSanCode3.ItemIndex   := strtoint(grdDaegi.originalCells[grdDaegi.RealColIndex(40), arow]) ;  //health
                                        Jinryo_f.edtFirst.text          := grdDaegi.OriginalCells[grdDaegi.RealColIndex(21), arow]; //first_day
                                        Jinryo_f.edtLast.text           := ma_last;
                                      //  Jinryo_f.edtSanjung.text        := grdDaegi.OriginalCells[grdDaegi.RealColIndex(39), arow]; //sanjung

                                          ma_jongbeul := inttoStr( strtoIntDef(grdDaegi.originalCells[grdDaegi.RealColIndex(52), arow],0)+1);
                                          ma_choje    :=  strtoIntDef(grdDaegi.originalCells[grdDaegi.RealColIndex(53), arow],0)+1 ;


                                    //    if trim(Jinryo_f.edtSanjung.text) <> '' then
                                        if (trim(grdDaegi.OriginalCells[grdDaegi.RealColIndex(39), arow]) <> '')
                                           and (
                                           (ma_jongbeul <> '4')  or   //일반
                                           (ma_jongbeul <> '7')  or   //산재
                                           (ma_jongbeul <> '8')  )    //자보

                                            then    //일반, 산재, 자보 이면  산정특례대상자 확인 필요X
                                        begin
                                            //  Jinryo_f.cbSanjungTeakRye.Checked := false;
                                            // showmessage('산정특례대상자입니다. 진단명을 확인하세요.');
                                            //Showmessag는 마우스 오른쪽 버튼을 방해한다. 그래서panel로바꾸자.
                                            Jinryo_f.pnlSanjungTeakRye.visible:= true;

                                            //pnlSanjungTeakRye를 폼 중간에
                                            Jinryo_f.pnlSanjungTeakRye.Left := ( Jinryo_f.Width div 2)
                                                 - (Jinryo_f.pnlSanjungTeakRye.width div 2) ;
                                            Jinryo_f.pnlSanjungTeakRye.top := ( Jinryo_f.height div 2)
                                                 - (Jinryo_f.pnlSanjungTeakRye.height div 2) ;


                                        end
                                        else
                                        begin
                                             Jinryo_f.pnlSanjungTeakRye.visible:= false;
                                        end;
//
//                                        jinryo_f.dmain.Date :=
//                                              strtodate(grdDaegi.originalCells[grdDaegi.RealColIndex(2), arow]);

                                        Jinryo_f.edtJiwon.text        := grdDaegi.OriginalCells[grdDaegi.RealColIndex(64), arow]; //산젇특례 지원금 여부

                                        if grdDaegi.OriginalCells[grdDaegi.RealColIndex(56), arow] ='1' then
                                        begin
                                              Jinryo_f.cbSanjungTeakRye.Checked:= true;
                                        end
                                        else
                                        begin
                                              Jinryo_f.cbSanjungTeakRye.Checked:= false;
                                        end;






                                       // jinryo_f.JinryoBiSet ;




                                        jinryo_f.lblJubsuID.caption :=  ma_jubsu_ID;

                                        jinryo_f.edtBontype.text :=  ma_Budam;



                                        jinryo_f.JinryoBiSet ;

                                        jinryo_f.makeTodayTab;
                                        jinryo_f.LoadReferList(Jinryo_f. rpPk );




                                        doLock:= true;

                                        //락 상태를 가져와서 읽기전용으로 뿌려준다,.
                                        LockStatResult := loadLockState(jinryo_f.lblChart.Caption,
                                                           delDash(  grdDaegi.originalCells[grdDaegi.RealColIndex(2), arow]) ) ;

                                        if LockStatResult.aResult =  false then  //잡은게 없다.
                                        begin

                                              jinryo_f.LockControl(false); //해제
                                              DoLock := true;
                                        end
                                        else
                                        begin
                                          //   showmessage( LockStatResult.LocUidCod +':'+V_UserID+#10+
                                          //     LockStatResult.LocIpAddr +':'+ GetIPAddress  );

                                            if //( LockStatResult.LocUidCod  <> V_UserID ) and    // 아이피로만 검색하자.
                                             ( LockStatResult.LocIpAddr  <> GetIPAddress )   and  //같은 아이디로 접속하는 경우가 많다.
                                              (LockStatResult.LocLevCod = '10')  and
                                              ( LockStatResult.LocExeNam  =  'HJinryo' )   then
                                              begin




                                               if Application.MessageBox(pchar(
                                                    LockStatResult.LocIpAddr + '에서 '+
                                                    LockStatResult.LocPCNam+'('+
                                                    LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
                                                    +') 이 열람중입니다.'+#10+


                                                 '기존연결을 끊으시겠습니까?'), '확인', MB_YESNO) = 6 then
                                                  begin


                                                      //강제로 끊기

                                                    ReleaseLockOneChart(jinryo_f.lblChart.Caption,
                                                          'HJinryo',
                                                          LockStatResult.LocUidCod ,
                                                          LockStatResult.LocIpAddr);
                                                    jinryo_f.LockControl(false);

                                                    doLock := true;

                                                  end
                                                  else
                                                  begin
                                                      jinryo_f.LockControl(true); //잠금
                                                      doLock:= false;
                                                  end;
                                           end
                                           else
                                           begin
                                               doLock:= true;
                                           end;
                                        end;

                                        if doLock = true then
                                        begin
                                            //Lock을 잡아라.
                                         if   ExcuteLock (
                                                 'HJinryo',
                                                 V_UserID,
                                                 GetIPAddress ,
                                                 jinryo_f.lblChart.Caption ,
                                                 GetLocalComputerName ) = true then
                                                 begin
                                                      ReleaseLockAnother(jinryo_f.lblChart.Caption,
                                                          'HJinryo',
                                                           V_UserID,
                                                           GetIPAddress) ;
                                                 end;

                                        end;

                                        jinryo_f.lblstatus.Caption := inttostr(GetTickCount - stime) + 'ms';


                                    end;

                                   grdDaegi.setfocus;

                              end;

                         end
                         else
                         begin

                            if compoName = 'pnlDaegi' then //접수실
                            begin

                                    main_f.fieldClear;

                            end;


                            if compoName = 'pnlWait' then //진료실

                            begin
                                jinryo_f.fieldClear;
                            end;
                         end;
                    end;
          end;

     end;

     {$IFDEF DEBUG}
//        if aRow > 0 then
//        begin
//     //        grdDaegi.DisplColIndex()
//    //   grdList.originalCells[grdList.RealColIndex(9), aRow]
//      //   irealCol := grdDaegi.RealColIndex(ACol);
//         irealCol := grdDaegi.DisplColIndex(ACol)  ;
//         showmessage(inttostr(ACol) +':'+ inttostr(irealCol)) ;
//        end;
    {$ENDIF DEBUG}

   except



          on E: Exception do
          begin
               exceptLogging('Grid Click Event.' + #13#10 +
                    E.Message);
          end;

   end;
end;

procedure TDaegiFrame_fr.grdDaegiClickSort(Sender: TObject; ACol: Integer);
begin
      (sender as TAdvstringGrid).AutoNumberCol(0);
end;

procedure TDaegiFrame_fr.grdDaegiColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    //  saveGridColumnOrder;
end;

procedure TDaegiFrame_fr.grdDaegiGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     {
no
-일자
성명
-차트번호
-팀
-전담위생사
-구분
접수시간
대기시간
예약시간/내역
-예약참고사항
-진료시작시간
-진료마침시간
-수납시간
-휴대폰     }
    if aRow = 0  then
     begin
          hAlign := taCenter;
          Valign := vtaCenter;
     end;


 if aRow >= 0  then
   begin
     case aCol of

          1..54:
               begin
                    hAlign := taCenter;
                    Valign := vtaCenter;
               end;

     end;
   end
   else
   begin
         hAlign := taCenter;
   end;



end;

procedure TDaegiFrame_fr.grdDaegiGetCellBorder(Sender: TObject; ARow,
  ACol: Integer; APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];

               APen.Width := 2;
               APen.Color := $00f2e6e2;//clSilver; //clGray;

           end;
end;

procedure TDaegiFrame_fr.grdDaegiGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);

var
   varteam:string;
   irealCol : integer;
begin
{10 : 접수
0 : 접수
1: 진료시작
2: 진료종료(수납대기)
3: 수납완료
5: 숙박입원
6: 낮 입원}

      if (aRow > 0)
          and  (aCol > 0)
             and ( grdDaegi.originalCells[grdDaegi.RealColIndex(10), aRow]  = '3') then
       begin  //수납완료
           aBrush.Color := $00EAFFEA;
           aFont.Color  := clBlack;
       end;

     // irealCol := grdDaegi.RealCol;

      //3:차트번호  6:이름 글자 색 크기 변경
       if (aRow > 0) then
       begin
       // irealCol := grdDaegi.RealColIndex(aCol);
        irealCol := grdDaegi.DisplColIndex(aCol);

          if ( irealCol in [3, 6]) then  //3:차트번호  6:이름
 //            and ( grdDaegi.DisplColIndex(grdDaegi.RealColIndex(aCol)) in [3, 6]) then
//         if grdDaegi.originalCells[grdDaegi.RealColIndex(3), 0] ='차트번호' then
          begin
               aFont.Color  := clBlue;
               afont.style  := [fsBold] ;
               afont.size   := 10;
          end;

      end;



      // //Lock ID가 잡혀 있다면...진료중이다. 표시해주자...
       if (aRow > 0) and ( grdDaegi.originalCells[grdDaegi.RealColIndex(63), aRow] <> '') then
            //Lock ID가 잡혀 있다면...
       begin
            if grdDaegi.RealColIndex(aCol) = 0 then
            begin
                 aBrush.Color := $00E39FBB;
                 aFont.Color := clGreen;
                 aFont.Style := [fsBold];
            end;
       end;


{

          case tsmain.TabIndex of
          0:
          begin

                   //2012.5.1    진료대기에도 색넣기
                   varteam :=  grdDaegi.OriginalCells[grdDaegi.RealColIndex(5), aRow];


               with grdDaegi do
               begin

                  if (aRow > 0) and (ints[grdDaegi.RealColIndex(7), aRow] = 0) then
                   begin

                      if aCol = 1 then
                      begin



                           if  varteam <> '' then
                           begin
                             //ToDo : repair
                             //   aBrush.Color :=
                             //        stringtoColor(getteamColor(main_f.cbTeamColor.items, ints[5, aRow]));

                                aFont.Color := clWhite;
                           end
                           else
                           begin
                                aBrush.Color := clWhite;
                                aFont.Color := clBlack;
                           end;
                      end;
                   end;
                end;


               with grdDaegi do
               begin


                   if (aRow > 0) and (Cells[RealColIndex(26), aRow] <> '') then
                        //예약 컬러
                   begin
                        if aCol = 10 then //예약내역
                        begin
                             aBrush.Color := stringtocolor(Cells[RealColIndex(26), aRow]);
                             aFont.Color := clBlack;
                             //   aFont.Style := [fsBold];
                        end;
                   end;

                   if (aRow > 0) and (Cells[RealColIndex(22), aRow] <> '') then
                        //오늘 CC가 있으면
                   begin
                        if  RealColIndex(aCol) = 3 then
                        begin
                             aBrush.Color := $00E39FBB;
                             aFont.Color := clGreen;
                             aFont.Style := [fsBold];
                        end;
                   end;

                   if (aRow > 0) and (Cells[RealColIndex(18), aRow] = Cells[RealColIndex(2), aRow]) then
                        //초진일이 오늘(진료일)이면
                   begin
                        if RealColIndex(aCol) = 3 then
                        begin
                             aBrush.Color := claqua;
                             aFont.Color := clGreen;
                             aFont.Style := [fsBold];
                        end;
                   end;
                   if (aRow > 0) and (trim(Cells[RealColIndex(9), aRow]) <> '') and  ( copy(Cells[RealColIndex(9), aRow],3,1) =':')  then
                   begin

                        if StrToTime(Cells[RealColIndex(9), aRow]) > strtotime('00:10') then
                             //대기시간 10분 넘으면...
                        begin
                             if  RealColIndex(aCol) = 9 then
                             begin
                                  aBrush.Color :=   $00EDFEED ;//// $00FFAFFF;
                                  aFont.Color := clGreen;
                                  //aFont.Style := [fsBold];
                             end;

                        end;
                        if StrToTime(Cells[ RealColIndex(9), aRow]) > strtotime('00:20') then
                             //대기시간 20분 넘으면...
                        begin
                             if  RealColIndex(aCol) = 9 then
                             begin
                                  aBrush.Color := $00E2FDE1;//$00FFB5FF;
                                  aFont.Color := clGreen;
                                  //aFont.Style := [fsBold];
                             end;

                        end;

                        if StrToTime(Cells[ RealColIndex(9), aRow]) > strtotime('00:30') then
                             //대기시간 30분 넘으면...
                        begin
                             if  RealColIndex(aCol) = 9 then
                             begin
                                  aBrush.Color := $00B6FAB4;//$00FF80FF;
                                  aFont.Color := clRed;
                                  //aFont.Style := [fsBold];
                             end;

                        end;
                   end;

                   //최종 내원일의 대기시간을 체크해서 색으로 표시
                   if (aRow > 0) and (trim(Cells[ RealColIndex(23), aRow]) <> '')
                       and  ( copy(Cells[ RealColIndex(23), aRow],3,1) =':')
                        and  ( copy(Cells[ RealColIndex(23), aRow],6,1) =':')  then
                   begin

                        if StrToTime(Cells[ RealColIndex(23), aRow]) > strtotime('00:10:00') then
                             //대기시간 10분이 지났었으면...
                        begin
                             if  RealColIndex(aCol) = 8 then
                             begin
                                  aBrush.Color :=  $00EDFEED ;//$00FFAFFF;
                                  aFont.Color := clYellow;
                                  //aFont.Style := [fsBold];
                             end;

                        end;
                        if StrToTime(Cells[ RealColIndex(23), aRow]) > strtotime('00:20:00') then
                             //대기시간 20분이 지났었으면...
                        begin
                             if  RealColIndex(aCol) = 8 then
                             begin
                                  aBrush.Color :=  $00E2FDE1;//$00FFB5FF;
                                  aFont.Color := clGreen;
                                  //aFont.Style := [fsBold];
                             end;

                        end;

                        if StrToTime(Cells[ RealColIndex(23), aRow]) > strtotime('00:30:00') then
                             //대기시간 30분 넘으면...
                        begin
                             if  RealColIndex(aCol) = 8 then
                             begin
                                  aBrush.Color := $00B6FAB4;//$00FF80FF;
                                  aFont.Color := clrED;
                                  //aFont.Style := [fsBold];
                             end;

                        end;
                   end;

                   if (aRow > 0) and (ints[ RealColIndex(7), aRow] = 1) then
                   begin

                        if  RealColIndex(aCol) = 1 then
                        begin
                             if  varteam <> '' then
                             begin
                                //  aBrush.Color :=
                                //       stringtoColor(getteamColor(main_f.cbTeamColor.items, ints[5, aRow]));

                                  if length(cells[ RealColIndex(1), aRow]) > 1 then
                                  begin
                                       aFont.Size := 7;
                                       aFont.name := '굴림';
                                       aFont.Style := [fsBold];
                                  end
                                  else
                                  begin
                                       aFont.Size := 11;
                                       aFont.Style := [fsBold];
                                  end;

                                  aFont.Color := clWhite;
                             end
                             else
                             begin
                                  aBrush.Color := clWhite;

                                  if length(cells[ RealColIndex(1), aRow]) > 1 then
                                  begin
                                       aFont.Size := 7;
                                       aFont.name := '굴림';
                                       aFont.Style := [fsBold];
                                  end
                                  else
                                  begin
                                       aFont.Size := 11;
                                       aFont.Style := [fsBold];
                                  end;

                                  aFont.Color := clBlack;
                             end;
                        end;

                   end;

                   if (aRow > 0) and (ints[ RealColIndex(7), aRow] = 2) then
                   begin

                        if  RealColIndex(aCol) = 1 then
                        begin
                             if  varteam <> '' then
                             begin
                               //   aBrush.Color :=
                               //        stringtoColor(getteamColor(main_f.cbTeamColor.items, ints[5, aRow]));

                                  if length(cells[ RealColIndex(1), aRow]) > 1 then
                                  begin
                                       aFont.Size := 7;
                                       aFont.name := '굴림';
                                       aFont.Style := [fsBold];
                                  end
                                  else
                                  begin
                                       aFont.Size := 11;
                                       aFont.Style := [fsBold];
                                  end;

                                  aFont.Color := clWhite;
                             end
                             else
                             begin
                                  aBrush.Color := clWhite;

                                  if length(cells[ RealColIndex(1), aRow]) > 1 then
                                  begin
                                       aFont.Size := 7;
                                       aFont.name := '굴림';
                                       aFont.Style := [fsBold];
                                  end
                                  else
                                  begin
                                       aFont.Size := 11;
                                       aFont.Style := [fsBold];
                                  end;

                                  aFont.Color := clBlack;
                             end;
                        end;

                   end;

                   if (aRow > 0) and (ints[ RealColIndex(7), aRow] = 3) then
                   begin

                        if aCol = 1 then
                        begin
                             if  varteam <> '' then
                             begin
                               //   aBrush.Color :=
                               //        stringtoColor(getteamColor(main_f.cbTeamColor.items, ints[5, aRow]));

                                  if length(cells[ RealColIndex(1), aRow]) > 1 then
                                  begin
                                       aFont.Size := 7;
                                       aFont.name := '굴림';
                                       aFont.Style := [fsBold];
                                  end
                                  else
                                  begin
                                       aFont.Size := 11;
                                       aFont.Style := [fsBold];
                                  end;

                                  aFont.Color := clWhite;
                             end
                             else
                             begin
                                  aBrush.Color := clWhite;

                                  if length(cells[ RealColIndex(1), aRow]) > 1 then
                                  begin
                                       aFont.Size := 7;
                                       aFont.name := '굴림';
                                       aFont.Style := [fsBold];
                                  end
                                  else
                                  begin
                                       aFont.Size := 11;
                                       aFont.Style := [fsBold];
                                  end;

                                  aFont.Color := clBlack;
                             end;
                         end;

                      end;
                  end;
              end;
          end;


          case tsmain.TabIndex of
          0:
            begin

                with grdDaegi do
                begin



                if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '접수') then
                begin
                     if acol > 0 then
                     begin
                          aBrush.Color :=$00C5E1B9 ;//$00FFDACA;// clTeal;//$00E39FBB;
                          aFont.Color := clBlack;
                          aFont.Style := [fsBold];
                     end;
                end
                else
                if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '진료대기') then
                begin
                     if acol > 0 then
                     begin
                          aBrush.Color :=$00C5E1B9 ;//$00FFDACA;// $00E39FBB;
                          aFont.Color := clBlack;
                          aFont.Style := [fsBold];
                     end;
                end
                else
                     if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '진료중') then
                     begin

                          if acol > 0 then
                          begin
                               aBrush.Color := $00C5E1B9 ;//$00FFDACA;//$008CC6FF;
                               aFont.Color := clBlack;
                               aFont.Style := [fsBold];
                          end;

                     end
                     else
                          if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '수납대기') then
                          begin

                               if acol > 0 then
                               begin
                                    aBrush.Color :=$00C5E1B9 ;// $00FFDACA;//$008EFFFF;
                                    aFont.Color := clBlack;
                                    aFont.Style := [fsBold];
                               end;
                          end
                          else
                               if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '수납완료') then
                               begin

                                    if acol > 0 then
                                    begin
                                         aBrush.Color :=$00C5E1B9 ;// $00FFDACA;//$00FFD0A2;
                                         aFont.Color := clBlack;
                                         aFont.Style := [fsBold];
                                    end;
                               end;
                        end;
             end;
  
    end;
    }
end;



procedure TDaegiFrame_fr.grdDaegiKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if ( key = VK_DOWN) or ( key = VK_UP) then
    begin
         grdDaegiClickCell(Sender, grdDaegi.Row, grdDaegi.Col);
    end;
end;

procedure TDaegiFrame_fr.grdDaegiRightClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
      grdDaegiClickCell(grdDaegi, ARow,  ACol);
end;

procedure TDaegiFrame_fr.grdSunapDaegiClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
     TreatRoom , doc: string;
     grdRect: Trect;
     stime : integer;
begin
     stime := GetTickCount;

     grdRect := grdSunapDaegi.CellRect(ACol, Arow);

     if (aRow=0) and (acol=0) then
     begin

             gridColSelect(grdSunapDaegi, grdRect, clbSunapDaegi);
     end;



     if (arow > 0) then
     begin
          case aCol of
               0..30:
                      begin

                         if grdSunapDaegi.Cells[2, arow] <> '' then
                         begin
                              if
                                   LoadGogekData_chart(grdSunapDaegi.Cells[2,
                                   arow], progressbar, varViewAll) =
                                   true then
                              begin



                                        TreatRoom := grdSunapDaegi.cells[25, arow];

                                        if TreatRoom  <>'' then   //TreatRoom
                                        begin
                                          main_f.cbTreatRoom.ItemIndex :=
                                                main_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;

                                          LoadDoclist( main_f.cbDoc, TreatRoom);
                                       end
                                        else
                                        begin
                                          main_f.cbTreatRoom.ItemIndex := 0;
                                        end;

                                        //LoadDoclist에서 cbDoc을 초기화 한다.
                                        main_f.Fieldset;


                                        main_f.cbJong.ItemIndex      := grdSunapDaegi.ints[grdSunapDaegi.RealColIndex(24), arow] ;  //jongbyul
                                        main_f.cbChoje.ItemIndex     := grdSunapDaegi.ints[grdSunapDaegi.RealColIndex(23), arow] ;;  //choje
                                   //     main_f.cbTreatRoom.ItemIndex := grdDaegi.ints[44, arow] ;  //TreatRoom



                                       ma_jongbeul := inttoStr( strtoIntDef(grdSunapDaegi.originalCells[grdSunapDaegi.RealColIndex(24), arow],0));

                                       ma_choje    :=  strtoIntDef(grdSunapDaegi.originalCells[grdSunapDaegi.RealColIndex(23), arow],0) ;
                                       ma_jinTime  :=  grdSunapDaegi.originalCells[grdSunapDaegi.RealColIndex(5), arow] ;






                                         doc := trim( grdSunapDaegi.OriginalCells[9, arow]);


                                        if doc <> '' then   //Doc
                                          main_f.cbdoc.ItemIndex :=
                                           main_f.cbDoc.ComboItems.IndexInColumnOf(2, Doc )
                                        else
                                          main_f.cbdoc.ItemIndex := 0;

                                        main_f.cbSanCode3.ItemIndex   := grdSunapDaegi.ints[grdSunapDaegi.RealColIndex(22), arow];  //health
                                        main_f.edtSanjung.text        := grdSunapDaegi.Cells[grdSunapDaegi.RealColIndex(21), arow]; //sanjung
                                        ma_jubsu_ID                   := grdSunapDaegi.Cells[grdSunapDaegi.RealColIndex(20), arow];

                                     //   varGridprIdn                  := grdDaegi.OriginalCells[grdDaegi.RealColIndex(17), arow];

                                        main_f.lblstatus.Caption := inttostr(GetTickCount - stime) + 'ms';

                              end;
                         end;

                      end;

          end;
     end;
end;

procedure TDaegiFrame_fr.grdSunapDaegiClickSort(Sender: TObject; ACol: Integer);
begin
//    (sender as TAdvstringGrid).AutoNumberCol(0);
end;


procedure TDaegiFrame_fr.grdSunapDaegiDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
  var
  TreatRoom : string;
  docIndex : integer;
begin

 try
   Timer2.Enabled := false;

   if  formatdatetime('YYYY-MM-DD', dtDate.Date)
               = formatdatetime('YYYY-MM-DD',now) then
    begin

        application.ProcessMessages;
        btnRefreshClick(nil);
        sleep(1000);

    end;


     gridSunap( grdSunapDaegi , ARow, ACol);

 finally

   Timer2.Enabled := true;

 end;


end;
procedure TDaegiFrame_fr.grdSunapDaegiGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

   if aRow > 0  then
   begin
     case aCol of
          0,10..18, 26..29:
               begin

                    hAlign := taRightJustify;
               end;
          1..9,19..25:
               begin
                    hAlign := taCenter;
               end;

     end;
   end
   else
   begin
         hAlign := taCenter;
   end;

end;

procedure TDaegiFrame_fr.grdSunapDaegiGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
     case aCol of
          0, 10..18, 26..29:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;
end;

procedure TDaegiFrame_fr.grdSunapDaegiMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  aCol, aRow: Longint;

     TreatRoom : string;
     grdRect: Trect;
begin
//  if Button = mbRight then
//  begin
////    grdSunapDaegi.MouseToCell(X, Y, Column, Row);
////    if (Column > -1) and (Row > -1) then
////    begin
////      grdSunapDaegi.Col := Column;
////      grdSunapDaegi.Row := Row;
////    end;
//
//     aCol :=  grdSunapDaegi.Col;
//     aRow :=  grdSunapDaegi.Row;
//
//
//
//
//     grdRect := grdSunapDaegi.CellRect(ACol, Arow);
//
//     if (aRow=0) and (acol=0) then
//     begin
//
//             gridColSelect(grdSunapDaegi, grdRect, clbSunapDaegi);
//     end;
//
//
//
//     if (arow > 0) then
//     begin
//          case aCol of
//               0..14:
//                      begin
//
//                         if grdSunapDaegi.Cells[2, arow] <> '' then
//                         begin
//                              if
//                                   LoadGogekData_chart(grdSunapDaegi.Cells[2,
//                                   arow], progressbar, varViewAll) =
//                                   true then
//                              begin
//
//
//
//                                        TreatRoom := grdSunapDaegi.cells[8, arow];
//
//                                        if TreatRoom  <>'' then   //TreatRoom
//                                        begin
//                                          main_f.cbTreatRoom.ItemIndex :=
//                                                main_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;
//
//                                          LoadDoclist( main_f.cbDoc, TreatRoom);
//                                       end
//                                        else
//                                        begin
//                                          main_f.cbTreatRoom.ItemIndex := 0;
//                                        end;
//
//                                        //LoadDoclist에서 cbDoc을 초기화 한다.
//                                        main_f.Fieldset;
//
//
//                                        main_f.cbJong.ItemIndex      := grdSunapDaegi.ints[grdSunapDaegi.RealColIndex(7), arow] ;  //jongbyul
//                                        main_f.cbChoje.ItemIndex     := grdSunapDaegi.ints[grdSunapDaegi.RealColIndex(6), arow] ;;  //choje
//                                   //     main_f.cbTreatRoom.ItemIndex := grdDaegi.ints[44, arow] ;  //TreatRoom
//
//
//
//
//
//
//
//
////                                         doc := trim( grdDaegi.OriginalCells[24, arow]);
////
////
////                                        if doc <> '' then   //Doc
////                                          main_f.cbdoc.ItemIndex :=
////                                           main_f.cbDoc.ComboItems.IndexInColumnOf(2, Doc )
////                                        else
////                                          main_f.cbdoc.ItemIndex := 0;
//
//                                        main_f.cbSanCode3.ItemIndex   := grdSunapDaegi.ints[grdSunapDaegi.RealColIndex(22), arow];  //health
//                                        main_f.edtSanjung.text        := grdSunapDaegi.Cells[grdSunapDaegi.RealColIndex(21), arow]; //sanjung
//                                        ma_jubsu_ID                   := grdSunapDaegi.Cells[grdSunapDaegi.RealColIndex(20), arow];
//
//                                     //   varGridprIdn                  := grdDaegi.OriginalCells[grdDaegi.RealColIndex(17), arow];
//
//
//
//                              end;
//                         end;
//
//                      end;
//
//          end;
//     end;
//
//
//
//  end;
end;

procedure TDaegiFrame_fr.gridSunap( aGrid : TadvstringGrid; ARow, ACol: Integer);
var
  TreatRoom : string;
  docIndex : integer;
  isInPat  : string;
  jinryo_PInfo : Tjinryo_PInfo ;

begin


    //  ma_PrIdn      :=  aGrid.cells[6, arow] ;   //Promise idn
      ma_Jubsu_ID    :=  aGrid.cells[20, arow]  ;

      ma_jinryo_pid  :=  aGrid.cells[19, arow]  ;

      ma_DocCode     :=  aGrid.Cells[9, arow] ;
      ma_DocName     :=  aGrid.Cells[9, arow] ;
      ma_sunapGumjin :=  aGrid.ints[22, arow]  ;
      ma_SunapChoje  :=  aGrid.ints[23, arow]  ;
      ma_SunapJong   :=  aGrid.ints[24, arow]  ;
      ma_treatRoom   :=  aGrid.Cells[25, arow] ;

      ma_isBohum100  :=  aGrid.Cells[41, arow] ;


      ma_sunapDate   :=  formatdatetime('YYYY-MM-DD', dtDate.Date);


//      ma_sunapChong :=  strtoint(delcomma( aGrid.cells[15, arow]))  ;
//      ma_sunapChung :=  strtoint(delcomma( aGrid.cells[16, arow]))  ;
//      ma_sunapBonin :=  strtoint(delcomma( aGrid.cells[17, arow]))  ;
//      ma_sunapBonin1:=  strtoint(delcomma( aGrid.cells[18, arow]))  ;


      jinryo_PInfo := loadJinryo_PInfo(ma_Jubsu_ID);//Tjinryo_PInfo;
      ma_sunapChong :=   jinryo_PInfo.nSunapChong;
      ma_sunapChung :=   jinryo_PInfo.nSunapChung;
      ma_sunapBonin :=   jinryo_PInfo.nSunapBonin;
      ma_sunapBonin1:=   jinryo_PInfo.nSunapBonin1;


      if aGrid.cells[6, arow] ='0' then   //입원/외래 구분
        ma_InOut      :=  false
      else
        ma_InOut      :=  true;



      if not assigned(sunap_f) then
          sunap_f := Tsunap_f.Create(application);



     if aGrid.Cells[41, arow] ='1' then
            sunap_f.lblKind .caption    := '보험100'   //보험100 표시
     else
            sunap_f.lblKind .caption    := '';  //보험100 표시



      sunap_f.lblSunapDay.caption    :=    ma_sunapDate;
      sunap_f.lblJubsuID.caption     :=    ma_Jubsu_ID;

      sunap_f.lblJinday1.caption     :=    aGrid.Cells[40, arow];  //(입원일)
      sunap_f.lblJinday2.caption     :=    aGrid.Cells[33, arow];   //(퇴원일) 진료시작일
      sunap_f.lblJongbeul.caption    :=    aGrid.Cells[7, arow];

      //    sunap_f.setJinSO(ma_chart,  ma_sunapDate);
      sunap_f.lblTjungCode.caption   :=    aGrid.OriginalCells[21, arow];   //산정특례코드
      sunap_f.lblTjung.caption       :=    aGrid.OriginalCells[30, arow];   //산정특례 여부


      sunap_f.lblChart.caption := aGrid.Cells[2, arow] ;
      isInPat := aGrid.Cells[34, arow] ;


      if isInpat <> '0' then
      begin
         ma_InOut := true  ;
      end
      else
      begin
        ma_InOut := false  ;
      end;

      TreatRoom := ma_treatRoom;//aGrid.cells[8, arow];

      sunap_f.Show;


          if TreatRoom  <>  '' then   //TreatRoom
          begin
            sunap_f.cbTreatRoom.ItemIndex :=
                  sunap_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;

            LoadDoclist( sunap_f.cbDoc, TreatRoom);
         end
          else
          begin
            sunap_f.cbTreatRoom.ItemIndex := 0;
          end;

          docIndex:= sunap_f.cbDoc.ComboItems.IndexInColumnOf(2, ma_docName);

         if ma_docName <>'' then
             sunap_f.cbDoc.ItemIndex := docIndex  // cbDoc.ComboItems.IndexInColumnOf(2, docName)
         else
             sunap_f.cbdoc.ItemIndex := 0;


         setJinryo_s(
            ma_Jubsu_ID,
            sunap_f.grdJX2,
            ma_chart,
            sunap_f.cbTreatRoom.ColumnItems[ sunap_f.cbTreatRoom.ItemIndex,0],
            sunap_f.cbDoc.ColumnItems[cbDoc.itemindex, 4],
            isInPat,// '0', //ToDO : 입원 외래 구분해라....isInpat
            ma_sunapDate,
            ma_sunapDate
                      , 2 );// FormatDateTime('YYYY-MM-DD',  dMain.Date));

          sunap_f.edtChong2.IntValue       := ma_sunapChong;
          sunap_f.edtChung.IntValue        := ma_sunapChung;
          sunap_f.edtBohum.IntValue        := ma_sunapBonin;
          sunap_f.edtBonin1.IntValue       := ma_sunapBonin1;
          sunap_f.edtSunapChongEk.IntValue := ma_sunapBonin + ma_sunapBonin1;





          if aGrid = grdSunapDaegi then
          begin

                sunap_f.isLoading := false;

                sunap_f.edtSunap.IntValue             := 0;
                sunap_f.edtHyun.IntValue              := 0;

//                sunap_f.edtCard.FloatValue            :=    sunap_f.edtsunapchongek.FloatValue
//                                              -  sunap_f.edtHyun.FloatValue
//                                              -  sunap_f.edtHyunReceipt.FloatValue;


                sunap_f.edtiCard.FloatValue           :=
                               sunap_f.edtsunapchongek.FloatValue;
                sunap_f.edtiHyun.FloatValue           := 0;
            //    sunap_f.edtiMisu.FloatValue           := 0;
                sunap_f.edtiDc.FloatValue             := 0;
                sunap_f.edtYul.FloatValue             := 0;

                sunap_f.edtTong.IntValue              := 0;
                sunap_f.edtDangMisu.IntValue          := 0;
                sunap_f.edtTong2.IntValue             := 0;
                sunap_f.edtTongReceipt.IntValue       := 0;
                sunap_f.edtHyunReceipt.IntValue       := 0;
                sunap_f.edtGammyun.IntValue           := 0;

                sunap_f.edtiCard.setfocus;
          end
          else
          begin //grdSunapFinish

                sunap_f.isLoading := true;

                sunap_f.edtSunap.IntValue             := strtoint(  delcomma( aGrid.cells[10, arow]));
                sunap_f.edtCard.IntValue              := strtoint(  delcomma( aGrid.cells[11, arow])) ;
                sunap_f.edtHyun.IntValue              := strtoint(  delcomma( aGrid.cells[12, arow])) ;
                sunap_f.edtTong.IntValue              := strtoint(  delcomma( aGrid.cells[13, arow])) ;
                sunap_f.edtDangMisu.IntValue          := strtoint(  delcomma( aGrid.cells[14, arow])) ;
                sunap_f.edtTong2.IntValue             := strtoint(  delcomma( aGrid.cells[26, arow])) ;
                sunap_f.edtTongReceipt.IntValue       := strtoint(  delcomma( aGrid.cells[27, arow])) ;
                sunap_f.edtHyunReceipt.IntValue       := strtoint(  delcomma( aGrid.cells[28, arow])) ;
                sunap_f.edtGammyun.IntValue           := strtoint(  delcomma( aGrid.cells[29, arow])) ;
          end;


           if strtoint(  delcomma( aGrid.OriginalCells[29, arow])) > 0 then //감면이 있으면
           begin
              sunap_f.memChamgo.Lines.Add('감면금액 :' + aGrid.OriginalCells[29, arow] );

           end;




           case ma_SunapJong of
              1,2,4,5:     //보호일때만
              begin

                   sunap_f.bohoCertSet(aGrid.cells[36, arow],
                   aGrid.cells[37, arow],
                   aGrid.cells[38, arow],
                   aGrid.cells[39, arow]);  //보호진료확인번호
              end;
           end;

   //     sunap_f.Showmodal;


end;


procedure TDaegiFrame_fr.grdSunapFinishClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
     TreatRoom , doc: string;
     grdRect: Trect;
     stime : integer;
begin
     stime := GetTickCount;


     grdRect := grdSunapFinish.CellRect(ACol, Arow);

     if (aRow=0) and (acol=0) then
     begin

             gridColSelect(grdSunapFinish, grdRect, clbSunapFinish);
     end;


     if (arow > 0) then
     begin
          case aCol of
               0..30:
                      begin

                         if grdSunapFinish.Cells[2, arow] <> '' then
                         begin
                              if
                                   LoadGogekData_chart(grdSunapFinish.Cells[2,
                                   arow], progressbar, varViewAll) =
                                   true then
                              begin



                                        TreatRoom := grdSunapFinish.cells[25, arow];

                                        if TreatRoom  <>'' then   //TreatRoom
                                        begin
                                          main_f.cbTreatRoom.ItemIndex :=
                                                main_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;

                                          LoadDoclist( main_f.cbDoc, TreatRoom);
                                       end
                                        else
                                        begin
                                          main_f.cbTreatRoom.ItemIndex := 0;
                                        end;

                                        //LoadDoclist에서 cbDoc을 초기화 한다.
                                        main_f.Fieldset;


                                        main_f.cbJong.ItemIndex      := grdSunapFinish.ints[grdSunapFinish.RealColIndex(24), arow] ;  //jongbyul
                                        main_f.cbChoje.ItemIndex     := grdSunapFinish.ints[grdSunapFinish.RealColIndex(23), arow] ;;  //choje
                                   //     main_f.cbTreatRoom.ItemIndex := grdDaegi.ints[44, arow] ;  //TreatRoom

                                       ma_jongbeul := inttoStr( strtoIntDef(grdSunapFinish.originalCells[grdSunapFinish.RealColIndex(24), arow],0));

                                       ma_choje    :=  strtoIntDef(grdSunapFinish.originalCells[grdSunapFinish.RealColIndex(23), arow],0) ;
                                       ma_jinTime  :=  grdSunapFinish.originalCells[grdSunapFinish.RealColIndex(5), arow] ;

                                         doc := trim( grdSunapFinish.OriginalCells[9, arow]);


                                        if doc <> '' then   //Doc
                                          main_f.cbdoc.ItemIndex :=
                                           main_f.cbDoc.ComboItems.IndexInColumnOf(2, Doc )
                                        else
                                          main_f.cbdoc.ItemIndex := 0;


                                        main_f.cbSanCode3.ItemIndex   := grdSunapFinish.ints[grdSunapFinish.RealColIndex(22), arow];  //health
                                        main_f.edtSanjung.text        := grdSunapFinish.Cells[grdSunapFinish.RealColIndex(21), arow]; //sanjung
                                        ma_jubsu_ID                   := grdSunapFinish.Cells[grdSunapFinish.RealColIndex(20), arow];

                                  //      varGridprIdn                  := grdSunapFinish.Cells[grdSunapFinish.RealColIndex(17), arow];




                              end;
                         end;




                              main_f.lblStatus.Caption := inttostr(GetTickCount - stime)+'ms';

                      end;


          end;
     end;
end;


procedure TDaegiFrame_fr.grdSunapFinishClickSort(Sender: TObject;
  ACol: Integer);
begin
//     (sender as TAdvstringGrid).AutoNumberCol(0);
end;

procedure TDaegiFrame_fr.grdSunapFinishDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  TreatRoom : string;
  docIndex : integer;
begin
   try
     Timer2.Enabled := false;

//      ma_DocCode   :=  grdSunapFinish.Cells[9, arow] ;
//      ma_DocName   :=  grdSunapFinish.Cells[9, arow] ;
//      ma_treatRoom  :=  grdSunapFinish.Cells[8, arow] ;
//      ma_SunapChoje :=  grdSunapFinish.ints[6, arow]  ;
//      ma_PrIdn      :=  grdSunapFinish.cells[6, arow] ;   //Promise idn
//      ma_SunapJong  :=  grdSunapFinish.ints[7, arow]  ;
//      ma_sunapDate  :=  formatdatetime('YYYY-MM-DD', now);
//
//
//
//
//
//      ma_jinryo_pid :=  grdSunapFinish.cells[19, arow]  ;
//
//      ma_sunapChong :=  grdSunapFinish.ints[15, arow]  ;
//      ma_sunapChung :=  grdSunapFinish.ints[16, arow]  ;
//      ma_sunapBonin :=  grdSunapFinish.ints[17, arow]  ;
//      ma_sunapBonin1:=  grdSunapFinish.ints[18, arow] ;
//
//
//
//      if grdSunapFinish.cells[6, arow] ='0' then   //입원/외래 구분
//        ma_InOut      :=  false
//      else
//        ma_InOut      :=  true;
//
//
//
//      if not assigned(sunap_f) then
//          sunap_f := Tsunap_f.Create(application);
//
//
//      //    sunap_f.setJinSO(ma_chart,  ma_sunapDate);
//          setJinryo_s(sunap_f.grdJX2, ma_chart, ma_sunapDate);// FormatDateTime('YYYY-MM-DD',  dMain.Date));
//
//          sunap_f.Show;
//
//
//
//         TreatRoom := ma_treatRoom;//grdSunapFinish.cells[8, arow];
//
//
//          if TreatRoom  <>'' then   //TreatRoom
//          begin
//            sunap_f.cbTreatRoom.ItemIndex :=
//                  sunap_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;
//
//            LoadDoclist( sunap_f.cbDoc, TreatRoom);
//         end
//          else
//          begin
//            sunap_f.cbTreatRoom.ItemIndex := 0;
//          end;
//
//                docIndex:= sunap_f.cbDoc.ComboItems.IndexInColumnOf(2, ma_docName);
//
//               if ma_docName <>'' then
//                   sunap_f.cbDoc.ItemIndex := docIndex  // cbDoc.ComboItems.IndexInColumnOf(2, docName)
//               else
//                   sunap_f.cbdoc.ItemIndex := 0;
//
//
//
//          sunap_f.edtChong2.IntValue       := ma_sunapChong;
//          sunap_f.edtChung.IntValue        := ma_sunapChung;
//          sunap_f.edtBohum.IntValue        := ma_sunapBonin;
//          sunap_f.edtBonin1.IntValue       := ma_sunapBonin1;
//          sunap_f.edtSunapChongEk.IntValue := ma_sunapBonin + ma_sunapBonin1;
//          sunap_f.edtHyun.FloatValue       := sunap_f.edtsunapchongek.FloatValue
//                                              -  sunap_f.edtcard.FloatValue
//                                              -  sunap_f.edtHyunReceipt.FloatValue;
//
//
//           case ma_SunapJong of
//              1,2,4,5:     //보호일때만
//              begin
//                   sunap_f.bohoCertSet;
//              end;
//           end;

    if grdSunapFinish.Cells[32, ARow] ='미수수납' then
    begin

       showmessage('[영수증재출력]에서 미수금 발생일을 찾아서 영수증출력 가능합니다.');
       exit;
    end;




    gridSunap( grdSunapFinish , ARow, ACol);

   finally
       Timer2.Enabled := true;
   end;
end;

procedure TDaegiFrame_fr.grdSunapFinishGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

   if aRow > 0  then
   begin
     case aCol of
          0,10..18, 26..29:
               begin

                    hAlign := taRightJustify;
               end;
          1..9,19..25:
               begin
                    hAlign := taCenter;
               end;

     end;
   end
   else
   begin
         hAlign := taCenter;
   end;


end;



procedure TDaegiFrame_fr.grdSunapFinishGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if  grdSunapFinish.Cells[31, aRow] ='3' then  // 미수수납
     begin
              aBrush.Color := clWhite;//$00EAFFEA;
              aFont.Color  := clsilver;
     end;


end;

procedure TDaegiFrame_fr.grdSunapFinishGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
     case aCol of
          0, 10..18, 26..29:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure TDaegiFrame_fr.jubsuSelect(varGrid: TadvStringGrid;
        daegidate:string;
        gubun    :string;
        team     :string;
        remark   : string='');
const


     selectqry
          = 'SELECT i.chart, i.name,  i.first_day,   i.jumin, n.id, n.inPat_time, n.outPat_time, n.isInpat, n.isOutPat, n.JaboID,  n.doc_code, n.isBohum100,                              '       + #13#10 +
      //    ' N.team, N.gubun, N.jinstime, N.jinftime, N.sunaptime,  N.hyg,  ( rtrim(pr_memo)+''[''+pr_time+'']'') as DDDD,  pr_time   AS YEYAKTIME,                                           ' + #13#10
            ' N.team, N.gubun, N.jinstime, N.jinftime, N.sunaptime,  N.hyg,  pr_memo as DDDD,  '''' as mmmm,                                                        ' + #13#10
          +

          ' N.jin_time, N.jin_day, N.fchart, N.chair ,n.isJiwon,  N.doc,  N.nOrder, N.chamgo,  N.pr_idn, N.isChart, N.isEmergency,  N.isJubsu,   N.isOut,   N.isCompany,        ' + #13#10
          +
          ' N.jongbyul, N.choje, N.teakrye, N.health  , N.pregnan,  N.chasangno, N.bontype,  N.yujikum, N.TreatRoom,     ' + #13#10
          +
          ' (select top 1 sanjungTeakRye from jinryo_p where jubsu_id= n.ID) as sanjungTeakRye, '''' as itime,  '''' AS YEYAKcolor,                    ' + #13#10
          +
          ' N.kwamok, N.artteeth1, N.artteeth2, N.implteeth1  , N.implteeth2,  N.rpPK ,  '''' as  cPhone,'''' as RemCC,  '''' AS sRemark, ' + #13#10
          +
//          '  (SELECT   TOP 1   phone from ma_gogek_phone where chart=n.chart and kind=''2'' ) as cPhone,  ' + #13#10
//          +
//          '  (SELECT   TOP 1    convert(varchar(300), remark)  from ma_gogek_remark where chart=n.chart and kind=''11'' and code=''000'' and reg_day= :jin_day) as RemCC,  ' + #13#10
//          +
//          '  (SELECT   top 1   convert(varchar,jinstime - jin_time,108)  from ma_jubsu where chart=n.chart and jin_day = :jin_day order by jin_day desc) as itime,  ' + #13#10
         // +
         // '  (SELECT   TOP 1   rtrim(remark)+''[''+ptime+'']''                                                               ' + #13#10
         // +
         // ' FROM       ma_promise                                                                                        ' + #13#10
         // +
         // ' WHERE   (chart = n.chart) AND (pday = :jin_day) and (cancel <> ''Y'') and ( cancel <> ''R'' )) AS dddd,  ' + #13#10
         // +
          '  (SELECT   TOP 1 ptime                                                                                      ' + #13#10
          +
          ' FROM       ma_promise                                                                                        ' + #13#10
          +
          ' WHERE   (chart = n.chart) AND (pday = :jin_day) and (cancel <> ''Y'') and ( cancel <> ''R'' )) AS YEYAKTIME,  ' + #13#10
          +
//          '  (SELECT   TOP 1 pcolor                                                                                      ' + #13#10
//          +
//          ' FROM       ma_promise                                                                                        ' + #13#10
//          +
//          ' WHERE   (chart = n.chart) AND (pday = :jin_day) and (cancel <> ''Y'') and ( cancel <> ''R'' )) AS YEYAKcolor,  ' + #13#10
//          +
//          '  (SELECT   TOP 1 pmemo                                                                                      ' + #13#10
//          +
//          ' FROM      ma_promise                                                                                         ' + #13#10
//          +
//          ' WHERE   (chart = n.chart) AND (pday = :Jin_Day) and (cancel <> ''Y'') and ( cancel <> ''R'' )) AS mmmm,  ' + #13#10
//          +
//          '  (SELECT   TOP 1 idn                                                                                        ' + #13#10
//          +
//          ' FROM      ma_promise                                                                                         ' + #13#10
//          +
//          ' WHERE   (chart = n.chart) AND (pday = :Jin_Day)  and (cancel <> ''Y'') and ( cancel <> ''R'' )) AS pidn,   ' + #13#10
//          +
//          '  (SELECT   TOP 1 srmemo                                                                                      ' + #13#10
//          +
//          ' FROM       hxsremark                                                                                        ' + #13#10
//          +
//          ' WHERE   (srchart = n.chart) and srdate = :jin_day ) AS sRemark,  ' + #13#10

//          +
        //  '(select LocUidCod from ma_LocCht where LocChtNum= N.chart and LocUidCod=N.doc_code ) as isJin '+#13#10
         '(select top 1 LocUidCod from ma_LocCht where  LocChtNum= n.chart and LocLevCod=10) as isJin '+#13#10

          +
          ' FROM      ma_jubsu N INNER JOIN                                                                              ' + #13#10
          +
          ' ma_gogek_basic i ON i.chart = N.chart                                                                           ';

     selectqry_Where_day =
          ' WHERE   (N.jin_day = :jin_Day)   and ( (isInPat = 0) or  (isOutPat = 1) )  ';

     selectqry2 =
          'SELECT   i.chart, i.name,  i.first_day,   i.jumin,   N.chamgo,  n.bohum100,                                            ' + #13#10 +
          ' N.team, N.gubun, N.jinstime, N.jinftime, N.sunaptime,  N.hyg,  N.Id,                                       ' + #13#10
          +
          ' N.jin_time, N.jin_day, N.fchart, N.chair, N.nOrder, N.isChart, N.isEmergency ,  N.isJubsu,                 ' + #13#10
          +
          ' N.jongbyul, N.choje, N.teakRye, N.health  , N.rpPK  , N.pregnan,  N.chasangno, N.bontype,  N.yujikum,      ' + #13#10
          +
          ' (select top 1 sanjungTeakRye from jinryo_p where jubsu_id= n.ID) as sanjungTeakRye,                       ' + #13#10
          +
          ' N.kwamok, N.artteeth1, N.artteeth2, N.implteeth1  , N.implteeth2, N.TreatRoom                          ' + #13#10
          +
          'FROM      ma_jubsu N INNER JOIN                                                                              ' + #13#10
          +
          ' ma_gogek_basic i ON i.chart = N.chart                                                                           ' + #13#10
          +
          'WHERE   (N.jin_day = :jin_Day) and (N.Gubun=:gubun)                                  ';


     selectqry2team = 'SELECT   i.chart, i.name,  i.first_day,   i.jumin,  N.Id,                                                  ' + #13#10 +
          ' N.team, N.gubun, N.jinstime, N.jinftime, N.sunaptime,  N.hyg, N.chamgo,  N.rpPK,                                               ' + #13#10
          +
          ' N.jin_time, N.jin_day, N.fchart, N.chair , N.nOrder, N.isChart, N.isEmergency,  N.isJubsu,                       ' + #13#10
          +
          ' N.jongbyul, N.choje, N.teakRye, N.health  , N.pregnan,  N.chasangno, N.bontype,  N.yujikum,      ' + #13#10
          +
          ' (select top 1 sanjungTeakRye from jinryo_p where jubsu_id= n.ID) as sanjungTeakRye,                       ' + #13#10
          +
          ' N.kwamok, N.artteeth1, N.artteeth2, N.implteeth1  , N.implteeth2 , N.TreatRoom                   ' + #13#10
          +
          'FROM      ma_jubsu N INNER JOIN                                                                   ' + #13#10
          +
          ' ma_gogek_basic i ON i.chart = N.chart                                                                           ' + #13#10
          +
          'WHERE  (N.jin_day = :jin_Day) and (N.Gubun=:gubun) and  ( n.team=:team)                                 ';
var
     i, reccount: integer;
     CurrentTime: string;
     varChair: string;//integer;

     varRow, varCol: integer;

     varScrollposition: integer;
     varStatGubun1,
          varStatGubun2: integer;
     varRowCount2: integer;
     varRowNum: integer;
     varCntJinryoDaegi, varCntJinryojung,
          varCntSunapDaegi, varCntSunapEnd, varCntDaegiJubsu: integer;
     varCntJubsu: integer;
     varRowAdd: integer;
     varDDD: string;
     varQuery: string;
     varteam:string;

     daegiQuery : TuniQuery;
     varChojae : integer;
     varJongbeul : integer;
     sTime : integer;


begin
//    stime:= GettickCount;

  try
     vargrid.beginupdate;

     vargrid.LockUpdate := true;


   try


     varTopRow := varGrid.TopRow;
     varStatGubun1 := -1;
     varStatGubun2 := -1;
     varRowcount2 := 4;
     CurrentTime := FormatDateTime('HH:MM', now);


//       if varGrid.row > 1 then
//
//           varRow    := varGrid.row - 1
//       else
//           varRow    := 0;

     //ToDo : 같은 탭에서 그리드의 현재 선택된 행을 다시 선택된것을 보여주자.
     varRow    := varGrid.row;

     varGrid.ClearRows(1, varGrid.RowCount - 1);
//     varGrid.RemoveRowsEx(1, varGrid.RowCount - 1);
//     varGrid.RemoveRows(1, varGrid.RowCount - 1);


     varGrid.RowCount := 2;

//       if varGrid.row > 1 then
//
//           varRow    := varGrid.row - 1
//       else
//           varRow    := 0;
//     varScrollposition := varGrid.GetScrollPosition(0, varRow);

     varCntJinryoDaegi := 0;
     varCntJinryojung := 0;
     varCntSunapDaegi := 0;
     varCntSunapEnd := 0;
     varCntDaegiJubsu := 0; //대기실 접수
     varCntJubsu := 0; //체어접수
     varRowAdd := 0;
     varRowNum := 0;

     //각 구분별 카운팅 시작 --> 변수에 넣기
    // if cbDaegiGubun.ItemIndex <= 0 then
    // begin
          //여기서
          //진료대기, 진료중, 수납내기, 수납완료의 숫자를 센다.

     varQuery := LoadGroupDataQuery;
//     daegiQuery:= dm_f.sqlfield;

     daegiQuery := TuniQuery.create(nil);
     daegiQuery.connection := dm_f.UniConnection1;



     //대기표에 뿌려주기...

     varGrid.removeRows(1, varGrid.rowcount-1);

     with  daegiQuery  do
     begin
          daegiQuery.Close;
          daegiQuery.Sql.Clear;

          case strCase(gubun, ['0','4','5','6']) of
              0, 1 :  //0:진료대기 4: 보류
                 begin
                         daegiQuery.sql.text := selectqry + selectqry_Where_day;
                         daegiQuery.ParamByName('Jin_Day').AsString := DaegiDate;

                         daegiQuery.Sql.Add('and (gubun = :gubun) ');
                         daegiQuery.ParamByName('gubun').AsString := gubun;
                 end;

               3:  //6:수납대기 또는 완료 '2';  //수납대기 '3';  //수납완료
                begin

                   daegiQuery.sql.text := selectqry + selectqry_Where_day;
                   daegiQuery.ParamByName('Jin_Day').AsString := DaegiDate;

                   daegiQuery.Sql.Add('and (gubun = :gubun or gubun =:gubun2 )  ');
                   daegiQuery.ParamByName('gubun').AsString  := '2';  //수납대기
                   daegiQuery.ParamByName('gubun2').AsString := '3';  //수납완료

                end;
              else
               //5: 입원 //isInpat 1: 숙박입원 2: 낮병동입원   //isOutpat 1: 퇴원
               //ToDo : 입원한 날 부터 퇴원일 전까지 입원환자 리스트에 보이게 하자
               begin


                   daegiQuery.sql.text := selectqry;
                   daegiQuery.Sql.Add('where ((isInpat=''1'' ) or ');  //숙박    이거나
                   daegiQuery.Sql.Add('(isInpat=''2'' ) ) ');          //낮병동
                   daegiQuery.Sql.Add(' and  (isOutpat=''0'' ) ');
                   daegiQuery.Sql.Add(' and  (CONVERT(CHAR(10), inPat_time, 23) <= :inPat_time) ');
                   daegiQuery.ParamByName('inPat_time').AsString := DaegiDate;
                                 //CONVERT(CHAR(10), DATETIME, 23)
                   daegiQuery.ParamByName('Jin_Day').AsString := DaegiDate;

                end;

          end;

          if cbTreatRoom.ItemIndex > 0 then // .ColumnItems[cbTreatRoom.ItemIndex,0]
         //  if cbDoc2.ItemIndex > 0 then
          begin
               daegiQuery.Sql.Add('and (N.team = :team) ');
               ParamByName('team').AsString := team;
          end;


          if varviewAll <> true then
          begin

                    if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             daegiQuery.sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             daegiQuery.sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

          end;

          daegiQuery.Sql.Add('ORDER BY   gubun asc, nOrder asc '); //nOrder desc '); //jin_time asc


          daegiQuery.Open;

         // daegiQuery.First;

          if not daegiQuery.IsEmpty then
          begin

               recCount := daegiQuery.recordCount;

          //     lblNc.Caption := inttostr(recCount);

               varGrid.RowCount := recCount + 1 + 4;
               varGrid.FixedRows := 1;

               {

일자
성명
차트번호
팀
전담위생사
구분
접수시간
대기시간
예약시간/내역
예약참고사항
진료시작시간
진료마침시간
수납시간
휴대폰
최초내원일
당일비고
주민번호
               }
                              //  Application.ProcessMessages;

               while not daegiQuery.Eof do
               begin


                    with varGrid do
                    begin
                        for i := FixedRows to Rowcount - 1 do
                         begin

                             //   OriginalCells[realColIndex(0), i] := inttostr(varRowNum);

                              OriginalCells[realColIndex(2), i] := daegiQuery.FieldByName('jin_day').AsString;
                              OriginalCells[realColIndex(3), i] := daegiQuery.FieldByName('chart').AsString;
                              OriginalCells[realColIndex(4), i] := daegiQuery.FieldByName('Name').AsString;

                              OriginalCells[realColIndex(5), i] := juminToNai( daegiQuery.FieldByName('jumin').AsString);  //Nai
                              OriginalCells[realColIndex(6), i] := JuminToGender(daegiQuery.FieldByName('jumin').AsString);  //Gender


                              OriginalCells[realColIndex(7), i] := copy( daegiQuery.FieldByName('jumin').AsString, 1,6) +'-'+
                                                      copy( daegiQuery.FieldByName('jumin').AsString, 7,1) +'******';  //Jumin
                                                      //   copy( daegiQuery.FieldByName('jumin').AsString, 7,7);  //Jumin

                              varteam :=    daegiQuery.FieldByName('team').AsString;

                              OriginalCells[realColIndex(8), i] := varteam;


                              OriginalCells[realColIndex(9), i] := daegiQuery.FieldByName('hyg').AsString;
                              OriginalCells[realColIndex(10), i] := daegiQuery.FieldByName('gubun').AsString;
                              OriginalCells[realColIndex(11), i] := formatdatetime('HH:MM', daegiQuery.FieldByName('Jin_Time').AsDateTime);

                              OriginalCells[realColIndex(13), i] := daegiQuery.FieldByName('YEYAKTIME').AsString; //예약시간

                              varDDD := trim(daegiQuery.FieldByName('DDDD').AsString);
                              //ToDo : HxSremark에는 환자 민감정보가 적힌다. 접수리스트에는 보이지 말자.
                              OriginalCells[realColIndex(14), i] := varDDD ;

                              if trim(daegiQuery.FieldByName('chamgo').AsString) <> '' then //접수 참고사항이 있으면 접수참고사항을 앞에 써주자.
                                OriginalCells[realColIndex(14), i] :=  trim(daegiQuery.FieldByName('chamgo').AsString) + OriginalCells[realColIndex(11), i];


                              OriginalCells[realColIndex(15), i] := daegiQuery.FieldByName('mmmm').AsString;   //예약참고
                              OriginalCells[realColIndex(16), i] := daegiQuery.FieldByName('jinstime').AsString;
                              OriginalCells[realColIndex(17), i] := daegiQuery.FieldByName('jinftime').AsString;
                              OriginalCells[realColIndex(18), i] := daegiQuery.FieldByName('sunaptime').AsString;
                              OriginalCells[realColIndex(19), i] := daegiQuery.FieldByName('cphone').AsString;
                              OriginalCells[realColIndex(20), i] := daegiQuery.FieldByName('pr_idn').AsString;
                              OriginalCells[realColIndex(21), i] := daegiQuery.FieldByName('first_day').AsString;
                              OriginalCells[realColIndex(22), i] := daegiQuery.FieldByName('chair').AsString;
                              OriginalCells[realColIndex(23), i] := daegiQuery.FieldByName('YEYAKtime').AsString;
                              OriginalCells[realColIndex(24), i] := daegiQuery.FieldByName('remcc').AsString;
                              OriginalCells[realColIndex(25), i] := daegiQuery.FieldByName('itime').AsString;
                              OriginalCells[realColIndex(26), i] := daegiQuery.FieldByName('doc').AsString;
                              OriginalCells[realColIndex(27), i] := daegiQuery.FieldByName('nOrder').AsString;
                              OriginalCells[realColIndex(28), i] := daegiQuery.FieldByName('YeyakColor').AsString;

                              OriginalCells[realColIndex(29), i] := daegiQuery.FieldByName('isChart').AsString;
                              OriginalCells[realColIndex(30), i] := daegiQuery.FieldByName('isEmergency').AsString;

                              OriginalCells[realColIndex(32), i] := daegiQuery.FieldByName('isJubsu').AsString;
                              OriginalCells[realColIndex(33), i] := daegiQuery.FieldByName('isOut').AsString;
                              OriginalCells[realColIndex(34), i] := daegiQuery.FieldByName('isCompany').AsString;

                              OriginalCells[realColIndex(35), i] := daegiQuery.FieldByName('ID').AsString;

                              OriginalCells[realColIndex(36), i] := daegiQuery.FieldByName('chamgo').AsString;

                             //ToDo: 코드로 한글명칭 불러오기
                              varChojae   :=    daegiQuery.FieldByName('choje').asInteger;
                              varJongbeul :=    daegiQuery.FieldByName('jongbyul').asInteger;


                              OriginalCells[realColIndex(38), i] := returnChojae(varChojae);//


                              // 1=보험 2=보호1종 3=보호2종 4=일반 5=보호4종 6=보호8종  7=산재 8=자보
                              // 9=차상위1종, 10=차상위2종, 11=차상위2종장애인
                              OriginalCells[realColIndex(37), i] := returnJongByul(varJongbeul) ;


                              OriginalCells[realColIndex(46), i] :=  loadJinjryosil(  daegiQuery.FieldByName('treatRoom').AsString);



                              OriginalCells[realColIndex(52), i] := daegiQuery.FieldByName('jongbyul').AsString;
                              OriginalCells[realColIndex(53), i] := daegiQuery.FieldByName('choje').AsString;
                              OriginalCells[realColIndex(39), i] := daegiQuery.FieldByName('teakrye').AsString;
                              OriginalCells[realColIndex(40), i] := daegiQuery.FieldByName('health').AsString;
                              OriginalCells[realColIndex(41), i] := daegiQuery.FieldByName('pregnan').AsString;
                              OriginalCells[realColIndex(42), i] := daegiQuery.FieldByName('chasangno').AsString;
                              OriginalCells[realColIndex(43), i] := daegiQuery.FieldByName('bontype').AsString;
                              OriginalCells[realColIndex(44), i] := daegiQuery.FieldByName('yujikum').AsString;
                              OriginalCells[realColIndex(45), i] := daegiQuery.FieldByName('kwamok').AsString;

                              OriginalCells[realColIndex(54), i] := daegiQuery.FieldByName('treatRoom').AsString;
                              OriginalCells[realColIndex(47), i] := daegiQuery.FieldByName('artteeth1').AsString;
                              OriginalCells[realColIndex(48), i] := daegiQuery.FieldByName('artteeth2').AsString;
                              OriginalCells[realColIndex(49), i] := daegiQuery.FieldByName('implteeth1').AsString;
                              OriginalCells[realColIndex(50), i] := daegiQuery.FieldByName('implteeth2').AsString;

                              if  trim(daegiQuery.FieldByName('rpPK').AsString) <> '' then

                                 OriginalCells[realColIndex(55), i] := daegiQuery.FieldByName('rpPK').AsString
                              else
                                  OriginalCells[realColIndex(55), i] := '0';


                              OriginalCells[realColIndex(56), i] := daegiQuery.FieldByName('sanjungTeakRye').AsString;



                              OriginalCells[realColIndex(57), i] := daegiQuery.FieldByName('isInPat').AsString;     //1:숙박입원 2: 낮병동입원 3: 숙박퇴원 4: 낮병동퇴원
                              OriginalCells[realColIndex(58), i] := daegiQuery.FieldByName('inPat_time').AsString;
                              OriginalCells[realColIndex(59), i] := daegiQuery.FieldByName('isOutPat').AsString;
                              OriginalCells[realColIndex(60), i] := daegiQuery.FieldByName('outPat_time').AsString;
                              OriginalCells[realColIndex(61), i] := daegiQuery.FieldByName('JaboID').AsString;
                              OriginalCells[realColIndex(62), i] := daegiQuery.FieldByName('doc_code').AsString;
                              OriginalCells[realColIndex(63), i] := daegiQuery.FieldByName('isJin').AsString;
                              OriginalCells[realColIndex(64), i] := daegiQuery.FieldByName('isJiwon').AsString;
                              OriginalCells[realColIndex(65), i] := daegiQuery.FieldByName('isbohum100').AsString;
                              OriginalCells[realColIndex(66), i] := daegiQuery.FieldByName('Jin_Time').Asstring;

                               //대기시간 계산...

                              if (OriginalCells[realColIndex(10), i] = '0') //구분 0: 진료대기
                              or (OriginalCells[realColIndex(10), i] = '9') then //구분  4:수납이지만 진료중수납이어서 진료시간은 가야한다.
                              begin
                                   if OriginalCells[realColIndex(11), i] <> '0' then
                                        OriginalCells[realColIndex(12), i] :=
                                             FormatDateTime('hh:mm',
                                             StrToTime(CurrentTime) -
                                             StrToTime(OriginalCells[realColIndex(11), i])) //접수시간
                                   else
                                        OriginalCells[realColIndex(12), i] := '00:00';
                              end
                              else
                              begin

                                   if OriginalCells[realColIndex(16), i] <> '' then //진료시작시간
                                        OriginalCells[realColIndex(12), i] := FormatDateTime('hh:mm', //대기시간
                                             StrToTime(formatdatetime('HH:MM',
                                             FieldByName('jinstime').AsDateTime))
                                             -
                                             StrToTime(formatdatetime('HH:MM',
                                             FieldByName('Jin_Time').AsDateTime))
                                             )
                                   else
                                        OriginalCells[realColIndex(12), i] := '00:00';

                              end;



                              if OriginalCells[realColIndex(32), i] = '1' then //차트접수
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(1), i, 103, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;

                              if OriginalCells[realColIndex(33), i] = '1' then //외출
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(1), i, 95, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;
                              if OriginalCells[realColIndex(34), i] = '1' then //동행
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(1), i, 145, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;

                              if OriginalCells[realColIndex(29), i] = '1' then //차팅
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(1), i, 44, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;
                              if OriginalCells[realColIndex(30), i] = '1' then //응급
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(4), i, 35, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;
                              if OriginalCells[realColIndex(30), i] = '2' then //체크
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(4), i, 104, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;


                              if FieldByName('gubun').AsString
                                   <> '' then
                                   varStatGubun2 :=
                                        strtoint(daegiQuery.FieldByName('gubun').AsString)
                              else
                                   varStatGubun2 := 0;

                              daegiQuery.next;

                         end;
                    end;

               end; //그리드 뿌리기 완료

               varGrid.TopRow := varTopRow;
               if varGrid.RowCount -1 < varRow  then
                    varRow    := 0;


               if configvalue.varDaegiRefreshMode = '1' then
               begin
                 if vargrid.rowCount > 1 then
                  begin
                    vargrid.SetScrollPosition(0, varrow,  varscrollposition);
                    varGrid.Row := varRow;
                    varGrid.col := varCol;
                  end;
               end
               else
               begin  //ToDo : 무조건 지금 보던 환자가 체크되게 하자
                   if vargrid.rowCount > 1 then
                   begin
                     vargrid.SetScrollPosition(0, varrow,  varscrollposition);
                     varGrid.Row := varRow;
                     varGrid.col := varCol;
                   end;
               end;

               varGrid.RowCount := varGrid.RowCount - varRowcount2;
               varGrid.autonumbercol(0);
          end
          else
          begin

               lblNc.Caption := '0';

          end;

     end;


   except
    on E: Exception do
            begin
              exceptLogging('DaegiSelectFail.'+E.Message);
            end;

   end;


//       if varGrid.RowCount -1 > varRow  then
//
//           varRow    := varGrid.row
//       else
//           varRow    := 0;
//      varScrollposition := varGrid.GetScrollPosition(0, varRow);


  finally



    vargrid.LockUpdate := false;
    vargrid.Endupdate;
    daegiQuery.free;

  end;
end;


procedure TDaegiFrame_fr.PromiseSelect(daegidate, gubun, team: string);
label
     reLoad, isEof;
var
     i, reccount: integer;
     CurrentTime: string;
     varChair: string;//integer;
     varRow: integer;
     varScrollposition: integer;
     varStatGubun1,
          varStatGubun2: integer;
     varRowCount2: integer;
     varRowNum: integer;
     varCntJinryoDaegi, varCntJinryojung,
          varCntSunapDaegi, varCntSunapEnd, varCntDaegiJubsu: integer;
     varCntJubsu: integer;
     varRowAdd: integer;
     varDDD: string;
     varQuery: string;
     varteam:string;

     daegiQuery : TuniQuery;
     varChojae : integer;
     varJongbeul : integer;

     varGrid : TadvstringGrid;
 begin
   try

     varGrid    :=  grdDaegi;

     vargrid.beginupdate;
     vargrid.LockUpdate := true;
     varRow  := grdDaegi.Row;


     varGrid.ClearRows(1, varGrid.RowCount - 1);
//     varGrid.RemoveRowsEx(1, varGrid.RowCount - 1);
//     varGrid.RemoveRows(1, varGrid.RowCount - 1);

     varGrid.RowCount := 2;



     daegiQuery := TuniQuery.create(self);
     daegiQuery.connection := dm_f.UniConnection1;

     CurrentTime := FormatDateTime('HH:MM', now);
//     grdpromise.ClearRows(1, grdpromise.RowCount);
//     grdpromise.RowCount := 2;

     //예약리스트 순서
      {1. 접수
       2. 진료대기
       3. 진료
       4. 수납대기
       5. 수납
       6. 취소
       7. 예약
      }

     varQuery := LoadGroupDataQuery;


     with daegiQuery do
     begin

          Close;
          Sql.Clear;
         // Sql.Add('SELECT  idn, team, chart, name, ptime, remark, pos, cancel, pcolor, pmemo, doc ');
          Sql.Add('SELECT  *,                                                              ');
           Sql.Add('   (select jumin from ma_gogek_basic where chart=ma_promise.chart )  as jumin , ');
           Sql.Add('   (select first_day from ma_gogek_basic where chart=ma_promise.chart )  as first_day  ');
          Sql.Add('FROM       ma_promise                                                  ');
          Sql.Add('WHERE   (pday = :jin_day) and (cancel <> ''Y'')                        ');
          Sql.Add(' and (cancel <> ''C'') and ( cancel <> ''R'' )  and ( cancel <> ''U'' )                         ');
          Sql.Add('           and name <> ''''                                            ');
          Sql.Add('and pos <> ''8''                                                       ');

          if cbTreatRoom.ItemIndex > 0 then
          begin
               Sql.Add('and (team = :team) ');
               ParamByName('team').AsString := team;
          end;



          if  cbYeyakView.Checked = false then   //접수도
          begin
               sql.Add('and Pos = '''' '); //Changed Data
          end;


          if varviewAll <> true then
          begin
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

          Sql.Add('ORDER BY pos asc, ptime aSC         ');
          ParamByName('Jin_Day').AsString := DaegiDate;
          Open;
          First;
          if not IsEmpty then
          begin
                   recCount := daegiQuery.recordCount;

                   lblNc.Caption := inttostr(recCount);

                   varGrid.RowCount := recCount + 1 ;//+ 4;
                   varGrid.FixedRows := 1;

                   {

    일자
    성명
    차트번호
    팀
    전담위생사
    구분
    접수시간
    대기시간
    예약시간/내역
    예약참고사항
    진료시작시간
    진료마침시간
    수납시간
    휴대폰
    최초내원일
    당일비고
    주민번호
                   }
                                  //  Application.ProcessMessages;

                 //  while not daegiQuery.Eof do
                   while not daegiQuery.Eof do
                   begin

                        with varGrid do
                        begin
                            for i := FixedRows to Rowcount - 1 do
                             begin

                                  //여기서 순번을 넣는데,
                                  //기본은 먼저온 사람이 맨위에, 가장낮은번호로 (1,2,3,4,5...)
                                  //옵션에서 선택시
                                  //먼저온사람이 맨 밑으로 가장 낮은 번호로.  (...5.4.3.2.1)
                                 // varRowNum := varRowNum + 1;
                                  if varLoadOrderKind = '0' then
                                  begin
                                       varRowNum := varRowNum + 1;

                                  end
                                  else
                                  begin
                                       varRowNum := varRowNum - varRowAdd;
                                       varRowAdd := 1;
                                  end;

                               //   OriginalCells[realColIndex(0), i] := inttostr(varRowNum);

                                  OriginalCells[realColIndex(2), i] := daegiQuery.FieldByName('pday').AsString;
                                  OriginalCells[realColIndex(3), i] := daegiQuery.FieldByName('chart').AsString;
                                  OriginalCells[realColIndex(4), i] := daegiQuery.FieldByName('Name').AsString;

                                  OriginalCells[realColIndex(5), i] := juminToNai(daegiQuery.FieldByName('jumin').AsString);  //Nai
                                  OriginalCells[realColIndex(6), i] := JuminToGender( daegiQuery.FieldByName('jumin').AsString);  //Gender
//
//
                                  OriginalCells[realColIndex(7), i] := daegiQuery.FieldByName('jumin').AsString;
                                  varteam :=    daegiQuery.FieldByName('team').AsString;

                                  OriginalCells[realColIndex(8), i] := varteam;


                                  OriginalCells[realColIndex(9), i] := '';//daegiQuery.FieldByName('hyg').AsString;
                                  OriginalCells[realColIndex(10), i] := '';//daegiQuery.FieldByName('gubun').AsString;
                                  OriginalCells[realColIndex(11), i] := '';//formatdatetime('HH:MM', daegiQuery.FieldByName('Jin_Time').AsDateTime);
                                  OriginalCells[realColIndex(12), i] := '';//대기시간
//
                                  OriginalCells[realColIndex(13), i] := daegiQuery.FieldByName('pTime').AsString; //예약시간
//
//                                  varDDD := trim(daegiQuery.FieldByName('DDDD').AsString);
//                                  if varDdd <> '' then
//                                       OriginalCells[realColIndex(14), i] := varDDD
//                                  else
//                                       OriginalCells[realColIndex(14), i] :=trim( daegiQuery.FieldByName('sRemark').AsString);
//
//                                  if trim(daegiQuery.FieldByName('chamgo').AsString) <> '' then //접수 참고사항이 있으면 접수참고사항을 앞에 써주자.
                                    OriginalCells[realColIndex(14), i] :=  trim(daegiQuery.FieldByName('remark').AsString) + OriginalCells[realColIndex(11), i];
//
//
                                  OriginalCells[realColIndex(15), i] := daegiQuery.FieldByName('pMemo').AsString;   //예약참고
//                                  OriginalCells[realColIndex(16), i] := daegiQuery.FieldByName('jinstime').AsString;
//                                  OriginalCells[realColIndex(17), i] := daegiQuery.FieldByName('jinftime').AsString;
//                                  OriginalCells[realColIndex(18), i] := daegiQuery.FieldByName('sunaptime').AsString;
                                  OriginalCells[realColIndex(19), i] := daegiQuery.FieldByName('tel').AsString;
                                  OriginalCells[realColIndex(20), i] := daegiQuery.FieldByName('idn').AsString;
//                                  OriginalCells[realColIndex(21), i] := LoadFirstDay(daegiQuery.FieldByName('chart').AsString);// '';//최초내원일daegiQuery.FieldByName('first_day').AsString;
                                  OriginalCells[realColIndex(21), i] := daegiQuery.FieldByName('first_day').AsString;
                                  OriginalCells[realColIndex(23), i] := daegiQuery.FieldByName('pTime').AsString;
                                  OriginalCells[realColIndex(24), i] := daegiQuery.FieldByName('pMemo').AsString;
                                  OriginalCells[realColIndex(25), i] := '';//daegiQuery.FieldByName('itime').AsString;
                                  OriginalCells[realColIndex(26), i] := LoadDocNameFromSawonWithID(daegiQuery.FieldByName('doc').AsString);
                                  OriginalCells[realColIndex(27), i] :='';// daegiQuery.FieldByName('nOrder').AsString;
                                  OriginalCells[realColIndex(28), i] :='';// daegiQuery.FieldByName('YeyakColor').AsString;
                                  OriginalCells[realColIndex(29), i] :='';// daegiQuery.FieldByName('isChart').AsString;
                                  OriginalCells[realColIndex(30), i] :='';// daegiQuery.FieldByName('isEmergency').AsString;
//
                                  OriginalCells[realColIndex(32), i] :='';// daegiQuery.FieldByName('isJubsu').AsString;
                                  OriginalCells[realColIndex(33), i] :='';// daegiQuery.FieldByName('isOut').AsString;
                                  OriginalCells[realColIndex(34), i] :='';// daegiQuery.FieldByName('isCompany').AsString;
//
                                  OriginalCells[realColIndex(35), i] :='';// daegiQuery.FieldByName('ID').AsString;
//
                                  OriginalCells[realColIndex(36), i] := '';//daegiQuery.FieldByName('chamgo').AsString;

                                OriginalCells[realColIndex(52), i] := '3' ;//종별예약클릭 일반daegiQuery.FieldByName('jongbyul').AsString;
                                OriginalCells[realColIndex(53), i] := '4'; //초재 예약클릭시 진찰로산정안함 daegiQuery.FieldByName('choje').AsString;
                                 //ToDo: 코드로 한글병칭 불러오기
                                varJongbeul :=  strtoint(  OriginalCells[realColIndex(52), i]);//  daegiQuery.FieldByName('jongbyul').asInteger;
                                varChojae   :=  strtoint(  OriginalCells[realColIndex(53), i]);//daegiQuery.FieldByName('choje').asInteger;
//
//
//
                                OriginalCells[realColIndex(38), i] := returnChojae(varChojae);//
                                OriginalCells[realColIndex(37), i] := returnJongByul(varJongbeul) ;
                                OriginalCells[realColIndex(46), i] :=  loadJinjryosil(  daegiQuery.FieldByName('team').AsString);
//
//
//
                                  OriginalCells[realColIndex(39), i] := '';//daegiQuery.FieldByName('teakrye').AsString;
                                  OriginalCells[realColIndex(40), i] := '0';//daegiQuery.FieldByName('health').AsString;
                                  OriginalCells[realColIndex(41), i] := '';//daegiQuery.FieldByName('pregnan').AsString;
                                  OriginalCells[realColIndex(42), i] := '';//daegiQuery.FieldByName('chasangno').AsString;
                                  OriginalCells[realColIndex(43), i] := '';//daegiQuery.FieldByName('bontype').AsString;
                                  OriginalCells[realColIndex(44), i] := '';//daegiQuery.FieldByName('yujikum').AsString;
                                  OriginalCells[realColIndex(45), i] := '';//daegiQuery.FieldByName('kwamok').AsString;
//
                                  OriginalCells[realColIndex(54), i] := daegiQuery.FieldByName('team').AsString;
                                  OriginalCells[realColIndex(47), i] := '';//daegiQuery.FieldByName('artteeth1').AsString;
                                  OriginalCells[realColIndex(48), i] := '';//ddaegiQuery.FieldByName('artteeth2').AsString;
                                  OriginalCells[realColIndex(49), i] := '';//ddaegiQuery.FieldByName('implteeth1').AsString;
                                  OriginalCells[realColIndex(50), i] := '';//ddaegiQuery.FieldByName('implteeth2').AsString;
//
                                  if  trim(daegiQuery.FieldByName('rpPK').AsString) <> '' then

                                     OriginalCells[realColIndex(55), i] := daegiQuery.FieldByName('rpPK').AsString
                                  else
                                    OriginalCells[realColIndex(55), i] := '0';   //rpPK
//
//                                   //대기시간 계산...
//
//                                  if (OriginalCells[realColIndex(10), i] = '0') //구분 0: 진료대기
//                                  or (OriginalCells[realColIndex(10), i] = '9') then //구분  4:수납이지만 진료중수납이어서 진료시간은 가야한다.
//                                  begin
//                                       if OriginalCells[realColIndex(11), i] <> '0' then
//                                            OriginalCells[realColIndex(12), i] :=
//                                                 FormatDateTime('hh:mm',
//                                                 StrToTime(CurrentTime) -
//                                                 StrToTime(OriginalCells[realColIndex(11), i])) //접수시간
//                                       else
//                                            OriginalCells[realColIndex(12), i] := '00:00';
//                                  end
//                                  else
//                                  begin
//
//                                       if OriginalCells[realColIndex(16), i] <> '' then //진료시작시간
//                                            OriginalCells[realColIndex(12), i] := FormatDateTime('hh:mm', //대기시간
//                                                 StrToTime(formatdatetime('HH:MM',
//                                                 FieldByName('jinstime').AsDateTime))
//                                                 -
//                                                 StrToTime(formatdatetime('HH:MM',
//                                                 FieldByName('Jin_Time').AsDateTime))
//                                                 )
//                                       else
//                                            OriginalCells[realColIndex(12), i] := '00:00';
//
//                                  end;
//
//
//                                  if OriginalCells[realColIndex(32), i] = '1' then //차트접수
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(1), i, 103, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//
//                                  if OriginalCells[realColIndex(33), i] = '1' then //외출
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(1), i, 95, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//                                  if OriginalCells[realColIndex(34), i] = '1' then //동행
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(1), i, 145, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//
//                                  if OriginalCells[realColIndex(29), i] = '1' then //차팅
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(1), i, 44, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//                                  if OriginalCells[realColIndex(30), i] = '1' then //응급
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(4), i, 35, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//                                  if OriginalCells[realColIndex(30), i] = '2' then //체크
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(4), i, 104, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//
//
//                                  if FieldByName('gubun').AsString
//                                       <> '' then
//                                       varStatGubun2 :=
//                                            strtoint(daegiQuery.FieldByName('gubun').AsString)
//                                  else
//                                       varStatGubun2 := 0;


                              OriginalCells[realColIndex(57), i] := '';//daegiQuery.FieldByName('isInPat').AsString;     //1:숙박입원 2: 낮병동입원 3: 숙박퇴원 4: 낮병동퇴원
                              OriginalCells[realColIndex(58), i] := '';//daegiQuery.FieldByName('inPat_time').AsString;
                              OriginalCells[realColIndex(59), i] := '';//daegiQuery.FieldByName('isOutPat').AsString;
                              OriginalCells[realColIndex(60), i] := '';//daegiQuery.FieldByName('outPat_time').AsString;
                              OriginalCells[realColIndex(61), i] := '';//daegiQuery.FieldByName('JaboID').AsString;
                              OriginalCells[realColIndex(62), i] := '';//daegiQuery.FieldByName('doc_code').AsString;
                              OriginalCells[realColIndex(63), i] := '';//daegiQuery.FieldByName('isJin').AsString;
                              OriginalCells[realColIndex(64), i] := '';//daegiQuery.FieldByName('isJiwon').AsString;
                              OriginalCells[realColIndex(65), i] := '';//daegiQuery.FieldByName('isbohum100').AsString;


                                  next;
                                  if  daegiQuery.Eof then
                                       goto isEof;

                                  reload:
                             end;
                        end;
                   end;

                   isEof:


                   varGrid.TopRow := varTopRow;
                   if varGrid.RowCount -1 < varRow  then
                        varRow    := 0;

                   if configvalue.varDaegiRefreshMode = '1' then
                   begin
                        vargrid.SetScrollPosition(0, varrow,
                             varscrollposition);
                        varGrid.Row := varRow;

                   end
                   else
                   begin
                        vargrid.SetScrollPosition(0, varrow,
                             varscrollposition);
                        varGrid.Row := varRow;
                   end;

                   varGrid.RowCount := varGrid.RowCount - varRowcount2;
                   varGrid.autonumbercol(0);
              end
              else
              begin

                   lblNc.Caption := '0';

              end;
     end;
   finally
    vargrid.LockUpdate := false;
    vargrid.Endupdate;
    daegiQuery.free;

  end;


end;




procedure TDaegiFrame_fr.Timer1Timer(Sender: TObject);
var
   compoName : string;
begin
//     try
//          // dtDate.date := now;
//           // lblKind.caption:=formatdatetime('hhmmssnn',now);
//
//        compoName := (Self.Parent.parent  as TAdvpanel).Name;
//
//
//
//
//        {  jubsuselect(grdDaegi,
//               formatdatetime('YYYY-MM-DD', dtDate.date), //일자
//               inttostr(cbDaegigubun.itemindex - 1), //구분
//               cbteam.Text //팀
//               );
//               }
//           if configvalue.varDaegiTimerUse = '0' then //타이머 사용안함이 아니오(0)이면
//
//               else
//               begin
//
//               end;
//
//                   if configvalue.varDaegiTimerUse = '0' then //타이머 사용안함이 아니오(0)이면
//                   begin
//                          // daegiselect(tsmain.TabIndex);
//                         btnRefreshClick(self);
//
//                         if compoName = 'pnlDaegi' then   //Main_f
//                         begin
//                            main_f.lblAutoRefresh.Font.Color := clBlue;
//                            main_f.lblAutoRefresh.Caption :='자동갱신 사용중' ;
//
//                         end;
//                   end
//                         else
//                         begin
//                           timer1.Enabled := false;
//                          if compoName = 'pnlDaegi' then   //Main_f
//                           begin
//                              main_f.lblAutoRefresh.Font.Color := clRed;
//                              main_f.lblAutoRefresh.Caption :='자동갱신 꺼져있음';
//
//                           end;
//                         end;
//
//                //    LoadCommessage; //전달사항 개수세기
//                //    LoadTelCount; //전화 개수세기
//
//     except
//          //  timer1.Enabled := false;
//     end;

end;

procedure TDaegiFrame_fr.Timer2Timer(Sender: TObject);
var
   compoName : string;
begin

   //
   compoName := (Self.Parent.parent  as TAdvpanel).Name;

   if compoName = 'pnlDaegi' then   //Main_f
   begin
       main_f.lblTime.caption := formatdatetime('HH:MM:SS', now);
   end
   else
         if compoName = 'pnlWait' then   //JinRyo_f
         begin
            //  main_f.lblTime.caption := formatdatetime('HH:MM:SS', now);
         end;
   //    main_f.lblTime.caption := formatdatetime('HH:MM:SS', now);
     with dm_f.sqlTimer do
     begin
          close;
          sql.Clear;
          sql.Text := 'select isNull(status, 0) as status from tblStatus where jin_day=:jin_day' ;
          paramByName('jin_day').asString:= formatdatetime('YYYY-MM-DD', now);
          open;
          if not isEmpty then
          begin

              if fieldByname('status').AsInteger > nStatus  then
              begin
                    nStatus := fieldByname('status').AsInteger;

                    Refresh2;


//                    RunBackgroundQuery(dm_f.UniConnection1,
//                        dm_f.sqlCount,
//                        formatdatetime('YYYY-MM-DD', dtDate.date));
              end;
          end
          else
          begin
                 nStatus := 0;
          end;
     end;
end;

procedure TDaegiFrame_fr.Refresh2;
var
   sTime     : integer;
   compoName : string;
begin
    try
          screen.cursor := crHourglass;
      //    (sender as TadvShapeButton).Enabled := false;
        if checkBox2.Checked= false then
        begin

              dtDate.date := now;

        end;



        // DaDaegiSelectData(formatdatetime('YYYY-MM-DD', dtDate.date));

         stime:= GettickCount;


         //ToDo : 속도 개선 필요... 속도가 느려서  daegiselect에서 옮겨 놓음.
         //약 1초~2초사이
//         CountDaegi(formatdatetime('YYYY-MM-DD', dtDate.date) , //jin_day:string;
//             cbAF.checked,
//             nJubsuCnt       ,
//             nWaitCnt        ,
//             nInPatCnt       ,
//             nPromiseCnt     ,
//             nSunapTotalCnt  ,
//             nSunapWaitCnt   ,
//             nSunapCnt  );
//
         daegiselect(tsmain.TabIndex);
//
//         DispCount;



      compoName := (Self.Parent.parent  as TAdvpanel).Name;

      if compoName = 'pnlDaegi' then   //Main_f
       begin

             main_f.lblStatus.Caption := inttostr(GetTickCount - stime) + 'ms';

       end
       else
      if compoName = 'pnlWait' then   //JinRyo_f
       begin

            jinryo_f.lblstatus.Caption := inttostr(GetTickCount - stime) + 'ms';

       end;





    finally
        screen.cursor := crDefault;
    //    (sender as TadvShapeButton).Enabled := true;;

    end;

end;
procedure TDaegiFrame_fr.tsMainMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
     path: string;
     FormInit: Tinifile;
     newtab : integer;

   sTime     : integer;
   compoName : string;

begin
    try
   //      screen.Cursor := crHourGlass;

        if  tsMain.Enabled = false then
        exit;

         compoName := (Self.Parent.parent  as TAdvpanel).Name;
         tsMain.Enabled := false;


         stime:= GettickCount;



         newtab :=  tsMain.TabIndex;

         Path := GetConfigDir + 'db.ini';
         FormInit := TIniFile.Create(Path);
         FormInit.WriteInteger('ETC', 'DaegiTabinfo', NewTab);//tsMain.TabIndex);
         FormInit.Free;
       //  daegiGridChange(newtab);

//        grddaegi.row:= 0;

         case newtab of

              0: //접수완료 (진료대기)
                   begin




                        if compoName = 'pnlDaegi' then   //Main_f
                         begin

                                grddaegi.PopupMenu:= AdvPopupMenu6;
                                    mnuJubsuDelete.visible:= true;  //접수취소
                                    N11.visible:= true; //splitter
                                    mnuJubsuChange.visible:= true; //접수내역 변경
                                    mnuJinDaegi.visible:= false; // 보류를 접수로
                                    cbYeyakView.visible:= false;

                                    mnuJinDaegi.visible    := false;   // 보류를 접수로보내기
                                    mnuJubsuDelete.visible      := true;   // 접수취소
                                    mnuTxView_daegi.visible:= true;   // 처방보기
                                    mnuJubsuChange.visible            := true;   // 접수내역변경



                                grddaegi.Align := alClient;
                                grddaegi.Visible := true;

                         end
                         else
                        if compoName = 'pnlWait' then   //JinRyo_f
                         begin

                               grddaegi.PopupMenu:= AdvPopupMenu6;
                                  mnuJubsuDelete.visible:= false;  //접수취소
                                  N11.visible:= false; //splitter
                                  mnuJubsuChange.visible:= false; //접수내역 변경
                                  mnuJinDaegi.visible:= false; // 보류를 접수로

                               cbYeyakView.visible:= false;
                               grddaegi.Align := alClient;
                               grddaegi.Visible := true;

                         end;


                   end;
               1:  //접수보류
                  begin
                        grddaegi.PopupMenu:= AdvPopupMenu6;
                            mnuJubsuDelete.visible:= false;  //접수취소
                            N11.visible:= false; //splitter
                            mnuJubsuChange.visible:= false; //접수내역 변경
                            mnuJinDaegi.visible:= true; // 보류를 접수로
                            cbYeyakView.visible:= false;

                        grddaegi.Align := alClient;
                        grddaegi.Visible := true;
                      //  grdPromise.Visible := false;
    //                    if aSSigned(Jinryo_f)  then
    //                        jinryo_f.btnOutHosp.Visible := false;
                  end;
               2: //예약내역
                   begin
                         grddaegi.PopupMenu:= PopupMenu4;
                         grddaegi.Align := alClient;
                         grddaegi.Visible := true;
                         cbYeyakView.visible:= true;
                      //  grdPromise.Visible := false;



    //                    grddaegi.Visible := false;
    //                    grdPromise.Visible := true;
    //                    grdPromise.Align := alClient;

    //                    if aSSigned(Jinryo_f)  then
    //                        jinryo_f.btnOutHosp.Visible := false;
                  end;

               3:  //입원
                  begin
                        grddaegi.PopupMenu:= PopupMenu3;
                        grddaegi.Align := alClient;
                        grddaegi.Visible := true;
                            cbYeyakView.visible:= false;
                        //grdPromise.Visible := false;
    //                    if aSSigned(Jinryo_f)  then
    //                        jinryo_f.btnOutHosp.Visible := true;
                  end;

               4: //수납대기 (완료)
                   begin

                        grddaegi.PopupMenu:= AdvPopupMenu6;
                            mnuJubsuDelete.visible      := false;   //접수취소
                            mnuTxView_daegi.visible:= false;   //  처방보기
                            mnuJubsuChange.visible            := false;   //접수내역변경
                            mnuJinDaegi.visible    := false;   //보류를 접수로보내기

                        grddaegi.Align := alClient;
                        grddaegi.Visible := true;
                            cbYeyakView.visible:= false;
    //                    if aSSigned(Jinryo_f)  then
    //                        jinryo_f.btnOutHosp.Visible := false;

                       // grdPromise.Visible := false;
                   end;
               5: //수납완료
                   begin

                        grddaegi.PopupMenu:= AdvPopupMenu6;
                            mnuJubsuDelete.visible:= false;  //접수취소
                        grddaegi.Align := alClient;
                        grddaegi.Visible := true;
                            cbYeyakView.visible:= false;

                       // grdPromise.Visible := false;
                   end;
          end;

          if aSSigned(Jinryo_f)  then
              jinryo_f.btnOutHosp.Visible := false;

          daegiSelect(newTab);

          RunBackgroundQuery(dm_f.UniConnection1,
              dm_f.sqlCount,
              formatdatetime('YYYY-MM-DD', dtDate.date));



          if compoName = 'pnlDaegi' then   //Main_f
           begin

                 main_f.lblStatus.Caption := inttostr(GetTickCount - stime) + 'ms';

           end
           else
          if compoName = 'pnlWait' then   //JinRyo_f
           begin

                jinryo_f.lblstatus.Caption := inttostr(GetTickCount - stime) + 'ms';

           end;


    finally
     //     screen.Cursor := crDefault;

       tsmain.Enabled := true;
    end;
end;

procedure TDaegiFrame_fr.JPSelect(varGrid: TadvStringGrid; daegidate, gubun, team:string; remark: string='');
const
     selectDaegiQry =
'SELECT                                                                                                                        ' + #13#10 +
'  case                                                                                                                        ' + #13#10 +
'       when N.gubun = ''10'' then ''접수''                                                                                     ' + #13#10 +
'       when N.gubun = ''0'' then ''체어''                                                                                     ' + #13#10 +
'       when N.gubun = ''1'' then ''진료''                                                                                     ' + #13#10 +
'       when N.gubun = ''2'' then ''수납''                                                                                     ' + #13#10 +
'       when N.gubun = ''3'' then ''완료''                                                                                     ' + #13#10 +
'       when N.gubun = ''9'' then ''완료''                                                                                     ' + #13#10 +
'          else ''접수'' end as stat                                                                                           ' + #13#10 +
', i.chart, i.name,  i.first_day,   i.jumin,                                                                                   ' + #13#10 +
' N.team,                                                                                                                      ' + #13#10 +
'  case                                                                                                                        ' + #13#10 +
'       when N.gubun = ''10'' then 5                                                                                            ' + #13#10 +
'       when N.gubun = ''0'' then 10                                                                                           ' + #13#10 +
'       when N.gubun = ''1'' then 11                                                                                           ' + #13#10 +
'       when N.gubun = ''2'' then 12                                                                                           ' + #13#10 +
'       when N.gubun = ''3'' then 17                                                                                           ' + #13#10 +
'       when N.gubun = ''9'' then 19                                                                                           ' + #13#10 +
'          else 5 end as gubun2,                                                                                               ' + #13#10 +
' N.jinstime, N.jinftime, N.sunaptime, N.jubsu_time,  N.hyg,                                                                                 ' + #13#10 +
' N.pr_memo as DDDD, N.pr_time   AS YEYAKTIME,                                                                                 ' + #13#10 +
' N.jin_time, N.jin_day, N.fchart, N.chair  , N.doc,                                                                           ' + #13#10 +
' N.nOrder,  N.pr_idn, N.isChart, N.isEmergency,                                                                               ' + #13#10 +
'   (SELECT   TOP 1   phone from ma_gogek_phone where chart=n.chart and kind=''2'' ) as cPhone,                                ' + #13#10 +
'   (SELECT   TOP 1  convert(varchar(300), remark) from ma_gogek_remark                                                        ' + #13#10 +
'       where chart=n.chart and kind=''11'' and code=''000'' and reg_day= :jin_day) as RemCC,                            ' + #13#10 +
'   (SELECT   top 1   convert(varchar,jinstime - jin_time,108)  from ma_jubsu                                                  ' + #13#10 +
'       where chart=n.chart and jin_day = :jin_day order by jin_day desc) as itime,                                      ' + #13#10 +
'   (SELECT   TOP 1 pcolor  FROM ma_promise                                                                                    ' + #13#10 +
'       WHERE   (chart = n.chart) AND (pday = :jin_day) and (cancel <> ''Y'') and ( cancel <> ''R'' )) AS YEYAKcolor,    ' + #13#10 +
'   (SELECT   TOP 1 convert(varchar(300),pmemo )  FROM      ma_promise                                                         ' + #13#10 +
'       WHERE   (chart = n.chart) AND (pday = :jin_day) and (cancel <> ''Y'') and ( cancel <> ''R'' )) AS mmmm,          ' + #13#10 +
'   (SELECT   TOP 1 convert(varchar(300), srmemo ) FROM       hxsremark                                                        ' + #13#10 +
'       WHERE   (srchart = n.chart) and srdate = :jin_day ) AS sRemark                                                   ' + #13#10 +
'  FROM      ma_jubsu N INNER JOIN                                                                                             ' + #13#10 +
'  ma_gogek_basic i ON i.chart = N.chart                                                                                       ' + #13#10 +
'  WHERE   (N.jin_day = :jin_day)                                                                                        ' + #13#10 +
'                                                                                                                              ' + #13#10 +
'                                                                                                                              ' + #13#10 +
'union all                                                                                                                     ' + #13#10 +
'                                                                                                                              ' + #13#10 +
'select                                                                                                                        ' + #13#10 +
'  case                                                                                                                        ' + #13#10 +
'       when (pos = '''' and cancel <> ''C'' and cancel <> ''U'') then ''예약''                                                                    ' + #13#10 +
'       when (cancel=''Y'' or cancel=''C'' or pos=''4'' )  then ''취소''                                                       ' + #13#10 +
'          else ''예약'' end as stat                                                                                           ' + #13#10 +
',  chart, name,                                                                                                               ' + #13#10 +
''''',--first_day                                                                                                              ' + #13#10 +
''''',--jumin                                                                                                                  ' + #13#10 +
'team,                                                                                                                         ' + #13#10 +
'    case                                                                                                                      ' + #13#10 +
'       when (pos = '''' and cancel <> ''C'' and cancel <> ''U'') then 15                                                                          ' + #13#10 +
'       when (cancel=''Y'' or cancel=''C'' or pos=''4'' )  then 16                                                             ' + #13#10 +
'          else 15 end as gubun2,                                                                                              ' + #13#10 +
''''',  --jinstime                                                                                                             ' + #13#10 +
''''',  --jinftime                                                                                                             ' + #13#10 +
''''',  --sunaptime                                                                                                            ' + #13#10 +
''''',  --jubsu_time                                                                                                            ' + #13#10 +
''''',--hyg                                                                                                                    ' + #13#10 +
'remark, --DDDD                                                                                                                ' + #13#10 +
'ptime,  --yeyakTime                                                                                                           ' + #13#10 +
''''',--jin_time                                                                                                               ' + #13#10 +
'pday,  --jin_day                                                                                                              ' + #13#10 +
''''',--fchart                                                                                                                 ' + #13#10 +
'gubun,--chair                                                                                                                 ' + #13#10 +
'doc, --Doc                                                                                                                    ' + #13#10 +
''''',--nOrder                                                                                                                 ' + #13#10 +
'idn,  --pr_Idn                                                                                                                ' + #13#10 +
''''',--isChart                                                                                                                ' + #13#10 +
''''',--isEmergency,                                                                                                           ' + #13#10 +
'tel,  --cPhone                                                                                                                ' + #13#10 +
''''',--RemCC                                                                                                                  ' + #13#10 +
''''',  --iTime                                                                                                                ' + #13#10 +
'pColor,                                                                                                                       ' + #13#10 +
'convert(varchar(300),pmemo ),                                                                                                 ' + #13#10 +
'''''  --sRemark                                                                                                               ' + #13#10 +
'  from ma_promise                                                                                                             ' + #13#10 +
'where pday=:jin_day and (cancel=''Y'' or cancel=''C''  or pos=''''  )                                                   '   ;






     selectqry2 = 'SELECT   i.chart, i.name,  i.first_day,   i.jumin,                                                  ' + #13#10 +
          ' N.team, N.gubun, N.jinstime, N.jinftime, N.sunaptime,  N.hyg,                                                 ' + #13#10
          +
          ' N.jin_time, N.jin_day, N.fchart, N.chair, N.nOrder, N.isChart, N.isEmergency                                ' + #13#10
          +
          'FROM      ma_jubsu N INNER JOIN                                                                              ' + #13#10
          +
          ' ma_gogek_basic i ON i.chart = N.chart                                                                           ' + #13#10
          +
          'WHERE   (N.jin_day = :jin_Day) and (N.Gubun=:gubun)                                  ';
     selectqry2team = 'SELECT   i.chart, i.name,  i.first_day,   i.jumin,                                                  ' + #13#10 +
          ' N.team, N.gubun, N.jinstime, N.jinftime, N.sunaptime,  N.hyg,                                                 ' + #13#10
          +
          ' N.jin_time, N.jin_day, N.fchart, N.chair , N.nOrder, N.isChart, N.isEmergency                                                                            ' + #13#10
          +
          'FROM      ma_jubsu N INNER JOIN                                                                              ' + #13#10
          +
          ' ma_gogek_basic i ON i.chart = N.chart                                                                           ' + #13#10
          +
          'WHERE  (N.jin_day = :jin_Day) and (N.Gubun=:gubun) and  ( n.team=:team)                                 ';

 var
     i, reccount: integer;
   //  CurrentTime: string;
     CurrentTime: TdateTime;
     varChair: string;//integer;
     varRow: integer;
     varGubun : string;
     varScrollposition: integer;
     varStatGubun1,
          varStatGubun2: integer;
     varRowCount2: integer;
     varRowNum: integer;
     varCntJinryoDaegi, varCntJinryojung,
          varCntSunapDaegi, varCntSunapEnd, varCntDaegiJubsu: integer;
     varCntJubsu: integer;
     varRowAdd: integer;
     varDDD: string;
     varQuery: string;
     varTime:TdateTime;
     daegiQuery :TuniQuery;
begin
     varTopRow := varGrid.TopRow;
     varStatGubun1 := -1;
     varStatGubun2 := -1;
     varRowcount2 := 4;
   //  CurrentTime := FormatDateTime('HH:MM', now);
       CurrentTime := now;
     varRow := varGrid.row;
     varGrid.ClearRows(1, varGrid.RowCount);
     varGrid.RowCount := 2;

     varScrollposition := varGrid.GetScrollPosition(0, varRow);

     varCntJinryoDaegi := 0;
     varCntJinryojung := 0;
     varCntSunapDaegi := 0;
     varCntSunapEnd := 0;
     varCntJubsu := 0;
     varCntDaegiJubsu := 0;
     varRowAdd := 0;
     varRowNum := 0;

     //각 구분별 카운팅 시작 --> 변수에 넣기
    // if cbDaegiGubun.ItemIndex <= 0 then
    // begin
          //여기서
          //진료대기, 진료중, 수납내기, 수납완료의 숫자를 센다.

     varQuery := LoadGroupDataQuery;


  try
     daegiQuery := TuniQuery.create(application);
     daegiQuery.connection := dm_f.UniConnection1;

     //각 상태별 카운팅...
     if team = '전체' then
     begin
          with daegiQuery do
          begin
               Close;
               Sql.Clear;
               sql.text := selectqry2;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '0';

               if varviewAll <> true then
               begin
//                    if varQuery <> '' then
//                         sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               varCntJinryoDaegi := recordCount;
               // showmessage(inttostr(recordCount));




               Close;
               Sql.Clear;
               sql.text := selectqry2;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '1';

               if varviewAll <> true then
               begin
//                    if varQuery <> '' then
//                          sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               // showmessage(inttostr(recordCount));
               varCntJinryoJung := recordCount;
               Close;
               Sql.Clear;
               sql.text := selectqry2;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '2';

               if varviewAll <> true then
               begin
//                    if varQuery <> '' then
//                         sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               // showmessage(inttostr(recordCount));
               varCntSunapDaegi := recordCount;


               Close;
               Sql.Clear;
               sql.text := selectqry2;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '3';

               if varviewAll <> true then
               begin

//                    if varQuery <> '' then
//                         sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               // showmessage(inttostr(recordCount));
               varCntSunapEnd := recordCount;
               Close;
               Sql.Clear;
               sql.text := selectqry2;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '10';

               if varviewAll <> true then
               begin

//                    if varQuery <> '' then
//                          sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               // showmessage(inttostr(recordCount));
               varCntDaegiJubsu:= recordCount;
          end;
     end
     else //팀별
     begin
          with daegiQuery do
          begin
               Close;
               Sql.Clear;
               sql.text := selectqry2team;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '0';
               ParamByName('team').AsString := team;

               if varviewAll <> true then
               begin
//                    if varQuery <> '' then
//                          sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               varCntJinryoDaegi := recordCount;
               // showmessage(inttostr(recordCount));
               Close;
               Sql.Clear;
               sql.text := selectqry2team;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '1';
               ParamByName('team').AsString := team;

               if varviewAll <> true then
               begin
//                    if varQuery <> '' then
//                          sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               // showmessage(inttostr(recordCount));
               varCntJinryoJung := recordCount;
               Close;
               Sql.Clear;
               sql.text := selectqry2team;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '2';
               ParamByName('team').AsString := team;
               if varviewAll <> true then
               begin
//                    if varQuery <> '' then
//                          sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               // showmessage(inttostr(recordCount));
               varCntSunapDaegi := recordCount;
               Close;
               Sql.Clear;
               sql.text := selectqry2team;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '3';
               ParamByName('team').AsString := team;

               if varviewAll <> true then
               begin
//                    if varQuery <> '' then
//                          sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               // showmessage(inttostr(recordCount));
               varCntSunapEnd := recordCount;


               Close;
               Sql.Clear;
               sql.text := selectqry2team;
               ParamByName('Jin_Day').AsString := DaegiDate;
               ParamByName('Gubun').AsString := '10';
               ParamByName('team').AsString := team;

               if varviewAll <> true then
               begin
//                    if varQuery <> '' then
//                          sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (i.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (i.chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;

               end;

               open;
               // showmessage(inttostr(recordCount));
               varCntDaegiJubsu := recordCount;
          end;
     end;
     // end;




     //대기표에 뿌려주기...
     with daegiQuery   do
     begin
          Close;
          Sql.Clear;
          sql.text := selectDaegiQry;

         // if cbTeam.ItemIndex > 0 then
         if  cbTreatRoom.itemIndex > 0 then// .ColumnItems[cbTreatRoom.ItemIndex,0];

          begin
               Sql.Add('and (N.team = :team) ');
               ParamByName('team').AsString := team;
          end;

          if cbDaegiGubun.ItemIndex > 0 then
          begin
               Sql.Add('and (gubun = :gubun) ');
               ParamByName('gubun').AsString := gubun;
          end;

          //    Sql.Add('ORDER BY   gubun asc, jin_time desc, jin_day desc '); //jin_time asc

          if varviewAll <> true then
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

          Sql.Add('ORDER BY    gubun2, jin_time, yeyaktime  '); //jin_time asc

          ParamByName('Jin_Day').AsString := DaegiDate;

          Open;

          First;
          if not IsEmpty then
          begin

               recCount := recordCount;

               lblNc.Caption := inttostr(recCount);

               varGrid.RowCount := recCount + 1 + 4;
               varGrid.FixedRows := 1;

//               {
//
//일자
//성명
//차트번호
//팀
//전담위생사
//구분
//접수시간
//대기시간
//예약시간/내역
//예약참고사항
//진료시작시간
//진료마침시간
//수납시간
//휴대폰
//최초내원일
//당일비고
//주민번호
//               }
                              //  Application.ProcessMessages;

               vargrid.beginupdate;
               while not daegiQuery.Eof do
               begin

                    with varGrid do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin

                              Cells[0, i] := inttostr(varRowNum);

                              Cells[1, i] := convStat( FieldByName('gubun2').AsString);
                              Cells[2, i] := FieldByName('jin_day').AsString;
                              Cells[3, i] := FieldByName('Name').AsString;


                              if   trim(FieldByName('mmmm').AsString) <>'' then
                              begin

                                   addcomment(3,i,trim(FieldByName('mmmm').AsString));
                              end;



                              Cells[4, i] := FieldByName('chart').AsString;

                              Cells[5, i] := FieldByName('team').AsString;
                              Cells[6, i] := FieldByName('hyg').AsString;

                               varGubun:=  FieldByName('gubun2').AsString; //대기 구분




                              Cells[7, i] :=  varGubun;



                              varDDD := trim(FieldByName('DDDD').AsString);  //예약내역

                              if varDdd <> '' then                       //예약내역이 없으면 참고사항을 가져온다.
                                   Cells[9, i] := varDDD
                              else
                                   Cells[9, i] :=trim( FieldByName('sRemark').AsString);




                             //각 상태별 대기시간을 표시한다.
                             case strCase(   varGubun ,['5','10','11','12','17','19']) of
                              0 : // 접수
                                begin
                              //    Cells[8, i] := formatdatetime('HH:MM', FieldByName('jubsu_Time').AsDateTime);  //접수시간
                                  varTime:=   CurrentTime  -  FieldByName('jubsu_Time').AsDateTime ;
                                  Cells[8, i] := FormatDateTime('hh:mm', varTime) ;

                                end;
                              1:  //체어
                              begin
                                //  Cells[8, i] := formatdatetime('HH:MM', FieldByName('Jin_Time').AsDateTime);  //접수시간
                                 //  varTime:=   FieldByName('Jin_Time').AsDateTime -  FieldByName('jubsu_Time').AsDateTime ;
                               //체어 대기시간은 접수부터 계산하자...
                                 varTime:=   CurrentTime  -  FieldByName('jubsu_Time').AsDateTime ;
                                 Cells[8, i] := FormatDateTime('hh:mm', varTime) ;

                              end;
                              2:  //진료
                              begin
                                 // Cells[8, i] := formatdatetime('HH:MM', FieldByName('JinsTime').AsDateTime);  //진료시간
                                     varTime:=   CurrentTime  -  FieldByName('JinsTime').AsDateTime  ;
                                     Cells[8, i] := FormatDateTime('hh:mm', varTime) ;


                              end;
                              3:  //수납
                              begin
                                //  Cells[8, i] := formatdatetime('HH:MM', FieldByName('JinfTime').AsDateTime);  //수납대기시간
                                  varTime:=   CurrentTime  -  FieldByName('JinfTime').AsDateTime  ;
                                  Cells[8, i] := FormatDateTime('hh:mm', varTime) ;

                              end;
                              4,5:  //완료
                                  Cells[8, i] := formatdatetime('HH:MM', FieldByName('sunapTime').AsDateTime);  //수납완료시간

                              else
                                  Cells[8, i] :=FieldByName('YEYAKTIME').AsString;
                              end;




                               Cells[10, i] :='';
                               Cells[11, i] :='';




                              Cells[12, i] := FieldByName('mmmm').AsString; //  예약 참고사항




                              Cells[13, i] := FieldByName('jinstime').AsString;
                              Cells[14, i] := FieldByName('jinftime').AsString;
                              Cells[15, i] := FieldByName('sunaptime').AsString;
                              Cells[16, i] := FieldByName('cphone').AsString;
                              Cells[17, i] := FieldByName('pr_idn').AsString;
                              Cells[18, i] := FieldByName('first_day').AsString;
                              Cells[19, i] := FieldByName('chair').AsString;
                              Cells[20, i] := FieldByName('jumin').AsString;
                              Cells[21, i] := FieldByName('YEYAKtime').AsString;
                              Cells[22, i] := FieldByName('remcc').AsString;
                              Cells[23, i] := FieldByName('itime').AsString;
                              Cells[24, i] := FieldByName('doc').AsString;
                              Cells[25, i] := FieldByName('nOrder').AsString;
                              Cells[26, i] := FieldByName('YeyakColor').AsString;

                              Cells[27, i] := FieldByName('isChart').AsString;
                              Cells[28, i] := FieldByName('isEmergency').AsString;

                              //여기서 필터링 되는 사람인지 확인하여 표시해주기
                              if varQuery <> '' then
                              begin
                                   if isFilter(cells[4, i],
                                        'SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' and chart=:chart') then
                                   begin

                                        AddImageIdx(0, i, 47, haBeforeText, vaCenter);
                                        Cells[29, i] := '1';

                                   end;
                              end;

                              //대기시간 계산...
                              {      when N.gubun = ''10'' then 5 //접수                                                                                           ' + #13#10 +
                                     when N.gubun = ''0'' then 10 //체어                                                                                          ' + #13#10 +
                                     when N.gubun = ''1'' then 11 //진료중                                                                                          ' + #13#10 +
                                     when N.gubun = ''2'' then 12 //수납대기                                                                                          ' + #13#10 +
                                     when N.gubun = ''3'' then 17 //수납완료                                                                                          ' + #13#10 +
                                     when N.gubun = ''9'' then 19 //수납완료                                                                                          ' + #13#10 +
                               }

                              next;

                         end;
                    end;
               end;



               varGrid.TopRow := varTopRow;

               vargrid.Endupdate;

               if configvalue.varDaegiRefreshMode = '1' then
               begin

               end
               else
               begin
                    vargrid.SetScrollPosition(0, varrow,
                         varscrollposition);
                    varGrid.Row := varRow;
               end;

               varGrid.RowCount := varGrid.RowCount - varRowcount2;
          end
          else
          begin

               lblNc.Caption := '0';

          end;

     end;
  finally
    daegiQuery.free;
  end;
     lblYc.Caption := inttostr(LoadYeyakCount( dtDate.DateTime,  inttostr(cbteamname.itemindex)));
     lblNewPatient.caption := inttostr(LoadNewPatientCount(dtDate.DateTime, inttostr(cbteamname.itemindex)));

end;


procedure TDaegiFrame_fr.mnuJubsuDeleteClick(Sender: TObject);
begin

  try
    timer2.Enabled := false;

    if    isHavingJinryo(
               grdDaegi.OriginalCells[35, grdDaegi.Row], //jubsu_id
               grdDaegi.OriginalCells[3, grdDaegi.Row],
               ForMatDateTime('YYYY-MM-DD', dtDate.date),
               grdDaegi.OriginalCells[8, grdDaegi.Row],
               grdDaegi.OriginalCells[62, grdDaegi.Row], //담당의  Code
               grdDaegi.OriginalCells[57, grdDaegi.Row] //ToDO :0:외래 1:숙박입원 2: 낮입원
               )= true  then //진료내역이 있다.
    begin
          if Application.MessageBox(pchar(grdDaegi.OriginalCells[4, grdDaegi.Row] + '[' +
                grdDaegi.OriginalCells[3, grdDaegi.Row] + ']'
                + '님의 진료내역이 있습니다. 그래도  삭제 하시겠습니까?'), '확인', MB_OKCANCEL) = 1 then
          begin





          end
          else
          begin
               exit;
          end;


    end
    else
    begin


    end;


    if Application.MessageBox(pchar(grdDaegi.OriginalCells[4, grdDaegi.Row] + '[' +
          grdDaegi.OriginalCells[3, grdDaegi.Row] + ']'
          + '님의 대기상태를 삭제 하시겠습니까?'), '확인', MB_OKCANCEL) = 1 then
     begin
          //YeyakNaewon('', grdDaegi.OriginalCells[2, grdDaegi.Row].AsString); //, grdDaegi.OriginalCells[1, grdDaegi.Row].AsString); //Yeyak Update
          //NeWonCancelJinRyoP(grdDaegi.OriginalCells[2, grdDaegi.Row].AsString); //Jinryo_p Update
        if  JubsuDelete(
               grdDaegi.OriginalCells[35, grdDaegi.Row],
               grdDaegi.OriginalCells[3, grdDaegi.Row],
               ForMatDateTime('YYYY-MM-DD',
               dtDate.date),
               grdDaegi.OriginalCells[8, grdDaegi.Row],
               grdDaegi.OriginalCells[62, grdDaegi.Row], //담당의  Code
               grdDaegi.OriginalCells[57, grdDaegi.Row] , //입원
               strtodatetime( grdDaegi.OriginalCells[66, grdDaegi.Row])
               )= true //Newon Delete

          then
          begin

                //ToDo : tblStatus 에 값을 변경 -> 1증가
                updateTblStatus(now);



//               //협진 Cancel
//               {$IFNDEF DEBUG}
//
//                 if  ChangeRPStatus(
//                   strtoint( grdDaegi.originalCells[55, grdDaegi.Row]),
//                   '4',  //협진 Cancel
//                    grdDaegi.OriginalCells[3, grdDaegi.Row],
//                   now
//                   ) = false then
//                   begin
//                        showmessage('협진상태변경 오류.');
//                   end;
//
//               {$ENDIF DEBUG}

          end;


          if trim(grdDaegi.OriginalCells[20, grdDaegi.Row]) <> '' then
               Promise_UpdatePos(strtoint(grdDaegi.OriginalCells[20, grdDaegi.Row]), '');




          {main_f.jubsuselect(grdDaegi,
               formatdatetime('YYYY-MM-DD', dtDate.date), //일자
               inttostr(cbdaegiGubun.itemindex - 1), //구분
               cbteam.Text); //팀
           }

         if configvalue.varDaegiSocketUse  ='1' then    //1:다서버이용, 0:직접저장
         begin

      //     daegiselect;

//          if dm_f.IdTCPClient2.Connected = false then
//          dm_f.ConnectImageDBServer;
//          dm_f.IdTCPClient2.iohandler.WriteLn('CDS_Delste');
        end;



            //메인화면 초기화
            main_f.fieldclear;
            isLoading := false;
            //     loadResult := 6;
            main_f.edtname.SetFocus;




            //대기리스트 초기화
            daegiselect(tsmain.TabIndex);


     end;
  finally

         timer2.Enabled := true;

  end;
end;

procedure TDaegiFrame_fr.mnuTxView_SunapFinishClick(Sender: TObject);
var
    compoName : string;
begin
     compoName := (Self.Parent.parent  as TAdvpanel).Name;

     if compoName = 'pnlDaegi' then
     begin


//          setJinryo_s(main_f.grdJX2,
//                   ma_chart,
//                   FormatDateTime('YYYY-MM-DD', dtDate.Date),
//                   cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]);
         main_f.datetimepicker1.date:= dtDate.Date;
         main_f.datetimepicker2.date:= dtDate.Date;

         main_f.LoadJinChalCode(2);



          setJinryo_s(grdsunapFinish.Cells[20, grdsunapFinish.Row] ,//jubsu_id
                      main_f.grdJX2
                     ,grdsunapFinish.Cells[2, grdsunapFinish.Row]// ma_chart,
                     ,grdsunapFinish.Cells[25, grdsunapFinish.Row] //team //grdsunapFinish.Cells[25, grdsunapFinish.Row]  ,
                     ,grdsunapFinish.Cells[35, grdsunapFinish.Row]  //doc_code
                     , grdsunapFinish.Cells[34, grdsunapFinish.Row]  //입원종류
                     ,FormatDateTime('YYYY-MM-DD', dtDate.Date)
                      ,FormatDateTime('YYYY-MM-DD', dtDate.Date)
                      , 2);//cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]);

          main_f.lblChart.Caption  :=  grdsunapFinish.Cells[2, grdsunapFinish.Row];
          main_f.lblPaName.Caption :=  grdsunapFinish.Cells[1, grdsunapFinish.Row];

          main_f.pnlJinryo.Visible := true;


      end;


end;

procedure TDaegiFrame_fr.MenuItem4Click(Sender: TObject);  //수 납 취소 --->수납완료에서 수납대기로 이동
begin
  try
    if grdSunapFinish.Cells[31, grdSunapFinish.Row] <> '3' then    //미수수납 이 아니면
    begin



          if Application.MessageBox(pchar(grdSunapFinish.Cells[1, grdSunapFinish.Row] + '[' +
                grdSunapFinish.Cells[2, grdSunapFinish.Row] + ']'
                + '님의 수납대기로 변경 하시겠습니까?'), '확인', MB_OKCANCEL) = 1 then
           begin

               if configvalue.varDaegiSocketUse  ='1' then    //1:다서버이용, 0:직접저장
               begin

                    //     daegiselect;

                    //          if dm_f.IdTCPClient2.Connected = false then
                    //          dm_f.ConnectImageDBServer;
                    //          dm_f.IdTCPClient2.iohandler.WriteLn('CDS_Delste');
              end;

               // updateDaegiStat(grdDaegi, 0);

              if ChangeStatus(
                     grdSunapFinish.Cells[1, grdSunapFinish.Row], //name
                     dtDate.date,   //formatdatetime('YYYY-MM-DD', dtDate.date),
                     grdSunapFinish.Cells[25, grdSunapFinish.Row], //team
                     grdSunapFinish.Cells[35, grdSunapFinish.Row], //Doc_code
                     grdSunapFinish.Cells[2, grdSunapFinish.Row], //chart
                     '2', //stat 수납대기 2
                     '2', //Gubun
                     grdSunapFinish.Cells[20, grdSunapFinish.Row], //jubsu_id
                     '0') //chair
                     = true then
                begin

                       exceptlogging('ChangeStatus:==>'+ grdSunapFinish.Cells[1, grdSunapFinish.Row]+'|'+ //name
                     formatdatetime('YYYY-MM-DD', dtDate.date)+'|'+
                     grdSunapFinish.Cells[25, grdSunapFinish.Row]+'|'+ //team
                     grdSunapFinish.Cells[35, grdSunapFinish.Row]+'|'+ //Doc_code
                     grdSunapFinish.Cells[2, grdSunapFinish.Row]+'|'+//chart
                     '2'+'|'+ //stat 수납대기 2
                     '0'+'|'+ //Gubun
                     '0' );

                      JinryoPSunapekInit(
                         grdSunapFinish.Cells[19, grdSunapFinish.Row]   //jinryo_pid
                         )  ;

                    // JinryoPSunapekInit
                    // sunapak = 0, card= 0, cash=0, tong=0,
                    // tongreceipt=0, hyunReceipt=0, kamak=0, misugeum=0
                    // Where jinryo_pid=:jinryo_pid  ');


                      JinryoPSunapStateUpdate(
                        grdSunapFinish.Cells[19, grdSunapFinish.Row], //jinryo_pid
                          '0'); //sunap  (0: 초기 1:수납완료 2:수납대기취소 3: 보류)



                      //ToDo : 입원환자였으면 입원 접수를 찾아서 퇴원을 0으로 만들자.
                      //ToDo : 다시,,, 수납취소를 하면 수납대기로 가니까 퇴원은 0으로 하면 안된다.
                       if  grdSunapFinish.Cells[34, grdSunapFinish.Row] <> '0' then
                       begin

                                if Application.MessageBox(pchar(grdSunapDaegi.Cells[1, grdSunapDaegi.Row] + '[' +
                                grdSunapDaegi.Cells[2, grdSunapDaegi.Row] + ']'
                                + '퇴원취소하십니까?.'    ), '확인', MB_OKCANCEL) = 1 then
                                begin
                                      ChangeStatus_JubsuID_Cancel_OutPat(grdSunapFinish.Cells[20, grdSunapFinish.Row]  );
                                end;


                       end;



                      exceptlogging( 'JinryoPSunapStateUpdate:==>' + grdSunapFinish.Cells[19, grdSunapFinish.Row]+'|'+ //jinryo_pid
                          '0');



                      //daegiselect(tsmain.TabIndex);

                end
                else
                begin

                     showmessage('대기변경에 오류가 있습니다. 로그파일 확인하세요.');
                       exceptlogging('ChangeStatus Error:==> '+ grdSunapFinish.Cells[1, grdSunapFinish.Row]+'|'+ //name
                     formatdatetime('YYYY-MM-DD', dtDate.date)+'|'+
                     grdSunapFinish.Cells[25, grdSunapFinish.Row]+'|'+ //team
                     grdSunapFinish.Cells[35, grdSunapFinish.Row]+'|'+ //Doc_code
                     grdSunapFinish.Cells[2, grdSunapFinish.Row]+'|'+//chart
                     '2'+'|'+ //stat 수납대기 2
                     '0'+'|'+ //Gubun
                     '0' );

                        exceptlogging( 'JinryoPSunapStateUpdate Error:==>' + grdSunapFinish.Cells[19, grdSunapFinish.Row]+'|'+ //jinryo_pid
                          '0');
                end;


           end;
    end
    else   //미수수납이면... ma_misuSunap도 지우도 jinryo_p도 지운다. 그리고 접수도 지워라,
    begin

          if Application.MessageBox(pchar(grdSunapFinish.Cells[1, grdSunapFinish.Row] + '[' +
                grdSunapFinish.Cells[2, grdSunapFinish.Row] + ']'
                + '님의 미수수납내용을 삭제 하시겠습니까?'), '확인', MB_OKCANCEL) = 1 then
           begin
                with dm_f.sqlWork do
                begin
                    close;
                    sql.Clear;
                    SQL.Add('Delete From ma_misuSunap ');
                    SQL.Add('Where misu_pid=:misu_pid ');
                    paramByName('misu_pid').asString := grdSunapFinish.Cells[19, grdSunapFinish.Row] ;
                    execsql;


                    close;
                    sql.Clear;
                    SQL.Add('Delete From Jinryo_p ');
                    SQL.Add('Where jinryo_pid=:jinryo_pid ');
                    paramByName('jinryo_pid').asString := grdSunapFinish.Cells[19, grdSunapFinish.Row] ;
                    execsql;


                    close;
                    sql.Clear;
                    SQL.Add('Delete From ma_jubsu ');
//                    SQL.Add('Where chart=:chart and jin_day=:jin_day and choje=''9'' ');
                    SQL.Add('Where id = :ID ');
                    paramByName('ID').asString := grdSunapFinish.Cells[20, grdSunapFinish.Row] ;
//                    paramByName('chart').asString   := grdSunapFinish.Cells[2, grdSunapFinish.Row] ;
//                    paramByName('jin_day').asString := grdSunapFinish.Cells[2, grdSunapFinish.Row] ;
                    execsql;
                end;




           end;
    end;
  finally

       daegiselect(tsmain.TabIndex);

       timer2.Enabled := true;

  end;
end;

procedure TDaegiFrame_fr.mnuCancelClick(Sender: TObject);
var
     selectedItemTag : integer;
begin


      if  grdDaegi.OriginalCells[grdDaegi.realColIndex(20), grdDaegi.Row]  <> '' then

          selectedItemTag :=  strtoint( grdDaegi.OriginalCells[grdDaegi.realColIndex(20), grdDaegi.Row])
      else
          selectedItemTag :=  -1;

   if
          Application.MessageBox(PChar('선택하신 예약내용을 [취소]하시겠습니까?'),
          '예약취소', MB_YESNO) = IDYES then
     begin

          if Promise_canCel(selectedItemTag, 'C') = true then
          begin

              promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); // 팀


          end;
     end;


end;

procedure TDaegiFrame_fr.mnuDelClick(Sender: TObject);
var
     selectedItemTag : integer;
begin


      if  grdDaegi.OriginalCells[grdDaegi.realColIndex(20), grdDaegi.Row]  <> '' then

          selectedItemTag :=  strtoint( grdDaegi.OriginalCells[grdDaegi.realColIndex(20), grdDaegi.Row])
      else
          selectedItemTag :=  -1;


     if Application.MessageBox(PChar('선택하신 예약내용을 [삭제]하시겠습니까?'
          +
          #10#13 + '삭제하신 내용은 복구되지 않습니다.'),
          '예약삭제', MB_YESNO) = IDYES then
     begin

          if Promise_Delete(selectedItemTag) = true then
          begin


              promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); // 팀


          end;//예약삭제 = true


      end
     else
     begin

     end;
end;

procedure TDaegiFrame_fr.mnuGogekRegiClick(Sender: TObject);
var
   selecteditemChart : string;
   SelectedItemTag   : integer;
begin

    selecteditemChart := grdDaegi.OriginalCells[grdDaegi.realColIndex(3), grdDaegi.Row];


    if grdDaegi.Cells[20, grdDaegi.Row] <> '' then
        SelectedItemTag := grdDaegi.ints[20, grdDaegi.Row] //selectedItemTag;
    else
        SelectedItemTag := 0;


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


//          main_f.windowstate := wsMaximized;
          main_f.edtname.text := varPrName;
          main_f.edtcPhone.text := varPrTel;
          main_f.memchamgo.text := varPrMemo+ #13#10 + varPrSulSik;

          loadResult:= 6; //신환등록

           if configvalue.varChartRule = '6' then //사용자 차트번호
           begin
                 main_f.edtChart.SetFocus;
           end
           else
           begin

                 main_f.edtchart.text := ChartNoCreate('1');
                 main_f.edtJumin.SetFocus;

           end;

         isPromiseRegi := true;
         PromiseIdn := inttostr(SelectedItemTag);


     end;
end;

procedure TDaegiFrame_fr.mnuJinDaegiClick(Sender: TObject);
begin
    //보류를 접수로 보내기
    if    isHavingJinryo(
              grdDaegi.OriginalCells[35, grdDaegi.Row], //jubsu_id
              grdDaegi.OriginalCells[3, grdDaegi.Row],
               ForMatDateTime('YYYY-MM-DD',
               dtDate.date),
               grdDaegi.OriginalCells[8, grdDaegi.Row],
                grdDaegi.OriginalCells[62, grdDaegi.Row],
                grdDaegi.OriginalCells[57, grdDaegi.Row] //ToDO :0:외래 1:숙박입원 2: 낮입원
               )= true  then //진료내역이 있다.
    begin
          if Application.MessageBox(pchar(grdDaegi.OriginalCells[4, grdDaegi.Row] + '[' +
                grdDaegi.OriginalCells[3, grdDaegi.Row] + ']'
                + '님의 진료내역이 있습니다. 그래도  접수로 보내시겠습니까?'), '확인', MB_OKCANCEL) = 1 then
          begin

          end
          else
          begin
               exit;
          end;


    end
    else
    begin

    end;


    if Application.MessageBox(PChar('정말로 접수로 보내시겠습니까?'),  '알림', MB_YESNO) = IDYES then
    begin
        exceptLogging('SendJubsu==>'+GetLocalComputerName);
        updateDaegiStat(grdDaegi, (sender as TMenuitem).Tag  );

    end;

end;

procedure TDaegiFrame_fr.mnuJubsuClick(Sender: TObject);
var
     vartag: integer;
     varTime: Tdatetime;
     varCrmResult: integer;
begin

     varTime := now;
     if grdDaegi.Cells[20, grdDaegi.Row] <> '' then
        vartag := grdDaegi.ints[20, grdDaegi.Row] //selectedItemTag;
     else
        vartag := 0;

     if LoadGogekData_chart(grdDaegi.Cells[3,  grdDaegi.Row]
                              , progressbar,  varViewALL) = true then
     begin




          main_f.btnJubsuClick(self);

     end;

       checkPromiseRecall(grdDaegi.Cells[3,  grdDaegi.Row]);

          //대기구분
     // '10', '접수'
     // '0', '진료대기'
     // '1', '진료중'
     // '2', '수납완료'
     // '3', '수납대기' 진료완료
     // '9', '수납대기'  진료전 수납

     Promise_UpdatePos(vartag, inttostr((Sender as Tmenuitem).Tag));

     promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); // 팀
                 //   cbteam.Text); //팀


end;

procedure TDaegiFrame_fr.N12Click(Sender: TObject);
begin
   try
            timer2.Enabled := false;
             gridSunap( grdSunapDaegi , grdSunapDaegi.Row, grdSunapDaegi.Col);

   finally
              timer2.Enabled := true;

   end;
end;

procedure TDaegiFrame_fr.N14Click(Sender: TObject);
var
    compoName : string;
    aJubsuID, aInPat        : string;
begin
     compoName := (Self.Parent.parent  as TAdvpanel).Name;


     if compoName = 'pnlDaegi' then
     begin
      //    main_f.setJinSO(ma_chart,  FormatDateTime('YYYY-MM-DD',  now));

         aJubsuID :=  grdDaegi.OriginalCells[35, grdDaegi.Row];
         aInPat   :=  grdDaegi.OriginalCells[57, grdDaegi.Row];
         main_f.datetimepicker1.date:= dtDate.Date;
         main_f.datetimepicker2.date:= dtDate.Date;

          setJinryo_s(
          aJubsuID, //Jubsu_id
          main_f.grdJX2,
          ma_chart,
           '',//team main_f.cbTreatRoom.ColumnItems[main_f.cbTreatRoom.ItemIndex,0]  ,
           '',//Doc_code
           aInPat ,  //입원종류
           FormatDateTime('YYYY-MM-DD', dtDate.Date)
                      ,FormatDateTime('YYYY-MM-DD', dtDate.Date)
                      ,2);

          main_f.lblChart.Caption :=  ma_chart;
          main_f.lblPaName.Caption  := grdDaegi.OriginalCells[4, grdDaegi.Row];// ma_PaName;


          main_f.pnlJinryo.Visible := true;


      end;

end;

procedure TDaegiFrame_fr.N16Click(Sender: TObject);
begin
{ma_jubsu
gubun
10 : 접수
0 : 접수
1: 진료시작
2: 진료종료(수납대기)
3: 수납완료
5: 숙박입원
6: 낮 입원}
    if Application.MessageBox(PChar('이미 입력된 진료기록은 삭제됩니다.' +
          #10#13 + ' [입원취소]하시겠습니까?.'),
          '입원취소', MB_YESNO) = IDYES then
     begin

       //ToDO :진료기록을 모두 삭제하자.

      //N16=입원취소
      ChangeStatus_JubsuID_Cancel_INpat( grdDaegi.OriginalCells[35, grdDaegi.Row]) ;

       //[입원] 취소를 하면 [접수]로 상태를 바꾸자
      ChangeStatus2(
         strToDate( grdDaegi.OriginalCells[2, grdDaegi.Row]), //jinDay
          grdDaegi.OriginalCells[35, grdDaegi.Row], //JubsuID
         grdDaegi.OriginalCells[3, grdDaegi.Row], //Chart
         '0',   //0: 접수                                  //Kind   //[입원] 취소를 하면 [접수]로 상태를 바꾸자ㅣ
         grdDaegi.OriginalCells[8, grdDaegi.Row],  //Team  //cbDoc.ColumnItems[cbDoc.itemindex, 0]);
         grdDaegi.OriginalCells[62, grdDaegi.Row]); //담당의Code

       DeleteJinryo_s(grdDaegi.OriginalCells[35, grdDaegi.Row]) ;

       daegiselect(tsmain.TabIndex);

     end;

end;

procedure TDaegiFrame_fr.N18Click(Sender: TObject);
var
   outDateTime : TDateTime;
begin
    try
         timer2.Enabled := false;

         //수납대기 ('2') 상태로 변경---------------------------------------------
      //    ChangeStatus2( lblChart.Caption,  '2',  cbDoc.ColumnItems[cbDoc.itemindex, 0]);
      ChangeStatus2(
         strToDate(grdDaegi.OriginalCells[2, grdDaegi.Row]), //jinDay
          grdDaegi.OriginalCells[35, grdDaegi.Row],
         grdDaegi.OriginalCells[3, grdDaegi.Row], //Chart
        '2',                                    //Kind
         grdDaegi.OriginalCells[8, grdDaegi.Row],//Team
         grdDaegi.OriginalCells[62, grdDaegi.Row]  );  //담당의 Code
      //cbDoc.ColumnItems[cbDoc.itemindex, 0]);


           if not Assigned(outPatient_f) then
                outPatient_f := ToutPatient_f.Create(application);
          outPatient_f.AdvDateTimePicker1.DateTime:= now;
       if  outPatient_f.showmodal =mrOk then
       begin
              outDateTime := outPatient_f.AdvDateTimePicker1.DateTime;

      //퇴원처리
         ChangeStatus_JubsuID_Outpat(grdDaegi.OriginalCells[35, grdDaegi.Row],
             outDateTime);// DtDate.dateTime ) ;
                                //Jubsu_id
       end;


    finally

            daegiselect(tsmain.TabIndex);
            timer2.Enabled := true;

    end;
end;

procedure TDaegiFrame_fr.mnuJubsuChangeClick(Sender: TObject);
var
     TreatRoom : string;
     doc : string;
     teamCode : string;
     docName  : string;
     doc_Code  : string;

     old_teamCode : string;
     old_docName  : string;
     old_docCode  : string;

//     gub_gu : integer;
     gub_gu : string;

begin

  try

      timer2.Enabled := false;

     if not Assigned(changeStat_f) then
        changeStat_f := TchangeStat_f.Create(application);
        changeStat_f.Caption      :=     '접수내역 변경';

     //  caption:=  '[진료실] '+ ' '+ ma_Chart +'('+ ma_Paname+')' + genderAge +'';
        changeStat_f.lblPatInfo.caption  :=  ma_Chart +'('+ ma_Paname+')' ;


        changeStat_f.lblChart.Caption   := grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), grdDaegi.row];
        changeStat_f.lblJubsuID.caption := grdDaegi.OriginalCells[grdDaegi.RealColIndex(35), grdDaegi.row];

      //ComboSet  ================================

        changeStat_f. LoadDefaultValue;



        TreatRoom := grdDaegi.OriginalCells[54, grdDaegi.row];

          if TreatRoom  <>'' then   //TreatRoom
          begin
               changeStat_f.cbTreatRoom.ItemIndex :=
                     changeStat_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;
                                                 //   공단검진
               LoadDoclist(  changeStat_f.cbDoc, TreatRoom);
         end
          else
          begin
               changeStat_f.cbTreatRoom.ItemIndex := 0;
          end;

          //LoadDoclist에서 cbDoc을 초기화 한다.



           doc := trim( grdDaegi.OriginalCells[26, grdDaegi.row]);


          if doc <> '' then   //Doc
            changeStat_f.cbdoc.ItemIndex :=
                     changeStat_f.cbDoc.ComboItems.IndexInColumnOf(2, Doc )
          else
            changeStat_f.cbdoc.ItemIndex := 0;


         changeStat_f.cbJong.ItemIndex    := strtoInt(grdDaegi.originalCells[grdDaegi.RealColIndex(52), grdDaegi.row]) ;  //jongbyul
         changeStat_f.cbChoje.ItemIndex   := strtoInt(grdDaegi.originalCells[grdDaegi.RealColIndex(53), grdDaegi.row])  ;;  //choje


        old_teamCode   :=    trim(changeStat_f.cbDoc.ColumnItems[changeStat_f.cbDoc.itemindex, 0]);
        old_docName    :=    trim(changeStat_f.cbDoc.ColumnItems[changeStat_f.cbDoc.itemindex, 2]);
        old_docCode    :=    trim(changeStat_f.cbDoc.ColumnItems[changeStat_f.cbDoc.itemindex, 1]);


         if changeStat_f.showmodal = mrOk then
         begin

              teamCode   :=    trim(changeStat_f.cbDoc.ColumnItems[changeStat_f.cbDoc.itemindex, 0]);
              docName    :=    trim(changeStat_f.cbDoc.ColumnItems[changeStat_f.cbDoc.itemindex, 2]);
              doc_Code   :=    trim(changeStat_f.cbDoc.ColumnItems[changeStat_f.cbDoc.itemindex, 4]);



              ChangeJubsuStatus(
                  changeStat_f.lblJubsuID.Caption,//   JubsuID    : string;
                  teamCode,//   Team       : string;    //진료실
                  docName,//   Doc        : string;    //담당의
                  doc_Code,
                  changeStat_f.cbJong.ItemIndex,//   jongbyul   : integer;   //종별
                  changeStat_f.cbChoje.ItemIndex,//    choje      : integer;   //초재
                  changeStat_f.cbSancode3.ItemIndex,   //   health     : integer;   //검진종류
                  changeStat_f.cbTreatRoom.ColumnItems[ changeStat_f.cbTreatRoom.itemindex, 0],   //   treatRoom  : string;    //진료실
                  changeStat_f.cbIo.ItemIndex );  // isInpat    : string)  : boolean;    //입원구분
                                                 ////isInpat 1:숙박입원중 2: 낮병동입원중  3: 숙박퇴원  4: 낮병동퇴원
              //당일 진료내역 가져와서 원장명/코드 바꾼다.
              //접수는 접수로 보류는 보류로 그냥 둔다.
//                  updateJinryo_s    doccode, teamcode
//                  updateJinryo_o    docName , teamcode
//                  updateJinryo_p    teamcode, teamcode
//                  updateCC          ccteam ==> teamcode
               updateJinryo_o_Team(ma_Chart,
                     grdDaegi.originalCells[grdDaegi.RealColIndex(2), grdDaegi.row],   //jin_day,
                     teamcode,
                     doc_code,
                      old_teamcode,
                     old_docName);
               updateJinryo_s_Team(ma_Chart,
                     grdDaegi.originalCells[grdDaegi.RealColIndex(2), grdDaegi.row],   //jin_day,
                     teamcode,
                     doc_code ,
                     old_teamcode,
                     old_doccode );
               updateJinryo_p_Team(ma_Chart,
                     grdDaegi.originalCells[grdDaegi.RealColIndex(2), grdDaegi.row],   //jin_day,
                     teamcode,
                     doc_code,
                     old_teamcode,
                     old_doccode );

//               updateHxCc_Team(ma_Chart,
//                     grdDaegi.originalCells[grdDaegi.RealColIndex(2), grdDaegi.row],   //jin_day,
//                     teamcode ,
//                     doc_code,
//                     old_teamcode,
//                     old_doccode );

               updateHxCc_Team_JubsuID(ma_Chart,
                     grdDaegi.originalCells[grdDaegi.RealColIndex(2), grdDaegi.row],   //jin_day,
                     grdDaegi.originalCells[grdDaegi.RealColIndex(35), grdDaegi.row],   //Jubsu_ID
                     teamcode ,
                     doc_code  );


                //진료 급여/비급여 수정

              if changeStat_f.cbJong.ItemIndex = 3   then
                  gub_gu := '2'
                else
                  gub_gu := '0' ;

               updateJinryo_s_GubGu(ma_Chart,
                 grdDaegi.originalCells[grdDaegi.RealColIndex(2), grdDaegi.row],
                 teamcode,
                 doc_code,
                 gub_gu );



               daegiselect(tsmain.TabIndex);
         end;
  finally
       timer2.Enabled := true;
  end;
end;

procedure TDaegiFrame_fr.N26Click(Sender: TObject);
var
  Voice: TSpVoice;
begin
  Voice := TSpVoice.Create(nil);

  Voice.Speak(grdsunapfinish.Cells[1, grdsunapfinish.Row]   +'님 접수대로 와 주십시오', 0);
  Voice.Free;
end;


procedure TDaegiFrame_fr.mnuTxView_SunapDaegiClick(Sender: TObject);
var
    compoName : string;
begin
     compoName := (Self.Parent.parent  as TAdvpanel).Name;

     if compoName = 'pnlDaegi' then
     begin
//          setJinryo_s(main_f.grdJX2,
//                   ma_chart,
//                   FormatDateTime('YYYY-MM-DD', dtDate.Date),
//                   cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]);
         main_f.datetimepicker1.date:= dtDate.Date;
         main_f.datetimepicker2.date:= dtDate.Date;

         main_f.LoadJinChalCode(2);



          setJinryo_s(
                   grdsunapDaegi.Cells[20, grdsunapDaegi.Row],  //ma_jubsu
                   main_f.grdJX2,
                   grdsunapDaegi.Cells[2, grdsunapDaegi.Row],// ma_chart,
                   grdsunapDaegi.Cells[25, grdsunapDaegi.Row] ,//team grdsunapDaegi.Cells[25, grdsunapDaegi.Row],
                   grdsunapDaegi.Cells[35, grdsunapDaegi.Row] ,//Doc_code
                   grdsunapDaegi.Cells[34, grdsunapDaegi.Row],
                 //   grdDaegi.OriginalCells[3, grdDaegi.Row],
                   FormatDateTime('YYYY-MM-DD', dtDate.Date)
                   ,FormatDateTime('YYYY-MM-DD', dtDate.Date)
                   , 2);//cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]);


          main_f.lblPaName.Caption :=  grdsunapDaegi.Cells[1, grdsunapDaegi.Row];
          main_f.lblChart.Caption  :=  grdsunapDaegi.Cells[2, grdsunapDaegi.Row];

          main_f.pnlJinryo.Visible := true;


      end;

end;

procedure TDaegiFrame_fr.mnuNewPromiseClick(Sender: TObject);
var
     i: integer;
     varInterval: integer;
     varPos, varCancel, varStat2: string;
     varDoc: string;
     pIdn : integer;
begin
  if tsmain.tabindex <> 2 then
       exit;

      if  grdDaegi.OriginalCells[grdDaegi.realColIndex(20), grdDaegi.Row]  <> '' then

          pIdn :=  strtoint( grdDaegi.OriginalCells[grdDaegi.realColIndex(20), grdDaegi.Row])
      else
          pIdn :=  -1;

     if pIdn = -1 then
          exit;
     varPos := '';
     varStat2 := '';

     if not assigned(inputPromise_f) then
     begin
          inputPromise_f := TinputPromise_f.Create(Application);
     end;

     inputPromise_f.caption := '새 예약 등록';

     inputPromise_f.fieldset;



     varStat2 := '';
     Promise_SelectData(pIdn);

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

     inputPromise_f.lblAppointNo.Caption := inttostr(pIdn);

     inputPromise_f.PlannerCalendar1.Date := dtDate.Date;

     inputPromise_f.Datetimepicker1.Date := dtDate.Date;

     inputPromise_f.Datetimepicker2.Date := dtDate.Date;
     if varprCalldate <> '' then
          inputPromise_f.dtCall.Date := strtodate(varprCalldate)
     else
          inputPromise_f.dtCall.Date := dtDate.Date;

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
     inputPromise_f.cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0] := varPrTeam;

     inputPromise_f.cbDoc.itemindex := inputPromise_f.cbDoc.ComboItems.IndexOf(varPrDoc).y;

//     selecteditemTeam := varPrTeam;

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

     if  (ma_sms2 = '0') or (ma_sms3 = '0') then     //Fathenr, Mother is send then NoSms no check
          inputPromise_f.cbnoSMS.Checked := false;



     if varPrf_size <> '' then
          inputPromise_f.cbFontsize.itemindex := inputPromise_f.cbFontSize.Items.indexof(varPrf_size)
     else
          inputPromise_f.cbFontsize.itemindex := inputPromise_f.cbFontSize.Items.indexof('9');

       inputPromise_f.cbBold.checked:=  varPrf_bold;

     if trim(varPrAlarm) <> '0' then
     begin
          inputPromise_f.cbAlRet.Checked := true;
          inputPromise_f.cbAMin.text := trim(varPrAlarm);
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

     inputpromise_f.edtWhisper.text := Promise_LoadMemo(pIdn);

     inputpromise_f.lblStat.caption := varStat2;

     //기존 예약 리스트를 불러온다.
     inputPromise_f.PromiseSelect(inputpromise_f.edtchart.text);


     inputPromise_f.loadCellPhoneList(inputpromise_f.edtchart.text);


     inputPromise_f.cbTreatRoom.ItemIndex :=
              inputPromise_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, varPrTeam )  ;

     LoadDoclist(inputPromise_f.cbDoc, inputPromise_f.cbTreatRoom.ColumnItems[inputPromise_f.cbTreatRoom.ItemIndex,0]);



     if inputPromise_f.Showmodal = mrOk then
     begin

       //   SelectPromise(tabView.TabIndex);

     end;


end;

procedure TDaegiFrame_fr.N31Click(Sender: TObject);
var
     varCol: integer;
begin

    { if (sender as Tmenuitem).imageindex = 44 then //차팅이면
     begin
          varCol := 0; //순번
          //ma_jubsu Update
     end
     else
     begin
          varCol := 3; //성명
          //ma_jubsu Update
     end;
         }
     (sender as Tmenuitem).checked := not (sender as Tmenuitem).checked;

     cbJubsuStatusChange_Emergency((sender as Tmenuitem).tag,
          (sender as Tmenuitem).checked);
end;

procedure TDaegiFrame_fr.N35Click(Sender: TObject);
var
  Voice: TSpVoice;
begin
  Voice := TSpVoice.Create(nil);

  Voice.Speak(grdsunapDaegi.Cells[1, grdsunapDaegi.Row]   +'님, 수납금액은 '+
  IntToHanguel(strtoint(  delcomma( grdsunapDaegi.cells[0, grdsunapDaegi.row])) )+ '원 입니다.', 0);
  Voice.Free;

end;

procedure TDaegiFrame_fr.N36Click(Sender: TObject);
var
  Voice: TSpVoice;
begin
  Voice := TSpVoice.Create(nil);

  Voice.Speak(grdsunapfinish.Cells[1, grdsunapfinish.Row]   +'님, 수납금액은 '+
//  IntToHanguel(grdsunapfinish.ints[0, grdsunapfinish.Row] )+ '입니다.', 0);
  IntToHanguel(strtoint(  delcomma( grdsunapfinish.cells[0, grdsunapfinish.row])) )+ '원 입니다.', 0);

  Voice.Free;

end;

procedure TDaegiFrame_fr.mnuModPromiseClick(Sender: TObject);
var
     i: integer;
     varInterval: integer;
     varPos, varCancel, varStat2: string;
     varDoc: string;
     pIdn : integer;
begin


      if  grdDaegi.OriginalCells[grdDaegi.realColIndex(20), grdDaegi.Row]  <> '' then

          pIdn :=  strtoint( grdDaegi.OriginalCells[grdDaegi.realColIndex(20), grdDaegi.Row])
      else
          pIdn :=  -1;

     if pIdn = -1 then
          exit;


     varPos := '';
     varStat2 := '';

//    if copy(item.StrippedItemText, 1, 3) = '[B]' then
//          exit;
     if not assigned(inputPromise_f) then
     begin
          inputPromise_f := TinputPromise_f.Create(Application);
     end;

     inputPromise_f.caption := '예약 수정';


     inputPromise_f.fieldset;

     varStat2 := '';
     Promise_SelectData(pIdn);

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

     inputPromise_f.lblAppointNo.Caption := inttostr(pIdn);

     inputPromise_f.PlannerCalendar1.Date := dtDate.Date;


     inputPromise_f.Datetimepicker1.Date := dtDate.Date;
     inputPromise_f.Datetimepicker2.Date := dtDate.Date;
     if varprCalldate <> '' then
          inputPromise_f.dtCall.Date := strtodate(varprCalldate)
     else
          inputPromise_f.dtCall.Date := dtDate.Date;

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


     inputPromise_f.cbDoc.itemindex := inputPromise_f.cbDoc.ComboItems.IndexOf(varPrDoc).y;

//     selecteditemTeam := varPrTeam;

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


     if  (ma_sms2 = '0') or (ma_sms3 = '0') then     //Fathenr, Mother is send then NoSms no check
          inputPromise_f.cbnoSMS.Checked := false;


     if varPrf_size <> '' then
          inputPromise_f.cbFontsize.itemindex := inputPromise_f.cbFontSize.Items.indexof(varPrf_size)
     else
          inputPromise_f.cbFontsize.itemindex := inputPromise_f.cbFontSize.Items.indexof('9');

       inputPromise_f.cbBold.checked:=  varPrf_bold;

     if trim(varPrAlarm) <> '0' then
     begin
          inputPromise_f.cbAlRet.Checked := true;
          inputPromise_f.cbAMin.text := trim(varPrAlarm);

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

     inputpromise_f.edtWhisper.text := Promise_LoadMemo(pidn);

     inputpromise_f.lblStat.caption := varStat2;

     //기존 예약 리스트를 불러온다.
     inputPromise_f.PromiseSelect(inputpromise_f.edtchart.text);


     inputPromise_f.loadCellPhoneList(inputpromise_f.edtchart.text);




     inputPromise_f.cbTreatRoom.ItemIndex :=
              inputPromise_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, varPrTeam )  ;

     LoadDoclist(inputPromise_f.cbDoc, inputPromise_f.cbTreatRoom.ColumnItems[inputPromise_f.cbTreatRoom.ItemIndex,0]);




     if inputPromise_f.Showmodal = mrOk then
     begin

        //  SelectPromise(tabView.TabIndex);

          promiseSelect(
              formatdatetime('YYYY-MM-DD', dtDate.date), //일자
              inttostr(cbDaegigubun.itemindex - 1), //구분
              cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); // 팀

     end;



end;

procedure TDaegiFrame_fr.N37Click(Sender: TObject);
var
    remark : string;
    jubsuID : string;
begin

     pnlEditRemark.visible:= not   pnlEditRemark.visible;
     remark  := grdDaegi.OriginalCells[11, grdDaegi.Row];   //grdDaegi.OriginalCells[34, grdDaegi.Row];
     jubsuID := grdDaegi.OriginalCells[33, grdDaegi.Row];
     memo1.Text :=   remark;
     lblJubsuID.Caption :=   jubsuID;

end;


procedure TDaegiFrame_fr.N42Click(Sender: TObject);
var
   compoName : string;
begin

     if not assigned(fontInfoSave_f) then
     begin
          fontInfoSave_f := TfontInfoSave_f.Create(nil);
     end;

     loadGridFontInf;

     fontInfoSave_f.FontName.ItemIndex := fontInfoSave_f.fontname.Items.IndexOf(aGridFontName);
     fontInfoSave_f.FontSize.ItemIndex := fontInfoSave_f.fontSize.Items.IndexOf( inttostr(aGridFontSize));
     fontInfoSave_f.edtRowHeight.Value := aGridRowHeight;

     fontInfoSave_f.FixedFontName.ItemIndex := fontInfoSave_f.Fixedfontname.Items.IndexOf(aGridFixedFontName);
     fontInfoSave_f.FixedFontSize.ItemIndex := fontInfoSave_f.FixedfontSize.Items.IndexOf( inttostr(aGridFixedFontSize));
     fontInfoSave_f.edtFixedRowHeight.Value := aGridFixedRowHeight;

     gridColSet(0, grdDaegi, fontInfoSave_f.clbColumnCheck);

     if  fontInfoSave_f.ShowModal = mrOK then
     begin


         initAdvGrid(grdDaegi);
         initAdvGrid(grdSunapDaegi);
         initAdvGrid(grdSunapFinish);
         initAdvGrid(grdPromise);

         gridColSet(1, grdDaegi, fontInfoSave_f.clbColumnCheck);



        compoName := (Self.Parent.parent  as TAdvpanel).Name;
        if compoName = 'pnlDaegi' then   //Main_f
         begin
         end
         else
         if compoName = 'pnlWait' then   //JinRyo_f
         begin

               initAdvGrid(JinRyo_f.grdTxHx);
               initAdvGrid(JinRyo_f.grdNeyuk);
               initAdvGrid(JinRyo_f.grdSangByung);
               initAdvGrid(JinRyo_f.grdLabResult);
               initAdvGrid(JinRyo_f.grdJx2);
               initAdvGrid(JinRyo_f.grdGroupCode);
               initAdvGrid(JinRyo_f.grdSuga);
               initAdvGrid(JinRyo_f.grdDrug);
               initAdvGrid(JinRyo_f.grdFindGroup);
               initAdvGrid(JinRyo_f.grdFindSuga);
               initAdvGrid(JinRyo_f.grdFavorite);

         end;



     end;

end;

procedure TDaegiFrame_fr.N5Click(Sender: TObject);
var
  Voice: TSpVoice;
begin

  Voice := TSpVoice.Create(nil);
  Voice.Speak(grdsunapDaegi.Cells[1, grdsunapDaegi.Row]   +'님 접수대로 오세요', 0);
  Voice.Free;

end;



procedure TDaegiFrame_fr.mnuTxView_daegiClick(Sender: TObject);
var
    compoName : string;
begin
     compoName := (Self.Parent.parent  as TAdvpanel).Name;

     if compoName = 'pnlDaegi' then
     begin

         main_f.grdJX2.RemoveRows(1, main_f.grdJX2.RowCount-1 );

         main_f.datetimepicker1.date:= dtDate.Date;
         main_f.datetimepicker2.date:= dtDate.Date;

         main_f.LoadJinChalCode;

         setJinryo_s(
               grdDaegi.OriginalCells[35, grdDaegi.Row],    //Jubsu_id
               main_f.grdJX2,                               //AGrid
               grdDaegi.OriginalCells[3, grdDaegi.Row],     // ma_chart,
               '',//Team // grdDaegi.OriginalCells[54, grdDaegi.row] , //팀이 없어야 모든 내역이 다 보인다.
               '', //Doc_code     //    main_f.cbTreatRoom.ColumnItems[  main_f.cbTreatRoom.ItemIndex,0],
               grdDaegi.OriginalCells[57, grdDaegi.Row],    //isInPat
               FormatDateTime('YYYY-MM-DD', dtdate.date),  //sjin_day
               FormatDateTime('YYYY-MM-DD', dtdate.date),    //sjin_day2
               2);   //iChunGu




          main_f.lblChart.Caption   := grdDaegi.OriginalCells[3, grdDaegi.Row];// ma_chart;
          main_f.lblPaName.Caption  := grdDaegi.OriginalCells[4, grdDaegi.Row];// ma_PaName;

          main_f.pnlJinryo.Visible  := true;


      end;

end;

procedure TDaegiFrame_fr.N68Click(Sender: TObject);
var
     vartag: integer;
     varTime: Tdatetime;
     varCrmResult: integer;
begin
{          varPridn := trim(grdPromise.Cells[10, grdPromise.Row]);
          varPrTeam := grdPromise.Cells[9, grdPromise.Row];
          varGridChart:= grdPromise.Cells[5,  grdPromise.Row];
          if ChangeStatus(grdPromise.Cells[2,  grdPromise.Row], //name
               formatdatetime('YYYY-MM-DD', dtDate.date), //Day
               varPrTeam, //team
               varGridChart, //chart
               '', varTag) = true then
          begin
               if varPridn <> '' then
                    Promise_UpdatePos(strtoint(varPridn), vartag);

               promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    cbteam.Text //팀
                    );


          end;
}

     varTime := now;
//     if grdPromise.Cells[11, grdPromise.Row] <> '' then
//        vartag := grdPromise.ints[11, grdPromise.Row] //selectedItemTag;
//     else
//        vartag := 0;
     if grdDaegi.Cells[20, grdDaegi.Row] <> '' then
        vartag := grdDaegi.ints[20, grdDaegi.Row] //selectedItemTag;
     else
        vartag := 0;


//     if LoadGogekData_chart(grdPromise.Cells[5,  grdPromise.Row]
//                                            , progressbar,  varViewALL) = true then
//     begin

     if LoadGogekData_chart(grdDaegi.Cells[3,  grdDaegi.Row]
                              , progressbar,  varViewALL) = true then
     begin


//          if
//               jubsuSave(grdPromise.Cells[5,  grdPromise.Row], //main_f.edtChart.Text,
//               grdPromise.Cells[9, grdPromise.Row], //varDamteam,
//               loadTeamName(grdPromise.Cells[9, grdPromise.Row]),
//               //trim(StringReplace(lblTeam.Caption, '원장', '',[rfReplaceAll])),
//               '', //cbHyg.Text,
//               inttostr((Sender as Tmenuitem).Tag), //대기구분
//               formatdatetime('YYYY-MM-DD', now),
//               now,
//               ma_first, //초진일
//               copy(ma_jumin,1,7),
//               ma_h_zip,
//               '1', //초재
//               ma_PaName,
//               ma_c_phone,
//               grdPromise.Cells[4, grdPromise.Row], //예약내용
//               Promise_LoadMemo(vartag), //참고사항
//               Inttostr(vartag), //예약 idn
//               grdPromise.Cells[3, grdPromise.Row]) //예약 시간




//                jubsuSave( grdPromise.Cells[5,  grdPromise.Row], //main_f.edtChart.Text,
//                              varPrTeam, //varDamteam,
//                              grdPromise.Cells[10, grdPromise.Row],// loadTeamName(varPrTeam),
//                              //trim(StringReplace(lblTeam.Caption, '원장', '',[rfReplaceAll])),
//                              '', //cbHyg.Text,
//                              inttostr((Sender as Tmenuitem).Tag), //대기구분
//                              formatdatetime('YYYY-MM-DD', now),
//                              now,
//                              ma_first, //초진일
//                              copy(ma_jumin,1,7),
//                              ma_h_zip,
//                              ma_PaName,
//                              ma_c_phone,
//                              grdPromise.Cells[4, grdPromise.Row], //예약내용
//                              Promise_LoadMemo( vartag), //참고사항
//                              Inttostr(vartag) , //예약 idn
//                              grdPromise.Cells[3, grdPromise.Row],   //예약 시간
//                              0,//grdDaegi.ints[52, grdDaegi.Row],   //Jongbyul
//                              0,//grdDaegi.ints[53, grdDaegi.Row], //초재
//                              '',//substr(  ma_sanJung, 1, '|'),// edtSanjung.text, //Sanjung
//                              '',//substr(  ma_sanJung, 2, '|'),// edtTeakryeRegNo.text, //특례등록번호
//                              0,//grdDaegi.ints[40, grdDaegi.Row], //health
//                              '',//grdDaegi.OriginalCells[41, grdDaegi.Row], //pregnan
//                              '',//grdDaegi.OriginalCells[42, grdDaegi.Row], //chasangNo
//                              '',//grdDaegi.OriginalCells[43, grdDaegi.Row], //bonType
//                              '',// grdDaegi.OriginalCells[44, grdDaegi.Row], //yujikum
//                              '',//grdDaegi.OriginalCells[45, grdDaegi.Row], //Kwamok
//                              '',// grdDaegi.OriginalCells[54, grdDaegi.Row], //treatRoom
//                              '0',  //isInPat
//                               '' ,  //inPat_time
//                               0//rpPK
//                              )
//
//
//
//
//
//
//          = true then
//          begin
//
//               if configvalue.varEasydent  = '1' then
//                    case EasyMode of //0:없음
//                         4:
//                              begin
//                                   //ToDo : maru접수
//
//
//                              end;
//                    end;
//
//          end
//          else
//          begin
//               ChangeStatus(ma_PaName,
//                    formatdatetime('YYYY-MM-DD', now),
//                    varPrTeam ,
//                    grdPromise.Cells[5,  grdPromise.Row], '', inttostr((Sender as
//                    Tmenuitem).Tag));
//          end;



          main_f.btnJubsuClick(self);

        {  //리콜과 예약검색해서 내원 처리
           varCrmResult := main_f.LoadRecallNPromise(main_f.edtChart.text);

             case varCrmResult of
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

 //    checkPromiseRecall(grdPromise.Cells[5,  grdPromise.Row]);

       checkPromiseRecall(grdDaegi.Cells[3,  grdDaegi.Row]);

          //대기구분
     // '10', '접수'
     // '0', '진료대기'
     // '1', '진료중'
     // '2', '수납완료'
     // '3', '수납대기' 진료완료
     // '9', '수납대기'  진료전 수납

     Promise_UpdatePos(vartag, inttostr((Sender as Tmenuitem).Tag));

     promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); //팀
                 //   cbteam.Text); //팀



end;

procedure TDaegiFrame_fr.N8Click(Sender: TObject);
var
  Voice: TSpVoice;
begin
  Voice := TSpVoice.Create(nil);
  Voice.Speak(grdDaegi.Cells[4, grdDaegi.Row]   +'님 진료실로 들어오세요', 0);
  Voice.Free;
end;


procedure TDaegiFrame_fr.N9Click(Sender: TObject);  //수납대기에서 진료대기
begin
  try
               timer2.Enabled := false;

    //진료 여부 확인 (jinryo_s, jinryo_p, jinryo_o)

    if Application.MessageBox(pchar(grdSunapDaegi.Cells[1, grdSunapDaegi.Row] + '[' +
          grdSunapDaegi.Cells[2, grdSunapDaegi.Row] + ']'
          + '님의 수납대기상태를 삭제 하시겠습니까?' +#10
          + '입원의 경우 퇴원 취소됩니다.'    ), '확인', MB_OKCANCEL) = 1 then
     begin
          //YeyakNaewon('', grdDaegi.OriginalCells[2, grdDaegi.Row].AsString); //, grdDaegi.OriginalCells[1, grdDaegi.Row].AsString); //Yeyak Update
          //NeWonCancelJinRyoP(grdDaegi.OriginalCells[2, grdDaegi.Row].AsString); //Jinryo_p Update


          //Jinryo_p를 삭제하자....
          JinryoDelete(
               grdSunapDaegi.Cells[19, grdSunapDaegi.Row], //jinryo_pid
               grdSunapDaegi.Cells[2, grdSunapDaegi.Row],   //chart
               ForMatDateTime('YYYY-MM-DD', dtDate.date),   //jin_day
               grdSunapDaegi.Cells[25, grdSunapDaegi.Row],  //진료실
               grdSunapDaegi.Cells[35, grdSunapDaegi.Row],  //doc_code
               grdSunapDaegi.Cells[34, grdSunapDaegi.Row]   //ToDO :0:외래 1:숙박입원 2: 낮입원
               ); //Newon Delete

          //ToDo : 입원환자였으면 입원 접수를 찾아서 퇴원을 0으로 만들자.
           if  grdSunapDaegi.Cells[34, grdSunapDaegi.Row] <> '0' then   //수납대기취소
           begin

               if Application.MessageBox(pchar(grdSunapDaegi.Cells[1, grdSunapDaegi.Row] + '[' +
                grdSunapDaegi.Cells[2, grdSunapDaegi.Row] + ']'
                + '퇴원취소하십니까?.'    ), '확인', MB_OKCANCEL) = 1 then
                begin


                    ChangeStatus_JubsuID_Cancel_OutPat(grdSunapDaegi.Cells[20, grdSunapDaegi.Row]  );;
                end;
           end;

         if configvalue.varDaegiSocketUse  ='1' then    //1:다서버이용, 0:직접저장
         begin

      //     daegiselect;

//          if dm_f.IdTCPClient2.Connected = false then
//          dm_f.ConnectImageDBServer;
//          dm_f.IdTCPClient2.iohandler.WriteLn('CDS_Delste');
        end;

         // updateDaegiStat(grdDaegi, 0);


               if ChangeStatus(grdSunapDaegi.Cells[1, grdSunapDaegi.Row],
               dtDate.date,//formatdatetime('YYYY-MM-DD', dtDate.date),
               grdSunapDaegi.Cells[25, grdSunapDaegi.Row], //team
               grdSunapDaegi.Cells[35, grdSunapDaegi.Row], //Doc_Code
               grdSunapDaegi.Cells[2, grdSunapDaegi.Row], //chart
               '',
               '10',  //jubsu_time을 바꾸자. jin_time는 접수시간이다. RIS에서 변하면 안됨
               grdSunapDaegi.Cells[20, grdSunapDaegi.Row]) = true then
          begin


                 daegiselect(tsmain.TabIndex);

          end;




     end;
  finally

           timer2.Enabled := true;

  end;
end;

procedure TDaegiFrame_fr.pgSunapDaegiChange(Sender: TObject);
var
     nCnt : integer;
begin

try
   screen.Cursor := crHourGlass;
   nCnt := 0;
   case pgSunapDaegi.ActivePageIndex of
        0:
          begin
            SunapView('0',
             grdSunapDaegi,
             nCnt,
             '',  //chart
             formatdatetime('YYYY-MM-DD', dtDate.date)
             );

            pgSunapDaegi.Pages[0].Caption
               := '수납대기' +  '('+ inttostr(nCnt) +')' ;//inttostr((grdSunapDaegi.RowCount-1)) +')' ;
          end;
        1:
          begin
            SunapView('1',
             grdSunapFinish,
             nCnt,
             '',//chart
             formatdatetime('YYYY-MM-DD', dtDate.date)
             );

             pgSunapDaegi.Pages[1].Caption
                 := '수납완료' +  '('+ inttostr(nCnt) +')' ;// '('+ inttostr((grdSunapFinish.RowCount-1)) +')' ;
          end;
   end;

            //ToDo : 속도 개선 필요... 속도가 느려서  daegiselect에서 옮겨 놓음.
//         CountDaegi(formatdatetime('YYYY-MM-DD', dtDate.date) , //jin_day:string;
//             cbAF.checked,
//             nJubsuCnt       ,
//             nWaitCnt        ,
//             nInPatCnt       ,
//             nPromiseCnt     ,
//             nSunapTotalCnt  ,
//             nSunapWaitCnt   ,
//             nSunapCnt  );


//          DispCount;

finally
    screen.Cursor := crDefault;
end;

end;

procedure TDaegiFrame_fr.PopupMenu4Popup(Sender: TObject);
begin
        if tsmain.TabIndex = 2 then
        begin
           if  grdDaegi.OriginalCells[3, grdDaegi.Row]  = '' then
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
end;

procedure  TDaegiFrame_fr.updateDaegiStat(
     aGrid : TadvStringGrid;
     varStat:integer;
     varGridKind:integer = 0);
var
     varGridChart:string;
     varGridTeam:string;
     varGridDoc:string;
     varTag: string;
     varprIdn: string;
     varPrTeam: string;
     varCrmResult: integer;

begin
     varTag := inttostr(varStat);

     if varGridKind = 0 then //접수표...
     begin
          varPridn := trim(aGrid.OriginalCells[20, aGrid.Row]);
          varPrTeam := aGrid.OriginalCells[8, aGrid.Row];
          varGridChart:= aGrid.OriginalCells[3, aGrid.Row];

               varGridTeam:=aGrid.OriginalCells[8, aGrid.Row];
               varGridDoc:=aGrid.OriginalCells[62, aGrid.Row];



          if ChangeStatus(aGrid.OriginalCells[4, aGrid.Row],
               dtDate.date,//formatdatetime('YYYY-MM-DD', dtDate.date),
               varPrTeam, //team
               varGridDoc, //Doc_name
               varGridChart, //chart
               '', varTag,
               aGrid.OriginalCells[35, aGrid.Row]) = true then
          begin


               {jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    cbteam.Text //팀
                    );
                }
                daegiselect(tsmain.TabIndex);



             if varPridn <> '' then
                    Promise_UpdatePos(strtoint(varPridn), vartag);


             if configvalue.varEasydent  = '1' then
               case  EasyMode of //0:없음
                    4:
                         //ToDo : maru접수
//                   if configvalue.varEasydentDaegi = '1' then
//                  main_f.MaruNewonSave(varGridChart,
//                              formatDatetime('YYYY-MM-DD',
//                              main_f.dtDate.Date),
//                              now, dKind[strtoint(varTag)]);
               end;

          end;

     end
     else
     if varGridKind = 1 then //예약표...
     begin
          varPridn := trim(grdPromise.Cells[10, grdPromise.Row]);
          varPrTeam := grdPromise.Cells[9, grdPromise.Row];
          varGridChart:= grdPromise.Cells[5,  grdPromise.Row];

          varGridTeam:=grdPromise.Cells[9, grdDaegi.Row];
          varGridDoc:='';




          if ChangeStatus(grdPromise.Cells[2,  grdPromise.Row], //name
               dtDate.date,// formatdatetime('YYYY-MM-DD', dtDate.date), //Day
               varPrTeam, //team
               varGridDoc,
               varGridChart, //chart
               '',
                varTag,
                aGrid.OriginalCells[35, aGrid.Row]) = true then
          begin
               if varPridn <> '' then
                    Promise_UpdatePos(strtoint(varPridn), vartag);

               promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                     cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); //팀
                 //   cbteam.Text //팀
                 //   );


          end;

     end
     else
          if varGridKind = 2 then //접수+예약표...
          begin
               varPridn     := trim(aGrid.OriginalCells[20, grdDaegi.Row]);
               varPrTeam    := aGrid.OriginalCells[8, grdDaegi.Row];
               varGridChart := aGrid.OriginalCells[3, grdDaegi.Row];

               varGridTeam  := aGrid.OriginalCells[8, grdDaegi.Row];
               varGridDoc   := aGrid.OriginalCells[26, grdDaegi.Row];


                //예약이면 접수먼저 시킨다.

               if  aGrid.OriginalCells[1, grdDaegi.Row]  ='예약' then
               begin


                    if LoadGogekData_chart( varGridChart  , progressbar, varViewAll) = true then
                    begin

                         if
                            jubsuSave( varGridChart, //main_f.edtChart.Text,
                              varPrTeam, //varDamteam,
                              loadTeamName(varPrTeam),
                              //trim(StringReplace(lblTeam.Caption, '원장', '',[rfReplaceAll])),
                              '', //cbHyg.Text,
                              varTag, //대기구분
                              formatdatetime('YYYY-MM-DD', now),
                              now,
                              ma_first, //초진일
                              copy(ma_jumin,1,7),
                              ma_h_zip,
                              ma_PaName,
                              ma_c_phone,
                              aGrid.OriginalCells[14, aGrid.Row], //예약내용
                              Promise_LoadMemo( strtoint(varPridn)), //참고사항
                              varPridn , //예약 idn
                              aGrid.OriginalCells[23, aGrid.Row],   //예약 시간
                              strtoint( aGrid.originalCells[52, aGrid.Row]),                   //Jongbyul
                               strtoint(aGrid.originalCells[53, aGrid.Row]), //초재
                              substr(  ma_sanJung, 1, '|'),// edtSanjung.text, //Sanjung
                              substr(  ma_sanJung, 2, '|'),// edtTeakryeRegNo.text, //특례등록번호
                              strtoint(aGrid.originalCells[40, aGrid.Row]), //health
                              aGrid.OriginalCells[41, aGrid.Row], //pregnan
                              aGrid.OriginalCells[42, aGrid.Row], //chasangNo
                              aGrid.OriginalCells[43, aGrid.Row], //bonType
                              aGrid.OriginalCells[44, aGrid.Row], //yujikum
                              aGrid.OriginalCells[45, aGrid.Row], //Kwamok
                              aGrid.OriginalCells[54, aGrid.Row], //treatRoom
                              aGrid.OriginalCells[57, aGrid.Row], //isInPat
                              aGrid.OriginalCells[58, aGrid.Row] ,//inPat_time
                              strToInt(aGrid.originalCells[55, aGrid.Row]), //rpPK
                              aGrid.OriginalCells[59, aGrid.Row], //outpat,
                              aGrid.OriginalCells[60, aGrid.Row], //out_patTime,
                              strToInt(aGrid.OriginalCells[61, aGrid.Row]),//jaboID
                              aGrid.OriginalCells[62, aGrid.Row],//doc_code
                              aGrid.OriginalCells[64, aGrid.Row], //isJiwon 지원금여부 1: 지원금
                              aGrid.OriginalCells[65, aGrid.Row]//보험  100 ==> 0 또는 1  1: 보험100
                              )

                         > 0 then
                         begin

                              if configvalue.varEasydent  = '1' then
                                   case EasyMode of //0:없음
                                        4:
                                             begin
                                                  //ToDo : maru접수
//                                                 if configvalue.varEasydentDaegi = '1' then
//                                                      main_f.MaruNewonSave(varGridChart,
//                                                       formatDatetime('YYYY-MM-DD',
//                                                       main_f.dtDate.Date),
//                                                       now, dKind[strtoint(varTag)]);

                                             end;
                                   end;

                         end;
                    end;
             end;

          if ChangeStatus(aGrid.OriginalCells[4, aGrid.Row],
                dtDate.date,// formatdatetime('YYYY-MM-DD', dtDate.date),
               varPrTeam, //team
               varGridDoc,//Doc Name
               varGridChart, //chart
               '',
               varTag,
                aGrid.OriginalCells[35, aGrid.Row]) = true then
          begin

               if varPridn <> '' then
                    Promise_UpdatePos(strtoint(varPridn), vartag);

          end;

     end;


     checkPromiseRecall(varGridChart);

     if configvalue.varDaegiSocketUse  = '1' then    //1:다서버이용, 0:직접저장
     begin
      //   daegiselect; //서버끊겼다면 갱신이라도...
//
//          if dm_f.IdTCPClient2.Connected = false then
//                dm_f.ConnectImageDBServer;
//          dm_f.IdTCPClient2.iohandler.WriteLn('CDS_'+varTag );

      end
     else
     begin

        daegiselect(tsmain.TabIndex);

     end;

     //수납완료면 수납데이터를 만들어주자.
     if  varStat = 3  then
     begin

          with Dm_f.sqlRegi do
          begin

               close;
               SQL.Clear;
               SQL.Add('select * from  ma_sunap');
               SQL.Add('where chart=:chart and sDay=:jin_Day');
               ParamByName('chart').AsString := varGridChart;
               ParamByName('jin_day').AsString := formatdatetime('YYYY-MM-DD', now);
               open;
               if isEmpty then
               begin
                    close;
                    SQL.Clear;
                    SQL.Add('Insert into ma_sunap');
                    SQL.Add('(');
                    SQL.Add('chart,sDay,sTime,chong,chung,bonin,bonin1,team, Bohum,hyun,sunapEk,iilbanEk,totalCharge,card,supyo,tong,GammyunEk,hwanBulEk,');
                    SQL.Add('HyunReceipt,misuEk,iBohumEk,janek,ietcEk,tx,bochul,gyojung,imp, admitNo, doc, doc_code,');
                    sql.add(' mf, Etc, useBohum, recallDay,recallTime,recallRemark,sign,chamgo,youngSu,hyunYoungsu,YoungsuJa,jinryo_pid,chojae, sunapid) values');
                    SQL.Add('(:chart, :jin_day,:sTime, :chong, :chung,:bonin, :bonin1, :team, :Bohum,:hyun,:sunapEk,:iilbanEk,:totalCharge,:card,');
                    SQL.Add(':supyo,:tong,:GammyunEk,:hwanBulEk,:HyunReceipt,:misuEk,:iBohumEk,:janek,:ietcEk,:tx,:bochul,:gyojung,:imp, :admitno, :doc, :doc_code,');
                    sql.add(' :mf,:Etc, :usebohum,');
                    SQL.Add(':recallDay,:recallTime,:recallRemark,:sign,:chamgo,:youngSu,:hyunYoungsu,:YoungsuJa,:jinryo_pid,:chojae,:sunapid');
                    Sql.Add(')');
                    ParamByName('chart').AsString :=  varGridChart;
                    ParamByName('jin_day').AsString := formatdatetime('YYYY-MM-DD', now);
                    paramByname('sTime').asDateTime := now;
                    paramByname('tx').asString := '';
                    ParamByName('chong').AsString := '0';
                    ParamByName('chung').AsString := '0';
                    ParamByName('bonin').AsString := '0';
                    ParamByName('bonin1').AsString := '0';
                    ParamByName('team').AsString :=  varGridTeam;//cbDoc.ColumnItems[cbDoc.itemindex, 0];

                    ParamByName('doc').AsString :=  varGridDoc;//cbDoc.ColumnItems[cbDoc.itemindex, 2];

                    ParamByName('doc_code').AsString :=  varGridTeam;//cbDoc.ColumnItems[cbDoc.itemindex, 0];

                    ParamByName('useBohum').AsString := '0';
                    ParamByName('Bohum').AsString := '0';
                    ParamByName('admitno').AsString := '0';
                    ParamByName('iilbanEk').AsString := '0';
                    paramByname('totalCharge').asfloat := 0;

                    ParamByName('sunapEk').asfloat := 0;
                    ParamByName('hyun').asfloat := 0;
                    paramByname('card').asfloat := 0;


                    paramByname('supyo').asfloat := 0;
                    paramByname('tong').asfloat := 0;
                    paramByname('GammyunEk').asfloat := 0;
                    paramByname('hwanBulEk').asfloat := 0;
                    paramByname('HyunReceipt').asfloat := 0;
                    paramByname('misuEk').asfloat := 0;
                    paramByname('iBohumEk').asFloat := 0;
                    paramByname('janek').asfloat := 0;
                    paramByname('ietcEk').asFloat := 0;

                    paramByname('bochul').asString := '0'; //none
                    paramByname('gyojung').asString := '0'; //none
                    paramByname('imp').asString := '0'; //none
                    paramByname('mf').asString := '0'; //none
                    paramByname('Etc').asString := '0'; //none
                    paramByname('recallDay').asString := ''; //none
                    paramByname('recallTime').asString := ''; //none
                    paramByname('recallRemark').asString := ''; //none
                    paramByname('sign').asString := '';
                    paramByname('chamgo').asString := '';
                    paramByname('youngSu').asString := '';
                    paramByname('hyunYoungsu').asString := '';
                    paramByname('YoungsuJa').asString := '';
                    paramByname('jinryo_pid').asString := '';
                    paramByname('chojae').asString :='';
                    paramByname('sunapid').AsString := '7';  //수납완료에서 입력됨
                    ExecSQL;
               end;
          end;



     end;

end;



procedure TDaegiFrame_fr.cbDaegiGubunChange(Sender: TObject);
begin
 daegiselect(tsmain.TabIndex);
end;

procedure TDaegiFrame_fr.cbDocChange(Sender: TObject);
begin
 daegiselect(tsmain.TabIndex);
end;

procedure TDaegiFrame_fr.cbJubsuStatusChange_Emergency(varKind: integer; status: boolean);
begin
     try
          case varKind of
               0: //응급
                    with dm_f.sqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_jubsu set');
                         Sql.Add(' isEmergency=:isEmergency');
                         Sql.Add('Where Chart=:Chart and jin_day=:jin_day');
                         paramByName('jin_day').AsString := grdDaegi.OriginalCells[2, grdDaegi.Row];
                         paramByName('Chart').AsString := grdDaegi.OriginalCells[3, grdDaegi.Row];
                         if status = true then
                              paramByName('isEmergency').AsString := '1' //응급
                         else
                              paramByName('isEmergency').AsString := '0';
                         execsql;
                    end;
               1:  //체크
                    with dm_f.sqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_jubsu set');
                         Sql.Add(' isEmergency=:isEmergency');
                         Sql.Add('Where Chart=:Chart and jin_day=:jin_day');
                         paramByName('jin_day').AsString := grdDaegi.OriginalCells[2, grdDaegi.Row];
                         paramByName('Chart').AsString := grdDaegi.OriginalCells[3, grdDaegi.Row];
                         if status = true then
                              paramByName('isEmergency').AsString := '2' //체크
                         else
                              paramByName('isEmergency').AsString := '0';
                         execsql;
                    end;

               2: //차팅여부 표시
                    with dm_f.sqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_jubsu set');
                         Sql.Add(' isChart=:isChart');
                         Sql.Add('Where Chart=:Chart and jin_day=:jin_day');
                         paramByName('jin_day').AsString := grdDaegi.OriginalCells[2, grdDaegi.Row];
                         paramByName('Chart').AsString := grdDaegi.OriginalCells[3, grdDaegi.Row];
                         if status = true then
                              paramByName('isChart').AsString := '1' //차팅함
                         else
                              paramByName('isChart').AsString := '0';
                         execsql;
                    end;

               3: //차트접수 여부 표시
                    with dm_f.sqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_jubsu set');
                         Sql.Add(' isJubsu=:isJubsu');
                         Sql.Add('Where Chart=:Chart and jin_day=:jin_day');
                         paramByName('jin_day').AsString := grdDaegi.OriginalCells[2, grdDaegi.Row];
                         paramByName('Chart').AsString := grdDaegi.OriginalCells[3, grdDaegi.Row];
                         if status = true then
                              paramByName('isJubsu').AsString := '1' //차트접수함
                         else
                              paramByName('isJubsu').AsString := '0';
                         execsql;
                    end;

               4: //외출
                    with dm_f.sqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_jubsu set');
                         Sql.Add(' isOut=:isOut');
                         Sql.Add('Where Chart=:Chart and jin_day=:jin_day');
                         paramByName('jin_day').AsString := grdDaegi.OriginalCells[2, grdDaegi.Row];
                         paramByName('Chart').AsString := grdDaegi.OriginalCells[3, grdDaegi.Row];
                         if status = true then
                              paramByName('isOut').AsString := '1' //외출함
                         else
                              paramByName('isOut').AsString := '0';
                         execsql;
                    end;

               5: //동행
                    with dm_f.sqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_jubsu set');
                         Sql.Add(' isCompany=:isCompany');
                         Sql.Add('Where Chart=:Chart and jin_day=:jin_day');
                         paramByName('jin_day').AsString := grdDaegi.OriginalCells[2, grdDaegi.Row];
                         paramByName('Chart').AsString := grdDaegi.OriginalCells[3, grdDaegi.Row];
                         if status = true then
                              paramByName('isCompany').AsString := '1' //동행있음
                         else
                              paramByName('isCompany').AsString := '0';
                         execsql;
                    end;

          end;
          //ShowMessage('저장되었습니다.');

     except
          on E: Exception do
          begin
               ShowMessage('저장에 실패하였습니다.' + #13#10 +
                    E.Message);
          end;
     end;


     {main_f.jubsuselect(grdDaegi,
          formatdatetime('YYYY-MM-DD', dtDate.date), //일자
          inttostr(cbdaegiGubun.itemindex - 1), //구분
          cbteam.Text); //팀
      }
      daegiselect(tsmain.TabIndex);
end;



procedure TDaegiFrame_fr.cbTreatRoomSelect(Sender: TObject);
var
    team_key : string;
begin


   // showmessage('');
     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
     LoadDoclist(cbDoc, team_key);

     daegiselect(tsmain.TabIndex);

end;


procedure TDaegiFrame_fr.cbYeyakViewClick(Sender: TObject);
var
    daegiTeamIndex : string;
begin
         daegiTeamIndex :=   cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
         // cbTeam.text;//cbDoc2.ColumnItems[cbDoc2.itemindex, 0];

          promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    daegiTeamIndex //팀
                    );
end;

procedure TDaegiFrame_fr.checkPromiseRecall(varChart:string);
var
    varCrmResult : integer;
begin

            //todo: 접수할때하고수납완료 할때 처리하자...
            //toDo: 자동접수할때는 알람을 켜주자...
             if configvalue.varRecallAlret  ='0' then
             exit;

            //리콜과 예약검색해서 내원 처리
            varCrmResult := LoadRecallNPromise(varChart);

             case varCrmResult of
                   1: //예약있음.
                          begin
                                 if
                                        Application.MessageBox(pchar('오늘 이후 예약내역이 있습니다.' + #10#13 +
                                        '확인하시고 처리하시겠습니까?'),
                                        '예약처리 확인', MB_YESNO) = 6 then
                                 begin
                                        main_f.showGogekAlret(ma_chart, ma_paname, 0);    //0:예약창 1://리콜창

                                 end;

                          end;
                   2: //리콜있음.
                          begin
                                 if
                                        Application.MessageBox(pchar('오늘 이후 리콜내역이 있습니다.' + #10#13 +
                                        '확인하시고 처리하시겠습니까?'),
                                        '리콜처리 확인', MB_YESNO) = 6 then
                                 begin
                                        main_f.showGogekAlret(ma_chart, ma_paname,1);   //0:예약창 1://리콜창

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
                                        main_f.showGogekAlret(ma_chart, ma_paname, 1);  //0:예약창 1://리콜창

                                 end;
                          end;

            end;
end;



procedure TDaegiFrame_fr.LoadDefaultValue;
var
     varcode: string;
begin

     with dm_f.SqlWork do
     begin

          cbTeam.items.Clear;
          cbTeam.items.Add('전체');
          cbTeamName.items.Clear;
          cbTeamName.items.Add('전체');
          with cbDoc2 do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;

          with cbDoc2 do
          begin
               with Columns.Add do
               begin
                    Width := 0;
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
                  Strings.Add('전체');

               end;
          end;



          Close;
          Sql.Clear;
          Sql.Add(' select saName, team_name, team_color, saBun  from  ma_sawon_basic s join ma_team t on s.sateam=t.team_name  ');
          Sql.Add(' where saJikGub= ''1'' and  nouse <> ''1''                                                                   ');
          Sql.Add(' order by  jubsu_order, sabun                                                                                ');//convert(int, sabun)   '); //order by team_name');

        // Sql.Add('select * from ma_team');
        //  Sql.Add('order by team_name');
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                     cbTeam.items.Add(FieldByName('team_name').AsString); //대기자리스트 팀코드
                     cbTeamName.items.Add(FieldByName('saName').AsString);  //대기자리스트용
                    with cbDoc2 do
                    begin
                         with Columns.Add do
                         begin
                              Width := 0;
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




           with cbTreatRoom do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;

          Close;
          Sql.Clear;
          Sql.text :=
               'Select * from ma_basic                                   ' + #13#10 +
               'where  (code like  ''093%'') and (code <> ''09300'')     ' + #13#10 +
               'and inuse <>  ''0''  and (remark = ''TREAT'' or remark = ''MED'' )  ' + #13#10 +
            //   'order by val,code                                        ';
               'order by disp                                       ';


          Open;
          if not isEmpty then
          begin

                 with cbTreatRoom do
                    begin
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
                              Width := 200;
                               Font.Name:= '맑은 고딕';
                               Font.Size := 12;
                         end;

                    end;
                   with cbTreatRoom.ComboItems.Add do
                   begin
                      Strings.Add('A');     //Code
                      Strings.Add('A');  //code?
                      Strings.Add('전체');
                   end;

               while not eof do
               begin

                   with cbTreatRoom.ComboItems.Add do
                   begin
                      //  Strings.Add(FieldByName('team_name').AsString);
                      //  Strings.Add(FieldByName('team_color').AsString);
                      //  Strings.Add(FieldByName('team_doctor1').AsString);
                      Strings.Add(trim(FieldByName('val').AsString));     //Code
                      Strings.Add(trim(FieldByName('remark').AsString));  //code?
                      Strings.Add(trim(FieldByName('disp').AsString));

                   end;

               //  cbTreatRoom.items.add(FieldByName('disp').AsString);

                    next;
               end;
               cbTreatRoom.ItemIndex := 0;
          end
          else
          begin
             //  cbTreatRoom.items.add('데스크');
             //  cbTreatRoom.ItemIndex := 0;
          end;





     end;
      cbDoc2.ItemIndex := 0;
      cbTeam.itemindex := 0;
      cbTeamName.itemindex := 0;
end;

procedure TDaegiFrame_fr.setArrayPanel;
begin
    setLength( pnlArray, 1);

//    pnlArray[0] :=  pnlDaegimain;
    pnlArray[0] :=  pnlDaegiInfo ;



end;




procedure TDaegiFrame_fr.SMS1Click(Sender: TObject);
var

     vartag         : integer;
     varCPhoneNumber: string;
     pTime          : string;
     varprCalldate  : string;
     varPrName      : string;
     varPrChart     : string;

begin

     vartag          := strtoint( (grdDaegi.OriginalCells[20, grdDaegi.row ]))  ;
     varprCalldate   := formatdatetime('YYYY-MM-DD',  dtDate.date);
     varCPhoneNumber := grdDaegi.OriginalCells[19, grdDaegi.row ] ;
     varPrTel        := configValue.varTel1;
     pTime           := grdDaegi.OriginalCells[23, grdDaegi.row ] ;
     varPrName       := grdDaegi.OriginalCells[4, grdDaegi.row ] ;
     varPrChart      := grdDaegi.OriginalCells[3, grdDaegi.row ] ;



     Promise_SelectData(vartag);

     if not assigned(smsone_f) then
          smsone_f := Tsmsone_f.Create(application);
     smsone_f.edtRecvno.text   := call_tel_type(varCPhoneNumber);
     smsone_f.edtSendno.text   := call_tel_type(varPrTel);
     smsone_f.edtName.text     := varPrName;
     smsone_f.lblChart.caption :='';
     smsone_f.lblChart.caption :=varPrChart;

     smsone_f.memcontent.text := '';
     smsone_f.LblMemcontentSize.Caption := '0/';

     if varprCalldate <> '' then
     begin
          smsone_f.edtMonth.text := copy(varprCalldate, 6, 2);
          smsone_f.edtDay.text   := copy(varprCalldate, 9, 2);
     end
     else
     begin
          smsone_f.edtMonth.text := formatdatetime('MM',  dtDate.date);
          smsone_f.edtDay.text   := formatdatetime('DD',  dtDate.date);
     end;
     smsone_f.edtTime.text := copy(varPrTime, 1, 2);
     smsone_f.edtMin.text := copy(varPrTime, 4, 2);

     smsone_f.varMode := 1;
     smsone_f.Showmodal;


end;


end.


SELECT   i.chart, i.name,  i.first_day,   i.jumin, n.id, n.inPat_time, n.outPat_time,
 n.isInpat, n.isOutPat, n.JaboID,  n.doc_code,
 N.team, N.gubun, N.jinstime, N.jinftime, N.sunaptime,  N.hyg,  pr_memo as DDDD,  pr_time   AS YEYAKTIME,
 N.jin_time, N.jin_day, N.fchart, N.chair ,n.isJiwon,  N.doc,  N.nOrder, N.chamgo,  N.pr_idn, N.isChart,
 N.isEmergency,  N.isJubsu,   N.isOut,   N.isCompany,
 N.jongbyul, N.choje, N.teakrye, N.health  , N.pregnan,  N.chasangno, N.bontype,  N.yujikum, N.TreatRoom,
 (select top 1 sanjungTeakRye from jinryo_p where jubsu_id= n.ID) as sanjungTeakRye,
 N.kwamok, N.artteeth1, N.artteeth2, N.implteeth1  , N.implteeth2,  N.rpPK ,
  (SELECT   TOP 1   phone from ma_gogek_phone where chart=n.chart and kind='2' ) as cPhone,
  (SELECT   TOP 1    convert(varchar(300), remark)  from ma_gogek_remark
       where chart=n.chart and kind='11' and code='000' and reg_day= '2019-11-05') as RemCC,
  (SELECT   top 1   convert(varchar,jinstime - jin_time,108)  from ma_jubsu
       where chart=n.chart and jin_day = '2019-11-05' order by jin_day desc) as itime,
  (SELECT   TOP 1 pcolor  FROM       ma_promise
       WHERE   (chart = n.chart) AND (pday = '2019-11-05') and (cancel <> 'Y') and ( cancel <> 'R' )) AS YEYAKcolor,
  (SELECT   TOP 1 pmemo  FROM      ma_promise
       WHERE   (chart = n.chart) AND (pday = '2019-11-05') and (cancel <> 'Y') and ( cancel <> 'R' )) AS mmmm,
  (SELECT   TOP 1 srmemo  FROM       hxsremark
       WHERE   (srchart = n.chart) and srdate = '2019-11-05' ) AS sRemark,
  (select top 1 LocUidCod from ma_LocCht
      where  LocChtNum= n.chart and LocLevCod=10) as isJin
 FROM      ma_jubsu N INNER JOIN  ma_gogek_basic i ON i.chart = N.chart
 WHERE   (N.jin_day = '2019-11-05')   and ( (isInPat = 0) or  (isOutPat = 1) )


