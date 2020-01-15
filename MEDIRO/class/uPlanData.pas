unit uPlanData;

interface
uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls;

function DeletePlan(varId: integer): boolean;
function DeletePlanGroup(varGroup: string): boolean;

function insertPlan(Chart, tooth, portion, option, description,
     jinday, doctor, council, kind, txno, choice, check, remark:
     string;
     nord, code, cnt, price, keumek: integer): boolean;

function updatePlan(id, tooth, portion, option, description,
     jinday, doctor, council, kind: string;
     nord, code, cnt, price, keumek: integer; choicecheck: boolean):
     boolean;
function UpdateNord(id, nord: string): boolean;
function UpdateChk(id: string; choiceCheck: string): boolean;
function UpdateOption(id, option: string): boolean;
function UpdateYehoo(id, yehoo: string): boolean;
function UpdatefDate(id, fDate: string): boolean;
function Updatekind(id, kind: string): boolean;

implementation
uses uDm, uFunctions;

function DeletePlan(varId: integer): boolean;
begin
     try
        //  dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               sql.Add('delete from ma_plan');
               sql.add('where id=:id');
               parambyname('id').asInteger := varid;
               execsql;

            //   dm_f.ZConnection.Commit;

               result := true;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('Delete_plan_line' + '[' + inttostr(varid) + ']' +
                    E.Message);
              // dm_f.ZConnection.Rollback;
               result := false;

          end;
     end;
end;

function DeletePlanGroup(varGroup: string): boolean;
begin
     try
          //dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               sql.Add('delete from ma_plan');
               sql.add('where txno like :txno+''%'' ');
               parambyname('txNo').asstring := copy(varGroup, 1, 3);
               execsql;

               //dm_f.ZConnection.Commit;

               result := true;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('Delete_plan_Group' + '[' + varGroup + ']' +
                    E.Message);
              // dm_f.ZConnection.Rollback;
               result := false;

          end;
     end;
end;

function insertPlan(Chart, tooth, portion, option, description,
     jinday, doctor, council, kind, txno, choice, check, remark: string;
     nord, code, cnt, price, keumek: integer): boolean;
var
     i: Integer;
     stat: boolean;
begin
     try
          //      dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('insert into ma_plan');
               Sql.Add(' (dtxorder, chart,jin_day,kind,modteeth, txno, txok, code,');
               Sql.Add('portion,description,tbName, cremark,choice,');
               Sql.Add('cprice,ccnt,ckumak,nOrd, Chk, Council, doctor, fil, f_day) values');
               Sql.Add(' (:dtxorder,:chart,:jin_day,:kind, :modteeth, :txno, :txok, :code,');
               Sql.Add(':portion,:description,:tbName, :cremark,:choice,');
               Sql.Add(':cprice,:ccnt,:ckumak,:nOrd, :Chk, :Council, :doctor, :fil, :f_day)');
               ParamByName('chart').AsString := chart;
               ParamByName('nOrd').AsInteger := nOrd;
               ParamByName('tbName').AsString := tooth;
               ParamByName('portion').AsString := portion;

               //Option 번호
               ParamByName('dTxOrder').AsString := option;

               ParamByName('description').AsString := description;
               ParamByName('code').Asinteger := code;
               ParamByName('choice').AsString := choice; //예후
               ParamByName('ccnt').Asinteger := cnt; //수량
               ParamByName('cprice').Asinteger := price; //단가
               ParamByName('ckumak').Asinteger := keumek; //금액
               ParamByName('f_day').AsString := '';

               ParamByName('Chk').AsString := check;

               ParamByName('jin_day').AsString := jinday;
               ParamByName('doctor').AsString := doctor;
               ParamByName('Council').AsString := council;
               ParamByName('cremark').AsString := remark;

               //치료계획의 종류
               ParamByName('kind').AsString := kind;

               ParamByName('fil').AsString := '';
               ParamByName('modteeth').AsString := '';
               ParamByName('txno').AsString := txNo;
               ParamByName('txok').AsString := '';

               ExecSQL;
          end;

          //   dm_f.ZConnection.Commit;
          result := true;
     except
          on E: Exception do
          begin
               ExceptLogging('insert_plan' + E.Message);
               //         dm_f.ZConnection.Rollback;
               result := false;
          end;
     end;
end;

function updatePlan(id, tooth, portion, option, description,
     jinday, doctor, council, kind: string;
     nord, code, cnt, price, keumek: integer; choicecheck: boolean): boolean;
var
     i: Integer;
     stat: boolean;
