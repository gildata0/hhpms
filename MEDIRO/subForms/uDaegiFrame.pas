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

      // �׸��� ī����
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
  // thread object�� instance�� �����Ѵ�
  // Create�� �Ķ���Ͱ� False�̸� thread�� �������� ��� Execute�� ȣ���Ͽ� �����Ѵ�
  //            "        True�̸� Resume�� ȣ���ϱ� ������ �������� �ʴ´�
  inherited Create(True);

  Fconnection := connection;
  FQuery      := aQuery;
  fJinDay     := aJinDay;
  FcompoName  := aCompoName;
//  FMsg    := DispCount;
//  FDataSource := Datasource;

  // thread�� ������ �����ϸ� �ڵ����� free�ǰ� ����
//  FreeOnTerminate := True;

  // ������ �Ͻ� ������(suspended) thread�� �����Ѵ�
//  Resume;
end;

procedure TQueryThread.Execute;
begin
  inherited;

  try
    // Query�� open�ϰ� DataSource�� �����Ѵ�
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



    // thread���� �浹�� ���Ͽ� ConnectDataSource �� ȣ���Ѵ�
    Synchronize(ConnectDataSource);
  except
    // Handle the exception
    FQueryException := ExceptObject as Exception;
    // thread���� �浹�� ���Ͽ� ShowQryError �� ȣ���Ѵ�
    Synchronize(ShowQryError);
    // Do not use the properties and methods of other objects directly in the Execute method of a thread.
    // Instead, separate the use of other objects into a separate procedure call, and call that procedure
    // by passing it as a parameter to the Synchronize method.
  end;
end;

// TQuery object�� �����ϹǷ� Synchronize �� ȣ���ؾ���
procedure TQueryThread.ConnectDataSource;
//var
 //  dispValue : TDispValue;
begin
  // DataSource�� �����Ѵ�
  // TQuery�� �����ϹǷ� Synchronize �� ȣ������
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

     if FcompoName = 'pnlWait' then //�����
      begin

             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[0].Caption := ' ����' +  '('+ inttostr(nJubsuCnt)    +')'  ;
             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[1].Caption := ' ����' +  '('+ inttostr(nWaitCnt)     +')'  ;
             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[2].Caption := ' ����' +  '('+ inttostr(nPromiseCnt)  +')'  ;
             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[3].Caption := ' �Կ�' +  '('+ inttostr(nInPatCnt)    +')'  ;
             jinryo_f.DaegiFrame_fr1.tsMain.advTabs[4].Caption := ' �Ϸ�' +  '('+ inttostr(nSunapTotalCnt)    +')'  ;


      end
      else
      begin  //������


            main_f.DaegiFrame_fr1.tsMain.advTabs[0].Caption:=  ' �����Ϸ�' +  '('+ inttostr(nJubsuCnt)    +')'  ;
            main_f.DaegiFrame_fr1.tsMain.advTabs[1].Caption:=  ' ��    ��' +  '('+ inttostr(nWaitCnt)     +')'  ;
            main_f.DaegiFrame_fr1.tsMain.advTabs[2].Caption:=  ' ���೻��' +  '('+ inttostr(nPromiseCnt)  +')'  ;
            main_f.DaegiFrame_fr1.tsMain.advTabs[3].Caption:=  ' �Կ�����' +  '('+ inttostr(nInPatCnt)    +')'  ;

            main_f.DaegiFrame_fr1.pgSunapDaegi.Pages[0].Caption := '�������' +  '('+ inttostr(nSunapWaitCnt) +')' ;//inttostr((grdSunapDaegi.RowCount-1)) +')' ;
            main_f.DaegiFrame_fr1.pgSunapDaegi.Pages[1].Caption := '�����Ϸ�' +  '('+ inttostr(nSunapCnt) +')' ;// '('+ inttostr((grdSunapFinish.RowCount-1)) +')' ;
      end;





end;

// Application object�� �����ϹǷ� Synchronize �� ȣ���ؾ���
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

  {thread instance ����}
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
����
����
����
�Կ�
����}
     case aKind  of
        0 :     //����â
            begin
                  tsMain.advTabs.Clear;

                  tsMain.advTabs.Add;
               //   tsMain.advTabs.Items[tsMain.advtabs.Count - 1].
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='�� �����Ϸ�';
                    tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :=' �����Ϸ�';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='�� ��    ��' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :=' ��    ��' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='�� ���೻��' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :=' ���೻��' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='�� �Կ�����';
                    tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='�Կ�����';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

            end;
        1 :     //����â
            begin
//                  tsMain.advTabs.Clear;
//                   tsMain.advTabs.Add('����  ��') ;
//                   tsMain.advTabs.Add('����  ��') ;
//                   tsMain.advTabs.Add('����  ��') ;
//                   tsMain.advTabs.Add('����  ��') ;
//                   tsMain.advTabs.Add('����  ��') ;
               //    tsMain.Tabs.Add('������') ;

                  tsMain.advTabs.Clear;
                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='����  ��';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='��  ��';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='����  ��' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='��  ��' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='����  ��' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='��  ��' ;
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='����  ��';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='��  ��';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].showclose := false;

                  tsMain.advTabs.Add;
//                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='����  ��';
                  tsMain.advtabs.Items[tsMain.advtabs.Count - 1].Caption :='��  ��';
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
        //�׸��� ���ð��� �ҷ�����...
        LoadGridColumnOrder(grdDaegi, 'mainform');
   end
   else
  if compoName = 'pnlWait' then   //JinRyo_f
   begin
        pnlDaegimain.Align := alClient;
        tsMain.TabIndex := varDaegiTabIndex;
        //�׸��� ���ð��� �ҷ�����...
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

          mnuJinDaegi.visible    := false;   // ������ �����κ�����
          mnuJubsuDelete.visible      := false;   // �������
          mnuTxView_daegi.visible:= false;   // ó�溸��
          mnuJubsuChange.visible            := false;   // ������������

         case newtab of
            0:
               begin

                  mnuJinDaegi.visible    := false;   // ������ �����κ�����
                  mnuJubsuDelete.visible      := true;   // �������
                  mnuTxView_daegi.visible:= true;   // ó�溸��
                  mnuJubsuChange.visible            := true;   // ������������

               end;
            1:
               begin
                  mnuJinDaegi.visible    := true;   // ������ �����κ�����
                   mnuJubsuChange.visible           := true;
               end;
            2:   //����
               begin
                  N8.Visible  :=false  ;
               end;
            3:   //�Կ�
               begin
                  N8.Visible  :=false  ;
               end;
            4:   //�Ϸ�
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

     //���v ������ ���� üũ
     if r = grdDaegi.rowcount - 1 then exit;

     //��� ������ ���� üũ
     if grdDaegi.OriginalCells[10, r + 1] <> '0' then exit;

     grdDaegi.MoveRow(r, r + 1);
     grdDaegi.row := r + 1;

     //���ǥ ǥ�� ������ �ٲٰ�...
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

     //DB�� ǥ�� ������ �ٲ���.....
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

     //���ǥ ǥ�� ������ �ٲٰ�...
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

     //DB�� ǥ�� ������ �ٲ���.....
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


         //ToDo : �ӵ� ���� �ʿ�... �ӵ��� ������  daegiselect���� �Ű� ����.
         //�� 1��~2�ʻ���
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
          ColWidths[2] := 0; //����
          ColWidths[3] := 58; //����
          ColWidths[4] := 0; //��Ʈ��ȣ
          ColWidths[5] := 0; //��
          ColWidths[6] := 0; //����������
          ColWidths[7] := 0; //����
          ColWidths[8] := 34; //�����ð�
          ColWidths[9] := 34; //���ð�
          ColWidths[10] := 34; //����ð�
          ColWidths[11] := 140; //����ð�/����
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
//        grdDaegi.ColumnHeaders.Add('����');
//        grdDaegi.ColumnHeaders.Add('����');
//        grdDaegi.ColumnHeaders.Add('��Ʈ��ȣ');
//        grdDaegi.ColumnHeaders.Add('��');
//        grdDaegi.ColumnHeaders.Add('����������');
//        grdDaegi.ColumnHeaders.Add('����');
//        grdDaegi.ColumnHeaders.Add('����');
//        grdDaegi.ColumnHeaders.Add('���');
//        grdDaegi.ColumnHeaders.Add('����');
//        grdDaegi.ColumnHeaders.Add('����');
//        grdDaegi.ColumnHeaders.Add('�����������');
//        grdDaegi.ColumnHeaders.Add('������۽ð�');
//        grdDaegi.ColumnHeaders.Add('���Ḷħ�ð�');
//        grdDaegi.ColumnHeaders.Add('�����ð�');
//        grdDaegi.ColumnHeaders.Add('�޴���');
//        grdDaegi.ColumnHeaders.Add('pidn');
//        grdDaegi.ColumnHeaders.Add('������');
//        grdDaegi.ColumnHeaders.Add('ü��');
//        grdDaegi.ColumnHeaders.Add('�ֹι�ȣ');
//        grdDaegi.ColumnHeaders.Add('����ð�');
//        grdDaegi.ColumnHeaders.Add('�����������');
//        grdDaegi.ColumnHeaders.Add('���ð�');
//        grdDaegi.ColumnHeaders.Add('�����');
//        grdDaegi.ColumnHeaders.Add('nOrder');
//        grdDaegi.ColumnHeaders.Add('Color');
//
    end;
    2:
        begin

