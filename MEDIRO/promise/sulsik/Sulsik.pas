unit Sulsik;

interface

uses
       Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
       Db, StdCtrls, IniFiles,
       ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, AdvUtil;

type
       TSulsik_f = class(TForm)
    btnMoveUp: TButton;
    btnMoveDown: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    cbBunRyu: TComboBox;
    Button4: TButton;
    Button5: TButton;
    btnAdd: TButton;
    btnPost: TButton;
    btnDelete: TButton;
    Button1: TButton;
    grdMain: TAdvStringGrid;
              procedure btnPostClick(Sender: TObject);
              procedure btnDeleteClick(Sender: TObject);
              procedure Button1Click(Sender: TObject);
              procedure FormShow(Sender: TObject);
              procedure btnMoveUpClick(Sender: TObject);
              procedure btnMoveDownClick(Sender: TObject);
    procedure cbBunRyuChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
       private
              procedure SelectData(varBunryu:string);
              procedure PostData;
              procedure DeleteData;
              { Private declarations }
       public
              { Public declarations }
       end;

var
       Sulsik_f: TSulsik_f;
       YSulTeam: string; //팀별 술식 저장을 위한 팀 변수
       FormInit: TIniFile;
       SulSort: string;
implementation
uses uDm, inputpromise, umain;
{$R *.DFM}

const
       // Grid Columns Index
       GR_EMPNO = 0;
       GR_LNAME = 1;
       GR_FNAME = 2;
       // Query
       SQL_SELECT_DATA = 'SELECT * FROM ma_promise_sulsik' + #13#10 +
              ' WHERE SulBunryu = :SulBunRyu                      '+ #13#10 +
          'order by sulorder'  ;

       SQL_INSERT_DATA = 'INSERT INTO ma_promise_sulsik                       '
              + #13#10 +
              ' (SulCode, SulName, sulOrder, sulBunryu)              ' + #13#10 +
              ' VALUES                                    ' + #13#10 +
              ' (:SulCode, :SulName, :sulorder, :sulBunryu)           ';

       SQL_UPDATE_DATA = 'UPDATE ma_promise_sulsik SET  ' + #13#10 +
              '                    SulName = :SulName , sulorder=:sulorder' + #13#10
              +
              ' WHERE SulCode = :SulCode                      ';

       SQL_DELETE_DATA = 'DELETE FROM   ma_promise_sulsik ' + #13#10 +
              ' WHERE SulCode = :SulCode                      ' ;

       SQL_DELETE_ALL = 'DELETE FROM   ma_promise_sulsik '+ #13#10 +
              ' WHERE SulBunryu = :SulBunRyu                      ';

procedure TSulsik_f.SelectData(varBunryu:string);
begin
       with grdMain do
       begin
              removeRows(1, rowcount-1);

               Dm_f.sqlTemp.SQL.Text := SQL_SELECT_DATA;
               Dm_f.sqlTemp.paramByname('sulBunryu').asString := varBunryu;
               Dm_f.sqlTemp.Open;
              if not  Dm_f.sqlTemp.IsEmpty then
                     while not  Dm_f.sqlTemp.EOF do
                     begin
                            AddRow; // 그리드에 빈 로우를 추가
                            Cells[GR_EMPNO, RowCount - 1]:=
                                   Dm_f.sqlTemp. FieldByName('SulCode').AsString;
                            Cells[GR_LNAME, RowCount - 1] :=
                                    Dm_f.sqlTemp.FieldByName('SulName').AsString;
                             Dm_f.sqlTemp.Next;
                     end;

           //   sort(0);
       end;
end;
{
procedure TSulsik_f.PostData; //일괄저장 방법
var
  nRow: Integer;
  varCode, varname:string;
begin
  with Dm_f.sqlTemp, grdMain do
  begin
          // dbMain.StartTransaction;
          // RDBMS 사용시 주석을 지워 주세요, 트랜잭션 처리 방법
    try
      for nRow := 0 to RowCount - 1 do
      begin
         varCode:= Cells[GR_EMPNO,
              nRow].AsString;
         varName:=      Cells[GR_LNAME,
              nRow].AsString;
        if RowState[nRow] = wrUpdated then
        begin
          SQL.Text := SQL_UPDATE_DATA;

        //  Close;
        //  Sql.Clear;
        //  Sql.Add('UPDATE  ma_promise_sulsik');
        //  Sql.Add('SET SulName = :SulName');
        //  Sql.Add('WHERE SulCode = :SulCode');

        end
        else if RowState[nRow] = wrInserted then
        begin
          SQL.Text := SQL_INSERT_DATA;
         // Close;
         // Sql.Clear;

        //  Sql.Add('INSERT INTO  ma_promise_sulsik');
        //  Sql.Add('(SulCode, SulName)VALUES ');
        //  Sql.Add('(:SulCode, :SulName)');
        end;
        if (RowState[nRow] = wrUpdated) or (RowState[nRow] =
          wrInserted) then
        begin
          if (Cells[GR_EMPNO, nRow].AsString <> '') and
            (Cells[GR_LNAME, nRow].AsString <> '') then
          begin
            ParamByName('SulCode').AsString :=varCode;
            ParamByName('SulName').AsString :=varname ;
            ParamByName('SulOrder').AsString :=inttostr(nRow) ;
            ExecSQL;
          end;
        end;

      end;
               //dbMain.Commit;
      for nRow := 0 to RowCount - 1 do
        RowState[nRow] := wrNormal;
      Refresh;
    except
      on E: Exception do
      begin
                    //dbMain.Rollback;
        ShowMessage(E.Message + ' [저장오류]');
      end;
    end;
  end;
end;
}

