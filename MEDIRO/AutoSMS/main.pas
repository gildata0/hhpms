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


    varPromisesendToday : boolean;  //���� ���ฮ��Ʈ�� �ҷ����� ����...
    varRecallsendToday : boolean;  //���� ���ݸ���Ʈ�� �ҷ����� ����...


    procedure PromiseSelect_onTime(yeyakDay:integer; isTodaySend : Boolean = false);    //isTodaySend=true�� �ι� ������ ������.
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
     if AMsg.CmdType = SC_MINIMIZE then // �ּ�ȭ ��ư�� ����������..
          ShowWindow(Application.Handle, SW_HIDE); // Get it done NOW
     if AMsg.CmdType = SC_CLOSE then // Close ��ư�� ����������..
          ShowWindow(Application.Handle, SW_HIDE); // Get it done NOW
     // �����찡 ������(SC_CLOSE), �ִ�ȭ(SC_MAXIMIZE), �ּ�ȭ(SC_MINIMIZE),
     // Ű���峪 ���콺�� ���θ޴� ȣ��(SC_KEYMENU, SC_MOUSEMENU),
     // �ּ�ȭ���� ������ ���·� ���� �� ��(SC_RESTORE)...
end;
function Tmain_f.isHoliday(varDate:TdateTime) : boolean;
var
     i: integer;
     varYear, VarMonth, Varday: Variant;
begin
     result := false;
     if ReturnWeek2(varDate) = '��' then
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




    caption:='Auto SMS Server �����ͺ��̽��� �������Դϴ�.';
    isOnConnecting := false; // DB�� �������ΰ�?

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


    //DB�� �����ϱ��� ���� �ð��� ����. ��Ȥ Sql������ �ٷ� ���۵��� �ʴ� ��찡 �ִ�.
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
                    //    AddRow; // �׸��忡 �� �ο츦 �߰�
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
          yeyakDay:= 1; //��ĥ ��...

   PromiseSelect_onTime(yeyakDay, true);


end;


//
procedure Tmain_f.PromiseSelect_onTime_old(isTodaySend:Boolean = false);
//�Ϸ��� ������ ��쿡�� �� ������ 2����. 3�������� ���� ���ϴ� ���� ����.
const
     SQL_SELECT_DATA_promise =
          ' select    *  FROM ma_promise                           ' + #13#10 +
          ' where  cancel  <> ''C''                                  ' + #13#10 +
          ' and  cancel  <> ''Y''                                  ' + #13#10 +
          ' and  cancel  <> ''R''                                  ' + #13#10 +
          ' and  cancel  <> ''U''                                  ' + #10#13+
          ' and  POS <> ''8''                                      ' + #10#13+
         // ' and  ((SMS <> ''1'' and SMS <> ''2'')  or sms is null) ' + #10#13+     //���۾ȵȰ͸� ��������...  1:�����Ѱ� 2: �ߺ����� null: �Ⱥ�����
          ' and  (noSMS  is Null or noSMS <> ''1'')                ' ;
          //ToDo : ���۵Ȱ͵� �� �ҷ��ͼ� ���۵ȰͿ� äũ������...


    //���������� ����Ʈ�� �����´�.
    SQL_SELECT_DATA_promise_where1 =
          ' and  (pday = :pday)                                    ';

    //���������ϰ� ����ġ ����Ʈ�� �����´�.
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

     //1. ������ ��ĥ �� ���ڸ� �����´�.
     //2. �����̸� �� �������� �����´�.
     //3. �����ΰ�� ���� ����߼����� �����Ѵ�.

     if configvalue.VarsmsPromiseDay <> '' then
          yeyakDay:= strtoint(configvalue.VarsmsPromiseDay )
     else
          yeyakDay:= 1; //��ĥ ��...

      varDate:=   dtDate.Date + yeyakDay;

      exceptLogging('     ��������: ' + formatdatetime('YYYYMMDD', varDate) );

      varSendYeyakday := '00000000';
      varSendYeyakTime :='000000';

       while isHoliday(varDate) = true do
       begin
             varDate := varDate + 1;
             varSendYeyakday :=  formatdatetime('YYYYMMDD', varDate - yeyakDay);
             varSendYeyakTime :=  configvalue.VarsmsPromiseTime +   configvalue.VarsmsPromiseMin+'00';

             exceptLogging('������ �����̾ ���� ���� ��������: ' + formatdatetime('YYYYMMDD', varDate - yeyakDay) );

       end;

        varDate1 := FormatDateTime('YYYY-MM-DD', dtDate.Date  );//����
        varDate2 := FormatDateTime('YYYY-MM-DD', varDate   );//�߼� ������

    //3. ������ ����Ʈ�� �����´�.
    //4. �θ���ȭ��ȣ�� �����´�.
    //5. sms�ź��ڴ� �����Ѵ�.
    //6. ����ġ�� �߼� ������ ��� ���� �����ڸ� �����´�.
    //7. ������ �����ڸ� �����´�.
     exceptLogging('     Data Select����');
     try
               with Dm_f.SqlWork  do
               begin
                    GrdPromise.Rowcount := 1;
                    SQL.Text := SQL_SELECT_DATA_promise;

                    if isTodaySend = true then
                    begin
                         //����ġ �����ڵ� �ҷ��´�.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_promise_where2;
                         ParamByName('pday1').AsString :=  varDate1 ;  //�����̴�....

                    end
                    else
                    begin
                         //������ �����ڸ� �ҷ��´�.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_promise_where1;
                    end;

                    ParamByName('pday').AsString :=  varDate2;

                    sql.Add('order by pday desc, ptime ASC  ');
                    Open;

                    if not  Dm_f.SqlWork.IsEmpty then
                    begin

                         exceptLogging('    �������� ����=>  Data Select �Ǽ� ' + inttostr(Dm_f.SqlWork.recordCount));

                         while not EOF do
                         begin

                              promiseID:= FieldByName('idn').AsString;
                              varChart := FieldByName('Chart').AsString;
                              varname := FieldByName('name').AsString;
                              pDay :=   FieldByName('pday').AsString;
                              pTime :=  FieldByName('ptime').AsString;
                              varRemark :=  FieldByName('remark').AsString;
                              varPhone := Trim(FieldByName('tel').AsString);


                              GrdPromise.AddRow; // �׸��忡 �� �ο츦 �߰�


                          { //��ȣ�������� �����߾ ���´��� Ȯ���� ����� ����.
                              if ( FieldByName('sms').AsString ='1')
                                or ( FieldByName('sms').AsString ='2') then  //����������...
                              begin
                                   GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, true, false)  //���۰��
                              end
                              else
                              begin
                                   GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false)  //���۰��
                              end;

                          }

                              GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false);  //���۰��
                              GrdPromise.AddCheckBox(9, GrdPromise.RowCount - 1, false, false); //���ۿ���

                              GrdPromise.Cells[2, GrdPromise.RowCount - 1] :=  pDay;
                              GrdPromise.Cells[3, GrdPromise.RowCount - 1] :=  pTime;
                              GrdPromise.Cells[4, GrdPromise.RowCount - 1] :=  varChart;
                              GrdPromise.Cells[5, GrdPromise.RowCount - 1] :=  varname;
                              GrdPromise.Cells[6, GrdPromise.RowCount - 1] :=  varPhone ;
                              GrdPromise.Cells[7, GrdPromise.RowCount - 1] :=  varRemark;
                              GrdPromise.Cells[8, GrdPromise.RowCount - 1] :=  '����';
                              GrdPromise.Cells[10, GrdPromise.RowCount - 1] := PromiseID;


                              //order by pday desc, ptime ASC ��
                              //���� ���������ϰ��� select�Ŀ� ���ð��� select �ؾ���. �ȱ׷���  varSendYeyakday�� varSendYeyakTime�� �Ʒ��� �ʱ�ȭ��
                              if  pday = formatdatetime('YYYY-MM-DD', now)   then
                              begin
                                    varSendYeyakday := '00000000';
                                    varSendYeyakTime :='000000';

                              end;

                              GrdPromise.Cells[11, GrdPromise.RowCount - 1] := varSendYeyakday;  //���ۿ�������
                              GrdPromise.Cells[12, GrdPromise.RowCount - 1] := varSendYeyakTime;  //���ۿ���ð�




                                   //���⼭ ��ȣ�� ��ȭ��ȣ�� �о�ͼ� ���� �߰�������...


                                   DM_f.sqlTemp2.Close;
                                   DM_f.sqlTemp2.SQL.Clear;

                                   DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                                   DM_f.sqlTemp2.Sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                                   DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //0�ΰ��� SMS�����ϱ�� �Ѱ��� �ҷ��ð���....
                                   DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                                   DM_f.sqlTemp2.Open;
                                   DM_f.sqlTemp2.first;

                                   if not DM_f.sqlTemp2.IsEmpty then
                                   begin
                                        while not DM_f.sqlTemp2.eof do
                                        begin
                                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);

                                                GrdPromise.AddRow; // �׸��忡 �� �ο츦 �߰�

                                                GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false);
                                                GrdPromise.Cells[2, GrdPromise.RowCount - 1] :=    pDay;
                                                GrdPromise.Cells[3, GrdPromise.RowCount - 1] :=    pTime;
                                                GrdPromise.Cells[4, GrdPromise.RowCount - 1] :=    varChart;
                                                GrdPromise.Cells[5, GrdPromise.RowCount - 1] :=    varName;
                                                GrdPromise.Cells[6, GrdPromise.RowCount - 1] :=    varPhone;
                                                GrdPromise.Cells[7, GrdPromise.RowCount - 1] :=    varRemark;
                                                GrdPromise.Cells[8, GrdPromise.RowCount - 1] :=    '�θ�';

                                                GrdPromise.AddCheckBox(9, GrdPromise.RowCount - 1, false, false); //���ۿ���

                                                GrdPromise.Cells[11, GrdPromise.RowCount - 1] := varSendYeyakday;  //���ۿ�������
                                                GrdPromise.Cells[12, GrdPromise.RowCount - 1] := varSendYeyakTime;  //���ۿ���ð�



                                                DM_f.sqlTemp2.next;

                                        end;


                                   end;


                              Dm_f.SqlWork.Next;
                         end;
                    end
                    else
                    begin
                         exceptLogging('     Data ����');
                    end;
                    GrdPromise.autoNumberCol(0);
               end;



               //���ڰ� ���� �ߺ���ȣ�� �����Ѵ�.
               PromiseDuplicateCheck;

     except

              on E: Exception do
              ExceptLogging('Db Select Error.:' + E.Message);


     end;
