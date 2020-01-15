unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, AdvObj, BaseGrid, AdvGrid, AdvPageControl,
  ComCtrls, StdCtrls, ExtCtrls, OleServer, SMSCALLLib_TLB, AdvPanel,
  AdvAlertWindow, inifiles, AdvUtil;

type
  Tmain_f = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    AdvTabSheet3: TAdvTabSheet;
    AdvTabSheet4: TAdvTabSheet;
    AdvTabSheet5: TAdvTabSheet;
    grdBirth: TAdvStringGrid;
    GrdPromise: TAdvStringGrid;
    grdNew: TAdvStringGrid;
    grdMain: TAdvStringGrid;
    Timer1: TTimer;
    timerBirth: TTimer;
    timerPromise: TTimer;
    timerMinewon: TTimer;
    timerManage: TTimer;
    timerNew: TTimer;
    AdvPanel1: TAdvPanel;
    btnBirth: TButton;
    btnPromise: TButton;
    btnMinewon: TButton;
    btnManage: TButton;
    btnNewPatient: TButton;
    DtDate: TDateTimePicker;
    SMSCALLMSG1: TSMSCALLMSG;
    CheckBox1: TCheckBox;
    lblCnt: TLabel;
    grdMinewon: TAdvStringGrid;
    lblTime: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Close1: TMenuItem;
    Open1: TMenuItem;
    N2: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox2: TCheckBox;
    ListBox1: TListBox;
    cbExclusive: TCheckBox;
    tmrSql: TTimer;
    btnPromiseTest: TButton;
    mnuVersion: TMenuItem;
    AdvAlertWindow1: TAdvAlertWindow;
    timerRecall: TTimer;
    AdvTabSheet6: TAdvTabSheet;
    grdRecall: TAdvStringGrid;
    ListBox2: TListBox;
    LOGIN1: TMenuItem;
    TrayIcon1: TTrayIcon;
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBirthClick(Sender: TObject);
    procedure btnPromiseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnNewPatientClick(Sender: TObject);
    procedure btnMinewonClick(Sender: TObject);
    procedure btnManageClick(Sender: TObject);
    procedure AdvPageControl1Change(Sender: TObject);
    procedure timerBirthTimer(Sender: TObject);
    procedure timerPromiseTimer(Sender: TObject);
    procedure timerNewTimer(Sender: TObject);
    procedure timerManageTimer(Sender: TObject);
    procedure timerMinewonTimer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox2Click(Sender: TObject);
    procedure tmrSqlTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GrdPromiseGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure timerRecallTimer(Sender: TObject);
    procedure LOGIN1Click(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
  private

     cc: boolean;

     isOnConnecting : boolean;
    connectSql : boolean;
    cntCon : integer;

    birthSendTime:string;
    PromiseSendTime:string;
    RecallSendTime:string;
    SmsManSendtime :string;
    NewSendTime :string;
    MinewonSendTime :string;


    cntSMSSend : integer;
    ingBirthSend : boolean;
    ingPromiseSend : boolean;
    ingRecallSend : boolean;
    ingNewSend : boolean;
    ingMinewonSend : boolean;
    ingSmsManSend : boolean;


    varPromisesendToday : boolean;  //오늘 예약리스트를 불러올지 말지...
    varRecallsendToday : boolean;  //오늘 리콜리스트를 불러올지 말지...


    procedure PromiseSelect_onTime(yeyakDay:integer; isTodaySend : Boolean = false);    //isTodaySend=true면 두번 쿼리를 날린다.
    procedure BirthSelect;
    procedure FirstVisit;
    procedure PromiseSelect_timeOver;
    procedure ManageSelect;
    function SendMessage_One(varGogekName, varGogekId, varRecvNoTong,
      varRecvNoGuk, varRecvNoBun, varDay, varTime,
      varCont: string;  varPrDay:string=''; varDD:string=''; varHH:string=''; varMM:string=''; varRR:string = '' ): boolean;
    procedure LogWrite(varID, varName, varNumber, varContent: string);

    procedure SendSMSBirth;
    procedure SendSMSPromise;
    procedure SendSMSNew;
    procedure SendSMSManage;
    procedure SendSMSMinewon;
    procedure SendSMSRecall;
    function UpdateTotalCnt(varDbId:string; varTotCnt:Integer):boolean;
    procedure WMSysCommand(var AMsg: TWMSysCommand); message
               WM_SYSCOMMAND;
    procedure PromiseDuplicateCheck;
    procedure updatePromiseSMS(varPromiseID: string; sendStat:string);
    procedure preSet;
    procedure connectDB;
    function isHoliday(varDate: TdateTime): boolean;
    procedure TryDbConnect;
    procedure AddMessage( varMessage: string);
    procedure RecallDuplicateCheck;
    procedure RecallSelect_onTime(isTodaySend:Boolean = false);
    procedure updateRecallSMS(varRecallID, sendStat: string);
    procedure PromiseSelect_onTime_old(isTodaySend:Boolean = false);
    procedure selectPromiseData(varDate1, varDate2: string;
      varSendYeyakDay, varSendYeyakTime : string;
       isTodaySend:Boolean = false; isAppend :boolean= false);
    procedure SendSMSPromise_duo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_f: Tmain_f;

implementation

uses udm, uConfig,uFunctions, setting;

{$R *.dfm}
procedure Tmain_f.WMSysCommand(var AMsg: TWMSysCommand);
begin
     inherited;
     if AMsg.CmdType = SC_MINIMIZE then // 최소화 버튼이 눌려졌으면..
          ShowWindow(Application.Handle, SW_HIDE); // Get it done NOW
     if AMsg.CmdType = SC_CLOSE then // Close 버튼이 눌려졌으면..
          ShowWindow(Application.Handle, SW_HIDE); // Get it done NOW
     // 윈도우가 닫힐때(SC_CLOSE), 최대화(SC_MAXIMIZE), 최소화(SC_MINIMIZE),
     // 키보드나 마우스로 메인메뉴 호출(SC_KEYMENU, SC_MOUSEMENU),
     // 최소화에서 원래의 상태로 복원 될 때(SC_RESTORE)...
end;
function Tmain_f.isHoliday(varDate:TdateTime) : boolean;
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


procedure Tmain_f.N1Click(Sender: TObject);
begin
     configvalue.LoadGlobalData_db;

     setting_f := Tsetting_f.Create(application);
     setting_f.Showmodal;
end;

procedure Tmain_f.FormCreate(Sender: TObject);
var
    ainifile : TiniFile;
    intervaltime : integer;
    path : string;
begin

    path:= extractFilepath(paramStr(0)) +'db.ini';
    ainiFile:= TiniFile.create(path);

    intervaltime:= aIniFile.ReadInteger('AutoSms','StartInterval',6000);
    aIniFile.Free;




    caption:='Auto SMS Server 데이터베이스에 접속중입니다.';
    isOnConnecting := false; // DB에 연결중인가?

    mnuVersion.Caption := 'Ver.'+ GetFileVersion2;
    cntCon := 1;

    tmrSql.Enabled := true;



    advPageControl1.Align:= alClient;

    grdBirth.align:= alClient;
    GrdPromise.align:= alClient;
    GrdRecall.align:= alClient;
    grdMinewon.align:= alClient;
    grdNew.align:= alClient;
    grdMain.align:= alClient;

    dtDate.date:=now;
    cntSMSSend := 0;
    lblCnt.caption:= '0';

    ingBirthSend := false;
    ingPromiseSend := false;
    ingNewSend := false;
    ingMinewonSend := false;
    ingSmsManSend := false;

    timerBirth.Enabled := true;
    timerPromise.Enabled := true;
    timerRecall.Enabled := true;
    timerMinewon.Enabled := true;
    timerManage.Enabled := true;
    timerNew.Enabled := true;


    //DB에 접속하기전 여유 시간을 주자. 간혹 Sql서버가 바로 시작되지 않는 경우가 있다.
    delay(intervaltime); 

    TryDbConnect;
end;

procedure Tmain_f.btnBirthClick(Sender: TObject);
begin
     BirthSelect;
end;

procedure Tmain_f.BirthSelect;
const
     SQL_SELECT_DATA_birth = 'SELECT * FROM view_gogek ' + #13#10 +
          'where substring(birth,6,5) = :sDate  ' + #13#10
          +
          ' and (sms <> ''0'' or sms is null)';

var
    recCount, i : integer;
begin
     with Dm_f.SqlSel, GrdBirth do
     begin
          //Clear; // RealGrid.Clear;
          SQL.Text := SQL_SELECT_DATA_Birth;
          ParamByName('sdate').AsString := FormatDateTime('MM-DD', dtDate.Date);
          Open;
          recCount := recordCount;
          RowCount := recCount + 1;
          FixedRows := 1;
          if not Dm_f.SqlSel.IsEmpty then
               while not EOF do
               begin
                    //    AddRow; // 그리드에 빈 로우를 추가
                    for i := 1 to Reccount do
                    begin
                         AddCheckBox(1, i, false, false);

                         Cells[2, i] :=  FieldByName('BIRTH').AsString;
                         Cells[3, i] := FieldByName('CHART').AsString;
                         Cells[4, i] :=  FieldByName('NAME').AsString;
                         Cells[5, i] := FieldByName('C_PHONE').AsString;
                         Cells[6, i] := BIRTHTONAI(deldash(FieldByName('birth').AsString));

                         Cells[7, i] :=    jumintogender(FieldByName('jumin').AsString);
                         if FieldByName('sms').AsString = '0' then
                              AddCheckBox(8, i, true, false)
                         else
                              AddCheckBox(8, i, false, false);

                         Next;
                    end;
               end;
          autoNumberCol(0);
     end;

end;

procedure Tmain_f.btnPromiseClick(Sender: TObject);
var
    yeyakDay : integer;
begin
     if configvalue.VarsmsPromiseDay <> '' then
          yeyakDay:= strtoint(configvalue.VarsmsPromiseDay )
     else
          yeyakDay:= 1; //며칠 후...

   PromiseSelect_onTime(yeyakDay, true);


end;


//
procedure Tmain_f.PromiseSelect_onTime_old(isTodaySend:Boolean = false);
//하루전 전송일 경우에는 잘 되지만 2일전. 3일전에는 전송 못하는 날도 있음.
const
     SQL_SELECT_DATA_promise =
          ' select    *  FROM ma_promise                           ' + #13#10 +
          ' where  cancel  <> ''C''                                  ' + #13#10 +
          ' and  cancel  <> ''Y''                                  ' + #13#10 +
          ' and  cancel  <> ''R''                                  ' + #13#10 +
          ' and  cancel  <> ''U''                                  ' + #10#13+
          ' and  POS <> ''8''                                      ' + #10#13+
         // ' and  ((SMS <> ''1'' and SMS <> ''2'')  or sms is null) ' + #10#13+     //전송안된것만 가져오자...  1:전송한거 2: 중복제외 null: 안보낸거
          ' and  (noSMS  is Null or noSMS <> ''1'')                ' ;
          //ToDo : 전송된것도 다 불러와서 전송된것에 채크해주자...


    //지정예약일 리스트만 가져온다.
    SQL_SELECT_DATA_promise_where1 =
          ' and  (pday = :pday)                                    ';

    //지정예약일과 오늘치 리스트를 가져온다.
    SQL_SELECT_DATA_promise_where2 =
          ' and  ( (pday = :pday) or (pday = :pday1))              ';


var
    yeyakDay : integer;
    varChart, varname :string;
    pDay,pTime : string;
    varRemark, varPhone :string;
    promiseID:string;

    varDate :TdateTime;

    varSendYeyakDay, varSendYeyakTime : string;

    varDate1, varDate2 : string;
begin

     //1. 지정된 며칠 후 일자를 가져온다.
     //2. 휴일이면 그 다음날을 가져온다.
     //3. 휴일인경우 오늘 예약발송으로 진행한다.

     if configvalue.VarsmsPromiseDay <> '' then
          yeyakDay:= strtoint(configvalue.VarsmsPromiseDay )
     else
          yeyakDay:= 1; //며칠 후...

      varDate:=   dtDate.Date + yeyakDay;

      exceptLogging('     예약일자: ' + formatdatetime('YYYYMMDD', varDate) );

      varSendYeyakday := '00000000';
      varSendYeyakTime :='000000';

       while isHoliday(varDate) = true do
       begin
             varDate := varDate + 1;
             varSendYeyakday :=  formatdatetime('YYYYMMDD', varDate - yeyakDay);
             varSendYeyakTime :=  configvalue.VarsmsPromiseTime +   configvalue.VarsmsPromiseMin+'00';

             exceptLogging('다음날 휴일이어서 예약 전송 예정일자: ' + formatdatetime('YYYYMMDD', varDate - yeyakDay) );

       end;

        varDate1 := FormatDateTime('YYYY-MM-DD', dtDate.Date  );//오늘
        varDate2 := FormatDateTime('YYYY-MM-DD', varDate   );//발송 지정일

    //3. 전송할 리스트를 가져온다.
    //4. 부모전화번호도 가져온다.
    //5. sms거부자는 제외한다.
    //6. 오늘치도 발송 선택한 경우 오늘 예약자를 가져온다.
    //7. 지정일 예약자를 가져온다.
     exceptLogging('     Data Select시작');
     try
               with Dm_f.SqlWork  do
               begin
                    GrdPromise.Rowcount := 1;
                    SQL.Text := SQL_SELECT_DATA_promise;

                    if isTodaySend = true then
                    begin
                         //오늘치 예약자도 불러온다.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_promise_where2;
                         ParamByName('pday1').AsString :=  varDate1 ;  //오늘이다....

                    end
                    else
                    begin
                         //지정일 예약자만 불러온다.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_promise_where1;
                    end;

                    ParamByName('pday').AsString :=  varDate2;

                    sql.Add('order by pday desc, ptime ASC  ');
                    Open;

                    if not  Dm_f.SqlWork.IsEmpty then
                    begin

                         exceptLogging('    가져오기 시작=>  Data Select 건수 ' + inttostr(Dm_f.SqlWork.recordCount));

                         while not EOF do
                         begin

                              promiseID:= FieldByName('idn').AsString;
                              varChart := FieldByName('Chart').AsString;
                              varname := FieldByName('name').AsString;
                              pDay :=   FieldByName('pday').AsString;
                              pTime :=  FieldByName('ptime').AsString;
                              varRemark :=  FieldByName('remark').AsString;
                              varPhone := Trim(FieldByName('tel').AsString);


                              GrdPromise.AddRow; // 그리드에 빈 로우를 추가


                          { //보호자전송은 전송했어도 보냈는지 확인할 방법이 없음.
                              if ( FieldByName('sms').AsString ='1')
                                or ( FieldByName('sms').AsString ='2') then  //전송했으면...
                              begin
                                   GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, true, false)  //전송결과
                              end
                              else
                              begin
                                   GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false)  //전송결과
                              end;

                          }

                              GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false);  //전송결과
                              GrdPromise.AddCheckBox(9, GrdPromise.RowCount - 1, false, false); //전송예정

                              GrdPromise.Cells[2, GrdPromise.RowCount - 1] :=  pDay;
                              GrdPromise.Cells[3, GrdPromise.RowCount - 1] :=  pTime;
                              GrdPromise.Cells[4, GrdPromise.RowCount - 1] :=  varChart;
                              GrdPromise.Cells[5, GrdPromise.RowCount - 1] :=  varname;
                              GrdPromise.Cells[6, GrdPromise.RowCount - 1] :=  varPhone ;
                              GrdPromise.Cells[7, GrdPromise.RowCount - 1] :=  varRemark;
                              GrdPromise.Cells[8, GrdPromise.RowCount - 1] :=  '본인';
                              GrdPromise.Cells[10, GrdPromise.RowCount - 1] := PromiseID;


                              //order by pday desc, ptime ASC 로
                              //먼저 예약전송일것을 select후에 오늘것을 select 해야함. 안그러면  varSendYeyakday와 varSendYeyakTime이 아래로 초기화됨
                              if  pday = formatdatetime('YYYY-MM-DD', now)   then
                              begin
                                    varSendYeyakday := '00000000';
                                    varSendYeyakTime :='000000';

                              end;

                              GrdPromise.Cells[11, GrdPromise.RowCount - 1] := varSendYeyakday;  //전송예약일자
                              GrdPromise.Cells[12, GrdPromise.RowCount - 1] := varSendYeyakTime;  //전송예약시간




                                   //여기서 보호자 전화번호를 읽어와서 행을 추가해주자...


                                   DM_f.sqlTemp2.Close;
                                   DM_f.sqlTemp2.SQL.Clear;

                                   DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                                   DM_f.sqlTemp2.Sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                                   DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //0인것이 SMS전송하기로 한거임 불러올거임....
                                   DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                                   DM_f.sqlTemp2.Open;
                                   DM_f.sqlTemp2.first;

                                   if not DM_f.sqlTemp2.IsEmpty then
                                   begin
                                        while not DM_f.sqlTemp2.eof do
                                        begin
                                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);

                                                GrdPromise.AddRow; // 그리드에 빈 로우를 추가

                                                GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false);
                                                GrdPromise.Cells[2, GrdPromise.RowCount - 1] :=    pDay;
                                                GrdPromise.Cells[3, GrdPromise.RowCount - 1] :=    pTime;
                                                GrdPromise.Cells[4, GrdPromise.RowCount - 1] :=    varChart;
                                                GrdPromise.Cells[5, GrdPromise.RowCount - 1] :=    varName;
                                                GrdPromise.Cells[6, GrdPromise.RowCount - 1] :=    varPhone;
                                                GrdPromise.Cells[7, GrdPromise.RowCount - 1] :=    varRemark;
                                                GrdPromise.Cells[8, GrdPromise.RowCount - 1] :=    '부모';

                                                GrdPromise.AddCheckBox(9, GrdPromise.RowCount - 1, false, false); //전송예정

                                                GrdPromise.Cells[11, GrdPromise.RowCount - 1] := varSendYeyakday;  //전송예약일자
                                                GrdPromise.Cells[12, GrdPromise.RowCount - 1] := varSendYeyakTime;  //전송예약시간



                                                DM_f.sqlTemp2.next;

                                        end;


                                   end;


                              Dm_f.SqlWork.Next;
                         end;
                    end
                    else
                    begin
                         exceptLogging('     Data 없음');
                    end;
                    GrdPromise.autoNumberCol(0);
               end;



               //일자가 같은 중복번호는 제거한다.
               PromiseDuplicateCheck;

     except

              on E: Exception do
              ExceptLogging('Db Select Error.:' + E.Message);


     end;