begin
     try
         // dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('update ma_plan set');

               Sql.Add('dtxorder=:dtxorder,jin_day=:jin_day,kind=:kind, modteeth=:modteeth, txno=:txno, txok=:txok,code=:code,');
               Sql.Add('portion=:portion,description=:description,tbname=:tbName, cremark=:cremark,choice=:choice,');
               Sql.Add('cprice=:cprice,ccnt=:ccnt,ckumak=:ckumak,nord=:nOrd, chk=:Chk, council=:Council, doctor=:doctor, fil=:fil, f_day=:f_day');
               sql.add('where  id=:id');
               ParamByName('id').AsString := id;
               ParamByName('nOrd').AsInteger := nOrd;
               ParamByName('tbName').AsString := tooth;
               ParamByName('portion').AsString := portion;

               ParamByName('dTxOrder').AsString := option; //Option 번호

               ParamByName('description').AsString := description;
               ParamByName('code').Asinteger := code;
               ParamByName('choice').AsString := ''; //예후
               ParamByName('ccnt').Asinteger := cnt; //수량
               ParamByName('cprice').Asinteger := price; //단가
               ParamByName('ckumak').Asinteger := keumek; //금액
               ParamByName('f_day').AsString := '';

               if choicecheck = true then
                    ParamByName('Chk').AsString := '1'
               else
                    ParamByName('Chk').AsString := '0';

               ParamByName('jin_day').AsString := jinday;
               ParamByName('doctor').AsString := doctor;
               ParamByName('Council').AsString := council;
               ParamByName('cremark').AsString := '';

               ParamByName('kind').AsString := kind; //치료계획의 종류

               ParamByName('fil').AsString := '';
               ParamByName('modteeth').AsString := '';
               ParamByName('txno').AsString := '';
               ParamByName('txok').AsString := '';

               ExecSQL;
          end;

         // dm_f.ZConnection.Commit;
          result := true;
     except
          on E: Exception do
          begin
               ExceptLogging('Update_plan' + E.Message);
               //dm_f.ZConnection.Rollback;
               result := false;
          end;
     end;
end;

function UpdateNord(id, nord: string): boolean;
begin
     try
         // dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('update ma_plan set');
               Sql.Add(' nOrd=:nOrd ');
               sql.add('where  id=:id');
               ParamByName('id').AsString := id;
               ParamByName('nOrd').AsString := nord;
               ExecSQL;
          end;

        //  dm_f.ZConnection.Commit;
          result := true;
     except
          on E: Exception do
          begin
               ExceptLogging('[' + 'Update_plan_nOrd' + ']' +
                    E.Message);
             //  dm_f.ZConnection.Rollback;
               result := false;
          end;
     end;
end;

function UpdateChk(id: string; choiceCheck:string): boolean;
begin
     try
         // dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('update ma_plan set');
               Sql.Add(' chk=:chk ');
               sql.add('where  id=:id');
               ParamByName('id').AsString := id;
               ParamByName('Chk').AsString := choiceCheck;
               ExecSQL;
          end;

         // dm_f.ZConnection.Commit;
          result := true;
     except
          on E: Exception do
          begin
               ExceptLogging('[' + 'Update_plan_Choice' + ']' +
                    E.Message);
            //  dm_f.ZConnection.Rollback;
               result := false;
          end;
     end;
end;

function UpdateOption(id, option: string): boolean;
begin
     try
         // dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('update ma_plan set');
               Sql.Add(' dtxOrder=:dtxOrder ');
               sql.add('where  id=:id');
               ParamByName('id').AsString := id;
               ParamByName('dtxOrder').AsString := option;

               ExecSQL;
          end;

         // dm_f.ZConnection.Commit;
          result := true;
     except
          on E: Exception do
          begin
               ExceptLogging('[' + 'Update_plan_option' + ']' +
                    E.Message);
            //   dm_f.ZConnection.Rollback;
               result := false;
          end;
     end;
end;

function UpdateYehoo(id, yehoo: string): boolean;
begin
     try
         // dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('update ma_plan set');
               Sql.Add(' choice=:choice ');
               sql.add('where  id=:id');
               ParamByName('id').AsString := id;
               ParamByName('choice').AsString := yehoo;

               ExecSQL;
          end;

        //  dm_f.ZConnection.Commit;
          result := true;
     except
          on E: Exception do
          begin
               ExceptLogging('[' + 'Update_plan_yehoo' + ']' +
                    E.Message);
              // dm_f.ZConnection.Rollback;
               result := false;
          end;
     end;
end;

function UpdatefDate(id, fDate: string): boolean;
begin
     try
         // dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('update ma_plan set');
               Sql.Add(' f_day=:f_day ');
               sql.add('where  id=:id');
               ParamByName('id').AsString := id;
               ParamByName('f_day').AsString := fdate;

               ExecSQL;
          end;

        //  dm_f.ZConnection.Commit;
          result := true;
     except
          on E: Exception do
          begin
               ExceptLogging('[' + 'Update_plan_fdate' + ']' +
                    E.Message);
            //   dm_f.ZConnection.Rollback;
               result := false;
          end;
     end;
end;

function UpdateKind(id, kind: string): boolean;
begin
     try
         // dm_f.ZConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('update ma_plan set');
               Sql.Add(' kind=:kind ');
               sql.add('where  id=:id');
               ParamByName('id').AsString := id;
               ParamByName('kind').AsString := kind;

               ExecSQL;
          end;

        //  dm_f.ZConnection.Commit;
          result := true;
     except
          on E: Exception do
          begin
               ExceptLogging('[' + 'Update_plan_kind' + ']' +
                    E.Message);
            //   dm_f.ZConnection.Rollback;
               result := false;
          end;
     end;
end;

end.

 