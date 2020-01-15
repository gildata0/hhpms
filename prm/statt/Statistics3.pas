unit Statistics3;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
       Forms,
       Dialogs, ExtCtrls, AdvPanel, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls,
        AdvGlowButton, Mask, AdvProgressBar,   ComCtrls, AdvUtil;

type
       TStatistics3_f = class(TForm)
              grdMain: TAdvStringGrid;
              AdvPanel2: TAdvPanel;
              progressbar: TAdvProgressBar;
    spSkinPanel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnSch: TAdvGlowButton;
    btnXls: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    dt1: TDateTimePicker;
    dt2: TDateTimePicker;
    cbTeamName: TComboBox;
    cbGubun: TComboBox;
    cbGubunList: TComboBox;
              procedure FormShow(Sender: TObject);
              procedure btnSchClick(Sender: TObject);
              procedure grdMainGetAlignment(Sender: TObject; ARow, ACol:
                     Integer;
                     var HAlign: TAlignment; var VAlign: TVAlignment);
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure FormDestroy(Sender: TObject);
       private
              { Private declarations }
              procedure LoadGubunlist;
              procedure LoadSaGubunlist;
              procedure searchCalc;
       public
              { Public declarations }
       end;

var
       Statistics3_f: TStatistics3_f;

const

       SQL_SELECT_DATA =
              ' select a.chart, a.jin_day as 날짜, b.doctor as 팀, a.portion +'' ''+a.description as 상담내역,b.council as 상담자, b.status as 상담상태, b.remark as 상담메모,  b.id , a.chk  ' + #13#10
              +
              '  from ma_plan a join ma_plan_list b on a.chart=b.chart where a.jin_day >=:jin_day and a.jin_day <=:jin_day2         ';

       SQL_SELECT_Where_team = ' and b.doctor=:team       ';
       SQL_SELECT_Where_gubun = ' and b.status =:status   ';
       SQL_SELECT_orderby = 'ORDER BY a.jin_day           ';

       SQL_SELECT_name =
              'select name from ma_gogek_basic where chart=:chart   ';
       SQL_SELECT_HwanGubun =
              'select gubun from ma_gogek_group where chart=:chart  ';
       SQL_SELECT_tpcharge =
              'select jin_day , subtotal, remark from ma_tpcharge where chart_id=:id  ';
       SQL_SELECT_LastDay =
              'select jin_day   from ma_jubsu where chart=:chart and jin_day > :jin_day  order by jin_day  ';
       SQL_SELECT_LastYeyak =
              'select  pday from ma_promise where chart=:chart and  pday > :pday  order by pday  ';

implementation

uses dm;

{$R *.dfm}

procedure TStatistics3_f.FormShow(Sender: TObject);
var
       i: integer;
begin
       caption := '상담내역 조회';

       i := strtoint(formatdatetime('dd', now));
       dt1.date := now;
       dt1.date := dt1.date - i + 1; //formatdatetime('yyyy-mm', now) + '-01';
       dt2.date := now;

       with grdMain do
       begin
              ColWidths[1] := 65;
              ColWidths[2] := 65;
              ColWidths[3] := 65;
              ColWidths[4] := 120;
              ColWidths[5] := 300;
              ColWidths[6] := 65;
              ColWidths[7] := 120;
              ColWidths[8] := 65;
              ColWidths[9] := 65;
              ColWidths[10] := 140;
              ColWidths[11] := 65;
              ColWidths[12] := 65;
              ColWidths[13] := 0;
              ColWidths[14] := 0;
              ColWidths[15] := 0;

       end;

       cbTeamName.items.Clear;
       cbTeamName.items.Add('전체');
       with dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('select team_name from ma_team');
              Sql.Add('order by team_name');
              Open;
              First;
              if not isEmpty then
              begin
                     while not eof do
                     begin
                            cbTeamName.items.Add(FieldByName('team_name').AsString);
                            next;
                     end;
              end
              else
              begin

              end;

       end;
       cbTeamName.Itemindex := 0;

       LoadGubunlist;
       LoadSaGubunlist;

end;

procedure TStatistics3_f.LoadGubunlist;
var
       varCode: string;
