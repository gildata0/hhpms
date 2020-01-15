unit uSugaUpdate;
interface
uses
     Forms,
     SysUtils,
     Dialogs,
     Classes,
     IniFiles,
     Controls,
     Vcl.StdCtrls,
     windows,BaseGrid, AdvGrid, AdvProgressBar;

procedure ChangeWrite(varDate, varKind, varRemark: string);
function CheckDBUpdate(varKind, varRemark: widestring): boolean;


function sugaTableUpdate_groupKind(filename: string):boolean;

function sugaTableUpdate_groupCode(filename: string):boolean;
function sugaTableUpdate_groupsuga(filename: string):boolean;
procedure sugaTableUpdate_suga(filename: string);
procedure sugaTableUpdate_sugaHistory(filename: string);
procedure sugaTableUpdate_sugaHistory_excel(varGrid:TadvStringGrid; varProgress:TadvProgressBar);
procedure sugaTableUpdate_sugaHistory_2(varSukey,  varSuApply, varContext, varbodan,  varDanQty, varSuPoint:string);

function sugaTableUpdate_sugaBasic_excel(varGrid:TadvStringGrid; varProgress:TadvProgressBar):boolean;
function sugaTableUpdate_sugaBasic_excel2(varGrid:TadvStringGrid; varProgress:TadvProgressBar):boolean;
function sugaTableUpdate_suga_excel(varGrid:TadvStringGrid; varProgress:TadvProgressBar):boolean;
function sugaTableInsert_suga_excel(varGrid:TadvStringGrid; varProgress:TadvProgressBar):boolean;

function sugaTableUpdate_Update_sanJungMyung(varGrid:TadvStringGrid;
    varProgress:TadvProgressBar):boolean;

function  CheckSugaUpLock(varRemark:string) : boolean;
procedure ChangeLock(varDate, varKind, varRemark: string);

procedure oldSugaDelete(filename: string);

function sugaTableUpdate_suga_MDB(varProgress:TadvProgressBar; varlabel:TLabel):boolean;
function sugaTableUpdate_usersuga_MDB(varProgress:TadvProgressBar):boolean;
function sugaTableUpdate_usersuga2_MDB(varProgress:TadvProgressBar):boolean;
function sugaTableUpdate_usersuga3_MDB(varProgress:TadvProgressBar):boolean;

function sugaTableUpdate_Jeryo_MDB(varProgress:TadvProgressBar; varlabel:TLabel):boolean;


implementation
uses udm, uFunctions;


function  CheckSugaUpLock(varRemark:string) : boolean;
begin
     with dm_f.sqlwork do
     begin

          close;
          sql.clear;
          sql.add('select * from  chkUpdate');
          sql.add('where  kind=:kind and remark=:remark ');
          parambyname('kind').asString := 'L';
          parambyname('remark').asString := 'varRemark';

          open;
          if isEmpty then
             result:= False
          else
             result := true;

          close;
          sql.clear;
          sql.add('select * from  chkUpdate');
          sql.add('where  kind=:kind and  remark=:remark  ');
          parambyname('kind').asString :=  'E';
          parambyname('remark').asString := varRemark;
          open;
          if isEmpty then
            result:= False
          else
            result := true;

     end;


end;


//DB업데이트 내역을 기록 : 재업데이트 방지
procedure ChangeLock(varDate, varKind, varRemark: string);
begin
     with dm_f.sqlwork do
     begin

          close;
          sql.clear;
          sql.add('select * from  chkUpdate');
          sql.add('where dupdate=:dupdate and kind =:kind and remark=:remark  ');
          parambyname('dupdate').asString := varDate;
          parambyname('remark').asString := varRemark;
          parambyname('kind').asString :=   varKind;
          open;
          if varKind ='L' then
          begin

              if isEmpty then
              begin
                    close;
                    sql.clear;
                    sql.add('insert into chkUpdate');
                    sql.add('(dupdate, kind, remark) values ');
                    sql.add('(:dupdate, :kind, :remark) ');
                    parambyname('dupdate').asString := varDate;
                    parambyname('remark').asString := varRemark;
                    parambyname('kind').asString :='L';// varKind;
                    execsql;
              end;      
          end
          else
               if varKind ='E' then
               begin
                    close;
                    sql.clear;
                    sql.add('Update  chkUpdate set');
                    sql.add('kind =:kind  ');
                    sql.add('where dupdate=:dupdate and  remark=:remark    ');
                    parambyname('dupdate').asString := varDate;
                    parambyname('kind').asString := varKind;
                    parambyname('remark').asString := varRemark;
                    execsql;
               end;
     end;

end;

procedure ChangeWrite(varDate, varKind, varRemark: string);
begin
     with dm_f.sqlwork do
     begin

          close;
          sql.clear;
          sql.add('select * from  chkUpdate');
          sql.add('where  kind=:kind and  remark=:remark  ');
          parambyname('kind').asString := varKind;
          parambyname('remark').asString := varRemark;
          open;
          if isEmpty then
          begin
                close;
                sql.clear;
                sql.add('insert into chkUpdate');
                sql.add('(dupdate, kind, remark) values ');
                sql.add('(:dupdate, :kind, :remark) ');
                parambyname('dupdate').asString := varDate;
                parambyname('kind').asString := varKind;
                parambyname('remark').asString := varRemark;
                execsql;
          end;
     end;

end;
//DB업데이트 내역체크 false일때 업데이트 실행

function CheckDBUpdate(varKind, varRemark: widestring): boolean;
begin
     result := false;
     with dm_f.sqlwork do
     begin
          close;
          sql.clear;
          sql.add('select * from chkUpdate');
          sql.add('where kind=:kind and remark=:remark ');
          parambyname('kind').asString := varKind;
          parambyname('remark').asString := varRemark;
          open;
          if not isEmpty then
               result := true
          else
               result := false;
     end;
end;

function sugaTableUpdate_groupCode(filename: string):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
     sList: TStringList;
     i: integer;
begin
     // assignFile(F, extractFilePath(paramStr(0)) + 'upSuga\groupcode.txt');
     result:=true;
     sList := TStringList.Create;
     sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);
     try
     if sList.Count > 0 then
     begin
          for i := 0 to sList.count - 1 do
          begin
               varinsert := sList[i];
               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO GroupCode   ' + #10#13 +
                         ' (GroupCode             ' + #10#13 +
                         ' ,GroupName             ' + #10#13 +
                         ' ,GroupKind1            ' + #10#13 +
                         ' ,GroupKind2            ' + #10#13 +
                         ' ,sortkey               ' + #10#13 +
                         ' ,GroupKind3            ' + #10#13 +
                         ' ,Sang1                 ' + #10#13 +
                         ' ,Sang2                 ' + #10#13 +
                         ' ,Kwamok                ' + #10#13 +
                         ' ,RecallCode            ' + #10#13 +
                         ' ,ilsu                  ' + #10#13 +
                         ' ,iltu                  ' + #10#13 +
                         ' ,qty                   ' + #10#13 +
                         ' ,gub_gu                ' + #10#13 +
                         ' ,su_gu1                ' + #10#13 +
                         ' ,su_gu2                ' + #10#13 +
                         ' ,su_gu3                ' + #10#13 +
                         ' ,rate                  ' + #10#13 +
                         ' ,wizard                ' + #10#13 +
                         ' ,capital)              ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;
          end;
     end;
     except
          result:=false;
     end;
end;

function sugaTableUpdate_groupsuga(filename: string):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
     sList: TStringList;
     i: integer;
begin
     result:=true;
     sList := TStringList.Create;
     sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);
     try
     if sList.Count > 0 then
     begin
          for i := 0 to sList.count - 1 do
          begin
               varinsert := sList[i];
               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO GroupSuga   ' + #10#13 +
                         '  ( GroupCode     ' + #10#13 +
                         ' ,GroupLine      ' + #10#13 +
                         ' ,SugaCode       ' + #10#13 +
                         ' ,iltu           ' + #10#13 +
                         ' ,ilsu           ' + #10#13 +
                         ' ,qty            ' + #10#13 +
                         ' ,apply_day )    ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;
          end;
     end;
     except
         result:=false;
     end;
end;

function sugaTableUpdate_groupKind(filename: string):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
     sList: TStringList;
     i: integer;
begin
     result:=true ;
     sList := TStringList.Create;
     sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     try

     if sList.Count > 0 then
     begin
          for i := 0 to sList.count - 1 do
          begin
               varinsert := sList[i];
               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO GroupKind   ' + #10#13 +
                         '(Groupkind1    ' + #10#13 +
                         ',Groupkind2           ' + #10#13 +
                         ',Groupkind3           ' + #10#13 +
                         ',KindName             ' + #10#13 +
                         ',sortKey)    ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;
          end;
     end;
     except
        result:=false;
     end;
end;

procedure sugaTableUpdate_suga(filename: string);
var
     varinsert: string;
     F: Textfile;
     s: string;
     sList: TStringList;
     i: integer;
begin

     sList := TStringList.Create;
     sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     if sList.Count > 0 then
     begin
          for i := 0 to sList.count - 1 do
          begin
               varinsert := sList[i];
               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO suga   ' + #10#13 +
                         '     (su_key   ' + #10#13 +
                         ' ,su_apply                    ' + #10#13 +
                         ' ,bo_dan                      ' + #10#13 +
                         ' ,ja_dan                      ' + #10#13 +
                         ' ,il_dan                      ' + #10#13 +
                         ' ,wo_dan                      ' + #10#13 +
                         ' ,bo_day                      ' + #10#13 +
                         ' ,ja_day                      ' + #10#13 +
                         ' ,il_day                      ' + #10#13 +
                         ' ,wo_day                      ' + #10#13 +
                         ' ,su_gu1                      ' + #10#13 +
                         ' ,su_gu2                      ' + #10#13 +
                         ' ,su_gu3                      ' + #10#13 +
                         ' ,su_sobulru                  ' + #10#13 +
                         ' ,su_kor_name                 ' + #10#13 +
                         ' ,jaejo_key                   ' + #10#13 +
                         ' ,su_soa                      ' + #10#13 +
                         ' ,su_yagan                    ' + #10#13 +
                         ' ,su_junsan                   ' + #10#13 +
                         ' ,su_danwi                    ' + #10#13 +
                         ' ,dan_qty                     ' + #10#13 +
                         ' ,su_san3                     ' + #10#13 +
                         ' ,Need_chart_memo             ' + #10#13 +
                         ' ,group_check                 ' + #10#13 +
                         ' ,su_extra                    ' + #10#13 +
                         ' ,su_point                    ' + #10#13 +
                         ' ,su_NewCode                  ' + #10#13 +
                         ' ,TopPrice)                   ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;
          end;
     end;
end;

