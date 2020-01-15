unit FindGogek;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs, Grids, BaseGrid, AdvGrid, AdvPanel, StdCtrls, ExtCtrls,
     EllipsLabel, AdvGlowButton,   AdvObj, AdvOfficeButtons,
     iniFiles, AdvEdit, AdvUtil;

type
     TfindGogek_f = class(TForm)
          pnlView: TAdvPanel;
          grdJinryo: TAdvStringGrid;
          grdPromise: TAdvStringGrid;
    pnlSummary: TAdvPanel;
    grdSunap: TAdvStringGrid;
    lblPlan: TLabel;
    wLabel8: TLabel;
    Label1: TLabel;
    edtMonthly: TEdit;
    grdFind: TAdvStringGrid;
    edtMonthGeumek: TAdvEdit;
    Label2: TLabel;
    pnlBottom: TAdvPanel;
    Shape1: TShape;
    lbltime: TLabel;
    lblshowtime: TLabel;
    lblCount: TLabel;
    cbView: TAdvOfficeCheckBox;
    cbSunapZero: TAdvOfficeCheckBox;
    btnOk: TAdvGlowButton;
    btnNew: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure grdFindKeyPress(Sender: TObject; var Key: Char);
          procedure grdFindDblClick(Sender: TObject);
          procedure grdFindKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure grdFindGetAlignment(Sender: TObject; ARow, ACol:
               Integer;
               var HAlign: TAlignment; var VAlign: TVAlignment);
          procedure grdFindClickCell(Sender: TObject; ARow, ACol: Integer);
          procedure grdFindRowChanging(Sender: TObject; OldRow, NewRow:
               Integer;
               var Allow: Boolean);
          procedure cbViewClick(Sender: TObject);
          procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
          procedure grdPromiseGetCellColor(Sender: TObject; ARow, ACol: Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure grdPromiseGridHint(Sender: TObject; ARow, ACol: Integer;
               var hintstr: string);
          procedure grdFindClickSort(Sender: TObject; ACol: Integer);
          procedure grdPromiseClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdPromiseDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdSunapGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdSunapGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
     private
          procedure SelectDataJinryo(varChart: string);
          procedure SelectDataSunap(varChart: string; sunapZero:boolean = false);
          procedure SelectDataYeyak(varChart: string);
          procedure saveini;
          { Private declarations }
     public
          { Public declarations }


     end;

var
     findGogek_f: TfindGogek_f;

implementation
uses uDM, uFunctions,uGogekData_find, uGogekData, uFormInit;//,uPromiseData, passInput, Promisemain;
{$R *.dfm}

procedure TfindGogek_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TfindGogek_f.FormDestroy(Sender: TObject);
begin
     findGogek_f := nil;
end;

procedure TfindGogek_f.FormShow(Sender: TObject);
var
     path: string;
     forminit: Tinifile;
     varChart: string;
begin
     caption := '환자검색';

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     if FormInit.ReadString('SCHEDULE', 'FIND', '') = '1' then
     begin
          CBView.Checked := True;

     end
     else
     begin
          CBView.Checked := false;
     end;

     if FormInit.ReadString('SCHEDULE', 'SUNAPZERO', '') = '1' then
     begin
          cbSunapZero.Checked := True;

     end
     else
     begin
          cbSunapZero.Checked := false;
     end;



     with grdpromise do
     begin
          colwidths[4] := 0;
          colwidths[5] := 0;
          colwidths[6] := 0;
          colwidths[7] := 0; //구분
     end;

     pnlView.Visible := cbView.Checked;
     if cbView.Checked then
     begin
          varChart := grdFind.cells[1, 1];

          SelectDataYeyak(varChart);
          SelectDataJinryo(varChart);
          SelectDataSunap(varChart, cbSunapZero.Checked);
     end;

     shape1.visible := vViewAll ; //main_f.varViewAll;


     initAdvPanel(pnlSummary, dm_f.PictureContainer1 , 0);
     initAdvPanel(pnlView,    dm_f.PictureContainer1 , 0);
     initAdvPanel(pnlBottom,    dm_f.PictureContainer1 , 0);

      initAdvGrid(grdPromise);
      initAdvGrid(grdJinryo);
      initAdvGrid(grdSunap);
      initAdvGrid(grdFind);



end;

procedure TfindGogek_f.btnCancelClick(Sender: TObject);
begin
     close;
end;

procedure TfindGogek_f.grdFindKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          ModalResult := mrOk

     else
          if key = #27 then
               ModalResult := mrCancel;

end;

procedure TfindGogek_f.grdFindDblClick(Sender: TObject);
begin
     ModalResult := mrOk;

     //     grdfind.SortIndexes.a

end;

procedure TfindGogek_f.grdFindKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     case key of
          VK_ESCAPE: //Exit
               begin
                    Close;
               end;
          VK_F1: //도움말
               begin
               end;
          VK_F2: //새로
               begin
                    modalResult := mrYes;
               end;
          VK_F5: //확인
               begin
                    modalResult := mrOk;
               end;
     end;
end;

procedure TfindGogek_f.grdFindGetAlignment(Sender: TObject; ARow,
     ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          3, 5:
               Halign := taCenter;
     end;

end;

procedure TfindGogek_f.SelectDataYeyak(varChart: string);
var
     i, reccount: integer;
     //CurrentTime: string;
begin
     //CurrentTime := FormatDateTime('HH:MM', now);
     grdpromise.ClearRows(1, grdpromise.RowCount);
     grdpromise.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT  * ');//chart, pday, ptime, remark, pos, cancel, gubun, team');
          Sql.Add('FROM       ma_promise                   ');
          Sql.Add('WHERE   (chart =:chart)');
          Sql.Add('ORDER BY pday DESC         ');
          ParamByName('chart').AsString := varchart;
          Open;
          First;
          if not IsEmpty then
          begin
               recCount := recordCount;
               grdpromise.RowCount := recCount + 1;
               grdpromise.FixedRows := 1;

               {

일자
시간
예약내용
차트번호
               }
                              //  Application.ProcessMessages;
               grdPromise.BeginUpdate;
               while not dm_f.SqlWork.Eof do
               begin
                    with grdPromise do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin

                              Cells[1, i] :=
                                   FieldByName('pday').AsString;
                              Cells[2, i] :=
                                   FieldByName('ptime').AsString;
                              Cells[3, i] :=
                                   FieldByName('remark').AsString;
                              Cells[4, i] :=
                                   FieldByName('chart').AsString;
                              Cells[5, i] :=
                                   FieldByName('pos').AsString;
                              Cells[6, i] :=
                                   FieldByName('cancel').AsString;
                              Cells[7, i] :=  FieldByName('gubun').AsString;
                                 //  LoadGubunName(FieldByName('gubun').AsString);
                              Cells[8, i] :=
                                   loadJinjryosil(FieldByName('team').AsString);
                              Cells[9, i] :=
                                  LoadDocNameFromSawonWithID( FieldByName('doc').AsString) ;
                              AutoNumberCol(0);
                              next;
                         end;
                    end;
               end;
               grdPromise.EndUpdate;
          end
          else
          begin
               grdpromise.RowCount := 1;

          end;
     end;
end;

procedure TfindGogek_f.SelectDataSunap(varChart: string; sunapzero:boolean = false);
var
     i, rec: integer;
     PlanChong:integer;
     varQuery:string;
begin

     varQuery := LoadSunapDataQuery;

     if trim(varChart) = '' then
          exit;

     grdSunap.rowcount := 1;

     with dm_f.Sqlwork, grdSunap do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sunap');
          Sql.Add(' where Chart=:chart');
          if   sunapzero = true then
          begin

              Sql.Add(' and sunapEk <> 0' );

          end;


            //   if main_f.varviewAll <> true then

               if vViewAll  <> true then
               begin
                    if varQuery <> '' then
                         sql.Add('and  (' + varQuery + ' or skind is null )' );

               end;




          Sql.Add(' order by sDay desc');
          ParamByName('chart').AsString := varChart;



          Open;

          if not DM_f.SqlWork.isEmpty then
          begin
               rec := recordcount;
               rowcount := rec + 1;
               while not eof do
               begin
                    for i := 1 to rec do
                    begin
                         Cells[1, i] :=
                              FieldByName('sDay').AsString;
                         Floats[2, i] :=
                              FieldByName('sunapEk').AsFloat;
                         Floats[3, i] :=  0;
                          //    FieldByName('sunapEk').AsFloat
                          //    - (FieldByName('iBohumek').AsFloat
                          //    + FieldByName('iWolbiek').AsFloat
                           ////   + FieldByName('iEtcek').AsFloat
                          //    + FieldByName('iilbanek').AsFloat);
                         Cells[4, i] :=
                              FieldByName('chamgo').AsString;

                         Next;
                    end;
               end;

          end
          else
          begin
               rowcount := 1;
          end;


          //총계획금액
          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add('sum(subtotal) as sSubtotal');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart'); // and chart_id=:chart_id');
          ParamByName('chart').AsString := varChart;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not DM_f.SqlWork.isEmpty then
          begin
               PlanChong := FieldByName('sSubTotal').AsInteger;
          end
          else
          begin
               PlanChong := 0;
          end;

          lblPlan.Caption := formatFloat('#,0', planChong);

          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add(' * ');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart'); // and chart_id=:chart_id');
          ParamByName('chart').AsString := varChart;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not DM_f.SqlWork.isEmpty then
          begin
                    edtMonthly.text := fieldByName('Monthly').AsString;
                    edtMonthGeumek.IntValue := fieldByName('MonthGeumek').AsInteger;
          end
          else
          begin
                    edtMonthly.text := '0';
                    edtMonthGeumek.IntValue := 0;
          end;

      end;



