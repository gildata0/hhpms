unit recallRepeat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,   ComCtrls;

type
  TrecallRepeat_f = class(TForm)
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker2: TDateTimePicker;
    btnApply: TButton;
    btnCancel: TButton;
    ListBox1: TListBox;
    RadioGroup1: TRadioGroup;
    edtDay: TEdit;
    edtWeek: TEdit;
    edtMonth: TEdit;
    edtYear: TEdit;
    Label4: TLabel;
    cbTime: TComboBox;
    cbMin: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  recallRepeat_f: TrecallRepeat_f;

implementation
uses  uConfig, uDM, DateUtils, recall  ;
{$R *.dfm}

procedure TrecallRepeat_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       action:=caFree;
end;

procedure TrecallRepeat_f.FormDestroy(Sender: TObject);
begin
        recallRepeat_f := nil;
end;

procedure TrecallRepeat_f.FormShow(Sender: TObject);
begin
     caption:= '���� �ݺ�����';
end;

procedure TrecallRepeat_f.btnCancelClick(Sender: TObject);
begin
      close;
end;

procedure TrecallRepeat_f.RadioGroup1Click(Sender: TObject);
var
   // ��,��,��,��,��,�� : Word;
      year, month, day, hour, minute, sec : word;
      inputDate: TdateTime;
      calcDate : TdateTime;
      currentDate : string;
begin

   currentDate := formatDateTime('YYYYMMDD',  dateTimePicker1.Datetime  );


   year := StrTointDef(Copy(currentDate , 1,4), 2015);
   month := StrTointDef(Copy(currentDate , 5,2),01);
   day := StrTointDef(Copy(currentDate , 7,2),01);
   inputDate := EncodeDate( year, month, day );// + EncodeTime( ��,��,��,0);

   //incYear, incMonth, incDay, incWeek
 // calcDate := IncYear( inputDate, 10 ); // 10�� ����

{
  ni := 0;
  repeat
    AA[ni] := 0;
    ni := ni + 1;
  until ni > 10;

  }
       if RadioGroup1.ItemIndex > 0 then
         btnApply.Enabled := true;

          ListBox1.Items.Clear;


       if  RadioGroup1.ItemIndex = 0 then
       exit;

               calcDate :=  inputDate ;
               repeat

                   if  calcDate <>  inputDate then

                   ListBox1.Items.Add(formatdatetime('YYYY-MM-DD', calcDate));

                    case radiogroup1.itemindex of
                       1:  calcDate := IncDay( CalcDate, StrTointDef(edtDay.text, 1) );  //����
                       2 : calcDate := IncWeek( CalcDate, StrTointDef(edtWeek.text, 1 ));   //����
                       3 : calcDate := IncMonth( CalcDate, StrTointDef(edtMonth.text, 1 ));   //�ſ�
                       4 : calcDate := IncYear( CalcDate, StrTointDef(edtYear.text, 1 ));   //�ų�

                    end;

               until
                   calcDate > datetimePicker2.Date;




end;




procedure TrecallRepeat_f.FormCreate(Sender: TObject);
begin

     caption:= '���� �ݺ� ����';
//     dm_f.configvalue.LoadGlobalData_db;
     edtDay.text:= configvalue.varRecallDay ;
     edtWeek.text:= configvalue.varRecallWeek ;
     edtMonth.text:= configvalue.varRecallMonth ;
     edtYear.text:= configvalue.varRecallYear ;
end;

end.




procedure TForm2.Button1Click(Sender: TObject);

var

  ��,��,��,��,��,�� : Word;

  �޾ƿ³�¥,

  ����ѳ�¥ : TDateTime;

begin

  // Edit1.Text := '200801011210';

  �� := StrTointDef(Copy(Edit1.Text, 1,4),2008);

  �� := StrTointDef(Copy(Edit1.Text, 5,2),04);

  �� := StrTointDef(Copy(Edit1.Text, 7,2),23);

  �� := StrTointDef(Copy(Edit1.Text, 9,2),01);

  �� := StrTointDef(Copy(Edit1.Text,11,2),01);

  �� := StrTointDef(Copy(Edit1.Text,13,2),00);


  �޾ƿ³�¥ := EncodeDate( ��,��,�� ) + EncodeTime( ��,��,��,0);

  Label1.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', �޾ƿ³�¥ );




  ����ѳ�¥ := IncYear( �޾ƿ³�¥, 10 ); // 10�� ����

  Label2.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', ����ѳ�¥ );


  ����ѳ�¥ := IncMonth( �޾ƿ³�¥, 10 ); // 10����  ����

  Label3.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', ����ѳ�¥ );


  ����ѳ�¥ := IncDay( �޾ƿ³�¥, 10 ); // 10�� ����

  Label4.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', ����ѳ�¥ );


  ����ѳ�¥ := IncWeek( �޾ƿ³�¥, 10 ); // 10�� ����

  Label5.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', ����ѳ�¥ );


  ����ѳ�¥ := IncHour( �޾ƿ³�¥, 10 ); // 10�ð� ����

  Label6.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', ����ѳ�¥ );


  ����ѳ�¥ := IncMinute( �޾ƿ³�¥, 10 ); // 10�� ����

  Label7.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', ����ѳ�¥ );


  ����ѳ�¥ := IncSecond( �޾ƿ³�¥, 10 ); // 10�� ����

  Label8.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', ����ѳ�¥ );


end;


