unit setting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EllipsLabel, Spin, ExtCtrls, AdvPanel, OleServer, inifiles,
  SMSCALLLib_TLB, AdvEdit;

type
  Tsetting_f = class(TForm)
    AdvPanel1: TAdvPanel;
    cbPromiseDay: TSpinEdit;
    EllipsLabel38: TEllipsLabel;
    cbPromiseTime: TComboBox;
    EllipsLabel39: TEllipsLabel;
    cbPromiseMin: TComboBox;
    EllipsLabel40: TEllipsLabel;
    cbSmsManTime: TComboBox;
    EllipsLabel1: TEllipsLabel;
    cbSmsManMin: TComboBox;
    EllipsLabel2: TEllipsLabel;
    cbBirthTime: TComboBox;
    EllipsLabel3: TEllipsLabel;
    cbBirthMin: TComboBox;
    EllipsLabel4: TEllipsLabel;
    cbNewTime: TComboBox;
    EllipsLabel5: TEllipsLabel;
    cbNewMin: TComboBox;
    EllipsLabel6: TEllipsLabel;
    cbMinewonMin: TComboBox;
    EllipsLabel8: TEllipsLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cbMinewonInterval: TComboBox;
    EllipsLabel7: TEllipsLabel;
    cbSmsManterm: TCheckBox;
    cbPromise: TCheckBox;
    cbBirth: TCheckBox;
    cbNew: TCheckBox;
    cbMinewon: TCheckBox;
    SMSCALLMSG1: TSMSCALLMSG;
    SMSCALLMSG2: TSMSCALLMSG;
    SMSCALLMSG3: TSMSCALLMSG;
    SMSCALLMSG4: TSMSCALLMSG;
    SMSCALLMSG5: TSMSCALLMSG;
    btnSave: TButton;
    btnClose: TButton;
    memBirth: TMemo;
    memPromise: TMemo;
    memNew: TMemo;
    memMinewon: TMemo;
    Label1: TLabel;
    cbPromiseTimeSat: TComboBox;
    EllipsLabel9: TEllipsLabel;
    cbPromiseMinSat: TComboBox;
    EllipsLabel10: TEllipsLabel;
    cbTodayPromiseSend: TCheckBox;
    Label2: TLabel;
    cbRecall: TCheckBox;
    cbRecallDay: TSpinEdit;
    EllipsLabel11: TEllipsLabel;
    cbrecallTime: TComboBox;
    EllipsLabel12: TEllipsLabel;
    cbrecallMin: TComboBox;
    EllipsLabel13: TEllipsLabel;
    memRecall: TMemo;
    cbrecallTimeSat: TComboBox;
    EllipsLabel14: TEllipsLabel;
    cbrecallMinSat: TComboBox;
    EllipsLabel15: TEllipsLabel;
    Label3: TLabel;
    cbTodayRecallSend: TCheckBox;
    Label4: TLabel;
    SMSCALLMSG6: TSMSCALLMSG;
    Label5: TLabel;
    edtIntervalMin: TAdvEdit;
    EllipsLabel16: TEllipsLabel;
    cbPromiseday2: TSpinEdit;
    EllipsLabel17: TEllipsLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setting_f: Tsetting_f;

implementation

uses uDM, uConfig;

{$R *.dfm}

procedure Tsetting_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       action:=caFree;
end;

procedure Tsetting_f.FormDestroy(Sender: TObject);
begin
       setting_f:=nil;
end;

procedure Tsetting_f.btnCloseClick(Sender: TObject);
begin
     Close;
end;