procedure sugaTableUpdate_sugaHistory(filename: string);
var
     varinsert: string;
     F: Textfile;
     s: string;
     sList: TStringList;
     i: integer;
begin

     sList := TStringList.Create;
     sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     if sList.Count > 0 then
     begin
          for i := 0 to sList.count - 1 do
          begin
               varinsert := sList[i];
               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO suga_history   ' + #10#13 +
                         ' (su_key             ' + #10#13 +
                         ' ,su_kor_name                          ' + #10#13 +
                         ' ,bo_dan                               ' + #10#13 +
                         ',su_apply                              ' + #10#13 +
                         ',su_point                              ' + #10#13 +
                         ',dan_qty)                              ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;
          end;
     end;
end;

procedure sugaTableUpdate_sugaHistory_excel(varGrid:TadvStringGrid; varProgress:TadvProgressBar);
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varContext, varbodan:string;
begin

   //  sList := TStringList.Create;
  //   sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     if varGrid.Rowcount > 0 then
     begin
          varProgress.Max:=varGrid.Rowcount - 1;
          varProgress.Position:=0;
          for i := 1 to varGrid.Rowcount - 1 do
          begin
               varContext:=  StringReplace(varGrid.Cells[3,i],'''','',[rfReplaceAll]);
               varbodan:= delcomma( varGrid.Cells[7,i]);
               varinsert :=
               ''''+varGrid.Cells[1,i]+''''        //su_key
                +',' + '''' + varGrid.Cells[2,i]+''''//su_apply
                +',' + '''' + varContext +''''//su_kor_name
                +',' + '''' + varGrid.Cells[6,i]+''''//dan_qty
                +',' + '''' + varBodan +'''' //bo_dan
                +',' + '''' + '1'   +'''' ;                         //su_point


               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO suga_history   ' + #10#13 +
                         ' (su_key             ' + #10#13 +
                         ' ,su_apply                              ' + #10#13 +
                         ' ,su_kor_name                          ' + #10#13 +
                         ' ,dan_qty                              ' + #10#13 +
                         ' ,bo_dan                              ' + #10#13 +
                         ' ,su_point )                              ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;
               application.ProcessMessages;
               varProgress.Position:=i;
          end;
     end;
end;

//suga나 sugabasic에 넣기전에 suga_history에 저장하자....
procedure sugaTableUpdate_sugaHistory_2(varSukey, varSuApply, varContext, varbodan, varDanQty, varSuPoint:string);
var
     varinsert: string;
     F: Textfile;
     s: string;
      i: integer;


begin
         try

               varinsert :=
               ''''+trim(varSuKey)+''''        //su_key
                +',' + '''' + varSuApply+''''//su_apply
                +',' + '''' + trim(varContext) +''''//su_kor_name
                +',' + '''' + varDanQty +''''//dan_qty
                +',' + '''' + varBodan +'''' //bo_dan
                +',' + '''' + varSupoint +'''' ;                         //su_point
               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO suga_history   ' + #10#13 +
                         ' (su_key             ' + #10#13 +
                         ' ,su_apply                              ' + #10#13 +
                         ' ,su_kor_name                          ' + #10#13 +
                         ' ,dan_qty                              ' + #10#13 +
                         ' ,bo_dan                              ' + #10#13 +
                         ' ,su_point )                              ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;
         except
               on E: Exception do
                    begin
                     ExceptLogging('suga History Update:' + E.Message);
                   //  result:=false;
                    end;
          end;
end;



function sugaTableUpdate_sugaBasic_excel2(varGrid:TadvStringGrid; varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varSukey:string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varContext2, varbodan2, varSuPoint2:string;
     varsuApply,varsuApply2, varBoDay, varJaDay, varIlday, varWoday:string;
     modi, ins : boolean;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);
     result:=false;

     if varGrid.Rowcount > 0 then
     begin
          varProgress.Max:=varGrid.Rowcount - 1;
          varProgress.Position:=0;
          for i := 1 to varGrid.Rowcount - 1 do
          begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


          try

                //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

               varSuKey:= trim(varGrid.Cells[1,i]);


               varsuApply:= trim(varGrid.Cells[2,i]);
               varbodan:= delcomma( varGrid.Cells[8,i]);
               varjadan:= delcomma( varGrid.Cells[8,i]);
               varildan:= delcomma( varGrid.Cells[8,i]);
               varwodan:= delcomma( varGrid.Cells[8,i]);

               varBoday:= varGrid.Cells[2,i] ;
               varJaday:= varGrid.Cells[2,i] ;
               varIlday:= varGrid.Cells[2,i] ;
               varWoday:= varGrid.Cells[2,i] ;
               varSugu1:=  '2' ;
               varSugu2:=  '1' ;
               varSugu3:=  '1' ;
               varContext:=  StringReplace(trim(varGrid.Cells[4,i]),'''','',[rfReplaceAll]);
               varSuPoint:=  varGrid.Cells[14,i] ;

               varinsert :=
               ''''+varSuKey+''''        //su_key
                +',' + '''' +varsuApply+''''//su_apply
                +',' + '''' + varBodan+''''//Bo_dan
                +',' + '''' + varJadan +'''' //Ja_dan
                +',' + '''' + varIldan +'''' //Il_dan
                +',' + '''' + varWodan +'''' //Wo_dan
                +',' + '''' + varBoday +'''' //Boday
                +',' + '''' + varJaDay +'''' //JaDay
                +',' + '''' + varIlDay +'''' //Ilday
                +',' + '''' + varWoday +'''' //Woday
                +',' + '''' + varSugu1 +'''' //sugu1
                +',' + '''' + varSugu2 +'''' //sugu2
                +',' + '''' + varSugu3 +'''' //sugu3
                +',' + '''' + varContext   +''''  //su_kor_name
                +',' + '''' + varSupoint  +'''';// su_point


               with dm_f.sqlTemp15 do
               begin
                    close;
                    sql.clear;
                    sql.text := 'select *  from suga   ' + #10#13 +
                            ' where su_key= '+''''+  varSukey +'''';
                    open;
                    if not isEmpty then
                    begin
                         modi := true;
                         ins:= false;


                         varsuApply2:= trim(fieldByname('su_apply').asString);
                         varbodan2:=  fieldByname('bo_dan').asString ;
                         varContext2:=  trim(fieldByname('su_kor_name').asString) ;
                         varSuPoint2:= fieldByname('su_point').asString;
                    end
                    else
                    begin
                         modi := false;
                         ins:= true;
                    end;

               end;

               if ins = true then
               begin
                         with dm_f.sqlTemp do
                         begin

                              close;
                              sql.clear;
                              sql.text := varinsert;
                              execsql;
                               result:=true;
                         end;
               end
               else
               if modi = true then
               begin

                         with dm_f.sqlTemp do
                         begin

                              close;
                              sql.clear;
                              sql.text := 'update  suga set   ' + #10#13 +
                                   '  su_apply                    =' + QuotedStr( varsuApply) + #10#13 +
                                   ' ,bo_dan                       =' + QuotedStr(varBodan) + #10#13 +
                                   ' ,ja_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                   ' ,il_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                   ' ,wo_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                   ' ,bo_day                       =' + QuotedStr( varBoday) + #10#13 +
                                   ' ,ja_day                       =' + QuotedStr(varBoday) + #10#13 +
                                   ' ,il_day                       =' + QuotedStr(varBoday) + #10#13 +
                                   ' ,wo_day                      =' + QuotedStr(varBoday) + #10#13 +
                                   ' ,su_point                    =' + QuotedStr(varSupoint) + #10#13 +
                                   '  where su_key  =' + QuotedStr( varSuKey);

                              execsql;
                               result:=true;
                         end;



                         //아래코드는
                         // 1. suga_history를 먼저 인서트시키고,
                         // 2. sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                         sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );
               end;

               except
                    on E: Exception do
                    begin
                     ExceptLogging('suga Update:' +varSuKey +#10#13+ E.Message);
                     result:=false;
                    end;
               end;

               application.ProcessMessages;
               varProgress.Position:=i;
          end;
     end;
end;
function sugaTableUpdate_sugaBasic_excel(varGrid:TadvStringGrid; varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varSukey:string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply, varBoDay, varJaDay, varIlday, varWoday:string;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);
     result:=true;

     if varGrid.Rowcount > 0 then
     begin
          varProgress.Max:=varGrid.Rowcount - 1;
          varProgress.Position:=0;
          for i := 1 to varGrid.Rowcount - 1 do
          begin

                    //SuGaBasic에 저장하기전에 같은 su_key가 있으면
                    //suga_hoistory에 저장하고 sugabasic에 있는 su_key는지운다


               try
               varSuKey:= trim(varGrid.Cells[1,i]);
               varsuApply:= trim(varGrid.Cells[2,i]);
               varbodan:= delcomma( varGrid.Cells[3,i]);
               varjadan:= delcomma( varGrid.Cells[4,i]);
               varildan:= delcomma( varGrid.Cells[5,i]);
               varwodan:= delcomma( varGrid.Cells[6,i]);

               varBoday:= varGrid.Cells[7,i] ;
               varJaday:= varGrid.Cells[8,i] ;
               varIlday:= varGrid.Cells[9,i] ;
               varWoday:= varGrid.Cells[10,i] ;
               varSugu1:=  varGrid.Cells[11,i] ;
               varSugu2:=  varGrid.Cells[12,i] ;
               varSugu3:=  varGrid.Cells[13,i] ;
               varContext:=  StringReplace(trim(varGrid.Cells[14,i]),'''','',[rfReplaceAll]);
               varSuPoint:=  varGrid.Cells[16,i] ;




               varinsert :=
               ''''+varSuKey+''''        //su_key
                +',' + '''' +varsuApply+''''//su_apply
                +',' + '''' + varBodan+''''//Bo_dan
                +',' + '''' + varJadan +'''' //Ja_dan
                +',' + '''' + varIldan +'''' //Il_dan
                +',' + '''' + varWodan +'''' //Wo_dan
                +',' + '''' + varBoday +'''' //Boday
                +',' + '''' + varJaDay +'''' //JaDay
                +',' + '''' + varIlDay +'''' //Ilday
                +',' + '''' + varWoday +'''' //Woday
                +',' + '''' + varSugu1 +'''' //sugu1
                +',' + '''' + varSugu2 +'''' //sugu2
                +',' + '''' + varSugu3 +'''' //sugu3
                +',' + '''' +varContext   +''''                           //su_kor_name
                +',' + '''' + varSupoint  +'''';// su_point



                //아래코드는 suga_history를 먼저 인서트시키고 sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.


               sugaTableUpdate_sugaHistory_2(varSukey,varSuApply, varContext, varbodan,'1.0', varSuPoint );


               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'delete from sugabasic   ' + #10#13 +
                            ' where su_key= '+''''+ varSukey+'''';
                    execsql;

                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO sugabasic   ' + #10#13 +
                         ' (su_key             ' + #10#13 +
                         ' ,su_apply                              ' + #10#13 +
                         ' ,bo_dan                                              ' + #10#13 +
                         ' ,ja_dan                                              ' + #10#13 +
                         ' ,il_dan                                              ' + #10#13 +
                         ' ,wo_dan                                              ' + #10#13 +
                         ' ,bo_day                                              ' + #10#13 +
                         ' ,ja_day                                              ' + #10#13 +
                         ' ,il_day                                              ' + #10#13 +
                         ' ,wo_day                                              ' + #10#13 +
                         ' ,su_gu1                                              ' + #10#13 +
                         ' ,su_gu2                                              ' + #10#13 +
                         ' ,su_gu3                                              ' + #10#13 +
                         ' ,su_kor_name                                         ' + #10#13 +
                         ' ,su_point)                                           ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;
               except
                    on E: Exception do
                    begin
                     ExceptLogging('sugabasic insert:' + E.Message);
                     result:=false;
                    end;
               end;
               application.ProcessMessages;
               varProgress.Position:=i;
          end;
     end;
end;

  {INSERT INTO [dentro].[dbo].[sugabasic]
           ([su_key]
           ,[su_apply]
           ,[bo_dan]
           ,[ja_dan]
           ,[il_dan]
           ,[wo_dan]
           ,[bo_day]
           ,[ja_day]
           ,[il_day]
           ,[wo_day]
           ,[su_gu1]
           ,[su_gu2]
           ,[su_gu3]
           ,[su_kor_name]
           ,[su_point])
     VALUES
           (<su_key, nvarchar(9),>
           ,<su_apply, smalldatetime,>
           ,<bo_dan, numeric(18,2),>
           ,<ja_dan, numeric(18,2),>
           ,<il_dan, numeric(18,2),>
           ,<wo_dan, numeric(18,2),>
           ,<bo_day, smalldatetime,>
           ,<ja_day, smalldatetime,>
           ,<il_day, smalldatetime,>
           ,<wo_day, smalldatetime,>
           ,<su_gu1, nvarchar(1),>
           ,<su_gu2, nvarchar(1),>
           ,<su_gu3, nvarchar(2),>
           ,<su_kor_name, nvarchar(162),>
           ,<su_point, numeric(18,2),>)}


procedure oldSugaDelete(filename: string);
var
     varDelete: string;
     F: Textfile;
     s: string;
     sList: TStringList;
     i: integer;
begin

     sList := TStringList.Create;
     sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     if sList.Count > 0 then
     begin
          for i := 0 to sList.count - 1 do
          begin
               varDelete := sList[i];
               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'delete from suga   ' + #10#13 +
                         '   where su_key=   ' + #10#13 + varDelete;
                    execsql;
               end;
          end;
     end;

end;


function sugaTableInsert_suga_Excel(varGrid:TadvStringGrid; varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     i: integer;


     varSukey:string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply,   varBoDay, varJaDay, varIlday, varWoday:string;
     varsuApply2,   varBoDay2, varJaDay2, varIlday2, varWoday2:string;
          varContext2, varbodan2,  varsupoint2 :string;
      varDanwi:string;

      varJejosa, varSuibsa, varJejil, varJungBun  : string;
begin


     result:=true;

     if varGrid.Rowcount > 0 then
     begin
          varProgress.Max:=varGrid.Rowcount - 1;
          varProgress.Position:=0;
          for i := 1 to varGrid.Rowcount - 1 do
          begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


               try

                //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

               varSuKey:= trim(varGrid.Cells[1,i]);

               with dm_f.sqlTemp15 do
               begin
                    close;
                    sql.clear;
                    sql.text := 'select *  from suga   ' + #10#13 +
                            ' where su_key= '+''''+  varSukey +'''';
                    open;
                    if not isEmpty then
                    begin

                                 varsuApply2:= trim(fieldByname('su_apply').asString);
                                 varbodan2:=  fieldByname('bo_dan').asString ;
                                 varContext2:=  trim(fieldByname('su_kor_name').asString) ;
                                 varSuPoint2:= fieldByname('su_point').asString;



                             //아래코드는 suga_history를 먼저 인서트시키고 sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                             sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );


                    end;

               end;

               varsuApply:= trim(varGrid.Cells[2,i]);
               varbodan:= delcomma( varGrid.Cells[8,i]);
               varjadan:= delcomma( varGrid.Cells[8,i]);
               varildan:= delcomma( varGrid.Cells[8,i]);
               varwodan:= delcomma( varGrid.Cells[8,i]);

               varBoday:= varGrid.Cells[2,i] ;
               varJaday:= varGrid.Cells[2,i] ;
               varIlday:= varGrid.Cells[2,i] ;
               varWoday:= varGrid.Cells[2,i] ;


               varSugu1:= varGrid.Cells[6,i] ;
               varSugu2:= varGrid.Cells[7,i] ;
               varSugu3:= varGrid.Cells[8,i] ;


               varContext:=  StringReplace(trim(varGrid.Cells[4,i]),'''','',[rfReplaceAll]);
               varSuPoint:=  varGrid.Cells[14,i] ;
               varDanwi:=  varGrid.Cells[17,i] ;

               varJungBun   :=   varGrid.Cells[18,i] ;
               varSuibsa    :=   varGrid.Cells[19,i] ;
               varJejosa    :=   varGrid.Cells[20,i] ;
               varJejil     :=   varGrid.Cells[21,i] ;


               varinsert :=
                 ''''+varSuKey+''''        //su_key
                +',' + '''' +varsuApply+''''//su_apply
                +',' + '''' + varBodan+''''//Bo_dan
                +',' + '''' + varJadan +'''' //Ja_dan
                +',' + '''' + varIldan +'''' //Il_dan
                +',' + '''' + varWodan +'''' //Wo_dan
                +',' + '''' + varBoday +'''' //Boday
                +',' + '''' + varJaDay +'''' //JaDay
                +',' + '''' + varIlDay +'''' //Ilday
                +',' + '''' + varWoday +'''' //Woday
                +',' + '''' + varSugu1 +'''' //sugu1
                +',' + '''' + varSugu2 +'''' //sugu2
                +',' + '''' + varSugu3 +'''' //sugu3
                +',' + '''' + ''   +''''     //su_sobulru
                +',' + '''' + varContext   +''''  //su_kor_name
                +',' + '''' + ''   +''''     //jaejo_key
                +',' + '''' + varJejosa    +''''          //jejosa
                +',' + '''' + varSuibsa    +''''          //suibsa
                +',' + '''' + varJejil     +''''          //jejil
                +',' + '''' + varJungBun   +''''          //jungbun
                +',' + '''' + ''   +''''          //su_soa
                +',' + '''' + ''   +''''          //su_yagan
                +',' + '''' + varSuKey   +''''          //su_junsan
                +',' + '''' + varDanwi   +''''          //su_danwi
                +',' + '''' + '1'   +''''          //dan_qty
                +',' + '''' + ''   +''''          //su_san3
                +',' + '''' + ''   +''''          //Need_chart_memo
                +',' + '''' + ''   +''''          //group_check
                +',' + '''' + ''   +''''          //su_extra
                +',' + '''' + varSupoint  +''''   // su_point
                +',' + '''' + ''  +''''           // su_NewCode
                +',' + '''' + ''  +'''' ;          // TopPrice



               with dm_f.sqlTemp do
               begin
                    close;
                    sql.clear;
                    sql.text := 'INSERT INTO suga   ' + #10#13 +
                         '     (su_key   ' + #10#13 +
                         ' ,su_apply                    ' + #10#13 +
                         ' ,bo_dan                      ' + #10#13 +
                         ' ,ja_dan                      ' + #10#13 +
                         ' ,il_dan                      ' + #10#13 +
                         ' ,wo_dan                      ' + #10#13 +
                         ' ,bo_day                      ' + #10#13 +
                         ' ,ja_day                      ' + #10#13 +
                         ' ,il_day                      ' + #10#13 +
                         ' ,wo_day                      ' + #10#13 +
                         ' ,su_gu1                      ' + #10#13 +
                         ' ,su_gu2                      ' + #10#13 +
                         ' ,su_gu3                      ' + #10#13 +
                         ' ,su_sobulru                  ' + #10#13 +
                         ' ,su_kor_name                 ' + #10#13 +
                         ' ,jaejo_key                   ' + #10#13 +
                         ' ,jejosa                      ' + #10#13 +
                         ' ,suibsa                      ' + #10#13 +
                         ' ,jejil                       ' + #10#13 +
                         ' ,jungbun                     ' + #10#13 +
                         ' ,su_soa                      ' + #10#13 +
                         ' ,su_yagan                    ' + #10#13 +
                         ' ,su_junsan                   ' + #10#13 +
                         ' ,su_danwi                    ' + #10#13 +
                         ' ,dan_qty                     ' + #10#13 +
                         ' ,su_san3                     ' + #10#13 +
                         ' ,Need_chart_memo             ' + #10#13 +
                         ' ,group_check                 ' + #10#13 +
                         ' ,su_extra                    ' + #10#13 +
                         ' ,su_point                    ' + #10#13 +
                         ' ,su_NewCode                  ' + #10#13 +
                         ' ,TopPrice)                   ' + #10#13 +
                         ' VALUES                      ' + #10#13 +
                         '( ' + #10#13 +
                         varInsert + #10#13 +
                         ')';
                    execsql;
               end;

               except
                    on E: Exception do
                    begin
                     ExceptLogging('suga Update:' +varSuKey+'==>'+varContext+'  '+ E.Message);
                     result:=false;
                    end;
               end;
               application.ProcessMessages;
               varProgress.Position:=i;




          end;
     end;
end;


function sugaTableUpdate_suga_excel(varGrid:TadvStringGrid; varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varSukey:string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply,   varBoDay, varJaDay, varIlday, varWoday:string;
     varsuApply2,   varBoDay2, varJaDay2, varIlday2, varWoday2:string;
          varContext2, varbodan2,  varsupoint2 :string;
     varSuDanwi:string;

     modi, ins : boolean;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);
     result:=false;

     if varGrid.Rowcount > 0 then
     begin
          varProgress.Max:=varGrid.Rowcount - 1;
          varProgress.Position:=0;
          for i := 1 to varGrid.Rowcount - 1 do
          begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


          try

                //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

               varSuKey:= trim(varGrid.Cells[1,i]);


               varsuApply:= trim(varGrid.Cells[2,i]);
               varbodan:= delcomma( varGrid.Cells[8,i]);
               varjadan:= delcomma( varGrid.Cells[8,i]);
               varildan:= delcomma( varGrid.Cells[8,i]);
               varwodan:= delcomma( varGrid.Cells[8,i]);

               varBoday:= varGrid.Cells[2,i] ;
               varJaday:= varGrid.Cells[2,i] ;
               varIlday:= varGrid.Cells[2,i] ;
               varWoday:= varGrid.Cells[2,i] ;

               if checkInt(varGrid.cells[16,i])= true then
               varSugu1:=  inttostr(varGrid.ints[16,i])   //2
               else
               varSugu1:=  '2';

               if checkInt(varGrid.cells[17,i])= true then
               varSugu2:=  inttostr(varGrid.ints[17,i])   //1
               else
               varSugu2:=  '1';


             //  varSugu2:=  inttostr(varGrid.ints[17,i]) ; //1
               if checkInt(varGrid.cells[18,i])= true then
               varSugu3:=  inttostr(varGrid.ints[18,i])   //1
               else
               varSugu3:=  '23';
             //  varSugu3:=  varGrid.Cells[18,i] ; //23
               varContext:=  StringReplace(trim(varGrid.Cells[4,i]),'''','',[rfReplaceAll]);

               if trim( varGrid.cells[14,i]) <> '' then
               varSuPoint:=  varGrid.Cells[14,i]
               else
                varSuPoint:= '0';



               varSuDanwi:=  '';//varGrid.Cells[15,i] ;

               varinsert :=
               'insert into suga ( su_key  '+#10+
               ',su_apply '+#10+
               ',bo_dan   '+#10+
               ',ja_dan   '+#10+
               ',il_dan   '+#10+
               ',wo_dan   '+#10+
               ',bo_day   '+#10+
               ',ja_day   '+#10+
               ',il_day   '+#10+
               ',wo_day   '+#10+
               ',su_gu1    '+#10+
               ',su_gu2    '+#10+
               ',su_gu3    '+#10+
               ',su_kor_name'+#10+
               ',su_point  '+#10+
               ',su_danwi   ) values' +
                '('+''''+ varSuKey+''''        //su_key
                +',' + '''' +varsuApply+''''//su_apply
                +',' + '''' + varBodan+''''//Bo_dan
                +',' + '''' + varJadan +'''' //Ja_dan
                +',' + '''' + varIldan +'''' //Il_dan
                +',' + '''' + varWodan +'''' //Wo_dan
                +',' + '''' + varBoday +'''' //Boday
                +',' + '''' + varJaDay +'''' //JaDay
                +',' + '''' + varIlDay +'''' //Ilday
                +',' + '''' + varWoday +'''' //Woday
                +',' + '''' + varSugu1 +'''' //sugu1
                +',' + '''' + varSugu2 +'''' //sugu2
                +',' + '''' + varSugu3 +'''' //sugu3
                +',' + '''' + varContext  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                +',' + '''' + varSupoint  +''''   // su_point
                +',' + '''' + varSuDanwi  +''''  +')';  // su_Danwi


               with dm_f.sqlTemp15 do
               begin
                    close;
                    sql.clear;
                    sql.text := 'select *  from suga   ' + #10#13 +
                            ' where su_key= '+''''+  varSukey +'''';
                    open;
                    if not isEmpty then
                    begin
                         modi := true;
                         ins:= false;


                         varsuApply2:= trim(fieldByname('su_apply').asString);
                         varbodan2:=  fieldByname('bo_dan').asString ;
                         varContext2:=trim(fieldByname('su_kor_name').asString)    ;
                         varSuPoint2:= fieldByname('su_point').asString;
                    end
                    else
                    begin
                         modi := false;
                         ins:= true;
                    end;

               end;

               if ins = true then
               begin
                         with dm_f.sqlTemp do
                         begin

                              close;
                              sql.clear;
                              sql.text := varinsert;
                              execsql;
                               result:=true;
                         end;
               end
               else
               if modi = true then
               begin

                         with dm_f.sqlTemp do
                         begin

                              close;
                              sql.clear;
                              sql.text := 'update  suga set   ' + #10#13 +
                                   '  su_apply                    =' + QuotedStr( varsuApply) + #10#13 +
                                   ' ,bo_dan                       =' + QuotedStr(varBodan) + #10#13 +
                                   ' ,ja_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                   ' ,il_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                   ' ,wo_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                   ' ,bo_day                       =' + QuotedStr( varBoday) + #10#13 +
                                   ' ,ja_day                       =' + QuotedStr(varBoday) + #10#13 +
                                   ' ,il_day                       =' + QuotedStr(varBoday) + #10#13 +
                                   ' ,wo_day                      =' + QuotedStr(varBoday) + #10#13 +
                                   ' ,su_point                    =' + QuotedStr(varSupoint) + #10#13 +
                                   '  where su_key  =' + QuotedStr( varSuKey);

                              execsql;
                               result:=true;
                         end;



                         //아래코드는
                         // 1. suga_history를 먼저 인서트시키고,
                         // 2. sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                         sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );
               end;

               except
                    on E: Exception do
                    begin
                     ExceptLogging('suga Update:'  +varSuKey +#10#13+  E.Message);

         //            result:=false;

                    end;
               end;

               application.ProcessMessages;
               varProgress.Position:=i;
          end;
     end;

end;




function sugaTableUpdate_Update_sanJungMyung(varGrid:TadvStringGrid;
    varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varSukey:string;

     varSanJungName : string;

     modi, ins : boolean;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);
     result:=false;

     if varGrid.Rowcount > 0 then
     begin
          varProgress.Max:=varGrid.Rowcount - 1;
          varProgress.Position:=0;
          for i := 1 to varGrid.Rowcount - 1 do
          begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


          try

                //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

               varSuKey       := trim(varGrid.Cells[1,i]);
               varSanJungName := trim(varGrid.Cells[19,i]);
                         with dm_f.sqlTemp do
                         begin

                              close;
                              sql.clear;
                              sql.text := 'update  suga set   ' + #10#13 +
                                   '  sanJungName                    =' + QuotedStr( varSanJungName) + #10#13 +
                                      '  where su_key  =' + QuotedStr( varSuKey);

                              execsql;
                               result:=true;
                         end;


               except
                    on E: Exception do
                    begin
                     ExceptLogging('suga Update:'  +varSuKey +#10#13+  E.Message);

         //            result:=false;

                    end;
               end;

               application.ProcessMessages;
               varProgress.Position:=i;
          end;
     end;

end;



function sugaTableUpdate_suga_MDB(varProgress:TadvProgressBar; varlabel:TLabel):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i, j: integer;
     varSukey:string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply,   varBoDay, varJaDay, varIlday, varWoday:string;
     varsuApply2,   varBoDay2, varJaDay2, varIlday2, varWoday2:string;
          varContext2, varbodan2,  varsupoint2 :string;
     varSuDanwi:string;

     modi, ins : boolean;
     adoConn : string;
     rcCnt : integer;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     adoConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
               extractfilepath(paramstr(0))+'upSuga\Database11.mdb'+';Persist Security Info=False';

                    try
                         if Dm_f.AdoConnection1.Connected = false then
                         begin
                              Dm_f.AdoConnection1.ConnectionString := adoConn;
                              Dm_f.AdoConnection1.Connected := true;
                             // result := true;
                         end
                         else
                         begin
                            //  result := true;
                         end;
                    except
                         on E: Exception do
                         begin
                              application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('알림'));

                              result := false;
                              Exit;
                         end;
                    end;


     result:=false;

     with dm_f.sqlMdbTemp do
     begin
          close;
          sql.Clear;
          sql.text:='select * from suga';
          open;
          first;

          i:= 0;
          rcCnt := recordCount;

          varProgress.Max:= rcCnt;
          varProgress.Position:=0;

          if rcCnt > 0 then
          begin
               while not Eof do
               begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


                      try

                            //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

                           varSuKey:= trim(Fields[0].AsString);


                           varsuApply:= trim(Fields[1].AsString);

                           varbodan:= delcomma(Fields[7].AsString);
                           varjadan:= delcomma(Fields[7].AsString);
                           varildan:= delcomma(Fields[7].AsString);
                           varwodan:= delcomma(Fields[7].AsString);

                           varBoday:= Fields[1].AsString ;
                           varJaday:= Fields[1].AsString ;
                           varIlday:= Fields[1].AsString ;
                           varWoday:= Fields[1].AsString ;

                           if checkInt(Fields[5].AsString)= true then  //1/2 seperate
                           varSugu1:=   Fields[5].AsString   //2
                           else
                           varSugu1:=  '2';

                           if checkInt(Fields[6].AsString)= true then
                           varSugu2:=  Fields[6].AsString   //1
                           else
                           varSugu2:=  '1';


                         //  varSugu2:=  inttostr(varGrid.ints[17,i]) ; //1
                           if checkInt(Fields[17].AsString)= true then
                           varSugu3:=   Fields[17].AsString   //1
                           else
                           varSugu3:=  '23';
                         //  varSugu3:=  varGrid.Cells[18,i] ; //23
                           varContext:=  StringReplace(trim(Fields[3].AsString),'''','',[rfReplaceAll]);

                           if trim( Fields[13].AsString) <> '' then
                           varSuPoint:=  StringReplace(trim(Fields[13].AsString),',','',[rfReplaceAll])
                           else
                            varSuPoint:= '0';



                           varSuDanwi:=  '';//varGrid.Cells[15,i] ;

                           varinsert :=
                           'insert into suga ( su_key  '+#10+
                           ',su_apply '+#10+
                           ',bo_dan   '+#10+
                           ',ja_dan   '+#10+
                           ',il_dan   '+#10+
                           ',wo_dan   '+#10+
                           ',bo_day   '+#10+
                           ',ja_day   '+#10+
                           ',il_day   '+#10+
                           ',wo_day   '+#10+
                           ',su_gu1    '+#10+
                           ',su_gu2    '+#10+
                           ',su_gu3    '+#10+
                           ',su_kor_name'+#10+
                           ',su_point  '+#10+
                           ',su_danwi   ) values' +
                            '('+''''+ varSuKey+''''        //su_key
                            +',' + '''' +varsuApply+''''//su_apply
                            +',' + '''' + varBodan+''''//Bo_dan
                            +',' + '''' + varJadan +'''' //Ja_dan
                            +',' + '''' + varIldan +'''' //Il_dan
                            +',' + '''' + varWodan +'''' //Wo_dan
                            +',' + '''' + varBoday +'''' //Boday
                            +',' + '''' + varJaDay +'''' //JaDay
                            +',' + '''' + varIlDay +'''' //Ilday
                            +',' + '''' + varWoday +'''' //Woday
                            +',' + '''' + varSugu1 +'''' //sugu1
                            +',' + '''' + varSugu2 +'''' //sugu2
                            +',' + '''' + varSugu3 +'''' //sugu3
                            +',' + '''' + varContext  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varSupoint  +''''   // su_point
                            +',' + '''' + varSuDanwi  +''''  +')';  // su_Danwi


                           with dm_f.sqlTemp15 do
                           begin
                                close;
                                sql.clear;
                                sql.text := 'select *  from suga   ' + #10#13 +
                                        ' where su_key= '+''''+  varSukey +'''';
                                open;
                                if not isEmpty then
                                begin
                                     modi := true;
                                     ins:= false;


                                     varsuApply2:= trim(fieldByname('su_apply').asString);
                                     varbodan2:=  fieldByname('bo_dan').asString ;
                                     varContext2:=trim(fieldByname('su_kor_name').asString)    ;
                                     varSuPoint2:= fieldByname('su_point').asString;
                                end
                                else
                                begin
                                     modi := false;
                                     ins:= true;
                                end;

                           end;

                           if ins = true then
                           begin
                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := varinsert;
                                          execsql;
                                           result:=true;
                                     end;
                           end
                           else
                           if modi = true then
                           begin

                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := 'update  suga set   ' + #10#13 +
                                               '  su_apply                    =' + QuotedStr( varsuApply) + #10#13 +
                                               ' ,bo_dan                       =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,ja_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,wo_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,bo_day                       =' + QuotedStr( varBoday) + #10#13 +
                                               ' ,ja_day                       =' + QuotedStr(varBoday) + #10#13 +
//                                               ' ,il_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,wo_day                      =' + QuotedStr(varBoday) + #10#13 +
//                                               ' ,su_gu1                      =' + QuotedStr(varsugu1) + #10#13 +
//                                               ' ,su_gu2                      =' + QuotedStr(varsugu2) + #10#13 +
//                                               ' ,su_gu3                      =' + QuotedStr(varsugu3) + #10#13 +
                                               ' ,su_point                    =' + QuotedStr(varSupoint) + #10#13 +
                                               '  where su_key  =' + QuotedStr( varSuKey);

                                          execsql;
                                           result:=true;
                                     end;



                                     //아래코드는
                                     // 1. suga_history를 먼저 인서트시키고,
                                     // 2. sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                                     sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );
                           end;

                           except
                                on E: Exception do
                                begin
                                 ExceptLogging('suga Update:'  +varSuKey +#10#13+  E.Message);

                     //            result:=false;

                                end;
                           end;

                     application.ProcessMessages;

                     i:= i+1;

                     j := rcCnt -i;
                    varProgress.Position := varProgress.Position + 1;

                    varlabel.Caption := inttostr(j);
                    next;  //While
                   end;
          end;
     end;

end;




function sugaTableUpdate_Jeryo_MDB(varProgress:TadvProgressBar; varlabel:TLabel):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i, j: integer;
     varSukey:string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply,   varBoDay, varJaDay, varIlday, varWoday:string;
     varsuApply2,   varBoDay2, varJaDay2, varIlday2, varWoday2:string;
          varContext2, varbodan2,  varsupoint2 :string;
     varSuDanwi:string;

     modi, ins : boolean;
     adoConn : string;
     rcCnt : integer;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     adoConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
               extractfilepath(paramstr(0))+'upSuga\Database11.mdb'+';Persist Security Info=False';

                    try
                         if Dm_f.AdoConnection1.Connected = false then
                         begin
                              Dm_f.AdoConnection1.ConnectionString := adoConn;
                              Dm_f.AdoConnection1.Connected := true;
                             // result := true;
                         end
                         else
                         begin
                            //  result := true;
                         end;
                    except
                         on E: Exception do
                         begin
                              application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('알림'));

                              result := false;
                              Exit;
                         end;
                    end;


     result:=false;

     with dm_f.sqlMdbTemp do
     begin
          close;
          sql.Clear;
          sql.text:='select * from material';
          open;
          first;

          i:= 0;
          rcCnt := recordCount;

          varProgress.Max:= rcCnt;
          varProgress.Position:=0;

          if rcCnt > 0 then
          begin
               while not Eof do
               begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


                      try

                            //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

                           varSuKey:= trim(Fields[0].AsString);


                           varsuApply:= trim(Fields[1].AsString);

                           varbodan:= delcomma(Fields[5].AsString);
                           varjadan:= delcomma(Fields[5].AsString);
                           varildan:= delcomma(Fields[5].AsString);
                           varwodan:= delcomma(Fields[5].AsString);

                           varBoday:= Fields[1].AsString ;
                           varJaday:= Fields[1].AsString ;
                           varIlday:= Fields[1].AsString ;
                           varWoday:= Fields[1].AsString ;


                           varSugu1:=  '1'; // 급여재료


                           varSugu2:=  '8'; // 치료재료


                           varSugu3:=  '23';

                           varContext:=  StringReplace(trim(Fields[2].AsString),'''','',[rfReplaceAll]);


                           varSuPoint:= '0';



                           varSuDanwi:= Fields[4].AsString ;

                           varinsert :=
                           'insert into suga ( su_key  '+#10+
                           ',su_apply '+#10+
                           ',bo_dan   '+#10+
                           ',ja_dan   '+#10+
                           ',il_dan   '+#10+
                           ',wo_dan   '+#10+
                           ',bo_day   '+#10+
                           ',ja_day   '+#10+
                           ',il_day   '+#10+
                           ',wo_day   '+#10+
                           ',su_gu1    '+#10+
                           ',su_gu2    '+#10+
                           ',su_gu3    '+#10+
                           ',su_kor_name'+#10+
                           ',su_point  '+#10+
                           ',su_danwi   ) values' +
                            '('+''''+ varSuKey+''''        //su_key
                            +',' + '''' +varsuApply+''''//su_apply
                            +',' + '''' + varBodan+''''//Bo_dan
                            +',' + '''' + varJadan +'''' //Ja_dan
                            +',' + '''' + varIldan +'''' //Il_dan
                            +',' + '''' + varWodan +'''' //Wo_dan
                            +',' + '''' + varBoday +'''' //Boday
                            +',' + '''' + varJaDay +'''' //JaDay
                            +',' + '''' + varIlDay +'''' //Ilday
                            +',' + '''' + varWoday +'''' //Woday
                            +',' + '''' + varSugu1 +'''' //sugu1
                            +',' + '''' + varSugu2 +'''' //sugu2
                            +',' + '''' + varSugu3 +'''' //sugu3
                            +',' + '''' + varContext  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varSupoint  +''''   // su_point
                            +',' + '''' + varSuDanwi  +''''  +')';  // su_Danwi


                           with dm_f.sqlTemp15 do
                           begin
                                close;
                                sql.clear;
                                sql.text := 'select *  from suga   ' + #10#13 +
                                        ' where su_key= '+''''+  varSukey +'''';
                                open;
                                if not isEmpty then
                                begin
                                     modi := true;
                                     ins:= false;


                                     varsuApply2:= trim(fieldByname('su_apply').asString);
                                     varbodan2:=  fieldByname('bo_dan').asString ;
                                     varContext2:=trim(fieldByname('su_kor_name').asString)    ;
                                     varSuPoint2:= fieldByname('su_point').asString;
                                end
                                else
                                begin
                                     modi := false;
                                     ins:= true;
                                end;

                           end;

                           if ins = true then
                           begin
                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := varinsert;
                                          execsql;
                                           result:=true;
                                     end;
                           end
                           else
                           if modi = true then
                           begin

                           //ToDO : 재료수가와 행위수가가 같은 놈이 있다.  G2101006
                           //ToDo : 재료 업데이트는 확인이 필요하다....

//                                     with dm_f.sqlTemp do
//                                     begin
//
//                                          close;
//                                          sql.clear;
//                                          sql.text := 'update  suga set   ' + #10#13 +
//                                               '  su_apply                    =' + QuotedStr( varsuApply) + #10#13 +
//                                               ' ,bo_dan                       =' + QuotedStr(varBodan) + #10#13 +
//                                               ' ,ja_dan                      =' + QuotedStr(varBodan) + #10#13 +
//                                               ' ,wo_dan                      =' + QuotedStr(varBodan) + #10#13 +
//                                               ' ,bo_day                       =' + QuotedStr( varBoday) + #10#13 +
//                                               ' ,ja_day                       =' + QuotedStr(varBoday) + #10#13 +
//                                               ' ,il_day                       =' + QuotedStr(varBoday) + #10#13 +
//                                               ' ,wo_day                      =' + QuotedStr(varBoday) + #10#13 +
////                                               ' ,su_gu1                      =' + QuotedStr(varsugu1) + #10#13 +
////                                               ' ,su_gu2                      =' + QuotedStr(varsugu2) + #10#13 +
////                                               ' ,su_gu3                      =' + QuotedStr(varsugu3) + #10#13 +
//                                               ' ,su_point                    =' + QuotedStr(varSupoint) + #10#13 +
//                                               '  where su_key  =' + QuotedStr( varSuKey);
//
//                                          execsql;
//                                           result:=true;
//                                     end;



                                     //아래코드는
                                     // 1. suga_history를 먼저 인서트시키고,
                                     // 2. sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                                     sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );
                           end;

                           except
                                on E: Exception do
                                begin
                                 ExceptLogging('suga Jeryo Update:'  +varSuKey +#10#13+  E.Message);

                     //            result:=false;

                                end;
                           end;

                     application.ProcessMessages;

                     i:= i+1;

                     j := rcCnt -i;
                    varProgress.Position := varProgress.Position + 1;

                    varlabel.Caption := inttostr(j);
                    next;  //While
                   end;
          end;
     end;

end;






function sugaTableUpdate_suga_Up_MDB(varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varSukey:string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply,   varBoDay, varJaDay, varIlday, varWoday:string;
     varsuApply2,   varBoDay2, varJaDay2, varIlday2, varWoday2:string;
          varContext2, varbodan2,  varsupoint2 :string;
     varSuDanwi:string;

     modi, ins : boolean;
     adoConn : string;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     adoConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
               extractfilepath(paramstr(0))+'upSuga\Database11.mdb'+';Persist Security Info=False';

                    try
                         if Dm_f.AdoConnection1.Connected = false then
                         begin
                              Dm_f.AdoConnection1.ConnectionString := adoConn;
                              Dm_f.AdoConnection1.Connected := true;
                             // result := true;
                         end
                         else
                         begin
                            //  result := true;
                         end;
                    except
                         on E: Exception do
                         begin
                              application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('알림'));

                              result := false;
                              Exit;
                         end;
                    end;


     result:=false;

     with dm_f.sqlMdbTemp do
     begin
          close;
          sql.Clear;
          sql.text:='select * from suga';
          open;
          first;
          varProgress.Max:=recordCount;
          varProgress.Position:=0;

          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


                      try

                            //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

                           varSuKey:= trim(Fields[0].AsString);


                           varsuApply:= trim(Fields[1].AsString);

                           varbodan:= delcomma(Fields[7].AsString);
                           varjadan:= delcomma(Fields[7].AsString);
                           varildan:= delcomma(Fields[7].AsString);
                           varwodan:= delcomma(Fields[7].AsString);

                           varBoday:= Fields[1].AsString ;
                           varJaday:= Fields[1].AsString ;
                           varIlday:= Fields[1].AsString ;
                           varWoday:= Fields[1].AsString ;

                           if checkInt(Fields[15].AsString)= true then
                           varSugu1:=   Fields[15].AsString   //2
                           else
                           varSugu1:=  '2';

                           if checkInt(Fields[16].AsString)= true then
                           varSugu2:=  Fields[16].AsString   //1
                           else
                           varSugu2:=  '1';


                         //  varSugu2:=  inttostr(varGrid.ints[17,i]) ; //1
                           if checkInt(Fields[17].AsString)= true then
                           varSugu3:=   Fields[17].AsString   //1
                           else
                           varSugu3:=  '23';
                         //  varSugu3:=  varGrid.Cells[18,i] ; //23
                           varContext:=  StringReplace(trim(Fields[3].AsString),'''','',[rfReplaceAll]);

                           if trim( Fields[13].AsString) <> '' then
                           varSuPoint:=  StringReplace(trim(Fields[13].AsString),',','',[rfReplaceAll])
                           else
                            varSuPoint:= '0';



                           varSuDanwi:=  '';//varGrid.Cells[15,i] ;

                           varinsert :=
                           'insert into suga ( su_key  '+#10+
                           ',su_apply '+#10+
                           ',bo_dan   '+#10+
                           ',ja_dan   '+#10+
                           ',il_dan   '+#10+
                           ',wo_dan   '+#10+
                           ',bo_day   '+#10+
                           ',ja_day   '+#10+
                           ',il_day   '+#10+
                           ',wo_day   '+#10+
                           ',su_gu1    '+#10+
                           ',su_gu2    '+#10+
                           ',su_gu3    '+#10+
                           ',su_kor_name'+#10+
                           ',su_point  '+#10+
                           ',su_danwi   ) values' +
                            '('+''''+ varSuKey+''''        //su_key
                            +',' + '''' +varsuApply+''''//su_apply
                            +',' + '''' + varBodan+''''//Bo_dan
                            +',' + '''' + varJadan +'''' //Ja_dan
                            +',' + '''' + varIldan +'''' //Il_dan
                            +',' + '''' + varWodan +'''' //Wo_dan
                            +',' + '''' + varBoday +'''' //Boday
                            +',' + '''' + varJaDay +'''' //JaDay
                            +',' + '''' + varIlDay +'''' //Ilday
                            +',' + '''' + varWoday +'''' //Woday
                            +',' + '''' + varSugu1 +'''' //sugu1
                            +',' + '''' + varSugu2 +'''' //sugu2
                            +',' + '''' + varSugu3 +'''' //sugu3
                            +',' + '''' + varContext  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varSupoint  +''''   // su_point
                            +',' + '''' + varSuDanwi  +''''  +')';  // su_Danwi


                           with dm_f.sqlTemp15 do
                           begin
                                close;
                                sql.clear;
                                sql.text := 'select *  from suga   ' + #10#13 +
                                        ' where su_key= '+''''+  varSukey +'''';
                                open;
                                if not isEmpty then
                                begin
                                     modi := true;
                                     ins:= false;


                                     varsuApply2:= trim(fieldByname('su_apply').asString);
                                     varbodan2:=  fieldByname('bo_dan').asString ;
                                     varContext2:=trim(fieldByname('su_kor_name').asString)    ;
                                     varSuPoint2:= fieldByname('su_point').asString;
                                end
                                else
                                begin
                                     modi := false;
                                     ins:= true;
                                end;

                           end;

                           if ins = true then
                           begin
                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := varinsert;
                                          execsql;
                                           result:=true;
                                     end;
                           end
                           else
                           if modi = true then
                           begin

                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := 'update  suga set   ' + #10#13 +
                                               '  su_apply                    =' + QuotedStr( varsuApply) + #10#13 +
                                               ' ,bo_dan                       =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,ja_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,il_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,wo_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,bo_day                       =' + QuotedStr( varBoday) + #10#13 +
                                               ' ,ja_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,il_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,wo_day                      =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,su_point                    =' + QuotedStr(varSupoint) + #10#13 +
                                               '  where su_key  =' + QuotedStr( varSuKey);

                                          execsql;
                                           result:=true;
                                     end;



                                     //아래코드는
                                     // 1. suga_history를 먼저 인서트시키고,
                                     // 2. sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                                     sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );
                           end;

                           except
                                on E: Exception do
                                begin
                                 ExceptLogging('suga Update:'  +varSuKey +#10#13+  E.Message);

                     //            result:=false;

                                end;
                           end;

                     application.ProcessMessages;
                     varProgress.Position := varProgress.Position + 1;
                    next;  //While
                   end;
          end;
     end;

end;




function sugaTableUpdate_usersuga_MDB(varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varSukey:string;
     varUserKey : string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply,   varBoDay, varJaDay, varIlday, varWoday:string;
     varsuApply2,   varBoDay2, varJaDay2, varIlday2, varWoday2:string;
          varContext2, varbodan2,  varsupoint2 :string;
     varSuDanwi:string;

     varEngName : string;
     modi, ins : boolean;
     adoConn : string;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     adoConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
               extractfilepath(paramstr(0))+'upSuga\Database11.mdb'+';Persist Security Info=False';

                    try
                         if Dm_f.AdoConnection1.Connected = false then
                         begin
                              Dm_f.AdoConnection1.ConnectionString := adoConn;
                              Dm_f.AdoConnection1.Connected := true;
                             // result := true;
                         end
                         else
                         begin
                            //  result := true;
                         end;
                    except
                         on E: Exception do
                         begin
                              application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('알림'));

                              result := false;
                              Exit;
                         end;
                    end;


     result:=false;

     with dm_f.sqlMdbTemp do
     begin
          close;
          sql.Clear;
          sql.text:='select * from usersuga';
          open;
          first;
          varProgress.Max:=recordCount;
          varProgress.Position:=0;

          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


                      try

                            //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

                           varSuKey:= trim(Fields[12].AsString);
                           varUserKey:= trim(Fields[1].AsString);

                           varEngName:= trim(Fields[5].AsString);
                           
                           varsuApply:= trim(Fields[2].AsString);
                           varbodan:= delcomma(Fields[8].AsString);
                           varjadan:= delcomma(Fields[9].AsString);
                           varildan:= delcomma(Fields[10].AsString);
                           varwodan:= delcomma(Fields[11].AsString);


                           if varbodan ='' then  varbodan :='0';
                           if varjadan ='' then  varjadan :='0';
                           if varildan ='' then  varildan :='0';
                           if varwodan ='' then  varwodan :='0';

                           varBoday:= Fields[2].AsString ;
                           varJaday:= Fields[2].AsString ;
                           varIlday:= Fields[2].AsString ;
                           varWoday:= Fields[2].AsString ;

                       //    if checkInt(Fields[15].AsString)= true then
                       //    varSugu1:=   Fields[15].AsString   //2
                       //    else
                           varSugu1:=  '2';

                       //    if checkInt(Fields[16].AsString)= true then
                       //    varSugu2:=  Fields[16].AsString   //1
                       //    else
                           varSugu2:=  '1';


                         //  varSugu2:=  inttostr(varGrid.ints[17,i]) ; //1
                       //    if checkInt(Fields[17].AsString)= true then
                       //    varSugu3:=   Fields[17].AsString   //1
                       //    else
                           varSugu3:=  '25';
                         //  varSugu3:=  varGrid.Cells[18,i] ; //23
                           varContext:=  StringReplace(trim(Fields[4].AsString),'''','',[rfReplaceAll]);

                       //    if trim( Fields[13].AsString) <> '' then
                       //    varSuPoint:=  StringReplace(trim(Fields[13].AsString),',','',[rfReplaceAll])
                       //    else
                            varSuPoint:= '0';



                           varSuDanwi:=  '';//varGrid.Cells[15,i] ;

                           varinsert :=
                           'insert into suga ( su_key  '+#10+
                           ',su_apply '+#10+
                           ',bo_dan   '+#10+
                           ',ja_dan   '+#10+
                           ',il_dan   '+#10+
                           ',wo_dan   '+#10+
                           ',bo_day   '+#10+
                           ',ja_day   '+#10+
                           ',il_day   '+#10+
                           ',wo_day   '+#10+
                           ',su_gu1    '+#10+
                           ',su_gu2    '+#10+
                           ',su_gu3    '+#10+
                           ',su_kor_name'+#10+
                           ',su_eng_name'+#10+
                           ',su_point  '+#10+
                           ',user_key  '+#10+
                           ',su_danwi   ) values' +
                            '('+''''+ varSuKey+''''        //su_key
                            +',' + '''' +varsuApply+''''//su_apply
                            +',' + '''' + varBodan+''''//Bo_dan
                            +',' + '''' + varJadan +'''' //Ja_dan
                            +',' + '''' + varIldan +'''' //Il_dan
                            +',' + '''' + varWodan +'''' //Wo_dan
                            +',' + '''' + varBoday +'''' //Boday
                            +',' + '''' + varJaDay +'''' //JaDay
                            +',' + '''' + varIlDay +'''' //Ilday
                            +',' + '''' + varWoday +'''' //Woday
                            +',' + '''' + varSugu1 +'''' //sugu1
                            +',' + '''' + varSugu2 +'''' //sugu2
                            +',' + '''' + varSugu3 +'''' //sugu3
                            +',' + '''' + varContext  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varEngname  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varSupoint  +''''   // su_point
                            +',' + '''' + varUserKey  +''''   // Use_rKey
                            +',' + '''' + varSuDanwi  +''''  +')';  // su_Danwi


                           with dm_f.sqlTemp15 do
                           begin
                                close;
                                sql.clear;
                                sql.text := 'select *  from suga   ' + #10#13 +
                                        ' where su_key= '+''''+  varSukey +'''';
                                open;
                                if not isEmpty then
                                begin
                                     modi := true;
                                     ins:= false;


                                     varsuApply2:= trim(fieldByname('su_apply').asString);
                                     varbodan2:=  fieldByname('bo_dan').asString ;
                                     varContext2:=trim(fieldByname('su_kor_name').asString)    ;
                                     varSuPoint2:= fieldByname('su_point').asString;
                                end
                                else
                                begin
                                     modi := false;
                                     ins:= true;
                                end;

                           end;

                           if ins = true then
                           begin
                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := varinsert;
                                          execsql;
                                           result:=true;
                                     end;
                           end
                           else
                           if modi = true then
                           begin

                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := 'update  suga set   ' + #10#13 +
                                               '  su_apply                    =' + QuotedStr( varsuApply) + #10#13 +
                                               ' ,bo_dan                       =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,ja_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,il_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,wo_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,bo_day                       =' + QuotedStr( varBoday) + #10#13 +
                                               ' ,ja_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,il_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,wo_day                      =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,su_point                    =' + QuotedStr(varSupoint) + #10#13 +
                                               '  where su_key  =' + QuotedStr( varSuKey);

                                          execsql;
                                           result:=true;
                                     end;



                                     //아래코드는
                                     // 1. suga_history를 먼저 인서트시키고,
                                     // 2. sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                                     sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );
                           end;

                           except
                                on E: Exception do
                                begin
                                 ExceptLogging('suga Update:'  +varSuKey +#10#13+  E.Message);

                     //            result:=false;

                                end;
                           end;

                     application.ProcessMessages;
                     varProgress.Position := varProgress.Position + 1;
                    next;  //While
                   end;
          end;
     end;

end;

function sugaTableUpdate_usersuga2_MDB(varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varSukey:string;
     varUserKey : string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply,   varBoDay, varJaDay, varIlday, varWoday:string;
     varsuApply2,   varBoDay2, varJaDay2, varIlday2, varWoday2:string;
          varContext2, varbodan2,  varsupoint2 :string;
     varSuDanwi:string;

     varEngName : string;
     modi, ins : boolean;
     adoConn : string;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     adoConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
               extractfilepath(paramstr(0))+'upSuga\Database11.mdb'+';Persist Security Info=False';

                    try
                         if Dm_f.AdoConnection1.Connected = false then
                         begin
                              Dm_f.AdoConnection1.ConnectionString := adoConn;
                              Dm_f.AdoConnection1.Connected := true;
                             // result := true;
                         end
                         else
                         begin
                            //  result := true;
                         end;
                    except
                         on E: Exception do
                         begin
                              application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('알림'));

                              result := false;
                              Exit;
                         end;
                    end;


     result:=false;

     with dm_f.sqlMdbTemp do
     begin
          close;
          sql.Clear;
          sql.text:='select * from usersuga2';
          open;
          first;
          varProgress.Max:=recordCount;
          varProgress.Position:=0;

          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


                      try

                            //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

                           varSuKey:= trim(Fields[12].AsString);
                           varUserKey:= trim(Fields[1].AsString);

                           varEngName:= trim(Fields[5].AsString);

                           varsuApply:= trim(Fields[2].AsString);
                           varbodan:= delcomma(Fields[8].AsString);
                           varjadan:= delcomma(Fields[9].AsString);
                           varildan:= delcomma(Fields[10].AsString);
                           varwodan:= delcomma(Fields[11].AsString);


                           if varbodan ='' then  varbodan :='0';
                           if varjadan ='' then  varjadan :='0';
                           if varildan ='' then  varildan :='0';
                           if varwodan ='' then  varwodan :='0';

                           varBoday:= Fields[2].AsString ;
                           varJaday:= Fields[2].AsString ;
                           varIlday:= Fields[2].AsString ;
                           varWoday:= Fields[2].AsString ;

                       //    if checkInt(Fields[15].AsString)= true then
                       //    varSugu1:=   Fields[15].AsString   //2
                       //    else
                           varSugu1:=  '2';

                       //    if checkInt(Fields[16].AsString)= true then
                       //    varSugu2:=  Fields[16].AsString   //1
                       //    else
                           varSugu2:=  '1';


                         //  varSugu2:=  inttostr(varGrid.ints[17,i]) ; //1
                       //    if checkInt(Fields[17].AsString)= true then
                       //    varSugu3:=   Fields[17].AsString   //1
                       //    else
                           varSugu3:=  '25';
                         //  varSugu3:=  varGrid.Cells[18,i] ; //23
                           varContext:=  StringReplace(trim(Fields[4].AsString),'''','',[rfReplaceAll]);

                       //    if trim( Fields[13].AsString) <> '' then
                       //    varSuPoint:=  StringReplace(trim(Fields[13].AsString),',','',[rfReplaceAll])
                       //    else
                            varSuPoint:= '0';



                           varSuDanwi:=  '';//varGrid.Cells[15,i] ;

                           varinsert :=
                           'insert into suga ( su_key  '+#10+
                           ',su_apply '+#10+
                           ',bo_dan   '+#10+
                           ',ja_dan   '+#10+
                           ',il_dan   '+#10+
                           ',wo_dan   '+#10+
                           ',bo_day   '+#10+
                           ',ja_day   '+#10+
                           ',il_day   '+#10+
                           ',wo_day   '+#10+
                           ',su_gu1    '+#10+
                           ',su_gu2    '+#10+
                           ',su_gu3    '+#10+
                           ',su_kor_name'+#10+
                           ',su_eng_name'+#10+
                           ',su_point  '+#10+
                           ',user_key  '+#10+
                           ',su_danwi   ) values' +
                            '('+''''+ varSuKey+''''        //su_key
                            +',' + '''' +varsuApply+''''//su_apply
                            +',' + '''' + varBodan+''''//Bo_dan
                            +',' + '''' + varJadan +'''' //Ja_dan
                            +',' + '''' + varIldan +'''' //Il_dan
                            +',' + '''' + '88' +'''' //Wo_dan
                            +',' + '''' + varBoday +'''' //Boday
                            +',' + '''' + varJaDay +'''' //JaDay
                            +',' + '''' + varIlDay +'''' //Ilday
                            +',' + '''' + varWoday +'''' //Woday
                            +',' + '''' + varSugu1 +'''' //sugu1
                            +',' + '''' + varSugu2 +'''' //sugu2
                            +',' + '''' + varSugu3 +'''' //sugu3
                            +',' + '''' + varContext  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varEngname  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varSupoint  +''''   // su_point
                            +',' + '''' + varUserKey  +''''   // Use_rKey
                            +',' + '''' + varSuDanwi  +''''  +')';  // su_Danwi


                           with dm_f.sqlTemp15 do
                           begin
                                close;
                                sql.clear;
                                sql.text := 'select *  from suga   ' + #10#13 +
                                        ' where su_key= '+''''+  varSukey +'''';
                                open;
                                if not isEmpty then
                                begin
                                     modi := true;
                                     ins:= false;


                                     varsuApply2:= trim(fieldByname('su_apply').asString);
                                     varbodan2:=  fieldByname('bo_dan').asString ;
                                     varContext2:=trim(fieldByname('su_kor_name').asString)    ;
                                     varSuPoint2:= fieldByname('su_point').asString;
                                end
                                else
                                begin
                                     modi := false;
                                     ins:= true;
                                end;

                           end;

                           if ins = true then
                           begin
                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := varinsert;
                                          execsql;
                                           result:=true;
                                     end;
                           end
                           else
                           if modi = true then
                           begin

                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := 'update  suga set   ' + #10#13 +
                                               '  su_apply                    =' + QuotedStr( varsuApply) + #10#13 +
                                               ' ,bo_dan                       =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,ja_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,il_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,wo_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,bo_day                       =' + QuotedStr( varBoday) + #10#13 +
                                               ' ,ja_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,il_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,wo_day                      =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,su_point                    =' + QuotedStr(varSupoint) + #10#13 +
                                               '  where su_key  =' + QuotedStr( varSuKey);

                                          execsql;
                                           result:=true;
                                     end;



                                     //아래코드는
                                     // 1. suga_history를 먼저 인서트시키고,
                                     // 2. sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                                     sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );
                           end;

                           except
                                on E: Exception do
                                begin
                                 ExceptLogging('suga Update:'  +varSuKey +#10#13+  E.Message);

                     //            result:=false;

                                end;
                           end;

                     application.ProcessMessages;
                     varProgress.Position := varProgress.Position + 1;
                    next;  //While
                   end;
          end;
     end;

end;


function sugaTableUpdate_usersuga3_MDB(varProgress:TadvProgressBar):boolean;
var
     varinsert: string;
     F: Textfile;
     s: string;
   //  sList: TStringList;
     i: integer;
     varSukey:string;
     varUserKey : string;
     varContext, varbodan:string;
     varsupoint , varjadan, varildan, varwodan:string;
     varsugu1, varsugu2, varsugu3:string;
     varsuApply,   varBoDay, varJaDay, varIlday, varWoday:string;
     varsuApply2,   varBoDay2, varJaDay2, varIlday2, varWoday2:string;
          varContext2, varbodan2,  varsupoint2 :string;
     varSuDanwi:string;

     varEngName : string;
     modi, ins : boolean;
     adoConn : string;
begin

   //  sList := TStringList.Create;
   //  sList.LoadFromFile(extractFilePath(paramStr(0)) + 'upSuga\' + filename);

     adoConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
               extractfilepath(paramstr(0))+'upSuga\Database11.mdb'+';Persist Security Info=False';

                    try
                         if Dm_f.AdoConnection1.Connected = false then
                         begin
                              Dm_f.AdoConnection1.ConnectionString := adoConn;
                              Dm_f.AdoConnection1.Connected := true;
                             // result := true;
                         end
                         else
                         begin
                            //  result := true;
                         end;
                    except
                         on E: Exception do
                         begin
                              application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('알림'));

                              result := false;
                              Exit;
                         end;
                    end;


     result:=false;

     with dm_f.sqlMdbTemp do
     begin
          close;
          sql.Clear;
          sql.text:='select * from usersuga3';
          open;
          first;
          varProgress.Max:=recordCount;
          varProgress.Position:=0;

          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                    //SuGa를 업데이트 하기전에 같은 su_key를 찾아서
                    //suga_hoistory에 저장한다


                      try

                            //1. suga에서 코드를 조회하여 값들을 가지고 있다가...

                           varSuKey:= trim(Fields[12].AsString);
                           varUserKey:= trim(Fields[1].AsString);

                           varEngName:= trim(Fields[5].AsString);

                           varsuApply:= trim(Fields[2].AsString);
                           varbodan:= delcomma(Fields[8].AsString);
                           varjadan:= delcomma(Fields[9].AsString);
                           varildan:= delcomma(Fields[10].AsString);
                           varwodan:= delcomma(Fields[11].AsString);


                           if varbodan ='' then  varbodan :='0';
                           if varjadan ='' then  varjadan :='0';
                           if varildan ='' then  varildan :='0';
                           if varwodan ='' then  varwodan :='0';

                           varBoday:= Fields[2].AsString ;
                           varJaday:= Fields[2].AsString ;
                           varIlday:= Fields[2].AsString ;
                           varWoday:= Fields[2].AsString ;

                       //    if checkInt(Fields[15].AsString)= true then
                       //    varSugu1:=   Fields[15].AsString   //2
                       //    else
                           varSugu1:=  '2';

                       //    if checkInt(Fields[16].AsString)= true then
                       //    varSugu2:=  Fields[16].AsString   //1
                       //    else
                           varSugu2:=  '1';


                         //  varSugu2:=  inttostr(varGrid.ints[17,i]) ; //1
                       //    if checkInt(Fields[17].AsString)= true then
                       //    varSugu3:=   Fields[17].AsString   //1
                       //    else
                           varSugu3:=  '25';
                         //  varSugu3:=  varGrid.Cells[18,i] ; //23
                           varContext:=  StringReplace(trim(Fields[4].AsString),'''','',[rfReplaceAll]);

                       //    if trim( Fields[13].AsString) <> '' then
                       //    varSuPoint:=  StringReplace(trim(Fields[13].AsString),',','',[rfReplaceAll])
                       //    else
                            varSuPoint:= '0';



                           varSuDanwi:=  '';//varGrid.Cells[15,i] ;

                           varinsert :=
                           'insert into suga ( su_key  '+#10+
                           ',su_apply '+#10+
                           ',bo_dan   '+#10+
                           ',ja_dan   '+#10+
                           ',il_dan   '+#10+
                           ',wo_dan   '+#10+
                           ',bo_day   '+#10+
                           ',ja_day   '+#10+
                           ',il_day   '+#10+
                           ',wo_day   '+#10+
                           ',su_gu1    '+#10+
                           ',su_gu2    '+#10+
                           ',su_gu3    '+#10+
                           ',su_kor_name'+#10+
                           ',su_eng_name'+#10+
                           ',su_point  '+#10+
                           ',user_key  '+#10+
                           ',su_danwi   ) values' +
                            '('+''''+ varSuKey+''''        //su_key
                            +',' + '''' +varsuApply+''''//su_apply
                            +',' + '''' + varBodan+''''//Bo_dan
                            +',' + '''' + varJadan +'''' //Ja_dan
                            +',' + '''' + varIldan +'''' //Il_dan
                            +',' + '''' + '88' +'''' //Wo_dan
                            +',' + '''' + varBoday +'''' //Boday
                            +',' + '''' + varJaDay +'''' //JaDay
                            +',' + '''' + varIlDay +'''' //Ilday
                            +',' + '''' + varWoday +'''' //Woday
                            +',' + '''' + varSugu1 +'''' //sugu1
                            +',' + '''' + varSugu2 +'''' //sugu2
                            +',' + '''' + varSugu3 +'''' //sugu3
                            +',' + '''' + varContext  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varEngname  +''''   //copy(varContext,1,50)   +''''  //su_kor_name
                            +',' + '''' + varSupoint  +''''   // su_point
                            +',' + '''' + varUserKey  +''''   // Use_rKey
                            +',' + '''' + varSuDanwi  +''''  +')';  // su_Danwi


                           with dm_f.sqlTemp15 do
                           begin
                                close;
                                sql.clear;
                                sql.text := 'select *  from suga   ' + #10#13 +
                                        ' where su_key= '+''''+  varSukey +'''';
                                open;
                                if not isEmpty then
                                begin
                                     modi := true;
                                     ins:= false;


                                     varsuApply2:= trim(fieldByname('su_apply').asString);
                                     varbodan2:=  fieldByname('bo_dan').asString ;
                                     varContext2:=trim(fieldByname('su_kor_name').asString)    ;
                                     varSuPoint2:= fieldByname('su_point').asString;
                                end
                                else
                                begin
                                     modi := false;
                                     ins:= true;
                                end;

                           end;

                           if ins = true then
                           begin
                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := varinsert;
                                          execsql;
                                           result:=true;
                                     end;
                           end
                           else
                           if modi = true then
                           begin

                                     with dm_f.sqlTemp do
                                     begin

                                          close;
                                          sql.clear;
                                          sql.text := 'update  suga set   ' + #10#13 +
                                               '  su_apply                    =' + QuotedStr( varsuApply) + #10#13 +
                                               ' ,bo_dan                       =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,ja_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,il_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,wo_dan                      =' + QuotedStr(varBodan) + #10#13 +
                                               ' ,bo_day                       =' + QuotedStr( varBoday) + #10#13 +
                                               ' ,ja_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,il_day                       =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,wo_day                      =' + QuotedStr(varBoday) + #10#13 +
                                               ' ,su_point                    =' + QuotedStr(varSupoint) + #10#13 +
                                               '  where su_key  =' + QuotedStr( varSuKey);

                                          execsql;
                                           result:=true;
                                     end;



                                     //아래코드는
                                     // 1. suga_history를 먼저 인서트시키고,
                                     // 2. sugabasic에서 같은 코드를 찾아 지우고 다시 인서트시킨다.
                                     sugaTableUpdate_sugaHistory_2(varSukey,varSuApply2, varContext2, varbodan2,'1.0', varSuPoint2 );
                           end;

                           except
                                on E: Exception do
                                begin
                                 ExceptLogging('suga Update:'  +varSuKey +#10#13+  E.Message);

                     //            result:=false;

                                end;
                           end;

                     application.ProcessMessages;
                     varProgress.Position := varProgress.Position + 1;
                    next;  //While
                   end;
          end;
     end;

end;





end.


'U1010',    	'2013-07-01 00:00:00',	14950.00	,14950.00	  ,14950.00	  ,14950.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'25'	,NULL,	  '치주소파술(1/3악당)	         '	, NULL,'', 	 	NULL, 	'U1010' ,    	'C3',       	1.000, 	NULL, 	NULL, 	NULL, 	NULL, 	202.63 , 	 	NULL,   NULL

'UH233',    	'2013-07-01 00:00:00',	28010.00	,28010.00	  ,28010.00	  ,28010.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'23' ,NULL,	  '치석제거[전악]-장애인가산	   '	, NULL,'', 	  NULL, 	'UH233' ,    	'M' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	379.49 , 		NULL, 	NULL
'UA411',    	'2013-07-01 00:00:00',	5750.00	  ,5750.00	  ,5750.00	  ,5750.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'임시부분틀니[추가1치당]	   	 '	, NULL,'', 	  NULL,   'UA411' ,    	'T' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	77.91	 ,  	NULL, 	NULL
'UA331',    	'2013-07-01 00:00:00',	103650.00	,103650.00	,103650.00	,103650.00	,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'부분틀니-악간관계채득(4단계)	 '	, NULL,'',   	NULL, 	'UA331' ,    	'C' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	1404.48, 		NULL, 	NULL
'UA341',    	'2013-07-01 00:00:00',	102550.00	,102550.00	,102550.00	,102550.00	,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'부분틀니-납의치시적(5단계)	   '	, NULL,'', 	 	NULL, 	'UA341' ,    	'C' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	1389.63, 		NULL, 	NULL
'UA351',    	'2013-07-01 00:00:00',	334090.00	,334090.00	,334090.00	,334090.00	,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'부분틀니-의치장착및조정(6단계)'	, NULL,'', 	  NULL, 	'UA351' ,    	'C' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	4527.03, 		NULL, 	NULL
'UA401',    	'2013-07-01 00:00:00',	59800.00	,59800.00	  ,59800.00	  ,59800.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'임시부분틀니[3치기준]	   	 	 '	, NULL,'', 	  NULL,   'UA401' ,    	'T' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	810.30 , 		NULL, 	NULL
'UA301',    	'2013-07-01 00:00:00',	149570.00	,149570.00	,149570.00	,149570.00	,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'부분틀니-진단및치료계획(1단계)'	, NULL,'', 	  NULL, 	'UA301' ,    	'C' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	2026.68, 		NULL, 	NULL
'UA311',    	'2013-07-01 00:00:00',	168810.00	,168810.00	,168810.00	,168810.00	,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'부분틀니-인상채득(2단계)	   	 '	, NULL,'', 	 	NULL,   'UA311' ,    	'C' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	2287.44, 		NULL, 	NULL
'UA321',    	'2013-07-01 00:00:00',	359310.00	,359310.00	,359310.00	,359310.00	,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'부분틀니-금속구조물시적(3단계)'	, NULL,'', 	  NULL, 	'UA321' ,    	'C' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	4868.66, 		NULL, 	NULL
'U4416',    	'2013-07-01 00:00:00',	40390.00	,40390.00	  ,40390.00	  ,40390.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'25'	,NULL,	  '매복치발치(치아분리술)	       '	, NULL,'', 	 	NULL, 	'U4416' ,    	'T' ,       	1.000, 	NULL, 	NULL, 	NULL, 	NULL, 	547.30 , 	 	NULL,   NULL
'U4417',    	'2013-07-01 00:00:00',	55820.00	,55820.00	  ,55820.00	  ,55820.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'25'	,NULL,	  '매복치발치(골삭제, 분리)	     '	, NULL,'', 	 	NULL, 	'U4417' ,    	'T' ,       	1.000, 	NULL, 	NULL, 	NULL, 	NULL, 	756.34 , 	 	NULL,   NULL
'U4415',    	'2013-07-01 00:00:00',	23300.00	,23300.00	  ,23300.00	  ,23300.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'25'	,NULL,	  '매복치발치	                   '	, NULL,'', 	 	NULL, 	'U4415' ,    	'T' ,       	1.000, 	NULL, 	NULL, 	NULL, 	NULL, 	315.70 , 	 	NULL,   NULL
'U2240',    	'2013-07-01 00:00:00',	11030.00	,11030.00	  ,11030.00	  ,11030.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'23'	,NULL,	  '치근활택술(1/3악당)	         '	, NULL,'', 	 	NULL, 	'U2240' ,    	'C3',       	1.000, 	NULL, 	NULL, 	NULL, 	NULL, 	149.42 , 	 	NULL,   NULL
'U2233',    	'2013-07-01 00:00:00',	28010.00	,28010.00	  ,28010.00	  ,28010.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'23'	,NULL,  	'치석제거[전악]	   	 	 	       '	, NULL,'',     NULL,   'U2233' ,    	'M' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	379.49 , 		NULL, 	NULL
'U1542',    	'2013-07-01 00:00:00',	100000.00	,100000.00	,100000.00	,100000.00	,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'클라스프수리-복잡	   	 	 	   '	, NULL,'',     NULL,   'U1542' ,    	'C' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	1355.02, 		NULL, 	NULL
'U1541',    	'2013-07-01 00:00:00',	49090.00	,49090.00	  ,49090.00	  ,49090.00	  ,'2013-07-01 00:00:00',	'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2013-07-01 00:00:00'	,'2'	,'1'	,'24'	,NULL,  	'클라스프수리-단순	   	 	 	   '	, NULL,'',     NULL,   'U1541' ,    	'C' ,       	1.000, 	NULL,  	NULL, 	NULL, 	NULL,  	665.22 , 		NULL, 	NULL