end;





procedure Tmain_f.PromiseSelect_onTime(yeyakDay:integer; isTodaySend:Boolean = false);
//2����, 3���� �� �����ϰ�� �����. 2016.07.05

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

     //1. ������ ��ĥ �� ���ڸ� �����´�.
     //2. ������ �����̸� ���� �߼��� ����Ʈ�� ������ �� �����ش�. => ������������.
     //3. ������ ������ �ƴҶ����� �ݺ��Ѵ�.


      varDate:=   dtDate.Date + yeyakDay;

      exceptLogging('     ��������: ' + formatdatetime('YYYYMMDD', varDate) );

      varSendYeyakday := '00000000';
      varSendYeyakTime :='000000';


      varDate1 := FormatDateTime('YYYY-MM-DD', dtDate.Date  );//����
      varDate2 := FormatDateTime('YYYY-MM-DD', varDate   );//�߼� ������


      selectPromiseData(varDate1, varDate2,varSendYeyakday, varSendYeyakTime ,isTodaySend, false);


      //������ �����̸�, ���� ��������Ʈ�� �����ͼ� �����ش�.
       varTomorrow:=   dtDate.Date + 1;
       while isHoliday(varTomorrow) = true do
       begin
             varSendYeyakday :=  formatdatetime('YYYYMMDD', varTomorrow);
             varSendYeyakTime :=  configvalue.VarsmsPromiseTime +   configvalue.VarsmsPromiseMin+'00';


             varDate1 := FormatDateTime('YYYY-MM-DD', dtDate.Date  );//����
             varDate2 := FormatDateTime('YYYY-MM-DD', varTomorrow + yeyakDay   );//��������.


             if isHoliday( varTomorrow + yeyakDay) = false then
                 selectPromiseData(varDate1, varDate2,varSendYeyakday, varSendYeyakTime, false, true);
                   //����ġ�� �̹� ������ ���������Ƿ� false, �����Ϳ� ������� �ϹǷ� True,


             varTomorrow := varTomorrow + 1;

             exceptLogging('������ �����̾ ���� ���� ��������: ' + formatdatetime('YYYYMMDD', varDate - yeyakDay) );

       end;

end;


procedure Tmain_f.selectPromiseData(varDate1, varDate2 : string;
  varSendYeyakDay, varSendYeyakTime : string;  isTodaySend:Boolean = false; isAppend :boolean= false);
                                    //����,     ������ ,         ����ġ ���ۿ���,              ���������̾ ���������Ұ� �������� �߰�����
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
         // ' and  ((SMS <> ''1'' and SMS <> ''2'')  or sms is null) ' + #10#13+     //���۾ȵȰ͸� ��������...  1:�����Ѱ� 2: �ߺ����� null: �Ⱥ�����
          ' and  (noSMS  is Null or noSMS <> ''1'')                ' ;
          //ToDo : ���۵Ȱ͵� �� �ҷ��ͼ� ���۵ȰͿ� äũ������...


    //���������� ����Ʈ�� �����´�.
    SQL_SELECT_DATA_promise_where1 =
          ' and  (pday = :pday)                                    ';

    //���������ϰ� ����ġ ����Ʈ�� �����´�.
    SQL_SELECT_DATA_promise_where2 =
          ' and  ( (pday = :pday) or (pday = :pday1))              ';

