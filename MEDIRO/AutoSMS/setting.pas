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
    caption:='SMS ���۽ð� ����';

       //1. SMS ����
       if configvalue.VarSmsman=  '1' then
           cbSmsManterm.Checked := true
        else
           cbSmsManterm.Checked := false;

       cbSmsMantime.Text:=  configvalue.VarSmsManTime;
       cbSmsManMin.Text:=  configvalue.VarSmsManMin;

       //2. ���� ����
       if configvalue.VarsmsPromise =  '1' then
           cbPromise.Checked := true
        else
           cbPromise.Checked := false;

       //2-1 ���� ���൵ ����
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



       //3. ���� ����
       if configvalue.VarsmsBirth =  '1' then
           cbBirth.Checked := true
        else
           cbBirth.Checked := false;

       cbBirthTime.Text:=  configvalue.VarsmsBirthTime;
       cbBirthMin.Text:=  configvalue.VarsmsBirthMin;
       memBirth.Text:=  configvalue.VarsmsBirthMem;




       //4. ��ȯ����
       if configvalue.VarSmsNew =  '1' then
           cbNew.Checked := true
        else
           cbNew.Checked := false;
       cbNewTime.Text:=  configvalue.VarsmsNewTime;
       cbNewMin.Text:=  configvalue.VarsmsNewMin;
        memNew.Text:=  configvalue.VarsmsNewMem;


       //5. �̳��� ����
       if configvalue.VarSmsMinewon =  '1' then
           cbMinewon.Checked := true
        else
           cbMinewon.Checked := false;
       cbMinewonInterval.Text:=  configvalue.VarSmsMinewonTimeInterval;
       cbMinewonMin.Text:=  configvalue.VarsmsMinewonMin;
       memMinewon.Text:=  configvalue.VarsmsMinewonMem;



       //6. ���� ����
       if configvalue.VarsmsRecall =  '1' then
           cbRecall.Checked := true
        else
           cbRecall.Checked := false;

       //6-1 ���� ���ݵ� ����
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
        configvalue.saveValue('0260', '1',      'SMS ���� �ֱ�����')
     else
        configvalue.saveValue('0260', '0',      'SMS ���� �ֱ�����')  ;

     configvalue.saveValue('0261', cbSmsManTime.Text , 'SMS ���� �ֱ����۽ð�');
     configvalue.saveValue('0262',  cbSmsManMin.text  , 'SMS ���� �ֱ����ۺ�');



     if  cbPromise.Checked   then
        configvalue.saveValue('0263', '1',      'SMS ������ ����ȳ�')
     else
        configvalue.saveValue('0263', '0',      'SMS ������ ����ȳ�')  ;


     if  cbTodayPromiseSend.Checked   then
        configvalue.saveValue('0287', '1',      'SMS ���� ����ȳ�')
     else
        configvalue.saveValue('0287', '0',      'SMS ���� ����ȳ�')  ;

     configvalue.saveValue('0264', cbPromiseDay.text, 'SMS ������ ��������');
     configvalue.saveValue('0701', cbPromiseDay2.text, 'SMS ������ ��������2');

     configvalue.saveValue('0265', cbPromiseTime.Text , 'SMS ������ ���۽ð�');
     configvalue.saveValue('0266',  cbPromiseMin.text   , 'SMS ������ ���� ��');
     configvalue.saveValue('0267', memPromise.text, 'SMS ������ ���۳���');

     if  cbNew.Checked   then
        configvalue.saveValue('0268', '1',      'SMS ���Ͻ�ȯ ���� ����')
     else
        configvalue.saveValue('0268', '0',      'SMS ���Ͻ�ȯ ���� ����')  ;

     configvalue.saveValue('0269', cbNewTime.Text , 'SMS ���Ͻ�ȯ ���� ���� �ð�');
     configvalue.saveValue('0270',cbNewMin.text , 'SMS ���Ͻ�ȯ ���� ���� �� ');
     configvalue.saveValue('0271', memNew.text, 'SMS ���Ͻ�ȯ ���� ���� ���� ����');

     if  cbBirth.Checked   then
        configvalue.saveValue('0272', '1',      'SMS �������� ����')
     else
        configvalue.saveValue('0272', '0',      'SMS �������� ����')  ;

     configvalue.saveValue('0273', cbBirthTime.Text  , 'SMS �������� ���۽ð�');
     configvalue.saveValue('0274',  cbBirthMin.text  , 'SMS �������� ���۽ð�');
     configvalue.saveValue('0275', memBirth.text, 'SMS �������� ���۳���');

     if  cbMinewon.Checked   then
        configvalue.saveValue('0276', '1',      'SMS ����̳�������')
     else
        configvalue.saveValue('0276', '0',      'SMS ����̳�������')  ;

     configvalue.saveValue('0277', cbMinewonInterval.Text  , 'SMS ���� ���� �� ����');
     configvalue.saveValue('0278', cbMinewonMin.Text  , 'SMS ����̳��� ���۽ð� ~�� ��');
     configvalue.saveValue('0279', memMinewon.text, 'SMS ����̳��� ���۳���');

{          configvalue.saveValue('0280', inttostr( cbAutoNoSms.ItemIndex), '�����Ͻ� �ڵ� SMS ���� ��ư ���� �Ǵ� ����' ); //

          configvalue.saveValue('0283', inttostr( cbAutoSendSMS.ItemIndex), '�����Ͻ� �ڵ� SMS����' ); //

          configvalue.saveValue('0284', inttostr( cbRemarkPrint.ItemIndex), '�����μ�� ȯ�� ������� �μ�' ); //
 }

     configvalue.saveValue('0285', cbPromiseTimeSat.Text , 'SMS ������ ����� ���۽ð�');
     configvalue.saveValue('0286',  cbPromiseMinSat.text   , 'SMS ������ ����� ���� ��');


    //==========����  ����

     if  cbRecall.Checked   then
        configvalue.saveValue('0291', '1',      'SMS ������ ���ݾȳ�')
     else
        configvalue.saveValue('0291', '0',      'SMS ������ ���ݾȳ�')  ;


     if  cbTodayRecallSend.Checked   then
        configvalue.saveValue('0292', '1',      'SMS ���� ���ݾȳ�')
     else
        configvalue.saveValue('0292', '0',      'SMS ���� ���ݾȳ�')  ;

     configvalue.saveValue('0293', cbRecallDay.text, 'SMS ���� ������ ��������');
     configvalue.saveValue('0294', cbRecallTime.Text , 'SMS ���� ������ ���۽ð�');
     configvalue.saveValue('0295',  cbRecallMin.text   , 'SMS ���� ������ ���� ��');

     configvalue.saveValue('0296', cbRecallTimeSat.Text , 'SMS ���� ������ ����� ���۽ð�');
     configvalue.saveValue('0297',  cbRecallMinSat.text   , 'SMS ���� ������ ����� ���� ��');
     configvalue.saveValue('0298', memRecall.text, 'SMS ���� ������ ���۳���');
   //===========���� ��




     finally
         showmessage('����Ǿ����ϴ�.');
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
