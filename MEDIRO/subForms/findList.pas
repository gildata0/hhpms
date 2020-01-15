unit findList;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs,  
     EllipsLabel, ComCtrls, AdvProgressBar, AdvObj, inifiles, FormSize,
  AdvEdit, tmsAdvGridExcel, StdCtrls, ExtCtrls, Grids, BaseGrid, AdvGrid,
  AdvUtil;

type
     Tfindlist_f = class(TForm)
          grdDaegi: TAdvStringGrid;
          FormSize1: TFormSize;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    spSkinPanel1: TPanel;
    EllipsLabel3: TEllipsLabel;
    EllipsLabel4: TEllipsLabel;
    lblTeam: TLabel;
    EllipsLabel1: TEllipsLabel;
    progressbar: TAdvProgressBar;
    EllipsLabel2: TEllipsLabel;
    dtDate: TDateTimePicker;
    dsDate: TDateTimePicker;
    cbexclusive: TCheckBox;
    edtSch: TAdvEdit;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
    spSkinButton3: TButton;
    cbDaegiGubun: TComboBox;
    cbTeam: TComboBox;
    cbKind: TComboBox;
          procedure spSkinButton1Click(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure cbTeamChange(Sender: TObject);
          procedure grdDaegiClickSort(Sender: TObject; ACol: Integer);
          procedure grdDaegiCanSort(Sender: TObject; ACol: Integer;
               var DoSort: Boolean);
          procedure grdDaegiDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure spSkinButton2Click(Sender: TObject);
    procedure spSkinButton3Click(Sender: TObject);
     private
          procedure jubsuSelect(daegidate1, daegidate2, gubun, team: string);
          procedure PromiseSelect(daegidate1, daegidate2, gubun, team: string);
          procedure FormLocateSave(sender: Tobject; varkind: string);
          { Private declarations }
     public
          { Public declarations }
     end;

var
     findlist_f: Tfindlist_f;

implementation

uses uDM, umain, uFunctions, uGogekData, smsone;

{$R *.dfm}

procedure Tfindlist_f.PromiseSelect(daegidate1, daegidate2, gubun, team: string);
var
     i, reccount: integer;
     CurrentTime: string;
begin
     CurrentTime := FormatDateTime('HH:MM', now);
     grddaegi.ClearRows(1, grddaegi.RowCount);
     grddaegi.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;

          if cbExclusive.Checked= true then
          begin
             Sql.Add('SELECT   chart, name, tel ');
             Sql.Add('FROM       ma_promise                   ');
             Sql.Add('WHERE   (pday >= :jin_day1) and (pday <= :jin_day2) and (cancel <> '' Y '') and ( cancel <> '' R '' )');

          end
          else
          begin
             Sql.Add('SELECT  pday , chart, name, ptime, remark, pos, cancel, tel');
             Sql.Add('FROM       ma_promise                   ');
             Sql.Add('WHERE   (pday >= :jin_day1) and (pday <= :jin_day2) and (cancel <> '' Y '') and ( cancel <> '' R '' )');
          end;

          if cbTeam.ItemIndex > 0 then
          begin
               Sql.Add('and (team = :team) ');
               ParamByName('team').AsString := team;
          end;

          if cbDaegiGubun.ItemIndex > 0 then //전체, 미내원, 내원
          begin
               Sql.Add('and (pos = :pos) ');

               ParamByName('pos').AsString := gubun;
          end;

          if   edtSch.Text <> '' then
          begin
               Sql.Add('and (remark like ''%'' + :remark +''%'' ) ');

               ParamByName('remark').AsString := edtSch.text;
          end;


          if cbExclusive.Checked=false then
               Sql.Add('ORDER BY pday asc, ptime ASC         ')
          else
               Sql.Add('group by chart, name, tel');

          ParamByName('Jin_Day1').AsString := DaegiDate1;
          ParamByName('Jin_Day2').AsString := DaegiDate2;
          Open;
          First;
          if not IsEmpty then
          begin
               recCount := recordCount;
               grddaegi.RowCount := recCount + 1;
               grddaegi.FixedRows := 1;

               {

성명
시간
약속내용
차트번호
               }
                              //  Application.ProcessMessages;
               while not dm_f.SqlWork.Eof do
               begin
                    with grddaegi do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin
                              addCheckBox(1, i, false, false);
                              Cells[4, i] := FieldByName('Name').AsString;
                              Cells[5, i] := FieldByName('chart').AsString;

                              if cbExclusive.Checked = false then
                              begin
                                  Cells[3, i] := FieldByName('pday').AsString;
                                  Cells[9, i] := FieldByName('ptime').AsString;
                                  Cells[11, i] := '[' + FieldByName('ptime').AsString + ']' + FieldByName('remark').AsString;
                                  Cells[7, i] := FieldByName('pos').AsString;
                                  Cells[8, i] := FieldByName('cancel').AsString;
                                  AddImageIdx(2, i, 37, haBeforeText, vaTop);
                                   Cells[16, i] :=
                                          FieldByName('tel').AsString;
                              end;
                              AutoNumberCol(0);
                              AutoSizeCol(0);
                              next;
                         end;
                    end;
               end;
          end;
     end;
end;

procedure Tfindlist_f.jubsuSelect(daegidate1, daegidate2, gubun, team: string);
const
     selectqry = 'SELECT   i.chart, i.name,   i.c_phone, i.first_day,i.jumin,                                                  ' + #13#10 +
          ' n.team, N.gubun, N.jinstime, N.jinftime, N.sunaptime,  N.hyg,                                                 ' + #13#10 +
          ' N.jin_time, N.jin_day, N.fchart,                                                                            ' + #13#10 +
          '  (SELECT   TOP 1 ''[''+ptime+'']'' + remark                                                                 ' + #13#10 +
          'FROM       ma_promise                                                                                        ' + #13#10 +
          'WHERE   (chart = n.chart) AND (pday = n.jin_day) and (cancel <> '' Y '') and ( cancel <> '' R '' )) AS dddd,  ' + #13#10 +
          '  (SELECT   TOP 1 pmemo                                                                                      ' + #13#10 +
          'FROM      ma_promise                                                                                         ' + #13#10 +
          'WHERE   (chart = n.chart) AND (pday = n.Jin_Day) and (cancel <> '' Y '') and ( cancel <> '' R '' )) AS mmmm,  ' + #13#10 +
          '  (SELECT   TOP 1 idn                                                                                        ' + #13#10 +
          'FROM      ma_promise                                                                                         ' + #13#10 +
          'WHERE   (chart = n.chart) AND (pday = n.Jin_Day) and (cancel <> '' Y '') and ( cancel <> '' R '' )) AS pidn,   ' + #13#10 +
         '  (SELECT   TOP 1  convert(char(10),pday,121) + ''[''+ptime+'']''+ ''/''+  + remark                                                                                       ' + #13#10 +
          'FROM      ma_promise                                                                                         ' + #13#10 +
          'WHERE   (chart = n.chart) AND (pday > n.Jin_Day) and (cancel <> '' Y '') and ( cancel <> '' R '' )) AS nextp,   ' + #13#10 +
          '  (SELECT   TOP 1 srmemo                                                                                      ' + #13#10
          +
          'FROM       hxsremark                                                                                        ' + #13#10
          +
          'WHERE   (srchart = n.chart) ) AS sRemark  ' + #13#10
          +
          'FROM      ma_jubsu N INNER JOIN                                                                              ' + #13#10 +
          ' view_gogek i ON i.chart = N.chart                                                                           ' + #13#10 +
          'WHERE   (N.jin_day >= :jin_Day1)  and   (N.jin_day <= :jin_Day2)                                                                              ';



     selectqry2 = 'SELECT    chart,  name,   c_phone,  first_day, jumin,                                                 ' + #13#10 +
          ' team, gubun, jinstime, jinftime, sunaptime, hyg,                                                            ' + #13#10 +
          ' jin_time, jin_day,  fchart,                                                                                 ' + #13#10 +
          '  ''[''+pr_time+'']'' + pr_remark     AS dddd,                                                               ' + #13#10 +
          '   pr_memo  AS mmmm,                                                                                         ' + #13#10 +
          '  pr_idn  AS pidn                                                                                            ' + #13#10 +
          'FROM      ma_jubsu                                                                                           ' + #13#10 +
          'WHERE   (jin_day = :jin_Day)                                                                               ';


     selectqry3 = ' SELECT    chart,  name                                       ' + #13#10 +
          '  FROM      ma_jubsu                                                  ' + #13#10 +
          ' WHERE   (jin_day >= :jin_day1) and  (jin_day <= :jin_day2)          ' + #13#10 +
          '  group by chart, name                                                ' ;
  //        '  order by chart                                                     ';
var
     i, reccount: integer;
     CurrentTime: string;
     varChair: integer;

begin
     CurrentTime := FormatDateTime('HH:MM', now);

     grdDaegi.RemoveRows(1, grdDaegi.RowCount);
     grdDaegi.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;

          if cbexclusive.Checked = false then

             sql.text := selectqry
          else
             sql.text := selectqry3;


          if cbDaegiGubun.ItemIndex > 0 then
          begin
               Sql.Add('and (gubun = :gubun) ');

               ParamByName('gubun').AsString := gubun;
          end;
          if cbTeam.ItemIndex > 0 then
          begin
               Sql.Add('and (team = :team) ');
               ParamByName('team').AsString := team;
          end;


          if cbexclusive.Checked = false then
               Sql.Add('ORDER BY  jin_day desc , gubun asc,  jin_time DESC         ');

      //    ParamByName('Jin_Day1').AsDatetime := strtodatetime(DaegiDate1);
       //   ParamByName('Jin_Day2').AsDatetime:=  strtodatetime(DaegiDate2);
          ParamByName('Jin_Day1').AsString := DaegiDate1 ;
          ParamByName('Jin_Day2').AsString:=   DaegiDate2 ;
          Open;
          First;
          if not IsEmpty then
          begin
               recCount := recordCount;
               grdDaegi.RowCount := recCount + 1;
               grdDaegi.FixedRows := 1;

               {

일자
성명
차트번호
팀
전담위생사
구분
접수시간
대기시간
약속시간/내역
약속참고사항
진료시작시간
진료마침시간
수납시간
휴대폰
               }
                              //  Application.ProcessMessages;
               while not dm_f.SqlWork.Eof do
               begin
                    with grdDaegi do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin
                              addCheckBox(1, i, false, false);
                              Cells[4, i] := FieldByName('Name').AsString;
                              Cells[5, i] := FieldByName('chart').AsString;
                             if cbExclusive.Checked = false then
                             begin
                                     Cells[3, i] := FieldByName('jin_day').AsString;
                                     Cells[6, i] := FieldByName('team').AsString;
                                     Cells[7, i] := FieldByName('hyg').AsString;
                                     Cells[8, i] := FieldByName('gubun').AsString;
                                     Cells[9, i] := formatdatetime('HH:MM',
                                          FieldByName('Jin_Time').AsDateTime);

                                     if FieldByName('DDDD').AsString <> '' then
                                          Cells[11, i] := FieldByName('DDDD').AsString
                                     else
                                     if FieldByName('sRemark').AsString <> '' then
                                          Cells[11, i] :='[D/C]'+ FieldByName('sRemark').AsString;

                                     Cells[12, i] := FieldByName('mmmm').AsString;
                                     Cells[13, i] := FieldByName('jinstime').AsString;
                                     Cells[14, i] :=
                                          FieldByName('jinftime').AsString;
                                     Cells[15, i] :=
                                          FieldByName('sunaptime').AsString;
                                     Cells[16, i] :=
                                          FieldByName('c_phone').AsString;


                                     Cells[17, i] :=
                                          FieldByName('nextp').AsString;
                                     Cells[18, i] :=
                                          FieldByName('pidn').AsString;

                                     {
                                     Cells[5, i] := FieldByName('Jin_day').AsString;
                                     Cells[6, i] := copy(FieldByName('jumin').AsString,
                                          7, 1);
                                     Cells[7, i] := FieldByName('first_day').AsString;
                                     Cells[9, i] := FieldByName('c_phone').AsString;
                                     }
                                     //대기시간 계산...
                                     if Cells[8, i] = '0' then
                                     begin
                                          if Cells[9, i] <> '0' then
                                               Cells[10, i] :=
                                                    FormatDateTime('hh:mm',
                                                    StrToTime(CurrentTime) -
                                                    StrToTime(Cells[9, i]))
                                          else
                                               Cells[10, i] := '00:00';
                                     end
                                     else
                                     begin

                                          if Cells[13, i] <> '' then
                                               Cells[10, i] :=
                                                    FormatDateTime('hh:mm',
                                                    StrToTime(formatdatetime('HH:MM',
                                                    FieldByName('jinstime').AsDateTime))
                                                    - StrToTime(formatdatetime('HH:MM',
                                                    FieldByName('Jin_Time').AsDateTime))
                                                    )
                                          else
                                               Cells[10, i] := '00:00';

                                     end;

                                     {
                                     if Cells[10, i] <> '' then //약속있으면...
                                     begin
                                          AddImageIdx(1, i, 37, haBeforeText,
                                               vaTop);
                                     end;

                                     if StrToTime(Cells[9, i]) > strtotime('00:20') then
                                          //대기시간 20분 넘으면...
                                     begin
                                          AddImageIdx(1, i, 38, haBeforeText,
                                               vaTop);
                                     end;

                                     case ints[7, i] of
                                          0: AddImageIdx(1, i, 33, haBeforeText,
                                                    vaTop); //진료대기
                                          1: AddImageIdx(1, i, 34, haBeforeText,
                                                    vaTop); //수납완료
                                          2: AddImageIdx(1, i, 35, haBeforeText,
                                                    vaTop); //수납대기
                                          3: AddImageIdx(1, i, 36, haBeforeText,
                                                    vaTop); //진료중
                                     end;
                                     }

                                     if Cells[11, i] <> '' then //약속있으면...
                                     begin
                                          case ints[8, i] of
                                               0: AddImageIdx(2, i, 110, haBeforeText, vaTop); //진료대기
                                               1:
                                                    begin

                                                         if (cells[19, i] <> '0') or
                                                              (cells[19, i] <> '') then
                                                         begin
                                                              varChair := ints[19, i];

                                                              AddImageIdx(2, i, 122 + varchair, haBeforeText, vaTop); //진료중 체어번호

                                                         end
                                                         else
                                                         begin
                                                              AddImageIdx(2, i, 111, haBeforeText, vaTop); //진료중
                                                         end;

                                                    end;
                                               2: AddImageIdx(2, i, 112, haBeforeText, vaTop); //수납대기
                                               3: AddImageIdx(2, i, 113, haBeforeText, vaTop); //수납완료
                                          end;
                                     end
                                     else
                                     begin
                                          case ints[8, i] of
                                               0: AddImageIdx(2, i, 114, haBeforeText, vaTop); //진료대기

                                               //1: AddImageIdx(1, i, 115, haBeforeText, vaTop); //진료중

                                               1:
                                                    begin

                                                         if (cells[19, i] <> '0') or
                                                              (cells[19, i] <> '') then
                                                         begin
                                                              varChair := ints[19, i];

                                                              AddImageIdx(2, i, 122 + varchair, haBeforeText, vaTop); //진료중 체어번호

                                                         end
                                                         else
                                                         begin
                                                              AddImageIdx(2, i, 114, haBeforeText, vaTop); //약속없는 진료중
                                                         end;

                                                    end;

                                               2: AddImageIdx(2, i, 116, haBeforeText, vaTop); //수납대기
                                               3: AddImageIdx(2, i, 117, haBeforeText, vaTop); //수납완료
                                          end;
                                     end;
                              end;
                              AutoNumberCol(0);
                              AutoSizeCol(0);
                           next;
                         end;
                    end;
               end;
          end;
     end;
end;

procedure Tfindlist_f.spSkinButton1Click(Sender: TObject);
begin

     case cbKind.ItemIndex of
          0:
               jubsuselect(
                    formatdatetime('yyyy-mm-dd', dtDate.date), //검색시작일자
                    formatdatetime('yyyy-mm-dd', dsDate.date), //검색마지막일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    cbteam.Text //팀
                    );
          1:
               promiseSelect(
                    formatdatetime('yyyy-mm-dd', dtDate.date), //일자
                    formatdatetime('yyyy-mm-dd', dsDate.date), //일자
                    inttostr(cbDaegigubun.itemindex - 1), //구분
                    cbteam.Text //팀
                    );
     end;
end;

procedure Tfindlist_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin

     FormLocateSave(findlist_f, 'review');
     action := caFree;
end;

procedure Tfindlist_f.FormDestroy(Sender: TObject);
begin
     findlist_f := nil;
end;

procedure Tfindlist_f.FormLocateSave(sender: Tobject; varkind: string);
var
     path: string;
     FormInit: Tinifile;
     varTop, varLeft, varHeight, varWidth: integer;
     varWindowstate: Twindowstate;
begin
     if findlist_f.WindowState <> wsMaximized then
     begin

          vartop := findlist_f.top;
          varheight := findlist_f.height;
          varleft := findlist_f.left;
          varwidth := findlist_f.width;

          Path := GetConfigDir + 'db.ini';
          FormInit := TIniFile.Create(Path);
          FormInit.WriteInteger(varkind, 'top', vartop);
          FormInit.WriteInteger(varkind, 'left', varleft);
          FormInit.WriteInteger(varkind, 'width', varwidth);
          FormInit.WriteInteger(varkind, 'height', varheight);
          FormInit.WriteString(varkind, 'windowstate', '');
          FormInit.Free;
     end;
end;

procedure Tfindlist_f.FormShow(Sender: TObject);
var
     path: string;
     FormInit: Tinifile;
     varTop, varLeft, varHeight, varWidth: integer;

begin
     caption := '접수및 예약 조회';

     {Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varTop := FormInit.ReadInteger('review', 'top', 0);
     varLeft := FormInit.ReadInteger('review', 'left', 0);
     varWidth := FormInit.ReadInteger('review', 'width', 300);
     varHeight := FormInit.ReadInteger('review', 'height', main_f.height);
     FormInit.Free;

     top := vartop;
     height := varheight;
     if varLeft < screen.Width then
     left := varleft
     else
     left:=0;
     width := varwidth;

   //left := main_f.Width - width;
   //top := 0;
   //height := main_f.Height;
   }

     lblTeam.Caption := '';
     dtDate.Date := now;
     dsDate.Date := dtDate.Date + 7;
     {  with grdDaegi do
       begin
            ColWidths[1] := 20; //icon
            ColWidths[2] := 65; //일자
            ColWidths[3] := 46; //성명
            ColWidths[4] := 50; //차트번호
            ColWidths[5] := 30; //팀
            ColWidths[6] := 50; //전담위생사
            ColWidths[7] := 40; //구분
            ColWidths[8] := 40; //접수시간
            ColWidths[9] := 40; //대기시간
            ColWidths[10] := 140; //약속시간/내역
            ColWidths[11] := 100;//예약참고사항
            ColWidths[12] := 40;//진료시작
            ColWidths[13] := 40;//진료마침
            ColWidths[14] := 40;//수납시간
            ColWidths[15] := 40;//휴대폰
       end;
      }


     { 50
      26
      52
      83
      64
      39
      88
      35
      65
      61
      64
      109
      87
      64
      80
      93
      117
      79 }

     cbTeam.items.Clear;
     cbTeam.items.Add('전체');
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
                    cbTeam.items.Add(FieldByName('team_name').AsString);
                    next;
               end;
          end
          else
          begin
               //               ComboBox1.Items.Add(dm_f.Chief);
               //               grdPlan.Columns[11].Values.add(dm_f.Chief);
          end;

     end;
     cbteam.Itemindex := 0;
     cbkind.Itemindex := 0;
end;

procedure Tfindlist_f.cbTeamChange(Sender: TObject);
begin
     Lblteam.Caption := loadTeamName(cbTeam.Text);

end;

procedure Tfindlist_f.grdDaegiClickSort(Sender: TObject; ACol: Integer);
begin
     grdDaegi.cursor := crDefault;

end;

procedure Tfindlist_f.grdDaegiCanSort(Sender: TObject; ACol: Integer;
     var DoSort: Boolean);
begin
     grddaegi.cursor := crHourGlass;
       grddaegi.autonumbercol(0);
end;

procedure Tfindlist_f.grdDaegiDblClickCell(Sender: TObject; ARow,
     ACol: Integer);
begin
     screen.cursor := crHourGlass;
     if arow > 0 then
     begin
          grdDaegi.Enabled := false;
          if grdDaegi.Cells[5, arow] <> '' then
          begin
               if LoadGogekData_chart(grdDaegi.Cells[5, arow], progressbar, varViewALL) =
                    true then
               begin
                    //gogek_f.isLoading := true;
                    // FieldClear;

                    main_f.fieldSet;
                    // grdDaegi.setfocus;
               end;

          end;
          grdDaegi.Enabled := true;
     end;
     screen.cursor := crDefault;

end;

procedure Tfindlist_f.spSkinButton2Click(Sender: TObject);
begin
     savedialog1.fileName := cbKind.text+ '내역' +
     formatdatetime('yyyymmdd', dtdate.date) +'_'+formatdatetime('yyyymmdd', dsdate.date)+ '.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;

procedure Tfindlist_f.spSkinButton3Click(Sender: TObject);
begin
     if not assigned(smsone_f) then
          smsone_f :=
               Tsmsone_f.Create(application);
     smsone_f.varmode := 0;
     smsone_f.edtName.text := '';
     smsone_f.edtRecvno.text := '';
     smsone_f.memContent.text := '';

     //smsone_f.memcontent.setfocus;
     smsone_f.LblMemcontentSize.Caption := '0/';
     case cbKind.ItemIndex of
         0: smsone_f.loadKind := 6;//접수
         1: smsone_f.loadKind := 7;//예약
     end;
     smsone_f.Showmodal;

end;

end.