begin
    //1. ������ ����Ʈ�� �����´�.
    //2. �θ���ȭ��ȣ�� �����´�.
    //3. sms�ź��ڴ� �����Ѵ�.
    //4. ����ġ�� �߼� ������ ��� ���� �����ڸ� �����´�.
    //5. ������ �����ڸ� �����´�.
     exceptLogging('     Data Select����');
     try
               with Dm_f.SqlWork  do
               begin


                    if isAppend = false then
                        GrdPromise.Rowcount := 1;


                    SQL.Text := SQL_SELECT_DATA_promise;

                    if isTodaySend = true then
                    begin
                         //����ġ �����ڵ� �ҷ��´�.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_promise_where2;
                         ParamByName('pday1').AsString :=  varDate1 ;  //�����̴�....

                    end
                    else
                    begin
                         //������ �����ڸ� �ҷ��´�.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_promise_where1;
                    end;

                    ParamByName('pday').AsString :=  varDate2;

                    sql.Add('order by pday desc, ptime ASC  ');
                    Open;

                    if not  Dm_f.SqlWork.IsEmpty then
                    begin

                         exceptLogging('    �������� ����=>  Data Select �Ǽ� ' + inttostr(Dm_f.SqlWork.recordCount));

                         while not EOF do
                         begin

                              promiseID:= FieldByName('idn').AsString;
                              varChart := FieldByName('Chart').AsString;
                              varname := FieldByName('name').AsString;
                              pDay :=   FieldByName('pday').AsString;
                              pTime :=  FieldByName('ptime').AsString;
                              varRemark :=  FieldByName('remark').AsString;
                              varPhone := Trim(FieldByName('tel').AsString);


                              GrdPromise.AddRow; // �׸��忡 �� �ο츦 �߰�


                          { //��ȣ�������� �����߾ ���´��� Ȯ���� ����� ����.
                              if ( FieldByName('sms').AsString ='1')
                                or ( FieldByName('sms').AsString ='2') then  //����������...
                              begin
                                   GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, true, false)  //���۰��
                              end
                              else
                              begin
                                   GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false)  //���۰��
                              end;

                          }

                              GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false);  //���۰��
                              GrdPromise.AddCheckBox(9, GrdPromise.RowCount - 1, false, false); //���ۿ���

                              GrdPromise.Cells[2, GrdPromise.RowCount - 1] :=  pDay;
                              GrdPromise.Cells[3, GrdPromise.RowCount - 1] :=  pTime;
                              GrdPromise.Cells[4, GrdPromise.RowCount - 1] :=  varChart;
                              GrdPromise.Cells[5, GrdPromise.RowCount - 1] :=  varname;
                              GrdPromise.Cells[6, GrdPromise.RowCount - 1] :=  varPhone ;
                              GrdPromise.Cells[7, GrdPromise.RowCount - 1] :=  varRemark;
                              GrdPromise.Cells[8, GrdPromise.RowCount - 1] :=  '����';
                              GrdPromise.Cells[10, GrdPromise.RowCount - 1] := PromiseID;


                              //order by pday desc, ptime ASC ��
                              //���� ���������ϰ��� select�Ŀ� ���ð��� select �ؾ���. �ȱ׷���  varSendYeyakday�� varSendYeyakTime�� �Ʒ��� �ʱ�ȭ��
                              if  pday = formatdatetime('YYYY-MM-DD', now)   then
                              begin
                                    varSendYeyakday := '00000000';
                                    varSendYeyakTime :='000000';

                              end;

                              GrdPromise.Cells[11, GrdPromise.RowCount - 1] := varSendYeyakday;  //���ۿ�������
                              GrdPromise.Cells[12, GrdPromise.RowCount - 1] := varSendYeyakTime;  //���ۿ���ð�




                                   //���⼭ ��ȣ�� ��ȭ��ȣ�� �о�ͼ� ���� �߰�������...
                                if varChart <> '' then
                                begin
                                   DM_f.sqlTemp2.Close;
                                   DM_f.sqlTemp2.SQL.Clear;

                                   DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                                   DM_f.sqlTemp2.Sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                                   DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //0�ΰ��� SMS�����ϱ�� �Ѱ��� �ҷ��ð���....
                                   DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                                   DM_f.sqlTemp2.Open;
                                   DM_f.sqlTemp2.first;

                                   if not DM_f.sqlTemp2.IsEmpty then
                                   begin
                                        while not DM_f.sqlTemp2.eof do
                                        begin
                                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);

                                                GrdPromise.AddRow; // �׸��忡 �� �ο츦 �߰�

                                                GrdPromise.AddCheckBox(1, GrdPromise.RowCount - 1, false, false);
                                                GrdPromise.Cells[2, GrdPromise.RowCount - 1] :=    pDay;
                                                GrdPromise.Cells[3, GrdPromise.RowCount - 1] :=    pTime;
                                                GrdPromise.Cells[4, GrdPromise.RowCount - 1] :=    varChart;
                                                GrdPromise.Cells[5, GrdPromise.RowCount - 1] :=    varName;
                                                GrdPromise.Cells[6, GrdPromise.RowCount - 1] :=    varPhone;
                                                GrdPromise.Cells[7, GrdPromise.RowCount - 1] :=    varRemark;
                                                GrdPromise.Cells[8, GrdPromise.RowCount - 1] :=    '�θ�';

                                                GrdPromise.AddCheckBox(9, GrdPromise.RowCount - 1, false, false); //���ۿ���

                                                GrdPromise.Cells[11, GrdPromise.RowCount - 1] := varSendYeyakday;  //���ۿ�������
                                                GrdPromise.Cells[12, GrdPromise.RowCount - 1] := varSendYeyakTime;  //���ۿ���ð�



                                                DM_f.sqlTemp2.next;

                                        end;


                                   end;
                               end;

                              Dm_f.SqlWork.Next;
                         end;
                    end
                    else
                    begin
                         exceptLogging('     Data ����');
                    end;
                    GrdPromise.autoNumberCol(0);
               end;



               //���ڰ� ���� �ߺ���ȣ�� �����Ѵ�.
               PromiseDuplicateCheck;

     except

              on E: Exception do
              ExceptLogging('Db Select Error.:' + E.Message);


     end;
end;
procedure Tmain_f.PromiseDuplicateCheck;   //���ۿ�������Ʈ���� ���� ��ȭ��ȣ�� ��� ���ۿ���üũ�ڽ��� Ǯ���ش�.
var
     i: integer;
     state:boolean;
begin
     listbox1.Items.clear;
     with GrdPromise do
     begin
          for i := 0 to RowCount - 1 do
          begin
             if cbExclusive.Checked = true then    //�ߺ���ȣ����
             begin
                //���⼭ listbox�� �ڵ��� ��ȣ�� �ִ´�.
                if (length(Cells[6, i]) > 8) then  //�ڵ��� ��ȣ�� ������...
               begin
                         if listbox1.Items.IndexOf(Cells[2, i] + Cells[5, i]+ Cells[6, i]) < 0 then  //listBox1�� ������ Ȯ���ؼ� ������
                             AddCheckBox(9, i, true, false);                            //���ۿ����� üũ���ش�.

                         listbox1.Items.Add(Cells[2, i] + Cells[5, i] + Cells[6, i]);  //���ð͵� ���� ������ ��찡 �ֱ� ������ , ��ȣ�ڹ�ȣ�ΰ�� ����� �ٸ��� �ִ�.
                                                                         //��¥�� ������ �ƴ� �ڵ�����ȣ�� �ߺ��� �ƴѰɷ� ��󳻾� �Ѵ�.
               end;
             end
             else
             begin
               if (length(Cells[6, i]) > 8) then //�ڵ��� ��ȣ�� ������...
               begin
                  // Cells[0, i].AsBoolean := true ;
                     if GetCheckBoxState(9, i, state) then // ���ۿ���
                         if state = true then  //������ üũ�Ѵ�.
                          begin
                                 AddCheckBox(9, i, true, false);
                          end;
               end;

             end;
          end;
     end;

end;




procedure Tmain_f.btnNewPatientClick(Sender: TObject);   //���� ��ȯ ���繮��
begin
     FirstVisit;
end;

procedure Tmain_f.FirstVisit;   //���� ��ȯ ���繮��
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
                    //    AddRow; // �׸��忡 �� �ο츦 �߰�
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


