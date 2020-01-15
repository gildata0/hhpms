unit cidView;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, stdCtrls,
     advPageControl, ComCtrls, Grids, AdvObj, BaseGrid, AdvGrid, AdvUtil;

type
     TcidView_f = class(TForm)
    pginfo: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    AdvTabSheet3: TAdvTabSheet;
    AdvTabSheet4: TAdvTabSheet;
    AdvTabSheet5: TAdvTabSheet;
    grdYeyak: TAdvStringGrid;
    GrdGajok: TAdvStringGrid;
    grdNewon: TAdvStringGrid;
    GrdtelRec: TAdvStringGrid;
    grdRecall: TAdvStringGrid;
          procedure pgInfoChange(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
     private
    { Private declarations }
          procedure TelNeyuk(ChartNo: string);
          procedure YeyakNeyuk(ChartNo: string);
          procedure NaewonNeyuk(ChartNo: string);
     public
          varChartNo: string;
    { Public declarations }
     end;

var
     cidView_f: TcidView_f;

implementation

uses uDm, uMain;

{$R *.dfm}
// Query
const
     SQL_SELECT_DATA_TELREC = 'SELECT * FROM ma_TELREC       ' + #13#10 +
          'Where TRChart=:TRChart           ' + #13#10 +
          'Order By TrDate, TrTime';



procedure TcidView_f.YeyakNeyuk(ChartNo: string);
begin
     grdYeyak.rowcount:=1;


     if Chartno <> '' then
     begin

          with DM_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select a.Name, a.Chart, a.Tel, a.Remark, a.Team, a.pDay, a.pTime, a.Cancel,');
               Sql.Add('b.PiboName, b.Jumin,b.C_phone, c.Team_Name, C.Team_Doctor1');
               Sql.Add('from ma_promise a Left Join view_gogek b');
               Sql.Add(' On a.Chart=b.Chart');
               Sql.Add(' Left Join Team c');
               Sql.Add(' On b.Team=c.Team_Name');
               Sql.Add('Where YChartNo Like :YChartNo');
               Sql.Add('Group By a.YHwanName,a.YChartNo, a.YTel, a.YRemark, a.YDamTeam,a.YDay, a.YTime,a.YCancel,b.fil, b.PiboName, b.jumin, b.Team,b.C_phone, c.Team_Name, C.Team_Doctor1');
               Sql.Add('Order by YDay desc');
               ParamByName('YChartNo').AsString := ChartNo;
               Open;
//               Clear; // RealGrid.Clear;
               if not IsEmpty then
                    while not EOF do
                    begin
                         grdYeyak.AddRow; // 그리드에 빈 로우를 추가
                         grdYeyak.Cells[0, grdYeyak.RowCount - 1] :=
                              FieldByName('YHwanName').AsString;
                         grdYeyak.Cells[1, grdYeyak.RowCount - 1] :=
                              FieldByName('YChartNo').AsString;
                         grdYeyak.Cells[2, grdYeyak.RowCount - 1] :=
                              FieldByName('YDay').AsString;
                         grdYeyak.Cells[3, grdYeyak.RowCount - 1] :=
                              FieldByName('YTime').AsString;
                         //                         Cells[4, RowCount - 1] := FieldByName('YDamTeam').AsString;
                         grdYeyak.Cells[4, grdYeyak.RowCount - 1] :=
                              FieldByName('YDamTeam').AsString;
                         grdYeyak.Cells[5, grdYeyak.RowCount - 1] :=
                              FieldByName('YTel').AsString;
                         grdYeyak.Cells[6, grdYeyak.RowCount - 1] :=
                              FieldByName('YRemark').AsString;
                         grdYeyak.Cells[7, grdYeyak.RowCount - 1] :=
                              FieldByName('YCancel').AsString;
                         grdYeyak.Cells[8, grdYeyak.RowCount - 1] :=
                              FieldByName('PiboName').AsString;
                         grdYeyak.Cells[9, grdYeyak.RowCount - 1] :=
                              Copy(FieldByName('Jumin').AsString, 1, 6) + '-' +
                              '*******';
                         //                          Copy(FieldByName('Jumin').AsString,7,7);


                         grdYeyak.Cells[10, grdYeyak.RowCount - 1] := FieldByName('c_phone').AsString;

                         Next;
                    end;


          end;
     end;
end;



procedure TcidView_f.TelNeyuk(ChartNo: string);
begin
     GrdTelRec.rowcount:=1;
     with Dm_f.SqlWork  do
     begin
         // Clear; // RealGrid.Clear;
          SQL.Text := SQL_SELECT_DATA_TelRec;
          ParamByName('TrChart').AsString := ChartNo;
          Open;
          if not IsEmpty then
               while not EOF do
               begin
                  GrdTelRec.AddRow; // 그리드에 빈 로우를 추가
                    GrdTelRec.Cells[0, GrdTelRec.RowCount - 1] :=
                         FieldByName('TrDate').AsString;
                    GrdTelRec.Cells[1, GrdTelRec.RowCount - 1] :=
                         FieldByName('Trname').AsString;
                    GrdTelRec.Cells[2, GrdTelRec.RowCount - 1] :=
                         FieldByName('TrNumber').AsString;
                    GrdTelRec.Cells[3, GrdTelRec.RowCount - 1] :=
                         FieldByName('TrTime').AsString;
                    GrdTelRec.Cells[4, GrdTelRec.RowCount - 1] :=
                         FieldByName('TrRemark').AsString;
                    GrdTelRec.Cells[5, GrdTelRec.RowCount - 1] :=
                         FieldByName('TrCode').AsString;
                    Next;
               end;
     end;

end;

procedure TcidView_f.NaewonNeyuk(ChartNo: string);
begin
     grdNewon.rowcount:=1;
     if Chartno <> '' then
     begin
          with dm_f.Sqlwork  do
          begin
          {
                    Close;
                    Sql.Clear;
                    Sql.Add('select * from jinryo_p');
                    Sql.Add(' where chart=:chart');
                    Sql.Add(' order by jin_day desc');
                    ParamByName('chart').AsString := JchartNoEdit.Text;
                    Open;
                    First;
          }
               Close;
               Sql.Clear;
               Sql.Add('select * from jinryo_s');
               Sql.Add(' where chart=:chart');
               Sql.Add('and g_check =:Su_key ');
               Sql.Add(' order by jin_day desc');
               ParamByName('chart').AsString := ChartNo;
               ParamByName('Su_key').AsString := 'G';
               Open;
               First;

              // Clear;
               if not isEmpty then
               begin
                    while not eof do
                    begin
                         grdNewon.AddRow;
                         if FieldByName('jin_day').AsString <> grdNewon.Cells[0, grdNewon.RowCount -
                              1] then
                         begin
                              grdNewon.Cells[0, grdNewon.RowCount - 1] :=
                                   FieldByName('jin_day').AsString;
                              grdNewon.Cells[1, grdNewon.RowCount - 1] := grdNewon.Cells[1, grdNewon.RowCount -
                                   1] +
                                   FieldByName('su_kor_name').AsString;
                         //                    Cells[1, RowCount - 1] := FieldByName('sunapak').AsString;
                         end;
                         Next;
                    end;

               end;
          end;
     end;
end;



procedure TcidView_f.pgInfoChange(Sender: TObject);
begin

     case pgInfo.ActivePageIndex of
          0:
               begin
                 //   YeyakNeyuk(varChartNo);
               end;
          1:
               begin
                   // YeyakNeyuk(varChartNo);

               end;
          2:
               begin
                  //   NaewonNeyuk(varChartNo);

               end;
          3:
               begin
                 //   TelNeyuk(varChartNo);

               end;
          4:
               begin
              //      YeyakNeyuk(varChartNo);
               end;
     end;




end;

procedure TcidView_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TcidView_f.FormDestroy(Sender: TObject);
begin
     cidView_f := nil;
end;

procedure TcidView_f.FormShow(Sender: TObject);
begin
     caption := '고객 상세 정보';
     pgInfo.ActivePageIndex := 0;

end;

end.




