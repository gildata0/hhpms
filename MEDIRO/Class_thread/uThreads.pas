unit uThreads;

interface

uses Classes, uni, uConfig, SQLServerUniProvider, Activex;

const
  // Sleep period between queries
  THREAD_SLEEP = 2000;

type

  // Thread class for running and timing queries
  TQueryThread = class(TThread)
  private
    // internal number for indentifying thread
    fId: integer;
    // Database connection string
    fDBConn: string;
    // Query text
    fQueryText: string;

    // Connection object to the database
    fConnection: TuniConnection;// TOraSession;
    fSQLServerUniProvider : TSQLServerUniProvider ;

    // Query object to the database
    fQuery: TuniQuery;// TOraQuery;

    fJinDay : string;


    // Time run by query
    fExecutionTime: TDateTime;

    // Message to report
    fMsg: string;
    //  fMsg: array[0..6] of string;


    nJubsuCnt        : integer;
    nInPatCnt        : integer;
    nSunapTotalCnt   : integer;
    nSunapWaitCnt    : integer;
    nSunapCnt        : integer;
    nPromiseCnt      : integer;
    nWaitCnt         : integer;


    // Ensure we have a session
    function CheckSession: boolean;
    // Ensure we have a query
    function CheckQuery(jin_day: string): boolean;
    // Run and time the query
    procedure RunQuery(jin_day:string);
    // Report timing info
    procedure Report;
  protected
    // Run the thread
    procedure Execute; override;
  public
    // initialize the thread
    constructor Create(aId: integer; aDBConn, aQueryText, aJinDay: string); virtual;
    // finish the thread
    destructor Destroy; override;
  end;

var
  // var for last thread id, incremented per thread added
  nThreads: Integer;

// Add a new thread with query and connection
procedure AddThread(aDBConn, aQueryText, aJinDay: string);

// Remove all threads
procedure KillThreads;

implementation

uses SysUtils, Windows, uResources;

var
  // List for running threads
  QueryList: TThreadList;
  // Number of processors
  NumCPUCores: Integer;

// Add a new thread with query and connection
procedure AddThread(aDBConn, aQueryText, aJinday: string);
var
  L: TList;
  Q: TQueryThread;
begin
  // Increment last thread id
  Inc(nThreads);
  // Lock the thread list
  L := QueryList.LockList;
  try
    // Create new thread
    Q := TQueryThread.Create(nThreads, aDBConn, aQueryText, aJinDay);
    // Add it to thread list
    L.Add(Q);

  finally
    // Release thread list
    QueryList.UnlockList;
  end;
end;

// Remove all threads
procedure KillThreads;
var
  L: TList;
  I: Integer;
  T: TQueryThread;
begin
  // Lock the thread list
  L := QueryList.LockList;
  try
    // Find all items and terminate each item
    for I := L.Count - 1 downto 0 do
    begin
      T := TQueryThread(L.Items[I]);
      T.Terminate;
      // Remove from thread list
      L.Delete(I);
    end;
  finally
    // Release thread list
    QueryList.UnlockList;
  end;
end;

{ TQueryThread }

// Ensure we have a query
function TQueryThread.CheckQuery(jin_day: string): boolean;
var

    i: integer;

begin
  // reset the message
  //for i  := 0 to 6 do
  //  fMsg[i] := '';
    fMsg := '';
  // default ok, false when exception
  Result := True;
  try
    // Initialize the query
    if not Assigned(fQuery) then
    begin
      // create object
      fQuery := TuniQuery.Create(nil);
      // attach to session
//      fQuery.Session := fConnection;
      fQuery.Connection := fConnection;
      // fetch all record by default
