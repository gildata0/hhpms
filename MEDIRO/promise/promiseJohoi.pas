unit promiseJohoi;

interface


uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
       Forms,
       Dialogs,  StdCtrls, ComCtrls,
       ExtCtrls,  Buttons,
       Mask,   Menus,Grids,
       BaseGrid, AdvGrid, AdvObj,  tmsAdvGridExcel, AdvUtil, AdvCombo, ColCombo;

type
       TpromiseJohoi_f = class(TForm)
              PopupMenu1: TPopupMenu;
              N1: TMenuItem;
              N2: TMenuItem;
              N3: TMenuItem;
              N4: TMenuItem;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    HwanjaBtn: TButton;
    ClsBtn: TButton;
    spSkinButton1: TButton;
    grdFind: TAdvStringGrid;
    btnSch: TButton;
    grdPromise: TAdvStringGrid;
    Panel1: TPanel;
    spSkinLabel1: TLabel;
    spSkinLabel2: TLabel;
    spSkinLabel3: TLabel;
    spSkinLabel4: TLabel;
    spSkinLabel5: TLabel;
    spSkinLabel6: TLabel;
    spSkinLabel7: TLabel;
    spSkinLabel8: TLabel;
    spSkinLabel9: TLabel;
    spSkinLabel10: TLabel;
    EdtName: TEdit;
    EdtDay: TEdit;
    EdtRemark: TEdit;
    EdtChart: TEdit;
    EdtTime: TEdit;
    EdtTeam: TEdit;
    EdtTel: TEdit;
    EdtPibo: TEdit;
    edtmemo: TEdit;
    Panel2: TPanel;
    imgPic: TImage;
    Label3: TLabel;
    EdtSch: TEdit;
    SelCombo: TComboBox;
    wDateEdit1: TDateTimePicker;
    wDateEdit2: TDateTimePicker;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
              procedure FieldClear;
              procedure SelectData;
              procedure FormShow(Sender: TObject);
              procedure ClsBtnClick(Sender: TObject);
              procedure EdtSchKeyPress(Sender: TObject; var Key: Char);
              procedure FormDestroy(Sender: TObject);
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure HwanjaBtnClick(Sender: TObject);
              procedure btnSchClick(Sender: TObject);
              procedure GrdFindMouseDown(Sender: TObject; Button: TMouseButton;
                     Shift: TShiftState; X, Y: Integer);
              procedure FormCreate(Sender: TObject);
              procedure N3Click(Sender: TObject);
              procedure N2Click(Sender: TObject);
              procedure spSkinButton1Click(Sender: TObject);
    procedure grdPromiseGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdPromiseGridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: String);
    procedure grdPromiseClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdPromiseDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure SelComboChange(Sender: TObject);
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure cbTreatRoomChange(Sender: TObject);
       private

              searchWord : string;

              procedure LoadPicture(PatNo: string);
              procedure FieldSetGrid;
              procedure LoadTreatRoomList;
              { Private declarations }
       public
              { Public declarations }
              varView: string;
              procedure PatientSearch_whole (varFlag: string; varDate1: string
                         =  ''; varDate2: string = '');
              procedure PatientSearch_Part(varsch: string);
              procedure PatientSearch_Name(varsch: string);
       end;

var
       promiseJohoi_f: TpromiseJohoi_f;

implementation

uses uConfig, uDM, uMain, uGogekData;//, promisemain, promiseprint;
{$R *.dfm}

procedure TpromiseJohoi_f.SelComboChange(Sender: TObject);
begin
{0성명
1챠트번호
2전화번호
3H/P
4예약내용
5진료실
6예약메모
}
    case SelCombo.ItemIndex of
    0..4, 6:
       begin
          edtSch.Visible      := true;
          cbTreatRoom.Visible := false;
          cbDoc.Visible       := false;
          searchWord          := edtSch.Text;
       end;
    5:
       begin
          edtSch.Visible      := false;
          cbTreatRoom.Visible := true;
      //    cbDoc.Visible       := false;
          cbDoc.Visible       := true;
          searchWord          := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0] ;
       end;
    end;
end;

procedure TpromiseJohoi_f.SelectData;
var
       ARow: integer;

begin

       if Dm_f.sqlwork.RecordCount > 0 then
       begin
              with DM_f.sqlwork, grdpromise do
              begin
                     Open;
                     rowcount:=1;

                     if not DM_f.sqlwork.IsEmpty then
                            while not EOF do
                            begin
                                   AddRow; // 그리드에 빈 로우를 추가
                                   Cells[1, RowCount - 1] :=
                                          FieldByName('Name').AsString;
                                   Cells[2, RowCount - 1] :=
                                          FieldByName('Chart').AsString;
                                   Cells[3, RowCount - 1] :=
                                          FieldByName('pDay').AsString;
                                   Cells[4, RowCount - 1] :=
                                          FieldByName('pTime').AsString;
                                   Cells[5, RowCount - 1] :=
                                           loadJinjryosil(FieldByName('Team').AsString) ;

                                   Cells[6, RowCount - 1] :=   LoadDocNameFromSawonWithID(FieldByName('doc').AsString) ;


                                   Cells[7, RowCount - 1] :=
                                          FieldByName('Tel').AsString;

                                   Cells[8, RowCount - 1] :=
                                          FieldByName('Remark').AsString;
                                   Cells[9, RowCount - 1] :=
                                          FieldByName('Cancel').AsString;
                                   Cells[10, RowCount - 1] :=
                                          FieldByName('pMemo').AsString;
                                   Cells[11, RowCount - 1] :=
                                          FieldByName('gubun').AsString;
                                   Cells[12, RowCount - 1] :=
                                          FieldByName('pos').AsString;


                                   Next;
                            end;
                             Arow := 1;



                     with grdpromise do
                     begin

                            EdtName.Text := Cells[1, Arow];
                            EdtChart.Text := Cells[2, Arow];
                            EdtDay.Text := Cells[3, Arow];
                            EdtTime.Text := Cells[4, Arow];
                            EdtTeam.Text := Cells[5, Arow];
                            EdtTel.Text := Cells[7, Arow];
                            EdtRemark.Text := Cells[8, Arow];
                            EdtPibo.Text := '';
                            Edtmemo.Text := Cells[10, Arow];

                            autoNumberCol(0);
                     end;
              end;
       end;