procedure Tmain_f.PromiseSelect_timeOver; //10���� �����µ� �ȿ��� ���
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
       select DATEDIFF ( mi , getdate() , getdate()+1 ) ==> 1440 �� (1��)
       select DATEDIFF ( s , getdate() , getdate()+1 ) ==> 86400 �� (1��)
       select DATEDIFF ( hour , getdate() , getdate()+1 ) ==> 24 �ð� (1��)
       select DATEDIFF ( day , getdate() , getdate()+1 ) ==> 1 �� (1��)
       select DATEDIFF ( month , getdate() , getdate()+31 ) ==> 1 ���� (31��)
       select DATEDIFF ( year , getdate() , getdate()+730 ) ==> 2 �� (730��)
     }

     //10���� �����µ� �ȿ��� ���


     //30�� �����̸� 30�д����� üũ (�Ž�00�а� 30�п� 10���� ���� ��� ������ ���� )
     //15�д����̸� 15�д����� üũ (00�� 15�� 30�� 45�к��� 10���� ���� �Ŀ� ���� ���� )


     //������ �����ϴ� �ð����� ��-10�п� �̳����ΰ�츸 SMS�߼�

     //Ÿ�̸� �����ð� - 60�� / �����(30��)
     if configvalue.VarsmsMinewonMin  <> '' then
          minewonMin := strtoint(configvalue.VarsmsMinewonMin)
     else
          minewonMin := 10;

  //    if  configvalue.VarSmsMinewonTimeInterval <> '' then
  //        interval := strtoint( configvalue.VarSmsMinewonTimeInterval)
  //   else
  //        interval := 30;

  //   Count := 60 div interval;


     //������ �����ϴ� �ð��� 30������ 00�������� �˾Ƴ����Ѵ�.
     //30���ΰ�� ����ð��� 30�� �̸��̸� 00�� 30�� �̻��̸� 30��


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
                    AddRow; // �׸��忡 �� �ο츦 �߰�

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
                                                                                   //������ �˻��� �ȵǾ ���� -1
var
   i, recCount:integer;
begin
      with dm_f.sqlWork , grdmain do
      begin
          Rowcount := 1;

{
�з�
������
����������
�ֱ�1
Ƚ��1
�ֱ�2
Ƚ��2
�ֱ�3
Ƚ��3
����Ƚ��
���۳���
���۹�ȣ
�������
}
//������ ������ �ִ�.
//1. term1�� cnt1
//cnt1�� 0 �̾ƴϸ� TotCnt >= cnt1 �̸�
//2. cnt2�� ���Ѵ�.
//cnt2�� 0�� �ƴϸ� TonCnt >= cnt1+cnt2 �̸�
//3. cnt3�� ���Ѵ�.
//cnt3�� 0�� �ƴϸ� TotCnt >= cnt1 + cnt2+ cnt3 �̸� �߼����� �ʴ´�.

//sendDay <> '' �̸� regDay�� datediff(day, getdate(), regday) =  trem1�� ���Ѵ�.