//      fQuery.FetchAll := True;
      // set the query text
      fQuery.SQL.Text := //fQueryText;
          ' SELECT a.nCount as nSunapWaitCnt, b.nCount as nSunapCnt, c.nCount as nInPatCnt,    ' + #10 +
          '   d.nCount as nJubsuCnt, e.nCount as nWaitCnt, f.nCount  as  nPromiseCnt           ' + #10 +
          '     FROM                                                                           ' + #10 +
          ' (select count(jin_day) as nCount from jinryo_p  where  sunap = ''0''  and          ' + #10 +
          ' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)      ' + #10 +
          '              when ( isOutpat is null)  then jin_day else jin_day end)              ' + #10 +
          ' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day    ) a                    ' + #10 +
          '                                                                                    ' + #10 +
          ' , ( select count(jin_day) as nCount from jinryo_p  where  sunap = ''1''  and       ' + #10 +
          ' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)      ' + #10 +
          '              when ( isOutpat is null)  then jin_day else jin_day end)              ' + #10 +
          ' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day    ) b                    ' + #10 +
          ' ,( select  count(jin_day) as nCount  from ma_jubsu                                 ' + #10 +
          ' where (isInpat=''1'' or isInpat=''2'') and isOutPat=''0''                          ' + #10 +
          ' and gubun=''6''                                                         ) c        ' + #10 +
          ' ,(select  count(jin_day) as nCount from ma_jubsu                                   ' + #10 +
          ' where  jin_day =:jin_day  and  gubun=''0'' ) d                                     ' + #10 +
          ' ,(select  count(jin_day) as nCount from ma_jubsu                                   ' + #10 +
          ' where  jin_day =:jin_day   and  gubun=''4'' ) e                                    ' + #10 +
          ' ,( select  count(pday) as nCount from ma_promise                                   ' + #10 +
          ' WHERE   (pday = :jin_day ) and (cancel <> ''Y'')                                   ' + #10 +
          ' and (cancel <> ''C'') and ( cancel <> ''R'' )                                      ' + #10 +
          '           and name <> ''''                                                         ' + #10 +
          ' and pos <> ''8''     and Pos = ''''           ) f                                  ';
         fQuery.paramByName('jin_day').AsString :=   jin_day;

{      with  fQuery do
      begin
         //수납대기
        close;
        sql.clear;
        sql.add(' select count(jin_day) as nCount from jinryo_p  where  sunap = ''0''  and       ');
        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
        paramByName('jin_day').AsString :=   jin_day;
        open;
        nSunapWaitCnt := fieldByName('nCount').asInteger;


        //수납완료
        close;
        sql.clear;
        sql.add(' select count(jin_day) as nCount from jinryo_p  where  sunap = ''1''  and                        ');
        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
        paramByName('jin_day').AsString :=     jin_day;
        open;
        nSunapCnt     := fieldByName('nCount').asInteger;


//        close;
//        sql.clear;
//        sql.add(' select  count(jin_day) as nCount from jinryo_p    where                        ');
//        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
//        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
//        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
//        paramByName('jin_day').AsString :=   jin_day;
//        open;
        nSunapTotalCnt := nSunapWaitCnt + nSunapCnt;// fieldByName('nCount').asInteger;


      //입원환자
        close;
        sql.clear;
        sql.add(' select  count(jin_day) as nCount  from ma_jubsu                            ');
        sql.add(' where (isInpat=''1'' or isInpat=''2'') and isOutPat=''0''                  ');
        sql.add(' and gubun=''6''                                                            ');
//        sql.add(' and (case when ( isOutpat =''0'')  then convert(varchar, outPat_time, 23)  ');
//        sql.add('          when ( isOutpat is null)  then jin_day else jin_day end)          ');
//        sql.add('      =:jin_day                                                             ');


     //   paramByName('jin_day').AsString :=   jin_day;
        open;
        nInPatCnt := fieldByName('nCount').asInteger;

       //접수완료
        close;
        sql.clear;
        sql.add(' select  count(jin_day) as nCount from ma_jubsu   ');
        sql.add(' where  jin_day =:jin_day   and  gubun=''0''      ');
        paramByName('jin_day').AsString :=     jin_day;
        open;
        nJubsuCnt := fieldByName('nCount').asInteger;

        //보류
        close;
        sql.clear;
        sql.add(' select  count(jin_day) as nCount from ma_jubsu   ');
        sql.add(' where  jin_day =:jin_day   and  gubun=''4''      ');
        paramByName('jin_day').AsString :=      jin_day;
        open;
        nWaitCnt := fieldByName('nCount').asInteger;

         //예약
        close;
        sql.clear;
        sql.add(' select  count(pday) as nCount from ma_promise   ');
        Sql.Add(' WHERE   (pday = :jin_day) and (cancel <> ''Y'') ');
        Sql.Add(' and (cancel <> ''C'') and ( cancel <> ''R'' )   ');
        Sql.Add('           and name <> ''''                      ');
        Sql.Add(' and pos <> ''8''     and Pos = ''''             ');
        paramByName('jin_day').AsString :=     jin_day;
        open;
        nPromiseCnt := fieldByName('nCount').asInteger;

       end;
      }


    end;
  except
    // catch exception and save message
    on E: Exception do
    begin
      fMsg := E.Message;
      Result := False;
    end;
  end;
end;

// Ensure we have a connection
function TQueryThread.CheckSession: boolean;
var n, m, i: Integer;
begin
  // reset message
  fMsg := '';
//  for i  := 0 to 6 do
//     fMsg[i] := '';

  // default no connection
  Result := False;
  try
    // initialize connection
    if not Assigned(fConnection) then
    begin
      // create session
      fSQLServerUniProvider := TSQLServerUniProvider.Create(nil);
      fConnection := TuniConnection.Create(nil);
      // no login prompty