end;

procedure TfindGogek_f.SelectDataJinryo(varChart: string);
var
     sPortion,
          sSang,
          sTx: string;
     i, rec: integer;

begin
     if trim(varChart) = '' then
          exit;

     with dm_f.SqlWork, grdJinryo do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select jin_day from jinryo_p where chart=:chart and jin_gu=''0'' and makam_chk<>''9''  ');
          Sql.Add(' union select distinct jin_day from jinryo_s where chart=:chart order by jin_day desc');
          ParamByName('chart').AsString := varChart;
          Open;
          if not DM_f.SqlWork.isEmpty then
          begin
               rec := recordcount;
               rowcount := rec + 1;
               while not eof do
               begin
                    for i := 1 to rec do
                    begin
                         sPortion := '';
                         sSang := '';
                         sTx := '';
                         Cells[1, i] :=
                              FieldByName('jin_day').AsString;

                         {dm_f.sqlTemp.Close;
                         dm_f.sqlTemp.Sql.Clear;
                         dm_f.sqlTemp.Sql.Add('select o.p1,o.p2,o.p3,o.p4,o.s_key1,o.s_key2,o.s_key3,p.sunapak from jinryo_o o,jinryo_p p where o.chart=:chart and o.jin_day=:jin_day and o.chart=p.chart and o.jin_day=p.jin_day and p.chojae<>''9'' order by o.jin_order');
                         dm_f.sqlTemp.ParamByName('chart').AsString :=
                                varChart; //main_f.GogekChart;
                         dm_f.sqlTemp.ParamByName('jin_day').AsString
                                :=
                                FieldByName('jin_day').AsString;
                         dm_f.sqlTemp.Open;
                         dm_f.sqlTemp.First;
                         if not dm_f.sqlTemp.isEmpty then
                         begin
                                while not dm_f.sqlTemp.eof do
                                begin
                                       sPortion := sPortion + '/' +
                                              ConvertTeeth(dm_f.sqlTemp.FieldByName('p1').AsString,
                                              dm_f.sqlTemp.FieldByName('p2').AsString,
                                              dm_f.sqlTemp.FieldByName('p3').AsString,
                                              dm_f.sqlTemp.FieldByName('p4').AsString);
                                       sSang := sSang + '/' +
                                              dm_f.sqlTemp.fieldByName('s_key1').AsString;
                                       dm_f.sqlTemp.next;
                                end;
                                Cells[2, i] :=
                                       dm_f.sqlTemp.FieldByName('sunapak').AsString;
                                Cells[3, i] :=
                                       Trim(Copy(sPortion, 2, 200));
                                Cells[4, i] :=
                                       Trim(Copy(sSang, 2, 200));

                         end;
                         }
                         dm_f.sqlTemp.Close;
                         dm_f.sqlTemp.Sql.Clear;
                         dm_f.sqlTemp.Sql.Add('select su_kor_name from jinryo_s where  chart=:chart and jin_day=:jin_day and g_check=''G'' order by iOrder');
                         dm_f.sqlTemp.ParamByName('chart').AsString :=
                              varChart; // main_f.GogekChart;
                         dm_f.sqlTemp.ParamByName('jin_day').AsString
                              :=
                              FieldByName('jin_day').AsString;
                         dm_f.sqlTemp.Open;
                         dm_f.sqlTemp.First;
                         if not dm_f.sqlTemp.isEmpty then
                         begin
                              while not dm_f.sqlTemp.eof do
                              begin
                                   sTx := sTx + '/' +
                                        dm_f.sqlTemp.fieldByName('su_kor_name').AsString;
                                   dm_f.sqlTemp.next;
                              end;
                              Cells[2, i] :=
                                   Trim(Copy(sTx, 2, 200));
                         end;

                         Next;
                    end;
               end;
          end
          else
          begin
               rowcount := 1;

          end;

     end;
