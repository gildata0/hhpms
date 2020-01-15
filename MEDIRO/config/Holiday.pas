unit Holiday;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     Db,   StdCtrls, Grids,  ExtCtrls,
     PlannerCal, AdvObj, BaseGrid, AdvGrid, AdvUtil ;

type
     THoliday_f = class(TForm)
    plbottom: TPanel;
    Label1: TLabel;
    btnAdd: TButton;
    btnPost: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    Grdmain: TAdvStringGrid;
    spSkinPanel2: TPanel;
    PlannerCalendar1: TPlannerCalendar;
          procedure btnPostClick(Sender: TObject);
          procedure btnDeleteClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure grdMainExit(Sender: TObject);
          procedure btnCloseClick(Sender: TObject);
          procedure GrdmainBeforePost(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
    procedure clendarDblClick(Sender: TObject);
    procedure PlannerCalendar1DblClick(Sender: TObject);
     private
          procedure SelectData;
          procedure PostData;
          procedure DeleteData;
    procedure GetHoliday;

    { Private declarations }
     public
    { Public declarations }
     end;

var
     Holiday_f: THoliday_f;
const
  // Grid Columns Index
     GR_Day  = 1;   //일자
     GR_Name = 2;   //명칭
     GR_Code = 3;   //코드

  // Query

        Select_Holiday =
                 'Select (substring(Convert(Char(10),Gh_day,112),1,4)) as ghday , * from Gonghyu  '
      + #10#13 + 'Where  (substring(Convert(Char(10),Gh_day,112),1,4)) = year(getdate())          '
      + #10#13 + ' order by Gh_day  '   ;



     SQL_INSERT_DATA = 'INSERT INTO GongHyu                       ' + #13#10 +
          ' (Gh_Day, Gh_Name)              ' + #13#10 +
          ' VALUES                                    ' + #13#10 +
          ' (:Gh_Day, :Gh_Name)           ';

     SQL_UPDATE_DATA = 'UPDATE GongHyu SET  ' + #13#10 +
          '                    Gh_Name = :Gh_Name, Gh_Day = :Gh_Day ' + #13#10 +
          ' WHERE Gh_code = :Gh_code                                ';

     SQL_DELETE_DATA = 'DELETE FROM GongHyu                      ' + #13#10 +
          ' WHERE Gh_code = :Gh_code                     ';

implementation
uses uDm;

{$R *.DFM}
procedure THoliday_f.GetHoliday;
var
       i: integer;
       varYear, VarMonth, Varday: Variant;
begin
       with dm_f.sqlJinryo do
       begin
              Close;
              Sql.Clear;
              Sql.Text:= Select_Holiday ;
              Open;
              First;
              if not isEmpty then
              begin
                     while not eof do
                     begin

                            with Plannercalendar1.Events.Add do
                            begin
                                   varYear := FormatDateTime('yyyy',
                                          fieldByname('gh_day').Value);
                                   varMonth := FormatDateTime('MM',
                                          fieldByname('gh_day').Value);
                                   varDay := FormatDateTime('DD',
                                          fieldByname('gh_day').Value);
                                   Date := EncodeDate(varYear, varMonth,
                                          varDay);
                                   Hint := fieldByname('gh_name').Value;
                                   FontColor := ClBlue;
                                   Color := ClRed;
                                   Shape := evsCircle;
                            end;
                            next;

                     end;
              end;

       end;
end;


procedure THoliday_f.SelectData;
begin
     with Dm_f.SqlWork do
     begin
          close;
          sql.Clear;
          SQL.Text := Select_Holiday;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                    grdMain.AddRow;

                    grdMain.Cells[GR_Day,  grdMain.RowCount - 1]  := FieldByName('Gh_Day').AsString;
                    grdMain.Cells[GR_name, grdMain.RowCount - 1]  := FieldByName('Gh_Name').AsString;
                    grdMain.Cells[GR_Code, grdMain.RowCount - 1]  := FieldByName('Gh_code').AsString;
                    Next;
               end;
     end;

end;

procedure THoliday_f.PostData; //일괄저장 방법
var
     nRow: Integer;

     FindRow: Integer;
begin
//     nRow := GrdMain.Row;
//
//     with GrdMain do
//     begin
//          with Dm_f.SqlWork, grdMain do
//          begin
//    // dbMain.StartTransaction;
//    // RDBMS 사용시 주석을 지워 주세요, 트랜잭션 처리 방법
//               try
//                    for nRow := 0 to RowCount - 1 do
//                    begin
////               Showmessage(inttostr(Findrow));
//                         if RowState[nRow] = wrUpdated then
//                              SQL.Text := SQL_UPDATE_DATA
//                         else if RowState[nRow] = wrInserted then
//                              SQL.Text := SQL_INSERT_DATA;
//                         if (RowState[nRow] = wrUpdated) then
//                         begin
//                              ParamByName('Gh_Day').AsString := Cells[0, nRow].AsString;
//                              ParamByName('Gh_Name').AsString := Cells[1, nRow].AsString;
//                              ParamByName('Gh_Day2').AsString := Cells[2, nRow].AsString;
//                              ParamByName('Gh_Name2').AsString := Cells[3, nRow].AsString;
//                              ExecSQL;
//                         end;
//
//                         if (RowState[nRow] = wrInserted) then
//                         begin
//                              ParamByName('Gh_Day').AsString := Cells[0, nRow].AsString;
//                              ParamByName('Gh_Name').AsString := Cells[1, nRow].AsString;
//                              ExecSQL;
//                         end;
////                    CalcFooters;
//                    end;
//      //dbMain.Commit;
//                    for nRow := 0 to RowCount - 1 do
//                         RowState[nRow] := wrNormal;
//                    Refresh;
//
//               except
//                    on E: Exception do
//                    begin
//      //dbMain.Rollback;
//                         ShowMessage(E.Message + ' [저장오류]');
//                    end;
//               end;
//          end;
//     end;
////     end;
end;

procedure THoliday_f.DeleteData;
begin
//     if grdMain.RowCount > 0 then
//     begin
//          if Application.MessageBox('삭제하십니까?', '삭제', MB_YESNO) = IDYES then
//               with Dm_f.SqlWork, grdMain do
//               begin
//    //dbMain.StartTransaction;
//                    try
//                         SQL.Text := SQL_DELETE_DATA;
//                         ParamByName('Gh_Day').AsString := Cells[GR_EMPNO, Row].AsString;
//                         ExecSQL;
//      //dbMain.Commit;
//                         DeleteRow(Row); // 또는 SelectData;
//                    except
//                         on E: Exception do
//                         begin
//        //dbMain.Rollback;
//                              ShowMessage(E.Message + ' [삭제오류]');
//                         end;
//                    end;
//               end;
//     end;
end;

procedure THoliday_f.FormCreate(Sender: TObject);
begin
//     with grdMain do
//          Options := Options + [wgoEditing, wgoInserting];
end;

procedure THoliday_f.btnPostClick(Sender: TObject);
begin
   //  PostData;
end;

procedure THoliday_f.btnDeleteClick(Sender: TObject);
begin
   //  DeleteData;
end;

procedure THoliday_f.grdMainExit(Sender: TObject);
//var
//     nrow: integer;
begin
//     edit1.text := GrdMain.Cells[0, nRow].AsString;
//     with grdMain do
//          Post;

end;

procedure THoliday_f.btnCloseClick(Sender: TObject);
begin
     Close;
end;

procedure THoliday_f.GrdmainBeforePost(Sender: TObject);
var
     CodeVal: integer;
     MGBBun: string;
begin
end;

procedure THoliday_f.FormShow(Sender: TObject);
begin
     Caption := '공휴일관리';

     Plannercalendar1.date := now;
    // UpdateLabel;
     SelectData;
     GetHoliday;

end;

procedure THoliday_f.btnAddClick(Sender: TObject);
var
     nRow: integer;
     FindRow: Integer;
begin

//     nRow := Grdmain.Row;
//
//     with GrdMain do
//     begin
//          FindRow := Find(0, FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date));
//          Row := FindRow;
//          if findRow > 0 then
//          begin
//               SetFocus;
//          end
//          else
//          begin
//               if GrdMain.Cells[0, nRow].AsString = '' then
//               begin
//                    GrdMain.Cells[0, nRow].AsString := FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date);
//               end
//               else
//               begin
//                    Insert(True);
//                    setfocus;
//                    SelectedIndex := 0;
//                    nRow := rowCount - 1;
//                    GrdMain.Cells[0, nRow].AsString := FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date);
//                    SelectedIndex := 1;
//               end;
//          end;
//     end;

end;

procedure THoliday_f.clendarDblClick(Sender: TObject);
var
     nRow: integer;
     FindRow: Integer;
begin

//var
//     nRow: integer;
//begin
//     nRow := Grdmain.Row;
//     if (GrdMain.RowCount > 0) and (GrdMain.Cells[0, nRow].AsString <> '') then
//          PlannerCalendar1.Date := strToDate(GrdMain.Cells[0, nRow].AsString);

     nRow := Grdmain.Row;

//     with GrdMain do
//     begin
//          FindRow := Find(0, FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date));
//          Row := FindRow;
//          if findRow > 0 then
//          begin
//               SetFocus;
//          end
//          else
//          begin
//               if GrdMain.Cells[0, nRow].AsString = '' then
//               begin
//                    GrdMain.Cells[0, nRow].AsString := FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date);
//               end
//               else
//               begin
//                    Insert(True);
//                    setfocus;
//                    SelectedIndex := 0;
//                    nRow := rowCount - 1;
//                    GrdMain.Cells[0, nRow].AsString := FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date);
//                    SelectedIndex := 1;
//               end;
//          end;
//     end;

end;

procedure THoliday_f.PlannerCalendar1DblClick(Sender: TObject);
var
     nRow: integer;
     FindRow: Integer;
begin
{     nRow := Grdmain.Row;

     with GrdMain do
     begin
          FindRow := Find(0, FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date));
          Row := FindRow;
          if findRow > 0 then
          begin
               SetFocus;
          end
          else
          begin
               if GrdMain.Cells[0, nRow].AsString = '' then
               begin
                    GrdMain.Cells[0, nRow].AsString := FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date);
               end
               else
               begin
                    Insert(True);
                    setfocus;
                    SelectedIndex := 0;
                    nRow := rowCount - 1;
                    GrdMain.Cells[0, nRow].AsString := FormatDateTime('YYYY-MM-DD', PlannerCalendar1.Date);
                    SelectedIndex := 1;
               end;
          end;
     end;
 }
end;

end.

