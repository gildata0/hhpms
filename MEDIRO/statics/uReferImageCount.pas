unit uReferImageCount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.StdCtrls, Vcl.ComCtrls,
  AdvGlowButton, Vcl.ExtCtrls, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.Menus,
  AdvSplitter;

type
  TReferImageCount_f = class(TForm)
    grdImageStat: TAdvStringGrid;
    spSkinPanel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    btnSch: TAdvGlowButton;
    btnXls: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
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
    grdImgStatAll: TAdvStringGrid;
    PopupMenu1: TPopupMenu;
    copy1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    AdvSplitter1: TAdvSplitter;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure btnSchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure copy1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    procedure comboset;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReferImageCount_f: TReferImageCount_f;

implementation
uses uDM, uFunctions, uConfig, ugogekData;

{$R *.dfm}

procedure TReferImageCount_f.btnSchClick(Sender: TObject);
const

sqlSelectTot =

'select count(distinct refercode)  as totCnt, SUBSTRING(jin_day, 1, 7)  as aMonth from ma_gogek_referhosp'+#10+
'where jin_day >=:jin_day1 and jin_day <=:jin_day2                                  '+#10+
'GROUP BY SUBSTRING(jin_day, 1, 7)                                                  '+#10+
' order BY SUBSTRING(jin_day, 1, 7)                                                 ';

sqlSelect =
       'SELECT t.modal, COUNT(*) Counting                                                                                   '+#10+
      'FROM                                                                                                                  '+#10+
      '                                                                                                                      '+#10+
      ' (SELECT chart, jin_Day,g_check,                                                                                      '+#10+
       '                                                                                                                     '+#10+
       '	  CASE WHEN  modality in (''XA'', ''XRAY'',''DR'',''MG'',''DT'', ''EKG'',''OT'',''RF'', ''MED'')  THEN ''X-RAY''   '+#10+
       '          when  modality in (''SC'')   THEN ''EKG''                                                                  '+#10+
       '		   WHEN  modality in (''US'', ''SONO'')   THEN ''초음파''                                                     '+#10+
       '		   WHEN  modality in (''CT'')  THEN ''CT''                                                                       '+#10+
       '		   WHEN  modality in (''CD'', ''CR'')  THEN ''CD''                                                               '+#10+
       '		   WHEN  modality in (''LAB'')  THEN ''LAB''                                                                     '+#10+
       '		   WHEN  modality in (''MR'', ''MRI'')   THEN ''MRI''                                                            '+#10+
       '     ELSE ''기타''                                                                                                  '+#10+
       '     END modal                                                                                                       '+#10+
       '                                                                                                                     '+#10+
       'FROM jinryo_s                                                                                                        '+#10+
       '--where chart in (select chart from ma_gogek_referhosp where chart=jinryo_s.chart and jin_day=jinryo_s.jin_day)      '+#10+
       ') AS t                                                                                                               '+#10+
       'where jin_day >=:jin_Day1 and jin_day <=:jin_Day2 and g_check=''G''                                        '+#10+
      'and chart in (select chart from ma_gogek_referhosp where chart=t.chart and jin_day=t.jin_day)                         '+#10+
      'GROUP BY modal                                                                                                        ';


sqlSelect2 =      //전체 의뢰 수
       'SELECT t.modal, COUNT(*) Counting                                                                                   '+#10+
      'FROM                                                                                                                  '+#10+
      '                                                                                                                      '+#10+
      ' (SELECT chart, jin_Day,g_check,                                                                                      '+#10+
       '                                                                                                                     '+#10+
       '	  CASE WHEN  modality in (''XA'', ''XRAY'',''DR'',''MG'',''DT'', ''EKG'',''OT'',''RF'', ''MED'')  THEN ''X-RAY''   '+#10+
       '          when  modality in (''SC'')   THEN ''EKG''                                                                  '+#10+
       '		   WHEN  modality in (''US'', ''SONO'')   THEN ''초음파''                                                     '+#10+
       '		   WHEN  modality in (''CT'')  THEN ''CT''                                                                       '+#10+
       '		   WHEN  modality in (''CD'', ''CR'')  THEN ''CD''                                                               '+#10+
       '		   WHEN  modality in (''LAB'')  THEN ''LAB''                                                                     '+#10+
       '		   WHEN  modality in (''MR'', ''MRI'')   THEN ''MRI''                                                            '+#10+
       '     ELSE ''기타''                                                                                                  '+#10+
       '     END modal                                                                                                       '+#10+
       '                                                                                                                     '+#10+
       'FROM jinryo_s                                                                                                        '+#10+
       ') AS t                                                                                                               '+#10+
       'where jin_day >=:jin_Day1 and jin_day <=:jin_Day2 and g_check=''G''                                        '+#10+
      'GROUP BY modal                                                                                                        ';