//            grdDaegi.ColumnHeaders.Clear;
//            grdDaegi.ColumnHeaders.Add('');
//            grdDaegi.ColumnHeaders.Add('ico');
//            grdDaegi.ColumnHeaders.Add('����');
//            grdDaegi.ColumnHeaders.Add('����');
//            grdDaegi.ColumnHeaders.Add('��Ʈ��ȣ');
//            grdDaegi.ColumnHeaders.Add('��');
//            grdDaegi.ColumnHeaders.Add('����������');
//            grdDaegi.ColumnHeaders.Add('����');
//            grdDaegi.ColumnHeaders.Add('�ð�');
//            grdDaegi.ColumnHeaders.Add('���೻��');
//            grdDaegi.ColumnHeaders.Add('�ð�');
//            grdDaegi.ColumnHeaders.Add('');
//            grdDaegi.ColumnHeaders.Add('�����������');
//            grdDaegi.ColumnHeaders.Add('������۽ð�');
//            grdDaegi.ColumnHeaders.Add('���Ḷħ�ð�');
//            grdDaegi.ColumnHeaders.Add('�����ð�');
//            grdDaegi.ColumnHeaders.Add('�޴���');
//            grdDaegi.ColumnHeaders.Add('pidn');
//            grdDaegi.ColumnHeaders.Add('������');
//            grdDaegi.ColumnHeaders.Add('ü��');
//            grdDaegi.ColumnHeaders.Add('�ֹι�ȣ');
//            grdDaegi.ColumnHeaders.Add('����ð�');
//            grdDaegi.ColumnHeaders.Add('�����������');
//            grdDaegi.ColumnHeaders.Add('���ð�');
//            grdDaegi.ColumnHeaders.Add('�����');
//            grdDaegi.ColumnHeaders.Add('nOrder');
//            grdDaegi.ColumnHeaders.Add('Color');

            if FormInit.SectionExists('main_grdDaegi') = false then
            begin
              with grdDaegi do
               begin
                    ColWidths[0] := 0; //icon
                    ColWidths[1] := 30; //icon
                    ColWidths[2] := 0; //����
                    ColWidths[3] := 50; //����
                    ColWidths[4] := 0; //��Ʈ��ȣ
                    ColWidths[5] := 0; //��
                    ColWidths[6] := 0; //����������
                    ColWidths[7] := 0; //����
                    ColWidths[8] := 38; //���ð�
                    ColWidths[9] := 140; //���೻��
                    ColWidths[10] := 0; //����ð�
                    ColWidths[11] := 0; //����ð�/����
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
          0:   //�����Ϸ�
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    '0',//inttostr(cbDaegigubun.itemindex - 1), //����
                    daegiTeamIndex //��
                    );
          1:   //��������  4
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    '4',//inttostr(cbDaegigubun.itemindex - 1), //����
                    daegiTeamIndex //��
                    );
          2:   //���೻��
               promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    daegiTeamIndex //��
                    );
          3:   //�Կ�     5
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    '5',//inttostr(cbDaegigubun.itemindex - 1), //����
                    daegiTeamIndex //��
                    );

          4:   //�������+�Ϸ� 6
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    '6',//inttostr(cbDaegigubun.itemindex - 1), //����
                    daegiTeamIndex //��
                    );
          5:   //�����Ϸ� 3
               jubsuselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    '3',//inttostr(cbDaegigubun.itemindex - 1), //����
                    daegiTeamIndex //��
                    );
          6:    //????? ����
               JPselect(grdDaegi,
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    daegiTeamIndex //��
                    );
     end;


          compoName := (Self.Parent.parent  as TAdvpanel).Name;

          if compoName = 'pnlDaegi' then   //Main_f
           begin

                case pgSunapDaegi.ActivePageIndex of
                    0:
                    begin

                         SunapView('0', grdSunapDaegi, nCnt, '',  formatdatetime('YYYY-MM-DD', dtDate.date));  //�������

                    end;
                    1:
                    begin

                         SunapView('1', grdSunapFinish, nCnt, '', formatdatetime('YYYY-MM-DD', dtDate.date));   //�����Ϸ�

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


//      �� �����Ϸ�
//      �� ��    ��
//      �� ���೻��
//      �� �Կ�����
//      �� �������
//      �� �����Ϸ�



      compoName := (Self.Parent.parent  as TAdvpanel).Name;

     if compoName = 'pnlWait' then //�����
      begin

//            tsMain.advTabs[0].Caption := ' �� ����' +  '('+ inttostr(nJubsuCnt)    +')'  ;
//            tsMain.advTabs[1].Caption := ' �� ����' +  '('+ inttostr(nWaitCnt)     +')'  ;
//            tsMain.advTabs[2].Caption := ' �� ����' +  '('+ inttostr(nPromiseCnt)  +')'  ;
//            tsMain.advTabs[3].Caption := ' �� �Կ�' +  '('+ inttostr(nInPatCnt)    +')'  ;
//            tsMain.advTabs[4].Caption := ' �� ����' +  '('+ inttostr(nSunapTotalCnt)    +')'  ;


            tsMain.advTabs[0].Caption := ' ����' +  '('+ inttostr(nJubsuCnt)    +')'  ;
            tsMain.advTabs[1].Caption := ' ����' +  '('+ inttostr(nWaitCnt)     +')'  ;
            tsMain.advTabs[2].Caption := ' ����' +  '('+ inttostr(nPromiseCnt)  +')'  ;
            tsMain.advTabs[3].Caption := ' �Կ�' +  '('+ inttostr(nInPatCnt)    +')'  ;
            tsMain.advTabs[4].Caption := ' �Ϸ�' +  '('+ inttostr(nSunapTotalCnt)    +')'  ;


      end
      else
      begin  //������

//            tsMain.advTabs[0].Caption:=  ' �� �����Ϸ�' +  '('+ inttostr(nJubsuCnt)    +')'  ;
//            tsMain.advTabs[1].Caption:=  ' �� ��    ��' +  '('+ inttostr(nWaitCnt)     +')'  ;
//            tsMain.advTabs[2].Caption:=  ' �� ���೻��' +  '('+ inttostr(nPromiseCnt)  +')'  ;
//            tsMain.advTabs[3].Caption:=  ' �� �Կ�����' +  '('+ inttostr(nInPatCnt)    +')'  ;

            tsMain.advTabs[0].Caption:=  ' �����Ϸ�' +  '('+ inttostr(nJubsuCnt)    +')'  ;
            tsMain.advTabs[1].Caption:=  ' ��    ��' +  '('+ inttostr(nWaitCnt)     +')'  ;
            tsMain.advTabs[2].Caption:=  ' ���೻��' +  '('+ inttostr(nPromiseCnt)  +')'  ;
            tsMain.advTabs[3].Caption:=  ' �Կ�����' +  '('+ inttostr(nInPatCnt)    +')'  ;

            pgSunapDaegi.Pages[0].Caption := '�������' +  '('+ inttostr(nSunapWaitCnt) +')' ;//inttostr((grdSunapDaegi.RowCount-1)) +')' ;
            pgSunapDaegi.Pages[1].Caption := '�����Ϸ�' +  '('+ inttostr(nSunapCnt) +')' ;// '('+ inttostr((grdSunapFinish.RowCount-1)) +')' ;
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
     //ToDo : �ӵ� ���� �ʿ�... �ӵ��� ������  daegiselect���� �Ű� ����.
//     CountDaegi(formatdatetime('YYYY-MM-DD', dtDate.date) , //jin_day:string;
//             cbAF.checked,
//         nJubsuCnt       ,
//         nWaitCnt        ,
//         nInPatCnt       ,
//         nPromiseCnt     ,
//         nSunapTotalCnt  ,
//         nSunapWaitCnt   ,
//         nSunapCnt  );
      //ToDo : DtChange�̺�Ʈ���� �ϸ� �� ���ν����� �ι� ź��.CloseUp����  ���� ��.
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
          // ĸ�ǳ�¥ ����ȭ
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
     DoLock : boolean; //���� �ɾ��.

     nIO : integer; //�Կ�, �ܷ� ���� 0: �ܷ�, 1: ���� 2: ��

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
//                              //  ������ �̰ų�...
//                         or (grdDaegi.ints[7, aRow] = 1) then
//                              //  ������ ü� �ٲٴ� ���
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
//                                          '�̹� ü��'+  choiceChair_f.varChair + '�� ������Դϴ�.'+#10#13+
//                                             '���� �����¸� �������� ���� �Ͻðڽ��ϱ�?'), 'Ȯ��', MB_YESNO) = 6 then
//                                          begin
//                                                varTag := '2';  //�������
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
//                                           varTag := '1';  //�������
//
//                                          if ChangeStatus(grdDaegi.OriginalCells[3,grdDaegi.Row],
//                                               formatdatetime('yyyy-mm-dd', dtDate.date),
//                                              grdDaegi.OriginalCells[5, grdDaegi.Row],// varPrTeam,
//                                                grdDaegi.OriginalCells[4, grdDaegi.Row],
//                                                    '', varTag, choiceChair_f.varChair) = true then
//                                          begin
//                                               jubsuselect(grdDaegi,
//                                                    formatdatetime('yyyy-mm-dd', dtDate.date), //����
//                                                    inttostr(cbDaegigubun.itemindex - 1), //����
//                                                       cbteam.Text //��
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

                         if grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), arow] <> '' then   //��Ʈ��ȣ
                         begin
                              if
                                   LoadGogekData_chart(grdDaegi.OriginalCells[grdDaegi.RealColIndex(3), arow], progressbar, varViewAll) =
                                   true then
                              begin

                              //     jubsuID :=  grdDaegi.OriginalCells[grdDaegi.RealColIndex(33), arow] ;


                                   ma_jubsu_ID := grdDaegi.OriginalCells[grdDaegi.RealColIndex(35), arow];
                                   varPidn2    := grdDaegi.OriginalCells[grdDaegi.RealColIndex(20), aRow];//����ID




                                 //  ma_rp_RequestPK :=  grdDaegi.ints[grdDaegi.RealColIndex(55), arow] ;
                                   ma_rp_RequestPK :=  strtoint(grdDaegi.originalCells[grdDaegi.RealColIndex(55), arow]);

                                   if ma_rp_RequestPK > 0 then
                                      isReferer := true;


                                    if compoName = 'pnlDaegi' then //������
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
                                                                               //   ���ܰ���
                                          LoadDoclist( main_f.cbDoc, TreatRoom);
                                       end
                                        else
                                        begin
                                          main_f.cbTreatRoom.ItemIndex := 0;
                                        end;

                                        //LoadDoclist���� cbDoc�� �ʱ�ȭ �Ѵ�.
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
                                        main_f.edtJiwon.text        := grdDaegi.OriginalCells[grdDaegi.RealColIndex(64), arow]; //�ꠊƯ�� ������ ����

                                        varGridprIdn                  := grdDaegi.OriginalCells[grdDaegi.RealColIndex(20), arow];