end;

procedure TfindGogek_f.grdFindClickCell(Sender: TObject; ARow,
     ACol: Integer);

var
     varChart: string;
begin
     if grdFind.row > 1 then
      exit;
   // if  ARow  < 1 then   exit;

     if cbView.Checked then
     begin
          varChart := grdFind.cells[1, aRow];

          SelectDataYeyak(varChart);
          SelectDataJinryo(varChart);
          SelectDataSunap(varChart, cbSunapZero.Checked);
     end;

end;

procedure TfindGogek_f.grdFindRowChanging(Sender: TObject; OldRow,
     NewRow: Integer; var Allow: Boolean);
var
     varChart: string;
     aRow: integer;
begin
     aRow := newRow;
     if cbView.Checked then
     begin
          varChart := grdFind.cells[1, newRow];

          SelectDataYeyak(varChart);
          SelectDataJinryo(varChart);
          SelectDataSunap(varChart, cbSunapZero.Checked);

     end;
     caption := '환자검색' + '  [' + grdFind.cells[2, aRow]
         + '(' + grdFind.cells[1, aRow] + ')'
         + grdFind.cells[5, aRow] + '/' + grdFind.cells[6, aRow] + ']';
end;

procedure TfindGogek_f.cbViewClick(Sender: TObject);
var
     varChart: string;
