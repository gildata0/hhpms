unit uDailyAmount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, AdvUtil, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TDailyAmount_f = class(TForm)
    Chart1: TChart;
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
    grdCount2: TAdvStringGrid;
    btnSchMonth: TButton;
    btnSchTeam: TButton;
    cbHidemark: TCheckBox;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Series1: TBarSeries;
    btnschYear: TButton;
    Series2: TBarSeries;
    cbShowData: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
    procedure btnSchDayClick(Sender: TObject);
    procedure btnSchMonthClick(Sender: TObject);
    procedure btnSchTeamClick(Sender: TObject);
    procedure cbHidemarkClick(Sender: TObject);
    procedure cbYearChange(Sender: TObject);
    procedure cbYearDropDown(Sender: TObject);
    procedure cbMonthDropDown(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure btnschYearClick(Sender: TObject);
    procedure cbShowDataClick(Sender: TObject);
  private
    { Private declarations }
     varCheck: boolean;

     isNotFormShow : boolean;
    procedure GraphChange(kind : integer; title, title1, title2: string);
    procedure DrawGraph(kind: integer; title:string);
  public
    { Public declarations }
  end;

var
  DailyAmount_f: TDailyAmount_f;

implementation

{$R *.dfm}

uses uFunctions, uDm;

procedure TDailyAmount_f.btnSchDayClick(Sender: TObject);
begin
     DrawGraph(1,(Sender as TButton).Caption);
end;

procedure TDailyAmount_f.btnSchMonthClick(Sender: TObject);
begin
     DrawGraph(2,(Sender as TButton).Caption);
end;

procedure TDailyAmount_f.btnSchTeamClick(Sender: TObject);
begin
      DrawGraph(3,(Sender as TButton).Caption);
end;

procedure TDailyAmount_f.btnschYearClick(Sender: TObject);
begin
     DrawGraph(5,(Sender as TButton).Caption);
end;

procedure TDailyAmount_f.cbMonthChange(Sender: TObject);
begin

 if isNotFormShow then
     begin
          edtYY.Text  := cbYear.Text;

          edtMM.Text := cbMonth.Text;
          dt1.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-01');
          dt2.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-' + inttostr(CalEndDate(formatdatetime('YYYY-MM-DD', dt1.date))));

     end;



end;

procedure TDailyAmount_f.cbMonthDropDown(Sender: TObject);
begin
     isNotFormshow := true;
end;

procedure TDailyAmount_f.cbYearChange(Sender: TObject);
begin
     if  isNotFormshow   then
     begin
          edtYY.Text := cbYear.Text;
          dt1.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-01');
          dt2.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-' + inttostr(CalEndDate(formatdatetime('YYYY-MM-DD', dt1.date))));
     end;
end;

procedure TDailyAmount_f.cbYearDropDown(Sender: TObject);
begin
  isNotFormshow := true;
end;

procedure TDailyAmount_f.cbShowDataClick(Sender: TObject);
begin
     grdCount2.Visible := cbShowData.Checked;
     grdCount.Visible  := cbShowData.Checked;
end;

procedure TDailyAmount_f.cbHidemarkClick(Sender: TObject);
begin
      chart1.Series[0].Marks.visible:=  cbHidemark.Checked;
      chart1.Series[1].Marks.visible:=  cbHidemark.Checked;
end;

procedure TDailyAmount_f.FormShow(Sender: TObject);
var
     i, j, inow: integer;
     ii: string;
     sijakday, endday: string;
     sijakYY, endYY, jj: integer;
begin
      caption := '기간 일별 매출 현황 - 전년 대비';


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


procedure TDailyAmount_f.GraphChange(kind:integer; title, title1, title2: string);
var
       i: integer;
begin
      chart1.Title.Text.Clear;
      chart1.Title.Text.Add(title);

       with chart1.Series[0] do
       begin

              visible:= true;
              Marks.visible:=  false;
              Clear;
              for i := 1 to grdcount.rowcount - 1 do
              begin
                     Add(grdcount.ints[2,i], grdcount.cells[1,i]);//,  clGreen);
              end;

              Title  := title1;// '1';
       end;



       with chart1.Series[1] do
       begin

              visible:= true;
              Marks.visible:=  false;
              Clear;
              for i := 1 to grdcount2.rowcount - 1 do
              begin
                     Add(grdcount2.ints[2,i], grdcount2.cells[1,i]);//, clYellow);
              end;
              Title  := title2;// '2';
       end;


       if kind = 5 then
       chart1.Series[1].Visible := false;

end;




procedure TDailyAmount_f.RadioButton1Click(Sender: TObject);
begin
     btnSchDay.caption   := '기간 일별 조회';
     btnSchMonth.caption := '기간 월별 조회';
     btnSchTeam.caption  := '기간 진료실별 조회';
end;

procedure TDailyAmount_f.RadioButton2Click(Sender: TObject);
begin
     btnSchDay.caption   := '당월 일별 조회';
     btnSchMonth.caption := '당해 월별 조회';
     btnSchTeam.caption  := '당월 진료실별 조회';
end;

procedure TDailyAmount_f.DrawGraph(kind : integer; title:string);
const

selectNow =
//     'select jin_day as 일자 , sum(chong+bonin1) as  총액,                      '+#10+
//     'sum(chung) as 청구액, sum(sunapAk) as 수납액, sum(bonin) as 급여본담,     '+#10+
//     'sum(bonin1) as 비급여본담 from jinryo_p                                   '+#10+
//     'where jin_day >= :jin_day1 and  jin_day <= :jin_day2                       '+#10+
//     'group by jin_day                                                           ';


' select                                                                                    '+#10+
'    regdate as 일자 ,                                                                       '+#10+
'    isnull(총액,0) as  총액,                                                              '+#10+
'    isnull(청구액,0) as 청구액,                                                         '+#10+
'       isnull(수납액,0) as 수납액,                                                      '+#10+
'    isnull(급여본담,0) as 급여본담,                                                   '+#10+
'    isnull(비급여본담,0) as 비급여본담                                              '+#10+
'                                                                                              '+#10+
' from                                                                                         '+#10+
' (                                                                                            '+#10+
'  select convert(char(10),dateadd(d,number,:jin_day1),120) as regdate                      '+#10+
'  from master..spt_values with(nolock)                                                        '+#10+
'  where type = ''P''                                                                         '+#10+
'  and convert(char(10),dateadd(d,number,:jin_day1),120) < DateAdd("m", 1, :jin_day1)    '+#10+
' ) as t1                                                                                      '+#10+
' left join                                                                                    '+#10+
' (                                                                                            '+#10+
'  select jin_day as 일자 ,                                                                  '+#10+
'     sum(chong+bonin1) as  총액,                                                            '+#10+
'     sum(chung) as 청구액,                                                                 '+#10+
'     sum(sunapAk) as 수납액,                                                               '+#10+
'     sum(bonin) as 급여본담,                                                              '+#10+
'     sum(bonin1) as 비급여본담 from jinryo_p                                             '+#10+
' where jin_day >=:jin_day1 and  jin_day <= :jin_day2                                    '+#10+
' group by jin_day                                                                             '+#10+
' ) as t2                                                                                      '+#10+
' on t1.regdate = t2.일자                                                                    '+#10+
' group by t1.regdate, t2.일자, 총액,청구액,수납액,급여본담,비급여본담      '+#10+
' order by t1.regdate ';




selectMonth =
     'select  SUBSTRING(convert(char(10),jin_day,121) , 1, 7)  as 일자 , sum(chong+bonin1) as  총액,                      '+#10+
     'sum(chung) as 청구액, sum(sunapAk) as 수납액, sum(bonin) as 급여본담,                      '+#10+
     'sum(bonin1) as 비급여본담 from jinryo_p                                                    '+#10+
     'where jin_day >= :jin_day1 and  jin_day <= :jin_day2                                       '+#10+
     'group by  SUBSTRING(convert(char(10),jin_day,121) , 1, 7)                                  '+#10+
     'order by SUBSTRING(convert(char(10),jin_day,121) , 1, 7)                                   ';


//년도별 조회
selectYear =
     'select  SUBSTRING(convert(char(10),jin_day,121) , 1, 4)  as 일자 , sum(chong+bonin1) as  총액,                      '+#10+
     'sum(chung) as 청구액, sum(sunapAk) as 수납액, sum(bonin) as 급여본담,                      '+#10+
     'sum(bonin1) as 비급여본담 from jinryo_p                                                    '+#10+
     'where jin_day >= :jin_day1 and  jin_day <= :jin_day2                                       '+#10+
     'group by  SUBSTRING(convert(char(10),jin_day,121) , 1, 4)                                  '+#10+
     'order by SUBSTRING(convert(char(10),jin_day,121) , 1, 4)                                   ';


selectTeam_Month =

  ' select teamName as 일자,                                                             '+#10+
  '  isnull(총액,0) as  총액,                                                    '+#10+
  '  isnull(청구액,0) as 청구액,                                               '+#10+
  '  isnull(수납액,0) as 수납액,                                               '+#10+
  '  isnull(급여본담,0) as 급여본담,                                         '+#10+
  '  isnull(비급여본담,0) as 비급여본담                                    '+#10+
  '  from tblTeamTemp    as t1                                                       '+#10+
  '                                                                                   '+#10+
  '  left join                                                                       '+#10+
  ' (select                                                                          '+#10+
  '   isNull(( case  when  team  in                                                  '+#10+
  '    (                                                                             '+#10+
  '     ''BRST'', ''PAIN'',  ''RADX'', ''THYR'',  ''EECP'',''INTER''                 '+#10+
  '     )      then team else ''ETC'' end)  ,''ETC'') as   teamCode,                 '+#10+
  ' 	                                                                               '+#10+
  ' 	isNull( (Select disp from ma_basic                                             '+#10+
  '       where  (code like  ''093%'') and (code <> ''09300'')                       '+#10+
  '       and inuse <>  ''0''   and val= case  when  team  in                        '+#10+
  '    (                                                                             '+#10+
  '    ''BRST'', ''PAIN'',  ''RADX'', ''THYR'',  ''EECP'',''INTER''                  '+#10+
  '     )      then team else ''ETC'' end  )  ,''기타'') as 일자,                    '+#10+
  '                                                                                  '+#10+
  ' 	 sum(chong+bonin1) as  총액,                                                   '+#10+
  '    sum(chung) as 청구액,                                                         '+#10+
  '    sum(sunapAk) as 수납액,                                                       '+#10+
  '    sum(bonin) as 급여본담,                                                       '+#10+
  '    sum(bonin1) as 비급여본담      from jinryo_p                                  '+#10+
  ' where jin_day >=:jin_day1 and  jin_day <= :jin_day2                              '+#10+
  ' group by    case  when  team  in                                                 '+#10+
  '    (                                                                             '+#10+
  '     ''BRST'', ''PAIN'',  ''RADX'', ''THYR'',  ''EECP'',''INTER''                 '+#10+
  '     )      then team else ''ETC'' end ) as t2                                    '+#10+
  ' 	on t1.teamCode = t2.teamCode                                                   '+#10+
  ' group by    t1.teamcode, t1.teamname,   t2.teamCode,  총액,청구액,수납액,급여본담,비급여본담         '+#10+
  '                                                                                  '+#10+
  ' order by  t1.teamCode, t2.teamCode                                                              ';

//          ' select                                                                        '+#10+
//          '   ( case  when  team  in                                                      '+#10+
//          '    (                                                                          '+#10+
//          '     ''BRST'',                                                                 '+#10+
//          '     ''PAIN'',                                                                 '+#10+
//          '     ''RADX'',                                                                 '+#10+
//          '     ''THYR'',                                                                 '+#10+
//          '     ''EECP'',                                                                 '+#10+
//          '     ''INTER''                                                                 '+#10+
//          '     )                                                                         '+#10+
//          '        then team else ''ETC'' end)  as   ''teamCode'',                        '+#10+
//          ' 	isNull( (Select disp from ma_basic                                          '+#10+
//          '       where  (code like  ''093%'') and (code <> ''09300'')                    '+#10+
//          '       and inuse <>  ''0''   and val= case  when  team  in                     '+#10+
//          '    (                                                                          '+#10+
//          '     ''BRST'',                                                                 '+#10+
//          '     ''PAIN'',                                                                 '+#10+
//          '     ''RADX'',                                                                 '+#10+
//          '     ''THYR'',                                                                 '+#10+
//          '     ''EECP'',                                                                 '+#10+
//          '     ''INTER''                                                                 '+#10+
//          '     )      then team else ''ETC'' end                                         '+#10+
//          '           )  ,''기타'') as 일자,                                          '+#10+
//          '                                                                               '+#10+
//          ' 	 sum(chong+bonin1) as  총액,                                              '+#10+
//          '    sum(chung) as 청구액,                                                   '+#10+
//          '    sum(sunapAk) as 수납액,                                                 '+#10+
//          '    sum(bonin) as 급여본담,                                                '+#10+
//          '    sum(bonin1) as 비급여본담      from jinryo_p                          '+#10+
//          ' where jin_day >=:jin_day1 and  jin_day <= :jin_day2                           '+#10+
//          ' group by    case  when  team  in                                              '+#10+
//          '    (                                                                          '+#10+
//          '     ''BRST'',                                                                 '+#10+
//          '     ''PAIN'',                                                                 '+#10+
//          '     ''RADX'',                                                                 '+#10+
//          '     ''THYR'',                                                                 '+#10+
//          '     ''EECP'',                                                                 '+#10+
//          '     ''INTER''                                                                 '+#10+
//          '     )      then team else ''ETC'' end                                         '+#10+
//          '                                                                               '+#10+
//          ' order by case  when  team  in                                                 '+#10+
//          '    (                                                                          '+#10+
//          '     ''BRST'',                                                                 '+#10+
//          '     ''PAIN'',                                                                 '+#10+
//          '     ''RADX'',                                                                 '+#10+
//          '     ''THYR'',                                                                 '+#10+
//          '     ''EECP'',                                                                 '+#10+
//          '     ''INTER''                                                                 '+#10+
//          '     )      then team else ''ETC'' end                                         ';



//      'select                                                                           '+#10+
//      '(Select disp from ma_basic                                                       '+#10+
//      'where  (code like  ''093%'') and (code <> ''09300'')                             '+#10+
//      'and inuse <>  ''0''   and val= jinryo_p.team ) as 일자,                          '+#10+
//      '	  sum(chong+bonin1) as  총액,  sum(chung) as 청구액, sum(sunapAk) as 수납액,    '+#10+
//      '	   sum(bonin) as 급여본담, sum(bonin1) as 비급여본담 from jinryo_p                  '+#10+
//      'where jin_day >= :jin_day1  and  jin_day <= :jin_day2                            '+#10+
//      '                                                                                 '+#10+
//      '	and (Select disp from ma_basic                                                       '+#10+
//      '	      where  (code like  ''093%'') and (code <> ''09300'')                           '+#10+
//      '	      and inuse <>  ''0''   and val= jinryo_p.team )  in  (''유방클리닉'',           '+#10+
//      '	''심장순환클리닉'',                                                                  '+#10+
//      '	''인터벤션클리닉'',                                                                  '+#10+
//      '	''통증클리닉'',                                                                      '+#10+
//      '	''영상진단클리닉'',                                                                  '+#10+
//      ' ''갑상선클리닉'')                                                                     '+#10+
//      '                                                                                 '+#10+
//      'group by  team                                                                   '+#10+
//      'order by  team                                                                   ';

selectTeam_Year=
      'select                                                                           '+#10+
      '(Select disp from ma_basic                                                       '+#10+
      'where  (code like  ''093%'') and (code <> ''09300'')                             '+#10+
      'and inuse <>  ''0''   and val= jinryo_p.team ) as 일자,                          '+#10+
      '	  sum(chong+bonin1) as  총액,  sum(chung) as 청구액, sum(sunapAk) as 수납액,    '+#10+
      '	   sum(bonin) as 급여본담, sum(bonin1) as 비급여본담 from jinryo_p                  '+#10+
      'where jin_day >= :jin_day1  and  jin_day <= :jin_day2                            '+#10+
      '                                                                                 '+#10+
      'group by  team                                                                   '+#10+
      'order by  team                                                                   ';


var

   recCount : integer;
   title1, title2 : string;
{일자
총액
청구액
급여본담
비급여본담
수납액
}

begin
//
     //  recCount := recordCount;

        grdCount.RowCount := 1; //reccount + 1;
       with Dm_f.SqlTemp do
       begin
              Close;
              Sql.Clear;

             case kind  of
               1:
                 begin
                   //당월 일별 조회


                   if RadioButton2.Checked then
                  begin
                      dt1.DateTime := dateBeginOfMonth(now);// strToDateTime( '2019-01-01');
                      dt2.DateTime := dateEndOfMonth(now);// strToDateTime( '2019-01-01');
                  end;

                   title1 := FormatDateTime('YYYY-MM',  dt1.Date );
                   title2 := FormatDateTime('YYYY-MM',  dt1.Date - 365) ;

                   Sql.text := selectNow; //day
                 end;
               2:
               begin
                    if RadioButton2.Checked then
                  begin                     //당해 월별 조회
                   dt1.DateTime := dateBeginOfYear(now);// strToDateTime( '2019-01-01');
                   dt2.DateTime := dateEndOfYear(now);// strToDateTime( '2019-01-01');
                   end;

                   title1 := FormatDateTime('YYYY',  dt1.Date );
                   title2 := FormatDateTime('YYYY',  dt1.Date - 365) ;

                   Sql.text := selectMonth; //month
               end;
               3:
               begin
                   //당월 일별 조회
                      if RadioButton2.Checked then
                  begin
                   dt1.DateTime := dateBeginOfMonth(now);// strToDateTime( '2019-01-01');
                   dt2.DateTime := dateEndOfMonth(now);// strToDateTime( '2019-01-01');
                   end;

                   title1 := FormatDateTime('YYYY-MM',  dt1.Date );
                   title2 := FormatDateTime('YYYY-MM',  dt1.Date - 365) ;

                   Sql.text     := selectTeam_month; //team
               end;
               4:
               begin
                   //당해년도 조회
                      if RadioButton2.Checked then
                  begin
                   dt1.DateTime := dateBeginOfYear(now);// strToDateTime( '2019-01-01');
                  dt2.DateTime := dateEndOfYear(now);// strToDateTime( '2019-01-01');
                  end;

                   title1 := FormatDateTime('YYYY',  dt1.Date );
                   title2 := FormatDateTime('YYYY',  dt1.Date - 365) ;

                   Sql.text     := selectTeam_year; //team
               end;

               5:
               begin
                   //년도별 조회
                 if RadioButton2.Checked then
                  begin
                   dt1.DateTime := dateBeginOfMonth(now);// strToDateTime( '2019-01-01');
                   dt2.DateTime := dateEndOfMonth(now);// strToDateTime( '2019-01-01');
                   end;
                   Sql.text     := selectYear;
               end;


             end;



              ParamByName('JIn_Day1').AsString := FormatDateTime('YYYY-MM-DD',  dt1.Date);
              ParamByName('JIn_Day2').AsString := FormatDateTime('YYYY-MM-DD',  dt2.Date);
              Open;

              //ToDo:view_gogek 에 ReFer, o_Phone, 참고사항 을 가져와야한다.
              if not IsEmpty then
              begin

                     grdCount.beginupdate;



                     while not eof do
                     begin
                         grdCount.addrow;
                         grdCount.Cells[1,  grdCount.RowCount - 1]:= fieldByname('일자').asString;
                         grdCount.Cells[2,  grdCount.RowCount - 1]:= fieldByname('총액').asString;
                         grdCount.Cells[3,  grdCount.RowCount - 1]:= fieldByname('청구액').asString;
                         grdCount.Cells[4,  grdCount.RowCount - 1]:= fieldByname('수납액').asString;
                         grdCount.Cells[5,  grdCount.RowCount - 1]:= fieldByname('급여본담').asString;
                         grdCount.Cells[6,  grdCount.RowCount - 1]:= fieldByname('비급여본담').asString;

                         next;
                     end;

                    grdCount.endupdate;
              end;


       end;


       grdCount2.RowCount := 1; //reccount + 1;

       with Dm_f.SqlTemp do
       begin
              Close;
              Sql.Clear;


             case kind  of
               1:
                  begin

                     Sql.text := selectNow; //day
                  end;
               2:
                  begin
                    Sql.text := selectMonth; //month
                  end;
               3:
                 begin
                   Sql.text := selectTeam_month; //team
                 end;
               4:
                 begin
                  Sql.text := selectTeam_year; //team
                 end;
               5:
                 begin
                   Sql.text := selectyear; //년도별로 보기
                 end;
             end;

              case kind  of
              1..4:
                  begin

                    ParamByName('JIn_Day1').AsString := FormatDateTime('YYYY-MM-DD',  dt1.Date - 365);
                    ParamByName('JIn_Day2').AsString := FormatDateTime('YYYY-MM-DD',  dt2.Date - 365);

                  end;
              5:
                 begin

                    ParamByName('JIn_Day1').AsString := FormatDateTime('YYYY-MM-DD',  dt1.Date );
                    ParamByName('JIn_Day2').AsString := FormatDateTime('YYYY-MM-DD',  dt2.Date);

                 end;
              end;
              Open;

              //ToDo:view_gogek 에 ReFer, o_Phone, 참고사항 을 가져와야한다.
              if not IsEmpty then
              begin

                     grdCount2.beginupdate;

                     while not eof do
                     begin
                         grdCount2.addrow;
                         grdCount2.Cells[1,  grdCount2.RowCount - 1]:= fieldByname('일자').asString;
                         grdCount2.Cells[2,  grdCount2.RowCount - 1]:= fieldByname('총액').asString;
                         grdCount2.Cells[3,  grdCount2.RowCount - 1]:= fieldByname('청구액').asString;
                         grdCount2.Cells[4,  grdCount2.RowCount - 1]:= fieldByname('수납액').asString;
                         grdCount2.Cells[5,  grdCount2.RowCount - 1]:= fieldByname('급여본담').asString;
                         grdCount2.Cells[6,  grdCount2.RowCount - 1]:= fieldByname('비급여본담').asString;

                         next;
                     end;

                    grdCount2.endupdate;
              end;


       end;


     GraphChange(kind, title, title1, title2);

end;


end.
