unit gogekFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, AdvPanel, StdCtrls, ExtCtrls, AdvObj,
  EllipsLabel,  tmsAdvGridExcel, AdvGlowButton,
  AdvEdit,  DBAdvGrid, ComCtrls, AdvProgr, FormSize,
  AdvProgressBar, AdvUtil;

type
  Tgogekfind_f = class(TForm)
    AdvPanel2: TAdvPanel;
    AdvPanel1: TAdvPanel;
    btnSave: TButton;
    btnCancel: TButton;
    AdvPanel6: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    Button1: TButton;
    lblCount: TEllipsLabel;
    lbltime: TEllipsLabel;
    grdFind: TAdvStringGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog2: TSaveDialog;
    EdtSch2: TAdvEdit;
    grdCRM: TDBAdvGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    AdvProgress1: TAdvProgress;
    FormSize1: TFormSize;
    AdvProgressBar1: TAdvProgressBar;
    AdvGlowButton1: TButton;
    btnSearch: TButton;
    AdvGlowButton3: TButton;
    Button2: TButton;
    cbGubun: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure grdFindClickSort(Sender: TObject; ACol: Integer);
    procedure SelectData;
    procedure grdFindGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure AdvGlowButton1Click(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure cbGubunChange(Sender: TObject);
    procedure EdtSch2KeyPress(Sender: TObject; var Key: Char);
    procedure grdFindDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    procedure NoregiSelect;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gogekfind_f: Tgogekfind_f;

implementation

uses uDM, uFunctions,uConfig, uGogekData , uMain, smsone, uFormInit;

{$R *.dfm}

procedure Tgogekfind_f.FormShow(Sender: TObject);
begin
       caption := '환자검색';

      lblCount.Caption :=  '검색조건을 설정한 후 검색을 시작하세요.';


       lbltime.Caption := '검색소요시간은 자동 계산 됩니다. ' ;

    //   SelectData;


  {   with dm_f.sqlCrm  do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select chart, name  from view_gogek where (charindex(''`'',chart) < 1) and (charindex(''.'',chart) < 1) and (charindex('','',chart) < 1) and (charindex(''*'',chart) < 1) order by CONVERT(integer, chart, 112)');
          open;
     end;
     with grdCRM do
     begin

          DataSource := Dm_f.dsCRM;
          ColWidths[0] := 40;
          ColWidths[1] := 40;
          ColumnHeaders.Strings[0] := '챠트번호';
          ColumnHeaders.Strings[0] := '환자이름';
     end;     }

     cbGubun.Itemindex := 0;

     with grdFind do
     begin
        ColWidths[0] := 50;
     end;

        datetimePicker1.visible:=false;
        datetimePicker2.visible:=false;
        label1.visible:=false;

        datetimePicker1.date:=now;
        datetimePicker2.date:=now;

          initAdvGrid(grdFind);

end;


procedure Tgogekfind_f.grdFindClickSort(Sender: TObject; ACol: Integer);
begin
       grdFind.cursor := crDefault;
       grdFind.AutoNumberCol(0);
end;

procedure Tgogekfind_f.SelectData;
const
       SelectGogek = 'select * from view_gogek ';
       SQL_SELECT_Where_name = 'where name like :name ';
       SQL_SELECT_orderby = 'ORDER BY name       ';
       //SQL_SELECT_orderby2 = 'ORDER BY CONVERT(integer, chart, 112) ';
       SQL_SELECT_orderby2 = 'ORDER BY chart ';

       //SQL_SELECT_Where_chart = 'where (chart >= :chart) and (charindex(''`'',chart) < 1) and (charindex(''.'',chart) < 1) and (charindex('','',chart) < 1) and (charindex(''*'',chart) < 1) ';
       SQL_SELECT_Where_chart = 'where chart = :chart ';
       SQL_SELECT_Where_tel = 'where h_phone like :h_phone ';
       SQL_SELECT_Where_cphone = 'where c_phone like :c_phone ';
       SQL_SELECT_Where_addr = 'where h_juso like :h_juso ';
       SQL_SELECT_Where_chamgo = 'where chamgo like :chamgo ';
       SQL_SELECT_Where_pibo = 'where piboname like :piboname ';
       SQL_SELECT_Where_team = 'where team = :team ';


     SQL_SELECT_Where_Nai =
          ' where  (((case when (substring(jumin,7,1)=3) or' + #13#10 +
          '(substring(jumin,7,1)=4) then ''20'' else ''19'' end) +  substring(jumin,1,2) + ''-''+ substring(jumin,3,2) + ''-''+ substring(jumin,5,2)   ) ) >= :Nai1 ' + #13#10 +
          ' and (((case when (substring(jumin,7,1)=3) or ' + #13#10 +
          '(substring(jumin,7,1)=4) then ''20'' else ''19'' end) +  substring(jumin,1,2) + ''-''+ substring(jumin,3,2) + ''-''+ substring(jumin,5,2)   )) <= :Nai2 ' ;

     SQL_SELECT_Where_First =
          'where First_day>= :First_day and First_day <= :First_day2';
     SQL_SELECT_Where_Last =
          'where Last_day>= :Last_day and Last_day <= :Last_day2';


var
        varChart, varQuery: string;

        j:string;
        RecCount, roC, i: integer;
       stime: integer;
       cPhone, hPhone : string;
begin
     varQuery := LoadGroupDataQuery;


     lblCount.Caption :=  '잠시만...검색중입니다.';
     application.ProcessMessages;

     with dm_f.sqlTemp15 do
     begin

       case cbGubun.ItemIndex of
         0:    //모두검색
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
            end;

         1:   //환자이름
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_name;
              paramByName('name').asString := '%' + edtSch2.text + '%';
            end;

         2:   //챠트번호
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_chart;
              paramByName('chart').asString := edtSch2.text;
            end;

         3:  //전화번호
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_tel;
              paramByName('h_phone').asString := '%' + edtSch2.text + '%';
            end;

         4:  //휴대전화
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_cphone;
              paramByName('c_phone').asString := '%' + edtSch2.text + '%';
            end;

         5:  //주소
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_addr;
              paramByName('h_juso').asString := '%' + edtSch2.text + '%';
            end;

         6:  //특이사항
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_chamgo;
              paramByName('chamgo').asString := '%' + edtSch2.text + '%';
            end;

         7:  //피보험자
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_pibo;
              paramByName('piboname').asString := '%' + edtSch2.text + '%';
            end;

         8:  //생일 주민생년월일로 조회
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text  +   SQL_SELECT_Where_Nai;
              paramByName('nai1').asString := formatdatetime('YYYY-MM-DD' , datetimePicker1.date);
              paramByName('nai2').asString := formatdatetime('YYYY-MM-DD' , datetimePicker2.date);
            end;

         9:  //최초내원
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_First;
              paramByName('First_day').asString := formatdatetime('YYYY-MM-DD' , datetimePicker1.date);
              paramByName('First_day2').asString := formatdatetime('YYYY-MM-DD' , datetimePicker2.date);
            end;

         10:  //최종내원
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_Last;
              paramByName('Last_day').asString := formatdatetime('YYYY-MM-DD' , datetimePicker1.date);
              paramByName('Last_day2').asString := formatdatetime('YYYY-MM-DD' , datetimePicker2.date);
            end;

         11:  //미등록 고객
            begin

                NoregiSelect;
                exit;
            end;


         12:  //팀
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_team;
              paramByName('team').asString :=   edtSch2.text ;
            
            end;


        end;



               if  varviewAll <> true then
               begin

                   if varQuery <> '' then
                   begin
                       if  cbGubun.ItemIndex = 0 then
                         sql.Add('where (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ')
                         else
                         sql.Add(' and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ')

                   end;

               end;

              sql.text := sql.text + SQL_SELECT_orderby;
              Open;


              if not IsEmpty then
              begin
                     recCount := recordCount;
                     advProgress1.Max := recCount;
                     application.ProcessMessages;

                     lblCount.Caption := inttostr(recCount) +   '명이 검색되었습니다.';


                     grdFind.RowCount := recCount + 1;
                     grdFind.FixedRows := 1;
                     grdFind.BeginUpdate;
                            while not dm_f.sqlTemp15.Eof do
                            begin
                                   with grdFind, dm_f.sqlTemp15 do
                                   begin

                                          for i := FixedRows to RowCount - 1 do

                                          begin
                                             try
                                                 //  AddRow;
                                                   {
                          차트
                          성명
                          성별
                          생일
                          나이
                          주소
                          집전화
                          휴대폰
                          피보험자
                          최종내원일}


                                               //  if (FieldByName('chart').AsString = '1234') or (FieldByName('chart').AsString = '1485') then
                                               //  begin

                                                    varChart:= FieldByName('jumin').AsString;
                                                    j := copy(FieldByName('jumin').AsString, 7, 1);

                                               //  end;
                                                 AddCheckBox(1, i, false, false);

                                                 Cells[2, i] :=
                                                        FieldByName('chart').AsString;
                                                 Cells[3, i] :=
                                                        FieldByName('name').AsString;



//ToDo : 성별 나이계산 다시
                                                 varChart:= FieldByName('jumin').AsString;

                                                 if (copy(varChart, 7,1) = '') or (copy(varChart, 7,1) = '0') or (j = ' ') then
                                                     Cells[4, i] := ''
                                                 else if (trim(varChart) <> '') then
                                                     Cells[4, i] :=
                                                          jumintogender(FieldByName('jumin').AsString)
                                                 else
                                                     Cells[4, i] := '';


                                                 try
                                                       if (copy(varChart, 7,1) = '')
                                                          or (copy(varChart, 7,1) = '0')
                                                          or (j = ' ') then
                                                           Cells[5, i] := '0'
                                                       else if trim(FieldByName('jumin').AsString) <> '' then
                                                          Cells[5, i] :=
                                                              juminTonai(FieldByName('Jumin').AsString)
                                                       else
                                                            Cells[5, i] := '0';
                                                 except

                                                 end;
                                                 Cells[6, i] :=
                                                        FieldByName('h_Juso').AsString;

                                                 cPhone:= call_tel_type( FieldByName('c_phone').AsString);
                                                 hPhone:= call_tel_type( FieldByName('h_phone').AsString);



                                                 Cells[7, i] := hPhone;
                                                 Cells[8, i] := cPhone ;
                                                 Cells[9, i] :=
                                                        FieldByName('piboname').AsString;
                                                 Cells[10, i] :=
                                                        FieldByName('first_day').AsString;
                                                 Cells[11, i] :=
                                                        FieldByName('last_day').AsString;
                                                 Cells[12, i] :=
                                                        FieldByName('chamgo').AsString;
                                                 Cells[13, i] :=
                                                        FieldByName('K_number').AsString;
                                                   //                    AutoSizeRow(i);

                                               except


                                               end;


                                                 dm_f.sqlTemp15.next;
                                                  application.ProcessMessages;
                                                 advProgress1.position := i;

                                          end;
                                          // autosizecolumns(false, 10);


                                   end;
                            end;


                            lbltime.Caption := '검색소요시간:' +
                                   inttostr(gettickCount -
                                   stime) + 'ms';

                     grdFind.autonumbercol(0);
                       grdFind.EndUpdate;
              end;

   end;

end;

procedure Tgogekfind_f.NoregiSelect;
const
       SelectNoRegiGogek ='select * from ma_gogek_phone ' + #10#13+
                          'where chart =''''     ';
var
        varChart, varQuery: string;

        j:string;
        RecCount, roC, i: integer;
       stime: integer;
begin
     grdFind.RowCount := 1;
     with dm_f.sqlTemp15 do
     begin


              Close;
              SQL.Clear;
              sql.text := SelectNoRegiGogek;
              open;

              if not IsEmpty then
              begin
                     recCount := recordCount;
                     advProgress1.Max := recCount;
                     application.ProcessMessages;

                     grdFind.RowCount := recCount + 1;
                     grdFind.FixedRows := 1;

                            while not dm_f.sqlTemp15.Eof do
                            begin
                                   with grdFind, dm_f.sqlTemp15 do
                                   begin

                                          for i := FixedRows to RowCount - 1 do

                                          begin


                                                 AddCheckBox(1, i, false, false);

                                                 Cells[2, i] :=
                                                        FieldByName('chart').AsString;
                                                 Cells[3, i] :=
                                                        FieldByName('name').AsString;


                                                 Cells[4, i] :='';
                                                 Cells[5, i] :='';
                                                 Cells[6, i] :='';
                                                 Cells[7, i] :='';
                                                 Cells[8, i] :='';
                                                 Cells[9, i] :='';
                                                 Cells[10, i] :='';
                                                 Cells[11, i] :='';
                                                 Cells[12, i] :='';
                                                 Cells[13, i] :='';

                                                  if  (copy( FieldByName('phone').AsString, 1,3) = '010')
                                                       or (copy( FieldByName('phone').AsString, 1,3) = '016')
                                                       or ( copy( FieldByName('phone').AsString, 1,3) = '017' )
                                                         or (copy( FieldByName('phone').AsString, 1,3) = '018')
                                                           or (copy( FieldByName('phone').AsString, 1,3) = '019') then
                                                 Cells[9, i] :=
                                                        FieldByName('phone').AsString
                                                        else

                                                    Cells[8, i] :=
                                                        FieldByName('phone').AsString;


                                                 AutoSizeRow(i);

                                                 dm_f.sqlTemp15.next;
                                                  application.ProcessMessages;
                                                 advProgress1.position := i;
                                          end;
                                          // autosizecolumns(false, 10);
                                          autonumbercol(0);

                                   end;
                            end;

                            lblCount.Caption := inttostr(grdFind.RowCount - 1) +
                                   '명이 검색되었습니다.';

                            lbltime.Caption := '검색소요시간:' +
                                   inttostr(gettickCount -
                                   stime) + 'ms';


              end;
       end;
       exit;
end;

procedure Tgogekfind_f.grdFindGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

       case aCol of
              1, 4, 5:
                     Halign := taCenter;
       end;


end;

procedure Tgogekfind_f.FormDestroy(Sender: TObject);
begin
      gogekfind_f := nil;
end;

procedure Tgogekfind_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := caFree;
end;



procedure Tgogekfind_f.AdvGlowButton1Click(Sender: TObject);
begin
       savedialog2.filename := '고객명부' +
              formatdatetime('YYYYMMDD', now);

       if savedialog2.execute then
       begin
              if fileexists(savedialog2.filename) then
                     deletefile(savedialog2.filename);
               advgridexcelio1.XLSExport(savedialog2.filename);
       end;
end;

procedure Tgogekfind_f.btnSearchClick(Sender: TObject);
begin
   try
     btnSearch.Enabled := false;
     SelectData;
   finally
     btnSearch.Enabled := true;
   end;
end;

procedure Tgogekfind_f.cbGubunChange(Sender: TObject);
begin
    {
0모두검색
1환자이름
2챠트번호
3전화번호
4휴대전화
5주소
6특이사항
7피보험자
8생년월일
9최초내원일
10최종내원일
11미등록환자리스트
12팀
}

     EdtSch2.Text := '';
     case cbGubun.ItemIndex of
         0..7,11,12:
         begin
            datetimePicker1.visible:=false;
            datetimePicker2.visible:=false;
            label1.visible:=false;
         end;
         8..10:
         begin
            datetimePicker1.visible:=true;
            datetimePicker2.visible:=true;
            label1.visible:=true;

         end;
     end;
end;

procedure Tgogekfind_f.EdtSch2KeyPress(Sender: TObject; var Key: Char);
begin

   if (key = #13) then
   begin
     SelectData;
   end;

end;

procedure Tgogekfind_f.grdFindDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     screen.cursor := crHourGlass;
     if arow > 0 then
     begin

          if ACol = 2 then
          begin

               grdFind.Enabled := false;
               if grdFind.Cells[2, arow] <> '' then
               begin
                    if LoadGogekData_chart(grdFind.Cells[2, arow], advProgressbar1, varviewAll) =
                         true then
                    begin
                      //   main_f.fieldSet;
                    end;

               end;
               grdFind.Enabled := true;
          end
          else
             {  if ACol = 16 then
               begin

                    if grdNew.Cells[2, grdNew.Row] = '' then
                         exit;

                    if not Assigned(Caller_f) then
                         Caller_f := TCaller_f.Create(application);

                    LoadPhoneList(grdNew.Cells[20, grdNew.Row], Caller_f.textCalleeNumber);
                    with caller_f do
                    begin
                         varChart := grdNew.Cells[20, grdNew.Row];
                         varName := grdNew.Cells[2, grdNew.Row];
                         left := mouse.CursorPos.X;
                         top := mouse.CursorPos.y;
                         showmodal;
                    end;

               end
               else
                    if ACol = 17 then
                    begin

                         if grdNew.Cells[2, grdNew.Row] = '' then
                              exit;

                         if isSendAllowSMS(grdNew.Cells[20, grdNew.Row]) = false then
                         begin
                              showmessage('메시지 전송거부로 설정되어있습니다.');
                              exit;

                         end;
                         main_f.smsoneCHK := 'ok';
                         if not assigned(smsone_f) then
                              smsone_f := Tsmsone_f.Create(application);
                         smsone_f.varMode := 1;
                         smsone_f.edtDay.text := '';
                         smsone_f.edtTime.text := '';
                         smsone_f.edtMin.text := '';
                         smsone_f.edtMonth.text := '';

                         smsone_f.edtName.text := grdNew.Cells[2, grdNew.Row];
                         smsone_f.edtRecvno.text := call_tel_type(grdNew.Cells[17, grdNew.Row]);
                         smsone_f.Showmodal;

                    end;
               }
     end;
     screen.cursor := crDefault;

end;

procedure Tgogekfind_f.AdvGlowButton3Click(Sender: TObject);
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

     smsone_f.loadKind := 8;
     smsone_f.Showmodal;
end;

procedure Tgogekfind_f.Button2Click(Sender: TObject);
var
   stat : boolean;
   i : integer;
begin
     for i := 0 to grdFind.RowCount - 1 do
     begin
          try
               grdFind.GetCheckBoxState(1, i, stat);

               if (stat = true) then

               begin

                     with dm_f.sqlTemp15 do
                     begin
                       //문서발급 내역
                        Close;
                        SQL.Clear;
                        sql.text := 'delete from tbReport where chart=:chart';
                        paramByName('chart').asString:=grdFind.Cells[2, i] ;
                        execsql;


                       //문자 보낸 이력

                        Close;
                        SQL.Clear;
                        sql.text := 'delete from ma_sms_sendlist where sbchart=:chart';
                        paramByName('chart').asString:=grdFind.Cells[2, i] ;
                        execsql;


                       //예약 이력

                        Close;
                        SQL.Clear;
                        sql.text := 'delete from ma_promise where chart=:chart and pday <:pday';
                        paramByName('chart').asString:=grdFind.Cells[2, i] ;
                        paramByName('pday').asString:=formatDatetime('YYYY-MM-DD',now);
                        execsql;


                       //접수 이력

                        Close;
                        SQL.Clear;
                        sql.text := 'delete from ma_jubsu where chart=:chart and jin_day < :jin_day';
                        paramByName('chart').asString:=grdFind.Cells[2, i] ;
                        paramByName('jin_day').asString:=formatDatetime('YYYY-MM-DD',now);
                        execsql;
                    end;


               end;
          finally
          end;


     end;
          showmessage('Task end.');
 end;

procedure Tgogekfind_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (ssShift in shift) and (ssCtrl in Shift) and (key = vk_F3) then
     begin
         if inputbox('암호를 입력하세요', '오늘은', '***') <>  formatdatetime('dd', now) +'88' then
         begin
             //showmessage('');
             exit;
         end;
         button2.Visible :=true;
     end;

end;

end.
