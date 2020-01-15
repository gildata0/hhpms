unit chairName2;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     Db, StdCtrls,
  ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, AdvUtil;

type
     TChairName2_f = class(TForm)
    Panel1: TPanel;
    plbottom: TPanel;
    plgrid: TPanel;
    Grdmain: TAdvStringGrid;
    Label2: TLabel;
    btnAdd: TButton;
    btnPost: TButton;
    btnDelete: TButton;
    btnClose: TButton;

          procedure btnPostClick(Sender: TObject);
          procedure btnDeleteClick(Sender: TObject);

          procedure FormShow(Sender: TObject);
          procedure btnCloseClick(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

     private
          procedure SelectData;
          procedure PostData;
          procedure DeleteData;

    { Private declarations }
     public
    { Public declarations }
     end;

var
     ChairName2_f: TChairName2_f;
const
  // Grid Columns Index
     GR_EMPNO = 0;
     GR_LNAME = 1;
     GR_FNAME = 2;

  // Query
     SQL_SELECT_DATA = 'SELECT * FROM ma_basic_chair                     ';

     SQL_INSERT_DATA = 'INSERT INTO ma_basic_chair                       ' + #13#10 +
          ' (ChairNo, ChairName, ChairRemark )             ' + #13#10 +
          ' VALUES                                    ' + #13#10 +
          ' (:ChairNo, :ChairName, :ChairRemark )           ';

     SQL_UPDATE_DATA = 'UPDATE ma_basic_chair SET  ' + #13#10 +
          '       ChairName = :ChairName, ChairRemark=:ChairRemark  ' + #13#10 +
          ' WHERE ChairNo = :ChairNo                      ';

     SQL_DELETE_DATA = 'DELETE FROM ma_basic_chair                       ' + #13#10 +
          ' WHERE ChairNo = :ChairNo                      ';

     SQL_SELECT_MAXCODE = 'select max(ChairNo) as MaxCode from ma_basic_chair     ';


implementation
uses uDm, uMain;
{$R *.DFM}

procedure TChairName2_f.SelectData;
var
   nRowcount, i:integer;

begin
     i:=1;
     grdMain.beginupdate;

     with Dm_f.sqlTemp do
     begin

          SQL.Text := SQL_SELECT_MAXCODE;
          Open;
          label2.caption:= FieldByName('Maxcode').AsString;
     end;

     with Dm_f.sqlTemp, grdMain do
     begin
          //Clear; // RealGrid.Clear;
          SQL.Text := SQL_SELECT_DATA;
          Open;
          nRowCount:=recordcount;
          rowCount:=nRowcount+1;

          if not Dm_f.sqlTemp.IsEmpty then
               while not EOF do
               begin

                    Cells[1, i] := FieldByName('ChairNo').AsString;
                    Cells[2, i] := FieldByName('ChairRemark').AsString;
                    inc(i);

                    Next;
               end;
               autonumbercol(0);
     end;

     grdMain.Endupdate;



end;

procedure TChairName2_f.PostData; //일괄저장 방법
var
     nRow: Integer;
begin

    with Dm_f.sqlTemp, grdMain do
     try
          Close;
          Sql.Clear;
          Sql.Add('delete from ma_basic_chair');
          execsql;

          for nRow := 1 to RowCount - 1 do
          begin
               Close;
               Sql.Clear;
               Sql.Add('INSERT INTO  ma_basic_chair');
               Sql.Add('(ChairNo, ChairName, ChairRemark  )VALUES ');
               Sql.Add('(:ChairNo, :ChairName, :ChairRemark )');
               ParamByName('ChairNo').AsString := grdmain.Cells[1, nRow];
               ParamByName('ChairName').AsString := grdmain.Cells[1, nRow];
               ParamByName('ChairRemark').AsString := grdmain.Cells[2, nRow];

               ExecSQL;
               autonumbercol(0);
          end;


     except
          on E: Exception do
          begin
               //dbMain.Rollback;
               //result := false;
               ShowMessage(E.Message + ' [저장오류]');
          end;
     end;
     showmessage('저장되었습니다.');

     SelectData;


end;

procedure TChairName2_f.DeleteData;
begin
     with Dm_f.sqlTemp  do
     try
          Close;
          Sql.text:=  SQL_DELETE_DATA ;
          parambyname('chairNo').asString:=  grdmain.Cells[1, grdmain.Row];
          execsql;

     except
     end;

end;

// Event

procedure TChairName2_f.btnPostClick(Sender: TObject);
begin
     PostData;
end;

procedure TChairName2_f.btnDeleteClick(Sender: TObject);
begin
     DeleteData;
     SelectData;
end;





procedure TChairName2_f.FormShow(Sender: TObject);
begin
     //main_f.panelSet(plbottom,albottom);
     //main_f.panelSet(plgrid,alclient);
     //main_f.GridSet(grdmain,false,plgrid,alclient,0,0,0,0);
     Caption := '체어명 설정';
     label2.caption:='';
     SelectData;

end;

procedure TChairName2_f.btnCloseClick(Sender: TObject);
begin
     close;
end;

procedure TChairName2_f.btnAddClick(Sender: TObject);
var
     nRow: integer;
begin
     grdmain.InsertRows(grdmain.RowCount,1);

     nRow := grdmain.RowCount - 1;

     if (nRow > 0) and (GrdMain.Cells[2, nRow] = '') and
          (GrdMain.Cells[1, nRow] = '') then
     begin
          label2.caption:=inttostr(nRow-1);
          GrdMain.Cells[1, nRow] :=
               formatfloat('0', StrToInt(label2.caption) + 1);

     end
     else
          if (nRow = 0) then
          begin
               GrdMain.Cells[1, nRow] := '1';
               GrdMain.Cells[2, nRow] := '';
          end;
   label2.caption:= GrdMain.Cells[1, nRow];



end;



procedure TChairName2_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      action:=caFree;
end;

procedure TChairName2_f.FormDestroy(Sender: TObject);
begin
        ChairName2_f:=nil;
end;

end.