end;





procedure Tmain_f.PromiseSelect_onTime(yeyakDay:integer; isTodaySend:Boolean = false);
//2일전, 3일전 등 전송일경우 적용됨. 2016.07.05

var
//    yeyakDay : integer;
    varChart, varname :string;
    pDay,pTime : string;
    varRemark, varPhone :string;
    promiseID:string;

    varDate :TdateTime;
    varTomorrow :TdateTime;

    varSendYeyakDay, varSendYeyakTime : string;

    varDate1, varDate2 : string;
begin

     //1. 지정된 며칠 후 일자를 가져온다.
     //2. 내일이 휴일이면 내일 발송할 리스트를 가져와 서 합쳐준다. => 예약전송하자.
     //3. 내일이 휴일이 아닐때까지 반복한다.


      varDate:=   dtDate.Date + yeyakDay;

      exceptLogging('     예약일자: ' + formatdatetime('YYYYMMDD', varDate) );

      varSendYeyakday := '00000000';
      varSendYeyakTime :='000000';


      varDate1 := FormatDateTime('YYYY-MM-DD', dtDate.Date  );//오늘
      varDate2 := FormatDateTime('YYYY-MM-DD', varDate   );//발송 지정일


      selectPromiseData(varDate1, varDate2,varSendYeyakday, varSendYeyakTime ,isTodaySend, false);


      //내일이 휴일이면, 내일 보낼리스트를 가져와서 합해준다.
       varTomorrow:=   dtDate.Date + 1;
       while isHoliday(varTomorrow) = true do
       begin
             varSendYeyakday :=  formatdatetime('YYYYMMDD', varTomorrow);
             varSendYeyakTime :=  configvalue.VarsmsPromiseTime +   configvalue.VarsmsPromiseMin+'00';


             varDate1 := FormatDateTime('YYYY-MM-DD', dtDate.Date  );//오늘
             varDate2 := FormatDateTime('YYYY-MM-DD', varTomorrow + yeyakDay   );//예약일자.


             if isHoliday( varTomorrow + yeyakDay) = false then
                 selectPromiseData(varDate1, varDate2,varSendYeyakday, varSendYeyakTime, false, true);
                   //오늘치는 이미 위에서 가져왔으므로 false, 기존것에 합해줘야 하므로 True,


             varTomorrow := varTomorrow + 1;

             exceptLogging('다음날 휴일이어서 예약 전송 예정일자: ' + formatdatetime('YYYYMMDD', varDate - yeyakDay) );

       end;

end;


procedure Tmain_f.selectPromiseData(varDate1, varDate2 : string;
  varSendYeyakDay, varSendYeyakTime : string;  isTodaySend:Boolean = false; isAppend :boolean= false);
                                    //오늘,     예약일 ,         당일치 전송여부,              내일휴일이어서 내일전송할것 예약전송 추가여부
var
    yeyakDay : integer;
    varChart, varname :string;
    pDay,pTime : string;
    varRemark, varPhone :string;
    promiseID:string;

    varDate :TdateTime;



const
     SQL_SELECT_DATA_promise =
          ' select    *  FROM ma_promise                           ' + #13#10 +
          ' where  cancel  <> ''C''                                  ' + #13#10 +
          ' and  cancel  <> ''Y''                                  ' + #13#10 +
          ' and  cancel  <> ''R''                                  ' + #13#10 +
          ' and  cancel  <> ''U''                                  ' + #10#13+
          ' and  POS <> ''8''                                      ' + #10#13+
         // ' and  ((SMS <> ''1'' and SMS <> ''2'')  or sms is null) ' + #10#13+     //전송안된것만 가져오자...  1:전송한거 2: 중복제외 null: 안보낸거
          ' and  (noSMS  is Null or noSMS <> ''1'')                ' ;
          //ToDo : 전송된것도 다 불러와서 전송된것에 채크해주자...


    //지정예약일 리스트만 가져온다.
    SQL_SELECT_DATA_promise_where1 =
          ' and  (pday = :pday)                                    ';

    //지정예약일과 오늘치 리스트를 가져온다.
    SQL_SELECT_DATA_promise_where2 =
          ' and  ( (pday = :pday) or (pday = :pday1))              ';

begin
    //1. 전송할 리스트를 가져온다.
    //2. 부모전화번호도 가져온다.
    //3. sms거부자는 제외한다.
    //4. 오늘치도 발송 선택한 경우 오늘 예약자를 가져온다.
    //5. 지정일 예약자를 가져온다.
     exceptLogging('     Data Select시작');
     try
               with Dm_f.SqlWork  do
               begin


                    if isAppend = false then
                        GrdPromise.Rowcount := 1;


                    SQL.Text := SQL_SELECT_DATA_promise;

                    if isTodaySend = true then
                    begin
                         //오늘치 예약자도 불러온다.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_promise_where2;
                         ParamByName('pday1').AsString :=  varDate1 ;  //오늘이다....

                    end
                    else
                    begin
                         //지정일 예약자만 불러온다.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_promise_where1;
                    end;

                    ParamByName('pday').AsString :=  varDate2;

                    sql.Add('order by pday desc, ptime ASC  ');
                    Open;

                    if not  Dm_f.SqlWork.IsEmpty then
                    begin

                         exceptLogging('    가져오기 시작=>  Data Select 건수 ' + inttostr(Dm_f.SqlWork.recordCount));

                         while not EOF do
                         begin

                              promiseID:= FieldByName('idn').AsString;
                              varChart := FieldByName('Chart').AsString;
                              varname := FieldByName('name').AsString;
                              pDay :=   FieldByName('pday').AsString;
                              pTime :=  FieldByName('ptime').AsString;
                              varRemark :=  FieldByName('remark').AsString;
                              varPhone := Trim(FieldByName('tel').AsString);


                              GrdPromise.AddRow; // 그리드에 빈 로우를 추가


                          { //보호자전송은 전송했어도 보냈는지 확인할 방법이 없음.
                              if ( FieldByName('sms').AsString ='1')
                                or ( FieldByName('sms').AsString ='2') then  //전송했으면...
                              begin
                                   GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, true, false)  //전송결과
                              end
                              else
                              begin
                                   GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false)  //전송결과
                              end;

                          }

                              GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false);  //전송결과
                              GrdPromise.AddCheckBox(9, GrdPromise.RowCount - 1, false, false); //전송예정

                              GrdPromise.Cells[2, GrdPromise.RowCount - 1] :=  pDay;
                              GrdPromise.Cells[3, GrdPromise.RowCount - 1] :=  pTime;
                              GrdPromise.Cells[4, GrdPromise.RowCount - 1] :=  varChart;
                              GrdPromise.Cells[5, GrdPromise.RowCount - 1] :=  varname;
                              GrdPromise.Cells[6, GrdPromise.RowCount - 1] :=  varPhone ;
                              GrdPromise.Cells[7, GrdPromise.RowCount - 1] :=  varRemark;
                              GrdPromise.Cells[8, GrdPromise.RowCount - 1] :=  '본인';
                              GrdPromise.Cells[10, GrdPromise.RowCount - 1] := PromiseID;


                              //order by pday desc, ptime ASC 로
                              //먼저 예약전송일것을 select후에 오늘것을 select 해야함. 안그러면  varSendYeyakday와 varSendYeyakTime이 아래로 초기화됨
                              if  pday = formatdatetime('YYYY-MM-DD', now)   then
                              begin
                                    varSendYeyakday := '00000000';
                                    varSendYeyakTime :='000000';

                              end;

                              GrdPromise.Cells[11, GrdPromise.RowCount - 1] := varSendYeyakday;  //전송예약일자
                              GrdPromise.Cells[12, GrdPromise.RowCount - 1] := varSendYeyakTime;  //전송예약시간




                                   //여기서 보호자 전화번호를 읽어와서 행을 추가해주자...
                                if varChart <> '' then
                                begin
                                   DM_f.sqlTemp2.Close;
                                   DM_f.sqlTemp2.SQL.Clear;

                                   DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                                   DM_f.sqlTemp2.Sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                                   DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //0인것이 SMS전송하기로 한거임 불러올거임....
                                   DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                                   DM_f.sqlTemp2.Open;
                                   DM_f.sqlTemp2.first;

                                   if not DM_f.sqlTemp2.IsEmpty then
                                   begin
                                        while not DM_f.sqlTemp2.eof do
                                        begin
                                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);

                                                GrdPromise.AddRow; // 그리드에 빈 로우를 추가

                                                GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false);
                                                GrdPromise.Cells[2, GrdPromise.RowCount - 1] :=    pDay;
                                                GrdPromise.Cells[3, GrdPromise.RowCount - 1] :=    pTime;
                                                GrdPromise.Cells[4, GrdPromise.RowCount - 1] :=    varChart;
                                                GrdPromise.Cells[5, GrdPromise.RowCount - 1] :=    varName;
                                                GrdPromise.Cells[6, GrdPromise.RowCount - 1] :=    varPhone;
                                                GrdPromise.Cells[7, GrdPromise.RowCount - 1] :=    varRemark;
                                                GrdPromise.Cells[8, GrdPromise.RowCount - 1] :=    '부모';

                                                GrdPromise.AddCheckBox(9, GrdPromise.RowCount - 1, false, false); //전송예정

                                                GrdPromise.Cells[11, GrdPromise.RowCount - 1] := varSendYeyakday;  //전송예약일자
                                                GrdPromise.Cells[12, GrdPromise.RowCount - 1] := varSendYeyakTime;  //전송예약시간



                                                DM_f.sqlTemp2.next;

                                        end;


                                   end;
                               end;

                              Dm_f.SqlWork.Next;
                         end;
                    end
                    else
                    begin
                         exceptLogging('     Data 없음');
                    end;
                    GrdPromise.autoNumberCol(0);
               end;



               //일자가 같은 중복번호는 제거한다.
               PromiseDuplicateCheck;

     except

              on E: Exception do
              ExceptLogging('Db Select Error.:' + E.Message);


     end;