begin
     pnlView.Visible := cbView.Checked;
     if cbView.Checked then
     begin
          varChart := grdFind.cells[1, grdFind.Row];

          SelectDataYeyak(varChart);
          SelectDataJinryo(varChart);
          SelectDataSunap(varChart, cbSunapZero.Checked);

     end;
end;

procedure TfindGogek_f.saveini;
var
     path: string;
     forminit: Tinifile;
begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     if CBView.Checked = True then
     begin
          FormInit.WriteString('SCHEDULE', 'FIND', '1');
     end
     else
          if CBView.Checked = False then
          begin

               FormInit.WriteString('SCHEDULE', 'FIND', '0');
          end;

     if cbSunapZero.Checked = True then
     begin
          FormInit.WriteString('SCHEDULE', 'SUNAPZERO', '1');
     end
     else
          if cbSunapZero.Checked = False then
          begin

               FormInit.WriteString('SCHEDULE', 'SUNAPZERO', '0');
          end;
end;

procedure TfindGogek_f.FormCloseQuery(Sender: TObject;
     var CanClose: Boolean);
begin
     saveini;
end;

procedure TfindGogek_f.grdPromiseGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
     varDate, varPos, varCancel: string;
begin
     varDate := formatdatetime('YYYY-MM-DD', now);
     varPos := grdPromise.Cells[5, aRow];
     varCancel := grdPromise.Cells[6, aRow];

     if (arow > 0) and (aCol > 0) and
          (grdPromise.Cells[1, aRow] <= varDate) then
     begin

          if trim(varCancel) = 'Y' then
          begin
               aBrush.Color := clgray;
               aFont.Color := clblack;
          end
          else
               if trim(varCancel) = 'C' then
               begin
                    aBrush.Color := clgray;
                    aFont.Color := clblack;
               end
               else
                    if trim(varCancel) = 'U' then
                    begin
                         aBrush.Color := clpurple;
                         aFont.Color := clBlack;
                    end
                    else
                         if trim(varpos) = '0' then
                              //수납완료(3)에서 진료중으로 수정(1)
                         begin
                              aBrush.Color := clwhite;
                              aFont.Color := clGray;

                         end
                         else
                              if trim(varpos) = '1' then
                                   //수납완료(3)에서 진료중으로 수정(1)
                              begin
                                   aBrush.Color := clwhite;
                                   aFont.Color := clGray;

                              end
                              else
                                   if trim(varpos) = '2' then //수납완료(3)에서 추가
                                   begin
                                        aBrush.Color := clwhite;
                                        aFont.Color := clGray;

                                   end
                                   else
                                        if trim(varpos) = '3' then //수납완료(3)에서 추가
                                        begin
                                             aBrush.Color := clwhite;
                                             aFont.Color := clGray;

                                        end
                                        else
                                             if trim(varpos) = '4' then //연락안됨
                                             begin
                                                  aBrush.Color := clRed;
                                                  aFont.Color := clBlack;

                                             end
                                             else
                                                  if trim(varpos) = '5' then //재예약
                                                  begin
                                                       aBrush.Color := clGreen;
                                                       aFont.Color := clBlack;

                                                  end
                                                  else
                                                       if trim(varpos) = '6' then //리콜
                                                       begin
                                                            aBrush.Color := clBlue;
                                                            aFont.Color := clBlack;

                                                       end
                                                       else
                                                            if trim(varpos) = '7' then //종결
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

     if  (arow > 0) and  (grdPromise.Cells[1, aRow] > varDate) then
          aBrush.Color := clSilver;