//�� ���� ���Ŀ����� �����鼭 ���󿹾��̸� (���, ������� �ƴϸ�)  ������ �ʴ´�.
//�ݵ�� ��������� ����� �湮������� ������󿡼� ���ܽ��Ѿ� �Ѵ�.
//���ܽ�Ų ����� �����Ͽ� �ٽ� ������ �� �ֵ��� �ؾ� �Ѵ�.



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
                          cells[4, i]:= fieldByName('kind').asString;    //�з�
                          cells[5, i]:= fieldByName('regday').asString;    //������
                          cells[6, i]:= fieldByName('sendday').asString;   //����������
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
       VMem := StringReplace(VMem, '+aaa+', sCustname, [rfReplaceAll, rfIgnoreCase]);  //������
       VMem := StringReplace(VMem, '+ddd+', varGogekName, [rfReplaceAll, rfIgnoreCase]);  //ȯ�ڸ�

       vMem:=  StringReplace(VMem, '+dd+', varDD, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+hh+', varhh, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+rr+', varRR, [rfReplaceAll, rfIgnoreCase]);

       vMem:=  StringReplace(VMem, '+mm+', varmm, [rfReplaceAll, rfIgnoreCase]);


       if varPrDay <> '' then
       vMem:=  StringReplace(VMem, '+ee+',
               ReturnWeek2(strToDate(varPrDay)), [rfReplaceAll, rfIgnoreCase]);  //����  (�Ͽ�ȭ�������)



       Vtong := varRecvNoTong;
       VGuk := varRecvNoGuk;
       VBun := varRecvNoBun;


       VName := varGogekName;
       VYDay := varDay;
       VYTime := varTime; //'110000';

       if (trim(vTong) = '') or (trim(vGuk) = '') or (trim(vBun) = '') then
       begin
            //  showmessage('[' + vMem + '] (��)�� ' + Vtong + '-' + vGuk + '-' + vBun + '(��)�δ� ȣ���� �� �����ϴ�.' + #10#13 +
            //         '�޴���ȭ ��ȣ�� Ȯ���Ͻð� �ٽ� ����� �ֽʽÿ�.');
         // exit;
            LogWrite('[' + vMem + '] (��)�� ' + Vtong + '-' + vGuk + '-' + vBun +  '��ȣȮ��'+#10#13+'�۽Ź�ȣ:'+VTong2+'-'+ VGuk2+'-'+ VBun2,
             varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
       end;

       Vtong2 := SubStr(telNo, 1, '-');
       VGuk2 := SubStr(telNo, 2, '-');
       VBun2 := SubStr(telNo, 3, '-');


       label2.caption:= '�۽Ź�ȣ:'+ VTong2+'-'+ VGuk2+'-'+ VBun2;


//       nRet2 :=
//             smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);





//      if nRet2 = 1 then
//       begin

           //������ ��ȣ�� �α����� �� ���SMS�������� �������°� ����.
           //������ ��ȣ�� �ٽ� ����������.
           Vtong2 := SubStr(telNo, 1, '-');
           VGuk2 := SubStr(telNo, 2, '-');
           VBun2 := SubStr(telNo, 3, '-');


              nRet :=smscallmsg1.SMSSendUnit( 1, VId, sCustname, sCust, sCustName,
                     VTong, VGuk, VBun,
                     VName,
                 //    '055','364','7600',
                    VTong2, VGuk2, VBun2,
                   Trim(VMem), VYDay, VYTime, nRem, nUnCost);



          //���� ��� ����
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



          //���� ���� ��� ����
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
                     LogWrite('���۽��� ==>'+ smsErrorCheck(nRet)+':'+VPASS+':'+varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
               //      Showmessage('[' + smsErrorCheck(nRet) + ']' + '�޽������ۿ� �����Ͽ����ϴ�.');

              end
              else
              begin
                 //    LogWrite(varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
                     LogWrite('���ۼ���OK==>'+'[' + vMem + '] (��)�� ' + Vtong + '-' + vGuk + '-' + vBun +  '��ȣȮ��'+#10#13+'�۽Ź�ȣ:'+VTong2+'-'+ VGuk2+'-'+ VBun2,
                          varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);


                     result := true;
              end;


//       end
//       else
//       begin                      //   VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);
//              result := false;
//              LogWrite('�α��� ����' + smsErrorCheck(nRet2)+'*p:'+VPASS  + ', id:' + VId +':'+varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
//            //  showmessage('�α��� ����' + smsErrorCheck(nRet2) + ':' + VId); //+ VPass+ sCust+ sCustName+ VTong2+ VGuk2+ VBun2+ nRem+ nUnCost);
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
          yeyakDay:= 1; //��ĥ ��...

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
     caption:='SMS�ڵ����۽ý���';

     cc := true;

    if configvalue.varSmsNo <> '' then
          TelNo := configvalue.varSmsNo
     else
          TelNo := configvalue.varTel1;

      label1.Caption:='�����¹�ȣ: '+Telno;



       birthSendTime:=  configvalue.VarsmsBirthTime+ ':'+ configvalue.VarsmsBirthMin;


       //������ ������̸� ����� �����ð��� ��������

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

       //1.���� ���� ����
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
       varDate, varTime: string; //���ۿ�������, ���ۿ���ð�
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
          yeyakDay:= 1; //��ĥ ��...

     //  PromiseSendTime:=  configvalue.VarsmsPromiseTime + ':'+ configvalue.VarsmsPromiseMin ;

        if configvalue.VarTodayPromiseSend =  '1' then  //���� ����ȯ�ڵ� ����  SMS������
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







       exceptLogging('�����غ�� Data�ҷ����� ����');

       //2.���� �������� ����


       try
            PromiseSelect_onTime(yeyakDay, varPromiseSendToday);

             if  grdPromise.RowCount > 1 then
             begin

                  exceptLogging('�����غ�� Data�ҷ����� �Ϸ� ' + inttostr( grdPromise.RowCount-1) +'��');
                   AddMessage('�����غ�� Data�ҷ����� �Ϸ� ' + inttostr( grdPromise.RowCount-1) +'��');
                  AdvAlertWindow1.Show;
             end
             else
             begin
                  exceptLogging('������ SMS����Ʈ�� �����ϴ�.');
                  AddMessage('������ SMS����Ʈ�� �����ϴ�.');
                  AdvAlertWindow1.Show;


             end;


       except

              on E: Exception do
              begin
              ExceptLogging('������ SMS������ �������� ���߽��ϴ�.' + E.Message);
              showmessage('������ SMS������ �������� ���߽��ϴ�.' + E.Message);
             end;
       end;







       for i:= 1 to grdPromise.Rowcount - 1 do
       begin

              exceptLogging('�����غ� ���� => ' + inttostr( i) );


              promiseID:=   grdPromise.cells[10, i];
              varName :=  grdPromise.cells[5, i];
              varId := grdPromise.cells[4, i];
              varTong :=substr(grdPromise.cells[6, i], 1, '-');
              varGuk := substr(grdPromise.cells[6, i], 2, '-');
              varBun := substr(grdPromise.cells[6, i], 3, '-');






                if grdPromise.cells[2, i]  <> '' then //����
                    begin
                         varMonth := Copy(grdPromise.cells[2,i], 6, 2);
                         varDD:=  Copy(grdPromise.cells[2, i], 9, 2);
                         varPrDay := grdPromise.cells[2, i];

                    end
                    else
                    begin
                         varPrDay := formatDatetime('YYYY-MM-DD',now);
                    end;


                if grdPromise.cells[3, i] <> '' then //�ð�
                    begin
                         varHH:= HangeulTime(Copy(grdPromise.cells[3, i] , 1, 2));

                         varMM:= HangeulMin(Copy(grdPromise.cells[3, i], 4, 2));

                    end;


              //���������� ��� ��������, ���۽ð� ����
              varDate := grdPromise.cells[11, i];
              varTime := grdPromise.cells[12, i];


            //  varDate := '00000000';
            //  varTime := '000000';

            //  varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
            //  varTime := '110000';


              varContent := configvalue.VarsmsPromiseMem;

              grdPromise.GetCheckBoxState(1,i,state); //���� ���۾ȵ� ����

              grdPromise.GetCheckBoxState(9,i,state2); //���ۿ���üũ�Ȱ� - �ߺ��ż� ���ܵ� ����


              //������
              //1. �����ϸ� �׸��� ���۰�� col1�� üũ
              //2. ma_promise��  sms�� ���
              //   1:����
              //   2:�ߺ����� ����
              //   0:����

              if state = false then  //�������۾ȵȰ�, üũ�ȵ�
              begin

                    exceptLogging('������ => ' + inttostr( i) );



                    if  state2 = true then //���ۿ���, üũ��
                    begin

                          exceptLogging('�����غ� => ' + inttostr( i) );

                       //toDO: 1.�������� �����̾ ���� ������ ������ ���õ� ���  �������� �ؾ��Ѵ�.
                       //toDO: 2.���۽����Ѱ�� �ٽ� �������Ѵ�. - �ٽ� ������ �ֱ� ����
                       if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime,
                                varContent, varPrDay,varDD, varHH, varMM, varMonth) = true then
                       begin

                             grdPromise.AddCheckBox(1, i, true, false);  //�����ϸ� üũ
                             updatePromiseSMS(PromiseID, '1');

                               cntSMSSend :=     cntSMSSend + 1;
                               exceptLogging('���ۿϷ� => ' + inttostr( i) );
                       end
                       else
                       begin
                                   exceptLogging(varname + ':'+varID);
                                   updatePromiseSMS(PromiseID, '0'); //���۽���
                                   exceptLogging('���۽��� => ' + inttostr( i) );
                       end;

                    end
                    else
                    begin  //�ߺ��Ȱ�, ������ �������� 2�� ó��
                             exceptLogging('���۾��� => ' + inttostr( i)+'# PromiseID==> ['+PromiseID+']' );
                             updatePromiseSMS(PromiseID, '2');

                    end;

              end;

              lblCnt.caption:=   inttostr(cntSMSSend);


              exceptLogging(lblCnt.caption + '�� ���� �Ϸ�');
              AddMessage(lblCnt.caption + '���� SMS�� �ڵ� �����Ͽ����ϴ�.');
              AdvAlertWindow1.Show;

       end;

       application.ProcessMessages;


       //���͹��� ���� ������ Ÿ�̸Ӱ� �����ϸ鼭 1���̳��� �����Ѱ�� �ٽ� �߼��ϰ� �ȴ�.
       sleep(60000);

       timerPromise.enabled:=true;

end;



procedure Tmain_f.SendSMSPromise_duo; //���� ����, ��ĥ�� ���� �� ��ĥ�İ� �ʿ��ϴ�. ���⼭�� ������ ������ �ʴ´�.
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varContent: string;
       varDate, varTime: string; //���ۿ�������, ���ۿ���ð�
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
          yeyakDay := 1; //��ĥ ��...


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



       exceptLogging('�����غ�� Data�ҷ����� ����');

       //2.���� �������� ����


       try
            PromiseSelect_onTime(yeyakDay, false);  //���������� �Ⱥ�����.

             if  grdPromise.RowCount > 1 then
             begin

                  exceptLogging('�����غ�� Data�ҷ����� �Ϸ� ' + inttostr( grdPromise.RowCount-1) +'��');
                   AddMessage('�����غ�� Data�ҷ����� �Ϸ� ' + inttostr( grdPromise.RowCount-1) +'��');
                  AdvAlertWindow1.Show;
             end
             else
             begin
                  exceptLogging('������ SMS����Ʈ�� �����ϴ�.');
                  AddMessage('������ SMS����Ʈ�� �����ϴ�.');
                  AdvAlertWindow1.Show;


             end;


       except

              on E: Exception do
              begin
              ExceptLogging('������ SMS������ �������� ���߽��ϴ�.' + E.Message);
              showmessage('������ SMS������ �������� ���߽��ϴ�.' + E.Message);
             end;
       end;







       for i:= 1 to grdPromise.Rowcount - 1 do
       begin

              exceptLogging('�����غ� ���� => ' + inttostr( i) );


              promiseID:=   grdPromise.cells[10, i];
              varName :=  grdPromise.cells[5, i];
              varId := grdPromise.cells[4, i];
              varTong :=substr(grdPromise.cells[6, i], 1, '-');
              varGuk := substr(grdPromise.cells[6, i], 2, '-');
              varBun := substr(grdPromise.cells[6, i], 3, '-');






                if grdPromise.cells[2, i]  <> '' then //����
                    begin
                         varMonth := Copy(grdPromise.cells[2,i], 6, 2);
                         varDD    :=  Copy(grdPromise.cells[2, i], 9, 2);
                         varPrDay :=  grdPromise.cells[2, i];

                    end
                    else
                    begin
                           varPrDay := formatDatetime('YYYY-MM-DD', now);
                    end;


                if grdPromise.cells[3, i] <> '' then //�ð�
                    begin
                         varHH:= HangeulTime(Copy(grdPromise.cells[3, i] , 1, 2));

                         varMM:= HangeulMin(Copy(grdPromise.cells[3, i], 4, 2));

                    end;


              //���������� ��� ��������, ���۽ð� ����
              varDate := grdPromise.cells[11, i];
              varTime := grdPromise.cells[12, i];


            //  varDate := '00000000';
            //  varTime := '000000';

            //  varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
            //  varTime := '110000';


              varContent := configvalue.VarsmsPromiseMem;

              grdPromise.GetCheckBoxState(1,i,state); //���� ���۾ȵ� ����

              grdPromise.GetCheckBoxState(9,i,state2); //���ۿ���üũ�Ȱ� - �ߺ��ż� ���ܵ� ����


              //������
              //1. �����ϸ� �׸��� ���۰�� col1�� üũ
              //2. ma_promise��  sms�� ���
              //   1:����
              //   2:�ߺ����� ����
              //   0:����

              if state = false then  //�������۾ȵȰ�, üũ�ȵ�
              begin

                    exceptLogging('������ => ' + inttostr( i) );



                    if  state2 = true then //���ۿ���, üũ��
                    begin

                          exceptLogging('�����غ� => ' + inttostr( i) );

                       //toDO: 1.�������� �����̾ ���� ������ ������ ���õ� ���  �������� �ؾ��Ѵ�.
                       //toDO: 2.���۽����Ѱ�� �ٽ� �������Ѵ�. - �ٽ� ������ �ֱ� ����
                       if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime,
                           varContent,varPrDay, varDD, varHH, varMM, varMonth) = true then
                       begin

                             grdPromise.AddCheckBox(1, i, true, false);  //�����ϸ� üũ
                             updatePromiseSMS(PromiseID, '1');

                             cntSMSSend :=     cntSMSSend + 1;
                               exceptLogging('���ۿϷ� => ' + inttostr( i) );
                       end
                       else
                       begin
                                   exceptLogging(varname + ':'+varID);
                                   updatePromiseSMS(PromiseID, '0'); //���۽���
                                   exceptLogging('���۽��� => ' + inttostr( i) );
                       end;

                    end
                    else
                    begin  //�ߺ��Ȱ�, ������ �������� 2�� ó��
                             exceptLogging('���۾��� => ' + inttostr( i)+'# PromiseID==> ['+PromiseID+']' );
                             updatePromiseSMS(PromiseID, '2');

                    end;

              end;

              lblCnt.caption:=   inttostr(cntSMSSend);


              exceptLogging(lblCnt.caption + '�� ���� �Ϸ�');
              AddMessage(lblCnt.caption + '���� SMS�� �ڵ� �����Ͽ����ϴ�.');
              AdvAlertWindow1.Show;

       end;

       application.ProcessMessages;


       //���͹��� ���� ������ Ÿ�̸Ӱ� �����ϸ鼭 1���̳��� �����Ѱ�� �ٽ� �߼��ϰ� �ȴ�.
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



       //3. ���� ���� ����
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

       //4. SMS���� ����
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

                               //ToDo  ma_sms_manager�� ����ȹ��  ������Ʈ. totCnt +1
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

       //5. 10���� �̳��� ����


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
                             //�̳��� ������ ��� �ʿ������...
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
     // ������ ���� ���̰� �Ѵ�.
     ShowWindow(Application.Handle, SW_SHOW); // Get it done NOW
     // ���� �ּ�ȭ �Ǿ� ������ ������ ũ��� �ǵ�����.
     ShowWindow(Application.Handle, SW_RESTORE);
     // ���� ��Ÿ����.
     Show;