end;
procedure Tmain_f.PromiseDuplicateCheck;   //전송예정리스트에서 같은 전화번호를 골라 전송예정체크박스를 풀어준다.
var
     i: integer;
     state:boolean;
begin
     listbox1.Items.clear;
     with GrdPromise do
     begin
          for i := 0 to RowCount - 1 do
          begin
             if cbExclusive.Checked = true then    //중복번호제거
             begin
                //여기서 listbox에 핸드폰 번호를 넣는다.
                if (length(Cells[6, i]) > 8) then  //핸드폰 번호가 있으면...
               begin
                         if listbox1.Items.IndexOf(Cells[2, i] + Cells[5, i]+ Cells[6, i]) < 0 then  //listBox1에 내용을 확인해서 없으면
                             AddCheckBox(9, i, true, false);                            //전송예정에 체크해준다.

                         listbox1.Items.Add(Cells[2, i] + Cells[5, i] + Cells[6, i]);  //오늘것도 같이 보내는 경우가 있기 때문에 , 보호자번호인경우 사람이 다를수 있다.
                                                                         //날짜가 같은게 아닌 핸드폰번호는 중복이 아닌걸로 골라내야 한다.
               end;
             end
             else
             begin
               if (length(Cells[6, i]) > 8) then //핸드폰 번호가 있으면...
               begin
                  // Cells[0, i].AsBoolean := true ;
                     if GetCheckBoxState(9, i, state) then // 전송예정
                         if state = true then  //무조건 체크한다.
                          begin
                                 AddCheckBox(9, i, true, false);
                          end;
               end;

             end;
          end;
     end;

end;




procedure Tmain_f.btnNewPatientClick(Sender: TObject);   //전일 신환 감사문자
begin
     FirstVisit;
end;

procedure Tmain_f.FirstVisit;   //전일 신환 감사문자
const
     SQL_SELECT_DATA_First = 'SELECT * FROM view_gogek ' + #13#10 +
          'where  first_day  = :sDate  ' + #13#10
          +
          ' and (sms <> ''0'' or sms is null)';

var
    recCount, i : integer;
begin
     with Dm_f.SqlTemp, GrdNew do
     begin
          SQL.Text := SQL_SELECT_DATA_First;
          ParamByName('sdate').AsString := FormatDateTime('YYYY-MM-DD', dtDate.Date - 1);
          Open;
          recCount := recordCount;
          RowCount := recCount + 1;
          FixedRows := 1;
          if not Dm_f.SqlTemp.IsEmpty then
               while not EOF do
               begin
                    //    AddRow; // 그리드에 빈 로우를 추가
                    for i := 1 to Reccount do
                    begin
                         AddCheckBox(1, i, false, false);

                         Cells[2, i] :=  FieldByName('First_day').AsString;
                         Cells[3, i] :=  FieldByName('CHART').AsString;
                         Cells[4, i] :=  FieldByName('NAME').AsString;
                         Cells[5, i] :=  FieldByName('C_PHONE').AsString;
                         Cells[6, i] :=  BIRTHTONAI(deldash(FieldByName('birth').AsString));

                         Cells[7, i] :=  jumintogender(FieldByName('jumin').AsString);

                         if FieldByName('sms').AsString = '0' then
                              AddCheckBox(8, i, true, false)
                         else
                              AddCheckBox(8, i, false, false);

                         Next;
                    end;
               end;
          autoNumberCol(0);
     end;

end;


procedure Tmain_f.PromiseSelect_timeOver; //10분이 지났는데 안오는 경우
const

    SQL_SELECT_DATA_Timeover =
          ' select  DATEDIFF(mi, convert(datetime,  pday+'' ''+ptime ,21) ,getdate()),       ' + #13#10 +
          '    convert(datetime, ptime, 121),                                                ' + #13#10 +
          '      convert(datetime, pday+'' ''+ptime, 21),  * from ma_promise                    ' + #13#10 +
          ' where  pday =  CONVERT(VARCHAR, GETDATE(), 112)                                   ' + #13#10 +
          '    and DATEDIFF(mi, convert(datetime,  pday+'' ''+ptime ,21) ,getdate()) > :iTime    ' + #13#10 +
          '    and  ptime =:ptime                                                                 ' + #13#10 +
          'and pos = ''''                                                                         ' + #13#10 +
          'and cancel  <> ''C''                                            ' + #13#10 +
          'and  cancel <> ''Y''                                             ' + #13#10 +
          'and  cancel <> ''R''                                             ' + #13#10 +
          ' and (noSMS  is Null or noSMS <> ''1'')                        '+#10#13+
          'and  cancel <> ''U'' '  ;


     SQL_SELECT_DATA_promise = 'select   *     FROM ma_promise      ' + #13#10 +
          'Where  pday =:pday  and  ptime = :ptime   and  ptime                         ' + #13#10 +
          'and pos = ''''                                            ' + #13#10 +
          'and cancel  <> ''C''                                            ' + #13#10 +
          'and  cancel <> ''Y''                                             ' + #13#10 +
          'and  cancel <> ''R''                                             ' + #13#10 +
          ' and (noSMS  is Null or noSMS <> ''1'')                        '+#10#13+
          'and  cancel <> ''U'' '  ;
var
   varTime, varMin:string;
   i : integer;
   Count : integer;
   interval : integer;
   minewonMin : integer;
begin
     {
       select DATEDIFF ( mi , getdate() , getdate()+1 ) ==> 1440 분 (1일)
       select DATEDIFF ( s , getdate() , getdate()+1 ) ==> 86400 초 (1일)
       select DATEDIFF ( hour , getdate() , getdate()+1 ) ==> 24 시간 (1일)
       select DATEDIFF ( day , getdate() , getdate()+1 ) ==> 1 일 (1일)
       select DATEDIFF ( month , getdate() , getdate()+31 ) ==> 1 개월 (31일)
       select DATEDIFF ( year , getdate() , getdate()+730 ) ==> 2 년 (730일)
     }

     //10분이 지났는데 안오는 경우


     //30분 단위이면 30분단위로 체크 (매시00분과 30분에 10분이 지난 경우 쿼리를 전송 )
     //15분단위이면 15분단위로 체크 (00분 15분 30분 45분보다 10분이 지난 후에 쿼리 전송 )


     //쿼리를 전송하는 시간대의 분-10분에 미내원인경우만 SMS발송

     //타이머 가동시간 - 60분 / 예약분(30분)
     if configvalue.VarsmsMinewonMin  <> '' then
          minewonMin := strtoint(configvalue.VarsmsMinewonMin)
     else
          minewonMin := 10;

  //    if  configvalue.VarSmsMinewonTimeInterval <> '' then
  //        interval := strtoint( configvalue.VarSmsMinewonTimeInterval)
  //   else
  //        interval := 30;

  //   Count := 60 div interval;


     //퀴리를 전송하는 시간에 30분인지 00분인지를 알아내야한다.
     //30분인경우 현재시간이 30분 미만이면 00분 30분 이상이면 30분


     varTime:= FormatDateTime('hh',  now ) ;
     varmin:=   FormatDateTime('nn',  now ) ;
     if  (varMin  >=  '00')
         and   (varMin  <=  '29')
         then     varMin:='00'
     else
     if  (varMin  >=  '30')
         and   (varMin <=  '59')
         then     varMin:='30';


   //  varMin:= inttostr( strtoInt(FormatDateTime('nn',  now )) - minewonMin);



     with Dm_f.SqlTemp2, Grdminewon do
     begin
          Rowcount := 1;
          SQL.Text :=  SQL_SELECT_DATA_Timeover ; //SQL_SELECT_DATA_promise;
          sql.Add('order by ptime ASC  ');
          ParamByName('pTime').AsString := varTime+':'+ varMin;
          ParamByName('iTime').AsInteger := minewonMin;
          Open;
          if not Dm_f.SqlTemp2.IsEmpty then
               while not EOF do
               begin
                    AddRow; // 그리드에 빈 로우를 추가

                    AddCheckBox(1, RowCount - 1, false, false);

                    Cells[2, RowCount - 1] :=  FieldByName('pday').AsString;
                    Cells[3, RowCount - 1] :=  FieldByName('ptime').AsString;
                    Cells[4, RowCount - 1] := FieldByName('Chart').AsString;
                    Cells[5, RowCount - 1] :=  FieldByName('name').AsString;
                    Cells[6, RowCount - 1] :=  FieldByName('tel').AsString;
                    Cells[7, RowCount - 1] :=  FieldByName('remark').AsString;
                    Cells[8, RowCount - 1] :=  '';
                    Cells[9, RowCount - 1] :=  '';
                    Cells[10, RowCount - 1] :=  FieldByName('idn').AsString;

                    Next;
               end;
          autoNumberCol(0);
     end;

     timerMinewon.enabled:=true;



end;


