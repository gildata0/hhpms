unit uConfig;

interface
uses
     SysUtils,
     Dialogs,
     Classes, StdCtrls, Controls, ComCtrls,
     vcl.Forms,
     uLoadValue;



     function loadini: Boolean;
     procedure  saveValue(code, val: string; disp: string = '');


     const
        //use RIS Send
        START_BLOCK = #$0B;
        END_BLOCK   = #$1C#$0D;


    var
        configvalue : TConfigValue;
        CurrentFile, currentDir : string;

implementation
uses
 uFunctions, uDm;//,
 //    dbsetting;


function loadini: Boolean;
var
     configFile: string;

begin
     configFile := extractFilePath(paramStr(0)) + 'db.ini';
     try

          if fileExists(configfile) then
          begin

               configvalue := Tconfigvalue.Create;


               configvalue.LoadGlobalData_ini;  //ini정보를 열자.

               //
          {   if configvalue.varDbIp <> '' then
               begin
                   Db2infoSave_dbinfo; //기존 ini정보를 win.ini로 저장한다.
                   UpdateIniInfo;//기존 ini에서 연결정보를 삭제한다.
               end;
           }
               configvalue.LoadGlobalData_db2Set; //db연결정보 및  2차서버 정보를 불러온다.


               if configvalue.varDbIp <> '' then
                    result := true
               else
               begin
//                    if not Assigned(dbSetting_f) then
//                         dbSetting_f :=
//                              TdbSetting_f.Create(application);
//                    dbSetting_f.Showmodal();
                    result := true;
               end;
          end
          else
          begin
               configvalue := Tconfigvalue.Create;
               configvalue.LoadGlobalData_ini;
               ///  configvalue.Free;
//               if not Assigned(dbSetting_f) then
//                    dbSetting_f := TdbSetting_f.Create(application);
//               dbSetting_f.Showmodal();
               result := true;

          end;
     except
          on E: Exception do
          begin
               ExceptLogging('[ini파일을 로드할 수 없습니다.]' + #10#13 +
                    E.Message);
               result := false;
          end;
     end;
end;


procedure  saveValue(code, val: string; disp: string = '');
var
     varisEmpty: boolean;
begin
     with dm_f.SqlWork do
     begin
          close;
          sql.Clear;
          sql.add('select *  from ma_config ');
          sql.add('where code=:code');
          parambyname('code').AsString := code;
          open;
          varisEmpty := isEmpty;

     end;
     if varisEmpty = false then
     begin
          with dm_f.SqlWork do
          begin
               close;
               sql.Clear;
               sql.add('update  ma_config  set');
               sql.add('val=:val');
               //   sql.add(', remark=:remark');
               sql.add('where code=:code');
               parambyname('code').AsString := code;
               parambyname('val').AsString := val;
               //    parambyname('remark').AsString := disp;
               execsql;
          end;
     end
     else
     begin
          with dm_f.SqlWork do
          begin
               close;
               sql.Clear;
               sql.add('insert into ma_config');
               sql.add('(code, val, remark) values');
               sql.add('(:code, :val, :remark)');
               parambyname('code').AsString := code;
               parambyname('val').AsString := val;
               parambyname('remark').AsString := disp;
               execsql;
          end;
     end;

end;

end.