//                                        if varGridPridn <>'' then
//                                        begin
//                                               Promise_SelectData(strtoint(varGridprIdn));
//
//                                            //���� �Ҷ� �Ƿں��� ���� ��������.
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

                                    if compoName = 'pnlWait' then //�����
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

                                        //ToDo : �� ����ǿ��� ��⸦ Ŭ���ϸ� ����� ������ �������?
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

                                        //�Կ���
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
                                          35  ���� ID         <<<========
                                          36  �������
                                          37  ����jongbyul
                                          38  ����chojae
                                          39  sanjung
                                          40  health
                                          41  pregnan
                                          42  chasangno
                                          43  bontype
                                          44  yujikum
                                          45  kwamok
                                          46  ����� treatRoom
                                          47  artteeth1
                                          48  artteeth2
                                          49  implteeth1
                                          50  implteeth2
                                          51  jubsu_id         <<<======== ������
                                          52  jongbyul �ڵ�
                                          53  chojae �ڵ�
                                          54  treatRoom �ڵ�
                                          55 rpPk  Referal Pad===>   Rp_Request..PK
                                          56    teakRye
                                          57    �Կ�
                                          58    �Կ��ð�
                                          59    ���
                                          60    ����ð�
                                          61    �ں�

                                          }

                                        // ��¥�� ������...
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
                                           (ma_jongbeul <> '4')  or   //�Ϲ�
                                           (ma_jongbeul <> '7')  or   //����
                                           (ma_jongbeul <> '8')  )    //�ں�

                                            then    //�Ϲ�, ����, �ں� �̸�  ����Ư�ʴ���� Ȯ�� �ʿ�X
                                        begin
                                            //  Jinryo_f.cbSanjungTeakRye.Checked := false;
                                            // showmessage('����Ư�ʴ�����Դϴ�. ���ܸ��� Ȯ���ϼ���.');
                                            //Showmessag�� ���콺 ������ ��ư�� �����Ѵ�. �׷���panel�ιٲ���.
                                            Jinryo_f.pnlSanjungTeakRye.visible:= true;

                                            //pnlSanjungTeakRye�� �� �߰���
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

                                        Jinryo_f.edtJiwon.text        := grdDaegi.OriginalCells[grdDaegi.RealColIndex(64), arow]; //�ꠊƯ�� ������ ����

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

                                        //�� ���¸� �����ͼ� �б��������� �ѷ��ش�,.
                                        LockStatResult := loadLockState(jinryo_f.lblChart.Caption,
                                                           delDash(  grdDaegi.originalCells[grdDaegi.RealColIndex(2), arow]) ) ;

                                        if LockStatResult.aResult =  false then  //������ ����.
                                        begin

                                              jinryo_f.LockControl(false); //����
                                              DoLock := true;
                                        end
                                        else
                                        begin
                                          //   showmessage( LockStatResult.LocUidCod +':'+V_UserID+#10+
                                          //     LockStatResult.LocIpAddr +':'+ GetIPAddress  );

                                            if //( LockStatResult.LocUidCod  <> V_UserID ) and    // �����Ƿθ� �˻�����.
                                             ( LockStatResult.LocIpAddr  <> GetIPAddress )   and  //���� ���̵�� �����ϴ� ��찡 ����.
                                              (LockStatResult.LocLevCod = '10')  and
                                              ( LockStatResult.LocExeNam  =  'HJinryo' )   then
                                              begin




                                               if Application.MessageBox(pchar(
                                                    LockStatResult.LocIpAddr + '���� '+
                                                    LockStatResult.LocPCNam+'('+
                                                    LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
                                                    +') �� �������Դϴ�.'+#10+


                                                 '���������� �����ðڽ��ϱ�?'), 'Ȯ��', MB_YESNO) = 6 then
                                                  begin


                                                      //������ ����

                                                    ReleaseLockOneChart(jinryo_f.lblChart.Caption,
                                                          'HJinryo',
                                                          LockStatResult.LocUidCod ,
                                                          LockStatResult.LocIpAddr);
                                                    jinryo_f.LockControl(false);

                                                    doLock := true;

                                                  end
                                                  else
                                                  begin
                                                      jinryo_f.LockControl(true); //���
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
                                            //Lock�� ��ƶ�.
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

                            if compoName = 'pnlDaegi' then //������
                            begin

                                    main_f.fieldClear;

                            end;


                            if compoName = 'pnlWait' then //�����

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
-����
����
-��Ʈ��ȣ
-��
-����������
-����
�����ð�
���ð�
����ð�/����
-�����������
-������۽ð�
-���Ḷħ�ð�
-�����ð�
-�޴���     }
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
{10 : ����
0 : ����
1: �������
2: ��������(�������)
3: �����Ϸ�
5: �����Կ�
6: �� �Կ�}

      if (aRow > 0)
          and  (aCol > 0)
             and ( grdDaegi.originalCells[grdDaegi.RealColIndex(10), aRow]  = '3') then
       begin  //�����Ϸ�
           aBrush.Color := $00EAFFEA;
           aFont.Color  := clBlack;
       end;

     // irealCol := grdDaegi.RealCol;

      //3:��Ʈ��ȣ  6:�̸� ���� �� ũ�� ����
       if (aRow > 0) then
       begin
       // irealCol := grdDaegi.RealColIndex(aCol);
        irealCol := grdDaegi.DisplColIndex(aCol);

          if ( irealCol in [3, 6]) then  //3:��Ʈ��ȣ  6:�̸�
 //            and ( grdDaegi.DisplColIndex(grdDaegi.RealColIndex(aCol)) in [3, 6]) then
//         if grdDaegi.originalCells[grdDaegi.RealColIndex(3), 0] ='��Ʈ��ȣ' then
          begin
               aFont.Color  := clBlue;
               afont.style  := [fsBold] ;
               afont.size   := 10;
          end;

      end;



      // //Lock ID�� ���� �ִٸ�...�������̴�. ǥ��������...
       if (aRow > 0) and ( grdDaegi.originalCells[grdDaegi.RealColIndex(63), aRow] <> '') then
            //Lock ID�� ���� �ִٸ�...
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

                   //2012.5.1    �����⿡�� ���ֱ�
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
                        //���� �÷�
                   begin
                        if aCol = 10 then //���೻��
                        begin
                             aBrush.Color := stringtocolor(Cells[RealColIndex(26), aRow]);
                             aFont.Color := clBlack;
                             //   aFont.Style := [fsBold];
                        end;
                   end;

                   if (aRow > 0) and (Cells[RealColIndex(22), aRow] <> '') then
                        //���� CC�� ������
                   begin
                        if  RealColIndex(aCol) = 3 then
                        begin
                             aBrush.Color := $00E39FBB;
                             aFont.Color := clGreen;
                             aFont.Style := [fsBold];
                        end;
                   end;

                   if (aRow > 0) and (Cells[RealColIndex(18), aRow] = Cells[RealColIndex(2), aRow]) then
                        //�������� ����(������)�̸�
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
                             //���ð� 10�� ������...
                        begin
                             if  RealColIndex(aCol) = 9 then
                             begin
                                  aBrush.Color :=   $00EDFEED ;//// $00FFAFFF;
                                  aFont.Color := clGreen;
                                  //aFont.Style := [fsBold];
                             end;

                        end;
                        if StrToTime(Cells[ RealColIndex(9), aRow]) > strtotime('00:20') then
                             //���ð� 20�� ������...
                        begin
                             if  RealColIndex(aCol) = 9 then
                             begin
                                  aBrush.Color := $00E2FDE1;//$00FFB5FF;
                                  aFont.Color := clGreen;
                                  //aFont.Style := [fsBold];
                             end;

                        end;

                        if StrToTime(Cells[ RealColIndex(9), aRow]) > strtotime('00:30') then
                             //���ð� 30�� ������...
                        begin
                             if  RealColIndex(aCol) = 9 then
                             begin
                                  aBrush.Color := $00B6FAB4;//$00FF80FF;
                                  aFont.Color := clRed;
                                  //aFont.Style := [fsBold];
                             end;

                        end;
                   end;

                   //���� �������� ���ð��� üũ�ؼ� ������ ǥ��
                   if (aRow > 0) and (trim(Cells[ RealColIndex(23), aRow]) <> '')
                       and  ( copy(Cells[ RealColIndex(23), aRow],3,1) =':')
                        and  ( copy(Cells[ RealColIndex(23), aRow],6,1) =':')  then
                   begin

                        if StrToTime(Cells[ RealColIndex(23), aRow]) > strtotime('00:10:00') then
                             //���ð� 10���� ����������...
                        begin
                             if  RealColIndex(aCol) = 8 then
                             begin
                                  aBrush.Color :=  $00EDFEED ;//$00FFAFFF;
                                  aFont.Color := clYellow;
                                  //aFont.Style := [fsBold];
                             end;

                        end;
                        if StrToTime(Cells[ RealColIndex(23), aRow]) > strtotime('00:20:00') then
                             //���ð� 20���� ����������...
                        begin
                             if  RealColIndex(aCol) = 8 then
                             begin
                                  aBrush.Color :=  $00E2FDE1;//$00FFB5FF;
                                  aFont.Color := clGreen;
                                  //aFont.Style := [fsBold];
                             end;

                        end;

                        if StrToTime(Cells[ RealColIndex(23), aRow]) > strtotime('00:30:00') then
                             //���ð� 30�� ������...
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
                                       aFont.name := '����';
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
                                       aFont.name := '����';
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
                                       aFont.name := '����';
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
                                       aFont.name := '����';
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
                                       aFont.name := '����';
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
                                       aFont.name := '����';
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



                if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '����') then
                begin
                     if acol > 0 then
                     begin
                          aBrush.Color :=$00C5E1B9 ;//$00FFDACA;// clTeal;//$00E39FBB;
                          aFont.Color := clBlack;
                          aFont.Style := [fsBold];
                     end;
                end
                else
                if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '������') then
                begin
                     if acol > 0 then
                     begin
                          aBrush.Color :=$00C5E1B9 ;//$00FFDACA;// $00E39FBB;
                          aFont.Color := clBlack;
                          aFont.Style := [fsBold];
                     end;
                end
                else
                     if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '������') then
                     begin

                          if acol > 0 then
                          begin
                               aBrush.Color := $00C5E1B9 ;//$00FFDACA;//$008CC6FF;
                               aFont.Color := clBlack;
                               aFont.Style := [fsBold];
                          end;

                     end
                     else
                          if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '�������') then
                          begin

                               if acol > 0 then
                               begin
                                    aBrush.Color :=$00C5E1B9 ;// $00FFDACA;//$008EFFFF;
                                    aFont.Color := clBlack;
                                    aFont.Style := [fsBold];
                               end;
                          end
                          else
                               if (aRow > 0) and (Cells[ RealColIndex(3), aRow] = '�����Ϸ�') then
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

                                        //LoadDoclist���� cbDoc�� �ʱ�ȭ �Ѵ�.
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
//                                        //LoadDoclist���� cbDoc�� �ʱ�ȭ �Ѵ�.
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


      if aGrid.cells[6, arow] ='0' then   //�Կ�/�ܷ� ����
        ma_InOut      :=  false
      else
        ma_InOut      :=  true;



      if not assigned(sunap_f) then
          sunap_f := Tsunap_f.Create(application);



     if aGrid.Cells[41, arow] ='1' then
            sunap_f.lblKind .caption    := '����100'   //����100 ǥ��
     else
            sunap_f.lblKind .caption    := '';  //����100 ǥ��



      sunap_f.lblSunapDay.caption    :=    ma_sunapDate;
      sunap_f.lblJubsuID.caption     :=    ma_Jubsu_ID;

      sunap_f.lblJinday1.caption     :=    aGrid.Cells[40, arow];  //(�Կ���)
      sunap_f.lblJinday2.caption     :=    aGrid.Cells[33, arow];   //(�����) ���������
      sunap_f.lblJongbeul.caption    :=    aGrid.Cells[7, arow];

      //    sunap_f.setJinSO(ma_chart,  ma_sunapDate);
      sunap_f.lblTjungCode.caption   :=    aGrid.OriginalCells[21, arow];   //����Ư���ڵ�
      sunap_f.lblTjung.caption       :=    aGrid.OriginalCells[30, arow];   //����Ư�� ����


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
            isInPat,// '0', //ToDO : �Կ� �ܷ� �����ض�....isInpat
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


           if strtoint(  delcomma( aGrid.OriginalCells[29, arow])) > 0 then //������ ������
           begin
              sunap_f.memChamgo.Lines.Add('����ݾ� :' + aGrid.OriginalCells[29, arow] );

           end;




           case ma_SunapJong of
              1,2,4,5:     //��ȣ�϶���
              begin

                   sunap_f.bohoCertSet(aGrid.cells[36, arow],
                   aGrid.cells[37, arow],
                   aGrid.cells[38, arow],
                   aGrid.cells[39, arow]);  //��ȣ����Ȯ�ι�ȣ
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

                                        //LoadDoclist���� cbDoc�� �ʱ�ȭ �Ѵ�.
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
//      if grdSunapFinish.cells[6, arow] ='0' then   //�Կ�/�ܷ� ����
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
//              1,2,4,5:     //��ȣ�϶���
//              begin
//                   sunap_f.bohoCertSet;
//              end;
//           end;

    if grdSunapFinish.Cells[32, ARow] ='�̼�����' then
    begin

       showmessage('[�����������]���� �̼��� �߻����� ã�Ƽ� ��������� �����մϴ�.');
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
     if  grdSunapFinish.Cells[31, aRow] ='3' then  // �̼�����
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

     //ToDo : ���� �ǿ��� �׸����� ���� ���õ� ���� �ٽ� ���õȰ��� ��������.
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
     varCntDaegiJubsu := 0; //���� ����
     varCntJubsu := 0; //ü������
     varRowAdd := 0;
     varRowNum := 0;

     //�� ���к� ī���� ���� --> ������ �ֱ�
    // if cbDaegiGubun.ItemIndex <= 0 then
    // begin
          //���⼭
          //������, ������, ��������, �����Ϸ��� ���ڸ� ����.

     varQuery := LoadGroupDataQuery;
