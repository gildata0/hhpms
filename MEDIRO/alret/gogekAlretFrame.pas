unit gogekAlretFrame;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,   GIFimg,
     Dialogs,  ExtCtrls, AdvPanel,
     Grids, BaseGrid, AdvGrid, ComCtrls,
     inifiles,
     StdCtrls, Menus, AdvObj, AdvGlowButton,
     Buttons, DB, MSINKAUTLib_TLB, AdvSplitter, tmsAdvGridExcel, AdvUtil;

type
     TsP = packed record
          sP1: string;
          sP2: string;
          sP3: string;
          sP4: string;
     end;
type
     TgogekalretFrame_fr = class(TFrame)
          grdGift: TAdvStringGrid;
          PopupMenu1: TPopupMenu;
          menuCut: TMenuItem;
          N5: TMenuItem;
          menuDel: TMenuItem;
          N21: TMenuItem;
          N1: TMenuItem;
          N2: TMenuItem;
          N3: TMenuItem;
          N4: TMenuItem;
          N6: TMenuItem;
          pnlMemo: TAdvPanel;
          Memo1: TMemo;
          AdvGlowButton1: TAdvGlowButton;
          AdvGlowButton6: TAdvGlowButton;
          RichEdit1: TRichEdit;
          TreeView1: TTreeView;

          grdgajok: TAdvStringGrid;
          grdSMS: TAdvStringGrid;
          grdDaegi: TAdvStringGrid;
          grdPlan: TAdvStringGrid;
          grdProgress: TAdvStringGrid;
          grdPromise: TAdvStringGrid;
          grdRecall: TAdvStringGrid;
          grdComplaint: TAdvStringGrid;
          grdComment: TAdvStringGrid;
          grdJx2: TAdvStringGrid;
          grdTelRec: TAdvStringGrid;
          grdmain: TAdvStringGrid;

          AdvGridExcelIO1: TAdvGridExcelIO;
          SaveDialog1: TSaveDialog;
          spSkinPanel2: TPanel;
          Button1: TButton;
          pcAlret: TPageControl;
          TabSheet1: TTabSheet;
          TabSheet2: TTabSheet;
          TabSheet3: TTabSheet;
          TabSheet4: TTabSheet;
          TabSheet5: TTabSheet;
          TabSheet6: TTabSheet;
          TabSheet7: TTabSheet;
          TabSheet8: TTabSheet;
          TabSheet9: TTabSheet;
          TabSheet10: TTabSheet;
          TabSheet11: TTabSheet;
          TabSheet12: TTabSheet;
          TabSheet13: TTabSheet;
          pnlPen: TPanel;
          TabSheet14: TTabSheet;
          procedure grdPromiseGetCellColor(Sender: TObject; ARow, ACol:
               Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure N2Click(Sender: TObject);
          procedure grdPromiseGridHint(Sender: TObject; ARow, ACol: Integer;
               var hintstr: string);
          procedure grdRecallGetCellColor(Sender: TObject; ARow, ACol:
               Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure grdRecallGridHint(Sender: TObject; ARow, ACol: Integer;
               var hintstr: string);
          procedure PopupMenu1Popup(Sender: TObject);
          procedure N3Click(Sender: TObject);
          procedure grdPromiseMouseDown(Sender: TObject; Button:
               TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure grdRecallMouseDown(Sender: TObject; Button:
               TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure grdAdvMainGetAlignment(Sender: TObject; ARow, ACol:
               Integer;
               var HAlign: TAlignment; var VAlign: TVAlignment);
          procedure grdAdvMainGetCellColor(Sender: TObject; ARow, ACol:
               Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure N6Click(Sender: TObject);
          procedure N4Click(Sender: TObject);
          procedure AdvGlowButton1Click(Sender: TObject);
          procedure AdvGlowButton6Click(Sender: TObject);
          procedure grdProgressGetCellBorder(Sender: TObject; ARow,
               ACol: Integer; APen: TPen; var Borders: TCellBorders);
          procedure grdProgressGetCellColor(Sender: TObject; ARow, ACol: Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure grdPlanGetAlignment(Sender: TObject; ARow, ACol: Integer;
               var HAlign: TAlignment; var VAlign: TVAlignment);
          procedure grdPlanGetFormat(Sender: TObject; ACol: Integer;
               var AStyle: TSortStyle; var aPrefix, aSuffix: string);
          procedure grdPromiseClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdPromiseDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdAdvMainDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdDaegiDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdSMSDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button1Click(Sender: TObject);
    procedure pcAlretChange(Sender: TObject);
     private

          varRcCode: string;
          varidn: string;

          groupaddKind: integer;
          treeMoveMode: boolean;
          x, y, i: integer;

          { Private declarations }

          procedure PlanSelect(chartNo: string);
          procedure selectChartSDataAdv(varChart: string; varScript: string;
               varTeeth: string);
          function LoadimageChart(varChartSeq: Double; varRow: integer): string;
          procedure GridSettingTxProgress(varMode: integer);
    procedure LoadGajok(varGajokCode: integer; varJungNo, varHomeTel,
      varJuso, varChart: string);
    procedure SmsSelectData(varChart: string);
    procedure jubsuSelect(varChart: string);

    procedure sebusunapCalc(varchart: string);
    procedure UpdateSums;
    procedure LoadJinChalCode(aJinday:string);
    function loadMisuSunapDate(jinryopid: string): string;



     public
          { Public declarations }
          varChartNo: string;
          varName:string;


          imgcnt: integer;
          tFileName: string;
          procedure PromiseSelect(chart: string);
          procedure RecallSelect(chart: string);
          procedure GiftSelect(chart: string);
          procedure TelSelect(chart: string);
          procedure JinryoSelect(chart: string);
          procedure CommentSelect(chart: string);
          procedure ComplaintSelect(chart: string);

          procedure PreShow;
          procedure fieldClear;
          procedure FieldSet(findvar: string);
          procedure loadTabInfo(varTabindex: integer; varChart:string);
     end;

var
     gogekalretFrame_fr: TgogekalretFrame_fr;
     TxInkCollector: TinkCollector;

const
     gridLineNo = 0;
     gridDate = 1;
     gridPortion = 2;
     gridTeethNo = 3;
     gridOp = 4;
     gridTx = 5;
     gridYehoo = 6;
     gridcnt = 7;
     gridUnitPrice = 8;
     gridprice = 9;
     gridFinal = 10;
     gridChoice = 11;
     gridDoctor = 12;
     gridHyg = 13;
     gridRemark = 14;
     gridkind = 15;
     gridid = 16;
     gridx = 17;
     gridchamgo = 18;
     gridplancode = 19;
     gridorderNo = 20;
     gridGrouporderNo = 21;
     gridtxcode = 22;

implementation
uses uConfig, uDM, uMain, uFunctions,uFormInit, uPromiseData, uGogekData,uGogekData_find,
     uTeeth, uJinryocalc, passInput;
{$R *.dfm}

function RetRKind(varPos: string = ''; varCancel: string = ''; varCheck: string
     =
     ''): string;
begin
     if trim(varCancel) = 'Y' then
     begin
          result := '취소';
     end
     else
          if trim(varCancel) = 'C' then
          begin
               result := '취소';
          end
          else
               if trim(varCancel) = 'U' then
               begin
                    result := '변경';
               end
               else
                    if trim(varpos) = '0' then
                    begin
                         result := '진료대기';

                    end
                    else
                         if trim(varpos) = '1' then
                         begin
                              result := '진료중';

                         end
                         else
                              if trim(varpos) = '2' then
                              begin
                                   result := '수납대기';
                              end
                              else
                                   if trim(varpos) = '3' then
                                   begin
                                        result := '수납완료';
                                   end
                                   else
                                        if trim(varpos) = '4' then //연락안됨
                                        begin
                                             result := '연락안됨'

                                        end
                                        else
                                             if trim(varpos) = '5' then //재예약
                                             begin
                                                  result := '재예약';
                                             end
                                             else
                                                  if trim(varpos) = '6' then //리콜
                                                  begin
                                                       result := '리콜';

                                                  end
                                                  else
                                                       if trim(varpos) = '7' then //종결
                                                       begin
                                                            result := '종결';

                                                       end
                                                       else
                                                            if trim(varCheck) = '1' then //리콜 내원
                                                            begin
                                                                 result := '내원';

                                                            end
                                                            else
                                                            begin
                                                                 result := '';
                                                            end;

end;


function TgogekalretFrame_fr.loadMisuSunapDate(jinryopid:string): string;
const
    selectMisuSunapDate
           //   = 'select sunapDay FROM ma_misusunap  where misu_pid=:jinryo_pid ';
      =' SELECT *, (select jin_day from jinryo_p where jinryo_pid=[ma_misusunap].jinryo_pid) as sunapDay '+#10+
       '   FROM [mediro].[dbo].[ma_misusunap]  where misu_pid=:jinryo_pid ';
begin
      result :='';
                               {SELECT *, (select jin_day from jinryo_p where jinryo_pid=[ma_misusunap].jinryo_pid) as sunapDay
                                FROM [mediro].[dbo].[ma_misusunap]
                                where chart='7001385'}
       with DM_f.SqlTemp14 do
       begin

            close;
            sql.Text:=selectMisuSunapDate;
            paramByName('jinryo_pid').AsString :=   jinryopid;
            open;
            if not isEmpty then

            result:=  formatdatetime('YYYY-MM-DD', FieldByName('sunapDay').AsDateTime);

       end;

           //  misuSunapDate :=  loadMisuSunapDate( Cells[32, i])

 end;

//gogekalretFrame_fr에 public으로 추가

procedure TgogekalretFrame_fr.fieldClear;
begin

     treeview1.Items.clear;

     grdpromise.Rowcount := 1;
     grdplan.Rowcount := 1;
     grdProgress.Rowcount := 1;
     grdGift.Rowcount := 1;
     //grdTelrec.Rowcount := 1;
     grdComplaint.Rowcount := 1;
     grdComment.Rowcount := 1;
     grdRecall.Rowcount := 1;
end;


procedure TgogekalretFrame_fr.PromiseSelect(chart: string);
var
     i, reccount: integer;
     CurrentTime: string;
begin
     CurrentTime := FormatDateTime('HH:MM', now);
     grdpromise.ClearRows(1, grdpromise.RowCount);
     grdpromise.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT  * ');//jubsuDay, modDay, idn, chart, pday, ptime, remark, pos, cancel, pmemo, memodam , pjundam,team , gubun ');
          Sql.Add('FROM       ma_promise                   ');
          Sql.Add('WHERE   (chart =:chart)');
          Sql.Add('ORDER BY pday DESC         ');
          ParamByName('chart').AsString := chart;
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
약속내용
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

                              //새로추가

                              Cells[5, i] :=
                                   FieldByName('pmemo').AsString; // 메모
                              Cells[9, i] :=
                                   FieldByName('memodam').AsString; // 메모입력자
                              Cells[6, i] :=
                                    loadJinjryosil(FieldByName('team').AsString); //진료실
                              Cells[7, i] :=
                                      LoadDocNameFromSawonWithID(FieldByName('doc').AsString);
                              //  담당의
                              Cells[8, i] :=
                                   FieldByName('pjundam').AsString; //담당자

                              Cells[10, i] :=
                                   FieldByName('chart').AsString;
                              Cells[11, i] :=
                                   FieldByName('pos').AsString;
                              Cells[12, i] :=
                                   FieldByName('cancel').AsString;

                              Cells[14, i] :=   FieldByName('gubun').AsString;
                                //  LoadGubunName( FieldByName('gubun').AsString);

                              Cells[15, i] :=
                                   FieldByName('jubsuDay').AsString;
                              Cells[16, i] :=
                                   FieldByName('modDay').AsString;




                              if FieldByName('pos').AsString = '4' then
                                   Cells[4, i] := '연락안됨'
                              else
                                   if FieldByName('pos').AsString = '5' then
                                        Cells[4, i] := '재예약'
                                   else
                                        if FieldByName('pos').AsString = '6' then
                                             Cells[4, i] := '리콜함'
                                        else
                                             if FieldByName('pos').AsString = '7' then
                                                  Cells[4, i] := '종결처리'
                                             else
                                                  if ( (FieldByName('pos').AsString = '0')  //진료대기(체어)
                                                     or  (FieldByName('pos').AsString = '1')//진료중
                                                    or  (FieldByName('pos').AsString = '2') //수납대기
                                                    or  (FieldByName('pos').AsString = '3') //수납완료
                                                    or  (FieldByName('pos').AsString = '10') ) // 대기실 접수
                                                  then
                                                       Cells[4, i] := '내원'
                                                  else
                                                       if FieldByName('pos').AsString = '' then
                                                            Cells[4, i] := '미처리';

                              if FieldByName('cancel').AsString
                                   = 'Y' then
                                   Cells[4, i] := '취소'
                              else
                                   if FieldByName('cancel').AsString
                                        = 'C' then
                                        Cells[4, i] := '취소'
                                   else
                                        if FieldByName('cancel').AsString
                                             = 'U' then
                                             Cells[4, i] := '변경'
                                        else
                                             if FieldByName('cancel').AsString
                                                  = 'R' then
                                                  Cells[4, i] := '변경' ;
                                       //      else
                                       //          if FieldByName('cancel').AsString
                                       //                = '5' then
                                       //                Cells[4, i] := '시간변경'; //시간대변경
                                           //이건보일 필요 없음. 변경은 다음 예약이 생기므로 보이지 않지만 시간대변경은 접수를 하더라도 시간변경이 표시되어
                                           //내원 여부를 알 수 없음.
                              Cells[13, i] :=
                                   FieldByName('idn').AsString;
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

procedure TgogekalretFrame_fr.RecallSelect(chart: string);
var
     i, reccount: integer;
     CurrentTime: string;
begin
     CurrentTime := FormatDateTime('HH:MM', now);
     grdRecall.ClearRows(1, grdRecall.RowCount);
     grdRecall.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT  rcCode, rcchart, rcDate, rcTime, pos, rckind, rccheck, rcremark');
          Sql.Add('FROM       ma_recall                   ');
          Sql.Add('WHERE   (rcchart =:chart)');
          Sql.Add('ORDER BY rcDate DESC         ');
          ParamByName('chart').AsString := chart;
          Open;
          First;
          if not IsEmpty then
          begin
               recCount := recordCount;
               grdRecall.RowCount := recCount + 1;
               grdRecall.FixedRows := 1;

               {

일자
시간
약속내용
차트번호
               }
                              //  Application.ProcessMessages;
               grdRecall.BeginUpdate;
               while not dm_f.SqlWork.Eof do
               begin
                    with grdRecall do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin

                              Cells[1, i] :=
                                   FieldByName('rcDate').AsString;
                              Cells[2, i] :=
                                   FieldByName('rctime').AsString;
                              Cells[3, i] :=
                                   FieldByName('rcremark').AsString;
                              Cells[4, i] :=
                                   FieldByName('rcchart').AsString;
                              Cells[5, i] :=
                                   FieldByName('pos').AsString;
                              Cells[6, i] :=
                                   FieldByName('rcCheck').AsString;
                              Cells[7, i] :=
                                   RetRKind(FieldByName('pos').AsString, '', FieldByName('rcCheck').AsString);
                              Cells[8, i] :=
                                   FieldByName('rcCode').AsString;
                              AutoNumberCol(0);
                              next;
                         end;
                    end;
               end;
               grdRecall.EndUpdate;
          end
          else
          begin
               grdRecall.RowCount := 1;

          end;
     end;
end;

procedure TgogekalretFrame_fr.GiftSelect(chart: string);
var
     i, reccount: integer;
     CurrentTime: string;
begin

     grdGift.ClearRows(1, grdGift.RowCount);
     grdGift.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT  reg_day, remark, chart');
          Sql.Add('FROM       ma_gogek_remark                   ');
          Sql.Add('WHERE   (chart =:chart) and (kind=:kind) and (code=:code) ');
          Sql.Add('ORDER BY id DESC         ');
          ParamByName('chart').AsString := chart;
          ParamByName('kind').AsString := '10';
          ParamByName('code').AsString := '002';
          Open;
          First;
          if not IsEmpty then
          begin
               recCount := recordCount;
               grdGift.RowCount := recCount + 1;
               grdGift.FixedRows := 1;

               grdGift.BeginUpdate;
               while not dm_f.SqlWork.Eof do
               begin
                    with grdGift do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin

                              Cells[1, i] :=
                                   FieldByName('reg_day').AsString;
                              Cells[2, i] :=
                                   FieldByName('remark').AsString;
                              //Cells[3, i] :=
                              //       FieldByName('chart').AsString;

                              AutoSizeRow(i);
                              AutoNumberCol(0);
                              next;
                         end;
                    end;
               end;
               grdGift.EndUpdate;
          end
          else
          begin
               grdGift.RowCount := 1;

          end;
     end;
end;

procedure TgogekalretFrame_fr.ComplaintSelect(chart: string);
var
     i, reccount: integer;
begin

     grdComplaint.ClearRows(1, grdComplaint.RowCount);
     grdComplaint.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT  reg_day, remark, chart');
          Sql.Add('FROM       ma_gogek_remark                   ');
          Sql.Add('WHERE   (chart =:chart) and (kind=:kind) and (code=:code) ');
          Sql.Add('ORDER BY id DESC         ');
          ParamByName('chart').AsString := chart;
          ParamByName('kind').AsString := '10';
          ParamByName('code').AsString := '001';
          Open;
          First;
          if not IsEmpty then
          begin
               recCount := recordCount;
               grdComplaint.RowCount := recCount + 1;
               grdComplaint.FixedRows := 1;

               grdComplaint.BeginUpdate;
               while not dm_f.SqlWork.Eof do
               begin
                    with grdComplaint do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin

                              Cells[1, i] :=
                                   FieldByName('reg_day').AsString;
                              Cells[2, i] :=
                                   FieldByName('remark').AsString;
                              //Cells[3, i] :=
                              //       FieldByName('chart').AsString;

                              AutoSizeRow(i);
                              AutoNumberCol(0);
                              next;
                         end;
                    end;
               end;
               grdComplaint.EndUpdate;
          end
          else
          begin
               grdComplaint.RowCount := 1;

          end;
     end;
end;

procedure TgogekalretFrame_fr.CommentSelect(chart: string);
var
     i, reccount: integer;
begin

     grdComment.ClearRows(1, grdComment.RowCount);
     grdComment.RowCount := 2;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT  reg_day, remark, chart');
          Sql.Add('FROM       ma_gogek_remark                   ');
          Sql.Add('WHERE   (chart =:chart) and (kind=:kind) and (code=:code) ');
          Sql.Add('ORDER BY id DESC         ');
          ParamByName('chart').AsString := chart;
          ParamByName('kind').AsString := '10';
          ParamByName('code').AsString := '000';
          Open;
          First;
          if not IsEmpty then
          begin
               recCount := recordCount;
               grdComment.RowCount := recCount + 1;
               grdComment.FixedRows := 1;

               grdComment.BeginUpdate;
               while not dm_f.SqlWork.Eof do
               begin
                    with grdComment do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin

                              Cells[1, i] := FieldByName('reg_day').AsString;
                              Cells[2, i] := FieldByName('remark').AsString;
                              //Cells[3, i] :=
                              //       FieldByName('chart').AsString;

                              AutoSizeRow(i);
                              AutoNumberCol(0);
                              next;
                         end;
                    end;
               end;
               grdComment.EndUpdate;
          end
          else
          begin
               grdComment.RowCount := 1;

          end;
     end;
end;

procedure TgogekalretFrame_fr.TelSelect(chart: string);
var
     i, reccount: integer;
     CurrentTime: string;
begin

     GrdTelRec.Rowcount := 1;

     with dm_f.SqlWork  do
     begin

          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ma_TELREC ');
          Sql.Add('WHERE   (Trchart =:chart) ');
          Sql.Add('ORDER BY TrDate DESC ,  TrTime DESC        ');
          ParamByName('chart').AsString := chart;

          Open;
          First;
          if not IsEmpty then
          begin

               recCount := recordCount;
               GrdTelRec.RowCount := recCount + 1;
               GrdTelRec.FixedRows := 1;

               GrdTelRec.BeginUpdate;

               while not EOF do
               begin
                    with GrdTelRec do
                    begin
                         for i := FixedRows to Rowcount - 1 do
                         begin
                              Cells[1, i] := FieldByName('TrDate').AsString;
                              Cells[2, i] := FieldByName('Trname').AsString;
                              Cells[3, i] := FieldByName('TrNumber').AsString;
                              Cells[4, i] := FieldByName('TrTime').AsString;
                              Cells[5, i] := FieldByName('TriTime').AsString;
                              Cells[6, i] := FieldByName('TrRemark').AsString;
                              Cells[7, i] := FieldByName('TrCode').AsString;
                              Cells[8, i] := FieldByName('degree').AsString;
                              Cells[9, i] := FieldByName('subject').AsString;
                              Cells[10, i] := FieldByName('transfer').AsString;
                              Cells[11, i] := FieldByName('receiver').AsString;
                              AutoSizeRow(i);
                              AutoNumberCol(0);
                              Next;
                         end;
                    end;
               end;
               GrdTelRec.EndUpdate;
          end
          else
          begin
               GrdTelRec.RowCount := 1;

          end;


     end;

end;

procedure TgogekalretFrame_fr.grdPromiseGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
     varDate, varPos, varCancel: string;
begin
     varDate := formatdatetime('YYYY-MM-DD', now);
     varPos := grdPromise.Cells[11, aRow];
     varCancel := grdPromise.Cells[12, aRow];

     if (arow > 0) and (aCol > 0) and
          (grdPromise.Cells[1, aRow] <= varDate) then
     begin

          if trim(varCancel) = 'Y' then
          begin
               aBrush.Color := clgray;
               aFont.Color := clwhite;
          end
          else
               if trim(varCancel) = 'C' then
               begin
                    aBrush.Color := clgray;
                    aFont.Color := clwhite;
               end
               else
                    if trim(varCancel) = 'U' then
                    begin
                         aBrush.Color := clpurple;
                         aFont.Color := clwhite;
                    end
                    else
                         if trim(varpos) = '0' then
                              //수납완료(3)에서 진료중으로 수정(1)
                         begin
                              aBrush.Color := clwhite;
                              aFont.Color := $00373737;

                         end
                         else
                              if trim(varpos) = '1' then
                                   //수납완료(3)에서 진료중으로 수정(1)
                              begin
                                   aBrush.Color := clwhite;
                                   aFont.Color := $00373737;

                              end
                              else
                                   if trim(varpos) = '2' then //수납완료(3)에서 추가
                                   begin
                                        aBrush.Color := clwhite;
                                        aFont.Color := $00373737;

                                   end
                                   else
                                        if trim(varpos) = '3' then //수납완료(3)에서 추가
                                        begin
                                             aBrush.Color := clwhite;
                                             aFont.Color := $00373737;

                                        end
                                        else
                                             if trim(varpos) = '4' then //연락안됨
                                             begin
                                                  aBrush.Color := clRed;
                                                  aFont.Color := clwhite;

                                             end
                                             else
                                                  if trim(varpos) = '5' then //재예약
                                                  begin
                                                       aBrush.Color := clGreen;
                                                       aFont.Color := clwhite;

                                                  end
                                                  else
                                                       if trim(varpos) = '6' then //리콜
                                                       begin
                                                            aBrush.Color := clBlue;
                                                            aFont.Color := clwhite;

                                                       end
                                                       else
                                                            if trim(varpos) = '7' then //종결
                                                            begin
                                                                 aBrush.Color := clOlive;
                                                                 aFont.Color := clwhite;

                                                            end
                                                            else
                                                            begin
                                                                 aBrush.Color := clwhite;
                                                                 aFont.Color := clblack;
                                                            end;


     end
     else
       if  (arow > 0) and (aCol > 0) and (grdPromise.Cells[1, aRow] > varDate) then
               aBrush.Color := clSilver;

end;

procedure TgogekalretFrame_fr.PreShow;
var
     varDaegiTabIndex: integer;
     path : string;
     FormInit :TIniFile;
     i : integer;
     nTabindex : integer;
begin
     Path     := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     nTabindex :=  FormInit.ReadInteger('ETC', 'pcAlrettabinfo', 0);

     if nTabindex > pcAlret.PageCount  -1  then
         nTabindex := 0;

     if pcAlret.Pages[nTabindex].Visible = false then
      nTabindex := 0;

     pcAlret.TabIndex    :=   nTabindex;
     FormInit.Free;

     pcAlret.align := alClient;

     with grdMain do
     begin
          colwidths[2] := 0;
          colwidths[3] := 0;
     end;

     with grdpromise do
     begin
          colwidths[8] := 0;
          colwidths[10] := 0;
          colwidths[11] := 0;
          colwidths[12] := 0;
          colwidths[13] := 0;
     end;
     with grdRecall do
     begin
          colwidths[4] := 0;
          colwidths[5] := 0;
          colwidths[6] := 0;
          colwidths[8] := 0;
     end;

     varRcCode := '';
     varidn := '';


      initAdvGrid(grdgajok);
      initAdvGrid(grdSMS);
      initAdvGrid(grdDaegi);
      initAdvGrid(grdPlan);
      initAdvGrid(grdProgress);
      initAdvGrid(grdPromise);
      initAdvGrid(grdRecall);
      initAdvGrid(grdComplaint);
      initAdvGrid(grdComment);
      initAdvGrid(grdJx2);
      initAdvGrid(grdTelRec);
      initAdvGrid(grdmain);




end;

{
function TgogekalretFrame_fr.chongMisuCalc(chartNo: string): double;
var
     planChong, sunapMisuChong, SunapBohumChong,
          SunapBohumMisuChong,
          MisuChong, sunapChong, BohumChong, bibochong, etcChong: integer;
begin
     with dm_f.SqlWork do
     begin
          //비급여진료 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(Bonin1) as biboChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               biboChong := FieldByName('biboChong').AsInteger;
          end
          else
          begin

               biboChong := 0;
          end;

          //급여진료 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(Bohum) as bohumChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          //Sql.Add(' and usebohum <> ''1'' ');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               bohumChong := FieldByName('bohumChong').AsInteger;
          end
          else
          begin
               bohumChong := 0;
          end;

          //기타 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(etc) as etcChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               etcChong := FieldByName('etcChong').AsInteger;
          end
          else
          begin

               etcChong := 0;
          end;

          Close;
          Sql.Clear;
          //  Sql.Add('select SUM(sunapek + Gammyunek - hwanbulek) as SunapChong from ma_sunap');
          Sql.Add('select SUM(sunapek + Gammyunek) as SunapChong from ma_sunap');
          Sql.Add(' where chart=:chart');

          {if isinBohum = true then //보험금액 포함이면...
          begin
                 Sql.Add(' and sday >= :sDay');
                 ParamByName('sDay').AsString :=
                        jinryo_f.cbjindan.ColumnItems[jinryo_f.cbjindan.itemindex,
                        1];
          end;
          }
{          ParamByName('chart').AsString := chartNo;

          Open;

          if not isEmpty then
          begin
               SunapChong := FieldByName('SunapChong').AsInteger;
          end
          else
          begin

               SunapChong := 0;

          end;

          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add('sum(subtotal) as sSubtotal');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart');
          // and chart_id=:chart_id');
          ParamByName('chart').AsString := chartNo;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not isEmpty then
          begin
               PlanChong := FieldByName('sSubTotal').AsInteger;
          end
          else
          begin
               PlanChong := 0;
          end;

          close;
          sql.Clear;
          sql.Add('select sum(misuek) as misuek from ma_sunap');
          sql.add('where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               misuChong := FieldByName('misuek').AsInteger;
          end
          else
          begin
               misuChong := 0;
          end;

     end;

     result := planChong + biboChong + etcChong + bohumChong - SunapChong;
end;
}
procedure TgogekalretFrame_fr.loadTabInfo(varTabindex:integer; varChart:string);
var
//     famcode : integer;
     lastTab : integer;


     FormInit: Tinifile;
     path : string;
begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteInteger('ETC', 'AlretTabinfo', varTabindex);
     FormInit.Free;


     if varChart = '' then
          exit;

     case varTabindex of
          0: //예약내역
               begin
                    PromiseSelect(varChart);
               end;
          1: //Recall
               begin
                    RecallSelect(varChart);
               end;
          2: begin  //진료내역(차팅내역 )
                  //ToDo : 진찰료 코드 넣기
               //   JinryoSelect(varChart);
              //   LoadJinChalCode;


                 setJinryo_s(
                    ma_jubsu_id,
                    grdJx2,
                    ma_Chart,//lblChart.Caption,
                    '',// main_f.cbTreatRoom.ColumnItems[main_f.cbTreatRoom.ItemIndex, 0],
                    '',
                    inttostr(ma_PatIn),
                    '',//formatdatetime('YYYY-MM-DD', datetimepicker1.date),
                    '',//formatdatetime('YYYY-MM-DD', datetimepicker2.date),
                    3); //0:진료내역 1:청구점검 2: 처방보기 3: 환자의 차트전체

             end;
          3: //간호 기록부 내역
               begin
                    sebusunapCalc(varChart);
               end;
          4: //수납내역
               begin
                    sebusunapCalc(varChart);
               end;
          5: //선물내역
               begin
                    GiftSelect(varChart);

               end;
          6: //통화내역
               begin
                    TelSelect(varChart);

               end;
          7: //컴플레인
               begin
                    ComplaintSelect(varChart);
               end;
          8: //memo
               begin
                    CommentSelect(varChart);
               end;
          9: //상담내역
               begin
                    PlanSelect(varChart);
               end;
          10: //소개내역
               begin
                    FreeTreeItem(TreeView1);
                    ReviewTree_pat(varChart, varName, varChart, TreeView1, treeview1.TopItem);
               end;
          11://가족내역
              begin


                       if not (famcode > 0) then
                        begin
                             with Dm_f.sqlTemp do
                             begin
                                  close;
                                  SQL.Clear;
                                  SQL.Add('Select isnull(Max(fam_id),0) +1  as MaxFamcode from  ma_gogek_basic');
                                  open;
                                  famCode :=
                                       FieldByname('MaxFamcode').Asinteger;
                             end;
                        end ;
                        LoadGajok(famCode, main_f.edtJungno.text, main_f.edthphone.text,
                             main_f.memAdd.text,
                             varChart);


              end;
         12://SMS내역
              begin
                   SmsSelectData(varChart);
              end;
         13://접수내역
             begin
                   jubsuSelect(varChart) ;
             end;
     end;

end;


//*********************************************************************
// 2 진료내역
//*********************************************************************

procedure TgogekalretFrame_fr.JinryoSelect(chart: string);
var
     i, reccount: integer;
begin
     //ink start----------------------------------------------------------------
     coInkCollector.Create;
     TxInkCollector := TInkCollector.Create(self);

     grdProgress.align := alClient;
     GridSettingTxProgress(1);

     grdProgress.ColWidths[3] := grdProgress.Width
          - (grdProgress.ColWidths[2] + 21)
          - grdProgress.ColWidths[4]
          - 100;

     FieldSet(chart);

end;

procedure TgogekalretFrame_fr.GridSettingTxProgress(varMode: integer);
begin
     with grdProgress do
     begin

          DefaultRowHeight := 25;
          Options := [goRowSizing, goColSizing, goEditing, goColMoving, goVertLine, goHorzLine];
          ColCount := 6;

          SizeWhileTyping.Height := True;

          FixedColWidth := 25;
          case varMode of
               1:
                    begin
                         ColWidths[0] := 35;
                         ColWidths[1] := 68;
                         ColWidths[2] := 110;
                         ColWidths[3] := 300;
                         ColWidths[4] := 50;
                         ColWidths[5] := 0;

                    end;
               0:
                    begin
                         ColWidths[0] := 35;
                         ColWidths[1] := 68;
                         ColWidths[2] := 101;
                         ColWidths[3] := 262;
                         ColWidths[4] := 100;
                         ColWidths[5] := 100;

                    end;
          end;
     end;
end;

procedure TgogekalretFrame_fr.FieldSet(findvar: string);
var
     sGcode: string;

     tFilename: string;
     varRowHeight: integer;
     varCharWidth: integer;

begin

     selectChartSDataAdv(findvar, '', '');
     //챠트 프리메모가 있으면 Tx Description의 타이틀 색을 노란색으로 바꾼다.
end;

procedure TgogekalretFrame_fr.selectChartSDataAdv(varChart: string; varScript: string;
     varTeeth: string);
var
     tFilename: string;
     bstream: Tstream;
     varisRich: boolean;
     varisImage: boolean;
     i, reccount: integer;
     varRowHeight: integer;
     varCharWidth: integer;
     varPath: string;
     varImage: string;

     varQuery: string;
begin
     varPath := extractfilepath(paramstr(0)) + 'temp\teethtemp\';
     varCharWidth := grdProgress.ColWidths[3] div 6;
     varImage := '';

     grdprogress.RemoveRows(1, grdprogress.RowCount - 1);
     grdProgress.RowCount := 1;
     with dm_f.SqlTemp2 do
     begin

          Close;
          SQl.Clear;
          SQL.Add('select * from ma_chart_s');
          SQL.Add(' where chart=:Chart ');

          if varScript <> '' then
          begin
               SQL.Add('and descript like :descript ');
               ParamByName('descript').value := '%' + varScript + '%';
          end;


               varQuery := LoadChartDataQuery;


               if varViewAll <> true then
               begin
                    if varQuery <> '' then
                         sql.Add('and  ' + varQuery);

               end;


       //   SQL.Add(' order by jin_day desc , chartseq desc');
          //jin_day desc, convert(int,nOrd,120) desc');


               if configvalue.varChartListOrder ='1' then
               begin
                   SQL.Add(' order by [lineNo] desc, jin_day desc , chartseq desc') ;
               end
               else
               begin
                   SQL.Add(' order by [lineNo] desc, jin_day asc , chartseq asc') ;
               end;



          ParamByName('chart').value := varChart;
          Open;
          Last;
          if RecordCount > 0 then
          begin
               first;

               imgCnt := 0;
               recCount := recordCount;

               grdProgress.beginUpdate;
               grdProgress.RowCount := recCount + 1;

               for i := 1 to recCount do
               begin

                    tFileName := 'TX' + IntToStr(imgCnt + 1);
                    MakeImage(FieldByName('portion').asString,
                         tFileName);

                    if FieldByName('isRich').asString = '1' then
                         varisRich := true
                    else
                         varisRich := false;

                    if FieldByName('isImage').asString = '1' then
                         varisImage := true
                    else
                         varisImage := false;

                    imgCnt := imgCnt + 1;

                    grdProgress.Cells[1, i]
                         :=
                         FieldByName('jin_day').asString;
                    grdProgress.CreatePicture(2,
                         i, false, ShrinkWithAspectRatio, 0,
                         AdvGrid.haLeft,
                         AdvGrid.vaTop).LoadFromFile(varPath +
                         tFileName +
                         '.BMP'); //치식도 가져오기

                    grdProgress.Floats[5, i] :=
                         FieldByName('ChartSeq').AsFloat;

                       if varisRich = true then
                       begin

                             BStream :=
                                     CreateBlobStream(FieldByName('richtext'),
                                     bmRead);
                             richedit1.Lines.LoadFromStream(bStream);
                              grdProgress.HideInplaceEdit;
                              grdProgress.RichToCell(3,
                                     i, richedit1);
                              BStream.Free;

                       end
                       else
                       begin
                          grdProgress.Cells[3, i]
                               :=
                               FieldByName('descript').asString;

                      end;

                    if varisImage = true then
                    begin
                         varImage := LoadimageChart(grdProgress.Floats[5, i], i);
                         grdProgress.CreatePicture(3, i, false,
                              noStretch, 0,
                              AdvGrid.haLeft,
                              AdvGrid.vaTop).LoadFromFile(varImage);
                    end
                    else
                    begin
                         grdprogress.RemovePicture(3, i);

                    end;
                    varImage := '';

                    grdProgress.Cells[4, i]
                         :=
                         FieldByName('doctor').asString;

                    tFileName := '';

                       if length(richedit1.text) > varCharWidth then
                       begin
                              varRowHeight := ((length(richedit1.text) div
                                     varCharWidth) + 1) *
                                     grdProgress.DefaultRowHeight;
                              grdProgress.RowHeights[i] :=
                                     varRowHeight + 10;
                       end
                       else
                       begin
                          grdProgress.AutoSizeRow(i);

                     end;

                    Next;

               end;
               grdProgress.autonumbercol(0);
               grdProgress.endUpdate;

          end;
     end;

     grdProgress.Height := grdProgress.Rowcount *
          grdProgress.DefaultRowHeight;

end;

function TgogekalretFrame_fr.LoadimageChart(varChartseq: Double; varRow: integer): string;
var
     loadedInk: TinkDisp;
     BinSize: integer;
     nFileStream: Tfilestream;
     BinData: array of byte;
     S: string;
     i: integer;

     aString: TStringList;
     MemSize: Integer;
     BStream: TStream;
     A: string;
     Buffer: array of Byte;
     VarBMP: TBitMap;

     signature, ms: TMemoryStream;
     img: TGIFImage;
     bt: array of byte;
     varRowHeight: integer;
begin
     result := '';

     if not DirectoryExists(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\') then
         ForceDirectories(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\');

 

     try
          with dm_f.sqlTemp do
          begin
               Close;
               SQL.Clear;
               Sql.Add('select * from ma_chart_i ');
               Sql.Add('where chartseq= :chartseq');
               ParamByName('chartseq').value := varChartSeq;

               Open;

               if not isEmpty then
               begin
                    try

                         BStream :=
                              CreateBlobStream(FieldByName('ChartImage'),
                              bmRead);
                         MemSize := BStream.Size;
                         SetLength(Buffer, MemSize);
                         Inc(MemSize);
                         BStream.Read(Pointer(Buffer)^, MemSize);
                         for i := 0 to Memsize - 1 do
                         begin
                              A := A + Char(Buffer[i]);
                         end;

                         try
                              aString := TStringList.Create;
                              aString.Add(A);
                              aString.SaveToFile(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\' + floatTostr(varChartSeq) + '.txt');
                         finally
                              aString.Free;
                         end;

                    finally
                         BStream.Free;

                    end;

                    S := ExtractFilePath(ParamStr(0)) + 'temp\TempImage\'
                         + floatTostr(varChartSeq) + '.txt';
                    nFileStream := TFileStream.Create(S, fmOpenRead);
                    BinSize := nFileStream.Size;
                    SetLength(BinData, BinSize);

                    nFileStream.Position := 0;
                    for i := 0 to BinSize - 3 do
                    begin
                         nFileStream.Read(BinData[i], 1);
                    end;
                    nFileStream.Free;

                    TxInkCollector.Enabled := false;

                    loadedInk := TinkDisp.Create(pnlPen);
                    loadedInk.Load(BinData);
                    TxInkCollector.Ink := loadedInk.Clone;
                    TxInkCollector.Enabled := false;

                    ms := TMemoryStream.Create;
                    signature := TMemoryStream.Create;
                    img := TGIFImage.Create;
                    try
                         bt := TxInkCollector.Ink.Save(IPF_GIF,
                              IPCM_MaximumCompression);
                         //IPCM_NoCompression); //IPCM_Default);
                         ms.Size := length(bt);
                         ms.Write(Pointer(bt)^, length(bt));
                         ms.Position := 0;
                         img.LoadFromStream(ms);

                         img.Bitmap.SaveToStream(signature);
                         varRowHeight := img.Height;
                         signature.Position := 0;
                         img.SaveToFile(extractFilePath(paramstr(0)) +
                              'temp\TempImage\' +
                              floattostr(varChartSeq) +
                              '.gif');

                         // now to save the stream to a database you do the following
                         //TBlobField(dataset.FieldByName('NameBlobField')).LoadFromStream(signature);

                         result := extractFilePath(paramstr(0)) +
                              'temp\TempImage\' +
                              floattostr(varChartSeq) +
                              '.gif'

                    finally // wrap up
                         img.Destroy;
                         signature.free;
                         ms.Free;
                    end; // try/finally
                    //ShrinkWithAspectRatio

               end;
          end;
     except
          on E: Exception do
               ExceptLogging('Tdm_f.LoadimageChart:' + E.Message);
     end;
end;

procedure TgogekalretFrame_fr.grdProgressGetCellBorder(Sender: TObject;
     ARow, ACol: Integer; APen: TPen; var Borders: TCellBorders);
var
     varDate1: string;
     varDate2: string;
begin
     varDate1 := grdProgress.Cells[1, aRow];

     if aRow > 1 then
          varDate2 := grdProgress.Cells[1, aRow - 1]
     else
          varDate2 := varDate1;
     if varDate1 <> varDate2 then
     begin
          if (aCol > 0) then
          begin
               Borders := [cbTop];
               APen.Width := 2;
               APen.Color := clSilver; //clGray;
          end;
     end
     else
     begin
          Borders := [cbTop];
          APen.Width := 0;
          APen.Color := clWHITE;
     end;

end;

procedure TgogekalretFrame_fr.grdProgressGetCellColor(Sender: TObject;
     ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush;
     AFont: TFont);
var
     varColor: Tcolor;
     varDate1: string;
     varDate2: string;
begin

     if (aRow > 0) then
     begin
          if aRow mod 2 = 0 then
          begin
               if aCol = 5 then
                    aBrush.Color := clWhite;

          end
          else
          begin
               if aCol = 5 then
                    aBrush.Color := $00ECECF0; //clSilver;  //$00D4D2D1;  //$00BBFFBB;
          end;

     end;

end;

//**************************************************************

procedure TgogekalretFrame_fr.N2Click(Sender: TObject);
var
     varDay: string;
begin
 {    varDay := grdpromise.cells[1, grdpromise.row];
     if not assigned(Promisemain_f) then
          Promisemain_f := TPromisemain_f.Create(application);
     Promisemain_f.PlannerCalendarGroup1.Date := strtodate(varDay);
     Promisemain_f.dpsdate.Date := strtodate(varDay);
     Promisemain_f.dpfdate.Date := strtodate(varDay);

     Promisemain_f.WindowState := wsnormal;

     main_f.PromiseMode := true;
     Promisemain_f.Show;
     Promisemain_f.SelectPromise(0);

     PromiseMain_f.searchPromise(main_f.edtName.text);


  }

end;

procedure TgogekalretFrame_fr.grdPromiseGridHint(Sender: TObject; ARow,
     ACol: Integer; var hintstr: string);
var
     varpos: string;
     varCancel: string;
     varHint: string;
begin
     {     varPos := grdPromise.Cells[5, aRow];
          varCancel := grdPromise.Cells[6, aRow];

          if (arow > 0) then
          begin

                 if trim(varCancel) = 'Y' then
                 begin
                        varHint := '취소';
                 end
                 else if trim(varCancel) = 'C' then
                 begin
                        varHint := '취소';
                 end
                 else if trim(varCancel) = 'U' then
                 begin
                        varHint := '변경';
                 end
                 else if trim(varpos) = '0' then
                 begin
                        varHint := '진료대기';

                 end
                 else if trim(varpos) = '1' then
                 begin
                        varHint := '진료중';

                 end
                 else if trim(varpos) = '2' then
                 begin
                        varHint := '수납대기';
                 end
                 else if trim(varpos) = '3' then
                 begin
                        varHint := '수납완료';
                 end
                 else if trim(varpos) = '4' then //연락안됨
                 begin
                        varHint := '연락안됨'

                 end
                 else if trim(varpos) = '5' then //재예약
                 begin
                        varHint := '재예약';
                 end
                 else if trim(varpos) = '6' then //리콜
                 begin
                        varHint := '리콜';

                 end
                 else if trim(varpos) = '7' then //종결
                 begin
                        varHint := '종결';

                 end
                 else
                 begin
                        varHint := '미처리';
                 end;

          hintstr := '<FONT color="clBlue" size=11>' + '<B>' +
                 varHint + '</B>' +
                 '</FONT>';
          end;
        }

end;

procedure TgogekalretFrame_fr.grdRecallGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
     varDate, varPos, varCancel: string;
begin
     varDate := formatdatetime('YYYY-MM-DD', now);
     varPos := grdRecall.Cells[5, aRow];
     varCancel := grdRecall.Cells[6, aRow];

     if (arow > 0) and (aCol > 0) and
          (grdRecall.Cells[1, aRow] <= varDate) then
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

          if (grdRecall.Cells[1, aRow] > varDate) then
               aBrush.Color := clSilver;
     end;

end;

procedure TgogekalretFrame_fr.grdRecallGridHint(Sender: TObject; ARow,
     ACol: Integer; var hintstr: string);
var
     varpos: string;
     varCancel: string;
     varHint: string;
begin
     {       varPos := grdRecall.Cells[5, aRow];
            varCancel := grdRecall.Cells[6, aRow];

            if (arow > 0) then
            begin

                   if trim(varCancel) = 'Y' then
                   begin
                          varHint := '취소';
                   end
                   else if trim(varCancel) = 'C' then
                   begin
                          varHint := '취소';
                   end
                   else if trim(varCancel) = 'U' then
                   begin
                          varHint := '변경';
                   end
                   else if trim(varpos) = '0' then
                   begin
                          varHint := '진료대기';

                   end
                   else if trim(varpos) = '1' then
                   begin
                          varHint := '진료중';

                   end
                   else if trim(varpos) = '2' then
                   begin
                          varHint := '수납대기';
                   end
                   else if trim(varpos) = '3' then
                   begin
                          varHint := '수납완료';
                   end
                   else if trim(varpos) = '4' then //연락안됨
                   begin
                          varHint := '연락안됨'

                   end
                   else if trim(varpos) = '5' then //재예약
                   begin
                          varHint := '재예약';
                   end
                   else if trim(varpos) = '6' then //리콜
                   begin
                          varHint := '리콜';

                   end
                   else if trim(varpos) = '7' then //종결
                   begin
                          varHint := '종결';

                   end
                   else
                   begin
                          varHint := '미처리';
                   end;

            hintstr := '<FONT color="clBlue" size=11>' + '<B>' +
                   varHint + '</B>' +
                   '</FONT>';
            end;

     }
end;

procedure TgogekalretFrame_fr.PopupMenu1Popup(Sender: TObject);
begin
     case pcAlret.ActivePageIndex of
          0:
               begin
                    n2.visible := true;
                    n3.visible := false;
                    n4.visible := false;
                    n6.visible := false;
               end;
          1:
               begin
                    n2.visible := false;
                    n3.visible := true;
                    n4.visible := true;
                    n6.visible := true;
               end;
      end;
end;

procedure TgogekalretFrame_fr.N3Click(Sender: TObject);
const
     SQL_UPDATE_ma_recall =
          'UPDATE ma_recall SET          ' + #13#10 +
          'RcCheck     =''1''            ' + #13#10 +
          'WHERE RCcode=:RCCode          ';

begin

     with Dm_f.SqlWork do
     begin
          SQL.Text := SQL_UPDATE_ma_recall;
          ParamByName('RcCode').AsString :=
               varRcCode;
          execsql;
     end;

     showmessage( '처리되었습니다.');
     RecallSelect(ma_chart);
end;

procedure TgogekalretFrame_fr.grdPromiseMouseDown(Sender: TObject;
     Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if grdPromise.Row > 0 then
          varidn := grdPromise.Cells[13, grdPromise.Row]
     else
          varidn := '';

end;

procedure TgogekalretFrame_fr.grdRecallMouseDown(Sender: TObject;
     Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if grdRecall.Row > 0 then
          varRcCode := grdRecall.Cells[8, grdRecall.Row]
     else
          varRcCode := '';

end;

procedure TgogekalretFrame_fr.grdAdvMainGetAlignment(Sender: TObject; ARow,
     ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case acol of
          5..16, 20: //2011.8
               begin
                    if arow > 0 then
                         halign := taRightJustify;
               end;
     end;
end;

procedure TgogekalretFrame_fr.grdAdvMainGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     //if ARow mod 2 = 0 then
     //       ABrush.Color := $00EFEFEF;


end;

procedure TgogekalretFrame_fr.N6Click(Sender: TObject);
const
     SQL_UPDATE_ma_recall =
          'delete from ma_recall           ' + #13#10 +
          'WHERE RCcode=:RCCode          ';

begin

     if varRcCode <> '' then
     begin
          if Application.MessageBox(PChar(grdRecall.Cells[1, grdRecall.Row] +
               '일의 리콜예정을 삭제하십니까?'), '삭제', MB_YESNO) = IDYES then

          try
               with Dm_f.SqlWork do
               begin
                    SQL.Text := SQL_UPDATE_ma_recall;
                    ParamByName('RcCode').AsString :=
                         varRcCode;
                    execsql;
               end;

          except
               on E: Exception do
               begin
                    ShowMessage(E.Message +
                         ' [ma_recall삭제오류]');
               end;
          end;

          RecallSelect(ma_chart);

     end;

end;

procedure TgogekalretFrame_fr.N4Click(Sender: TObject);
begin

     memo1.text := grdRecall.Cells[3, grdRecall.Row];
     pnlMemo.Visible := true;

end;

procedure TgogekalretFrame_fr.AdvGlowButton1Click(Sender: TObject);
const
     SQL_UPDATE_ma_recall =
          'update  ma_recall set RcRemark =:RcRemark  ' + #13#10 +
          'WHERE RCcode=:RCCode          ';
begin
     if varRcCode <> '' then
     begin

          with Dm_f.SqlWork do
          begin
               SQL.Text := SQL_UPDATE_ma_recall;
               ParamByName('RcCode').AsString :=
                    varRcCode;
               ParamByName('RcRemark').AsString := Memo1.Text;
               execsql;
          end;

          RecallSelect(ma_Chart);
          pnlMemo.Visible := false;
     end;

end;

procedure TgogekalretFrame_fr.AdvGlowButton6Click(Sender: TObject);
begin
     pnlMemo.Visible := false;
end;

procedure TgogekalretFrame_fr.PlanSelect(chartNO: string);
var
     i, recCount, imgCnt: integer;
     varPath, tFileName: string;
begin

     with grdPlan do
     begin

          // DefaultRowHeight := 24;
          // ColCount := 5;
          // ColWidths[0] := 80; //date
          // ColWidths[1] := 100; //teeth
          // ColWidths[2] := 1100; //Description
          ColWidths[3] := 0;
          ColWidths[4] := 0;
          ColWidths[9] := 0;
          ColWidths[10] := 0;
          ColWidths[11] := 0;
          ColWidths[12] := 0;
     end;

     grdPlan.ClearRows(1, grdPlan.RowCount);
     grdPlan.rowcount := 2;

     varPath := extractfilepath(paramstr(0)) + 'temp\teethtemp\';

     with dm_f.sqlWork do
     begin
          Close;
          SQl.Clear;
          SQL.Add('select * from dtx');
          Sql.Add('where chart=:Chart  '); //and chk=''1''
          Sql.Add('order by jin_day desc, dtxOrder, convert(int,nOrd,120)');
          ParamByName('chart').AsString := ChartNo;

          Open;
          First;

          if RecordCount > 0 then
          begin
               imgCnt := 0;
               recCount := recordcount;
               grdPlan.RowCount := recCount + 1;
               grdPlan.FixedRows := 1;

               grdPlan.BeginUpdate;
               while not eof do
               begin

                    for i := grdPlan.FixedRows to grdPlan.RowCount - 1 do
                    begin
                         if FieldByName('portion').AsString <> '' then
                         begin
                              tFileName := 'LX' + IntToStr(imgCnt +
                                   1);
                              MakeImage(FieldByName('portion').AsString, tFileName);
                              imgCnt := imgCnt + 1;
                         end;

                         grdPlan.Cells[0, i] :=
                              FieldByName('jin_day').AsString;
                         if fileexists(varPath +
                              tFileName +
                              '.BMP') then
                              grdPlan.CreatePicture(1, i,
                                   false, ShrinkWithAspectRatio, 0,
                                   AdvGrid.haLeft,
                                   AdvGrid.vaTop).LoadFromFile(varPath +
                                   tFileName +
                                   '.BMP');

                         grdPlan.Cells[2, i] :=
                              FieldByName('description').AsString;
                         grdPlan.Cells[6, i] :=
                              FieldByName('Doctor').AsString;
                         grdPlan.Cells[7, i] :=
                              FieldByName('council').AsString;

                         grdPlan.Floats[3, i] := FieldByName('cprice').asfloat;
                         grdPlan.Floats[4, i] := FieldByName('ccnt').asfloat;
                         grdPlan.Floats[5, i] := FieldByName('ckumak').asfloat;
                         if FieldByName('chk').AsString = '1' then
                              grdPlan.Cells[8, i] := 'V'
                         else
                              grdPlan.Cells[8, i] := '';

                         grdPlan.Cells[9, i] := tFilename;
                         grdPlan.Cells[10, i] :=
                              FieldByName('portion').AsString;
                         grdPlan.Cells[11, i] :=
                              FieldByName('tbname').AsString;
                         grdPlan.Cells[12, i] := FieldByName('cremark').AsString;

                         grdPlan.AutoSizeRow(i);
                         Next;
                    end;
               end;
               grdPlan.MergeColumnCells(0, true);
               grdPlan.EndUpdate;

          end
          else
          begin
               grdPlan.RowCount := 1;
          end;
     end;
     //grdPlan.MergeColumnCells(0, true);

end;

procedure TgogekalretFrame_fr.grdPlanGetAlignment(Sender: TObject; ARow,
     ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case acol of
          3..5: //2011.8
               begin
                    if arow > 0 then
                         halign := taRightJustify;
               end;
     end;
end;

procedure TgogekalretFrame_fr.grdPlanGetFormat(Sender: TObject;
     ACol: Integer; var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
     case acol of
          //2:   Astyle:= ssalphabetic;
          3..5: Astyle := ssFinancial;
     end;
end;

procedure TgogekalretFrame_fr.grdPromiseClickCell(Sender: TObject; ARow,
     ACol: Integer);
var
     varPass: string;
begin
   {  if (aRow = 0) and (aCol = 0) then
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
                         Promise_Delete_all(main_f.edtchart.text);
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


procedure TgogekalretFrame_fr.LoadGajok(varGajokCode: integer; varJungNo, varHomeTel,
       varJuso,
       varChart: string);
var
       sChart: string;
       i, j, fc, recCount: integer;
begin

       sChart := SubStr(varChart, 1, '-');

       if (varGajokCode > 0) then
       begin

              with DM_f.SqlWork do
              begin
                     Close;
                     SQL.Clear;

                     SQL.Add('Select *  from view_gogek');
                     Sql.Add('Where fam_id =:fam_id ');
                     ParamByName('fam_id').Asinteger := varGajokCode;

                     Open;
                     if not IsEmpty then
                     begin

                            grdGajok.beginUpdate;
                            recCount := recordCount;
                            grdGajok.RowCount := reccount + 1;
                            grdgajok.FixedRows := 1;
                            grdgajok.FixedCols := 1;

                            while not EOF do
                            begin
                                   for i := 1 to RecCount do
                                   begin

                                          grdGajok.Cells[1, i] :=
                                                 FieldByName('Chart').asString;
                                          // 챠트
                                          grdGajok.Cells[2, i] :=
                                                 FieldByName('Name').asString;
                                          // 성명
                                          if FieldByName('Kwan').asString = '1'
                                                 then
                                                 grdGajok.Cells[3, i] := '본인';
                                          if FieldByName('Kwan').asString = '2'
                                                 then
                                                 grdGajok.Cells[3, i] :=
                                                        '배우자';
                                          if FieldByName('Kwan').asString = '3'
                                                 then
                                                 grdGajok.Cells[3, i] := '자녀';
                                          if FieldByName('Kwan').asString = '4'
                                                 then
                                                 grdGajok.Cells[3, i] := '부모';
                                          if FieldByName('Kwan').asString = '5'
                                                 then
                                                 grdGajok.Cells[3, i] := '기타';

                                          grdGajok.Cells[4, i] :=
                                                 NaiCalc(FieldByName('Jumin').asString);
                                          //나이
                                          grdGajok.Cells[5, i] :=
                                                 FieldByName('Last_day').asString;
                                          //최종내원일
                                          grdGajok.Cells[6, i] :=
                                                 FieldByName('H_phone').asString;
                                          //전화
                                          grdGajok.Cells[7, i] :=
                                                 FieldByName('C_phone').asString;
                                          //핸드폰
                                          grdGajok.Cells[8, i] :=
                                                 FieldByName('k_number').asString;
                                          //증번호
                                          grdGajok.Cells[9, i] :=
                                                 FieldByName('h_juso').asString;
                                          //주소
                                          grdGajok.Cells[10, i] :=
                                                 FieldByName('fam_id').asString;
                                          //주소
                                          Next;

                                   end;
                            end;
                            grdGajok.autonumbercol(0);
                            grdGajok.endUpdate;

                     end
                     else
                     begin
                     end;
              end;
       end
       else
       begin
              with DM_f.SqlWork do
              begin
                     Close;
                     SQL.Clear;

                     if FamilySearch = '1' then
                     begin

                            SQL.Add('Select Chart, Name, Jumin,  ');
                            Sql.Add('Last_day , kwan, h_phone, c_phone, k_number, h_juso from view_gogek');
                            Sql.Add('Where ((K_number=:K_Number) or ');
                            Sql.Add('(H_Phone=:H_Phone) or ');
                            Sql.Add('(chart =:H_fam_id) or ');
                            Sql.Add('(chart like :H_chart))');
                            Sql.Add('Order by Chart');

                            ParamByName('H_chart').AsString := sChart + '-' +
                                   '%';
                            ParamByName('H_fam_id').AsString := sChart;

                     end
                     else
                     begin

                            SQL.Add('Select Chart, Name, Jumin,  ');
                            Sql.Add('Last_day , kwan, h_phone, c_phone , k_number, h_juso from view_gogek');
                            Sql.Add('Where ((K_number=:K_Number) or ');
                            Sql.Add('(H_Phone=:H_Phone) ');
                            // Sql.Add('or (H_juso=:H_juso)');
                            Sql.Add(')');
                            Sql.Add('Order by Name, Chart');

                            //  ParamByName('H_juso').AsString := varJuso;
                     end;

                     if (varJungNo <> '') and (varJungNo <> '2종수급권자') and
                            (varJungNo <> '1종수급권자') then
                            ParamByName('K_number').AsString := varJungNo

                     else
                            ParamByName('K_number').AsString := '우리나라';

                     if length(varHomeTel) > 5 then

                            ParamByName('H_phone').AsString := varHomeTel
                     else
                            ParamByName('H_phone').AsString := '우리나라';

                     Open;
                     if not IsEmpty then
                     begin

                            grdGajok.beginUpdate;
                            recCount := recordCount;
                            grdGajok.RowCount := reccount + 1;
                            grdgajok.FixedRows := 1;
                            grdgajok.FixedCols := 1;

                            while not EOF do
                            begin
                                   for i := 1 to RecCount do
                                   begin
                                          grdGajok.Cells[1, i] :=
                                                 FieldByName('Chart').asString;
                                          // 챠트
                                          grdGajok.Cells[2, i] :=
                                                 FieldByName('Name').asString;
                                          // 성명
                                          if FieldByName('Kwan').asString = '1'
                                                 then
                                                 grdGajok.Cells[3, i] := '본인';
                                          if FieldByName('Kwan').asString = '2'
                                                 then
                                                 grdGajok.Cells[3, i] :=
                                                        '배우자';
                                          if FieldByName('Kwan').asString = '3'
                                                 then
                                                 grdGajok.Cells[3, i] := '자녀';
                                          if FieldByName('Kwan').asString = '4'
                                                 then
                                                 grdGajok.Cells[3, i] := '부모';
                                          if FieldByName('Kwan').asString = '5'
                                                 then
                                                 grdGajok.Cells[3, i] := '기타';

                                          grdGajok.Cells[4, i] :=
                                                 NaiCalc(FieldByName('Jumin').asString);
                                          //나이
                                          grdGajok.Cells[5, i] :=
                                                 FieldByName('Last_day').asString;
                                          //최종내원일
                                          grdGajok.Cells[6, i] :=
                                                 FieldByName('H_phone').asString;
                                          //전화
                                          grdGajok.Cells[7, i] :=
                                                 FieldByName('C_phone').asString;
                                          //핸드폰
                                          grdGajok.Cells[8, i] :=
                                                 FieldByName('k_number').asString;
                                          //증번호
                                          grdGajok.Cells[9, i] :=
                                                 FieldByName('h_juso').asString;
                                          //주소
                                          Next;
                                   end;
                            end;
                            grdGajok.endUpdate;
                     end;
              end;

       end;

end;

procedure  TgogekalretFrame_fr.SmsSelectData(varChart: string);
var
     i, recCount: integer;
begin

     with DM_f.SqlWork, grdSMS do
     begin
          // Clear;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_sms_sendresult a left join  ma_sms_sendlist b on a.sRcode=b.SbCode');
          Sql.Add('Where sbChart=:sbChart order by b.sbSendDate desc');
          // sql.add(' and sbSendDate >= :sbSendDate ');
          ParamByname('SbChart').AsString := varChart;
          // ParamByname('SbSendDate').AsDate := varDate

          Open;
          if not DM_f.SqlWork.IsEmpty then
          begin
               recCount := recordCount;
               RowCount := recCount + 1;
               FixedRows := 1;

               while not EOF do
               begin
                    for i := 1 to Reccount do
                    begin
                         AddCheckBox(1, i, false, false);

                         Cells[2, i] :=
                              FieldByName('SBChart').AsString;
                         Cells[3, i] :=
                              FieldByName('SBName').AsString;
                         Cells[4, i] := FieldByName('SBHp').AsString;
                         Cells[5, i] :=
                              FieldByName('SrCode').AsString;
                         Cells[6, i] :=
                              FieldByName('SbSendDate').AsString;
                         Cells[7, i] :=
                              FieldByName('SbSendTime').AsString;
                         Cells[8, i] :=
                              smsErrorCheck(Dm_f.SqlWork.FieldByName('SrResult').Asinteger);
                         Cells[9, i] :=
                              smsErrorCheck(Dm_f.SqlWork.FieldByName('SrResult2').Asinteger);
                         Cells[10, i] :=
                              FieldByName('SrDate').AsString;
                         Cells[11, i] :=
                              FieldByName('SrTime').AsString;
                         Cells[12, i] :=
                              FieldByName('SbContent').AsString;
                         Cells[13, i] :=
                              FieldByName('SbsfRecall').AsString;
                         //예약전송했는지(1) 취소했는지(3)색으로 보여줌
                         next;
                    end;
                    autoNumberCol(0);
                    //autosizecolumns(true, 20);

               end;
          end
          else
          begin
               RowCount := 1;
               FixedRows := 1;

          end;
     end;

end;
procedure TgogekalretFrame_fr.grdPromiseDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
     varDay: string;
begin

  {   if aCol > 0 then
     begin
         varDay := grdpromise.cells[1, Arow];
         if not assigned(Promisemain_f) then
              Promisemain_f := TPromisemain_f.Create(application);
         Promisemain_f.PlannerCalendarGroup1.Date := strtodate(varDay);
         Promisemain_f.dpsdate.Date := strtodate(varDay);
         Promisemain_f.dpfdate.Date := strtodate(varDay);

         Promisemain_f.WindowState := wsnormal;

         main_f.PromiseMode := true;
         Promisemain_f.Show;
         Promisemain_f.tcTeam.TabIndex := 0; //2011.12.23

         Promisemain_f.SelectPromise(0);

         PromiseMain_f.searchPromise(main_f.edtName.text);
     end;

     if aCol = 0 then
     begin
           if inputbox('암호를 입력하세요', '오늘은', '***') <>  formatdatetime('dd', now) then
           begin
               showmessage('관리자에게 문의하십시오.');
               exit;
          end;

          if Application.MessageBox(PChar('선택하신 예약내용을 [삭제]하시겠습니까?'
          +
          #10#13 + '삭제하신 내용은 복구되지 않습니다.'),
          '예약삭제', MB_YESNO) = IDYES then
        begin
            Promise_Delete( grdpromise.ints[13, Arow])  ;

           if configvalue.P_Jubsudelete = 1 then
           begin
               JubsuDelete(main_f.edtChart.text,  grdpromise.cells[1, Arow], grdpromise.cells[6, Arow]) ;
           end;



            PromiseSelect(main_f.edtChart.text);



        end;

     end;
   }
end;


    {
procedure  TgogekalretFrame_fr.DeleteSunap;
var
     i: word;
     varAccess: string; //sawon and regipower 의 query  value
begin

          if  isMagam = true then
          begin
             showmessage('이미 마감된 수납내역입니다.'+#10#13+'관리자 문의 후 진행하십시오.');

             exit;
          end;

     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.Add('select distinct s.said,r.pgset from ma_sawon_basic s join ma_pgpower r on s.sapower = r.powerid');
          sql.Add('where s.said =:id and r.pgid=:pgid and r.pgset = ''1''                ');
          parambyname('id').AsString :=
               main_f.V_UserId;
          parambyname('pgid').AsString :=
               'mnumagamday';
          //일일점검
          open;
          if not isEmpty then
                varAccess := '1';
     end;

     if  varAccess = '1' then
     begin
          PassInput_f :=
               TPassInput_f.Create(application);
          if PassInput_f.Showmodal = mrOK then
          begin
               if PassInput_f.edtpass.text =
                    main_f.v_UserPass then
               begin

                    if
                         Application.MessageBox('수납기록을 삭제하시겠습니까?', '확인',
                         MB_OKCANCEL) = 1 then
                    begin
                         with dm_f.sqlWork do
                         begin

                              Close;
                              SQL.Clear;
                              Sql.Add('delete from ma_sunap');
                              Sql.Add('where s_id = :s_id');
                              paramByname('s_id').asString := varSunapID;
                              ExecSQL;



                                   //1. sunapcard의 sunapid값이 있는지 확인한다.
                              //2. 있으면 sunapid값으로 지우고 없으면 기존방식  chart and CardDate  and team 으로 지우자.
                              Close;
                              SQL.Clear;

                              Sql.Add('select *  from sunapcard');
                              Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
                              paramByname('chart').asString := main_f.edtChart.text;
                              paramByname('CardDate').asString := lblSunapDay.caption;
                              paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ;
                              open;
                              if (fieldbyname('sunapid').asString <> '')
                                 or (fieldbyname('sunapid').asString <> '0') then
                              begin
                                       Close;
                                       SQL.Clear;

                                       Sql.Add('delete from sunapcard');
                                       Sql.Add('where sunapid=:sunapid');
                                       paramByname('sunapid').asString := varSunapId;
                                       ExecSQL;
                              end
                              else
                              begin


                                       Close;
                                       SQL.Clear;

                                       Sql.Add('delete from sunapcard');
                                       Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
                                       paramByname('chart').asString := main_f.edtChart.text;
                                       paramByname('CardDate').asString := lblSunapDay.caption;
                                       paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ; //inttostr(cbTeam.itemindex + 1);
                                       ExecSQL;
                              end;

                              Close;
                              SQL.Clear;
                              Sql.Add('delete from sunapCard');
                              Sql.Add('where sunapid = :s_id');
                              paramByname('s_id').asString := varSunapID;
                              ExecSQL;

                              Close;
                              SQL.Clear;
                              Sql.Add('delete from ma_sunap_bibo');
                              Sql.Add('where chart = :chart  and sunapdate=:sunapdate');
                              paramByname('chart').asString := main_f.edtChart.text;
                              paramByname('sunapdate').asString := lblSunapDay.caption;
                              ExecSQL;

                              with dm_f.SqlWork do
                              begin

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('delete from ma_chart_hangmok_data');
                                   Sql.Add('where chart=:Chart and regday=:regDay and team=:team ');
                                   ParamByName('team').AsString := cbDoc.ColumnItems[cbDoc.itemindex, 0]  ;
                                   ParamByName('Chart').AsString := main_f.edtChart.text;
                                   ParamByName('regDay').AsString := lblsunapday.caption;
                                   execsql;
                              end;



                              showmessage('선택하신 수납내역이 삭제되었습니다.');


                         end;
                         fieldclear;
                         comboset;
                         sebusunapCalc(main_f.edtchart.text);

                         if grdMain.rowcount > 2 then
                         begin
                              grdMain.Row := 2;
                              lineSunapLoad(2);

                         end;

                    end;

               end
               else
                    showmessage('패스워드가 일치하지 않습니다.');
          end;
     end
     else
          showmessage('제한된 권한입니다.');

end;


     }

procedure TgogekalretFrame_fr.jubsuSelect(varChart:string);
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
          'WHERE   (N.chart = :chart)                                                                                ';

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

          sql.text := selectqry;

          ParamByName('chart').AsString := varChart ;

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

                              Cells[4, i] := FieldByName('Name').AsString;
                              Cells[5, i] := FieldByName('chart').AsString;
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
                                                    StrToTime(Cells[8, i]))
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

                                               //1: AddImageIdx(2, i, 115, haBeforeText, vaTop); //진료중

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
                              AutoNumberCol(0);
                                AutoSizeCol(0);
                           next;
                         end;
                    end;
               end;
          end;
     end;
end;

procedure TgogekalretFrame_fr.grdAdvMainDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     if aCol = 0 then
     begin
           if inputbox('암호를 입력하세요', '오늘은', '***') <>  formatdatetime('dd', now) then
           begin
               showmessage('관리자에게 문의하십시오.');
               exit;
          end;

          if Application.MessageBox(PChar('선택하신 수납내용을 [삭제]하시겠습니까?'
          +
          #10#13 + '삭제하신 내용은 복구되지 않습니다.'),
          '수납삭제', MB_YESNO) = IDYES then
        begin
          //  Promise_Delete( grdpromise.ints[13, Arow])  ;
          //  PromiseSelect(main_f.edtChart.text);
        end;

     end;

end;

procedure TgogekalretFrame_fr.grdDaegiDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     if aCol = 0 then
     begin
           if inputbox('암호를 입력하세요', '오늘은', '***') <>  formatdatetime('dd', now) then
           begin
               showmessage('관리자에게 문의하십시오.');
               exit;
          end;

                if Application.MessageBox(PChar('선택하신 접수내용을 [삭제]하시겠습니까?'
                +
                #10#13 + '삭제하신 내용은 복구되지 않습니다.'),
                '접수삭제', MB_YESNO) = IDYES then
              begin
                //  Promise_Delete( grdpromise.ints[13, Arow])  ;
                //  PromiseSelect(main_f.edtChart.text);
              end;

     end;

end;

procedure TgogekalretFrame_fr.grdSMSDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
     varDay: string;
     state : boolean;
     i, j: integer;
     code : string;
begin

     if (aCol = 0) and (aRow=0)then
     begin
           if inputbox('암호를 입력하세요', '오늘은', '***') <>  formatdatetime('dd', now) then
           begin
               showmessage('관리자에게 문의하십시오.');
               exit;
          end;

          if Application.MessageBox(PChar('선택하신 SMS전송내용을 [삭제]하시겠습니까?'
          +
          #10#13 + '삭제하신 내용은 복구되지 않습니다.'),
          'SMS전송내용 삭제', MB_YESNO) = IDYES then
          begin

             for i:= 1 to  grdSMS.RowCount -1 do
             begin

                  grdSMS.GetCheckBoxState(1, i, state);
                  if state = true then
                  begin
                      //  j:=  grdsms.RealRowIndex(i);
                        code:=  grdSMS.cells[5, i ];
                        with dm_f.sqlWork do
                        begin
                              Close;
                              Sql.Clear;
                              Sql.Add('delete from  ma_sms_sendlist');
                              Sql.Add('Where sbcode= :sbcode');
                              ParamByName('sbcode').AsString := code;
                              execsql;

                              Close;
                              Sql.Clear;
                              Sql.Add('delete from  ma_sms_sendResult');
                              Sql.Add('Where srcode= :srcode');
                              ParamByName('srcode').AsString := code;
                              execsql;
                        end;
                  end;

             end;

              SmsSelectData(main_f.edtChart.text);
          end;

     end;

end;


procedure TgogekalretFrame_fr.Button1Click(Sender: TObject);
begin
     savedialog1.fileName:=main_f.edtChart.text + '님_'  + '예약정보'+'('+ formatdatetime('YYYYMMDDHH',now) +')'+'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;

procedure TgogekalretFrame_fr.pcAlretChange(Sender: TObject);
begin
       loadTabInfo( pcAlret.ActivePageIndex, ma_Chart);
end;



procedure TgogekalretFrame_fr.sebusunapCalc(varchart: string);
const
   SQL_SELECT_sinhwan =
          'SELECT  doc, count(doc) as Shinhwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2   and jin_day = first_day         ';

   SQL_SELECT_GuHwan =
          'SELECT  doc, count(doc) as Guhwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2  and jin_day <> first_day         ';

    SQL_SELECT_groupBy  = '  group by doc           ';

   SQL_SELECT_Where_team = ' and team = :team      ';//' and doc = :doc      ';
   SQL_SELECT_orderby = ' order by first_day, name          ';


var


     varSunapID : string;

     i, j: integer;


     varGubun:string;
     varGubunInt:integer;

     rCount: integer; //fixed Footer Count를 세자
     cCount: integer;
     cRCount:integer; //카드카운트 시작

     varDocName :string;
     varDocCnt : integer;
     varDocRow:integer;

     varHwanName,  varShinGu :string;
     varHwanRow:integer;

     varNewpat, varOldPat:integer;


     varQuery:string;
     varQuery2:string;

     varSunapGubunHangMok : array of string;
     varSunapGubunLength : integer;
     l, k : integer;

     cKind1:string;
     misuSunapDate : string;
     jongBeul : string;

begin



          varQuery := LoadGroupDataQuery;
          varQuery2 := LoadSunapDataQuery;



     if grdmain.RowCount > 2 then
     grdmain.RemoveRows(2, grdmain.RowCount-1);





     try
          screen.Cursor := crHourGlass;
               with DM_f.SqlTemp, grdmain do
               begin
                    beginupdate;
                    close;
                    sql.Clear;

                  sql.add('select i.name,i.first_day, i.k_number,  i.c_Phone, i.h_phone,        ');
                  sql.add(' s.doc_code, s.jin_day ,s.jinryo_pid ,s.team, s.Jin_gu,                         ');
                  sql.add('s.sunapak ,  s.bonin ,s.Chong, s.Chung,s.bonin1, s.jinryo_pid,                            ');
                  sql.add('s.Cash ,s.card, s.tong, s.tong2,s.kamak, s.Chart,                              ');
                  sql.add(' s.misugeum ,s.HyunReceipt,                                                   ');
                  sql.add('s.remark , s.whanbulak,  s.jongBeul                                           ');
                  sql.add('from jinryo_p s join view_gogek i on s.chart=i.chart                          ');

                  sql.add('where s.chart =:chart and  s.sunap = ''1'' ')   ;
                  sql.add('order by jin_day DESC')   ;

                  paramByName('chart').AsString:= varChart;



                    open;
                    first;
                    if not DM_f.SqlTemp.isEmpty then
                    begin



                         rowcount := recordcount + 2;
                         while not eof do
                         begin
                              for i := 2 to rowcount - 1 do
                              begin

                                   varSunapId:=  FieldByname('jinryo_Pid').asString;


                                   Cells[1, i] := FieldByname('jin_day').asString;



                                   Cells[4, i] :=loadJinjryosil(FieldByname('team').asString);

                                   jongBeul:= inttostr(strtoIntDef( FieldByname('jongBeul').asString, 4));//default 일반
                                   Cells[5, i] :=loadJongByulName( jongBeul);




                                   if fieldbyname('jin_day').AsString = fieldbyname('first_day').AsString then
                                        Cells[6, i] := '신환'
                                   else
                                        Cells[6, i] := '구환';




                                   Floats[8, i] := FieldByname('sunapak').asfloat;
                                   Floats[9, i] := FieldByname('bonin').asfloat;
                                   Floats[10, i] := FieldByname('chung').asfloat;
                                   Floats[11, i] := FieldByname('chong').asfloat;
                                   Floats[12, i] := FieldByname('bonin1').asfloat;
                                   Floats[13, i] := 0;// FieldByname('etc').asfloat;

                                   Floats[14, i] := FieldByname('bonin1').asfloat
                                                   + FieldByname('chong').asfloat
                                                   + 0;//FieldByname('etc').asfloat;

                                   Floats[15, i] := FieldByname('cash').asfloat;
                                   Floats[16, i] := FieldByname('HyunReceipt').asfloat;
                                   Floats[17, i] := FieldByname('card').asfloat;
                                   Floats[18, i] := FieldByname('tong').asfloat ;
                                   Floats[19, i] := 0;// FieldByname('HyunReceipt_tong').asfloat;
                                   Floats[20, i] := 0;//FieldByname('tong2').asfloat ;
                                   Floats[21, i] := FieldByname('kamak').asfloat;
                                   ints[22, i] := FieldByname('misugeum').AsInteger;
                                   ints[23, i] := FieldByname('whanbulak').AsInteger;



                                 Floats[27, i] := 0;//FieldByname('bugase').asfloat;


                                   cKind1:='';







                                 Cells[25, i] := FieldByname('jin_gu').asstring;
                                 Cells[26, i] := FieldByname('remark').asstring;


                                 if  FieldByname('jin_gu').asstring ='3' then //미수수납
                                 begin
                                   //   Cells[29, i] := '미수수납';

                                      Floats[29, i] := FieldByname('sunapak').asfloat;
                                 end
                                 else
                                 begin
                                      Floats[29, i] := 0;
                                 end;

                                Cells[32, i] :=  FieldByname('jinryo_pid').asString ;

                                  //미수수납 데이트 가져오기
                                  {SELECT *, (select jin_day from jinryo_p where jinryo_pid=[ma_misusunap].jinryo_pid) as sunapDay
                                FROM [mediro].[dbo].[ma_misusunap]
                                where chart='7001385'}

                                  misuSunapDate :=  loadMisuSunapDate( Cells[32, i])  ;



                                  Cells[30, i] := misuSunapDate;


                                  ma_referHospName:='';
                                  ma_referHospCode:='';
                                 loadReferHospInfo(Cells[3, i], Cells[1, i]);

                                 if ma_referHospCode <> '' then

                                     Cells[31, i] := ma_referHospName //+'('+ma_referHospCode+')'
                                 else
                                     Cells[31, i] := '';


                                varDocName:= FieldByname('doc_code').asString;
                              //환자를 advStringGrid2에 Unique하게 써보자.

                                varHwanName := FieldByname('chart').asString;





                                  next;


                              end;
                         end;





                    end
                    else
                    begin
                         rowcount := 2;
                    end;

                   // grdmain.AutoSizeCol(0);

                    endUpdate;

               end;

                    UpdateSums;








          grdmain.AutoSizeCol(0);

          grdmain.fixedFooters := rCount;


          if  configvalue.varSunapSumView  <> '1' then  //수납합계보기가 1이 아니면(바른이가 아니면...)
          grdMain.RemoveRows(1,1);

     finally
         grdmain.endupdate;
           screen.Cursor := crDefault;
     end;
end;


procedure TgogekalretFrame_fr.UpdateSums;
var
     i: Integer;
begin
     for i := 1 to grdMain.colcount - 1 do
          grdMain.cells[i, 1] := '';

     for i := 7 to 23 do
          grdMain.Floats[i, 1] := grdMain.ColumnSum(i, 2, grdMain.RowCount-1);

          //부가세
      grdMain.Floats[28, 1] :=      grdMain.ColumnSum(28, 2, grdMain.RowCount-1);
          //미수수납
      grdMain.Floats[29, 1] :=      grdMain.ColumnSum(29, 2, grdMain.RowCount-1);
end;





procedure TgogekalretFrame_fr.LoadJinChalCode(aJinday:string);

var

  dWorkDate: TDateTime;
  jin_day1, jin_day2 , jin_time: string;

  nChoJae  : Integer;
  nAge     : Integer;
  jange    : boolean;
  iGumjin  : integer;
  jinilsu  : string;
  nDanga   : integer;

begin

     //ToDo : 진찰료 코드 넣기
//
//      jin_day1   := formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//      jin_day2   := formatdatetime('YYYY-MM-DD', datetimepicker1.date);
      jin_time   := '';

      nChoJae   :=  ma_choje +1 ;    //1: 초진 2: 재진  5: 진찰료 산정 안함
      nAge      :=  strtoint(jumintoNai(ma_jumin));
      dWorkDate :=  strtodate(ajinDay);
      jange     :=  false;
      iGumjin   :=  ma_healthSanCode;


      jinchalRyoCode :=
            MakeJinchalRyoCode(
            nChoJae,
            nAge,
            dWorkDate,
            jange,
            iGumjin);

          grdJX2.RemoveRows(1, grdJX2.RowCount-1 );

      if jinchalRyoCode <> '' then
      begin

          nDanga := getSugaGeum(jinchalRyoCode, // varCode:string;
             ajinday,  // jinday:string;
             '0'); // kind:string);

          grdJX2.AddRow;

          grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '진찰료';

          grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode);
          grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
          grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
          grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
          grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
          grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
          grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//급여구분
          grdJX2.Cells[8, grdJX2.RowCount - 1]     := '';//FieldByName('Modality').AsString;
          grdJX2.Cells[9, grdJX2.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
          grdJX2.Cells[10, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu1').AsString;
          grdJX2.Cells[11, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
          grdJX2.Cells[12, grdJX2.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
          grdJX2.Cells[13, grdJX2.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
          grdJX2.Cells[14, grdJX2.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
          grdJX2.Cells[15, grdJX2.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
          grdJX2.Cells[17, grdJX2.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
          grdJX2.Cells[18, grdJX2.RowCount -1]     := '';//FieldByName('jins_key').AsString;
          grdJX2.Cells[19, grdJX2.RowCount - 1]    := jinchalRyoCode;
          grdJX2.Cells[20, grdJX2.RowCount - 1]    := getSugaName(jinchalRyoCode);//FieldByName('Su_kor_name').AsString;
          grdJX2.Cells[21, grdJX2.RowCount - 1]    := '';//FieldByName('gasan').AsString;
          grdJX2.Cells[22, grdJX2.RowCount - 1]    := jin_day1;//FieldByName('jin_day').AsString;
          grdJX2.Cells[23, grdJX2.RowCount - 1]    := ma_jinTime;//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
          grdJX2.Cells[24, grdJX2.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
          grdJX2.Cells[25, grdJX2.RowCount - 1]    := '';//FieldByName('except_code').AsString;
          grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //금액 = 단가 * 수량* 일수
//
//
//
//
     end;

       // 토요가산코드 구하기
        jinchalRyoCode_gasan := '';
        if (DayOfWeek(dWorkDate) = 7) // 토요일만 계산
          and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 이후
          and (nChoJae <> 3) and (nChoJae <> 4) then // 초재가 심야가 아니면
        begin

          jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
            jange, iGumjin, true);
        if  jinchalRyoCode_gasan <> '' then
        begin

           nDanga := getSugaGeum(jinchalRyoCode_gasan, // varCode:string;
            ajinday,  // jinday:string;
             '0'); // kind:string);

          grdJX2.AddRow;

          grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '진찰료';

          grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode_gasan);
          grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
          grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
          grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
          grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
          grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
          grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//급여구분
          grdJX2.Cells[8, grdJX2.RowCount - 1]     := '';//FieldByName('Modality').AsString;
          grdJX2.Cells[9, grdJX2.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
          grdJX2.Cells[10, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu1').AsString;
          grdJX2.Cells[11, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
          grdJX2.Cells[12, grdJX2.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
          grdJX2.Cells[13, grdJX2.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
          grdJX2.Cells[14, grdJX2.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
          grdJX2.Cells[15, grdJX2.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
          grdJX2.Cells[17, grdJX2.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
          grdJX2.Cells[18, grdJX2.RowCount -1]     := '';//FieldByName('jins_key').AsString;
          grdJX2.Cells[19, grdJX2.RowCount - 1]    := jinchalRyoCode_gasan;
          grdJX2.Cells[20, grdJX2.RowCount - 1]    := getSugaName(jinchalRyoCode_gasan);//FieldByName('Su_kor_name').AsString;
          grdJX2.Cells[21, grdJX2.RowCount - 1]    := '';//FieldByName('gasan').AsString;
          grdJX2.Cells[22, grdJX2.RowCount - 1]    := jin_day1;//FieldByName('jin_day').AsString;
          grdJX2.Cells[23, grdJX2.RowCount - 1]    := ma_jinTime;//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
          grdJX2.Cells[24, grdJX2.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
          grdJX2.Cells[25, grdJX2.RowCount - 1]    := '';//FieldByName('except_code').AsString;
          grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //금액 = 단가 * 수량* 일수

        end;
    end;
//
end;
end.