end;

procedure Tmain_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     if cc then
     begin
          if Application.MessageBox('SMS�ڵ����۱Ⱑ �������Դϴ�.' + #10#13 +
               '�����Ͻø� SMS�ڵ������� �ȵ˴ϴ�.' + #10#13 +
               '�����Ͻðڽ��ϱ�?', 'Confirm Exit', MB_YESNO) = 6
               then
          begin
               cc := false;
               exceptLogging('�ڵ� SMS���� ���� �����');
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
        // ������ ���� ���̰� �Ѵ�.
     ShowWindow(Application.Handle, SW_SHOW); // Get it done NOW
     // ���� �ּ�ȭ �Ǿ� ������ ������ ũ��� �ǵ�����.
     ShowWindow(Application.Handle, SW_RESTORE);
     // ���� ��Ÿ����.
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


         //���ϸ��� ���� ��������.
         BirthSelect;

         preSet;

         exceptLogging('�ڵ� SMS���� ���� �����.');

         tmrSql.Enabled := false;
    end
    else
    begin
        cntCon:= cntCon + 1;
        isOnConnecting := false;
        caption:='Auto SMS Server �����ͺ��̽��� �������Դϴ�'+'('+ inttostr(cntCon)+')';

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
          yeyakDay:= 1; //��ĥ ��...


        if configvalue.VarTodayPromiseSend =  '1' then  //���� ����ȯ�ڵ� ����  SMS������
             varPromisesendToday := true
        else
             varPromiseSendToday := false;

        if configvalue.VarTodayRecallSend =  '1' then  //���� ����ȯ�ڵ� ����  SMS������
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
          '   ((SMS <> ''1'' and SMS <> ''2'')  or sms is null) ' + #10#13+     //���۾ȵȰ͸� ��������...  1:�����Ѱ� 2: �ߺ����� null: �Ⱥ�����
          ' and  (noSMS  is Null or noSMS <> ''1'')                ' ;
          //ToDo : ���۵Ȱ͵� �� �ҷ��ͼ� ���۵ȰͿ� äũ������...
  }

     SQL_SELECT_DATA_RECALL =
          'SELECT * , (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone FROM ma_recall       '
          + #13#10 +
          ' where                     ' + #13#10 +
       //   '   ((SMS <> ''1'' and SMS <> ''2'')  or sms is null) ' + #10#13+     //���۾ȵȰ͸� ��������...  1:�����Ѱ� 2: �ߺ����� null: �Ⱥ�����
          ' (noSMS  is Null or noSMS <> ''1'')  and (rcCheck <> ''1'' )       ' ; //�����Ѱ��� �������� ����.
         //ToDo : ���۵Ȱ͵� �� �ҷ��ͼ� ���۵ȰͿ� äũ������...

    //���������� ����Ʈ�� �����´�.
    SQL_SELECT_DATA_Recall_where1 =
          ' and  (rcdate = :pday)                                    ';

    //���������ϰ� ����ġ ����Ʈ�� �����´�.
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

     //1. ������ ��ĥ �� ���ڸ� �����´�.
     //2. �����̸� �� �������� �����´�.
     //   �����ΰ�� ���� ����߼����� �����Ѵ�.

     if configvalue.VarsmsRecallDay <> '' then
          yeyakDay:= strtoint(configvalue.VarsmsRecallDay )
     else
          yeyakDay:= 1; //��ĥ �� ������ ��������?...

      varDate:=   dtDate.Date + yeyakDay;

      exceptLogging('     ��������: ' + formatdatetime('YYYYMMDD', varDate) );

      varSendYeyakday := '00000000';
      varSendYeyakTime :='000000';

       while isHoliday(varDate) = true do
       begin
             varDate := varDate + 1;
             varSendYeyakday :=  formatdatetime('YYYYMMDD', varDate - yeyakDay);
             varSendYeyakTime :=  configvalue.VarsmsRecallTime +   configvalue.VarsmsRecallMin+'00';
             exceptLogging('     ������ �����̾ ���� ���� ��������: ' + formatdatetime('YYYYMMDD', varDate - yeyakDay) );

       end;

        varDate1 := FormatDateTime('YYYY-MM-DD', dtDate.Date  );//����
        varDate2 := FormatDateTime('YYYY-MM-DD', varDate   );//�߼� ������

    //3. ������ ����Ʈ�� �����´�.
    //4. �θ���ȭ��ȣ�� �����´�.
    //5. sms�ź��ڴ� �����Ѵ�.
    //6. ����ġ�� �߼� ������ ��� ���� �����ڸ� �����´�.
    //7. ������ �����ڸ� �����´�.
     exceptLogging('     Data Select����');
     try
               with Dm_f.SqlWork  do
               begin
                    grdRecall.Rowcount := 1;
                    SQL.Text := SQL_SELECT_DATA_Recall;

                    if isTodaySend = true then
                    begin
                         //����ġ �����ڵ� �ҷ��´�.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_Recall_where2;
                         ParamByName('pday1').AsString :=  varDate1 ;  //�����̴�....

                    end
                    else
                    begin
                         //������ �����ڸ� �ҷ��´�.
                         SQL.Text := SQL.Text + SQL_SELECT_DATA_Recall_where1;
                    end;

                    ParamByName('pday').AsString :=  varDate2;

                    sql.Add('order by rcDate desc   ');
                    Open;

                    if not  Dm_f.SqlWork.IsEmpty then
                    begin

                         exceptLogging('    �������� ����=>  Data Select �Ǽ� ' + inttostr(Dm_f.SqlWork.recordCount));

                         while not EOF do
                         begin

                              RecallID:= FieldByName('id').AsString;
                              varChart := FieldByName('RcChart').AsString;
                              varname := FieldByName('Rcname').AsString;
                              pDay :=   FieldByName('rcdate').AsString;
                              pTime :=  FieldByName('rctime').AsString;
                              varRemark :=  FieldByName('rcremark').AsString;
                              varPhone := Trim(FieldByName('cphone').AsString);


                              grdRecall.AddRow; // �׸��忡 �� �ο츦 �߰�


                          { //��ȣ�������� �����߾ ���´��� Ȯ���� ����� ����.
                              if ( FieldByName('sms').AsString ='1')
                                or ( FieldByName('sms').AsString ='2') then  //����������...
                              begin
                                   grdRecall.AddCheckBox(1, grdRecall.RowCount - 1, true, false)  //���۰��
                              end
                              else
                              begin
                                   grdRecall.AddCheckBox(1, grdRecall.RowCount - 1, false, false)  //���۰��
                              end;

                          }

                              grdRecall.AddCheckBox(1, grdRecall.RowCount - 1, false, false);  //���۰��
                              grdRecall.AddCheckBox(9, grdRecall.RowCount - 1, false, false); //���ۿ���

                              grdRecall.Cells[2, grdRecall.RowCount - 1] :=  pDay;
                              grdRecall.Cells[3, grdRecall.RowCount - 1] :=  pTime;
                              grdRecall.Cells[4, grdRecall.RowCount - 1] :=  varChart;
                              grdRecall.Cells[5, grdRecall.RowCount - 1] :=  varname;
                              grdRecall.Cells[6, grdRecall.RowCount - 1] :=  varPhone ;
                              grdRecall.Cells[7, grdRecall.RowCount - 1] :=  varRemark;
                              grdRecall.Cells[8, grdRecall.RowCount - 1] :=  '����';
                              grdRecall.Cells[10, grdRecall.RowCount - 1] := RecallID;


                              //order by pday desc, ptime ASC ��
                              //���� ���������ϰ��� select�Ŀ� ���ð��� select �ؾ���. �ȱ׷���  varSendYeyakday�� varSendYeyakTime�� �Ʒ��� �ʱ�ȭ��
                              if  pday = formatdatetime('YYYY-MM-DD', now)   then
                              begin
                                    varSendYeyakday := '00000000';
                                    varSendYeyakTime :='000000';

                              end;

                              grdRecall.Cells[11, grdRecall.RowCount - 1] := varSendYeyakday;  //���ۿ�������
                              grdRecall.Cells[12, grdRecall.RowCount - 1] := varSendYeyakTime;  //���ۿ���ð�




                                   //���⼭ ��ȣ�� ��ȭ��ȣ�� �о�ͼ� ���� �߰�������...


                                   DM_f.sqlTemp2.Close;
                                   DM_f.sqlTemp2.SQL.Clear;

                                   DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                                   DM_f.sqlTemp2.Sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                                   DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //0�ΰ��� SMS�����ϱ�� �Ѱ��� �ҷ��ð���....
                                   DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                                   DM_f.sqlTemp2.Open;
                                   DM_f.sqlTemp2.first;

                                   if not DM_f.sqlTemp2.IsEmpty then
                                   begin
                                        while not DM_f.sqlTemp2.eof do
                                        begin
                                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);

                                                grdRecall.AddRow; // �׸��忡 �� �ο츦 �߰�

                                                grdRecall.AddCheckBox(1, grdRecall.RowCount - 1, false, false);
                                                grdRecall.Cells[2, grdRecall.RowCount - 1] :=    pDay;
                                                grdRecall.Cells[3, grdRecall.RowCount - 1] :=    pTime;
                                                grdRecall.Cells[4, grdRecall.RowCount - 1] :=    varChart;
                                                grdRecall.Cells[5, grdRecall.RowCount - 1] :=    varName;
                                                grdRecall.Cells[6, grdRecall.RowCount - 1] :=    varPhone;
                                                grdRecall.Cells[7, grdRecall.RowCount - 1] :=    varRemark;
                                                grdRecall.Cells[8, grdRecall.RowCount - 1] :=    '�θ�';

                                                grdRecall.AddCheckBox(9, grdRecall.RowCount - 1, false, false); //���ۿ���

                                                grdRecall.Cells[11, grdRecall.RowCount - 1] := varSendYeyakday;  //���ۿ�������
                                                grdRecall.Cells[12, grdRecall.RowCount - 1] := varSendYeyakTime;  //���ۿ���ð�



                                                DM_f.sqlTemp2.next;

                                        end;


                                   end;


                              Dm_f.SqlWork.Next;
                         end;
                    end
                    else
                    begin
                         exceptLogging('     Data ����');
                    end;
                    grdRecall.autoNumberCol(0);
               end;



               //���ڰ� ���� �ߺ���ȣ�� �����Ѵ�.
               RecallDuplicateCheck;

     except

              on E: Exception do
              ExceptLogging('Recall Data Select Error.:' + E.Message);


     end;