begin

    try
         screen.Cursor := crHourGlass;
         (sender as TadvGlowButton).Enabled := false;

        grdImageStat.removeRows(0, grdImageStat.RowCount-1);
        with DM_f.SqlTemp do
       begin
              //의뢰병원수
              close;
              sql.clear;
              SQL.Text := sqlSelectTot;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);
              open;

              if not isEmpty  then
              begin
                        grdImageStat.AddRow;

                        grdImageStat.cells[0, 0] := fieldByName('aMonth').asString;
                        grdImageStat.ints[1, 0]  := fieldByName('totCnt').asInteger;

              end;
              //modality 별 의뢰병원
              close;
              sql.clear;
              SQL.Text := sqlSelect;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);
              open;

              if not isEmpty  then
              begin
                   while not eof do
                   begin
                        grdImageStat.AddRow;

                        grdImageStat.cells[0, grdImageStat.Rowcount-1] := fieldByName('modal').asString;
                        grdImageStat.ints[1, grdImageStat.Rowcount-1]  := fieldByName('counting').asInteger;
                        next;
                   end;


              end;


              //modality 별 전체

              grdImgStatAll.RemoveRows( 1,grdImgStatAll.Rowcount-1);
              close;
              sql.clear;
              SQL.Text := sqlSelect2;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);
              open;

              if not isEmpty  then
              begin
                   while not eof do
                   begin
                        grdImgStatAll.AddRow;

                        grdImgStatAll.cells[0, grdImgStatAll.Rowcount-1] := fieldByName('modal').asString;
                        grdImgStatAll.ints[1, grdImgStatAll.Rowcount-1]  := fieldByName('counting').asInteger;
                        next;
                   end;


              end;





       end;
    finally
         screen.Cursor := crDefault;
         (sender as TadvGlowButton).Enabled := true;
    end;

end;

procedure TReferImageCount_f.cbMonthChange(Sender: TObject);
begin
          dt1.date :=  dateBeginOfMonth( strtodate(cbyear.Text + '-' + cbMonth.Text + '-01') );
          dt2.date :=  dateEndOfMonth( strtodate(cbyear.Text + '-' + cbMonth.Text + '-01') );

end;

procedure TReferImageCount_f.comboset;
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



procedure TReferImageCount_f.copy1Click(Sender: TObject);
begin
//        grdImageStat.Navigation.AllowClipboardAlways := true;
//  grdImageStat.Navigation.AllowClipboardShortCuts := true;
//  grdImageStat.Navigation.AllowSmartClipboard := true;
 // grdImageStat.Cells[1,1] := '1';
     grdImageStat.CopyToClipBoard;
end;

procedure TReferImageCount_f.FormCreate(Sender: TObject);
begin
     grdImageStat.Align := alClient;

     grdImageStat.Navigation.AllowClipboardShortCuts := true;
     grdImageStat.Navigation.ClipboardPasteAction := paInsert;

     grdImgStatAll.Navigation.AllowClipboardShortCuts := true;
     grdImgStatAll.Navigation.ClipboardPasteAction := paInsert;

end;

procedure TReferImageCount_f.FormShow(Sender: TObject);
begin
    caption:='기간별 환자 내원 내역';
    comboset;

end;

procedure TReferImageCount_f.MenuItem1Click(Sender: TObject);
begin
    grdImgStatAll.CopyToClipBoard;
end;

end.
