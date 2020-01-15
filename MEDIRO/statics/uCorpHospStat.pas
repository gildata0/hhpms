unit uCorpHospStat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.ExtCtrls, AdvSplitter,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.StdCtrls, Vcl.ComCtrls, AdvPanel,
  AdvGlowButton, FormSize, tmsAdvGridExcel, Vcl.Menus;

type
  TcorpHospStat_f = class(TForm)
    Panel1: TPanel;
    grdCorpHospList: TAdvStringGrid;
    AdvSplitter1: TAdvSplitter;
    grdJx: TAdvStringGrid;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    dt1: TDateTimePicker;
    dt2: TDateTimePicker;
    cbYear: TComboBox;
    cbMonth: TComboBox;
    edtYY: TEdit;
    edtMM: TEdit;
    btnSch: TButton;
    FormSize1: TFormSize;
    AdvGridExcelIO1: TAdvGridExcelIO;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    copy1: TMenuItem;
    PopupMenu2: TPopupMenu;
    copy2: TMenuItem;
    CheckBox1: TCheckBox;
    cbShowAll: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure cbYearChange(Sender: TObject);
    procedure cbYearDropDown(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
    procedure cbMonthDropDown(Sender: TObject);
    procedure btnSchClick(Sender: TObject);
    procedure grdCorpHospListClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure grdCorpHospListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdJxGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdJxGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure Button1Click(Sender: TObject);
    procedure grdJxGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure copy1Click(Sender: TObject);
    procedure copy2Click(Sender: TObject);
    procedure grdCorpHospListClickSort(Sender: TObject; ACol: Integer);
  private
    { Private declarations }
     isNotFormShow : boolean;
    procedure searchJx(jin_day, chart: string);
  public
    { Public declarations }
  end;

var
  corpHospStat_f: TcorpHospStat_f;

implementation
uses uFunctions, uDm;
{$R *.dfm}

procedure TcorpHospStat_f.btnSchClick(Sender: TObject);
var
   i : integer;
begin
 //--소개병원 진료 현황
  try
     screen.Cursor := crHourGlass;
     btnSch.Enabled:=false;
     i:= 0;
     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;

          if cbShowAll.Checked = false then
           begin
                Sql.Text:=
                     ' select                                                                        '
                +#10+' jin_day, chart, refercode,                                                    '
                +#10+' (select name from ma_gogek_basic                                              '
                +#10+'     where chart= a.chart) as pname,                                           '
                +#10+' (select hospname from ma_referhosp                                            '
                +#10+'     where refercode= a.refercode) as hospname,                                '
                +#10+' docName  from ma_gogek_referhosp  a                                           '
                +#10+' where jin_day >=:jin_day1 and jin_day <=:jin_day2                             '
                +#10+'  and  jin_day in (select jin_day from jinryo_s  where chart= a.chart          '
                +#10+'  and   ( modality in (''CT'',''MR'',''MRI'')  or                              '
                +#10+' su_key in (''TMJMR'', ''CTFACE'',''FATCT'',''HI203005'',''HJ203004''                   '
                +#10+' ,''HI208005'', ''HJ208004'', ''HI205005'', ''HJ205004'', ''HA711026'', ''HA643026''    '
                +#10+' ,''CTFACELL'',''MRFAPL'',''CTNOSE'' ))     )                                           '
                +#10+' order by  (select hospname from ma_referhosp                                           '
                +#10+'                  where refercode= a.refercode)                                         ';
          end
          else
          begin
                Sql.Text:=
                'select p.chart, p.jin_Day,                                                                                             '
                +#10+' (select name from ma_gogek_basic where chart= p.chart) as pName,                                       '
                +#10+' (select                                                                                                '
                +#10+'   refercode                                                                                            '
                +#10+'  from ma_gogek_referhosp where chart= p.chart and jin_day=p.jin_day) as referCode,                     '
                +#10+' (select                                                                                                '
                +#10+' (select hospName from ma_referhosp where refercode=  ma_gogek_referhosp.refercode)                     '
                +#10+'  from ma_gogek_referhosp where chart= p.chart and jin_day=p.jin_day)                                   '
                +#10+'   as HospName ,                                                                                        '
                +#10+'   (select disp from ma_basic where code like ''093%'' and val=p.team ) as 진료실,                      '
                +#10+'   (select top 1 saName from ma_sawon_basic where said=p.doc_code and saTeam=p.team ) as docName,       '
                +#10+' STUFF(( SELECT '','' + rtrim(modality) FROM                                                            '
                +#10+'    jinryo_s b WHERE b.jubsu_id = j.id FOR XML PATH('''') ),1,1,'''') AS 장비명,                        '
                +#10+'   (select sum(chong+bonin1) from jinryo_p pp where pp.jubsu_id=j.ID) as Tot,                           '
                +#10+'   (select sum(chong) from jinryo_p pp where pp.jubsu_id=j.ID)        as Chong,                         '
                +#10+'   (select sum(chung) from jinryo_p pp where pp.jubsu_id=j.ID)        as chung,                         '
                +#10+'   (select sum(bonin) from jinryo_p pp where pp.jubsu_id=j.ID)        as bonin,                         '
                +#10+'   (select sum(bonin1) from jinryo_p pp where pp.jubsu_id=j.ID)       as bonin1,                        '
                +#10+'   (select sum(card) from jinryo_p pp where pp.jubsu_id=j.ID)         as card,                          '
                +#10+'   (select sum(cash) from jinryo_p pp where pp.jubsu_id=j.ID)         as cash,                          '
                +#10+'   (select sum(tong) from jinryo_p pp where pp.jubsu_id=j.ID)         as tong,                          '
                +#10+'   (select sum(misugeum) from jinryo_p pp where pp.jubsu_id=j.ID)     as misugeum,                      '
                +#10+'   (select sum(kamak) from jinryo_p pp where pp.jubsu_id=j.ID)        as kamak,                         '
                +#10+'   jubsu_id                                                                                             '
                +#10+'  from ma_jubsu j join jinryo_p p on j.id= p.jubsu_id                                                   '
                +#10+' where j.jin_day >=:Jin_day1 and j.jin_day <=:Jin_day2                                                  ' ;

          end;





         paramByName('Jin_day1').AsString:= formatDatetime('YYYY-MM-DD',dt1.Date );
         paramByName('Jin_day2').AsString:= formatDatetime('YYYY-MM-DD',dt2.Date );
         open;
         grdCorpHospList.Rowcount :=  recordCount+1;

        if cbShowAll.Checked = true then
         begin
              grdCorpHospList.ColumnHeaders.clear;
              grdCorpHospList.ColCount := 20;
              grdCorpHospList.ColumnHeaders.add( 'No.');
              grdCorpHospList.ColumnHeaders.add( '일자');
              grdCorpHospList.ColumnHeaders.add('병원코드' );
              grdCorpHospList.ColumnHeaders.add('병원명'  );
              grdCorpHospList.ColumnHeaders.add('환자명');
              grdCorpHospList.ColumnHeaders.add('차트번호');
              grdCorpHospList.ColumnHeaders.add('진료실' );
              grdCorpHospList.ColumnHeaders.add('원장명'   );
              grdCorpHospList.ColumnHeaders.add('장비명'   );
              grdCorpHospList.ColumnHeaders.add('총액'       );
              grdCorpHospList.ColumnHeaders.add('보험총액'     );
              grdCorpHospList.ColumnHeaders.add('공단청구액'     );
              grdCorpHospList.ColumnHeaders.add('보험본인'     );
              grdCorpHospList.ColumnHeaders.add('비보험본인'    );
              grdCorpHospList.ColumnHeaders.add ('카드'      );
              grdCorpHospList.ColumnHeaders.add('현금'      );
              grdCorpHospList.ColumnHeaders.add('통장'      );
              grdCorpHospList.ColumnHeaders.add('미수금'  );
              grdCorpHospList.ColumnHeaders.add('감면')  ;
              grdCorpHospList.ColumnHeaders.add('접수번호')  ;
         end
         else
         begin
              grdCorpHospList.ColumnHeaders.clear;
              grdCorpHospList.ColCount := 8;

              grdCorpHospList.ColumnHeaders.add('No. ' );
              grdCorpHospList.ColumnHeaders.add('일자' );
              grdCorpHospList.ColumnHeaders.add('병원코드' );
              grdCorpHospList.ColumnHeaders.add('병원명' );
              grdCorpHospList.ColumnHeaders.add('원장명' );
              grdCorpHospList.ColumnHeaders.add('차트번호' );
              grdCorpHospList.ColumnHeaders.add('환자명' );
              grdCorpHospList.ColumnHeaders.add('접수번호' );

         end;


         if not isEmpty  then
         begin
             for I := 1 to grdCorpHospList.Rowcount -1 do

             begin
                if cbShowAll.Checked = false then
                begin

                 grdCorpHospList.Cells[1, i] := fieldByName('jin_day').AsString;
                 grdCorpHospList.Cells[2, i] := fieldByName('refercode').AsString;
                 grdCorpHospList.Cells[3, i] := fieldByName('hospname').AsString;
                 grdCorpHospList.Cells[4, i] := fieldByName('docName').AsString;
                 grdCorpHospList.Cells[5, i] := fieldByName('chart').AsString;
                 grdCorpHospList.Cells[6, i] := fieldByName('pname').AsString;
                 grdCorpHospList.Cells[7, i] := '';//fieldByName('jubsu_id').AsString;

                end
                else
                begin
                   grdCorpHospList.Cells[1, i] := fieldByName('jin_day'  ).AsString;
                   grdCorpHospList.Cells[2, i] := fieldByName('refercode').AsString;
                   grdCorpHospList.Cells[3, i] := fieldByName('hospname' ).AsString;
                   grdCorpHospList.Cells[4, i] := fieldByName('pname'    ).AsString;
                   grdCorpHospList.Cells[5, i] := fieldByName('chart'    ).AsString;
                   grdCorpHospList.Cells[6, i] := fieldByName('진료실'   ).AsString;
                   grdCorpHospList.Cells[7, i] := fieldByName('docName'  ).AsString;
                   grdCorpHospList.Cells[8, i] := fieldByName('장비명'  ).AsString;
                   grdCorpHospList.ints[9, i]  := fieldByName('Tot'      ).asInteger;
                   grdCorpHospList.ints[10, i]  := fieldByName('Chong'    ).asInteger;
                   grdCorpHospList.ints[11, i] := fieldByName('chung'    ).asInteger;
                   grdCorpHospList.ints[12, i] := fieldByName('bonin'    ).asInteger;
                   grdCorpHospList.ints[13, i] := fieldByName('bonin1'   ).asInteger;
                   grdCorpHospList.ints[14, i] := fieldByName('card'     ).asInteger;
                   grdCorpHospList.ints[15, i] := fieldByName('cash'     ).asInteger;
                   grdCorpHospList.ints[16, i] := fieldByName('tong'     ).asInteger;
                   grdCorpHospList.ints[17, i] := fieldByName('misugeum' ).asInteger;
                   grdCorpHospList.ints[18, i] := fieldByName('kamak'    ).asInteger;
                   grdCorpHospList.cells[19, i] := '';//fieldByName('jubsu_id'    ).asString;

                end;
                 next;
             end;
             grdCorpHospList.AutoNumberCol(0);
         end;
     end;
   finally
      screen.Cursor := crDefault;
      btnSch.Enabled:=true;
   end;
end;

procedure TcorpHospStat_f.Button1Click(Sender: TObject);
begin
    savedialog1.fileName:= '기간협진내역'+formatdatetime('YYYYMMDD', dt1.date)  +'_'
                    + formatdatetime('YYYYMMDD', dt2.date) +'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;

procedure TcorpHospStat_f.cbMonthChange(Sender: TObject);
begin
 if isNotFormShow then
     begin

          edtMM.Text := cbMonth.Text;
          dt1.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-01');
          dt2.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-' + inttostr(CalEndDate(formatdatetime('YYYY-MM-DD', dt1.date))));

     end;

     btnSch.SetFocus;
end;

procedure TcorpHospStat_f.cbMonthDropDown(Sender: TObject);
begin

     isNotFormShow := true;

end;

procedure TcorpHospStat_f.cbYearChange(Sender: TObject);
begin
if isNotFormShow then
     begin
          edtYY.Text := cbYear.Text;
          dt1.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-01');
          dt2.date := strtodate(edtYY.Text + '-' + edtMM.Text + '-' + inttostr(CalEndDate(formatdatetime('YYYY-MM-DD', dt1.date))));
     end;
end;

procedure TcorpHospStat_f.cbYearDropDown(Sender: TObject);
begin
     isNotFormShow := true;

end;

procedure TcorpHospStat_f.copy1Click(Sender: TObject);
begin
      grdCorpHospList.CopySelectionToClipboard;
end;

procedure TcorpHospStat_f.copy2Click(Sender: TObject);
begin
      grdJx.CopySelectionToClipboard;
end;

procedure TcorpHospStat_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action:=caFree;
end;

procedure TcorpHospStat_f.FormDestroy(Sender: TObject);
begin
     corpHospStat_f := nil;
end;

procedure TcorpHospStat_f.FormShow(Sender: TObject);
var
     i, j, inow: integer;
     ii: string;
     sijakday, endday: string;
     sijakYY, endYY, jj: integer;
begin
      caption := '협력병원 진료현황';


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
          sql.add(' isNull(min(jin_day), convert(char(10),getdate(),120)) as MinJinDay from ma_gogek_referhosp   ');//ma_plan_list  ');
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
     cbYear.Itemindex := 0;

     edtMM.Text := formatdatetime('MM', now);

     cbMonth.items.Clear;
     inow := strtoint(formatdatetime('MM', now));

     for i := 1 to 12 do
     begin
          cbMonth.items.Add(inttostr(i));
     end;

     cbMonth.Itemindex := inow - 1;



end;

procedure TcorpHospStat_f.grdCorpHospListClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

        if aRow <=0  then
             exit;

        searchJx(grdCorpHospList.Cells[1, ARow],   //jinday
                 grdCorpHospList.Cells[5, ARow]);//,   //chart
               //grdCorpHospList.Cells[5, ARow]);  //Jubsu_id
end;
procedure TcorpHospStat_f.grdCorpHospListClickSort(Sender: TObject;
  ACol: Integer);
begin
       grdCorpHospList.AutoNumberCol(0);
end;

procedure TcorpHospStat_f.grdCorpHospListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
       VK_UP, VK_DOWN:
              searchJx(grdCorpHospList.Cells[1, grdCorpHospList.Row],
                  grdCorpHospList.Cells[5, grdCorpHospList.Row]);
   end;

end;

procedure TcorpHospStat_f.grdJxGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          3,4,5:
               begin
                    hAlign := taRightJustify;
               end;
     end;
end;

procedure TcorpHospStat_f.grdJxGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
      if aCol = 5  then
        ABrush.Color := $00B6FAB4;

end;

procedure TcorpHospStat_f.grdJxGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
     case aCol of
          4,5:
               begin
                    aStyle := ssFinancial;

               end;
     end;

end;

procedure TcorpHospStat_f.searchJx(jin_day:string; chart:string);
var
   i : integer;
begin
     i:= 0;
     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Text:=
               ' select su_key, su_kor_name, jin_danga, modality, jin_qty,       '
          +#10+' (jin_qty*jin_danga) as danga from jinryo_s                      '
          +#10+'   where g_Check <> ''G''                                        '
          +#10+'   and jin_day=:jin_day                                          '
          +#10+'    and chart=:chart                                             ';


           if checkbox1.Checked=false then
           Sql.Text:= Sql.Text +
                ' and ( modality in (''CT'',''MR'',''MRI'')  or                    '
          +#10+ ' su_key like  ''PSC%''    or                                                '
          +#10+ ' su_key in (''TMJMR'', ''CTFACE'',''FATCT'',''HI203005'',''HJ203004'',  ''HA711026'', ''HA643026'', '
          +#10+ '  ''HI208005'', ''HJ208004'', ''HI205005'', ''HJ205004'', ''CTFACELL'',''MRFAPL'',''CTNOSE'' ) )';

         paramByName('Jin_day').AsString := jin_day;
         paramByName('chart').AsString   := chart;

         open;
         grdJx.Rowcount :=  recordCount+1;

         if not isEmpty  then
         begin
             for I := 1 to grdJx.Rowcount -1 do

             begin
                 grdJx.Cells[1, i] := fieldByName('su_kor_name').AsString;
                 grdJx.Cells[2, i] := fieldByName('su_key').AsString;
                 grdJx.Cells[3, i] := fieldByName('jin_qty').AsString;
                 grdJx.floats[4, i] := fieldByName('jin_danga').AsFloat;
                 grdJx.floats[5, i] := fieldByName('danga').AsFloat;
                 grdJx.Cells[6, i] := fieldByName('modality').AsString;

                 next;
             end;
             grdJx.AutoNumberCol(0);
         end;
     end;


end;
end.
