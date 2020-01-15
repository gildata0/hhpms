unit uPatientABC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, AdvObj, BaseGrid, AdvGrid;

type
  TPatientABC_f = class(TForm)
    grdCount: TAdvStringGrid;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    dt1: TDateTimePicker;
    dt2: TDateTimePicker;
    cbYear: TComboBox;
    cbMonth: TComboBox;
    btnSchDay: TButton;
    edtYY: TEdit;
    edtMM: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cbShowData: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure cbYearChange(Sender: TObject);
    procedure cbYearDropDown(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
    procedure cbMonthDropDown(Sender: TObject);
    procedure btnSchDayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdCountGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdCountGetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
  private
    { Private declarations }
     varCheck: boolean;

     isNotFormShow : boolean;
  public
    { Public declarations }
  end;

var
  PatientABC_f: TPatientABC_f;

implementation
uses uFunctions, uDm;

{$R *.dfm}

procedure TPatientABC_f.btnSchDayClick(Sender: TObject);
const

  selectPatABC  =
      'select chart, (select [Name] from ma_gogek_basic where chart= jinryo_p.chart) as paname,   '+#10+
      '(select refer_name from ma_gogek_basic  where chart= jinryo_p.chart) as referer,           '+#10+
      'sum(chong+bonin1-kamak) as tot,                                                            '+#10+
      'sum(chong) as chong, sum(chung) as chung, sum(bonin) as bonin,                             '+#10+
      'sum(bonin1) as bonin1 from jinryo_p                                                        '+#10+
      'where jin_day>=:jin_day1 and jin_day<=:jin_day2                                            '+#10+
      'group by chart                                                                             '+#10+
      'order by  tot desc                                                                         ';
var
   recCount : integer;
   title1, title2 : string;

begin
        grdCount.RowCount := 1; //reccount + 1;
       with Dm_f.SqlTemp do
       begin
              Close;
              Sql.Clear;

                  if RadioButton2.Checked then   //당월, 기간
                  begin
                      dt1.DateTime := dateBeginOfMonth(now);// strToDateTime( '2019-01-01');
                      dt2.DateTime := dateEndOfMonth(now);// strToDateTime( '2019-01-01');
                  end;

                   title1 := FormatDateTime('YYYY-MM-DD',  dt1.Date );
                   title2 := FormatDateTime('YYYY-MM-DD',  dt1.Date - 365) ;

               Sql.text := selectPatABC;
               paramByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD',  dt1.Date );
               paramByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD',  dt2.Date );
               open;
               if not IsEmpty then
               begin

                     grdCount.beginupdate;
                     while not eof do
                     begin
                         grdCount.addrow;
                         grdCount.Cells[1,  grdCount.RowCount - 1]:= fieldByname('chart').asString;
                         grdCount.Cells[2,  grdCount.RowCount - 1]:= fieldByname('paname').asString;
                         grdCount.Cells[3,  grdCount.RowCount - 1]:= fieldByname('referer').asString;
                         grdCount.floats[4,  grdCount.RowCount - 1]:= fieldByname('tot').asfloat;
                         grdCount.floats[5,  grdCount.RowCount - 1]:= fieldByname('chong').asfloat;
                         grdCount.floats[6,  grdCount.RowCount - 1]:= fieldByname('chung').asfloat;
                         grdCount.floats[7,  grdCount.RowCount - 1]:= fieldByname('bonin').asfloat;
                         grdCount.floats[8,  grdCount.RowCount - 1]:= fieldByname('bonin1').asfloat;

                         next;
                     end;

                    grdCount.endupdate;
               end;

       end;
       grdCount.AutoNumberCol(0);
end;

procedure TPatientABC_f.cbMonthChange(Sender: TObject);
begin

 if isNotFormShow then
     begin
          edtYY.Text  := cbYear.Text;
          edtMM.Text  := cbMonth.Text;
          dt1.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-01');
          dt2.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-' + inttostr(CalEndDate(formatdatetime('YYYY-MM-DD', dt1.date))));

     end;

end;

procedure TPatientABC_f.cbMonthDropDown(Sender: TObject);
begin
  isNotFormshow := true;
end;

procedure TPatientABC_f.cbYearChange(Sender: TObject);
begin
     if  isNotFormshow   then
     begin
          edtYY.Text := cbYear.Text;
          dt1.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-01');
          dt2.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-' + inttostr(CalEndDate(formatdatetime('YYYY-MM-DD', dt1.date))));
     end;

end;

procedure TPatientABC_f.cbYearDropDown(Sender: TObject);
begin

  isNotFormshow := true;

end;

procedure TPatientABC_f.FormCreate(Sender: TObject);
begin
    grdCount.Align := alClient;
    grdCount.HideColumn(1);
end;

procedure TPatientABC_f.FormShow(Sender: TObject);
var
     i, j, inow: integer;
     ii: string;
     sijakday, endday: string;
     sijakYY, endYY, jj: integer;
begin
      caption := '기간 환자별 매출 현황 ABC분석';


     isNotFormShow := False; // 폼 열때는 반응시키지 말자.
      i := strtoint(formatdatetime('dd', now));
     dt1.date := now;
     dt1.date := dt1.date - i + 1; //formatdatetime('yyyy-mm', now) + '-01';
     dt2.date := now;

     cbYear.items.Clear;

     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select isNull(max(jin_day), convert(char(10),getdate(),120))   as MaxJinday,           ');
          sql.add(' isNull(min(jin_day), convert(char(10),getdate(),120)) as MinJinDay from jinryo_p   ');//ma_plan_list  ');
          Open;
          sijakday := fieldByname('Minjinday').asString;
          endday := fieldByname('Maxjinday').asString;
     end;

     sijakYY := strtoint(copy(sijakday, 1, 4));
     endYY := strtoint(copy(endday, 1, 4));

     inow := endyy - sijakYY;
     edtYY.Text := inttostr(endYY);

     jj := endYY;
     j := inow + 1;

     for i := 0 to j do
     begin
          cbYear.items.Add(inttostr(jj));
          jj := jj - 1;
     end;
     cbYear.Itemindex := cbyear.Items.IndexOf(formatDatetime('YYYY', now));

     edtMM.Text := formatdatetime('MM', now);

     cbMonth.items.Clear;
     inow := strtoint(formatdatetime('MM', now));

     for i := 1 to 12 do
     begin
          cbMonth.items.Add(inttostr(i));
     end;

     cbMonth.Itemindex := inow - 1;




end;

procedure TPatientABC_f.grdCountGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          4..8:
               begin
                    hAlign := taRightJustify;
               end;
     end;
end;

procedure TPatientABC_f.grdCountGetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
begin
 case aCol of
          4..8:
               begin
                 //   FloatFormat := '#,0';
                    //  aPrefix:='\';
               end;
     end;

end;

end.
