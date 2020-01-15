unit uResources;

interface

uses Classes;

type
  // item for holding results
  TQueryTime = class(TCollectionItem)
  public
    // ID to identify the item
    ThreadId: Integer;
    // Time for the query to open
    ExecutionTime: TDateTime;
    // Hold errors or other messages
    Msg: string;
    // Database connection user/pass@db_alias
    DBConn: string;
  end;

  // Structure for holding multiple item results
  TQueryTimes = class(TCollection)
  private
    // Hold average values
    fAvg: TStrings;
    // Return timing item for specific thread
    function GetQueryItem(ThreadId: integer): TQueryTime;
    // Average execution time item
    function GetAvcExecTime(Index: Integer): string;
    // Average connection item
    function GetAvgDb(Index: Integer): string;
  public
    // Average items calculation
    function AvgCount: Integer;
    // Save timing info for a thread
    procedure ReportQueryTime(aThreadId: Integer; aExecutionTime: TDateTime; aMsg, aDBConn: string);
    // Timing item for thread
    property QueryItem[ThreadId: integer]: TQueryTime read GetQueryItem;
    // Average timing per database connection string
    property AvgDB[Index: Integer]: string read GetAvgDb;
    // Average timing per item
    property AvgExecTime[Index: Integer]: string read GetAvcExecTime;
  end;

// Return threadlocked variable for results
function LockQueryTimes: TQueryTimes;

// Unlock variable for results
procedure UnlockQueryTimes;

// Cleanup
procedure ClearQueryTimes;

implementation

uses SysUtils, DateUtils, SyncObjs;

var
  // varaible for thread results
  mQueryTimes: TQueryTimes;

  // protecttion vor thread results variable
  mCSTimes   : TCriticalSection;

// Return threadlocked variable for results
function LockQueryTimes: TQueryTimes;
begin
  // Be ware of this when using the TQueryTimes
  // A lock may succeed but it doesn't guarantee there is data
  Result := nil;
  if Assigned(mCsTimes) then
  begin
    // Wait for lock
    mCSTimes.Enter;
    // initialised ?
    if not Assigned(mQueryTimes) then
      mQueryTimes := TQueryTimes.Create(TQueryTime);
    // Return variable
    Result := mQueryTimes;
  end;
end;

// Unlock variable for results
procedure UnlockQueryTimes;
begin
  // Leave lock
  mCSTimes.Leave;
end;

// Cleanup
procedure ClearQueryTimes;
var QT: TQueryTimes;
begin
  Qt := LockQueryTimes;
  try
    // Delete all entries
    QT.Clear;
  finally
    UnlockQueryTimes;
  end;
end;

{ TQueryTimes }
function TQueryTimes.AvgCount: Integer;
var
  I, J, nCount: Integer;
  Q: TQueryTime;
  nTotal, nAvg: TDateTime;
begin
  // Initialize
  if not Assigned(fAvg) then
    fAvg := TStringList.Create;
  fAvg.Clear;
  // Count connection strings and set average time = 0
  for I := 0 to Count - 1 do
  begin
    Q := TQueryTime(Items[I]);
    if fAvg.IndexOfName(Q.DBConn) = -1 then
      fAvg.Values[Q.DBConn] := '0';
  end;
  // Calculate average time per connection string
  for I := 0 to fAvg.Count - 1 do
  begin
    nTotal := 0;
    nCount := 0;
    for J := 0 to Count - 1 do
    begin
      Q := TQueryTime(Items[I]);
      if Q.DBConn = fAvg.Names[I] then
      begin
        nTotal := nTotal + Q.ExecutionTime;
        nCount := nCount + 1;
      end;
    end;
    nAvg := nTotal;
    if nCount > 1 then
      nAvg := nTotal / nCount;
    fAvg.Values[fAvg.Names[I]] := Format('Average %.5f sec', [SecondSpan(nAvg, 0)]);
  end;
  Result := fAvg.Count;
end;

function TQueryTimes.GetAvcExecTime(Index: Integer): string;
begin
  // Get average query time per database connection string
  Result := fAvg.Values[AvgDb[Index]];
end;

function TQueryTimes.GetAvgDb(Index: Integer): string;
begin
  // Get n'th connection string
  Result := fAvg.Names[Index];
end;

function TQueryTimes.GetQueryItem(ThreadId: integer): TQueryTime;
var I: Integer;
begin
  // Get thread query timing data
  Result := nil;
  for I := 0 to Count - 1 do
    if TQueryTime(Items[I]).ThreadId = ThreadId then
    begin
      Result := TQueryTime(Items[I]);
      Break;
    end;
end;

// Save the timing info for thread
procedure TQueryTimes.ReportQueryTime(aThreadId: Integer; aExecutionTime: TDateTime;
  aMsg, aDBConn: string);
var QT: TQueryTime;
begin
  Qt := GetQueryItem(aThreadId);
  if QT = nil then
  begin
    Qt := TQueryTime(Add);
    // Thread id
    QT.ThreadId := aThreadId;
    // Connection string
    QT.DBConn := aDBConn;
  end;
  // Save the time
  QT.ExecutionTime := aExecutionTime;
  // Save the message
  QT.Msg := aMsg;
end;

// Initialise unit
procedure Init;
begin
  // Create critical section
  mCSTimes := TCriticalSection.Create;
  // Initialize array
  mQueryTimes := TQueryTimes.Create(TQueryTime);
end;

// Finish the unit
procedure Done;
begin
  // Free up the critical section
  FreeAndNil(mCsTimes);
  // Free structure to hold results
  FreeAndNil(mQueryTimes);
end;

initialization
  Init;
finalization
  Done;
end.