//     daegiQuery:= dm_f.sqlfield;

     daegiQuery := TuniQuery.create(nil);
     daegiQuery.connection := dm_f.UniConnection1;



     //���ǥ�� �ѷ��ֱ�...

     varGrid.removeRows(1, varGrid.rowcount-1);

     with  daegiQuery  do
     begin
          daegiQuery.Close;
          daegiQuery.Sql.Clear;

          case strCase(gubun, ['0','4','5','6']) of
              0, 1 :  //0:������ 4: ����
                 begin
                         daegiQuery.sql.text := selectqry + selectqry_Where_day;
                         daegiQuery.ParamByName('Jin_Day').AsString := DaegiDate;

                         daegiQuery.Sql.Add('and (gubun = :gubun) ');
                         daegiQuery.ParamByName('gubun').AsString := gubun;
                 end;

               3:  //6:������� �Ǵ� �Ϸ� '2';  //������� '3';  //�����Ϸ�
                begin

                   daegiQuery.sql.text := selectqry + selectqry_Where_day;
                   daegiQuery.ParamByName('Jin_Day').AsString := DaegiDate;

                   daegiQuery.Sql.Add('and (gubun = :gubun or gubun =:gubun2 )  ');
                   daegiQuery.ParamByName('gubun').AsString  := '2';  //�������
                   daegiQuery.ParamByName('gubun2').AsString := '3';  //�����Ϸ�

                end;
              else
               //5: �Կ� //isInpat 1: �����Կ� 2: �������Կ�   //isOutpat 1: ���
               //ToDo : �Կ��� �� ���� ����� ������ �Կ�ȯ�� ����Ʈ�� ���̰� ����
               begin


                   daegiQuery.sql.text := selectqry;
                   daegiQuery.Sql.Add('where ((isInpat=''1'' ) or ');  //����    �̰ų�
                   daegiQuery.Sql.Add('(isInpat=''2'' ) ) ');          //������
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

����
����
��Ʈ��ȣ
��
����������
����
�����ð�
���ð�
����ð�/����
�����������
������۽ð�
���Ḷħ�ð�
�����ð�
�޴���
���ʳ�����
���Ϻ��
�ֹι�ȣ
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

                              OriginalCells[realColIndex(13), i] := daegiQuery.FieldByName('YEYAKTIME').AsString; //����ð�

                              varDDD := trim(daegiQuery.FieldByName('DDDD').AsString);
                              //ToDo : HxSremark���� ȯ�� �ΰ������� ������. ��������Ʈ���� ������ ����.
                              OriginalCells[realColIndex(14), i] := varDDD ;

                              if trim(daegiQuery.FieldByName('chamgo').AsString) <> '' then //���� ��������� ������ ������������� �տ� ������.
                                OriginalCells[realColIndex(14), i] :=  trim(daegiQuery.FieldByName('chamgo').AsString) + OriginalCells[realColIndex(11), i];


                              OriginalCells[realColIndex(15), i] := daegiQuery.FieldByName('mmmm').AsString;   //��������
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

                             //ToDo: �ڵ�� �ѱ۸�Ī �ҷ�����
                              varChojae   :=    daegiQuery.FieldByName('choje').asInteger;
                              varJongbeul :=    daegiQuery.FieldByName('jongbyul').asInteger;


                              OriginalCells[realColIndex(38), i] := returnChojae(varChojae);//


                              // 1=���� 2=��ȣ1�� 3=��ȣ2�� 4=�Ϲ� 5=��ȣ4�� 6=��ȣ8��  7=���� 8=�ں�
                              // 9=������1��, 10=������2��, 11=������2�������
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



                              OriginalCells[realColIndex(57), i] := daegiQuery.FieldByName('isInPat').AsString;     //1:�����Կ� 2: �������Կ� 3: ������� 4: ���������
                              OriginalCells[realColIndex(58), i] := daegiQuery.FieldByName('inPat_time').AsString;
                              OriginalCells[realColIndex(59), i] := daegiQuery.FieldByName('isOutPat').AsString;
                              OriginalCells[realColIndex(60), i] := daegiQuery.FieldByName('outPat_time').AsString;
                              OriginalCells[realColIndex(61), i] := daegiQuery.FieldByName('JaboID').AsString;
                              OriginalCells[realColIndex(62), i] := daegiQuery.FieldByName('doc_code').AsString;
                              OriginalCells[realColIndex(63), i] := daegiQuery.FieldByName('isJin').AsString;
                              OriginalCells[realColIndex(64), i] := daegiQuery.FieldByName('isJiwon').AsString;
                              OriginalCells[realColIndex(65), i] := daegiQuery.FieldByName('isbohum100').AsString;
                              OriginalCells[realColIndex(66), i] := daegiQuery.FieldByName('Jin_Time').Asstring;

                               //���ð� ���...

                              if (OriginalCells[realColIndex(10), i] = '0') //���� 0: ������
                              or (OriginalCells[realColIndex(10), i] = '9') then //����  4:���������� �����߼����̾ ����ð��� �����Ѵ�.
                              begin
                                   if OriginalCells[realColIndex(11), i] <> '0' then
                                        OriginalCells[realColIndex(12), i] :=
                                             FormatDateTime('hh:mm',
                                             StrToTime(CurrentTime) -
                                             StrToTime(OriginalCells[realColIndex(11), i])) //�����ð�
                                   else
                                        OriginalCells[realColIndex(12), i] := '00:00';
                              end
                              else
                              begin

                                   if OriginalCells[realColIndex(16), i] <> '' then //������۽ð�
                                        OriginalCells[realColIndex(12), i] := FormatDateTime('hh:mm', //���ð�
                                             StrToTime(formatdatetime('HH:MM',
                                             FieldByName('jinstime').AsDateTime))
                                             -
                                             StrToTime(formatdatetime('HH:MM',
                                             FieldByName('Jin_Time').AsDateTime))
                                             )
                                   else
                                        OriginalCells[realColIndex(12), i] := '00:00';

                              end;



                              if OriginalCells[realColIndex(32), i] = '1' then //��Ʈ����
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(1), i, 103, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;

                              if OriginalCells[realColIndex(33), i] = '1' then //����
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(1), i, 95, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;
                              if OriginalCells[realColIndex(34), i] = '1' then //����
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(1), i, 145, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;

                              if OriginalCells[realColIndex(29), i] = '1' then //����
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(1), i, 44, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;
                              if OriginalCells[realColIndex(30), i] = '1' then //����
                              begin
                                   with varGrid do
                                   begin
                                        // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
                                        AddImageidx(realColIndex(4), i, 35, habeforetext, AdvGrid.vaCenter);

                                   end;

                              end;
                              if OriginalCells[realColIndex(30), i] = '2' then //üũ
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

               end; //�׸��� �Ѹ��� �Ϸ�

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
               begin  //ToDo : ������ ���� ���� ȯ�ڰ� üũ�ǰ� ����
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

     //���ฮ��Ʈ ����
      {1. ����
       2. ������
       3. ����
       4. �������
       5. ����
       6. ���
       7. ����
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



          if  cbYeyakView.Checked = false then   //������
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

    ����
    ����
    ��Ʈ��ȣ
    ��
    ����������
    ����
    �����ð�
    ���ð�
    ����ð�/����
    �����������
    ������۽ð�
    ���Ḷħ�ð�
    �����ð�
    �޴���
    ���ʳ�����
    ���Ϻ��
    �ֹι�ȣ
                   }
                                  //  Application.ProcessMessages;

                 //  while not daegiQuery.Eof do
                   while not daegiQuery.Eof do
                   begin

                        with varGrid do
                        begin
                            for i := FixedRows to Rowcount - 1 do
                             begin

                                  //���⼭ ������ �ִµ�,
                                  //�⺻�� ������ ����� ������, ���峷����ȣ�� (1,2,3,4,5...)
                                  //�ɼǿ��� ���ý�
                                  //�����»���� �� ������ ���� ���� ��ȣ��.  (...5.4.3.2.1)
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
                                  OriginalCells[realColIndex(12), i] := '';//���ð�
//
                                  OriginalCells[realColIndex(13), i] := daegiQuery.FieldByName('pTime').AsString; //����ð�
//
//                                  varDDD := trim(daegiQuery.FieldByName('DDDD').AsString);
//                                  if varDdd <> '' then
//                                       OriginalCells[realColIndex(14), i] := varDDD
//                                  else
//                                       OriginalCells[realColIndex(14), i] :=trim( daegiQuery.FieldByName('sRemark').AsString);
//
//                                  if trim(daegiQuery.FieldByName('chamgo').AsString) <> '' then //���� ��������� ������ ������������� �տ� ������.
                                    OriginalCells[realColIndex(14), i] :=  trim(daegiQuery.FieldByName('remark').AsString) + OriginalCells[realColIndex(11), i];
//
//
                                  OriginalCells[realColIndex(15), i] := daegiQuery.FieldByName('pMemo').AsString;   //��������
//                                  OriginalCells[realColIndex(16), i] := daegiQuery.FieldByName('jinstime').AsString;
//                                  OriginalCells[realColIndex(17), i] := daegiQuery.FieldByName('jinftime').AsString;
//                                  OriginalCells[realColIndex(18), i] := daegiQuery.FieldByName('sunaptime').AsString;
                                  OriginalCells[realColIndex(19), i] := daegiQuery.FieldByName('tel').AsString;
                                  OriginalCells[realColIndex(20), i] := daegiQuery.FieldByName('idn').AsString;