end;

procedure TfindGogek_f.grdPromiseGridHint(Sender: TObject; ARow,
     ACol: Integer; var hintstr: string);
var
     varpos: string;
     varCancel: string;
     varHint: string;
begin
     varPos := grdPromise.Cells[5, aRow];
     varCancel := grdPromise.Cells[6, aRow];

     if (arow > 0) then
     begin

          if trim(varCancel) = 'Y' then
          begin
               varHint := '취소';
          end
          else
               if trim(varCancel) = 'C' then
               begin
                    varHint := '취소';
               end
               else
                    if trim(varCancel) = 'U' then
                    begin
                         varHint := '변경';
                    end
                    else
                         if trim(varpos) = '0' then
                         begin
                              varHint := '진료대기';

                         end
                         else
                              if trim(varpos) = '1' then
                              begin
                                   varHint := '진료중';

                              end
                              else
                                   if trim(varpos) = '2' then
                                   begin
                                        varHint := '수납대기';
                                   end
                                   else
                                        if trim(varpos) = '3' then
                                        begin
                                             varHint := '수납완료';
                                        end
                                        else
                                             if trim(varpos) = '4' then //연락안됨
                                             begin
                                                  varHint := '연락안됨'

                                             end
                                             else
                                                  if trim(varpos) = '5' then //재예약
                                                  begin
                                                       varHint := '재예약';
                                                  end
                                                  else
                                                       if trim(varpos) = '6' then //리콜
                                                       begin
                                                            varHint := '리콜';

                                                       end
                                                       else
                                                            if trim(varpos) = '7' then //종결
                                                            begin
                                                                 varHint := '종결';

                                                            end
                                                            else
                                                            begin
                                                                 varHint := '미처리';
                                                            end;

     end;

     hintstr := '<FONT color="clBlue" size=11>' + '<B>' +
          varHint + '</B>' +
          '</FONT>';