procedure Tsetting_f.FormShow(Sender: TObject);
begin
    caption:='SMS 전송시간 설정';

       //1. SMS 관리
       if configvalue.VarSmsman=  '1' then
           cbSmsManterm.Checked := true
        else
           cbSmsManterm.Checked := false;

       cbSmsMantime.Text:=  configvalue.VarSmsManTime;
       cbSmsManMin.Text:=  configvalue.VarSmsManMin;

       //2. 예약 전송
       if configvalue.VarsmsPromise =  '1' then
           cbPromise.Checked := true
        else
           cbPromise.Checked := false;

       //2-1 당일 예약도 전송
       if configvalue.VarTodayPromiseSend =  '1' then
           cbTodayPromiseSend.Checked := true
        else
           cbTodayPromiseSend.Checked := false;




       cbPromiseTime.Text:=  configvalue.VarsmsPromiseTime;
       cbPromiseMin.Text:=  configvalue.VarsmsPromiseMin;

       cbPromiseTimeSat.Text:=  configvalue.VarsmsPromiseTime_Sat;
       cbPromiseMinSat.Text:=  configvalue.VarsmsPromiseMin_Sat;


       cbPromiseDay.Text:=  configvalue.VarsmsPromiseDay;
       cbPromiseDay2.Text:=  configvalue.VarsmsPromiseDay2;

       memPromise.Text:=  configvalue.VarsmsPromiseMem;



       //3. 생일 전송
       if configvalue.VarsmsBirth =  '1' then
           cbBirth.Checked := true
        else
           cbBirth.Checked := false;

       cbBirthTime.Text:=  configvalue.VarsmsBirthTime;
       cbBirthMin.Text:=  configvalue.VarsmsBirthMin;
       memBirth.Text:=  configvalue.VarsmsBirthMem;




       //4. 신환전송
       if configvalue.VarSmsNew =  '1' then
           cbNew.Checked := true
        else
           cbNew.Checked := false;
       cbNewTime.Text:=  configvalue.VarsmsNewTime;
       cbNewMin.Text:=  configvalue.VarsmsNewMin;
        memNew.Text:=  configvalue.VarsmsNewMem;


       //5. 미내원 전송
       if configvalue.VarSmsMinewon =  '1' then
           cbMinewon.Checked := true
        else
           cbMinewon.Checked := false;
       cbMinewonInterval.Text:=  configvalue.VarSmsMinewonTimeInterval;
       cbMinewonMin.Text:=  configvalue.VarsmsMinewonMin;
       memMinewon.Text:=  configvalue.VarsmsMinewonMem;



       //6. 리콜 전송
       if configvalue.VarsmsRecall =  '1' then
           cbRecall.Checked := true
        else
           cbRecall.Checked := false;

       //6-1 당일 리콜도 전송
       if configvalue.VarTodayRecallSend =  '1' then
           cbTodayRecallSend.Checked := true
        else
           cbTodayRecallSend.Checked := false;

       cbRecallTime.Text:=  configvalue.VarsmsRecallTime;
       cbRecallMin.Text:=  configvalue.VarsmsRecallMin;

       cbRecallTimeSat.Text:=  configvalue.VarsmsRecallTime_Sat;
       cbRecallMinSat.Text:=  configvalue.VarsmsRecallMin_Sat;


        cbRecallDay.Text:=  configvalue.VarsmsRecallDay;
       memRecall.Text:=  configvalue.VarsmsRecallMem;


end;

procedure Tsetting_f.btnSaveClick(Sender: TObject);
var
    ainifile : TiniFile;
    path : string;