end;

procedure TpromiseJohoi_f.FieldClear;
begin
       EdtName.Text := '';
       EdtChart.Text := '';
       EdtTeam.Text := '';
       EdtDay.Text := '';
       EdtTime.Text := '';
       EdtTel.Text := '';
       EdtRemark.Text := '';
       EdtSch.Text := '';
       EdtPibo.Text := '';
       Edtmemo.Text := '';
end;

procedure TpromiseJohoi_f.FormShow(Sender: TObject);
begin
       Caption := '예약조회';
       if varView <> 'NAME' then
              FieldClear;

       //     Selcombo.Text := '성명';
   //    main_f.GridSet(grdfind, true, pnlGrid, alclient, 0, 0, 0, 0);
    //   main_f.panelSet(pnlGrid, alClient);
       WDateEDIT1.Date := NOW;
       WDateEDIT2.Date := NOW;


       with grdPromise do
       begin

       {
      1성명
      2챠트
      3예약일
      4시간
      5진료실
      6담당의
      7전화
      8내용
      9취소여부
      10전달사항
      11구분
      12내원
      }
           colWidths[1]:=120;  //성명
           colWidths[2]:=60; // 챠트
           colWidths[3]:=80; // 예약일
           colWidths[4]:=40; // 예약시간
           colWidths[5]:=100; // 진료실
           colWidths[6]:=100; // 담당의
           colWidths[7]:=100; // 전화
           colWidths[8]:=400; // 예약내용
           colWidths[9]:=0; // 취소여부
           colWidths[10]:=0; // 전달사항
           colWidths[11]:=0; // 구분  gubun
           colWidths[12]:=0;// 내원 pos
       end;

       LoadTreatRoomList;
end;


procedure TpromiseJohoi_f.LoadTreatRoomList;
var
    team_key : string;
begin
    with cbTreatRoom do
    begin
      Columns.Clear;
      ComboItems.Clear;
    end;



    with dm_f.sqlWork do
    begin
    close;
    SQL.Clear;
    SQL.text := 'Select * from ma_basic                                   ' +
       #13#10 + 'where  (code like  ''093%'') and (code <> ''09300'')     ' +
       #13#10 + 'and inuse <>  ''0''  and (remark = ''TREAT'' or remark = ''MED'' )    '
      + #13#10 +
    // 'order by val,code                                        ';
      'order by disp                                    ';
    open;
    if not isEmpty then
    begin

      with cbTreatRoom do
      begin
        with Columns.Add do
        begin
          width := 0;
          Font.Style := [fsBold];
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          width := 0;
          Font.Color := ClBlue;
          Font.Style := [fsBold];
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          width := 200;
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;

      end;
      // with cbTreatRoom.ComboItems.Add do
      // begin
      // Strings.Add('A');     //Code
      // Strings.Add('A');  //code?
      // Strings.Add('전체');
      // end;

      while not eof do
      begin

        with cbTreatRoom.ComboItems.Add do
        begin
          // Strings.Add(FieldByName('team_name').AsString);
          // Strings.Add(FieldByName('team_color').AsString);
          // Strings.Add(FieldByName('team_doctor1').AsString);
          Strings.Add(trim(fieldByname('val').asString)); // Code
          Strings.Add(trim(fieldByname('remark').asString)); // code?
          Strings.Add(trim(fieldByname('disp').asString));

        end;

        // cbTreatRoom.items.add(FieldByName('disp').AsString);

        next;
      end;
      cbTreatRoom.itemindex := 1;
    end
    else
    begin
      // cbTreatRoom.items.add('데스크');
      // cbTreatRoom.ItemIndex := 0;
    end;

  end;

  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];
  LoadDoclist(cbDoc, team_key);
end;
procedure TpromiseJohoi_f.PatientSearch_whole(varFlag: string; varDate1: string
  =  ''; varDate2: string = '');