end;

procedure TfindGogek_f.grdFindClickSort(Sender: TObject; ACol: Integer);
begin
     grdFind.cursor := crDefault;
end;

procedure TfindGogek_f.grdPromiseClickCell(Sender: TObject; ARow,
     ACol: Integer);

var
     varPass: string;
begin
{     if (aRow = 0) and (aCol = 0) then
     begin
          with dm_f.sqlWork do
          begin
               close;
               sql.Clear;
               sql.Add('select * from  ma_pgpower');
               sql.Add('where PowerId = ''1'' and pgid=:pgid and pgset = ''1''                ');
               parambyname('pgid').AsString := 'btnYeyak'; //예약내역 정규화
               open;
               if not isEmpty then
               begin

                    varpass := trim(FieldByName('tongID').AsString);
                    if varpass = '' then
                         varPass := '12' + formatdatetime('DD', now);

               end
               else
               begin
                    if varpass = '' then
                         varPass := '12' + formatdatetime('DD', now);

               end;
          end;

          PassInput_f := TPassInput_f.Create(application);
          if PassInput_f.Showmodal = mrOK then
          begin
               if PassInput_f.edtpass.text = varPass then //main_f.v_UserPass then
               begin
                    if Application.MessageBox(PChar('환자의 예약을 정규화하겠습니까?'),
                         '예약정규화', MB_YESNO) = IDYES then
                    begin
                         //예약을 지운다.
                         Promise_Delete_all(grdFind.cells[1, grdFind.Row]);
                    end;
               end
               else
               begin

                    //그리드의 내용을 지운다.

               end;
          end;
     end;
}
end;


procedure TfindGogek_f.grdPromiseDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
  var
  sb:integer;
begin
//     Promisemain_f.dpFdate.Date := strtodate(grdPromise.Cells[1, grdPromise.row]);
//     Promisemain_f.dpsDate.Date := strtodate(grdPromise.Cells[1, grdPromise.row]);
//     Promisemain_f.dayset(Promisemain_f.dpSdate.Date);
//
//
//     Promisemain_f.tcTeam.TabIndex := strtoint(grdPromise.Cells[9, grdPromise.row]);
//
//     Promisemain_f.SelectPromise(0);
//
//   //  PromiseMain_f.searchPromise(main_f.varEdtName);
//     PromiseMain_f.searchPromise(vFindName);
//
//     sb := PromiseMain_f.planner1.AbsTimeToCell(strtoTime(grdPromise.Cells[2, grdPromise.row]));
//     PromiseMain_f.planner1.GridTopRow := sb  ;
//      close;
end;



procedure TfindGogek_f.grdSunapGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          2, 3:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure TfindGogek_f.grdSunapGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          2,3:
               begin
               
                    hAlign := taRightJustify;
               end;
     end;

end;

end.

