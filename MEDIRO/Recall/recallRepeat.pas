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
     caption:= '리콜 반복설정';
end;

procedure TrecallRepeat_f.btnCancelClick(Sender: TObject);
begin
      close;
end;

procedure TrecallRepeat_f.RadioGroup1Click(Sender: TObject);
var
   // 년,월,일,시,분,초 : Word;
      year, month, day, hour, minute, sec : word;
      inputDate: TdateTime;
      calcDate : TdateTime;
      currentDate : string;
begin

   currentDate := formatDateTime('YYYYMMDD',  dateTimePicker1.Datetime  );


   year := StrTointDef(Copy(currentDate , 1,4), 2015);
   month := StrTointDef(Copy(currentDate , 5,2),01);
   day := StrTointDef(Copy(currentDate , 7,2),01);
   inputDate := EncodeDate( year, month, day );// + EncodeTime( 시,분,초,0);

   //incYear, incMonth, incDay, incWeek
 // calcDate := IncYear( inputDate, 10 ); // 10년 증가

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
                       1:  calcDate := IncDay( CalcDate, StrTointDef(edtDay.text, 1) );  //매일
                       2 : calcDate := IncWeek( CalcDate, StrTointDef(edtWeek.text, 1 ));   //매주
                       3 : calcDate := IncMonth( CalcDate, StrTointDef(edtMonth.text, 1 ));   //매월
                       4 : calcDate := IncYear( CalcDate, StrTointDef(edtYear.text, 1 ));   //매년

                    end;

               until
                   calcDate > datetimePicker2.Date;




end;




procedure TrecallRepeat_f.FormCreate(Sender: TObject);
begin

     caption:= '리콜 반복 설정';
//     dm_f.configvalue.LoadGlobalData_db;
     edtDay.text:= configvalue.varRecallDay ;
     edtWeek.text:= configvalue.varRecallWeek ;
     edtMonth.text:= configvalue.varRecallMonth ;
     edtYear.text:= configvalue.varRecallYear ;
end;

end.




procedure TForm2.Button1Click(Sender: TObject);

var

  년,월,일,시,분,초 : Word;

  받아온날짜,

  계산한날짜 : TDateTime;

begin

  // Edit1.Text := '200801011210';

  년 := StrTointDef(Copy(Edit1.Text, 1,4),2008);

  월 := StrTointDef(Copy(Edit1.Text, 5,2),04);

  일 := StrTointDef(Copy(Edit1.Text, 7,2),23);

  시 := StrTointDef(Copy(Edit1.Text, 9,2),01);

  분 := StrTointDef(Copy(Edit1.Text,11,2),01);

  초 := StrTointDef(Copy(Edit1.Text,13,2),00);


  받아온날짜 := EncodeDate( 년,월,일 ) + EncodeTime( 시,분,초,0);

  Label1.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', 받아온날짜 );




  계산한날짜 := IncYear( 받아온날짜, 10 ); // 10년 증가

  Label2.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', 계산한날짜 );


  계산한날짜 := IncMonth( 받아온날짜, 10 ); // 10개월  증가

  Label3.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', 계산한날짜 );


  계산한날짜 := IncDay( 받아온날짜, 10 ); // 10일 증가

  Label4.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', 계산한날짜 );


  계산한날짜 := IncWeek( 받아온날짜, 10 ); // 10주 증가

  Label5.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', 계산한날짜 );


  계산한날짜 := IncHour( 받아온날짜, 10 ); // 10시간 증가

  Label6.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', 계산한날짜 );


  계산한날짜 := IncMinute( 받아온날짜, 10 ); // 10분 증가

  Label7.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', 계산한날짜 );


  계산한날짜 := IncSecond( 받아온날짜, 10 ); // 10초 증가

  Label8.caption := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', 계산한날짜 );


end;