begin


        grdpromise.RemoveRows(1,grdpromise.RowCount - 1);


       with Dm_f.sqlwork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('Select * from ma_promise  ');
          {    Sql.Add('Select a.Name, a.Chart, a.Tel, a.Remark, a.Team, a.pDay, a.pTime, a.Cancel, a.pMemo, a.gubun, a.pos, ');
              Sql.Add(' b.PiboName, b.Jumin, b.C_phone, c.Team_Name, C.Team_Doctor1');
              Sql.Add('from ma_promise a Left Join view_gogek b');
              Sql.Add(' On a.Chart=b.Chart');
              Sql.Add(' Left Join ma_Team c');
              Sql.Add(' On a.Team=c.Team_Name ');
           }


              {
             성명
             챠트번호
             전화번호
             H/P
             예약내용
             }
              if SelCombo.Text = '성명' then
              begin
                   //  if main_f.FilterResultCheck = false then
                   //         Sql.Add('Where a.Name Like :Name  and   a.Cancel<> ''Y'' and  a.Cancel<> ''R''  and a.chart <> '''' ')
                   //  else
                   //         Sql.Add('Where a.Name Like :Name');
                   //  Sql.Add('Group By a.Name, a.Chart, a.Tel, a.Remark, a.Team, a.pDay, a.pTime, a.Cancel, a.pMemo,a.gubun,a.pos,  b.PiboName, b.jumin, b.C_phone, c.Team_Name, C.Team_Doctor1');
                     Sql.Add('Where  Name Like :Name');
                     ParamByName('Name').AsString := '%' + varFlag + '%';
              end;
               if SelCombo.Text = '챠트번호' then
               begin
//                    if main_f.FilterResultCheck = false then
//                         Sql.Add('Where YChartNo Like :YChartNo and (b.fil <> ''1'' or b.fil is null) and   a.YCancel<> ''Y'' and  a.YCancel<> ''R'' ')
//                    else
//                         Sql.Add('Where YChartNo Like :YChartNo');
//                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.team,a.YDay, a.YTime,a.YCancel, a.YcMemo,a.Ygubun,b.fil, b.PiboName, b.jumin, b.Team,b.C_phone, c.Team_Name, C.Team_Doctor1');
//                    Sql.Add('Order by YHwanName');
                     Sql.Add('Where chart Like :chart');
                   //  Sql.Add('Where  Name Like :Name');
                    ParamByName('Chart').AsString := varFlag;
               end;
               if SelCombo.Text = '전화번호' then
               begin
//                    if main_f.FilterResultCheck = false then
//                         Sql.Add('Where YTel Like :YTel and (b.fil <> ''1'' or b.fil is null) and   a.YCancel<> ''Y'' and  a.YCancel<> ''R'' ')
//                    else
//                         Sql.Add('Where YTel Like :YTel');
//                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.team,a.YDay, a.YTime,a.YCancel, a.YcMemo,a.Ygubun,b.fil, b.PiboName, b.jumin, b.Team,b.C_phone, c.Team_Name, C.Team_Doctor1');
//                    Sql.Add('Order by YHwanName');
                    Sql.Add('Where Tel Like :Tel');
                    ParamByName('tel').AsString := '%' + varFlag + '%';
               end;

               if SelCombo.Text = '예약내용' then
               begin
//                    if main_f.FilterResultCheck = false then
//                         Sql.Add('Where YRemark Like :YRemark and (b.fil <> ''1'' or b.fil is null) and   a.YCancel<> ''Y'' and  a.YCancel<> ''R'' ')
//                    else
//                         Sql.Add('Where YRemark Like :YRemark');
//                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.team,a.YDay, a.YTime,a.YCancel, a.YcMemo,a.Ygubun,b.fil, b.PiboName, b.jumin, b.Team,b.C_phone, c.Team_Name, C.Team_Doctor1');
//                    Sql.Add('Order by YHwanName');
                    Sql.Add('Where Remark Like :Remark');
                    ParamByName('remark').AsString := '%' + varFlag + '%';
                    // '%' + SearchEdit.text + '%'
               end;
               if SelCombo.Text = '예약메모' then
               begin
//                    if main_f.FilterResultCheck = false then
//                         Sql.Add('Where Ycmemo Like :Ycmemo and (b.fil <> ''1'' or b.fil is null) and   a.YCancel<> ''Y'' and  a.YCancel<> ''R'' ')
//                    else
//                         Sql.Add('Where Ycmemo Like :Ycmemo  ');
//                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.YDay, a.YTime,a.YCancel, a.YcMemo,a.team,a.Ygubun,b.fil, b.PiboName, b.jumin, b.Team, b.C_phone, c.Team_Name, C.Team_Doctor1');
//                    Sql.Add('Order by YHwanName');
                   Sql.Add('Where Pmemo Like :Pmemo  ');
                    ParamByName('Pmemo').AsString := '%' + varFlag + '%';
                    // '%' + SearchEdit.text + '%'
               end;
               if SelCombo.Text = '진료실' then
               begin
//                    if main_f.FilterResultCheck = false then
//                         Sql.Add('Where team =:team and (b.fil <> ''1'' or b.fil is null) and   a.YCancel<> ''Y'' and  a.YCancel<> ''R'' ')
//                    else
//                         Sql.Add('Where team =:team');
//                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.team,a.YDay, a.YTime,a.YCancel, a.YcMemo,a.Ygubun, b.fil,b.PiboName, b.jumin, b.Team,b.C_phone, c.Team_Name, C.Team_Doctor1');
//                    Sql.Add('Order by YHwanName');
                    Sql.Add('Where team =:team');
                    ParamByName('team').AsString := varFlag;
                    // '%' + SearchEdit.text + '%'
               end;
                    if varDate1 <> '' then
                    begin
                      Sql.Add(' and ( pDay >=:Pday1 and  pDay <=:Pday2) ');
                      ParamByName('Pday1').AsString := varDate1;
                      ParamByName('Pday2').AsString := varDate2;
                    end;
                     Sql.Add('Order by chart, pDay desc');
              Open;
       end;

       selectdata;