procedure TSulsik_f.PostData; //일괄저장 방법
var
       nRow: Integer;
       varCode, varname: string;
begin
       with grdMain do
       begin
              try

                      Dm_f.UniConnection1.StartTransaction;

                      Dm_f.sqlTemp.close;
                      Dm_f.sqlTemp.sql.clear;
                      Dm_f.sqlTemp.SQL.Text := SQL_DELETE_ALL;
                      Dm_f.sqlTemp. paramByName('sulBunryu').asString:=  cbBunRyu.text;
                      Dm_f.sqlTemp.execsql;

                     for nRow := 1 to RowCount - 1 do
                     begin
                            varCode := Cells[GR_EMPNO,  nRow];
                            varName := Cells[GR_LNAME,   nRow];
                            Dm_f.sqlTemp.SQL.Text := SQL_INSERT_DATA;
                            Dm_f.sqlTemp.ParamByName('SulBunryu').AsString   :=       cbBunryu.text;
                            Dm_f.sqlTemp.ParamByName('SulCode').AsString     :=       varCode;
                            Dm_f.sqlTemp.ParamByName('SulName').AsString     :=       varname;
                            Dm_f.sqlTemp.ParamByName('SulOrder').AsString    :=       inttostr(nRow);
                            Dm_f.sqlTemp.ExecSQL;
                     end;

                          Dm_f.UniConnection1.Commit;
                            ShowMessage(  ' [저장완료]');
                     Refresh;
              except
                     on E: Exception do
                     begin
                               Dm_f.UniConnection1.Rollback;
                            ShowMessage(E.Message + ' [저장오류]');
                     end;
              end;
       end;
end;

procedure TSulsik_f.DeleteData;
begin
       if Application.MessageBox('삭제하십니까?', '삭제', MB_YESNO) = IDYES then
              with  grdMain do
              begin
                     //dbMain.StartTransaction;
                 {
                                try
                                     SQL.Text := SQL_DELETE_DATA;
                                     Close;
                                     Sql.Clear;
                                     Sql.Add('Delete From  ' + YSulTeam);
                                     Sql.Add('WHERE SulCode = :SulCode');
                                     ParamByName('SulCode').AsString := Cells[GR_EMPNO, Row].AsString;
                                     ExecSQL;
                                     }
                     try
                            Dm_f.sqlTemp. SQL.Text := SQL_DELETE_DATA;
                            {Close;
                            Sql.Clear;
                            Sql.Add('Delete From  ma_promise_sulsik');
                            Sql.Add('WHERE SulCode = :SulCode');
                            }
                             Dm_f.sqlTemp.ParamByName('SulCode').AsString := Cells[GR_EMPNO,  Row];
                             Dm_f.sqlTemp.ExecSQL;

                            //dbMain.Commit;
                            removerows(Row, 1); // 또는 SelectData;
                     except
                            on E: Exception do
                            begin
                                   //dbMain.Rollback;
                                   ShowMessage(E.Message + ' [삭제오류]');
                            end;
                     end;
              end;
end;

// Event

procedure TSulsik_f.btnPostClick(Sender: TObject);
begin
       PostData;
end;

procedure TSulsik_f.btnAddClick(Sender: TObject);
begin
       grdmain.AddRow;
       grdmain.AutoNumberCol(0);
end;

procedure TSulsik_f.btnDeleteClick(Sender: TObject);
begin
       DeleteData;
end;

procedure TSulsik_f.Button1Click(Sender: TObject);
begin
       inputpromise_f.YList.clear;

       with Dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('Select * from ma_promise_sulsik');
              Sql.Add('order by SulOrder');
              open;
              while not eof do
              begin
                     inputpromise_f.YList.Items.Add(FieldByName('Sulname').AsString);
                     next;
              end;
       end;
       Close;
end;

procedure TSulsik_f.FormShow(Sender: TObject);
var
       path: string;
begin
       caption := '술식등록';

       SelectData(cbBunryu.text);

end;

procedure TSulsik_f.btnMoveUpClick(Sender: TObject);
begin

       if grdmain.Row > 1 then
       begin
              grdmain.MoveRow(grdmain.Row, grdmain.Row - 1);
              grdMain.Row := grdmain.Row - 1;
                 grdmain.AutoNumberCol(0);
       end;


end;

procedure TSulsik_f.btnMoveDownClick(Sender: TObject);
begin
       if grdMain.Row < grdmain.RowCount - 1 then
       begin
              grdmain.MoveRow(grdmain.Row, grdmain.Row + 1);
              grdMain.Row := grdmain.Row + 1;
                 grdmain.AutoNumberCol(0);
       end;

end;

procedure TSulsik_f.cbBunRyuChange(Sender: TObject);
begin
     SelectData(cbBunRyu.text);
end;

end.

