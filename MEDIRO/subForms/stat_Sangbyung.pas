unit stat_Sangbyung;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls, ComCtrls,
  AdvProgressBar, tmsAdvGridExcel, asgprev, printers, ExtCtrls, AdvUtil,
  AdvGlowButton;

type
  Tstat_sangbyung_f = class(TForm)
    SaveDialog1: TSaveDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    AdvPreviewDialog1: TAdvPreviewDialog;
    Splitter1: TSplitter;
    Panel2: TPanel;
    grdprm: TAdvStringGrid;
    Panel3: TPanel;
    btnExcel: TButton;
    btnPrint: TButton;
    Panel4: TPanel;
    AdvStringGrid1: TAdvStringGrid;
    Panel5: TPanel;
    btnExcel2: TButton;
    spSkinPanel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnXls: TAdvGlowButton;
    dt1: TDateTimePicker;
    dt2: TDateTimePicker;
    edtYY: TEdit;
    edtMM: TEdit;
    cbTeamName: TComboBox;
    cbYear: TComboBox;
    cbMonth: TComboBox;
    cbHyg: TComboBox;
    cbNew: TCheckBox;
    Button3: TButton;
    progressbar: TAdvProgressBar;
    cbKind: TComboBox;
    Label1: TLabel;
    cbTeam: TComboBox;
    btnSch: TButton;
    procedure grdprmGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormCreate(Sender: TObject);
    procedure grdprmGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure btnExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure grdprmClickSort(Sender: TObject; ACol: Integer);
    procedure btnPrintClick(Sender: TObject);
    procedure grdprmClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStringGrid1DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid1ClickSort(Sender: TObject; ACol: Integer);
    procedure btnExcel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSchClick(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
  private
    procedure comboset;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stat_sangbyung_f: Tstat_sangbyung_f;

implementation

uses uDM,  uGogekData, uFunctions, uConfig;

{$R *.dfm}

procedure Tstat_sangbyung_f.grdprmGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
      if aRow = 0 then
         HAlign  := taCenter;

      case aCol of
          0, 3:
             HAlign  := taCenter;

          4:
             HAlign  := taRightJustify;

          else
             HAlign  := taLeftJustify;
      end;
end;

procedure Tstat_sangbyung_f.FormCreate(Sender: TObject);
begin
   //   grdPrm.Align := alLeft;
      dt1.Date:=now;
      dt2.Date:=now;
end;

procedure Tstat_sangbyung_f.grdprmGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          4:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure Tstat_sangbyung_f.btnExcelClick(Sender: TObject);
begin

    advgridexcelio1.AdvStringGrid := grdPrm;

     savedialog1.fileName := cbKind.text +'_'+ FormatDateTime('YYYY-MM-DD',  dt1.Date)+'_'+
                   FormatDateTime('YYYY-MM-DD',   dt2.Date)   + '.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;


end;

procedure Tstat_sangbyung_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      action:=caFree;
end;

procedure Tstat_sangbyung_f.FormDestroy(Sender: TObject);
begin
       stat_sangbyung_f:=nil;
end;

procedure Tstat_sangbyung_f.FormShow(Sender: TObject);
begin
      caption:= '기간별 처방 통계' ;
      comboset;
end;

procedure Tstat_sangbyung_f.grdprmClickSort(Sender: TObject;
  ACol: Integer);
begin
         grdPrm.AutoNumberCol(0);
end;

procedure Tstat_sangbyung_f.btnPrintClick(Sender: TObject);
begin
     with grdprm.printsettings do
     begin
          Fixedheight := 80; // Strtoint(edit2.text) * 10;
          Leftsize :=50;// 5 * 10;
          Headersize := 10 * 10;
          FooterSize := 10 * 10;
          TitleSpacing := 100;
          //(ppNone,ppTopLeft,ppTopRight,ppTopCenter,ppBottomLeft,   ppBottomRight,ppBottomCenter);

          date:= ppBottomLeft;
          time:= ppBottomLeft;
          title:=  ppTopCenter;
          PageNr:= ppBottomRight;
          PagePrefix := 'Page.';
          PageSuffix:= '';
          dateformat:= 'YYYY-MM-DD';

          TitleText := stat_sangbyung_f.Caption + '('
              + formatDatetime('YYYY-MM-DD',dt1.date)
              +'~'+ formatDatetime('YYYY-MM-DD',dt2.date) +')';

          FitToPage :=fpAlways;//fpGrow;//fpAlways;//fpShrink; //fpNever,fpGrow,fpShrink,fpAlways,fpCustom

          // if Checkbox1.Checked then
          //   Borders := pbSingle
          // else
          //   Borders := pbNoborder;
          Orientation :=     poPortrait;  //   poLandScape;//
     end;

     AdvPreviewDialog1.Grid := grdPrm;
     AdvPreviewDialog1.Execute;

end;

procedure Tstat_sangbyung_f.btnSchClick(Sender: TObject);
const

//--처방약 통계
//sqlText_pharmacy = 'SELECT CODE as 코드 ,SU_KOR_NAME as 항목명 , SUM(JIN_QTY*JIN_ILSU* DIV) as 수량  FROM WONWE_S JOIN SUGA ON SUGA.SU_KEY= WONWE_S.CODE ' +#10#13+
//           ' WHERE JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2 '+#10#13+
//           ' GROUP BY CODE ,SU_KOR_NAME                        '+#10#13+
//           ' ORDER BY CODE                                     ';

//처방통계
//sqlText_pharmacy =
//     'SELECT CODE as 코드 ,SU_KOR_NAME as 항목명 , SUM(JIN_QTY*JIN_ILSU* DIV) as 수량,  SUGA.su_gu3 as 구분  '+#10#13+
//     'FROM WONWE_S JOIN SUGA ON SUGA.SU_KEY= WONWE_S.CODE                                         '+#10#13+
//     '     WHERE JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2                                    '+#10#13+
//     '     GROUP BY CODE ,SU_KOR_NAME , SUGA.su_gu3                                               '+#10#13+
//     'union all                                                                                   '+#10#13+
//     'select su_key,SU_KOR_NAME ,  SUM(JIN_QTY*JIN_ILSU* DIV),  su_gu3 as 구분  from jinryo_s                       '+#10#13+
//     ' where su_gu3 in  (''09'',''10'',''11'',''12'',''13'',''14'',''15'',''16'',''17'',''18'') and  JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2                  '+#10#13+
//     ' GROUP BY su_key ,SU_KOR_NAME, su_gu3                                                                 ';

sqlText_pharmacy = ' SELECT su_key as 코드, Su_KOR_NAME as 항목명, COUNT(su_key)  as 수량 , su_gu3 as 구분 FROM JINRYO_s ' +#10#13+
           ' WHERE su_gu3 in  (''09'',''10'',''11'',''12'',''13'',''14'',''15'',''16'',''17'',''18'') and JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2 and su_key <> '''' '+#10#13+
           ' GROUP BY su_key, Su_KOR_NAME ,su_gu3                ';


//--상병통계
sqlText_sangbyng =
           ' SELECT S_KEY1 as 코드, sang1 as 항목명, COUNT(S_KEY1)  as 수량,  '''' as 구분,  '''' as jejosa FROM JINRYO_O ' +#10#13+
//           ' SELECT S_KEY1 as 코드, S_KOR_NAME as 항목명, COUNT(S_KEY1)  as 수량,  '''' as 구분 FROM JINRYO_O ' +#10#13+
//           '  JOIN SANGBYUNG   ON SANGBYUNG.S_KEY= JINRYO_O.S_KEY1 ' +#10#13+
           ' WHERE JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2 '+#10#13+
           ' GROUP BY S_KEY1,  sang1                      ';

//--처치통계
//   case when su_gu3 in ('09','10', '13','14') then  jin_qty * dan_qty * div
//       else jin_qty * dan_qty * jin_ilsu
//	   end ,
 {
'09'
'10'
12 //주사제
13
14
15  //주사행위
18
19
23
25
26
29
30
31
32
39
40
42
43
50
   }
//--처방통계
sqlText_treat = ' SELECT su_key as 코드, Su_KOR_NAME as 항목명,' +#10#13+
           ' (select top 1 jejosa from suga where su_key=JINRYO_s.su_key order by su_apply desc   ) as jejosa  , '+#10+
//           ' COUNT(su_key)  as 수량 ,' +#10#13+
           '            sum( jin_qty * dan_qty * jin_ilsu) as 수량 ,' +#10#13+
//           '  case when su_gu3 in (''09'',''10'', ''13'',''14'') then  sum(jin_qty * dan_qty * div )  ' +#10#13+
//           '       else sum( jin_qty * dan_qty * jin_ilsu)                                     ' +#10#13+
//           '	   end as 수량,                                                                    ' +#10#13+
           '	                                                                      ' +#10#13+
           ' su_gu3 as 구분 FROM JINRYO_s ' +#10#13+
           ' WHERE JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2 and su_key <> '''' '+#10+
           '  and (su_gu1=''2''  or su_gu1=''4'' )  '+#10#13+
           ' GROUP BY su_key, Su_KOR_NAME ,su_gu3                ';

//--재료통계
sqlText_mat = ' SELECT su_key as 코드, Su_KOR_NAME as 항목명, '+#10+
       //    ' COUNT(su_key)  as 수량 , '+#10+
       //           ' COUNT(su_key)  as 수량 ,' +#10#13+

           ' (select top 1 jejosa from suga where su_key=JINRYO_s.su_key  order by su_apply desc  ) as jejosa  , '+#10+
           '  case when su_gu3 in (''09'',''10'',''12'', ''13'',''14'') then  sum(jin_qty * dan_qty * div)   ' +#10#13+
           '       else sum(jin_qty * dan_qty * jin_ilsu )                                    ' +#10#13+
           '	   end as 수량,                                                                    ' +#10#13+
           ' su_gu3 as 구분 FROM JINRYO_s                 ' +#10#13+
           ' WHERE                                                                                                                  ' +#10#13+
           '( JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2 ) and (su_key <> '''' )                                                 ' +#10#13+
           '  and (su_gu1=''1''  or su_gu1=''3'' )  '+#10#13+
//           ' and ( (su_gu3 in  (''32''))                                                 ' +#10#13+
//           ' or (su_gu3 in  (''09'',''10'',''11'',''12'',''13'',''14'',''15'',''16'',''17'',''18'')  and (except_code <> '''')  ))  ' +#10#13+
           ' GROUP BY su_key, Su_KOR_NAME ,su_gu3                ';

var
    recCount : integer;
begin
    //  grdPrm.FloatFormat := '%.0n';
      grdPrm.FloatFormat := '%.2f';
       with Dm_f.SqlTemp do
       begin
              Close;
              Sql.Clear;
              case cbKind.ItemIndex of
                   0:
                   begin
                      exit;
                   end;
                   1:
                   begin
                       Sql.text := sqlText_pharmacy;
                   end;
                   2:
                   begin
                       Sql.text := sqlText_sangbyng;

                   end;
                   3:
                   begin
                       Sql.text := sqlText_treat;

                   end;
                   4:
                   begin
                       Sql.text := sqlText_mat;

                   end;


              end;
                   ParamByName('JIn_Day1').AsString := FormatDateTime('YYYY-MM-DD',
                     dt1.Date);
                   ParamByName('JIn_Day2').AsString := FormatDateTime('YYYY-MM-DD',
                     dt2.Date);


        //      if cbTeam.itemindex > 0 then
        //      begin
       //              Sql.text := Sql.text + select_newon3;
       //              ParamByName('team').AsString := inttostr(cbteam.itemindex);
       //       end;
      //        Sql.text := Sql.text + select_newon4;
              Open;

              //ToDo:view_gogek 에 ReFer, o_Phone, 참고사항 을 가져와야한다.
              if not IsEmpty then
              begin

                     recCount := recordCount;
                     grdprm.RowCount := 1; //reccount + 1;
                     grdprm.beginupdate;



                     while not eof do
                     begin
                         grdPrm.AddRow;
                         grdPrm.Cells[1, grdprm.RowCount-1] := fieldByName('코드').asString;
                         grdPrm.Cells[2, grdprm.RowCount-1] := fieldByName('항목명').asString;
                         grdPrm.Cells[3, grdprm.RowCount-1] := fieldByName('구분').asString;
                         grdPrm.floats[4, grdprm.RowCount-1] := fieldByName('수량').asFloat;
                         grdPrm.Cells[5, grdprm.RowCount-1] := fieldByName('jejosa').asString;

                         next;
                     end;
                         grdPrm.AutoNumberCol(0);
                         grdprm.Endupdate;
              end;
         end;

end;

procedure Tstat_sangbyung_f.grdprmClickCell(Sender: TObject; ARow,
  ACol: Integer);
const

     //--상병통계
     sqlText_sangbyng =
           ' SELECT  *, (select name from ma_gogek_basic where chart=JINRYO_O.chart  ) as sName from JINRYO_O  ' +#10#13+
           ' WHERE JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2 and  s_key1 =:su_key ';

    //처방통계
    sqlText_pharmacy =
           ' select *, (select name from ma_gogek_basic where chart=JINRYO_s.chart  ) as sName FROM JINRYO_s '  +#10#13+
           ' WHERE JIN_DAY >=:jin_day1 AND JIN_DAY <= :jin_Day2    and su_key = :su_key  ';

//    sqlText_pharmacy =
//        'select * FROM  wonwe_p p join WONWE_S  s  on p.seqno=s.seqno and p.jin_day=s.Jin_day  and  code =:su_key '  +#10#13+
//           ' WHERE JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2';


    //--처치통계
    sqlText_treat =
         ' SELECT *, (select name from ma_gogek_basic where chart=JINRYO_s.chart  ) as sName FROM JINRYO_s ' +#10#13+
         ' WHERE JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2 and su_key = :su_key ' ;

    //--재료통계
    sqlText_mat =
         ' SELECT *, (select name from ma_gogek_basic where chart=JINRYO_s.chart  ) as sName FROM JINRYO_s ' +#10#13+
         ' WHERE JIN_DAY >=:jin_day1 AND  JIN_DAY <= :jin_Day2 and su_key = :su_key ' ;


 var
    recCount : integer;
begin
       if aRow <= 0 then
       exit;

      AdvStringGrid1.FloatFormat := '%.2f';

       with Dm_f.SqlTemp do
       begin
              Close;
              Sql.Clear;

              case cbKind.ItemIndex of
                   0:
                   begin
                      exit;
                   end;
                   1:
                   begin
                       Sql.text := sqlText_pharmacy;
                   end;
                   2:
                   begin
                       Sql.text := sqlText_sangbyng;

                   end;
                   3:
                   begin
                       Sql.text := sqlText_treat;

                   end;
                   4:
                   begin
                       Sql.text := sqlText_mat;

                   end;
              end;

              ParamByName('JIn_Day1').AsString := FormatDateTime('YYYY-MM-DD',
                  dt1.Date);
              ParamByName('JIn_Day2').AsString := FormatDateTime('YYYY-MM-DD',
                  dt2.Date);

              ParamByName('su_key').AsString :=  grdPrm.Cells[1, ARow];
              Open;

              //ToDo:view_gogek 에 ReFer, o_Phone, 참고사항 을 가져와야한다.
              if not IsEmpty then
              begin

                     recCount := recordCount;
                     AdvStringGrid1.RowCount := 1; //reccount + 1;
                     AdvStringGrid1.beginupdate;



                     while not eof do
                     begin
                         AdvStringGrid1.AddRow;



                          case cbKind.ItemIndex of
                               0:
                               begin
                                  exit;
                               end;
                               1, 3, 4: //처방 //처치 //재료
                               begin

                                   AdvStringGrid1.Cells[1, AdvStringGrid1.RowCount-1] := fieldByName('jin_day').asString;
                                   AdvStringGrid1.Cells[2, AdvStringGrid1.RowCount-1] := fieldByName('chart').asString;
                                   AdvStringGrid1.cells[3, AdvStringGrid1.RowCount-1] := fieldByName('sName').asString;
                                   AdvStringGrid1.cells[4, AdvStringGrid1.RowCount-1] := fieldByName('su_key').asString;
                                   AdvStringGrid1.cells[5, AdvStringGrid1.RowCount-1] := fieldByName('su_kor_name').asString;
                                   AdvStringGrid1.floats[6, AdvStringGrid1.RowCount-1] := fieldByName('jin_qty').asFloat;
                                   AdvStringGrid1.floats[7, AdvStringGrid1.RowCount-1] := fieldByName('dan_qty').asFloat;
                                   AdvStringGrid1.floats[8, AdvStringGrid1.RowCount-1] := fieldByName('jin_ilsu').asFloat;
                               end;
                               2: //상병
                               begin

                                   AdvStringGrid1.Cells[1, AdvStringGrid1.RowCount-1] := fieldByName('jin_day').asString;
                                   AdvStringGrid1.Cells[2, AdvStringGrid1.RowCount-1] := fieldByName('chart').asString;
                                   AdvStringGrid1.cells[3, AdvStringGrid1.RowCount-1] := fieldByName('sName').asString;
                                   AdvStringGrid1.cells[4, AdvStringGrid1.RowCount-1] := fieldByName('s_key1').asString;
                                   AdvStringGrid1.cells[5, AdvStringGrid1.RowCount-1] := fieldByName('sang1').asString;

                               end;
                           end;




                         next;
                     end;
                         AdvStringGrid1.AutoNumberCol(0);
                         AdvStringGrid1.Endupdate;
              end;
         end;
end;
procedure Tstat_sangbyung_f.AdvStringGrid1DblClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin
     screen.cursor := crHourGlass;
     if arow > 0 then
     begin
          AdvStringGrid1.Enabled := false;
          if AdvStringGrid1.Cells[2, arow] <> '' then
          begin
               if LoadGogekData_chart(AdvStringGrid1.Cells[2, arow], progressbar, varViewALL) =
                    true then
               begin
                    //gogek_f.isLoading := true;
                    // FieldClear;

                  //  main_f.fieldSet;
                    // grdDaegi.setfocus;
               end;

          end;
          AdvStringGrid1.Enabled := true;
     end;
     screen.cursor := crDefault;
end;

procedure Tstat_sangbyung_f.AdvStringGrid1ClickSort(Sender: TObject;
  ACol: Integer);
begin
      AdvStringGrid1.AutoNumberCol(0);
end;

procedure Tstat_sangbyung_f.btnExcel2Click(Sender: TObject);
begin

    advgridexcelio1.AdvStringGrid := AdvStringGrid1;
     savedialog1.fileName := cbKind.text +'_'+ FormatDateTime('YYYY-MM-DD',  dt1.Date)+'_'+
                   FormatDateTime('YYYY-MM-DD',   dt2.Date)   + '.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;


procedure Tstat_sangbyung_f.cbMonthChange(Sender: TObject);
begin
          dt1.date :=  dateBeginOfMonth( strtodate(cbyear.Text + '-' + cbMonth.Text + '-01') );
          dt2.date :=  dateEndOfMonth( strtodate(cbyear.Text + '-' + cbMonth.Text + '-01') );

end;

procedure Tstat_sangbyung_f.comboset;
const
     SQL_SELECT_DATA = 'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''081%'') and (code <> ''08100'')     ' + #13#10
          +
          'and inuse <>''0''     ' + #13#10 +
          'order by sortorder    ';
var
     i, j, inow: integer;
     ii: string;
     sijakday, endday: string;
     sijakYY, endYY, jj: integer;
begin

      i := strtoint(formatdatetime('dd', now));
     dt1.date := now;
     dt1.date := dt1.date - i + 1; //formatdatetime('yyyy-mm', now) + '-01';
     dt2.date := now;


     cbYear.items.Clear;

     sijakday := '2000-01-01' ;
     endday := '2030-01-01'   ;

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
     cbYear.Itemindex :=  cbyear.Items.IndexOf(formatdatetime('YYYY', now));

     edtMM.Text := formatdatetime('MM', now);

     cbMonth.items.Clear;
     inow := strtoint(formatdatetime('MM', now));

     for i := 1 to 12 do
     begin
          cbMonth.items.Add(inttostr(i));
     end;

     cbMonth.Itemindex := inow - 1;

     cbTeamName.items.Clear;
     cbTeamName.items.Add('전체');
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_team');
          Sql.Add('order by team_name');
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbTeamName.items.Add(FieldByName('team_doctor1').AsString);
                    next;
               end;
          end
          else
          begin

          end;

     end;
     cbTeamName.Itemindex := 0;

     cbHyg.items.Clear;
     cbHyg.items.Add('전체');
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_Sawon_basic');
          Sql.Add('Where sajikgub <> ''1'' '); //2011.8
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbHyg.items.add(FieldByName('saname').AsString);
                    next;
               end;
               cbHyg.ItemIndex := 0;
          end
          else
          begin
          end;
     end;

end;

end.