end;

procedure TpromiseJohoi_f.cbTreatRoomChange(Sender: TObject);
begin

          searchWord          := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0] ;

end;

procedure TpromiseJohoi_f.cbTreatRoomSelect(Sender: TObject);
var
  team_key: string;
begin
  // showmessage('');
  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
  LoadDoclist(cbDoc, team_key);

end;

procedure TpromiseJohoi_f.ClsBtnClick(Sender: TObject);
begin
       Close;
end;

procedure TpromiseJohoi_f.FieldSetGrid;
var
       ARow: integer;

begin
{
1성명
2챠트
3예약일
4시간
5진료실
6담당의
7전화
8내용
9취소여부
10전달사항
11구분
12내원
}
       ARow := GrdPromise.Row;
       if ARow > 0 then
       begin
              with grdPromise do
              begin
                     EdtName.Text := Cells[1, Arow];
                     EdtChart.Text := Cells[2, Arow];
                     EdtDay.Text := Cells[3, Arow];
                     EdtTime.Text := Cells[4, Arow];
                     EdtTeam.Text := Cells[5, Arow];

                     EdtTel.Text := Cells[7, Arow];
                     EdtRemark.Text := Cells[8, Arow];
                     EdtPibo.Text := '';
                     Edtmemo.Text := Cells[10, Arow];

                     LoadPicture(Cells[2, Arow]);
              end;
       end;
end;

procedure TpromiseJohoi_f.LoadPicture(PatNo: string);
var
       CurrentFile: string;