begin
       cbGubunlist.items.clear;
       cbGubunlist.items.Add('전체');

       with dm_f.SqlWork do
       begin
              varCode := '007';

              Close;
              Sql.Clear;
              Sql.Add('select * from ma_basic');
              Sql.Add(' where Code like :Code and Code<> :code2 and disp <> '''' ');
              Sql.Add('order by Code');
              ParamByName('Code').AsString := varCode + '%';
              ParamByName('Code2').AsString := varCode + '000';

              Open;
              First;
              while not eof do
              begin
                     cbGubunlist.items.Add(fieldByName('disp').asString);
                     next;
              end;
       end;
       cbGubunlist.itemindex := 0;

end;

procedure TStatistics3_f.LoadSaGubunlist;
var
       varCode: string;
begin
       cbGubun.items.clear;
       cbGubun.items.Add('전체');

       with dm_f.SqlWork do
       begin
              varCode := '081';

              Close;
              Sql.Clear;
              Sql.Add('select * from ma_basic');
              Sql.Add(' where Code like :Code and Code<> :code2 and inuse <>''0'' ');
              Sql.Add('order by val,code');
              ParamByName('Code').AsString := varCode + '%';
              ParamByName('Code2').AsString := varCode + '000';

              Open;
              First;
              while not eof do
              begin
                     cbGubun.items.Add(fieldByName('disp').asString);
                     next;
              end;
       end;
       cbGubun.itemindex := 0;

end;

procedure TStatistics3_f.btnSchClick(Sender: TObject);
begin
       searchCalc;
end;

procedure TStatistics3_f.searchCalc;
var
       reccount, i, varDaysu, jj: integer;
       imsi_gubun, schart, gubun_chk, sid, schk, sday: string;

       schart2, sday2: string;

begin
       grdMain.ClearRows(1, grdMain.RowCount);
       grdMain.RowCount := 1;

       with DM_f.SqlTemp do
       begin

              SQL.Text := SQL_SELECT_DATA;
              ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD',
                     dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD',
                     dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                     Sql.text := Sql.text + SQL_SELECT_Where_team;
                     ParamByName('team').AsString := cbTeamName.text;
              end;

              if cbGubun.itemindex > 0 then
              begin
                     Sql.text := Sql.text + SQL_SELECT_Where_gubun;
                     ParamByName('status').AsString := cbGubun.text;
              end;

              Sql.text := Sql.text + SQL_SELECT_orderby;

              open;
              first;

              reccount := recordCount;
              grdMain.rowCount := 1;
              progressBar.Min := 0;
              progressbar.Max := reccount;
              grdMain.beginupdate;

              if not isEmpty then
              begin
                     jj := 0;

                     while not eof do
                     begin

                            for i := 1 to reccount do
                            begin
                                   schart := fieldByname('chart').asString;
                                   sday := FieldByname('날짜').asString;
                                   sid := FieldByname('id').asString;
                                   schk := FieldByname('chk').asString;

                                   with dm_f.SqlWork do
                                   begin
                                          close;
                                          sql.clear;
                                          sql.text := SQL_SELECT_HwanGubun;
                                          paramByname('chart').AsString :=
                                                 schart;
                                          Open;
                                          First;
                                          if not IsEmpty then
                                          begin
                                                 imsi_gubun :=
                                                        FieldByname('gubun').asString;
                                          end
                                          else
                                          begin
                                                 imsi_gubun := '';
                                          end;

                                   end;

                                   if cbGubunList.Text = '전체' then
                                   begin
                                          gubun_chk := '1';
                                   end
                                   else if cbGubunList.Text = imsi_gubun then
                                   begin
                                          gubun_chk := '1';
                                   end
                                   else
                                   begin
                                          gubun_chk := '0';
                                   end;

                                   if gubun_chk = '1' then
                                   begin

                                          if (schart <> sChart2) and (sday <>
                                                 sDay2) then
                                          begin
                                                 jj := jj + 1;

                                                 grdMain.AddRow;

                                                 grdMain.Cells[1, jj] :=
                                                        FieldByname('날짜').asString;
                                                 grdMain.Cells[2, jj] := '';
                                                        //이름
                                                 grdMain.Cells[3, jj] :=
                                                        FieldByname('팀').asString;
                                                 grdMain.Cells[4, jj] :=
                                                        imsi_gubun;
                                                 //환자구분

                                                 grdMain.Cells[5, jj] :=
                                                        FieldByname('상담내역').asString;

                                                 grdMain.Cells[6, jj] :=
                                                        FieldByname('상담자').asString;
                                                 grdMain.Cells[7, jj] :=
                                                        FieldByname('상담상태').asString;
                                                 grdMain.Cells[8, jj] := '';
                                                        //확정일자
                                                 grdMain.Cells[9, jj] := '';
                                                        //확정금액
                                                 grdMain.Cells[10, jj] :=
                                                        FieldByname('상담메모').asString;
                                                 grdMain.Cells[11, jj] := '';
                                                 //최종내원일
                                                 grdMain.Cells[12, jj] := '';
                                                 //다음예약일
                                                 grdMain.Cells[13, jj] :=
                                                        schart;
                                                 grdMain.Cells[14, jj] := sid;
                                                 grdMain.Cells[15, jj] := schk;

                                                 with dm_f.SqlWork do
                                                 begin
                                                        close;
                                                        sql.clear;
                                                        sql.text :=
                                                               SQL_SELECT_name;
                                                        paramByname('chart').AsString
                                                               := schart;
                                                        open;
                                                        if not isEmpty then
                                                        begin
                                                               grdMain.Cells[2,
                                                                      jj] :=
                                                                      FieldByname('name').asString;
                                                        end;

                                                        close;
                                                        sql.clear;
                                                        sql.text :=
                                                               SQL_SELECT_tpcharge;
                                                        paramByname('id').AsString :=
                                                               sid;
                                                        open;
                                                        if not isEmpty then
                                                        begin
                                                               grdMain.Cells[8,
                                                                      jj] :=
                                                                      FieldByname('jin_day').asString;
                                                               grdMain.floats[9,
                                                                      jj] :=
                                                                      FieldByname('subtotal').asfloat;
                                                               //grdMain.Cells[10, jj] :=  FieldByname('remark').asString;
                                                        end;

                                                        close;
                                                        sql.clear;
                                                        sql.text :=
                                                               SQL_SELECT_LastDay;
                                                        paramByname('chart').AsString
                                                               := schart;
                                                        paramByname('jin_day').AsString
                                                               := sday;
                                                        open;
                                                        if not isEmpty then
                                                        begin
                                                               grdMain.Cells[11,
                                                                      jj] :=
                                                                      FieldByname('jin_day').asString;
                                                        end;

                                                        close;
                                                        sql.clear;
                                                        sql.text :=
                                                               SQL_SELECT_LastYeyak;
                                                        paramByname('chart').AsString
                                                               := schart;
                                                        paramByname('pday').AsString :=
                                                               sday;
                                                        open;
                                                        if not isEmpty then
                                                        begin
                                                               grdMain.Cells[12,
                                                                      jj] :=
                                                                      FieldByname('pday').asString;
                                                        end;

                                                 end;
                                          end
                                          else
                                          begin

                                                 grdMain.Cells[5, jj] :=
                                                        grdMain.Cells[5, jj] +
                                                               ' / ' +
                                                               FieldByname('상담내역').asString;

                                          end;
                                   end
                                   else
                                   begin

                                   end; //if gubun_chk

                                   schart2 := fieldByname('chart').asString;
                                   sday2 := FieldByname('날짜').asString;

                                   application.ProcessMessages;
                                   progressbar.Position := progressbar.Position
                                          + 1;

                                   next;

                            end; //for i := 1 to reccount do

                     end; //while not eof do

                     grdMain.AutoNumberCol(0);

              end
              else
              begin

                     grdMain.RowCount := 1;
                     grdMain.RemoveRows(2, 1);

              end; //if not isEmpty
              grdMain.endupdate;
              progressbar.Position := 0;

       end; //with DM_f.SqlTemp, grdMain do

end;

procedure TStatistics3_f.grdMainGetAlignment(Sender: TObject; ARow,
       ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

       case acol of
              9:
                     begin
                            if arow > 0 then
                                   halign := taRightJustify;
                     end;
       end;

end;

procedure TStatistics3_f.FormClose(Sender: TObject;
       var Action: TCloseAction);
begin
       Action := caFree;
end;

procedure TStatistics3_f.FormDestroy(Sender: TObject);
begin
       Statistics3_f := nil;
end;

end.