//                                  OriginalCells[realColIndex(21), i] := LoadFirstDay(daegiQuery.FieldByName('chart').AsString);// '';//���ʳ�����daegiQuery.FieldByName('first_day').AsString;
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

                                OriginalCells[realColIndex(52), i] := '3' ;//��������Ŭ�� �Ϲ�daegiQuery.FieldByName('jongbyul').AsString;
                                OriginalCells[realColIndex(53), i] := '4'; //���� ����Ŭ���� �����λ������� daegiQuery.FieldByName('choje').AsString;
                                 //ToDo: �ڵ�� �ѱۺ�Ī �ҷ�����
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
//                                   //���ð� ���...
//
//                                  if (OriginalCells[realColIndex(10), i] = '0') //���� 0: ������
//                                  or (OriginalCells[realColIndex(10), i] = '9') then //����  4:���������� �����߼����̾ ����ð��� �����Ѵ�.
//                                  begin
//                                       if OriginalCells[realColIndex(11), i] <> '0' then
//                                            OriginalCells[realColIndex(12), i] :=
//                                                 FormatDateTime('hh:mm',
//                                                 StrToTime(CurrentTime) -
//                                                 StrToTime(OriginalCells[realColIndex(11), i])) //�����ð�
//                                       else
//                                            OriginalCells[realColIndex(12), i] := '00:00';
//                                  end
//                                  else
//                                  begin
//
//                                       if OriginalCells[realColIndex(16), i] <> '' then //������۽ð�
//                                            OriginalCells[realColIndex(12), i] := FormatDateTime('hh:mm', //���ð�
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
//                                  if OriginalCells[realColIndex(32), i] = '1' then //��Ʈ����
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
//                                  if OriginalCells[realColIndex(33), i] = '1' then //����
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(1), i, 95, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//                                  if OriginalCells[realColIndex(34), i] = '1' then //����
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
//                                  if OriginalCells[realColIndex(29), i] = '1' then //����
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(1), i, 44, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//                                  if OriginalCells[realColIndex(30), i] = '1' then //����
//                                  begin
//                                       with varGrid do
//                                       begin
//                                            // with CreateIcon(0, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
//                                            AddImageidx(realColIndex(4), i, 35, habeforetext, AdvGrid.vaCenter);
//
//                                       end;
//
//                                  end;
//                                  if OriginalCells[realColIndex(30), i] = '2' then //üũ
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


                              OriginalCells[realColIndex(57), i] := '';//daegiQuery.FieldByName('isInPat').AsString;     //1:�����Կ� 2: �������Կ� 3: ������� 4: ���������
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
//               formatdatetime('YYYY-MM-DD', dtDate.date), //����
//               inttostr(cbDaegigubun.itemindex - 1), //����
//               cbteam.Text //��
//               );
//               }
//           if configvalue.varDaegiTimerUse = '0' then //Ÿ�̸� �������� �ƴϿ�(0)�̸�
//
//               else
//               begin
//
//               end;
//
//                   if configvalue.varDaegiTimerUse = '0' then //Ÿ�̸� �������� �ƴϿ�(0)�̸�
//                   begin
//                          // daegiselect(tsmain.TabIndex);
//                         btnRefreshClick(self);
//
//                         if compoName = 'pnlDaegi' then   //Main_f
//                         begin
//                            main_f.lblAutoRefresh.Font.Color := clBlue;
//                            main_f.lblAutoRefresh.Caption :='�ڵ����� �����' ;
//
//                         end;
//                   end
//                         else
//                         begin
//                           timer1.Enabled := false;
//                          if compoName = 'pnlDaegi' then   //Main_f
//                           begin
//                              main_f.lblAutoRefresh.Font.Color := clRed;
//                              main_f.lblAutoRefresh.Caption :='�ڵ����� ��������';
//
//                           end;
//                         end;
//
//                //    LoadCommessage; //���޻��� ��������
//                //    LoadTelCount; //��ȭ ��������
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


         //ToDo : �ӵ� ���� �ʿ�... �ӵ��� ������  daegiselect���� �Ű� ����.
         //�� 1��~2�ʻ���
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

              0: //�����Ϸ� (������)
                   begin




                        if compoName = 'pnlDaegi' then   //Main_f
                         begin

                                grddaegi.PopupMenu:= AdvPopupMenu6;
                                    mnuJubsuDelete.visible:= true;  //�������
                                    N11.visible:= true; //splitter
                                    mnuJubsuChange.visible:= true; //�������� ����
                                    mnuJinDaegi.visible:= false; // ������ ������
                                    cbYeyakView.visible:= false;

                                    mnuJinDaegi.visible    := false;   // ������ �����κ�����
                                    mnuJubsuDelete.visible      := true;   // �������
                                    mnuTxView_daegi.visible:= true;   // ó�溸��
                                    mnuJubsuChange.visible            := true;   // ������������



                                grddaegi.Align := alClient;
                                grddaegi.Visible := true;

                         end
                         else
                        if compoName = 'pnlWait' then   //JinRyo_f
                         begin

                               grddaegi.PopupMenu:= AdvPopupMenu6;
                                  mnuJubsuDelete.visible:= false;  //�������
                                  N11.visible:= false; //splitter
                                  mnuJubsuChange.visible:= false; //�������� ����
                                  mnuJinDaegi.visible:= false; // ������ ������

                               cbYeyakView.visible:= false;
                               grddaegi.Align := alClient;
                               grddaegi.Visible := true;

                         end;


                   end;
               1:  //��������
                  begin
                        grddaegi.PopupMenu:= AdvPopupMenu6;
                            mnuJubsuDelete.visible:= false;  //�������
                            N11.visible:= false; //splitter
                            mnuJubsuChange.visible:= false; //�������� ����
                            mnuJinDaegi.visible:= true; // ������ ������
                            cbYeyakView.visible:= false;

                        grddaegi.Align := alClient;
                        grddaegi.Visible := true;
                      //  grdPromise.Visible := false;
    //                    if aSSigned(Jinryo_f)  then
    //                        jinryo_f.btnOutHosp.Visible := false;
                  end;
               2: //���೻��
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

               3:  //�Կ�
                  begin
                        grddaegi.PopupMenu:= PopupMenu3;
                        grddaegi.Align := alClient;
                        grddaegi.Visible := true;
                            cbYeyakView.visible:= false;
                        //grdPromise.Visible := false;
    //                    if aSSigned(Jinryo_f)  then
    //                        jinryo_f.btnOutHosp.Visible := true;
                  end;

               4: //������� (�Ϸ�)
                   begin

                        grddaegi.PopupMenu:= AdvPopupMenu6;
                            mnuJubsuDelete.visible      := false;   //�������
                            mnuTxView_daegi.visible:= false;   //  ó�溸��
                            mnuJubsuChange.visible            := false;   //������������
                            mnuJinDaegi.visible    := false;   //������ �����κ�����

                        grddaegi.Align := alClient;
                        grddaegi.Visible := true;
                            cbYeyakView.visible:= false;
    //                    if aSSigned(Jinryo_f)  then
    //                        jinryo_f.btnOutHosp.Visible := false;

                       // grdPromise.Visible := false;
                   end;
               5: //�����Ϸ�
                   begin

                        grddaegi.PopupMenu:= AdvPopupMenu6;
                            mnuJubsuDelete.visible:= false;  //�������
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
'       when N.gubun = ''10'' then ''����''                                                                                     ' + #13#10 +
'       when N.gubun = ''0'' then ''ü��''                                                                                     ' + #13#10 +
'       when N.gubun = ''1'' then ''����''                                                                                     ' + #13#10 +
'       when N.gubun = ''2'' then ''����''                                                                                     ' + #13#10 +
'       when N.gubun = ''3'' then ''�Ϸ�''                                                                                     ' + #13#10 +
'       when N.gubun = ''9'' then ''�Ϸ�''                                                                                     ' + #13#10 +
'          else ''����'' end as stat                                                                                           ' + #13#10 +
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
'       when (pos = '''' and cancel <> ''C'' and cancel <> ''U'') then ''����''                                                                    ' + #13#10 +
'       when (cancel=''Y'' or cancel=''C'' or pos=''4'' )  then ''���''                                                       ' + #13#10 +
'          else ''����'' end as stat                                                                                           ' + #13#10 +
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

     //�� ���к� ī���� ���� --> ������ �ֱ�
    // if cbDaegiGubun.ItemIndex <= 0 then
    // begin
          //���⼭
          //������, ������, ��������, �����Ϸ��� ���ڸ� ����.

     varQuery := LoadGroupDataQuery;


  try
     daegiQuery := TuniQuery.create(application);
     daegiQuery.connection := dm_f.UniConnection1;

     //�� ���º� ī����...
     if team = '��ü' then
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
     else //����
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




     //���ǥ�� �ѷ��ֱ�...
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
//����
//����
//��Ʈ��ȣ
//��
//����������
//����
//�����ð�
//���ð�
//����ð�/����
//�����������
//������۽ð�
//���Ḷħ�ð�
//�����ð�
//�޴���
//���ʳ�����
//���Ϻ��
//�ֹι�ȣ
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

                               varGubun:=  FieldByName('gubun2').AsString; //��� ����




                              Cells[7, i] :=  varGubun;



                              varDDD := trim(FieldByName('DDDD').AsString);  //���೻��

                              if varDdd <> '' then                       //���೻���� ������ ��������� �����´�.
                                   Cells[9, i] := varDDD
                              else
                                   Cells[9, i] :=trim( FieldByName('sRemark').AsString);




                             //�� ���º� ���ð��� ǥ���Ѵ�.
                             case strCase(   varGubun ,['5','10','11','12','17','19']) of
                              0 : // ����
                                begin
                              //    Cells[8, i] := formatdatetime('HH:MM', FieldByName('jubsu_Time').AsDateTime);  //�����ð�
                                  varTime:=   CurrentTime  -  FieldByName('jubsu_Time').AsDateTime ;
                                  Cells[8, i] := FormatDateTime('hh:mm', varTime) ;

                                end;
                              1:  //ü��
                              begin
                                //  Cells[8, i] := formatdatetime('HH:MM', FieldByName('Jin_Time').AsDateTime);  //�����ð�
                                 //  varTime:=   FieldByName('Jin_Time').AsDateTime -  FieldByName('jubsu_Time').AsDateTime ;
                               //ü�� ���ð��� �������� �������...
                                 varTime:=   CurrentTime  -  FieldByName('jubsu_Time').AsDateTime ;
                                 Cells[8, i] := FormatDateTime('hh:mm', varTime) ;

                              end;
                              2:  //����
                              begin
                                 // Cells[8, i] := formatdatetime('HH:MM', FieldByName('JinsTime').AsDateTime);  //����ð�
                                     varTime:=   CurrentTime  -  FieldByName('JinsTime').AsDateTime  ;
                                     Cells[8, i] := FormatDateTime('hh:mm', varTime) ;


                              end;
                              3:  //����
                              begin
                                //  Cells[8, i] := formatdatetime('HH:MM', FieldByName('JinfTime').AsDateTime);  //�������ð�
                                  varTime:=   CurrentTime  -  FieldByName('JinfTime').AsDateTime  ;
                                  Cells[8, i] := FormatDateTime('hh:mm', varTime) ;

                              end;
                              4,5:  //�Ϸ�
                                  Cells[8, i] := formatdatetime('HH:MM', FieldByName('sunapTime').AsDateTime);  //�����Ϸ�ð�

                              else
                                  Cells[8, i] :=FieldByName('YEYAKTIME').AsString;
                              end;




                               Cells[10, i] :='';
                               Cells[11, i] :='';




                              Cells[12, i] := FieldByName('mmmm').AsString; //  ���� �������




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

                              //���⼭ ���͸� �Ǵ� ������� Ȯ���Ͽ� ǥ�����ֱ�
                              if varQuery <> '' then
                              begin
                                   if isFilter(cells[4, i],
                                        'SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' and chart=:chart') then
                                   begin

                                        AddImageIdx(0, i, 47, haBeforeText, vaCenter);
                                        Cells[29, i] := '1';

                                   end;
                              end;

                              //���ð� ���...
                              {      when N.gubun = ''10'' then 5 //����                                                                                           ' + #13#10 +
                                     when N.gubun = ''0'' then 10 //ü��                                                                                          ' + #13#10 +
                                     when N.gubun = ''1'' then 11 //������                                                                                          ' + #13#10 +
                                     when N.gubun = ''2'' then 12 //�������                                                                                          ' + #13#10 +
                                     when N.gubun = ''3'' then 17 //�����Ϸ�                                                                                          ' + #13#10 +
                                     when N.gubun = ''9'' then 19 //�����Ϸ�                                                                                          ' + #13#10 +
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
               grdDaegi.OriginalCells[62, grdDaegi.Row], //�����  Code
               grdDaegi.OriginalCells[57, grdDaegi.Row] //ToDO :0:�ܷ� 1:�����Կ� 2: ���Կ�
               )= true  then //���᳻���� �ִ�.
    begin
          if Application.MessageBox(pchar(grdDaegi.OriginalCells[4, grdDaegi.Row] + '[' +
                grdDaegi.OriginalCells[3, grdDaegi.Row] + ']'
                + '���� ���᳻���� �ֽ��ϴ�. �׷���  ���� �Ͻðڽ��ϱ�?'), 'Ȯ��', MB_OKCANCEL) = 1 then
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
          + '���� �����¸� ���� �Ͻðڽ��ϱ�?'), 'Ȯ��', MB_OKCANCEL) = 1 then
     begin
          //YeyakNaewon('', grdDaegi.OriginalCells[2, grdDaegi.Row].AsString); //, grdDaegi.OriginalCells[1, grdDaegi.Row].AsString); //Yeyak Update
          //NeWonCancelJinRyoP(grdDaegi.OriginalCells[2, grdDaegi.Row].AsString); //Jinryo_p Update
        if  JubsuDelete(
               grdDaegi.OriginalCells[35, grdDaegi.Row],
               grdDaegi.OriginalCells[3, grdDaegi.Row],
               ForMatDateTime('YYYY-MM-DD',
               dtDate.date),
               grdDaegi.OriginalCells[8, grdDaegi.Row],
               grdDaegi.OriginalCells[62, grdDaegi.Row], //�����  Code
               grdDaegi.OriginalCells[57, grdDaegi.Row] , //�Կ�
               strtodatetime( grdDaegi.OriginalCells[66, grdDaegi.Row])
               )= true //Newon Delete

          then
          begin

                //ToDo : tblStatus �� ���� ���� -> 1����
                updateTblStatus(now);



//               //���� Cancel
//               {$IFNDEF DEBUG}
//
//                 if  ChangeRPStatus(
//                   strtoint( grdDaegi.originalCells[55, grdDaegi.Row]),
//                   '4',  //���� Cancel
//                    grdDaegi.OriginalCells[3, grdDaegi.Row],
//                   now
//                   ) = false then
//                   begin
//                        showmessage('�������º��� ����.');
//                   end;
//
//               {$ENDIF DEBUG}

          end;


          if trim(grdDaegi.OriginalCells[20, grdDaegi.Row]) <> '' then
               Promise_UpdatePos(strtoint(grdDaegi.OriginalCells[20, grdDaegi.Row]), '');




          {main_f.jubsuselect(grdDaegi,
               formatdatetime('YYYY-MM-DD', dtDate.date), //����
               inttostr(cbdaegiGubun.itemindex - 1), //����
               cbteam.Text); //��
           }

         if configvalue.varDaegiSocketUse  ='1' then    //1:�ټ����̿�, 0:��������
         begin

      //     daegiselect;

//          if dm_f.IdTCPClient2.Connected = false then
//          dm_f.ConnectImageDBServer;
//          dm_f.IdTCPClient2.iohandler.WriteLn('CDS_Delste');
        end;



            //����ȭ�� �ʱ�ȭ
            main_f.fieldclear;
            isLoading := false;
            //     loadResult := 6;
            main_f.edtname.SetFocus;




            //��⸮��Ʈ �ʱ�ȭ
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
                     , grdsunapFinish.Cells[34, grdsunapFinish.Row]  //�Կ�����
                     ,FormatDateTime('YYYY-MM-DD', dtDate.Date)
                      ,FormatDateTime('YYYY-MM-DD', dtDate.Date)
                      , 2);//cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]);

          main_f.lblChart.Caption  :=  grdsunapFinish.Cells[2, grdsunapFinish.Row];
          main_f.lblPaName.Caption :=  grdsunapFinish.Cells[1, grdsunapFinish.Row];

          main_f.pnlJinryo.Visible := true;


      end;


end;

procedure TDaegiFrame_fr.MenuItem4Click(Sender: TObject);  //�� �� ��� --->�����Ϸῡ�� �������� �̵�
begin
  try
    if grdSunapFinish.Cells[31, grdSunapFinish.Row] <> '3' then    //�̼����� �� �ƴϸ�
    begin



          if Application.MessageBox(pchar(grdSunapFinish.Cells[1, grdSunapFinish.Row] + '[' +
                grdSunapFinish.Cells[2, grdSunapFinish.Row] + ']'
                + '���� �������� ���� �Ͻðڽ��ϱ�?'), 'Ȯ��', MB_OKCANCEL) = 1 then
           begin

               if configvalue.varDaegiSocketUse  ='1' then    //1:�ټ����̿�, 0:��������
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
                     '2', //stat ������� 2
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
                     '2'+'|'+ //stat ������� 2
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
                          '0'); //sunap  (0: �ʱ� 1:�����Ϸ� 2:���������� 3: ����)



                      //ToDo : �Կ�ȯ�ڿ����� �Կ� ������ ã�Ƽ� ����� 0���� ������.
                      //ToDo : �ٽ�,,, ������Ҹ� �ϸ� �������� ���ϱ� ����� 0���� �ϸ� �ȵȴ�.
                       if  grdSunapFinish.Cells[34, grdSunapFinish.Row] <> '0' then
                       begin

                                if Application.MessageBox(pchar(grdSunapDaegi.Cells[1, grdSunapDaegi.Row] + '[' +
                                grdSunapDaegi.Cells[2, grdSunapDaegi.Row] + ']'
                                + '�������Ͻʴϱ�?.'    ), 'Ȯ��', MB_OKCANCEL) = 1 then
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

                     showmessage('��⺯�濡 ������ �ֽ��ϴ�. �α����� Ȯ���ϼ���.');
                       exceptlogging('ChangeStatus Error:==> '+ grdSunapFinish.Cells[1, grdSunapFinish.Row]+'|'+ //name
                     formatdatetime('YYYY-MM-DD', dtDate.date)+'|'+
                     grdSunapFinish.Cells[25, grdSunapFinish.Row]+'|'+ //team
                     grdSunapFinish.Cells[35, grdSunapFinish.Row]+'|'+ //Doc_code
                     grdSunapFinish.Cells[2, grdSunapFinish.Row]+'|'+//chart
                     '2'+'|'+ //stat ������� 2
                     '0'+'|'+ //Gubun
                     '0' );

                        exceptlogging( 'JinryoPSunapStateUpdate Error:==>' + grdSunapFinish.Cells[19, grdSunapFinish.Row]+'|'+ //jinryo_pid
                          '0');
                end;


           end;
    end
    else   //�̼������̸�... ma_misuSunap�� ���쵵 jinryo_p�� �����. �׸��� ������ ������,
    begin

          if Application.MessageBox(pchar(grdSunapFinish.Cells[1, grdSunapFinish.Row] + '[' +
                grdSunapFinish.Cells[2, grdSunapFinish.Row] + ']'
                + '���� �̼����������� ���� �Ͻðڽ��ϱ�?'), 'Ȯ��', MB_OKCANCEL) = 1 then
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
          Application.MessageBox(PChar('�����Ͻ� ���೻���� [���]�Ͻðڽ��ϱ�?'),
          '�������', MB_YESNO) = IDYES then
     begin

          if Promise_canCel(selectedItemTag, 'C') = true then
          begin

              promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); // ��


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


     if Application.MessageBox(PChar('�����Ͻ� ���೻���� [����]�Ͻðڽ��ϱ�?'
          +
          #10#13 + '�����Ͻ� ������ �������� �ʽ��ϴ�.'),
          '�������', MB_YESNO) = IDYES then
     begin

          if Promise_Delete(selectedItemTag) = true then
          begin


              promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); // ��


          end;//������� = true


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


     //��Ʈ��ȣ�� ������ ��ϵ� ���̶�� �߰��ؾ� �ϴµ�...
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

          loadResult:= 6; //��ȯ���

           if configvalue.varChartRule = '6' then //����� ��Ʈ��ȣ
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
    //������ ������ ������
    if    isHavingJinryo(
              grdDaegi.OriginalCells[35, grdDaegi.Row], //jubsu_id
              grdDaegi.OriginalCells[3, grdDaegi.Row],
               ForMatDateTime('YYYY-MM-DD',
               dtDate.date),
               grdDaegi.OriginalCells[8, grdDaegi.Row],
                grdDaegi.OriginalCells[62, grdDaegi.Row],
                grdDaegi.OriginalCells[57, grdDaegi.Row] //ToDO :0:�ܷ� 1:�����Կ� 2: ���Կ�
               )= true  then //���᳻���� �ִ�.
    begin
          if Application.MessageBox(pchar(grdDaegi.OriginalCells[4, grdDaegi.Row] + '[' +
                grdDaegi.OriginalCells[3, grdDaegi.Row] + ']'
                + '���� ���᳻���� �ֽ��ϴ�. �׷���  ������ �����ðڽ��ϱ�?'), 'Ȯ��', MB_OKCANCEL) = 1 then
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


    if Application.MessageBox(PChar('������ ������ �����ðڽ��ϱ�?'),  '�˸�', MB_YESNO) = IDYES then
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

          //��ⱸ��
     // '10', '����'
     // '0', '������'
     // '1', '������'
     // '2', '�����Ϸ�'
     // '3', '�������' ����Ϸ�
     // '9', '�������'  ������ ����

     Promise_UpdatePos(vartag, inttostr((Sender as Tmenuitem).Tag));

     promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); // ��
                 //   cbteam.Text); //��


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
           aInPat ,  //�Կ�����
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
10 : ����
0 : ����
1: �������
2: ��������(�������)
3: �����Ϸ�
5: �����Կ�
6: �� �Կ�}
    if Application.MessageBox(PChar('�̹� �Էµ� �������� �����˴ϴ�.' +
          #10#13 + ' [�Կ����]�Ͻðڽ��ϱ�?.'),
          '�Կ����', MB_YESNO) = IDYES then
     begin

       //ToDO :�������� ��� ��������.

      //N16=�Կ����
      ChangeStatus_JubsuID_Cancel_INpat( grdDaegi.OriginalCells[35, grdDaegi.Row]) ;

       //[�Կ�] ��Ҹ� �ϸ� [����]�� ���¸� �ٲ���
      ChangeStatus2(
         strToDate( grdDaegi.OriginalCells[2, grdDaegi.Row]), //jinDay
          grdDaegi.OriginalCells[35, grdDaegi.Row], //JubsuID
         grdDaegi.OriginalCells[3, grdDaegi.Row], //Chart
         '0',   //0: ����                                  //Kind   //[�Կ�] ��Ҹ� �ϸ� [����]�� ���¸� �ٲ��ڤ�
         grdDaegi.OriginalCells[8, grdDaegi.Row],  //Team  //cbDoc.ColumnItems[cbDoc.itemindex, 0]);
         grdDaegi.OriginalCells[62, grdDaegi.Row]); //�����Code

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

         //������� ('2') ���·� ����---------------------------------------------
      //    ChangeStatus2( lblChart.Caption,  '2',  cbDoc.ColumnItems[cbDoc.itemindex, 0]);
      ChangeStatus2(
         strToDate(grdDaegi.OriginalCells[2, grdDaegi.Row]), //jinDay
          grdDaegi.OriginalCells[35, grdDaegi.Row],
         grdDaegi.OriginalCells[3, grdDaegi.Row], //Chart
        '2',                                    //Kind
         grdDaegi.OriginalCells[8, grdDaegi.Row],//Team
         grdDaegi.OriginalCells[62, grdDaegi.Row]  );  //����� Code
      //cbDoc.ColumnItems[cbDoc.itemindex, 0]);


           if not Assigned(outPatient_f) then
                outPatient_f := ToutPatient_f.Create(application);
          outPatient_f.AdvDateTimePicker1.DateTime:= now;
       if  outPatient_f.showmodal =mrOk then
       begin
              outDateTime := outPatient_f.AdvDateTimePicker1.DateTime;

      //���ó��
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
        changeStat_f.Caption      :=     '�������� ����';

     //  caption:=  '[�����] '+ ' '+ ma_Chart +'('+ ma_Paname+')' + genderAge +'';
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
                                                 //   ���ܰ���
               LoadDoclist(  changeStat_f.cbDoc, TreatRoom);
         end
          else
          begin
               changeStat_f.cbTreatRoom.ItemIndex := 0;
          end;

          //LoadDoclist���� cbDoc�� �ʱ�ȭ �Ѵ�.



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
                  teamCode,//   Team       : string;    //�����
                  docName,//   Doc        : string;    //�����
                  doc_Code,
                  changeStat_f.cbJong.ItemIndex,//   jongbyul   : integer;   //����
                  changeStat_f.cbChoje.ItemIndex,//    choje      : integer;   //����
                  changeStat_f.cbSancode3.ItemIndex,   //   health     : integer;   //��������
                  changeStat_f.cbTreatRoom.ColumnItems[ changeStat_f.cbTreatRoom.itemindex, 0],   //   treatRoom  : string;    //�����
                  changeStat_f.cbIo.ItemIndex );  // isInpat    : string)  : boolean;    //�Կ�����
                                                 ////isInpat 1:�����Կ��� 2: �������Կ���  3: �������  4: ���������
              //���� ���᳻�� �����ͼ� �����/�ڵ� �ٲ۴�.
              //������ ������ ������ ������ �׳� �д�.
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


                //���� �޿�/��޿� ����

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

  Voice.Speak(grdsunapfinish.Cells[1, grdsunapfinish.Row]   +'�� ������� �� �ֽʽÿ�', 0);
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

     inputPromise_f.caption := '�� ���� ���';

     inputPromise_f.fieldset;



     varStat2 := '';
     Promise_SelectData(pIdn);

     varCancel := varPrCancel;

     if varCancel = 'Y' then
          varStat2 := '��ҵ�'
     else
          if varCancel = 'C' then
               varStat2 := '��ҵ�'
          else
               if varCancel = 'U' then
                    varStat2 := '�����';

     varPos := varPrPos;

     if varPos = '0' then
          varStat2 := '������'
     else
          if varPos = '1' then
               varStat2 := '������'
          else
               if varPos = '2' then
                    varStat2 := '�������'
               else
                    if varPos = '3' then
                         varStat2 := '�����Ϸ�'
                    else
                         if varPos = '4' then
                              varStat2 := '�����ȵ�'
                         else
                              if varPos = '5' then
                                   varStat2 := '�翹��'
                              else
                                   if varPos = '6' then
                                        varStat2 := '������'
                                   else
                                        if varPos = '7' then
                                             varStat2 := '����';

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

     //���� ���� ����Ʈ�� �ҷ��´�.
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

    { if (sender as Tmenuitem).imageindex = 44 then //�����̸�
     begin
          varCol := 0; //����
          //ma_jubsu Update
     end
     else
     begin
          varCol := 3; //����
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

  Voice.Speak(grdsunapDaegi.Cells[1, grdsunapDaegi.Row]   +'��, �����ݾ��� '+
  IntToHanguel(strtoint(  delcomma( grdsunapDaegi.cells[0, grdsunapDaegi.row])) )+ '�� �Դϴ�.', 0);
  Voice.Free;

end;

procedure TDaegiFrame_fr.N36Click(Sender: TObject);
var
  Voice: TSpVoice;
begin
  Voice := TSpVoice.Create(nil);

  Voice.Speak(grdsunapfinish.Cells[1, grdsunapfinish.Row]   +'��, �����ݾ��� '+
//  IntToHanguel(grdsunapfinish.ints[0, grdsunapfinish.Row] )+ '�Դϴ�.', 0);
  IntToHanguel(strtoint(  delcomma( grdsunapfinish.cells[0, grdsunapfinish.row])) )+ '�� �Դϴ�.', 0);

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

     inputPromise_f.caption := '���� ����';


     inputPromise_f.fieldset;

     varStat2 := '';
     Promise_SelectData(pIdn);

     varCancel := varPrCancel;

     if varCancel = 'Y' then
          varStat2 := '��ҵ�'
     else
          if varCancel = 'C' then
               varStat2 := '��ҵ�'
          else
               if varCancel = 'U' then
                    varStat2 := '�����';

     varPos := varPrPos;

     if varPos = '0' then
          varStat2 := '������'
     else
          if varPos = '1' then
               varStat2 := '������'
          else
               if varPos = '2' then
                    varStat2 := '�������'
               else
                    if varPos = '3' then
                         varStat2 := '�����Ϸ�'
                    else
                         if varPos = '4' then
                              varStat2 := '�����ȵ�'
                         else
                              if varPos = '5' then
                                   varStat2 := '�翹��'
                              else
                                   if varPos = '6' then
                                        varStat2 := '������'
                                   else
                                        if varPos = '7' then
                                             varStat2 := '����';

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

     //���� ���� ����Ʈ�� �ҷ��´�.
     inputPromise_f.PromiseSelect(inputpromise_f.edtchart.text);


     inputPromise_f.loadCellPhoneList(inputpromise_f.edtchart.text);




     inputPromise_f.cbTreatRoom.ItemIndex :=
              inputPromise_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, varPrTeam )  ;

     LoadDoclist(inputPromise_f.cbDoc, inputPromise_f.cbTreatRoom.ColumnItems[inputPromise_f.cbTreatRoom.ItemIndex,0]);




     if inputPromise_f.Showmodal = mrOk then
     begin

        //  SelectPromise(tabView.TabIndex);

          promiseSelect(
              formatdatetime('YYYY-MM-DD', dtDate.date), //����
              inttostr(cbDaegigubun.itemindex - 1), //����
              cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); // ��

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
  Voice.Speak(grdsunapDaegi.Cells[1, grdsunapDaegi.Row]   +'�� ������� ������', 0);
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
               '',//Team // grdDaegi.OriginalCells[54, grdDaegi.row] , //���� ����� ��� ������ �� ���δ�.
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
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    cbteam.Text //��
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
//               //trim(StringReplace(lblTeam.Caption, '����', '',[rfReplaceAll])),
//               '', //cbHyg.Text,
//               inttostr((Sender as Tmenuitem).Tag), //��ⱸ��
//               formatdatetime('YYYY-MM-DD', now),
//               now,
//               ma_first, //������
//               copy(ma_jumin,1,7),
//               ma_h_zip,
//               '1', //����
//               ma_PaName,
//               ma_c_phone,
//               grdPromise.Cells[4, grdPromise.Row], //���೻��
//               Promise_LoadMemo(vartag), //�������
//               Inttostr(vartag), //���� idn
//               grdPromise.Cells[3, grdPromise.Row]) //���� �ð�




//                jubsuSave( grdPromise.Cells[5,  grdPromise.Row], //main_f.edtChart.Text,
//                              varPrTeam, //varDamteam,
//                              grdPromise.Cells[10, grdPromise.Row],// loadTeamName(varPrTeam),
//                              //trim(StringReplace(lblTeam.Caption, '����', '',[rfReplaceAll])),
//                              '', //cbHyg.Text,
//                              inttostr((Sender as Tmenuitem).Tag), //��ⱸ��
//                              formatdatetime('YYYY-MM-DD', now),
//                              now,
//                              ma_first, //������
//                              copy(ma_jumin,1,7),
//                              ma_h_zip,
//                              ma_PaName,
//                              ma_c_phone,
//                              grdPromise.Cells[4, grdPromise.Row], //���೻��
//                              Promise_LoadMemo( vartag), //�������
//                              Inttostr(vartag) , //���� idn
//                              grdPromise.Cells[3, grdPromise.Row],   //���� �ð�
//                              0,//grdDaegi.ints[52, grdDaegi.Row],   //Jongbyul
//                              0,//grdDaegi.ints[53, grdDaegi.Row], //����
//                              '',//substr(  ma_sanJung, 1, '|'),// edtSanjung.text, //Sanjung
//                              '',//substr(  ma_sanJung, 2, '|'),// edtTeakryeRegNo.text, //Ư�ʵ�Ϲ�ȣ
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
//                    case EasyMode of //0:����
//                         4:
//                              begin
//                                   //ToDo : maru����
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

        {  //���ݰ� ����˻��ؼ� ���� ó��
           varCrmResult := main_f.LoadRecallNPromise(main_f.edtChart.text);

             case varCrmResult of
                   1: //��������.
                          begin
                                 if
                                        Application.MessageBox(pchar('���� ���� ���೻���� �ֽ��ϴ�.' + #10#13 +
                                        'Ȯ���Ͻð� ó���Ͻðڽ��ϱ�?'),
                                        '����ó�� Ȯ��', MB_YESNO) = 6 then
                                 begin
                                        main_f.showGogekAlret;
                                 end;

                          end;
                   2: //��������.
                          begin
                                 if
                                        Application.MessageBox(pchar('���� ���� ���ݳ����� �ֽ��ϴ�.' + #10#13 +
                                        'Ȯ���Ͻð� ó���Ͻðڽ��ϱ�?'),
                                        '����ó�� Ȯ��', MB_YESNO) = 6 then
                                 begin
                                        main_f.showGogekAlret;

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
                                        main_f.showGogekAlret;

                                 end;
                          end;

            end;
            }
     end;

 //    checkPromiseRecall(grdPromise.Cells[5,  grdPromise.Row]);

       checkPromiseRecall(grdDaegi.Cells[3,  grdDaegi.Row]);

          //��ⱸ��
     // '10', '����'
     // '0', '������'
     // '1', '������'
     // '2', '�����Ϸ�'
     // '3', '�������' ����Ϸ�
     // '9', '�������'  ������ ����

     Promise_UpdatePos(vartag, inttostr((Sender as Tmenuitem).Tag));

     promiseSelect(
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); //��
                 //   cbteam.Text); //��



end;

procedure TDaegiFrame_fr.N8Click(Sender: TObject);
var
  Voice: TSpVoice;
begin
  Voice := TSpVoice.Create(nil);
  Voice.Speak(grdDaegi.Cells[4, grdDaegi.Row]   +'�� ����Ƿ� ��������', 0);
  Voice.Free;
end;


procedure TDaegiFrame_fr.N9Click(Sender: TObject);  //������⿡�� ������
begin
  try
               timer2.Enabled := false;

    //���� ���� Ȯ�� (jinryo_s, jinryo_p, jinryo_o)

    if Application.MessageBox(pchar(grdSunapDaegi.Cells[1, grdSunapDaegi.Row] + '[' +
          grdSunapDaegi.Cells[2, grdSunapDaegi.Row] + ']'
          + '���� ���������¸� ���� �Ͻðڽ��ϱ�?' +#10
          + '�Կ��� ��� ��� ��ҵ˴ϴ�.'    ), 'Ȯ��', MB_OKCANCEL) = 1 then
     begin
          //YeyakNaewon('', grdDaegi.OriginalCells[2, grdDaegi.Row].AsString); //, grdDaegi.OriginalCells[1, grdDaegi.Row].AsString); //Yeyak Update
          //NeWonCancelJinRyoP(grdDaegi.OriginalCells[2, grdDaegi.Row].AsString); //Jinryo_p Update


          //Jinryo_p�� ��������....
          JinryoDelete(
               grdSunapDaegi.Cells[19, grdSunapDaegi.Row], //jinryo_pid
               grdSunapDaegi.Cells[2, grdSunapDaegi.Row],   //chart
               ForMatDateTime('YYYY-MM-DD', dtDate.date),   //jin_day
               grdSunapDaegi.Cells[25, grdSunapDaegi.Row],  //�����
               grdSunapDaegi.Cells[35, grdSunapDaegi.Row],  //doc_code
               grdSunapDaegi.Cells[34, grdSunapDaegi.Row]   //ToDO :0:�ܷ� 1:�����Կ� 2: ���Կ�
               ); //Newon Delete

          //ToDo : �Կ�ȯ�ڿ����� �Կ� ������ ã�Ƽ� ����� 0���� ������.
           if  grdSunapDaegi.Cells[34, grdSunapDaegi.Row] <> '0' then   //����������
           begin

               if Application.MessageBox(pchar(grdSunapDaegi.Cells[1, grdSunapDaegi.Row] + '[' +
                grdSunapDaegi.Cells[2, grdSunapDaegi.Row] + ']'
                + '�������Ͻʴϱ�?.'    ), 'Ȯ��', MB_OKCANCEL) = 1 then
                begin


                    ChangeStatus_JubsuID_Cancel_OutPat(grdSunapDaegi.Cells[20, grdSunapDaegi.Row]  );;
                end;
           end;

         if configvalue.varDaegiSocketUse  ='1' then    //1:�ټ����̿�, 0:��������
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
               '10',  //jubsu_time�� �ٲ���. jin_time�� �����ð��̴�. RIS���� ���ϸ� �ȵ�
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
               := '�������' +  '('+ inttostr(nCnt) +')' ;//inttostr((grdSunapDaegi.RowCount-1)) +')' ;
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
                 := '�����Ϸ�' +  '('+ inttostr(nCnt) +')' ;// '('+ inttostr((grdSunapFinish.RowCount-1)) +')' ;
          end;
   end;

            //ToDo : �ӵ� ���� �ʿ�... �ӵ��� ������  daegiselect���� �Ű� ����.
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

     if varGridKind = 0 then //����ǥ...
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
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    cbteam.Text //��
                    );
                }
                daegiselect(tsmain.TabIndex);



             if varPridn <> '' then
                    Promise_UpdatePos(strtoint(varPridn), vartag);


             if configvalue.varEasydent  = '1' then
               case  EasyMode of //0:����
                    4:
                         //ToDo : maru����
//                   if configvalue.varEasydentDaegi = '1' then
//                  main_f.MaruNewonSave(varGridChart,
//                              formatDatetime('YYYY-MM-DD',
//                              main_f.dtDate.Date),
//                              now, dKind[strtoint(varTag)]);
               end;

          end;

     end
     else
     if varGridKind = 1 then //����ǥ...
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
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                     cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0]); //��
                 //   cbteam.Text //��
                 //   );


          end;

     end
     else
          if varGridKind = 2 then //����+����ǥ...
          begin
               varPridn     := trim(aGrid.OriginalCells[20, grdDaegi.Row]);
               varPrTeam    := aGrid.OriginalCells[8, grdDaegi.Row];
               varGridChart := aGrid.OriginalCells[3, grdDaegi.Row];

               varGridTeam  := aGrid.OriginalCells[8, grdDaegi.Row];
               varGridDoc   := aGrid.OriginalCells[26, grdDaegi.Row];


                //�����̸� �������� ��Ų��.

               if  aGrid.OriginalCells[1, grdDaegi.Row]  ='����' then
               begin


                    if LoadGogekData_chart( varGridChart  , progressbar, varViewAll) = true then
                    begin

                         if
                            jubsuSave( varGridChart, //main_f.edtChart.Text,
                              varPrTeam, //varDamteam,
                              loadTeamName(varPrTeam),
                              //trim(StringReplace(lblTeam.Caption, '����', '',[rfReplaceAll])),
                              '', //cbHyg.Text,
                              varTag, //��ⱸ��
                              formatdatetime('YYYY-MM-DD', now),
                              now,
                              ma_first, //������
                              copy(ma_jumin,1,7),
                              ma_h_zip,
                              ma_PaName,
                              ma_c_phone,
                              aGrid.OriginalCells[14, aGrid.Row], //���೻��
                              Promise_LoadMemo( strtoint(varPridn)), //�������
                              varPridn , //���� idn
                              aGrid.OriginalCells[23, aGrid.Row],   //���� �ð�
                              strtoint( aGrid.originalCells[52, aGrid.Row]),                   //Jongbyul
                               strtoint(aGrid.originalCells[53, aGrid.Row]), //����
                              substr(  ma_sanJung, 1, '|'),// edtSanjung.text, //Sanjung
                              substr(  ma_sanJung, 2, '|'),// edtTeakryeRegNo.text, //Ư�ʵ�Ϲ�ȣ
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
                              aGrid.OriginalCells[64, aGrid.Row], //isJiwon �����ݿ��� 1: ������
                              aGrid.OriginalCells[65, aGrid.Row]//����  100 ==> 0 �Ǵ� 1  1: ����100
                              )

                         > 0 then
                         begin

                              if configvalue.varEasydent  = '1' then
                                   case EasyMode of //0:����
                                        4:
                                             begin
                                                  //ToDo : maru����
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

     if configvalue.varDaegiSocketUse  = '1' then    //1:�ټ����̿�, 0:��������
     begin
      //   daegiselect; //��������ٸ� �����̶�...
//
//          if dm_f.IdTCPClient2.Connected = false then
//                dm_f.ConnectImageDBServer;
//          dm_f.IdTCPClient2.iohandler.WriteLn('CDS_'+varTag );

      end
     else
     begin

        daegiselect(tsmain.TabIndex);

     end;

     //�����Ϸ�� ���������͸� ���������.
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
                    paramByname('sunapid').AsString := '7';  //�����Ϸῡ�� �Էµ�
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
               0: //����
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
                              paramByName('isEmergency').AsString := '1' //����
                         else
                              paramByName('isEmergency').AsString := '0';
                         execsql;
                    end;
               1:  //üũ
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
                              paramByName('isEmergency').AsString := '2' //üũ
                         else
                              paramByName('isEmergency').AsString := '0';
                         execsql;
                    end;

               2: //���ÿ��� ǥ��
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
                              paramByName('isChart').AsString := '1' //������
                         else
                              paramByName('isChart').AsString := '0';
                         execsql;
                    end;

               3: //��Ʈ���� ���� ǥ��
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
                              paramByName('isJubsu').AsString := '1' //��Ʈ������
                         else
                              paramByName('isJubsu').AsString := '0';
                         execsql;
                    end;

               4: //����
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
                              paramByName('isOut').AsString := '1' //������
                         else
                              paramByName('isOut').AsString := '0';
                         execsql;
                    end;

               5: //����
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
                              paramByName('isCompany').AsString := '1' //��������
                         else
                              paramByName('isCompany').AsString := '0';
                         execsql;
                    end;

          end;
          //ShowMessage('����Ǿ����ϴ�.');

     except
          on E: Exception do
          begin
               ShowMessage('���忡 �����Ͽ����ϴ�.' + #13#10 +
                    E.Message);
          end;
     end;


     {main_f.jubsuselect(grdDaegi,
          formatdatetime('YYYY-MM-DD', dtDate.date), //����
          inttostr(cbdaegiGubun.itemindex - 1), //����
          cbteam.Text); //��
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
                    formatdatetime('YYYY-MM-DD', dtDate.date), //����
                    inttostr(cbDaegigubun.itemindex - 1), //����
                    daegiTeamIndex //��
                    );
end;

procedure TDaegiFrame_fr.checkPromiseRecall(varChart:string);
var
    varCrmResult : integer;
begin

            //todo: �����Ҷ��ϰ�����Ϸ� �Ҷ� ó������...
            //toDo: �ڵ������Ҷ��� �˶��� ������...
             if configvalue.varRecallAlret  ='0' then
             exit;

            //���ݰ� ����˻��ؼ� ���� ó��
            varCrmResult := LoadRecallNPromise(varChart);

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



procedure TDaegiFrame_fr.LoadDefaultValue;
var
     varcode: string;
begin

     with dm_f.SqlWork do
     begin

          cbTeam.items.Clear;
          cbTeam.items.Add('��ü');
          cbTeamName.items.Clear;
          cbTeamName.items.Add('��ü');
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
                  Strings.Add('��ü');

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
                     cbTeam.items.Add(FieldByName('team_name').AsString); //����ڸ���Ʈ ���ڵ�
                     cbTeamName.items.Add(FieldByName('saName').AsString);  //����ڸ���Ʈ��
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

                    end;
                   with cbTreatRoom.ComboItems.Add do
                   begin
                      Strings.Add('A');     //Code
                      Strings.Add('A');  //code?
                      Strings.Add('��ü');
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
             //  cbTreatRoom.items.add('����ũ');
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