procedure  Tmain_f.ManageSelect;
const
   sqlSelect  =
   '  select * from ma_sms_manager                                                                    ' + #13#10 +
   '  where                                                                                           ' + #13#10 +
   '(    (((totcnt < cnt1 )   or (cnt1 =0) )  and                                                         ' + #13#10 +
   '    term1 =                                                                                       ' + #13#10 +
   '     case when sendday <> '''' then   DATEDIFF(day, convert(datetime,  sendday ,21) ,getdate())     ' + #13#10 +
   '     else  DATEDIFF(day, convert(datetime,  regday ,21) ,getdate())                               ' + #13#10 +
   '     end                                                                                          ' + #13#10 +
   '     )                                                                                            ' + #13#10 +
   '                                                                                                  ' + #13#10 +
   '  or                                                                                              ' + #13#10 +
   ' ((( totCnt >= Cnt1 ) and (totcnt < cnt1 + cnt2)                                                  ' + #13#10 +
   '    or ((cnt2 =0) and( term2 <> 0))  ) and                                                        ' + #13#10 +
   '  term2 =                                                                                         ' + #13#10 +
   '    case when sendday <> '''' then   DATEDIFF(day, convert(datetime,  sendday ,21) ,getdate())    ' + #13#10 +
   '    else  DATEDIFF(day, convert(datetime,  regday ,21) ,getdate())                                ' + #13#10 +
   '    end                                                                                           ' + #13#10 +
   '                                                                                                  ' + #13#10 +
   '  )                                                                                               ' + #13#10 +
   '  or                                                                                              ' + #13#10 +
   '  ((( totCnt >= Cnt1 + cnt2 ) and (totcnt < cnt1 + cnt2 + cnt3 )                                  ' + #13#10 +
   '     or ((cnt3 = 0 )  and( term3 <> 0)) )   and                                                   ' + #13#10 +
   '   term3 =                                                                                        ' + #13#10 +
   '  case when sendday <> '''' then   DATEDIFF(day, convert(datetime,  sendday ,21) ,getdate())      ' + #13#10 +
   '  else  DATEDIFF(day, convert(datetime,  regday ,21) ,getdate())                                  ' + #13#10 +
   '  end                                                                                             ' + #13#10 +
   '                                                                                                  ' + #13#10 +
   '   )                                                                                              ' + #13#10 +
   ' )   and    nosms  <>  ''1''                                                                      ';


   sqlSelect_PromiseCheck  =
   ' and chart not in (select chart from ma_promise where pday >= convert(datetime,  getdate()-1 ,21) )  ';
                                                                                   //오늘이 검색이 안되어서 오늘 -1
var
   i, recCount:integer;
begin
      with dm_f.sqlWork , grdmain do
      begin
          Rowcount := 1;

{
분류
시작일
최종전송일
주기1
횟수1
주기2
횟수2
주기3
횟수3
전송횟수
전송내용
전송번호
참고사항
}
//세개의 조건이 있다.
//1. term1과 cnt1
//cnt1이 0 이아니면 TotCnt >= cnt1 이면
//2. cnt2를 비교한다.
//cnt2가 0이 아니면 TonCnt >= cnt1+cnt2 이면
//3. cnt3을 비교한다.
//cnt3이 0이 아니면 TotCnt >= cnt1 + cnt2+ cnt3 이면 발송하지 않는다.

//sendDay <> '' 이면 regDay와 datediff(day, getdate(), regday) =  trem1을 비교한다.

//또 오늘 이후예약이 있으면서 정상예약이면 (취소, 변경등이 아니면)  보내지 않는다.
//반드시 관리대상인 사람이 방문했을경우 관리대상에서 제외시켜야 한다.
//제외시킨 목록은 열람하여 다시 동작할 수 있도록 해야 한다.



             close;
             sql.text  :=  sqlSelect;
            sql.text  :=  sqlSelect +          sqlSelect_PromiseCheck;
             
             open;
             first;
             if not dm_f.sqlWork.isEmpty then
             begin
                 recCount := recordCount;
                 rowcount:=   recCount +1;
                 while not eof do
                 begin
                     for i:= 1 to recCount do
                     begin
                          AddCheckBox(1, i, false, false);

                          cells[2, i]:= fieldByName('name').asString;
                          cells[3, i]:= fieldByName('chart').asString;
                          cells[4, i]:= fieldByName('kind').asString;    //분류
                          cells[5, i]:= fieldByName('regday').asString;    //시작일
                          cells[6, i]:= fieldByName('sendday').asString;   //최종전송일
                          cells[7, i]:= fieldByName('term1').asString;
                          cells[8, i]:= fieldByName('cnt1').asString;
                          cells[9, i]:= fieldByName('term2').asString;
                          cells[10, i]:= fieldByName('cnt2').asString;
                          cells[11, i]:= fieldByName('term3').asString;
                          cells[12, i]:= fieldByName('cnt3').asString;
                          cells[13, i]:= fieldByName('totcnt').asString;
                          cells[14, i]:= fieldByName('context').asString;
                          cells[15, i]:= fieldByName('tel').asString;
                          cells[16, i]:= fieldByName('remark').asString;
                          cells[17, i]:= fieldByName('stopDay').asString;
                          cells[18, i]:= fieldByName('noSMS').asString;
                          cells[19, i]:= fieldByName('ID').asString;



                          next;
                     end;
                 end;
                 autonumberCol(0);
             end
             else
             begin
             end;
      end;
end;



procedure Tmain_f.btnMinewonClick(Sender: TObject);
begin
     PromiseSelect_timeOver;
end;

procedure Tmain_f.btnManageClick(Sender: TObject);
begin
      ManageSelect;
end;


function Tmain_f.SendMessage_One(varGogekName: string; varGogekId: string;
      varRecvNoTong: string; varRecvNoGuk: string; varRecvNoBun: string;
       varDay: string; varTime: string;  varCont: string;
       varPrDay:string='';
       varDD:string='';
       varHH:string='';
       varMM:string='';
       varRR:string = '' ): boolean;
const
       SQL_INSERT_DATA = 'INSERT INTO ma_sms_sendlist                    ' + #13#10 +
              '(SBCode, SBChart,SBName,SBTel,SBMail,     ' + #13#10 +
              'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
              'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
              'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL)' + #13#10 +
              'VALUES                                              ' + #13#10 +
              '(:SBCode, :SBChart, :SBName, :SBTel,:SBMail,     ' + #13#10 +
              ':SBHp,:SBContent, :SBRegDate, :SBSendDate,      ' + #13#10 +
              ':SBSendTime, :SBZip, :SBAdd, :SBQty, :SBGroup,:SBCHOICE,       ' + #13#10 +
              ':SBSFSMS, :SBSFMAIL, :SBSFFAX, :SBSFDM, :SBSFRECALL)';


       SQL_INSERT_DATA2 = 'INSERT INTO ma_sms_sendresult                  ' + #13#10 +
              ' (SRCode, SRDate, SRTime, SRResult,SRResult2)                          ' + #13#10
              +
              ' VALUES                                              ' + #13#10 +
              ' (:SRCode, :SRDate, :SRTime, :SRResult,:SRResult2)                        ';


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
              VPass,
              VYDay,
              VYTime,
              sCust, sCustname
              : WideString;
       MaxSBcode: string;
       nRet, nRet2: integer;
       nUnCost, nRem: Integer;

          HpName, WonjangName, TelNo, Email, BankCode, BankName: string;
          varMonth,  varmin: string;
          varSendYear, varSendMonth, varSendDay: string;

           sReqTel1, sReqtel2, sReqtel3: WideString;



begin


     result := false;

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

     HpName := configvalue.varsaupname;
     WonjangName := configvalue.varDaepyo;

     if configvalue.varSmsNo <> '' then
          TelNo := configvalue.varSmsNo
     else
          TelNo := configvalue.varTel1;

     Email := configvalue.varEmail;
     VPass := configvalue.varSmspass;
     VId := configvalue.varsmsId;
     BankCode := '';
     BankName := '';
  //   edtsendno.text := TelNo;
     sCustname := HpName;

     if configvalue.varSmsCustkind = '0' then
          sCust := 'WW-NYA-BN' //infomedi
     else
          sCust := 'OV-JJG-9R'; //humansoftlab





     varSendyear := Copy(FormatDateTime('YYYYMMDD', Now), 1, 4);
     varSendMonth := Copy(FormatDateTime('YYYYMMDD', Now), 5, 2);
     varSendDay := Copy(FormatDateTime('YYYYMMDD', Now), 7, 2);

  //   CMTime.Text := Copy(FormatDateTime('HHMM', Now + 120), 1, 2);
  //   CMMinute.Text := '00';
  //   lblRest.caption := '0';

  //   smsLogin;



       VMem := varCont;
       VMem := StringReplace(VMem, '+aaa+', sCustname, [rfReplaceAll, rfIgnoreCase]);  //병원명
       VMem := StringReplace(VMem, '+ddd+', varGogekName, [rfReplaceAll, rfIgnoreCase]);  //환자명

       vMem:=  StringReplace(VMem, '+dd+', varDD, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+hh+', varhh, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+rr+', varRR, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+mm+', varmm, [rfReplaceAll, rfIgnoreCase]);


       if varPrDay <> '' then
       vMem:=  StringReplace(VMem, '+ee+',
               ReturnWeek2(strToDate(varPrDay)), [rfReplaceAll, rfIgnoreCase]);  //요일  (일월화수목금토)



       Vtong := varRecvNoTong;
       VGuk := varRecvNoGuk;
       VBun := varRecvNoBun;


       VName := varGogekName;
       VYDay := varDay;
       VYTime := varTime; //'110000';

       if (trim(vTong) = '') or (trim(vGuk) = '') or (trim(vBun) = '') then
       begin
            //  showmessage('[' + vMem + '] (를)을 ' + Vtong + '-' + vGuk + '-' + vBun + '(으)로는 호출할 수 없습니다.' + #10#13 +
            //         '휴대전화 번호를 확인하시고 다시 등록해 주십시오.');
         // exit;
            LogWrite('[' + vMem + '] (를)을 ' + Vtong + '-' + vGuk + '-' + vBun +  '번호확인'+#10#13+'송신번호:'+VTong2+'-'+ VGuk2+'-'+ VBun2,
             varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
       end;

       Vtong2 := SubStr(telNo, 1, '-');
       VGuk2 := SubStr(telNo, 2, '-');
       VBun2 := SubStr(telNo, 3, '-');


       label2.caption:= '송신번호:'+ VTong2+'-'+ VGuk2+'-'+ VBun2;


//       nRet2 :=
//             smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);





//      if nRet2 = 1 then
//       begin

           //보내는 번호를 로그인한 후 슈어엠SMS서버에서 가져오는것 같다.
           //보내는 번호를 다시 셋팅해주자.
           Vtong2 := SubStr(telNo, 1, '-');
           VGuk2 := SubStr(telNo, 2, '-');
           VBun2 := SubStr(telNo, 3, '-');


              nRet :=smscallmsg1.SMSSendUnit( 1, VId, sCustname, sCust, sCustName,
                     VTong, VGuk, VBun,
                     VName,
                 //    '055','364','7600',
                    VTong2, VGuk2, VBun2,
                   Trim(VMem), VYDay, VYTime, nRem, nUnCost);



          //전송 결과 저장
              with Dm_f.SqlWork do
              begin
                     close;
                     sql.clear;
                     sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
                     open;
                     MaxSBCode := FieldByName('MSBcode').AsString;


                     close;
                     sql.clear;
                     SQL.Text := SQL_INSERT_DATA2;
                     if MaxSBCode <> '' then
                            ParamByName('SRCODE').AsString := FormatFloat('0000000000', (StrToInt(MaxSBcode) + 1))
                     else
                            ParamByName('SRCODE').AsString := '0000000001';
                     ParamByName('SRDate').AsString := FormatDateTime('YYYY-MM-DD', now);
                     ParamByName('SRTime').AsString := FormatDateTime('HH:MM', now);
                     ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
                     ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
                     ExecSQL;



          //전송 세부 결과 저장
                   //  close;
                   //  sql.clear;
                   //  sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
                   //  open;
                   //  MaxSBCode := FieldByName('MSBcode').AsString;

                     close;
                     sql.clear;
                     SQL.Text := SQL_INSERT_DATA;
                     if MaxSBCode <> '' then
                            ParamByName('SBCODE').AsString := FormatFloat('0000000000', (StrToInt(MaxSBcode) + 1))
                     else
                            ParamByName('SBCODE').AsString := '0000000001';
                     ParamByName('SBChart').AsString := varGogekId;
                     ParamByName('SBName').AsString := varGogekName;
                     ParamByName('SBTel').AsString := '';
                     ParamByName('SBMail').AsString := '';
                     ParamByName('SBHp').AsString := varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun;
                     ParamByName('SBContent').AsString := VMem;
                     ParamByName('SBRegDate').AsString := FormatDateTime('YYYY-MM-DD', now);
                     ParamByName('SBZip').AsString := '';
                     ParamByName('SBAdd').AsString := '';
                     ParamByName('SBQty').AsString := '';
                     ParamByName('SBGroup').AsString := '1';
                     ParamByName('SBSFSMS').AsString := '1';
                     ParamByName('SBSFMAIL').AsString := '';
                     ParamByName('SBSFFAX').AsString := '';
                     ParamByName('SBSFDM').AsString := '';
                     ParamByName('SBSFRECALL').AsString := '1';
                     ParamByName('SBSendDate').AsString := VYDay;
                     ParamByName('SBSendTime').AsString := copy(VYTime, 1, 2) + ':' + copy(VYTime, 3, 2);
                     ParamByName('SBCHOICE').AsString := '1'; //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL
                     ExecSQL;

              end;



              if nRet <> 1 then
              begin
                     result := false;
                     LogWrite('전송실패 ==>'+ smsErrorCheck(nRet)+':'+VPASS+':'+varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
               //      Showmessage('[' + smsErrorCheck(nRet) + ']' + '메시지전송에 실패하였습니다.');

              end
              else
              begin
                 //    LogWrite(varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
                     LogWrite('전송성공OK==>'+'[' + vMem + '] (를)을 ' + Vtong + '-' + vGuk + '-' + vBun +  '번호확인'+#10#13+'송신번호:'+VTong2+'-'+ VGuk2+'-'+ VBun2,
                          varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);


                     result := true;
              end;


//       end
//       else
//       begin                      //   VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);
//              result := false;
//              LogWrite('로그인 실패' + smsErrorCheck(nRet2)+'*p:'+VPASS  + ', id:' + VId +':'+varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
//            //  showmessage('로그인 실패' + smsErrorCheck(nRet2) + ':' + VId); //+ VPass+ sCust+ sCustName+ VTong2+ VGuk2+ VBun2+ nRem+ nUnCost);
//       end;

end;

procedure Tmain_f.LogWrite(varID: string; varName: string; varNumber: string; varContent: string);
var
       stFileText: TStringList;
       sFilePath: string;
       sFileName: string;
       varSendTime: string;
begin

       sFilePath := ExtractFilePath(paramStr(0)) + 'SmsLog';
       sFileName := sFilePath + '\SMS' + formatDateTime('YYYYMMDD', now) + '.Log';
       stFileText := TStringList.Create;
       varSendTime := formatDateTime('YYYY-MM-DD hh:nn:ss', now);

       if not DirectoryExists(sFilePath) then
       begin
              if not CreateDir(sFilePath) then
                     raise Exception.Create('Cannot create' + sFilePath);

       end;

       if FileExists(sFileName) then
       begin
              stFileText.LoadFromFile(sFileName);
              stFileText.Insert(0, varSendTime + '>>' + varID + '(' + varName + ')' + varNumber + ':' + varContent);
              stFileText.SaveToFile(sFileName);
       end
       else
       begin
              stFileText.Insert(0, varSendTime + '>>' + varID + '(' + varName + ')' + varNumber + ':' + varContent);
              stFileText.SaveToFile(sFileName);
       end;
end;


procedure Tmain_f.AdvPageControl1Change(Sender: TObject);
var
    yeyakDay : integer;
begin
     if configvalue.VarsmsPromiseDay <> '' then
          yeyakDay:= strtoint(configvalue.VarsmsPromiseDay )
     else
          yeyakDay:= 1; //며칠 후...

    if checkbox1.checked=true then
    begin
      case AdvPageControl1.ActivePageIndex of
      0:  BirthSelect;
      1: begin
              PromiseSelect_onTime(yeyakDay, varPromisesendToday);
         end;
      2:  PromiseSelect_timeOver;
      3:  ManageSelect;
      4:  FirstVisit;
      5:  RecallSelect_onTime(varRecallsendToday);
      end;
    end;
end;


function Tmain_f.UpdateTotalCnt(varDbId:string; varTotCnt:Integer):boolean;
begin
    result:=true;
    try
        with dm_f.SqlTemp do
        begin
            close;
            sql.Clear;
            sql.Text:= ' update ma_sms_manager set totCnt = :totCnt , sendDay=:sendDay where id=:id';
            paramByname('id').asString:= varDbId;
            paramByname('totCnt').asInteger:= varTotCnt+1;
            paramByname('sendDay').asString:= formatDateTime('YYYY-MM-DD',now);
            execsql;
        end;
    except
       result:=false;
    end;
end;


procedure Tmain_f.preSet;
var
     TelNo : string;
begin
     caption:='SMS자동전송시스템';

     cc := true;

    if configvalue.varSmsNo <> '' then
          TelNo := configvalue.varSmsNo
     else
          TelNo := configvalue.varTel1;

      label1.Caption:='보내는번호: '+Telno;



       birthSendTime:=  configvalue.VarsmsBirthTime+ ':'+ configvalue.VarsmsBirthMin;


       //오늘이 토요일이면 토요일 설정시간을 가져오자

       if dateDayOfWeek(now) = Saturday then
       begin

                 if (configvalue.VarsmsPromiseTime_sat ='00')  then
                 begin

                       PromiseSendTime:=  configvalue.VarsmsPromiseTime + ':'+ configvalue.VarsmsPromiseMin ;

                 end
                 else
                 begin
                        PromiseSendTime:=  configvalue.VarsmsPromiseTime_sat + ':'+ configvalue.VarsmsPromiseMin_sat ;

                 end;

       end
       else
       begin
              PromiseSendTime:=  configvalue.VarsmsPromiseTime + ':'+ configvalue.VarsmsPromiseMin ;
       end;



       if dateDayOfWeek(now) = Saturday then
       begin

                 if (configvalue.VarsmsRecallTime_sat ='00')  then
                 begin

                       RecallSendTime:=  configvalue.VarsmsRecallTime + ':'+ configvalue.VarsmsRecallMin ;

                 end
                 else
                 begin
                        RecallSendTime:=  configvalue.VarsmsRecallTime_sat + ':'+ configvalue.VarsmsRecallMin_sat ;

                 end;

       end
       else
       begin
              RecallSendTime:=  configvalue.VarsmsRecallTime + ':'+ configvalue.VarsmsRecallMin ;
       end;






       SmsManSendtime := configvalue.VarSmsManTime  + ':'+ configvalue.VarSmsManMin;
       NewSendTime := configvalue.VarsmsNewTime  + ':'+ configvalue.VarsmsNewMin;
       MinewonSendTime :=  configvalue.VarSmsMinewonTimeInterval + configvalue.VarsmsMinewonMin;


end;


procedure Tmain_f.SendSMSBirth;
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varDate, varTime, varContent: string;
       varBirthCount: integer;
       varVisitCount: integer;
       i: integer;

       state:boolean;
begin
       application.ProcessMessages;

       birthSendTime:=  configvalue.VarsmsBirthTime+ ':'+ configvalue.VarsmsBirthMin;

       //1.오늘 생일 전송
       BirthSelect;

       for i:= 1 to grdBirth.Rowcount - 1 do
       begin





              varName := grdBirth.cells[4, i];
              varId := grdBirth.cells[3, i];
              varTong :=substr(grdBirth.cells[5, i], 1, '-');
              varGuk := substr(grdBirth.cells[5, i], 2, '-');
              varBun := substr(grdBirth.cells[5, i], 3, '-');
              varDate := '00000000';
              varTime := '000000';
            //  varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
            //  varTime := '110000';


              varContent := configvalue.VarsmsBirthMem;

              grdBirth.GetCheckBoxState(1,i,state);
              if state = false then
              begin
                    if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime,
                           varContent) = true then
                    begin

                          grdBirth.AddCheckBox(1, i, true, false);

                           cntSMSSend :=     cntSMSSend + 1;

                    end;
              end;
       end;
       application.ProcessMessages;
       lblCnt.caption:=  inttostr(cntSMSSend);
       timerBirth.enabled:=true;


end;


procedure Tmain_f.SendSMSPromise;
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varContent: string;
       varDate, varTime: string; //전송예약일자, 전송예약시간
       varBirthCount: integer;
       varVisitCount: integer;
       i: integer;

       state:boolean;
       state2:boolean;
       varMonth, varDD, varHH, varMM:string;
       promiseID:string;

       varPrDay : string;



    yeyakDay : integer;
begin
       application.ProcessMessages;

     if configvalue.VarsmsPromiseDay <> '' then
          yeyakDay:= strtoint(configvalue.VarsmsPromiseDay )
     else
          yeyakDay:= 1; //며칠 후...

     //  PromiseSendTime:=  configvalue.VarsmsPromiseTime + ':'+ configvalue.VarsmsPromiseMin ;

        if configvalue.VarTodayPromiseSend =  '1' then  //당일 예약환자도 같이  SMS보내기
             varPromisesendToday := true
        else
             varPromiseSendToday := false;

       if dateDayOfWeek(now) = Saturday then
       begin

                 if (configvalue.VarsmsPromiseTime_sat ='00')  then
                 begin

                        PromiseSendTime:=  configvalue.VarsmsPromiseTime + ':'+ configvalue.VarsmsPromiseMin ;

                 end
                 else
                 begin
                        PromiseSendTime:=  configvalue.VarsmsPromiseTime_sat + ':'+ configvalue.VarsmsPromiseMin_sat ;

                 end;

       end
       else
       begin
              PromiseSendTime:=  configvalue.VarsmsPromiseTime + ':'+ configvalue.VarsmsPromiseMin ;
       end;







       exceptLogging('전송준비용 Data불러오기 시작');

       //2.예약 지정일전 전송


       try
            PromiseSelect_onTime(yeyakDay, varPromiseSendToday);

             if  grdPromise.RowCount > 1 then
             begin

                  exceptLogging('전송준비용 Data불러오기 완료 ' + inttostr( grdPromise.RowCount-1) +'건');
                   AddMessage('전송준비용 Data불러오기 완료 ' + inttostr( grdPromise.RowCount-1) +'건');
                  AdvAlertWindow1.Show;
             end
             else
             begin
                  exceptLogging('전송할 SMS리스트가 없습니다.');
                  AddMessage('전송할 SMS리스트가 없습니다.');
                  AdvAlertWindow1.Show;


             end;


       except

              on E: Exception do
              begin
              ExceptLogging('전송할 SMS정보를 가져오지 못했습니다.' + E.Message);
              showmessage('전송할 SMS정보를 가져오지 못했습니다.' + E.Message);
             end;
       end;







       for i:= 1 to grdPromise.Rowcount - 1 do
       begin

              exceptLogging('전송준비 시작 => ' + inttostr( i) );


              promiseID:=   grdPromise.cells[10, i];
              varName :=  grdPromise.cells[5, i];
              varId := grdPromise.cells[4, i];
              varTong :=substr(grdPromise.cells[6, i], 1, '-');
              varGuk := substr(grdPromise.cells[6, i], 2, '-');
              varBun := substr(grdPromise.cells[6, i], 3, '-');






                if grdPromise.cells[2, i]  <> '' then //일자
                    begin
                         varMonth := Copy(grdPromise.cells[2,i], 6, 2);
                         varDD:=  Copy(grdPromise.cells[2, i], 9, 2);
                         varPrDay := grdPromise.cells[2, i];

                    end
                    else
                    begin
                         varPrDay := formatDatetime('YYYY-MM-DD',now);
                    end;


                if grdPromise.cells[3, i] <> '' then //시간
                    begin
                         varHH:= HangeulTime(Copy(grdPromise.cells[3, i] , 1, 2));

                         varMM:= HangeulMin(Copy(grdPromise.cells[3, i], 4, 2));

                    end;


              //예약전송일 경우 전송일자, 전송시간 세팅
              varDate := grdPromise.cells[11, i];
              varTime := grdPromise.cells[12, i];


            //  varDate := '00000000';
            //  varTime := '000000';

            //  varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
            //  varTime := '110000';


              varContent := configvalue.VarsmsPromiseMem;

              grdPromise.GetCheckBoxState(1,i,state); //아직 전송안된 내역

              grdPromise.GetCheckBoxState(9,i,state2); //전송예정체크된거 - 중복돼서 제외된 내역


              //전송후
              //1. 성공하면 그리드 전송결과 col1에 체크
              //2. ma_promise에  sms에 기록
              //   1:성공
              //   2:중복으로 제외
              //   0:실패

              if state = false then  //아직전송안된것, 체크안됨
              begin

                    exceptLogging('미전송 => ' + inttostr( i) );



                    if  state2 = true then //전송예정, 체크됨
                    begin

                          exceptLogging('전송준비 => ' + inttostr( i) );

                       //toDO: 1.다음날이 휴일이어서 휴일 다음날 예약이 선택된 경우  예약전송 해야한다.
                       //toDO: 2.전송실패한경우 다시 보내야한다. - 다시 보내는 주기 설정
                       if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime,
                                varContent, varPrDay,varDD, varHH, varMM, varMonth) = true then
                       begin

                             grdPromise.AddCheckBox(1, i, true, false);  //성공하면 체크
                             updatePromiseSMS(PromiseID, '1');

                               cntSMSSend :=     cntSMSSend + 1;
                               exceptLogging('전송완료 => ' + inttostr( i) );
                       end
                       else
                       begin
                                   exceptLogging(varname + ':'+varID);
                                   updatePromiseSMS(PromiseID, '0'); //전송실패
                                   exceptLogging('전송실패 => ' + inttostr( i) );
                       end;

                    end
                    else
                    begin  //중복된거, 보내지 않을것은 2로 처리
                             exceptLogging('전송안함 => ' + inttostr( i)+'# PromiseID==> ['+PromiseID+']' );
                             updatePromiseSMS(PromiseID, '2');

                    end;

              end;

              lblCnt.caption:=   inttostr(cntSMSSend);


              exceptLogging(lblCnt.caption + '건 전송 완료');
              AddMessage(lblCnt.caption + '건의 SMS를 자동 전송하였습니다.');
              AdvAlertWindow1.Show;

       end;

       application.ProcessMessages;


       //인터벌을 두지 않으면 타이머가 동작하면서 1분이내에 전송한경우 다시 발송하게 된다.
       sleep(60000);

       timerPromise.enabled:=true;

end;



procedure Tmain_f.SendSMSPromise_duo; //기존 당일, 며칠후 말고 또 며칠후가 필요하다. 여기서는 당일은 보내지 않는다.
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varContent: string;
       varDate, varTime: string; //전송예약일자, 전송예약시간
       varBirthCount: integer;
       varVisitCount: integer;
       i: integer;

       state:boolean;
       state2:boolean;
       varMonth, varDD, varHH, varMM:string;
       promiseID:string;

       varPrDay : string;
       
       yeyakDay : integer;
begin
      application.ProcessMessages;

      if configvalue.VarsmsPromiseDay2 <> '' then
          yeyakDay := strtoint(configvalue.VarsmsPromiseDay2 )
      else
          yeyakDay := 1; //며칠 후...


       if dateDayOfWeek(now) = Saturday then
       begin

                 if (configvalue.VarsmsPromiseTime_sat ='00')  then
                 begin

                        PromiseSendTime:=  configvalue.VarsmsPromiseTime + ':'+ configvalue.VarsmsPromiseMin ;

                 end
                 else
                 begin
                        PromiseSendTime:=  configvalue.VarsmsPromiseTime_sat + ':'+ configvalue.VarsmsPromiseMin_sat ;

                 end;

       end
       else
       begin
              PromiseSendTime:=  configvalue.VarsmsPromiseTime + ':'+ configvalue.VarsmsPromiseMin ;
       end;



       exceptLogging('전송준비용 Data불러오기 시작');

       //2.예약 지정일전 전송


       try
            PromiseSelect_onTime(yeyakDay, false);  //당일전송은 안보낸다.

             if  grdPromise.RowCount > 1 then
             begin

                  exceptLogging('전송준비용 Data불러오기 완료 ' + inttostr( grdPromise.RowCount-1) +'건');
                   AddMessage('전송준비용 Data불러오기 완료 ' + inttostr( grdPromise.RowCount-1) +'건');
                  AdvAlertWindow1.Show;
             end
             else
             begin
                  exceptLogging('전송할 SMS리스트가 없습니다.');
                  AddMessage('전송할 SMS리스트가 없습니다.');
                  AdvAlertWindow1.Show;


             end;


       except

              on E: Exception do
              begin
              ExceptLogging('전송할 SMS정보를 가져오지 못했습니다.' + E.Message);
              showmessage('전송할 SMS정보를 가져오지 못했습니다.' + E.Message);
             end;
       end;







       for i:= 1 to grdPromise.Rowcount - 1 do
       begin

              exceptLogging('전송준비 시작 => ' + inttostr( i) );


              promiseID:=   grdPromise.cells[10, i];
              varName :=  grdPromise.cells[5, i];
              varId := grdPromise.cells[4, i];
              varTong :=substr(grdPromise.cells[6, i], 1, '-');
              varGuk := substr(grdPromise.cells[6, i], 2, '-');
              varBun := substr(grdPromise.cells[6, i], 3, '-');






                if grdPromise.cells[2, i]  <> '' then //일자
                    begin
                         varMonth := Copy(grdPromise.cells[2,i], 6, 2);
                         varDD    :=  Copy(grdPromise.cells[2, i], 9, 2);
                         varPrDay :=  grdPromise.cells[2, i];

                    end
                    else
                    begin
                           varPrDay := formatDatetime('YYYY-MM-DD', now);
                    end;


                if grdPromise.cells[3, i] <> '' then //시간
                    begin
                         varHH:= HangeulTime(Copy(grdPromise.cells[3, i] , 1, 2));

                         varMM:= HangeulMin(Copy(grdPromise.cells[3, i], 4, 2));

                    end;


              //예약전송일 경우 전송일자, 전송시간 세팅
              varDate := grdPromise.cells[11, i];
              varTime := grdPromise.cells[12, i];


            //  varDate := '00000000';
            //  varTime := '000000';

            //  varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
            //  varTime := '110000';


              varContent := configvalue.VarsmsPromiseMem;

              grdPromise.GetCheckBoxState(1,i,state); //아직 전송안된 내역

              grdPromise.GetCheckBoxState(9,i,state2); //전송예정체크된거 - 중복돼서 제외된 내역


              //전송후
              //1. 성공하면 그리드 전송결과 col1에 체크
              //2. ma_promise에  sms에 기록
              //   1:성공
              //   2:중복으로 제외
              //   0:실패

              if state = false then  //아직전송안된것, 체크안됨
              begin

                    exceptLogging('미전송 => ' + inttostr( i) );



                    if  state2 = true then //전송예정, 체크됨
                    begin

                          exceptLogging('전송준비 => ' + inttostr( i) );

                       //toDO: 1.다음날이 휴일이어서 휴일 다음날 예약이 선택된 경우  예약전송 해야한다.
                       //toDO: 2.전송실패한경우 다시 보내야한다. - 다시 보내는 주기 설정
                       if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime,
                           varContent,varPrDay, varDD, varHH, varMM, varMonth) = true then
                       begin

                             grdPromise.AddCheckBox(1, i, true, false);  //성공하면 체크
                             updatePromiseSMS(PromiseID, '1');

                             cntSMSSend :=     cntSMSSend + 1;
                               exceptLogging('전송완료 => ' + inttostr( i) );
                       end
                       else
                       begin
                                   exceptLogging(varname + ':'+varID);
                                   updatePromiseSMS(PromiseID, '0'); //전송실패
                                   exceptLogging('전송실패 => ' + inttostr( i) );
                       end;

                    end
                    else
                    begin  //중복된거, 보내지 않을것은 2로 처리
                             exceptLogging('전송안함 => ' + inttostr( i)+'# PromiseID==> ['+PromiseID+']' );
                             updatePromiseSMS(PromiseID, '2');

                    end;

              end;

              lblCnt.caption:=   inttostr(cntSMSSend);


              exceptLogging(lblCnt.caption + '건 전송 완료');
              AddMessage(lblCnt.caption + '건의 SMS를 자동 전송하였습니다.');
              AdvAlertWindow1.Show;

       end;

       application.ProcessMessages;


       //인터벌을 두지 않으면 타이머가 동작하면서 1분이내에 전송한경우 다시 발송하게 된다.
       sleep(60000);

       timerPromise.enabled:=true;

end;


procedure Tmain_f.updatePromiseSMS(varPromiseID:string; sendStat:string);
begin
       try
            with  dm_f.sqlSel do
            begin
                close;
                sql.clear;
                sql.Add(' update ma_promise set ');
                sql.add(' sms= ' + sendStat ) ;
                sql.Add(' where idn= ' + varPromiseID ) ;
                execsql;
            end;
      except
      
      end;
end;
procedure Tmain_f.SendSMSNew;
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varDate, varTime, varContent: string;
       varBirthCount: integer;
       varVisitCount: integer;
       i: integer;

       state:boolean;
begin
       application.ProcessMessages;

       NewSendTime := configvalue.VarsmsNewTime  + ':'+ configvalue.VarsmsNewMin;



       //3. 초진 감사 전송
       FirstVisit;

       for i:= 1 to grdNew.Rowcount - 1 do
       begin


              varName :=  grdNew.cells[4, i];
              varId := grdNew.cells[3, i];
              varTong :=substr(grdNew.cells[5, i], 1, '-');
              varGuk := substr(grdNew.cells[5, i], 2, '-');
              varBun := substr(grdNew.cells[5, i], 3, '-');
              varDate := '00000000';
              varTime := '000000';
            //  varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
            //  varTime := '110000';


              varContent :=  configvalue.VarsmsNewMem;

              grdNew.GetCheckBoxState(1,i,state);
              if state = false then
              begin
                    if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime, varContent) = true then
                    begin
                          grdNew.AddCheckBox(1, i, true, false);

                          cntSMSSend :=     cntSMSSend + 1;


                    end;
              end;
       end;
       application.ProcessMessages;
       lblCnt.caption:=   inttostr(cntSMSSend);

       timerNew.enabled:=true;

end;

procedure Tmain_f.SendSMSManage;
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varDate, varTime, varContent: string;
       varBirthCount: integer;
       varVisitCount: integer;
       i: integer;

       state:boolean;
       varDbId:string;
       varTotCnt:integer;
begin
       application.ProcessMessages;

       SmsManSendtime := configvalue.VarSmsManTime  + ':'+ configvalue.VarSmsManMin;

       //4. SMS관리 전송
       ManageSelect;

       for i:= 1 to grdMain.Rowcount - 1 do
       begin

              if grdMain.cells[15, i] <> '' then
              begin
                    varName :=  grdMain.cells[2, i];
                    varId := grdMain.cells[3, i];
                    varTong :=substr(grdMain.cells[15, i], 1, '-');
                    varGuk := substr(grdMain.cells[15, i], 2, '-');
                    varBun := substr(grdMain.cells[15, i], 3, '-');
                   varDate := '00000000';
                   varTime := '000000';
                //    varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
                //    varTime := '110000';

                    varDBId:=  grdMain.cells[19, i] ;

                    varTotCnt:=  grdMain.ints[13, i] ;

                    varContent := grdMain.cells[14, i];

                    grdMain.GetCheckBoxState(1,i,state);
                    if state = false then
                    begin
                          if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime, varContent) = true then
                          begin
                                grdMain.AddCheckBox(1, i, true, false);

                               //ToDo  ma_sms_manager에 전송획수  업데이트. totCnt +1
                                UpdateTotalCnt(varDbId, varTotCnt);

                                cntSMSSend :=     cntSMSSend + 1;


                          end;
                    end;
              end;
       end;
       application.ProcessMessages;
       lblCnt.caption:=   inttostr(cntSMSSend);

       timerManage.enabled:=true;

end;



procedure Tmain_f.SendSMSMinewon;
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varDate, varTime, varContent: string;
       varBirthCount: integer;
       varVisitCount: integer;
       i: integer;

       state:boolean;
begin
       application.ProcessMessages;

       //5. 10분후 미내원 전송


       PromiseSelect_timeOver;

       for i:= 1 to grdMinewon.Rowcount - 1 do
       begin

              if trim(grdMinewon.cells[6, i]) <> '' then
              begin
                    varName :=  grdMinewon.cells[5, i];
                    varId := grdMinewon.cells[4, i];
                    varTong :=substr(grdMinewon.cells[6, i], 1, '-');
                    varGuk := substr(grdMinewon.cells[6, i], 2, '-');
                    varBun := substr(grdMinewon.cells[6, i], 3, '-');
                   varDate := '00000000';
                   varTime := '000000';
                 //   varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
                  //  varTime := '110000';


                    varContent := grdMinewon.cells[14, i];

                    grdMinewon.GetCheckBoxState(1,i,state);
                    if state = false then
                    begin
                          if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime, varContent) = true then
                          begin
                                grdMinewon.AddCheckBox(1, i, true, false);
                             //미내원 전송인 경우 필요없을까...
                             //   updatePromiseSMS(PromiseID, '1');

                                cntSMSSend :=     cntSMSSend + 1;


                          end;
                    end;
              end;
       end;
       application.ProcessMessages;
       lblCnt.caption:=   inttostr(cntSMSSend);

       timerMinewon.enabled:=true;

end;

procedure Tmain_f.Timer1Timer(Sender: TObject);
begin


    dtDate.date:=now;

    lblTime.caption := formatdatetime('HH:MM:SS', now);



end;



procedure Tmain_f.timerBirthTimer(Sender: TObject);
begin

      if (configvalue.VarsmsBirth =  '1')
      and (formatDateTime('hh:nn', now) = birthSendTime) then
      begin
            timerBirth.enabled:=false;
            SendSMSBirth;

      end;
end;

procedure Tmain_f.timerPromiseTimer(Sender: TObject);
begin
      if ( configvalue.VarsmsPromise =  '1')
      and  (formatDateTime('hh:nn', now)  =  PromiseSendTime ) then
      begin
            timerPromise.enabled:=false;
            SendSMSPromise;

            if  configvalue.VarsmsPromiseDay2 <> '0' then
            begin
                SendSMSPromise_duo;
            end;

      end;

end;

procedure Tmain_f.timerNewTimer(Sender: TObject);
begin
      if ( configvalue.VarsmsNew =  '1')
      and  (formatDateTime('hh:nn', now) =  NewSendTime ) then
      begin
            timerNew.enabled:=false;
            SendSMSNew;
      end;

end;

procedure Tmain_f.timerManageTimer(Sender: TObject);
begin
      if ( configvalue.VarsmsMan =  '1')
      and  (formatDateTime('hh:nn', now) =   SmsManSendTime ) then
      begin
            timerManage.enabled:=false;
            SendSMSManage;
      end;

end;



procedure Tmain_f.timerMinewonTimer(Sender: TObject);
var
    varHour : string;
    varMin : string;
begin

     varHour := formatDateTime('hh',now);
     varmin:=   FormatDateTime('nn',  now ) ;
     if  (varMin  >=  '00')
         and   (varMin  <=  '29')
         then     varMin:='10'
     else
     if  (varMin  >=  '30')
         and   (varMin <=  '59')
         then     varMin:='40';



    //  configvalue.VarSmsMinewonTimeInterval + configvalue.VarsmsMinewonMin;


      MinewonSendTime :=   varHour +':' +  varMin;

      if (  configvalue.VarSmsMinewon =  '1')
      and  (formatDateTime('hh:nn', now) =   MinewonSendTime ) then
      begin
            timerMinewon.enabled:=false;
            SendSMSMinewon;
      end;


end;

procedure Tmain_f.Button6Click(Sender: TObject);
begin


      case AdvPageControl1.ActivePageIndex of
      0:
        begin

             try
                      timerBirth.enabled:=false;
                      SendSMSBirth;
             finally
                      timerBirth.enabled:=true;
             end;

        end;
      1:
        begin
             try
                      timerPromise.enabled:=false;
                      SendSMSPromise;

                      if  configvalue.VarsmsPromiseDay2 <> '0' then
                      begin
                          SendSMSPromise_duo;
                      end;

             finally
                      timerPromise.enabled:=true;
             end;



        end;

      2:
        begin

             try
                      timerMinewon.enabled:=false;
                      SendSMSMinewon;
             finally
                      timerMinewon.enabled:=true;
             end;
        end;

      3:
        begin

             try
                       timerManage.enabled:=false;
                       SendSMSManage;
             finally
                       timerManage.enabled:=true;
             end;
        end;

      4:
        begin

             try
                      timerNew.enabled:=false;
                      SendSMSNew;
             finally
                      timerNew.enabled:=true;
             end;
        end;

      5:
        begin

             try
                      timerRecall.enabled:=false;
                       SendSMSRecall;
             finally
                      timerRecall.enabled:=true;
             end;
        end;

      end;











end;

procedure Tmain_f.Close1Click(Sender: TObject);
begin
      close;
end;


procedure Tmain_f.Open1Click(Sender: TObject);
begin
     // 숨겨진 폼을 보이게 한다.
     ShowWindow(Application.Handle, SW_SHOW); // Get it done NOW
     // 폼이 최소화 되어 있으면 원래의 크기로 되돌린다.
     ShowWindow(Application.Handle, SW_RESTORE);
     // 폼을 나타낸다.
     Show;

end;

procedure Tmain_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     if cc then
     begin
          if Application.MessageBox('SMS자동전송기가 실행중입니다.' + #10#13 +
               '종료하시면 SMS자동전송이 안됩니다.' + #10#13 +
               '종료하시겠습니까?', 'Confirm Exit', MB_YESNO) = 6
               then
          begin
               cc := false;
               exceptLogging('자동 SMS전송 서버 종료됨');
               canclose := true;
          end
          else
          begin
               canclose := false;
               SendMessage(Handle, WM_SYSCOMMAND, SC_MINIMIZE, 0);

          end;
     end
     else
     begin
          canclose := true;
     end;



end;

procedure Tmain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if cc = false then
          application.Terminate;

end;

procedure Tmain_f.CheckBox2Click(Sender: TObject);
begin
       timer1.Enabled :=   CheckBox2.Checked;
end;


procedure Tmain_f.connectDB;
begin
    isOnConnecting := true;

    if loadini = true then
    begin
           connectSql :=  dm_f.ConnectDatabase(configvalue.varDbip,
                   configvalue.varDbname,
                   configvalue.varDbuser,
                   configvalue.varDbpass,
                   configvalue.varDbProtocol,
                   configvalue.varDbPort);

    end;


end;


procedure Tmain_f.TrayIcon1DblClick(Sender: TObject);
begin
        // 숨겨진 폼을 보이게 한다.
     ShowWindow(Application.Handle, SW_SHOW); // Get it done NOW
     // 폼이 최소화 되어 있으면 원래의 크기로 되돌린다.
     ShowWindow(Application.Handle, SW_RESTORE);
     // 폼을 나타낸다.
     Show;

end;

procedure Tmain_f.TryDbConnect;
begin

   if isOnConnecting = false then
   begin

    ConnectDB;

   end;

    if  connectSql = true then
    begin
         configvalue.LoadGlobalData_db;


         //제일먼저 생일 가져오자.
         BirthSelect;

         preSet;

         exceptLogging('자동 SMS전송 서버 실행됨.');

         tmrSql.Enabled := false;
    end
    else
    begin
        cntCon:= cntCon + 1;
        isOnConnecting := false;
        caption:='Auto SMS Server 데이터베이스에 접속중입니다'+'('+ inttostr(cntCon)+')';

    end;

end;


procedure Tmain_f.tmrSqlTimer(Sender: TObject);
begin

     TryDBConnect;
end;


procedure Tmain_f.FormShow(Sender: TObject);
var
    yeyakDay : integer;
begin
     if configvalue.VarsmsPromiseDay <> '' then
          yeyakDay:= strtoint(configvalue.VarsmsPromiseDay )
     else
          yeyakDay:= 1; //며칠 후...


        if configvalue.VarTodayPromiseSend =  '1' then  //당일 예약환자도 같이  SMS보내기
             varPromisesendToday := true
        else
             varPromiseSendToday := false;

        if configvalue.VarTodayRecallSend =  '1' then  //당일 리콜환자도 같이  SMS보내기
             varRecallsendToday := true
        else
             varRecallSendToday := false;


        PromiseSelect_onTime(yeyakDay, varPromiseSendToday );

end;

procedure Tmain_f.GrdPromiseGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
      if ( aRow mod 2=0) then
         ABrush.Color := clBtnFace
         else
          ABrush.Color := clWhite;
end;


procedure Tmain_f.AddMessage(varMessage : string);
var
  NewMsg: string;

begin
  NewMsg := varMessage+'<br>';
  AdvAlertWindow1.AlertMessages.Add.Text.Text := NewMsg;

end;





procedure Tmain_f.RecallSelect_onTime(isTodaySend:Boolean = false);
const
  {   SQL_SELECT_DATA_Recall =
          ' select    *  FROM ma_Recall                           ' + #13#10 +
          ' where                     ' + #13#10 +
          '   ((SMS <> ''1'' and SMS <> ''2'')  or sms is null) ' + #10#13+     //전송안된것만 가져오자...  1:전송한거 2: 중복제외 null: 안보낸거
          ' and  (noSMS  is Null or noSMS <> ''1'')                ' ;
          //ToDo : 전송된것도 다 불러와서 전송된것에 채크해주자...
  }

     SQL_SELECT_DATA_RECALL =
          'SELECT * , (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone FROM ma_recall       '
          + #13#10 +
          ' where                     ' + #13#10 +
       //   '   ((SMS <> ''1'' and SMS <> ''2'')  or sms is null) ' + #10#13+     //전송안된것만 가져오자...  1:전송한거 2: 중복제외 null: 안보낸거
          ' (noSMS  is Null or noSMS <> ''1'')  and (rcCheck <> ''1'' )       ' ; //내원한것은 가져오지 말자.
         //ToDo : 전송된것도 다 불러와서 전송된것에 채크해주자...

    //지정예약일 리스트만 가져온다.
    SQL_SELECT_DATA_Recall_where1 =
          ' and  (rcdate = :pday)                                    ';

    //지정예약일과 오늘치 리스트를 가져온다.
    SQL_SELECT_DATA_Recall_where2 =
          ' and  ( (rcdate = :pday) or (rcdate = :pday1))              ';


var
    yeyakDay : integer;
    varChart, varname :string;
    pDay,pTime : string;
    varRemark, varPhone :string;
    RecallID:string;

    varDate :TdateTime;

    varSendYeyakDay, varSendYeyakTime : string;

    varDate1, varDate2 : string;
begin

     //1. 지정된 며칠 후 일자를 가져온다.
     //2. 휴일이면 그 다음날을 가져온다.
     //   휴일인경우 오늘 예약발송으로 진행한다.

     if configvalue.VarsmsRecallDay <> '' then
          yeyakDay:= strtoint(configvalue.VarsmsRecallDay )
     else
          yeyakDay:= 1; //며칠 후 리콜을 가져오나?...

      varDate:=   dtDate.Date + yeyakDay;

      exceptLogging('     예약일자: ' + formatdatetime('YYYYMMDD', varDate) );

      varSendYeyakday := '00000000';
      varSendYeyakTime :='000000';

       while isHoliday(varDate) = true do
       begin
             varDate := varDate + 1;
             varSendYeyakday :=  formatdatetime('YYYYMMDD', varDate - yeyakDay);
             varSendYeyakTime :=  configvalue.VarsmsRecallTime +   configvalue.VarsmsRecallMin+'00';
             exceptLogging('     다음날 휴일이어서 예약 전송 예정일자: ' + formatdatetime('YYYYMMDD', varDate - yeyakDay) );

       end;

        varDate1 := FormatDateTime('YYYY-MM-DD', dtDate.Date  );//오늘
        varDate2 := FormatDateTime('YYYY-MM-DD', varDate   );//발송 지정일

    //3. 전송할 리스트를 가져온다.
    //4. 부모전화번호도 가져온다.
    //5. sms거부자는 제외한다.
    //6. 오늘치도 발송 선택한 경우 오늘 예약자를 가져온다.
    //7. 지정일 예약자를 가져온다.
     exceptLogging('     Data Select시작');
     try
               with Dm_f.SqlWork  do
               begin
                    grdRecall.Rowcount := 1;
                    SQL.Text := SQL_SELECT_DATA_Recall;

                    if isTodaySend = true then
                    begin
                         //오늘치 리콜자도 불러온다.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_Recall_where2;
                         ParamByName('pday1').AsString :=  varDate1 ;  //오늘이다....

                    end
                    else
                    begin
                         //지정일 리콜자만 불러온다.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_Recall_where1;
                    end;

                    ParamByName('pday').AsString :=  varDate2;

                    sql.Add('order by rcDate desc   ');
                    Open;

                    if not  Dm_f.SqlWork.IsEmpty then
                    begin

                         exceptLogging('    가져오기 시작=>  Data Select 건수 ' + inttostr(Dm_f.SqlWork.recordCount));

                         while not EOF do
                         begin

                              RecallID:= FieldByName('id').AsString;
                              varChart := FieldByName('RcChart').AsString;
                              varname := FieldByName('Rcname').AsString;
                              pDay :=   FieldByName('rcdate').AsString;
                              pTime :=  FieldByName('rctime').AsString;
                              varRemark :=  FieldByName('rcremark').AsString;
                              varPhone := Trim(FieldByName('cphone').AsString);


                              grdRecall.AddRow; // 그리드에 빈 로우를 추가


                          { //보호자전송은 전송했어도 보냈는지 확인할 방법이 없음.
                              if ( FieldByName('sms').AsString ='1')
                                or ( FieldByName('sms').AsString ='2') then  //전송했으면...
                              begin
                                   grdRecall.AddCheckBox(1, grdRecall.RowCount - 1, true, false)  //전송결과
                              end
                              else
                              begin
                                   grdRecall.AddCheckBox(1, grdRecall.RowCount - 1, false, false)  //전송결과
                              end;

                          }

                              grdRecall.AddCheckBox(1, grdRecall.RowCount - 1, false, false);  //전송결과
                              grdRecall.AddCheckBox(9, grdRecall.RowCount - 1, false, false); //전송예정

                              grdRecall.Cells[2, grdRecall.RowCount - 1] :=  pDay;
                              grdRecall.Cells[3, grdRecall.RowCount - 1] :=  pTime;
                              grdRecall.Cells[4, grdRecall.RowCount - 1] :=  varChart;
                              grdRecall.Cells[5, grdRecall.RowCount - 1] :=  varname;
                              grdRecall.Cells[6, grdRecall.RowCount - 1] :=  varPhone ;
                              grdRecall.Cells[7, grdRecall.RowCount - 1] :=  varRemark;
                              grdRecall.Cells[8, grdRecall.RowCount - 1] :=  '본인';
                              grdRecall.Cells[10, grdRecall.RowCount - 1] := RecallID;


                              //order by pday desc, ptime ASC 로
                              //먼저 예약전송일것을 select후에 오늘것을 select 해야함. 안그러면  varSendYeyakday와 varSendYeyakTime이 아래로 초기화됨
                              if  pday = formatdatetime('YYYY-MM-DD', now)   then
                              begin
                                    varSendYeyakday := '00000000';
                                    varSendYeyakTime :='000000';

                              end;

                              grdRecall.Cells[11, grdRecall.RowCount - 1] := varSendYeyakday;  //전송예약일자
                              grdRecall.Cells[12, grdRecall.RowCount - 1] := varSendYeyakTime;  //전송예약시간




                                   //여기서 보호자 전화번호를 읽어와서 행을 추가해주자...


                                   DM_f.sqlTemp2.Close;
                                   DM_f.sqlTemp2.SQL.Clear;

                                   DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                                   DM_f.sqlTemp2.Sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                                   DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //0인것이 SMS전송하기로 한거임 불러올거임....
                                   DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                                   DM_f.sqlTemp2.Open;
                                   DM_f.sqlTemp2.first;

                                   if not DM_f.sqlTemp2.IsEmpty then
                                   begin
                                        while not DM_f.sqlTemp2.eof do
                                        begin
                                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);

                                                grdRecall.AddRow; // 그리드에 빈 로우를 추가

                                                grdRecall.AddCheckBox(1, grdRecall.RowCount - 1, false, false);
                                                grdRecall.Cells[2, grdRecall.RowCount - 1] :=    pDay;
                                                grdRecall.Cells[3, grdRecall.RowCount - 1] :=    pTime;
                                                grdRecall.Cells[4, grdRecall.RowCount - 1] :=    varChart;
                                                grdRecall.Cells[5, grdRecall.RowCount - 1] :=    varName;
                                                grdRecall.Cells[6, grdRecall.RowCount - 1] :=    varPhone;
                                                grdRecall.Cells[7, grdRecall.RowCount - 1] :=    varRemark;
                                                grdRecall.Cells[8, grdRecall.RowCount - 1] :=    '부모';

                                                grdRecall.AddCheckBox(9, grdRecall.RowCount - 1, false, false); //전송예정

                                                grdRecall.Cells[11, grdRecall.RowCount - 1] := varSendYeyakday;  //전송예약일자
                                                grdRecall.Cells[12, grdRecall.RowCount - 1] := varSendYeyakTime;  //전송예약시간



                                                DM_f.sqlTemp2.next;

                                        end;


                                   end;


                              Dm_f.SqlWork.Next;
                         end;
                    end
                    else
                    begin
                         exceptLogging('     Data 없음');
                    end;
                    grdRecall.autoNumberCol(0);
               end;



               //일자가 같은 중복번호는 제거한다.
               RecallDuplicateCheck;

     except

              on E: Exception do
              ExceptLogging('Recall Data Select Error.:' + E.Message);


     end;
end;


procedure Tmain_f.RecallDuplicateCheck;   //전송예정리스트에서 같은 전화번호를 골라 전송예정체크박스를 풀어준다.
var
     i: integer;
     state:boolean;
begin
     listbox2.Items.clear;
     with GrdRecall do
     begin
          for i := 0 to RowCount - 1 do
          begin
             if cbExclusive.Checked = true then    //중복번호제거
             begin
                //여기서 listbox에 핸드폰 번호를 넣는다.
                if (length(Cells[6, i]) > 8) then  //핸드폰 번호가 있으면...
               begin
                         if listbox1.Items.IndexOf(Cells[2, i] + Cells[5, i]+ Cells[6, i]) < 0 then  //listBox1에 내용을 확인해서 없으면
                             AddCheckBox(9, i, true, false);                            //전송예정에 체크해준다.

                         listbox2.Items.Add(Cells[2, i] + Cells[5, i] + Cells[6, i]);  //오늘것도 같이 보내는 경우가 있기 때문에 , 보호자번호인경우 사람이 다를수 있다.
                                                                         //날짜가 같은게 아닌 핸드폰번호는 중복이 아닌걸로 골라내야 한다.
               end;
             end
             else
             begin
               if (length(Cells[6, i]) > 8) then //핸드폰 번호가 있으면...
               begin
                  // Cells[0, i].AsBoolean := true ;
                     if GetCheckBoxState(9, i, state) then // 전송예정
                         if state = true then  //무조건 체크한다.
                          begin
                                 AddCheckBox(9, i, true, false);
                          end;
               end;

             end;
          end;
     end;

end;


procedure Tmain_f.timerRecallTimer(Sender: TObject);
begin
      if ( configvalue.VarsmsRecall =  '1')
      and  (formatDateTime('hh:nn', now)  =  RecallSendTime ) then
      begin
            timerRecall.enabled:=false;
            SendSMSRecall;
      end;


end;





procedure Tmain_f.SendSMSRecall;
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varContent: string;
       varDate, varTime: string; //전송예약일자, 전송예약시간
       varBirthCount: integer;
       varVisitCount: integer;
       i: integer;

       state:boolean;
       state2:boolean;
       varMonth, varDD, varHH, varMM:string;
       RecallID:string;
       varPrDay : string;

begin
       application.ProcessMessages;

     //  RecallSendTime:=  configvalue.VarsmsRecallTime + ':'+ configvalue.VarsmsRecallMin ;

        if configvalue.VarTodayRecallSend =  '1' then  //당일 리콜환자도 같이  SMS보내기
             varRecallsendToday := true
        else
             varRecallSendToday := false;

       if dateDayOfWeek(now) = Saturday then
       begin

                 if (configvalue.VarsmsRecallTime_sat ='00')  then
                 begin

                       RecallSendTime:=  configvalue.VarsmsRecallTime + ':'+ configvalue.VarsmsRecallMin ;

                 end
                 else
                 begin
                        RecallSendTime:=  configvalue.VarsmsRecallTime_sat + ':'+ configvalue.VarsmsRecallMin_sat ;

                 end;

       end
       else
       begin
              RecallSendTime:=  configvalue.VarsmsRecallTime + ':'+ configvalue.VarsmsRecallMin ;
       end;







       exceptLogging('전송준비용 리콜Data불러오기 시작');

       //2.예약 지정일전 전송


       try
            RecallSelect_onTime(varRecallSendToday);
       finally


             if  grdRecall.RowCount > 1 then
             begin

                  exceptLogging('전송준비용 리콜Data불러오기 완료');
             end
             else
             begin

                  AddMessage('전송할 리콜SMS정보를 가져오지 못했습니다.');
                  AdvAlertWindow1.Show;


             end;
       end;







       for i:= 1 to grdRecall.Rowcount - 1 do
       begin


              RecallID:=   grdRecall.cells[10, i];
              varName :=  grdRecall.cells[5, i];
              varId := grdRecall.cells[4, i];
              varTong :=substr(grdRecall.cells[6, i], 1, '-');
              varGuk := substr(grdRecall.cells[6, i], 2, '-');
              varBun := substr(grdRecall.cells[6, i], 3, '-');






              //  if grdRecall.cells[2, i]  <> '' then //일자
              //      begin
              //           varMonth := Copy(grdRecall.cells[2,i], 6, 2);
              //           varDD:=  Copy(grdRecall.cells[2, i], 9, 2);
              //      end;

                if grdRecall.cells[2, i]  <> '' then //일자
                    begin
                         varMonth := Copy(grdRecall.cells[2,i], 6, 2);
                         varDD    :=  Copy(grdRecall.cells[2, i], 9, 2);
                         varPrDay :=  grdRecall.cells[2, i];

                    end
                    else
                    begin
                           varPrDay := formatDatetime('YYYY-MM-DD', now);
                    end;


                if grdRecall.cells[3, i] <> '' then //시간
                    begin
                         varHH:= HangeulTime(Copy(grdRecall.cells[3, i] , 1, 2));

                         varMM:= HangeulMin(Copy(grdRecall.cells[3, i], 4, 2));

                    end;


              //예약전송일 경우 전송일자, 전송시간 세팅
              varDate := grdRecall.cells[11, i];
              varTime := grdRecall.cells[12, i];


            //  varDate := '00000000';
            //  varTime := '000000';

            //  varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
            //  varTime := '110000';


              varContent := configvalue.VarsmsRecallMem;

              grdRecall.GetCheckBoxState(1,i,state); //아직 전송안된 내역

              grdRecall.GetCheckBoxState(9,i,state2); //전송예정체크된거 - 중복돼서 제외된 내역


              //전송후
              //1. 성공하면 그리드 전송결과 col1에 체크
              //2. ma_Recall에  sms에 기록
              //   1:성공
              //   2:중복으로 제외
              //   0:실패

              if state = false then  //아직전송안된것, 체크안됨
              begin
                    if  state2 = true then //전송예정, 체크됨
                    begin



                       //toDO: 1.다음날이 휴일이어서 휴일 다음날 예약이 선택된 경우  예약전송 해야한다.
                       //toDO: 2.전송실패한경우 다시 보내야한다. - 다시 보내는 주기 설정
                       if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime, varContent,
                          varPrDay , varDD, varHH, varMM, varMonth) = true then
                       begin
                             grdRecall.AddCheckBox(1, i, true, false);  //성공하면 체크
                             updateRecallSMS(RecallID, '1');

                             cntSMSSend :=     cntSMSSend + 1;
                       end
                       else
                       begin
                                   exceptLogging(varname + ':'+varID);
                                   updateRecallSMS(RecallID, '0'); //전송실패

                       end;

                    end
                    else
                    begin  //중복된거, 보내지 않을것은 2로 처리
                             updateRecallSMS(RecallID, '2');

                    end;

              end;

              lblCnt.caption:=   inttostr(cntSMSSend);


              exceptLogging(lblCnt.caption + '건 리콜SMS 전송 완료');
              AddMessage(lblCnt.caption + '건의 리콜SMS를 자동 전송하였습니다.');
              AdvAlertWindow1.Show;

       end;

       application.ProcessMessages;

       timerRecall.enabled:=true;

end;

procedure Tmain_f.updateRecallSMS(varRecallID:string; sendStat:string);
begin
       try
            with  dm_f.sqlSel do
            begin
                close;
                sql.clear;
                sql.Add(' update ma_Recall set ');
                sql.add(' sms= ' + sendStat ) ;
                sql.Add(' where id= ' + varRecallID ) ;
                execsql;
            end;
      except
      
      end;
end;

procedure Tmain_f.LOGIN1Click(Sender: TObject);
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
              VPass,
              VYDay,
              VYTime,
              sCust, sCustname
              : WideString;
       MaxSBcode: string;
       nRet, nRet2: integer;
       nUnCost, nRem: Integer;

          HpName, WonjangName, TelNo, Email, BankCode, BankName: string;
          varMonth,  varmin: string;
          varSendYear, varSendMonth, varSendDay: string;

           sReqTel1, sReqtel2, sReqtel3: WideString;



begin


//     result := false;

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

     HpName := configvalue.varsaupname;
     WonjangName := configvalue.varDaepyo;

     if configvalue.varSmsNo <> '' then
          TelNo := configvalue.varSmsNo
     else
          TelNo := configvalue.varTel1;

     Email := configvalue.varEmail;
     VPass := configvalue.varSmspass;
     VId := configvalue.varsmsId;
     BankCode := '';
     BankName := '';
  //   edtsendno.text := TelNo;
     sCustname := HpName;

     if configvalue.varSmsCustkind = '0' then
          sCust := 'WW-NYA-BN' //infomedi
     else
          sCust := 'OV-JJG-9R'; //humansoftlab





     varSendyear := Copy(FormatDateTime('YYYYMMDD', Now), 1, 4);
     varSendMonth := Copy(FormatDateTime('YYYYMMDD', Now), 5, 2);
     varSendDay := Copy(FormatDateTime('YYYYMMDD', Now), 7, 2);

  //   CMTime.Text := Copy(FormatDateTime('HHMM', Now + 120), 1, 2);
  //   CMMinute.Text := '00';
  //   lblRest.caption := '0';

  //   smsLogin;



     {  VMem := varCont;
       VMem := StringReplace(VMem, '+aaa+', sCustname, [rfReplaceAll, rfIgnoreCase]);  //병원명
       VMem := StringReplace(VMem, '+ddd+', varGogekName, [rfReplaceAll, rfIgnoreCase]);  //환자명

       vMem:=  StringReplace(VMem, '+dd+', varDD, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+hh+', varhh, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+rr+', varRR, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+mm+', varmm, [rfReplaceAll, rfIgnoreCase]);
      }
     {  Vtong := varRecvNoTong;
       VGuk := varRecvNoGuk;
       VBun := varRecvNoBun;


       VName := varGogekName;
       VYDay := varDay;
       VYTime := varTime; //'110000';
      }
    {   if (trim(vTong) = '') or (trim(vGuk) = '') or (trim(vBun) = '') then
       begin
            //  showmessage('[' + vMem + '] (를)을 ' + Vtong + '-' + vGuk + '-' + vBun + '(으)로는 호출할 수 없습니다.' + #10#13 +
            //         '휴대전화 번호를 확인하시고 다시 등록해 주십시오.');
         // exit;
            LogWrite('[' + vMem + '] (를)을 ' + Vtong + '-' + vGuk + '-' + vBun +  '번호확인'+#10#13+'송신번호:'+VTong2+'-'+ VGuk2+'-'+ VBun2,
             varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
       end;
      }
       Vtong2 := SubStr(telNo, 1, '-');
       VGuk2 := SubStr(telNo, 2, '-');
       VBun2 := SubStr(telNo, 3, '-');


       label2.caption:= '송신번호:'+ VTong2+'-'+ VGuk2+'-'+ VBun2;


       nRet2 :=
             smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);
       //   smscallmsg1.SMSLogin('bubu0275', 'bubu0276', sCust,  sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);   //ha8743
       //  smscallmsg1.SMSLogin('brace', 'ha8743', sCust,  sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);
      if nRet2 <> 1 then
      begin                      //   VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);
         //    result := false;
             LogWrite('로그인 실패','','','' );
             showmessage('로그인 실패' + smsErrorCheck(nRet2) + ':' + VId +':'+ configvalue.varSmsCustkind); //+ VPass+ sCust+ sCustName+ VTong2+ VGuk2+ VBun2+ nRem+ nUnCost);
           //  showmessage('SMS 로그인 실패');
      end;


end;

initialization
     begin
          { TeskBar 에 Icon 없애기. }
          ShowWindow(Application.Handle, SW_HIDE); // Get it done NOW
          Application.ProcessMessages;
     end;


end.

