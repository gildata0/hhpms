unit uJegoset;

interface
uses sysutils, dialogs;

function jegoSet(varPumCode:string; varQty:integer):boolean ;
function baljujegoSet(varbjCd, varbjSeq:string):boolean;
function CodeChange(varOldCode, varNewCode:string):boolean;
procedure tableAlter;

implementation
uses dm, uFunctions;



function jegoSet(varPumCode:string; varQty:integer):boolean;
const
     select_Pummok_jego = 'select pmJego from tblPummok ' + #13#10 +
          'where PmBarCode=:PmBarCode';
     Update_Pummok_jego = 'Update tblPummok Set' + #13#10 +
        'PmJego=:PmJego' + #13#10 +
          'where PmBarCode=:PmBarCode';
var
    varPumJego:integer;
begin
     result:=false;
     try
     with dm_f.sqlwork do
     begin
          SQL.Text := select_Pummok_jego;
          ParamByName('PmBarCode').AsString := varPumCode;
          open;
          if not isEmpty then
             varPumJego:= fieldByName('PmJego').Asinteger 
          else
             varPumJego:= 0 ;



          SQL.Text := Update_Pummok_jego;
          ParamByName('PmBarCode').AsString := varPumCode;
          ParamByName('PmJego').Asinteger := varPumJego + varQty;
          execsql;

          result:= true;
     end;
     except
          on E: Exception do
          begin
              ShowMessage('[재고반영 오류]' + E.Message);
            //    ExceptLogging('[데이터베이스 접속 오류]' + E.Message);
             //  result := false;
          end;
     end;
end;


function baljujegoSet(varbjCd, varbjSeq:string):boolean;
const
      Update_balju_jegoset = 'Update tblbalju Set' + #13#10 +
        'jegoset=:jegoset' + #13#10 +
          'where bjCd=:bjcd and bjSeq=:bjSeq';
var
    varPumJego:integer;
begin
     result:=false;
     try
     with dm_f.sqlwork do
     begin
          SQL.Text :=  Update_balju_jegoset ;
          ParamByName('bjcd').AsString := varbjCd;
          ParamByName('bjSeq').AsString := varbjSeq;
          ParamByName('jegoset').AsString :='1';
          execsql;

          result:= true;
     end;
     except
          on E: Exception do
          begin
              ShowMessage('[발주목록 재고반영 오류]' + E.Message);
            //    ExceptLogging('[데이터베이스 접속 오류]' + E.Message);
             //  result := false;
          end;
     end;
end;


function CodeChange(varOldCode, varNewCode:string):boolean;
const
      Update_balju_pcode = 'Update tblbalju Set' + #13#10 +
        'bjPcode=:bjPcode1' + #13#10 +
          'where bjPcode=:bjPcode2';
      Update_pummok_pcode = 'Update tblpummok Set' + #13#10 +
        'pmbarcode=:pmbarcode1' + #13#10 +
          'where pmbarcode=:pmbarcode2';
var
    varPumJego:integer;
begin
     result:=false;
     try
     with dm_f.sqlwork do
     begin
          SQL.Text :=  Update_pummok_pcode ;
          ParamByName('pmbarcode2').AsString := varoldCode;
          ParamByName('pmbarcode1').AsString := varNewCode;
          execsql;

          SQL.Text :=  Update_balju_pcode ;
          ParamByName('bjpcode2').AsString := varoldCode;
          ParamByName('bjpcode1').AsString := varNewCode;
          execsql;

          result:= true;
     end;
     except
          on E: Exception do
          begin
              ShowMessage('[발주목록 코드변경 오류]' + E.Message);
            //    ExceptLogging('[데이터베이스 접속 오류]' + E.Message);
             //  result := false;
          end;
     end;
end;





procedure tableAlter;
begin
           with Dm_f.SqlWork do
          begin
               close;
               sql.clear;
               Sql.Add('Select top 1 *  from tblBalju ');
               Open;
          end;
          if Dm_f.SqlWork.FindField('jegoset') = nil then
          begin
               with Dm_f.SqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.add('alter table  tblBalju');
                    sql.add('add  [jegoset] char(1) ');
                    execsql;
               end;
          end;
end;




end.
 