//      fConnection.ConnectPrompt := False;
      fConnection.LoginPrompt := False;

      // extract user password and alias
//      n := Pos('/', fDBConn);
//      m := Pos('@', fDBConn);
//
//      if (n <= 0) or (m <= 0) then
//        raise Exception.Create('Connection string format: user/pass@database');

{configvalue.varDbip,
          configvalue.varDbname,
          configvalue.varDbuser,
          configvalue.varDbpass,
          configvalue.varDbProtocol,
          configvalue.varDbPort}

      fConnection.ProviderName := 'SQL Server';  //configvalue.varDbProtocol
      fConnection.Database     := configvalue.varDbname;//'mediro';
      fConnection.Username     := configvalue.varDbuser;//Copy(fDBConn, 1, n-1);
      fConnection.Password     := configvalue.varDbpass;//Copy(fDBConn, n+1, m-n-1);
      fConnection.Server       := configvalue.varDbip;//Copy(fDBConn, m+1, 100);
    end;
    // Connect to the database
    if not fConnection.Connected then
    begin
      Coinitialize(nil)  ;
      fConnection.open;//Connect;
      CoUninitialize;
    end;
    // check if connect ok
    if fConnection.Connected then
      Result := True;
  except
    // catch any error and save it in the fMsg
    on E: Exception do
    begin
      fMsg := E.Message;
      Result := False;
    end;
  end;
end;

// create thread
constructor TQueryThread.Create(aId: integer; aDBConn, aQueryText, aJinDay: string);
var aCore, i: Integer;
begin
  inherited Create(False);
  // free the object when finished
  FreeOnTerminate := True;
  // init
  fId := aId;

  fQuery := nil;
  fConnection := nil;
  fMsg := '';
//  for i  := 0 to 6 do
//     fMsg[i] := '';


  // connection string
  fDBConn := aDBConn;
  // query test
  fQueryText := aQueryText;
  // assign the thread to next processor (based on aId)

  fJinDay := aJinDay;

  if NumCPUCores > 1 then
  begin
    aCore := aId+1;
    while (aCore > NumCPUCores) do aCore := aCore - NumCPUCores;
    if aCore < 1 then aCore := 1;
    SetThreadIdealProcessor(Handle, aCore-1);
  end;


end;

// destroy thread
destructor TQueryThread.Destroy;
begin
  // free the query
  FreeAndNil(fQuery);
  // free the database connection
  FreeAndNil(fConnection);
  inherited Destroy;
end;

// Run the thread
procedure TQueryThread.Execute;
begin
  while not Terminated do
  begin
    // Create a session and query
    if CheckSession and CheckQuery(fJinDay) then //CheckQuery('2019-10-23') then
      // Run and time the query
      RunQuery(fJinDay);//RunQuery('2019-10-23');
    // Report captured info
    Report;
    // Wait a while
  //  Sleep(THREAD_SLEEP);
     suspend;
  end;
end;

// Report timing info
procedure TQueryThread.Report;
var QT: TQueryTimes;
begin
  // Check if still running
  if not Terminated then
  begin
    // Lock the resource
    QT := LockQueryTimes;
    try
      // Save the timing info
      QT.ReportQueryTime(fId, fExecutionTime, fMsg, fDBConn);
    finally
      // Release the resource
      UnlockQueryTimes;
    end;
  end;
end;

// Run and time the query
procedure TQueryThread.RunQuery(jin_day:string);
var StartTime: TDateTime;
begin
  try
    // reset the message
    fMsg := '';
    // close the query
    fQuery.Close;
    // init timer
    startTime := now;
    // open the query