begin

       if FileExists(configvalue.varpicpath + '\Picture\' + PatNo + '.BMP')
              then
       begin
              CurrentFile := configvalue.varpicpath + '\Picture\' + PatNo +
                     '.BMP';
              imgPic.Picture.LoadFromFile(CurrentFile);
       end
       else
       begin
              imgPic.Picture := nil;

       end;
end;

procedure TpromiseJohoi_f.EdtSchKeyPress(Sender: TObject; var Key: Char);

begin
       if Key = #13 then
       begin
              //  patientSearch_name(EdtSch.Text);
           {   if selcombo.text = '성명' then
              begin
                     if trim(edtsch.text) = '' then
                     begin
                           { if Application.MessageBox(pchar('검색어가 없습니다.'
                                   + #10#13 +
                                   '시간이 많이 소요될 수 있습니다.' + #10#13 +
                                   '그래도 진행하시겠습니까?'), '검색 확인',
                                   MB_OKCANCEL) = 1 then
                            begin
                                   PatientSearch_whole(edtsch.text);

                            end
                            else
                            begin
                                   edtsch.setFocus;
                            end;
                            }
          {           end
                     else
                     begin
                           // PatientSearch_whole(edtsch.text);
                     end;
              end
              else
           }
                     PatientSearch_Part(edtSch.Text);
       end;

end;

procedure TpromiseJohoi_f.patientSearch_name(varsch: string);
begin
       with Dm_f.sqlwork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('Select a.Name,a.Chart, a.Tel, a.Remark, a.DamTeam, a.pDay, a.pTime,a.Cancel,a.pos, a.pMemo,  b.PiboName,b.C_phone, b.Jumin');
              Sql.Add('from ma_promise a Left Join view_gogek b On a.Chart=b.Chart');

              {
             성명
             챠트번호
             전화번호
             H/P
             예약내용
             }
              if SelCombo.Text = '성명' then
              begin
              //       if main_f.FilterResultCheck = false then
              //              Sql.Add('Where Name Like :Name and (pDay=:pday and pday=:pday2)  ')
              //       else
                            Sql.Add('Where Name =:Name and pDay=:pday');
                     Sql.Add('Group By a.Name,a.Chart, a.Tel, a.Remark, a.DamTeam,a.pDay, a.pTime,a.Cancel,a.pos, a.pMemo, b.fil, b.PiboName,b.C_phone, b.jumin');
                     Sql.Add('Order by pDay');
                     ParamByName('Name').AsString := '%' + varsch + '%';
                     ParamByName('pDay').AsString :=formatDatetime('YYYY-MM-DD',PromiseJohoi_f.wDateEdit1.Date);
                     ParamByName('pDay2').AsString := formatDatetime('YYYY-MM-DD',PromiseJohoi_f.wDateEdit2.Date) ;
              end;
              { if SelCombo.Text = '챠트번호' then
               begin
                    if main_f.FilterResultCheck = false then
                         Sql.Add('Where YChartNo=:YChartNo and (YDay=:Yday and Yday=:Yday2) and (b.fil <> ''1'' or b.fil is null)')
                    else
                         Sql.Add('Where YChartNo =:YChartNo and YDay=:Yday');
                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.team,a.YDay, a.YTime,a.YCancel, a.YcMemo,b.fil, b.PiboName,b.C_phone, b.jumin');
                    Sql.Add('Order by YHwanName');
                    ParamByName('YChartNo').AsString := varsch;
                    ParamByName('YDay').AsString := WdateEdit1.AsString;
                    ParamByName('YDay2').AsString := WdateEdit2.AsString;
               end;
               if SelCombo.Text = '전화번호' then
               begin
                    if main_f.FilterResultCheck = false then
                         Sql.Add('Where YTel=:YTel and (YDay=:Yday and Yday=:Yday2) and (b.fil <> ''1'' or b.fil is null)')
                    else
                         Sql.Add('Where YTel =:YTel and YDay=:Yday');
                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.team,a.YDay, a.YTime,a.YCancel, a.YcMemo,b.fil, b.PiboName, b.C_phone,b.jumin');
                    Sql.Add('Order by YHwanName');
                    ParamByName('YTel').AsString := varsch;
                    ParamByName('YDay').AsString := WdateEdit1.AsString;
                    ParamByName('YDay2').AsString := WdateEdit2.AsString;
               end;

               if SelCombo.Text = '예약내용' then
               begin
                    if main_f.FilterResultCheck = false then
                         Sql.Add('Where YRemark Like :YRemark and (YDay=:Yday and Yday=:Yday2) and (b.fil <> ''1'' or b.fil is null)')
                    else
                         Sql.Add('Where YRemark =:YRemark and YDay=:Yday');
                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.team,a.YDay, a.YTime,a.YCancel, a.YcMemo,b.fil, b.PiboName,b.C_phone, b.jumin');
                    Sql.Add('Order by YHwanName');
                    ParamByName('Yremark').AsString := '%' + varsch + '%';
                         // '%' + SearchEdit.text + '%'
                    ParamByName('YDay').AsString := WdateEdit1.AsString;
                    ParamByName('YDay2').AsString := WdateEdit2.AsString;
               end;
               if SelCombo.Text = '예약메모' then
               begin
                    if main_f.FilterResultCheck = false then
                         Sql.Add('Where Ycmemo Like :Ycmemo and (b.fil <> ''1'' or b.fil is null) and YDay=:Yday')
                    else
                         Sql.Add('Where Ycmemo Like :Ycmemo and (YDay=:Yday and Yday=:Yday2)');
                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.YDay, a.YTime,a.YCancel, a.YcMemo,a.team,b.fil, b.PiboName, b.jumin, b.Team, b.C_phone, c.Team_Name, C.Team_Doctor1');
                    Sql.Add('Order by YHwanName');
                    ParamByName('Ycmemo').AsString := '%' + varsch + '%';
                    // '%' + SearchEdit.text + '%'
                    ParamByName('YDay').AsString := WdateEdit1.AsString;
                    ParamByName('YDay2').AsString := WdateEdit2.AsString;
               end;
               if SelCombo.Text = '팀' then
               begin
                    if main_f.FilterResultCheck = false then
                         Sql.Add('Where team =:team and (YDay=:Yday and Yday=:Yday2) and (b.fil <> ''1'' or b.fil is null)')
                    else
                         Sql.Add('Where team =:team and YDay=:Yday');
                    Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.team,a.YDay, a.YTime,a.YCancel, a.YcMemo,b.fil, b.PiboName,b.C_phone, b.jumin');
                    Sql.Add('Order by YHwanName');
                    ParamByName('team').AsString := varsch;
                         // '%' + SearchEdit.text + '%'
                    ParamByName('YDay').AsString := WdateEdit1.AsString;
                    ParamByName('YDay2').AsString := WdateEdit2.AsString;
               end;
            }
              Open;
       end;


       selectdata;

end;

procedure TpromiseJohoi_f.FormDestroy(Sender: TObject);
begin

       PromiseJohoi_f := nil;

end;

procedure TpromiseJohoi_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       Action := Cafree;

end;

procedure TpromiseJohoi_f.HwanjaBtnClick(Sender: TObject);
//var
//       PromisePrint_f: TPromisePrint_f;
begin
//       PromisePrint_f := TPromisePrint_f.CreateFrm(Self, grdPromise);
//       try
//              with PromisePrint_f, QuickRep1 do
//              begin
//                     PreviewModal;
//              end;
//       finally
//              PromisePrint_f.Free;
//       end;

end;

procedure TpromiseJohoi_f.btnSchClick(Sender: TObject);
begin

    PatientSearch_Part(edtSch.text);

//  PatientSearch_whole(searchWord,
//      formatDatetime('YYYY-MM-DD',   wDateEdit1.date),
//      formatDatetime('YYYY-MM-DD',   wDateEdit2.date));
end;

procedure TpromiseJohoi_f.PatientSearch_Part(varsch: string);
const
     SQL_SELECT_DATA_promise = 'select * FROM ma_promise ' ;

     SQL_SELECT_DATA_promise_term=
          'Where (pday >=:pday and pday <=:pday2)  and cancel<> ''C'' and  cancel<> ''Y'' and  cancel<> ''R''   '  ;
     SQL_SELECT_DATA_promise_name=
          'and name like :name '  ;

begin
       FieldClear;
       with Dm_f.sqlwork do
       begin


              Close;
              Sql.Clear;
                sql.Text:= SQL_SELECT_DATA_promise
                   +  SQL_SELECT_DATA_promise_term ;
              ParamByName('pday').AsString :=   FormatDateTime('YYYY-MM-DD',  wDateEdit1.Date);
              ParamByName('pday2').AsString :=  FormatDateTime('YYYY-MM-DD',  wDateEdit2.Date);

              if trim(varSch) <> '' then
              begin
                sql.Text:= sql.text + SQL_SELECT_DATA_promise_name  ;

                 ParamByName('name').AsString :=  '%'+varSch+'%';
              end;
              sql.text:= sql.text + 'order by ptime, team ';
             { Sql.Add('Select a.[Name] , a.Chart, a.Tel, a.Remark, a.pDay, a.pTime, a.Cancel, a.pMemo, a.team, a.Gubun,a.pos,');
              Sql.Add(' b.PiboName, b.Jumin,   b.C_phone,  c.Team_Name, C.Team_Doctor1');
              Sql.Add('from ma_promise a Left Join view_gogek b');
              Sql.Add(' On a.Chart=b.Chart');
              Sql.Add(' Left Join ma_Team c');
              Sql.Add(' On a.Team = c.Team_Name');
             }
              {
             성명
             챠트번호
             전화번호
             H/P
             예약내용
             }
         {     if SelCombo.Text = '성명' then
              begin
                     if main_f.FilterResultCheck = false then
                            Sql.Add('Where a.Name Like :Name and pDay=:pday')
                     else
                            Sql.Add('Where a.Name Like :Name and (pDay=:pday)');
                     //(YDay=:Yday and YDay=:Yday2)

                     Sql.Add('Group By a.Name,  a.chart, a.Tel, a.Remark, a.pDay, a.pTime,a.Cancel,a.pos, a.pMemo, a.team, a.Gubun, ');
                     Sql.Add('b.PiboName, b.jumin,  b.C_phone,c.Team_Name, C.Team_Doctor1');
                     Sql.Add('Order by pDay desc');
                     ParamByName('Name').AsString := '%' + varsch + '%';
                     ParamByName('pDay').AsString := WdateEdit1.AsString;
                     //ParamByName('YDay2').AsString := WdateEdit2.AsString;
              end;
          }
              {  if SelCombo.Text = '챠트번호' then
                begin
                     if main_f.FilterResultCheck = false then
                          Sql.Add('Where YChartNo Like :YChartNo and (b.fil <> ''1'' or b.fil is null) and (YDay=:Yday)') //(YDay=:Yday and YDay=:Yday2)
                     else
                          Sql.Add('Where YChartNo=:YChartNo and YDay=:Yday');

                     Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark,a.YDay, a.YTime,a.YCancel, a.YcMemo,a.team,a.YGubun,b.fil, b.PiboName, b.jumin, b.Team,b.C_phone, c.Team_Name, C.Team_Doctor1');
                     Sql.Add('Order by YHwanName');
                     ParamByName('YChartNo').AsString := varsch;
                     ParamByName('YDay').AsString := WdateEdit1.AsString;
                     //ParamByName('YDay2').AsString := WdateEdit2.AsString;
                end;
                if SelCombo.Text = '전화번호' then
                begin
                     if main_f.FilterResultCheck = false then
                          Sql.Add('Where YTel Like :YTel and (b.fil <> ''1'' or b.fil is null) and (YDay=:Yday)')     //(YDay=:Yday and YDay=:Yday2)
                     else
                          Sql.Add('Where YTel=:YTel and YDay=:Yday');
                     Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.YDay, a.YTime,a.YCancel, a.YcMemo,a.team,a.YGubun,b.fil, b.PiboName, b.jumin, b.Team,b.C_phone, c.Team_Name, C.Team_Doctor1');
                     Sql.Add('Order by YHwanName');
                     ParamByName('YTel').AsString := varsch;
                     ParamByName('YDay').AsString := WdateEdit1.AsString;
                     //ParamByName('YDay2').AsString := WdateEdit2.AsString;
                end;

                if SelCombo.Text = '예약내용' then
                begin
                     if main_f.FilterResultCheck = false then
                          Sql.Add('Where YRemark Like :YRemark and (b.fil <> ''1'' or b.fil is null) and (YDay=:Yday)')  //(YDay=:Yday and YDay=:Yday2)
                     else
                          Sql.Add('Where YRemark Like :YRemark and YDay=:Yday');
                     Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.YDay, a.YTime,a.YCancel, a.YcMemo,a.team,a.YGubun,b.fil, b.PiboName, b.jumin, b.Team, b.C_phone, c.Team_Name, C.Team_Doctor1');
                     Sql.Add('Order by YHwanName');
                     ParamByName('Yremark').AsString := '%' + varsch + '%';
                     // '%' + SearchEdit.text + '%'
                     ParamByName('YDay').AsString := WdateEdit1.AsString;
                     //ParamByName('YDay2').AsString := WdateEdit2.AsString;
                end;
                if SelCombo.Text = '예약메모' then
                begin
                     if main_f.FilterResultCheck = false then
                          Sql.Add('Where Ycmemo Like :Ycmemo and (b.fil <> ''1'' or b.fil is null) and (YDay=:Yday)')   //(YDay=:Yday and YDay=:Yday2)
                     else
                          Sql.Add('Where Ycmemo Like :Ycmemo and YDay=:Yday');
                     Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.YDay, a.YTime,a.YCancel, a.YcMemo,a.team,a.YGubun,b.fil, b.PiboName, b.jumin, b.Team, b.C_phone, c.Team_Name, C.Team_Doctor1');
                     Sql.Add('Order by YHwanName');
                     ParamByName('Ycmemo').AsString := '%' + varsch + '%';
                     // '%' + SearchEdit.text + '%'
                     ParamByName('YDay').AsString := WdateEdit1.AsString;
                     //ParamByName('YDay2').AsString := WdateEdit2.AsString;
                end;
                if SelCombo.Text = '팀' then
                begin
                     if main_f.FilterResultCheck = false then
                          Sql.Add('Where team =:team and (b.fil <> ''1'' or b.fil is null) and (YDay=:Yday)')   //(YDay=:Yday and YDay=:Yday2)
                     else
                          Sql.Add('Where team =:team and YDay=:Yday');
                     Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.YDay, a.YTime,a.YCancel, a.YcMemo,a.team,a.YGubun, b.fil,b.PiboName, b.jumin, b.Team, b.C_phone,c.Team_Name, C.Team_Doctor1');
                     Sql.Add('Order by YHwanName');
                     ParamByName('team').AsString := varsch;
                     // '%' + SearchEdit.text + '%'
                     ParamByName('YDay').AsString := WdateEdit1.AsString;
                     //ParamByName('YDay2').AsString := WdateEdit2.AsString;
                end; }
              Open;
       end;
       if Dm_f.sqlwork.IsEmpty then
       begin
              showmessage('검색된 환자가 없습니다.');
       end
       else
       begin
              selectdata;
       end;
end;

procedure TpromiseJohoi_f.GrdFindMouseDown(Sender: TObject;
       Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
       fieldsetGrid;
end;

procedure TpromiseJohoi_f.FormCreate(Sender: TObject);
begin
       varView := '';
end;

procedure TpromiseJohoi_f.N3Click(Sender: TObject);
const
       SQL_DELETE_DATA = 'DELETE FROM ma_promise' + #13#10 +
              '              WHERE  Chart=:Chart and pDay=:pDay  and Gubun=:Gubun and pTime=:pTime and Team=:Team';

var
       varTime: string;
       varDay: string;
       varTeam: string;
       varChartNo: string;
       varGubun: string;

begin
       if MessageDlg('선택하신 ' + '[' + edtName.Text + ']' +
              '님의 예약을 삭제합니까?', mtInformation, [mbYes, mbNo], 0) =
              mrYes then

       begin
              FieldClear;

              with grdpromise do
              begin
                     varTime := Cells[4, row];
                     varDay := Cells[3, row];
                     varTeam := Cells[5, row];
                     varChartNo := Cells[2, row];
                     varGubun := Cells[13, row];
              end;
              with Dm_f.sqlwork  do
              begin
                     try
                            
                            SQL.Text := SQL_DELETE_DATA;
                            ParamByName('ptime').AsString := varTime;
                            ParamByName('pday').AsString := varDay;
                            ParamByName('team').AsString := varTeam;
                            ParamByName('chart').AsString := varChartNo;
                            ParamByName('gubun').AsString := varGubun;
                            ExecSQL;

                     except
                            on E: Exception do
                            begin
                                   ShowMessage(E.Message +
                                          ' [예약내용 삭제오류]');
                            end;
                     end;
              end;

              PatientSearch_Part(searchWord);

       end;

end;

procedure TpromiseJohoi_f.N2Click(Sender: TObject);
const
       SQL_CANCEL_DATA = 'UPDATE ma_promise SET ' + #13#10 +
              '                    CANCEL = :CANCEL ' + #13#10 +
              '              WHERE chart=:Chart and pDay=:pDay  and Gubun=:Gubun and pTime=:pTime and Team=:Team';

var
       varTime: string;
       varDay: string;
       varTeam: string;
       varChartNo: string;
       varGubun: string;
begin
       if MessageDlg('선택하신 ' + '[' + edtName.Text + ']' +
              '님의 예약을 취소합니까?', mtInformation, [mbYes, mbNo], 0) =
              mrYes then

       begin
              with grdpromise do
              begin
                     varTime := Cells[4, row];
                     varDay := Cells[3, row];
                     varTeam := Cells[5, row];
                     varChartNo := Cells[2, row];
                     varGubun := Cells[13, row];
              end;
              with Dm_f.sqlwork do
              begin
                     try
                            SQL.Text := SQL_CANCEL_DATA;
                            ParamByName('pTime').AsString := varTime;
                            ParamByName('pDAY').AsString := varDay;
                            ParamByName('TEAM').AsString := varTeam;
                            ParamByName('CHART').AsString := varChartNo;
                            ParamByName('GUBUN').AsString := varGubun;
                            ParamByName('CANCEL').AsString := 'Y';

                            ExecSQL;
                     except
                            on E: Exception do
                            begin
                                   ShowMessage(E.Message +
                                          ' [예약내용 취소오류]');
                            end;
                     end;
              end;
              //  Yeyak_f.SelectData(Yeyak_f.ViewKind);
              PatientSearch_Part(edtSch.Text);
              //  Yeyak_f.PostData(Yeyak_f.grdmain);
       end;
end;

procedure TpromiseJohoi_f.spSkinButton1Click(Sender: TObject);
begin


     //인쇄시 차트번호 0 인쇄
     //ExportCellFormats = false


     savedialog1.fileName:='예약정보'+'('+ formatdatetime('YYYYMMDDHH',now) +')'+'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

 
end;

procedure TpromiseJohoi_f.grdPromiseGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
       varDate, varPos, varCancel: string;
begin
{
1성명
2챠트
3예약일
4시간
5진료실
6담당의
7전화
8내용
9취소여부
10전달사항
11구분
12내원
}

       varDate := formatdatetime('YYYY-MM-DD', now);
       varPos := grdPromise.Cells[12, aRow];
       varCancel := grdPromise.Cells[9, aRow];

       if (arow > 0)  and  (acol > 0 ) and
              (grdPromise.Cells[3, aRow] <= varDate) then
       begin

                            if trim(varCancel) = 'Y' then
                            begin
                                   aBrush.Color :=  clgray;
                                   aFont.Color := clblack;
                            end else
                            if trim(varCancel) = 'C' then
                            begin
                                   aBrush.Color :=  clgray;
                                   aFont.Color := clblack;
                            end
                            else if trim(varCancel) = 'U' then
                            begin
                                   aBrush.Color := clpurple;
                                   aFont.Color := clBlack;
                            end
                            else if trim(varpos) = '0' then //수납완료(3)에서 진료중으로 수정(1)
                            begin
                                   aBrush.Color := clwhite;
                                   aFont.Color := clGray;

                            end
                            else if trim(varpos) = '1' then //수납완료(3)에서 진료중으로 수정(1)
                            begin
                                   aBrush.Color := clwhite;
                                   aFont.Color := clGray;

                            end
                            else if trim(varpos) = '2' then //수납완료(3)에서 추가
                            begin
                                   aBrush.Color := clwhite;
                                   aFont.Color := clGray;

                            end
                            else if trim(varpos) = '3' then //수납완료(3)에서 추가
                            begin
                                   aBrush.Color := clwhite;
                                   aFont.Color := clGray;

                            end
                            else if trim(varpos) = '4' then //연락안됨
                            begin
                                   aBrush.Color := clRed;
                                   aFont.Color := clBlack;

                            end
                            else if trim(varpos) = '5' then //재예약
                            begin
                                   aBrush.Color := clGreen;
                                   aFont.Color := clBlack;

                            end
                            else if trim(varpos) = '6' then //리콜
                            begin
                                   aBrush.Color := clBlue;
                                   aFont.Color := clBlack;

                            end
                            else if trim(varpos) = '7' then //종결
                            begin
                                   aBrush.Color := clOlive;
                                   aFont.Color := clBlack;

                            end
                            else
                            begin
                                   aBrush.Color := clwhite;
                                   aFont.Color := clblack;
                            end;







       end;

       if (grdPromise.Cells[3, aRow] > varDate) then
              aBrush.Color := clWhite;

end;

procedure TpromiseJohoi_f.grdPromiseGridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: String);
  var
  varpos:string;
  varCancel:string;
  varHint:string;
begin
       varPos := grdPromise.Cells[14, aRow];
       varCancel := grdPromise.Cells[8, aRow];

       if (arow > 0)    then
       begin

                            if trim(varCancel) = 'Y' then
                            begin
                                  varHint:='취소';
                            end
                            else
                            if trim(varCancel) = 'C' then
                            begin
                                  varHint:='취소';
                            end
                            else if trim(varCancel) = 'U' then
                            begin
                                   varHint:='변경';
                            end
                            else if trim(varpos) = '0' then
                            begin
                                  varHint:='진료대기';

                            end
                            else if trim(varpos) = '1' then
                            begin
                                  varHint:='진료중';

                            end
                            else if trim(varpos) = '2' then
                            begin
                                   varHint:='수납대기';
                            end
                            else if trim(varpos) = '3' then
                            begin
                                  varHint:='수납완료';
                            end
                            else if trim(varpos) = '4' then //연락안됨
                            begin
                                  varHint:='연락안됨'

                            end
                            else if trim(varpos) = '5' then //재예약
                            begin
                                   varHint:='재예약';
                            end
                            else if trim(varpos) = '6' then //리콜
                            begin
                                    varHint:='리콜';

                            end
                            else if trim(varpos) = '7' then //종결
                            begin
                                   varHint:='종결';

                            end
                            else
                            begin
                                   varHint:='미처리';
                            end;







       end;

                            hintstr := '<FONT color="clBlue" size=11>' + '<B>' +
                                   varHint + '</B>' +
                                   '</FONT>';

end;

procedure TpromiseJohoi_f.grdPromiseClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
   fieldsetGrid;

end;

procedure TpromiseJohoi_f.grdPromiseDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
  var
  sb:integer;
begin

     promiseFrame_fr.dpFdate.Date := strtodate(grdPromise.Cells[3, grdPromise.row]);
     promiseFrame_fr.dpsDate.Date := strtodate(grdPromise.Cells[3, grdPromise.row]);
     promiseFrame_fr.dayset(promiseFrame_fr.dpSdate.Date);

   //  promiseFrame_fr.tcTeam.TabIndex := strtoint(grdPromise.Cells[15, grdPromise.row]);
     promiseFrame_fr.SelectPromise(0);
     promiseFrame_fr.searchPromise(grdPromise.Cells[1, grdPromise.row]);

     sb := promiseFrame_fr.planner1.AbsTimeToCell(strtoTime(grdPromise.Cells[4, grdPromise.row]));
     promiseFrame_fr.planner1.GridTopRow := sb  ;
     close;


end;

end.