end;


procedure Tmain_f.RecallDuplicateCheck;   //���ۿ�������Ʈ���� ���� ��ȭ��ȣ�� ��� ���ۿ���üũ�ڽ��� Ǯ���ش�.
var
     i: integer;
     state:boolean;
begin
     listbox2.Items.clear;
     with GrdRecall do
     begin
          for i := 0 to RowCount - 1 do
          begin
             if cbExclusive.Checked = true then    //�ߺ���ȣ����
             begin
                //���⼭ listbox�� �ڵ��� ��ȣ�� �ִ´�.
                if (length(Cells[6, i]) > 8) then  //�ڵ��� ��ȣ�� ������...
               begin
                         if listbox1.Items.IndexOf(Cells[2, i] + Cells[5, i]+ Cells[6, i]) < 0 then  //listBox1�� ������ Ȯ���ؼ� ������
                             AddCheckBox(9, i, true, false);                            //���ۿ����� üũ���ش�.

                         listbox2.Items.Add(Cells[2, i] + Cells[5, i] + Cells[6, i]);  //���ð͵� ���� ������ ��찡 �ֱ� ������ , ��ȣ�ڹ�ȣ�ΰ�� ����� �ٸ��� �ִ�.
                                                                         //��¥�� ������ �ƴ� �ڵ�����ȣ�� �ߺ��� �ƴѰɷ� ��󳻾� �Ѵ�.
               end;
             end
             else
             begin
               if (length(Cells[6, i]) > 8) then //�ڵ��� ��ȣ�� ������...
               begin
                  // Cells[0, i].AsBoolean := true ;
                     if GetCheckBoxState(9, i, state) then // ���ۿ���
                         if state = true then  //������ üũ�Ѵ�.
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
       varDate, varTime: string; //���ۿ�������, ���ۿ���ð�
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

        if configvalue.VarTodayRecallSend =  '1' then  //���� ����ȯ�ڵ� ����  SMS������
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







       exceptLogging('�����غ�� ����Data�ҷ����� ����');

       //2.���� �������� ����


       try
            RecallSelect_onTime(varRecallSendToday);
       finally


             if  grdRecall.RowCount > 1 then
             begin

                  exceptLogging('�����غ�� ����Data�ҷ����� �Ϸ�');
             end
             else
             begin

                  AddMessage('������ ����SMS������ �������� ���߽��ϴ�.');
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






              //  if grdRecall.cells[2, i]  <> '' then //����
              //      begin
              //           varMonth := Copy(grdRecall.cells[2,i], 6, 2);
              //           varDD:=  Copy(grdRecall.cells[2, i], 9, 2);
              //      end;

                if grdRecall.cells[2, i]  <> '' then //����
                    begin
                         varMonth := Copy(grdRecall.cells[2,i], 6, 2);
                         varDD    :=  Copy(grdRecall.cells[2, i], 9, 2);
                         varPrDay :=  grdRecall.cells[2, i];

                    end
                    else
                    begin
                           varPrDay := formatDatetime('YYYY-MM-DD', now);
                    end;


                if grdRecall.cells[3, i] <> '' then //�ð�
                    begin
                         varHH:= HangeulTime(Copy(grdRecall.cells[3, i] , 1, 2));

                         varMM:= HangeulMin(Copy(grdRecall.cells[3, i], 4, 2));

                    end;


              //���������� ��� ��������, ���۽ð� ����
              varDate := grdRecall.cells[11, i];
              varTime := grdRecall.cells[12, i];


            //  varDate := '00000000';
            //  varTime := '000000';

            //  varDate := '20160820';////formatDateTime('YYYYMMDD', now + 3);
            //  varTime := '110000';


              varContent := configvalue.VarsmsRecallMem;

              grdRecall.GetCheckBoxState(1,i,state); //���� ���۾ȵ� ����

              grdRecall.GetCheckBoxState(9,i,state2); //���ۿ���üũ�Ȱ� - �ߺ��ż� ���ܵ� ����


              //������
              //1. �����ϸ� �׸��� ���۰�� col1�� üũ
              //2. ma_Recall��  sms�� ���
              //   1:����
              //   2:�ߺ����� ����
              //   0:����

              if state = false then  //�������۾ȵȰ�, üũ�ȵ�
              begin
                    if  state2 = true then //���ۿ���, üũ��
                    begin



                       //toDO: 1.�������� �����̾ ���� ������ ������ ���õ� ���  �������� �ؾ��Ѵ�.
                       //toDO: 2.���۽����Ѱ�� �ٽ� �������Ѵ�. - �ٽ� ������ �ֱ� ����
                       if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime, varContent,
                          varPrDay , varDD, varHH, varMM, varMonth) = true then
                       begin
                             grdRecall.AddCheckBox(1, i, true, false);  //�����ϸ� üũ
                             updateRecallSMS(RecallID, '1');

                             cntSMSSend :=     cntSMSSend + 1;
                       end
                       else
                       begin
                                   exceptLogging(varname + ':'+varID);
                                   updateRecallSMS(RecallID, '0'); //���۽���

                       end;

                    end
                    else
                    begin  //�ߺ��Ȱ�, ������ �������� 2�� ó��
                             updateRecallSMS(RecallID, '2');

                    end;

              end;

              lblCnt.caption:=   inttostr(cntSMSSend);


              exceptLogging(lblCnt.caption + '�� ����SMS ���� �Ϸ�');
              AddMessage(lblCnt.caption + '���� ����SMS�� �ڵ� �����Ͽ����ϴ�.');
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
       VMem := StringReplace(VMem, '+aaa+', sCustname, [rfReplaceAll, rfIgnoreCase]);  //������
       VMem := StringReplace(VMem, '+ddd+', varGogekName, [rfReplaceAll, rfIgnoreCase]);  //ȯ�ڸ�

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
            //  showmessage('[' + vMem + '] (��)�� ' + Vtong + '-' + vGuk + '-' + vBun + '(��)�δ� ȣ���� �� �����ϴ�.' + #10#13 +
            //         '�޴���ȭ ��ȣ�� Ȯ���Ͻð� �ٽ� ����� �ֽʽÿ�.');
         // exit;
            LogWrite('[' + vMem + '] (��)�� ' + Vtong + '-' + vGuk + '-' + vBun +  '��ȣȮ��'+#10#13+'�۽Ź�ȣ:'+VTong2+'-'+ VGuk2+'-'+ VBun2,
             varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
       end;
      }
       Vtong2 := SubStr(telNo, 1, '-');
       VGuk2 := SubStr(telNo, 2, '-');
       VBun2 := SubStr(telNo, 3, '-');


       label2.caption:= '�۽Ź�ȣ:'+ VTong2+'-'+ VGuk2+'-'+ VBun2;


       nRet2 :=
             smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);
       //   smscallmsg1.SMSLogin('bubu0275', 'bubu0276', sCust,  sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);   //ha8743
       //  smscallmsg1.SMSLogin('brace', 'ha8743', sCust,  sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);
      if nRet2 <> 1 then
      begin                      //   VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);
         //    result := false;
             LogWrite('�α��� ����','','','' );
             showmessage('�α��� ����' + smsErrorCheck(nRet2) + ':' + VId +':'+ configvalue.varSmsCustkind); //+ VPass+ sCust+ sCustName+ VTong2+ VGuk2+ VBun2+ nRem+ nUnCost);
           //  showmessage('SMS �α��� ����');
      end;


end;

initialization
     begin
          { TeskBar �� Icon ���ֱ�. }
          ShowWindow(Application.Handle, SW_HIDE); // Get it done NOW
          Application.ProcessMessages;
     end;


end.