//      with  fQuery do
//      begin
//
//        close;
//        sql.clear;
//        sql.add(' select count(jin_day) as nCount from jinryo_p  where  sunap = ''0''  and       ');
//        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
//        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
//        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
//        paramByName('jin_day').AsString :=   jin_day;
//        open;
//        nSunapWaitCnt := fieldByName('nCount').asInteger;
//
//        close;
//        sql.clear;
//        sql.add(' select count(jin_day) as nCount from jinryo_p  where  sunap = ''1''  and                        ');
//        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
//        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
//        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
//        paramByName('jin_day').AsString :=     jin_day;
//        open;
//        nSunapCnt     := fieldByName('nCount').asInteger;
//
//
////        close;
////        sql.clear;
////        sql.add(' select  count(jin_day) as nCount from jinryo_p    where                        ');
////        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
////        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
////        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
////        paramByName('jin_day').AsString :=   jin_day;
////        open;
//        nSunapTotalCnt := nSunapWaitCnt + nSunapCnt;// fieldByName('nCount').asInteger;
//
//        close;
//        sql.clear;
//        sql.add(' select  count(jin_day) as nCount  from ma_jubsu                            ');
//        sql.add(' where (isInpat=''1'' or isInpat=''2'') and isOutPat=''0''                  ');
//        sql.add(' and gubun=''6''                                                            ');
////        sql.add(' and (case when ( isOutpat =''0'')  then convert(varchar, outPat_time, 23)  ');
////        sql.add('          when ( isOutpat is null)  then jin_day else jin_day end)          ');
////        sql.add('      =:jin_day                                                             ');
//
//
//     //   paramByName('jin_day').AsString :=   jin_day;
//        open;
//        nInPatCnt := fieldByName('nCount').asInteger;
//
//
//        close;
//        sql.clear;
//        sql.add(' select  count(jin_day) as nCount from ma_jubsu   ');
//        sql.add(' where  jin_day =:jin_day   and  gubun=''0''      ');
//        paramByName('jin_day').AsString :=     jin_day;
//        open;
//        nJubsuCnt := fieldByName('nCount').asInteger;
//
//
//        close;
//        sql.clear;
//        sql.add(' select  count(jin_day) as nCount from ma_jubsu   ');
//        sql.add(' where  jin_day =:jin_day   and  gubun=''4''      ');
//        paramByName('jin_day').AsString :=      jin_day;
//        open;
//        nWaitCnt := fieldByName('nCount').asInteger;
//
//
//        close;
//        sql.clear;
//        sql.add(' select  count(pday) as nCount from ma_promise   ');
//        Sql.Add(' WHERE   (pday = :jin_day) and (cancel <> ''Y'') ');
//        Sql.Add(' and (cancel <> ''C'') and ( cancel <> ''R'' )   ');
//        Sql.Add('           and name <> ''''                      ');
//        Sql.Add(' and pos <> ''8''     and Pos = ''''             ');
//        paramByName('jin_day').AsString :=     jin_day;
//        open;
//        nPromiseCnt := fieldByName('nCount').asInteger;
//
//
//       end;

//    fQuery.ParamByName('jin_Day').AsString :=  jin_day;
    fQuery.Open;
    // end timer (calc delta)
    fExecutionTime := Now - startTime;
    // return message to indicate rows returned
//    fMsg := Format('Rows=%d', [fQuery.RecordCount]);
      nJubsuCnt          := fQuery.FieldByName('nJubsuCnt').AsInteger ;
      nInPatCnt          := fQuery.FieldByName('nInPatCnt').AsInteger ;
      nSunapWaitCnt      := fQuery.FieldByName('nSunapWaitCnt').AsInteger ;
      nSunapCnt          := fQuery.FieldByName('nSunapCnt').AsInteger ;
      nSunapTotalCnt     := nSunapWaitCnt +  nSunapCnt;
      nPromiseCnt        := fQuery.FieldByName('nPromiseCnt').AsInteger ;
      nWaitCnt           := fQuery.FieldByName('nWaitCnt').AsInteger ;

//     fMsg := Format('Rows=%d',  [fQuery.FieldByName('status').AsInteger]);

//nJubsuCnt
//nInPatCnt
//nSunapTotalCnt
//nSunapWaitCnt
//nSunapCnt
//nPromiseCnt
//nWaitCnt

        fMsg := Format('%d', [nJubsuCnt] ) +'|'+
                Format('%d', [nInPatCnt] ) +'|'+
                Format('%d', [nSunapTotalCnt] ) +'|'+
                Format('%d', [nSunapWaitCnt] ) +'|'+
                Format('%d', [nSunapCnt] ) +'|'+
                Format('%d', [nPromiseCnt] ) +'|'+
                Format('%d', [nWaitCnt] );
             // .RecordCount]);
       // close the query
       fQuery.Close;
  except
    // catch exception, reset timer and save message
    on E: Exception do
    begin
      fExecutionTime := 0;
      fMsg := E.Message;
    end;
  end;
end;

// Initialize the unit
procedure Init;
var
  MySystem: TSystemInfo;
begin
  // find number of CPU in machine
  GetSystemInfo(MySystem);
  NumCPUCores := MySystem.dwNumberOfProcessors;
  // init thread list
  QueryList := TThreadList.Create;
  // rest running threads
  nThreads := 0;


end;

// Finish the unit
procedure Done;
begin
  // finish all thread
  KillThreads;
  // free thread list
  FreeAndNil(QueryList);
end;

initialization
  Init;
finalization
  Done;
end.