begin
    path:= extractFilepath(paramStr(0)) +'db.ini';
    ainiFile:= TiniFile.create(path);

    aIniFile.WriteInteger('AutoSms','StartInterval', edtIntervalMin.IntValue * 1000 * 60); //60000);
    aIniFile.Free;

     try
       //0260~0279
     if  cbSmsManterm.Checked   then
        configvalue.saveValue('0260', '1',      'SMS 관리 주기전송')
     else
        configvalue.saveValue('0260', '0',      'SMS 관리 주기전송')  ;

     configvalue.saveValue('0261', cbSmsManTime.Text , 'SMS 관리 주기전송시간');
     configvalue.saveValue('0262',  cbSmsManMin.text  , 'SMS 관리 주기전송분');



     if  cbPromise.Checked   then
        configvalue.saveValue('0263', '1',      'SMS 지정일 예약안내')
     else
        configvalue.saveValue('0263', '0',      'SMS 지정일 예약안내')  ;


     if  cbTodayPromiseSend.Checked   then
        configvalue.saveValue('0287', '1',      'SMS 당일 예약안내')
     else
        configvalue.saveValue('0287', '0',      'SMS 당일 예약안내')  ;

     configvalue.saveValue('0264', cbPromiseDay.text, 'SMS 지정일 전송일자');
     configvalue.saveValue('0701', cbPromiseDay2.text, 'SMS 지정일 전송일자2');

     configvalue.saveValue('0265', cbPromiseTime.Text , 'SMS 지정일 전송시간');
     configvalue.saveValue('0266',  cbPromiseMin.text   , 'SMS 지정일 전송 분');
     configvalue.saveValue('0267', memPromise.text, 'SMS 지정일 전송내용');

     if  cbNew.Checked   then
        configvalue.saveValue('0268', '1',      'SMS 전일신환 감사 전송')
     else
        configvalue.saveValue('0268', '0',      'SMS 전일신환 감사 전송')  ;

     configvalue.saveValue('0269', cbNewTime.Text , 'SMS 전일신환 감사 전송 시간');
     configvalue.saveValue('0270',cbNewMin.text , 'SMS 전일신환 감사 전송 분 ');
     configvalue.saveValue('0271', memNew.text, 'SMS 전일신환 감사 전송 전송 내용');

     if  cbBirth.Checked   then
        configvalue.saveValue('0272', '1',      'SMS 생일축하 전송')
     else
        configvalue.saveValue('0272', '0',      'SMS 생일축하 전송')  ;

     configvalue.saveValue('0273', cbBirthTime.Text  , 'SMS 생일축하 전송시간');
     configvalue.saveValue('0274',  cbBirthMin.text  , 'SMS 생일축하 전송시간');
     configvalue.saveValue('0275', memBirth.text, 'SMS 생일축하 전송내용');

     if  cbMinewon.Checked   then
        configvalue.saveValue('0276', '1',      'SMS 예약미내원전송')
     else
        configvalue.saveValue('0276', '0',      'SMS 예약미내원전송')  ;

     configvalue.saveValue('0277', cbMinewonInterval.Text  , 'SMS 예약 설정 분 간격');
     configvalue.saveValue('0278', cbMinewonMin.Text  , 'SMS 예약미내원 전송시간 ~분 후');
     configvalue.saveValue('0279', memMinewon.text, 'SMS 예약미내원 전송내용');

{          configvalue.saveValue('0280', inttostr( cbAutoNoSms.ItemIndex), '예약등록시 자동 SMS 전송 버튼 해제 또는 설정' ); //

          configvalue.saveValue('0283', inttostr( cbAutoSendSMS.ItemIndex), '예약등록시 자동 SMS전송' ); //

          configvalue.saveValue('0284', inttostr( cbRemarkPrint.ItemIndex), '예약인쇄시 환자 참고사항 인쇄' ); //
 }

     configvalue.saveValue('0285', cbPromiseTimeSat.Text , 'SMS 지정일 토요일 전송시간');
     configvalue.saveValue('0286',  cbPromiseMinSat.text   , 'SMS 지정일 토요일 전송 분');


    //==========리콜  시작

     if  cbRecall.Checked   then
        configvalue.saveValue('0291', '1',      'SMS 지정일 리콜안내')
     else
        configvalue.saveValue('0291', '0',      'SMS 지정일 리콜안내')  ;


     if  cbTodayRecallSend.Checked   then
        configvalue.saveValue('0292', '1',      'SMS 당일 리콜안내')
     else
        configvalue.saveValue('0292', '0',      'SMS 당일 리콜안내')  ;

     configvalue.saveValue('0293', cbRecallDay.text, 'SMS 리콜 지정일 전송일자');
     configvalue.saveValue('0294', cbRecallTime.Text , 'SMS 리콜 지정일 전송시간');
     configvalue.saveValue('0295',  cbRecallMin.text   , 'SMS 리콜 지정일 전송 분');

     configvalue.saveValue('0296', cbRecallTimeSat.Text , 'SMS 리콜 지정일 토요일 전송시간');
     configvalue.saveValue('0297',  cbRecallMinSat.text   , 'SMS 리콜 지정일 토요일 전송 분');
     configvalue.saveValue('0298', memRecall.text, 'SMS 리콜 지정일 전송내용');
   //===========리콜 끝




     finally
         showmessage('저장되었습니다.');
     end;
end;

procedure Tsetting_f.FormCreate(Sender: TObject);
var
    ainifile : TiniFile;
    intervaltime : integer;
    path : string;
begin

    path:= extractFilepath(paramStr(0)) +'db.ini';
    ainiFile:= TiniFile.create(path);

    intervaltime:= aIniFile.ReadInteger('AutoSms','StartInterval',6000);
    aIniFile.Free;


    edtIntervalMin.IntValue := intervaltime div 6000 ;

end;

end.
