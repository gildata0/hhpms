unit uPromiseData;

interface
uses
     SysUtils,
     Dialogs,
     Classes, StdCtrls, Controls,
     Windows,
     Planner, menus, Graphics;

type
     pTeam = ^TTeamInfo;
     TTeamInfo = record
          team_key: string;
          team_doctor1: string;
          team_color: string;
     end;

procedure Promise_DayMemosave(varDay, varTeam, varGubun, varRemark: string);

function Promise_saveData(varIns: Boolean; varDay, varGubun, varTime,
     varRemark, varmemo,
     varTeam,  varDoc, varChart, varName, vartel, varInterval, varAlret, varLock,
     varJundam, vardam,  rHospDocName, rHospCode,
     varColor, varJundam2, varNosms: string; varF_color, varF_size: string; varF_bold: boolean;
     out IDn : integer;
     varTelyeyak: string = '0'; varIdn: integer = 0; varPos: string = ''; modUser: string = ''): boolean;
function Promise_UpdateDataInPlanner(varIns: Boolean; varIdn: integer; varDay,
     varGubun,
     varTime,
     varTeam,
     varDoc,
     varInterval, varCancel: string; modUser: string = ''): boolean;
function Promise_UpdateDataInPlanner_withoutGubun_Doc(
     varIns: Boolean;
     varIdn: integer;
     varDay,
     varTime,
     varInterval :string;
     modUser: string = ''): boolean;

procedure Promise_UpdateAlret(varIdn: integer; varPos: string);

function Promise_Delete(varIdn: integer): boolean;
function Promise_Delete_all(varchart: string): boolean;
function Promise_Cancel(varIdn: integer; varKind: string; modUser: string = ''): boolean;
function Promise_UpdatePos(varIdn: integer; varPos: string; modUser: string = ''): boolean;
function Promise_UpdateColor(varIdn: integer; varColor: string; modUser: string = ''): boolean;

function Promise_UpdatePos_withCharPday(varChart: string; varPday:string; varPos: string; modUser: string = ''): boolean;

function Promise_Update_RpPK(varIdn: integer; rpPK: integer; modUser: string = ''): boolean;

function Promise_UpdateSendedReserveSMS(varDay, varGubun, varTime,
     varRemark, varTeam, varChart, varName, vartel, varInterval: string;
     varPos: string; varidn: integer = 0): boolean;      //지정일 예약SMS 전송  varPos ='1'

function Promise_UpdateSendedNowSMS(varDay, varGubun, varTime,
     varRemark, varTeam, varChart, varName, vartel, varInterval: string;
     varPos: string; varidn: integer = 0): boolean;       //예약즉시 SMS를 전송하는 경우 varPos ='1'

function isSendedReserveSMS(varIdn: integer): boolean;
function loadChairName(varTag: string): string;

procedure Promise_UpdateMemo(varIdn: integer; Varmemo: string);
function Promise_LoadMemo(varIdn: integer): string;

procedure DBDataToPlan(varPlanner: Tplanner; varPopup: TPopupmenu; varPopup2:
     TPopupmenu;
     varDate,
     varTeam:
     string; interval,
     starttime: integer;
     varChartView: boolean = false;
     varCancelView: boolean = false;
     varChangeView: boolean = false;
     varNameView: boolean = true;
     viewAll: boolean = true;
     viewItalic: boolean = true;
     varDaegiKind:integer = 0;
     varJubsuView : boolean = true );

procedure DBDataToPlan_term(varPlanner: Tplanner; varPopup: TPopupmenu;
     varPopup2: TPopupmenu;
     varDate, varDate1, varDate2, varteam: string;
     interval, starttime: integer;
     viewAll: boolean = true);

procedure Promise_SelectData(varIdn: integer);
procedure Promise_save_ModifyData(varDay, varGubun, varTime, varRemark,
     varTeam, varChart: string);
function Promise_isSelectData(varchart: string; varDate: string; varTeam:
     string):
     integer;
function loadSelectedItemTeam(varTag: integer): string;
procedure LoadTeamColor(Strings: TStrings);
function GetTeamColor(Strings: TStrings; iItemIndex: Integer; TeamMin:integer=1; TeamMax:integer=1): string;

procedure Promise_DisplasyLunch(varPlanner: Tplanner;
     varColcount, Begintime, intervaltime: integer; varColor, varCap: string);

var
     varPrDay, varPrChart, varPrname, varPrSulsik, varPrTime, varPrTel,
          varPrTel2,
          varprColor,
          varPrAlarm, varPrMemo, varPrGugan,
          varPrLock, varPrInterval,
          varPrTeam,
          varPrDoc,
          varPrDam,
          varPrCallDate,
          varPrCancel,
          varPrTelYeyak,
          varPrPos, varPrDam2, varPrNoSMS, varPrF_color, varPrF_size:   string;


     nRpPK : integer;

     varrHospCode    :string;
     varrHospDocName :string;


     varPrF_bold: boolean;

     ColumnStart: integer;

     ListTeamColor: Tstrings;
implementation
uses  uConfig,  uDm, uFunctions, uGogekData,uGogekData_find, uMain;

function Promise_saveData(varIns: Boolean; varDay, varGubun, varTime,
     varRemark, varmemo,
     varTeam, varDoc, varChart, varName, vartel, varInterval, varAlret, varLock,
     varJundam, varDam, rHospDocName, rHospCode,
     varColor, varJundam2, varNoSms: string; varF_color, varF_size: string; varF_bold: boolean;
     out IDn : integer;
     varTelyeyak: string = '0'; varIdn: integer = 0; varPos: string = ''; moduser: string = ''): boolean;
const
     SQL_INSERT_DATA = 'INSERT INTO ma_promise                       ' + #13#10
          +
          ' (pday, ptime, jubsuday,                            ' + #13#10
          +
          '  team, name, doc, rHospCode , rHospDocName,                           ' + #13#10
          +
          '  chart, tel, pmemo,  noSms,  f_color, f_size, f_bold,                              ' + #13#10
          +
          ' gubun, pos, cancel, pinterval, alret,pjundam,pcolor, remark, pLock, pdam, pnaewon, memodam, modUser, modDay)          ' + #13#10
          +
          ' VALUES                                              ' + #13#10
          +
          ' (:pday, :ptime, :jubsuday,                            ' + #13#10
          +
          '  :team, :name, :doc, :rHospCode, :rHospDocName,                             ' + #13#10
          +
          '  :chart, :tel, :pmemo,  :noSms, :f_color, :f_size, :f_bold,                                 ' + #13#10
          +
          ' :gubun, :pos, :cancel, :pinterval, :alret,:pjundam,:pcolor, :remark, :pLock, :pdam,:pnaewon, :memodam, :modUser, :modDay)     ';

     SQL_UPDATE_DATA = 'UPDATE ma_promise SET ' + #13#10 +
          '                    chart  = :chart, ' + #13#10 +
          '                    name  = :name, ' + #13#10 +
          '                    pday  = :pday, ' + #13#10 +
          '                    ptime = :ptime, ' + #13#10 +
          '                    team = :team, ' + #13#10 +
          '                    doc = :doc, ' + #13#10 +
          '                    tel = :tel, ' + #13#10 +
          '                    gubun = :gubun, ' + #13#10 +
          '                    remark = :remark,' + #13#10 +
          '                    pinterval = :pinterval,' + #13#10 +
          '                    alret = :alret,' + #13#10 +
          '                    pLock = :pLock,' + #13#10 +
          '                    pjundam = :pjundam,' + #13#10 +
          '                    pmemo = :pmemo,' + #13#10 +
          '                    pdam = :pdam,' + #13#10 +
          '                    pnaewon = :pnaewon,' + #13#10 +
          '                    noSMS = :noSMS,' + #13#10 +
          '                    f_color = :f_color,' + #13#10 +
          '                    f_size = :f_size,' + #13#10 +
          '                    f_bold = :f_bold,' + #13#10 +
          '                    pcolor = :pcolor, ' + #13#10 +
          '                    modDay = :modDay, ' + #13#10 +
          '                    modUser = :modUser, ' + #13#10 +
          '                    rHospDocName = :rHospDocName, ' + #13#10 +
          '                    rHospCode = :rHospCode, ' + #13#10 +
          '                    memodam = :memodam' + #13#10 +
          '             WHERE idn          = :idn';
var
   userInfo : string;
begin
    userInfo := GetLocalComputerName ;     // GetIPAddress+'|'+
     with Dm_f.SqlWork do
     begin
          try
               if varins = true then
               begin
                    SQL.Text := SQL_INSERT_DATA;
                    ParamByName('CANCEL').AsString := 'N';
                  //  ParamByName('JUBSUDAY').AsString :=  FormatDateTime('YYYY-MM-DD', Now);
                    ParamByName('JUBSUDAY').AsDateTime :=  Now;
                    ParamByName('POS').AsString := varPos;
               end
               else
               begin
                    SQL.Text := SQL_UPDATE_DATA;
                    ParamByName('idn').AsInteger := varIdn;
               end;
               ParamByName('CHART').AsString := varChart;
               ParamByName('NAME').AsString := varName;
               ParamByName('pTime').AsString := varTime;
               ParamByName('pDAY').AsString := varday;
               ParamByName('TEAM').AsString := varTeam;
               ParamByName('doc').AsString := varDoc;
               ParamByName('GUBUN').AsString := VarGubun;
               ParamByName('TEL').AsString := varTel;
               ParamByName('REMARK').AsString := varRemark;
               ParamByName('pmemo').AsString := varMemo;
               ParamByName('pInterval').AsString := varInterval;
               ParamByName('Alret').AsString := varAlret;
               ParamByName('pLock').AsString := varLock;
               ParamByName('pJundam').AsString := varJundam;
               ParamByName('pdam').AsString := vardam;
               ParamByName('pColor').AsString := varColor;
               ParamByName('Pnaewon').AsString := varTelyeyak;
               ParamByName('memodam').AsString := varJundam2;
               ParamByName('modDay').AsDatetime := now;
               ParamByName('modUser').AsString :=  userInfo;// modUser;
               ParamByName('rHospCode').AsString := rHospCode;
               ParamByName('rHospDocName').AsString := rHospDocName;
               ParamByName('noSMS').AsString := varNoSMS;
               ParamByName('f_color').AsString := varf_color;
               ParamByName('f_size').AsString := varf_size;
               if varf_bold = true then
                    ParamByName('f_bold').AsString := '1'
               else
                    ParamByName('f_bold').AsString := '';

               ExecSQL;


                    close;
                    SQL.Clear;
                   // SQL.text := ' select @@Identity as sid';
                    SQL.text := ' SELECT IDENT_CURRENT(''ma_promise'')  as sid';

                     open;

                    IDn := fieldByname('sid').asInteger;



               result := true;
          except
               on E: Exception do
               begin
                    result := false;

                    ShowMessage(E.Message + ' [예약 저장오류]');
               end;
          end;

     end;
end;

function Promise_UpdateDataInPlanner(varIns: Boolean; varIdn: integer; varDay,
     varGubun,
     varTime,
     varTeam,
     varDoc,
     varInterval, varcancel: string; modUser: string = ''): boolean;
const
     SQL_UPDATE_inPlanner = 'UPDATE ma_promise SET ' + #13#10 +
          '                    pday  = :pDay, ' + #13#10 +
          '                    ptime = :pTime, ' + #13#10 +
          '                    team = :TEAM, ' + #13#10 +
          '                    doc = :doc, ' + #13#10 +
          '                    gubun = :GUBUN, ' + #13#10 +
          '                    cancel = :cancel, ' + #13#10 +
          '                    modDay = :modDay, ' + #13#10 +
          '                    modUser = :modUser, ' + #13#10 +
          '                    pinterval = :pinterval ' + #13#10 +
          'WHERE idn=:idn';

begin
     result := false;
     with Dm_f.SqlWork do
     begin
          try
               if varins = False then
               begin
                    SQL.Text := SQL_UPDATE_inPlanner;
                    ParamByName('pTime').AsString := varTime;
                    ParamByName('pDAY').AsString := varday;
                    ParamByName('TEAM').AsString := varTeam;
                    ParamByName('doc').AsString := varDoc;
                    ParamByName('GUBUN').AsString := VarGubun;
                    ParamByName('cancel').AsString := VarCancel;
                    ParamByName('pInterval').AsString := varInterval;
                    ParamByName('idn').Asinteger := varIdn;
                    ParamByName('modUser').AsString := modUser;
                    ParamByName('modDay').AsDatetime := now;
                    ExecSQL;
                    result := true;
               end;
          except
               on E: Exception do
               begin
                    ShowMessage(E.Message + ' [예약 저장오류]');
               end;
          end;

     end;
end;
function Promise_UpdateDataInPlanner_withoutGubun_Doc(varIns: Boolean;
     varIdn: integer;
     varDay,
     varTime,
     varInterval:string;  modUser: string = ''): boolean;
const
     SQL_UPDATE_inPlanner = 'UPDATE ma_promise SET ' + #13#10 +
          '                    pday  = :pDay, ' + #13#10 +
          '                    ptime = :pTime, ' + #13#10 +
          '                    modDay = :modDay, ' + #13#10 +
          '                    modUser = :modUser, ' + #13#10 +
          '                    pinterval = :pinterval ' + #13#10 +
          'WHERE idn=:idn';

begin
     result := false;
     with Dm_f.SqlWork do
     begin
          try
               if varins = False then
               begin
                    SQL.Text := SQL_UPDATE_inPlanner;
                    ParamByName('pTime').AsString := varTime;
                    ParamByName('pDAY').AsString := varday;
                    ParamByName('pInterval').AsString := varInterval;
                    ParamByName('idn').Asinteger := varIdn;
                    ParamByName('modUser').AsString := modUser;
                    ParamByName('modDay').AsDatetime := now;
                    ExecSQL;
                    result := true;
               end;
          except
               on E: Exception do
               begin
                    ShowMessage(E.Message + ' [예약 저장오류]');
               end;
          end;

     end;
end;

function Promise_UpdatePos(varIdn: integer; varPos: string; modUser: string = ''): boolean;
const
     SQL_UPDATE_POS = 'UPDATE ma_promise SET ' + #13#10 +
          '                    pos  = :pos, ' + #13#10 +
          '                    modUser  = :modUser, ' + #13#10 +
          '                    modDay  = :modDay ' + #13#10 +
          'WHERE idn=:idn';

begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_UPDATE_POS;
               ParamByName('idn').Asinteger := varIdn;
               ParamByName('pos').AsString := varPos;
               ParamByName('modUser').AsString := modUser;
               ParamByName('modDay').AsDatetime := now;
               ExecSQL;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message + ' [예약 수정오류]');
               end;
          end;

     end;
end;


function Promise_Update_RpPK(varIdn: integer; rpPK: integer; modUser: string = ''): boolean;
const
     SQL_UPDATE_POS = 'UPDATE ma_promise SET ' + #13#10 +
          '                    rpPK  = :rpPK, ' + #13#10 +
          '                    modUser  = :modUser, ' + #13#10 +
          '                    modDay  = :modDay ' + #13#10 +
          'WHERE idn=:idn';

begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_UPDATE_POS;
               ParamByName('idn').Asinteger := varIdn;
               ParamByName('rpPK').AsInteger:= rpPK;
               ParamByName('modUser').AsString := modUser;
               ParamByName('modDay').AsDatetime := now;
               ExecSQL;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message + ' [예약rpPK 수정오류]');
               end;
          end;

     end;
end;



function Promise_UpdateColor(varIdn: integer; varColor: string; modUser: string = ''): boolean;
const
     SQL_UPDATE_POS = 'UPDATE ma_promise SET ' + #13#10 +
          '                    pColor  = :pColor, ' + #13#10 +
          '                    modUser  = :modUser, ' + #13#10 +
          '                    modDay  = :modDay ' + #13#10 +
          'WHERE idn=:idn';

begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_UPDATE_POS;
               ParamByName('idn').Asinteger := varIdn;
               ParamByName('pColor').AsString := varColor;
               ParamByName('modUser').AsString := modUser;
               ParamByName('modDay').AsDatetime := now;
               ExecSQL;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message + ' [예약 색 수정오류]');
               end;
          end;

     end;
end;


function Promise_UpdatePos_withCharPday(varChart: string; varPday:string; varPos: string; modUser: string = ''): boolean;
const
     SQL_UPDATE_POS = 'UPDATE ma_promise SET ' + #13#10 +
          '                    pos  = :pos, ' + #13#10 +
          '                    modUser  = :modUser, ' + #13#10 +
          '                    modDay  = :modDay ' + #13#10 +
          'WHERE chart=:chart and pday=:pday';

begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_UPDATE_POS;
               ParamByName('chart').AsString := varChart;
               ParamByName('Pday').AsString := varPday;
               ParamByName('pos').AsString := varPos;
               ParamByName('modUser').AsString := modUser;
               ParamByName('modDay').AsDatetime := now;
               ExecSQL;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message + ' [예약 수정오류]');
               end;
          end;

     end;
end;

function Promise_UpdateSendedReserveSMS(varDay, varGubun, varTime,
     varRemark, varTeam, varChart, varName, vartel, varInterval: string;
     varPos: string; varidn: integer = 0): boolean;
const
     SQL_UPDATE_POS = 'UPDATE ma_promise SET ' + #13#10 +
          '                   sendedReserveSms  = :sendedReserveSms ' + #13#10
          +
          'where               chart  = :chart and ' + #13#10 +
          '                    name  = :name and ' + #13#10 +
          '                    pday  = :pday and ' + #13#10 +
          '                    ptime = :ptime and ' + #13#10 +
          '                    team = :team and ' + #13#10 +
          '                    tel = :tel and ' + #13#10 +
          '                    gubun = :gubun and ' + #13#10 +
          '                    remark = :remark and' + #13#10 +
          '                    pinterval = :pinterval';
     SQL_UPDATE_IDN = 'UPDATE ma_promise SET ' + #13#10 +
          '                   sendedReserveSms  = :sendedReserveSms ' + #13#10
          +
          'where               idn  = :idn ';
begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               if varidn = 0 then
               begin
                    SQL.Text := SQL_UPDATE_POS;
                    ParamByName('sendedReserveSms').AsString := varPos;
                    ParamByName('chart').AsString := varChart;
                    ParamByName('name').AsString := varname;
                    ParamByName('pday').AsString := varDay;
                    ParamByName('ptime').AsString := varTime;
                    ParamByName('team').AsString := varTeam;
                    ParamByName('tel').AsString := varTel;
                    ParamByName('gubun').AsString := varGubun;
                    ParamByName('remark').AsString := varRemark;
                    ParamByName('pinterval').AsString := varinterval;
                    ExecSQL;
               end
               else
               begin
                    SQL.Text := SQL_UPDATE_IDN;
                    ParamByName('sendedReserveSms').AsString := varPos;
                    ParamByName('idn').Asinteger := varidn;
                    ExecSQL;
               end;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message +
                         ' [예약 sendedReserveSms 수정오류]');
               end;
          end;

     end;
end;

function Promise_UpdateSendedNowSMS(varDay, varGubun, varTime,
     varRemark, varTeam, varChart, varName, vartel, varInterval: string;
     varPos: string; varidn: integer = 0): boolean;       //예약즉시 SMS를 발송하는 경우 varPos ='1'
const
     SQL_UPDATE_POS = 'UPDATE ma_promise SET ' + #13#10 +
          '                  nowSmsSend  = :nowSmsSend ' + #13#10
          +
          'where               chart  = :chart and ' + #13#10 +
          '                    name  = :name and ' + #13#10 +
          '                    pday  = :pday and ' + #13#10 +
          '                    ptime = :ptime and ' + #13#10 +
          '                    team = :team and ' + #13#10 +
          '                    tel = :tel and ' + #13#10 +
          '                    gubun = :gubun and ' + #13#10 +
          '                    remark = :remark and' + #13#10 +
          '                    pinterval = :pinterval';
     SQL_UPDATE_IDN = 'UPDATE ma_promise SET ' + #13#10 +
          '                   nowSmsSend  = :nowSmsSend ' + #13#10
          +
          'where               idn  = :idn ';
begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               if varidn = 0 then
               begin
                    SQL.Text := SQL_UPDATE_POS;
                    ParamByName('nowSmsSend').AsString := varPos;
                    ParamByName('chart').AsString := varChart;
                    ParamByName('name').AsString := varname;
                    ParamByName('pday').AsString := varDay;
                    ParamByName('ptime').AsString := varTime;
                    ParamByName('team').AsString := varTeam;
                    ParamByName('tel').AsString := varTel;
                    ParamByName('gubun').AsString := varGubun;
                    ParamByName('remark').AsString := varRemark;
                    ParamByName('pinterval').AsString := varinterval;
                    ExecSQL;
               end
               else
               begin
                    SQL.Text := SQL_UPDATE_IDN;
                    ParamByName('nowSmsSend').AsString := varPos;
                    ParamByName('idn').Asinteger := varidn;
                    ExecSQL;
               end;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message +
                         ' [예약 nowSmsSend 수정오류]');
               end;
          end;

     end;
end;

function isSendedReserveSMS(varIdn: integer): boolean;
const
     SQL_select = 'select * from ma_promise  ' + #13#10 +
          'WHERE idn=:idn';

begin
     result := false;
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_select;
               ParamByName('idn').Asinteger := varIdn;
               open;
               if not isEmpty then
               begin
                    if fieldByName('sendedReserveSms').asString = '1' then
                         result := true
                    else
                         result := false;

               end
               else
               begin

                    result := false;
               end;
          except
               on E: Exception do
               begin
                    result := true;
                    ShowMessage(E.Message +
                         ' [예약 sendedReserveSms 찾기오류]');
               end;
          end;

     end;
end;

procedure Promise_UpdateAlret(varIdn: integer; varPos: string);
const
     SQL_UPDATE_POS = 'UPDATE ma_promise SET ' + #13#10 +
          '                    alret  = :pos ' + #13#10 +
          'WHERE idn=:idn';

begin

     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_UPDATE_POS;
               ParamByName('idn').Asinteger := varIdn;
               ParamByName('pos').AsString := varPos;
               ExecSQL;
          except
               on E: Exception do
               begin
                    ShowMessage(E.Message + ' [예약 수정오류]');
               end;
          end;

     end;
end;

procedure Promise_UpdateMemo(varIdn: integer; Varmemo: string);
const
     SQL_UPDATE_inPlanner = 'UPDATE ma_promise SET ' + #13#10 +
          '                    pmemo  = :pmemo ' + #13#10 +
          'WHERE idn=:idn';

begin

     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_UPDATE_inPlanner;
               ParamByName('pmemo').AsString := varMemo;
               ParamByName('idn').Asinteger := varIdn;
               ExecSQL;
          except
               on E: Exception do
               begin
                    ShowMessage(E.Message + ' [예약 메모 저장오류]');
               end;
          end;

     end;
end;

function Promise_LoadMemo(varIdn: integer): string;
const

     SQL_LoadMemo = 'select pMemo from ma_promise' + #13#10 +
          'WHERE idn=:idn';

begin
     result := '';
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_Loadmemo;
               ParamByName('idn').Asinteger := varIdn;
               open;
               result := FieldByName('pmemo').AsString;
          except
               on E: Exception do

               begin
                    ShowMessage(E.Message + ' [예약 메모 저장오류]');
               end;
          end;

     end;
end;

function Promise_Cancel(varIdn: integer; varKind: string; modUser: string = ''): boolean;
const
     SQL_Cancel = 'UPDATE ma_promise SET ' + #13#10 +
          '                    cancel  = :cancel, ' + #13#10 +
          '                    modUser  = :modUser, ' + #13#10 +
          '                    modDay  = :modDay ' + #13#10 +
          'WHERE idn=:idn';

begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_Cancel;
               ParamByName('idn').Asinteger := varIdn;
               ParamByName('cancel').AsString := varKind;
               ParamByName('modUser').AsString := modUser;
               ParamByName('modDay').AsDatetime := now;
               //Y:취소 U:변경
               ExecSQL;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message + ' [예약 취소오류]');
               end;
          end;

     end;
end;

function Promise_Delete(varIdn: integer): boolean;
const
     SQL_Delete_Data = 'Delete From ma_promise ' + #13#10 +
          '             WHERE idn          = :idn';

begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_Delete_Data;
               ParamByName('idn').Asinteger := varIdn;
               ExecSQL;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message + ' [예약 삭제오류]');
               end;
          end;

     end;
end;

function Promise_Delete_all(varchart: string): boolean;
const
     SQL_Delete_Data = 'Delete From ma_promise ' + #13#10 +
          '             WHERE chart          = :chart';

begin
     result := true;
     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_Delete_Data;
               ParamByName('chart').AsString := varChart;
               ExecSQL;
          except
               on E: Exception do
               begin
                    result := false;
                    ShowMessage(E.Message + ' [예약 삭제오류]');
               end;
          end;

     end;
end;

procedure Promise_save_ModifyData(varDay, varGubun, varTime, varRemark,
     varTeam, varChart: string);
const
     SQL_INSERT_DATA = 'INSERT INTO ma_promise_modify                ' + #13#10
          +
          ' (pday, ptime, jubsuday,  team , chart,gubun, remark)' + #13#10
          +
          ' VALUES                                              ' + #13#10
          +
          ' (:pday, :ptime, :jubsuday,  :team , :chart,:gubun, :remark)     ';

begin

     with Dm_f.SqlWork do
     begin
          try
               SQL.Text := SQL_INSERT_DATA;
               ParamByName('JUBSUDAY').AsString :=
                    FormatDateTime('YYYY-MM-DD', Now);
               ParamByName('CHART').AsString := varChart;
               ParamByName('pTime').AsString := varTime;
               ParamByName('pDAY').AsString := varday;
               ParamByName('TEAM').AsString := varTeam;
               ParamByName('GUBUN').AsString := VarGubun;
               ParamByName('REMARK').AsString := varRemark;
               ExecSQL;

          except
               on E: Exception do
               begin
                    ShowMessage(E.Message + ' [예약 변경 저장오류]');
               end;
          end;

     end;
end;

function Promise_isSelectData(varchart: string; varDate: string; varTeam:
     string):
     integer;
const
     SQL_Select_Data = 'Select * From ma_promise ' + #13#10 +
          '              WHERE chart=:chart and pday=:pday and team=:team and  cancel <> ''Y''  and cancel <> ''U'' ';
begin

     if strtodate(varDate) < strtodate(formatdatetime('YYYY-MM-DD', now)) then
     begin
          result := 1; //오늘보다 이전
          exit;
     end;
     if varChart <> '' then //차트번호가 있으면 찾아서 동시 예약 안되게 하고...
     begin
          with Dm_f.SqlWork do
          begin
               SQL.Text := SQL_Select_Data;
               ParamByName('chart').AsString := varChart;
               ParamByName('pday').AsString := varDate;
               ParamByName('team').AsString := varTeam;

               open;
               if not isEmpty then
               begin
                    result := 2; //약속있는경우
               end
               else
               begin
                    result := 3; //없는경우
               end;
          end;
     end
     else //차트번호가 없으면 그냥 예약한다.
     begin
          result := 3; //없는경우

     end;
end;

procedure Promise_SelectData(varIdn: integer);
const
     SQL_Select_Data = 'Select * From ma_promise ' + #13#10 +
          '              WHERE idn=:idn';
begin
     nRpPK := 0;    //협진 KEY
     varPrChart := '';
     varPrDay := '';
     varPrname := '';
     varPrSulsik := '';
     varPrTime := '';
     varPrTel := '';
     varPrTel2 := '';
     varPrGugan := '';
     varprColor := '';
     varPrAlarm := '';
     varPrMemo := '';
     varPrLock := '';
     varPrInterval := '';
     varPrTeam := '';
     varPrDoc := '';
     varPrDam := '';
     varPrCallDate := '';
     varPrPos := '';
     varPrCancel := '';
     varPrTelYeyak := '';
     varPrDam2 := '';
     varPrNoSMS := '';
     varPrf_Color := '';
     varPrf_size := '';
     varPrF_bold := false;
     varrHospCode    :='';
     varrHospDocName :='';

     with Dm_f.SqlWork do
     begin
          SQL.Text := SQL_Select_Data;
          ParamByName('idn').Asinteger := varidn;
          open;
          if not isEmpty then
          begin
               varPrDay := trim(fieldByName('pday').asString);
               varPrChart := trim(fieldByName('chart').asString);
               varPrname := trim(fieldByName('name').asString);
               varPrSulsik := trim(fieldByName('remark').asString);
               varPrTime := trim(fieldByName('ptime').asString);
               varPrTel := trim(fieldByName('tel').asString);
               varrHospCode    :=  trim(fieldByName('rHospCode').asString);
               varrHospDocName :=  trim(fieldByName('rHospDocName').asString);

               nRpPK :=  fieldByName('rpPK').asInteger;

               varPrTel2 := '';
               varPrGugan := trim(fieldByName('gubun').asString);
               varprColor := trim(fieldByName('pcolor').asString);
               varPrAlarm := trim(fieldByName('alret').asString);
               varPrMemo := trim(fieldByName('pmemo').asString);
               varPrLock := trim(fieldByName('plock').asString);
               varPrInterval := trim(fieldByName('pinterval').asString);
          //     if checkint(trim(fieldByName('team').asString)) = true then
               varPrTeam := trim(fieldByName('team').asString) ;
         //      else
         //           varPrTeam := '1';

               varPrDoc := trim(fieldByName('Doc').asString);

               varPrDam := trim(fieldByName('pjundam').asString);
               varPrCalldate := trim(fieldByName('pdam').asString);
               varPrPos := trim(fieldByName('pos').asString);
               varPrCancel := trim(fieldByName('cancel').asString);
               varPrTelYeyak := trim(fieldByName('pnaewon').asString);
               varPrDam2 := trim(fieldByName('memodam').asString);
               varPrNoSMS := trim(fieldByName('noSMS').asString);
               varPrf_COlor := trim(fieldByName('f_color').asString);
               varPrf_size := trim(fieldByName('f_size').asString);
               if trim(fieldByName('f_bold').asString) = '1' then
                    varPrf_bold := true
               else
                    varPrf_bold := false;
          end
          else
          begin
               varPrChart := '';
               varPrDay := '';
               varPrname := '';
               varPrSulsik := '';
               varPrTime := '';
               varPrTel := '';
               varPrTel2 := '';
               varprColor := '';
               varPrGugan := '';
               varPrAlarm := '';
               varPrMemo := '';
               varPrLock := '';
               varPrInterval := '';
               varPrTeam := '';
               varPrDoc := '';
               varPrDam := '';
               varPrCalldate := '';
               varPrPos := '';
               varPrCancel := '';
               varPrTelYeyak := '';
               varPrDam2 := '';
               varPrnoSMS := '';
               varPrf_COlor := '';
               varPrf_size := '';
               varPrf_bold := false;
          end;

     end;
end;

function GetTeamColor(Strings: TStrings; iItemIndex: Integer; TeamMin:integer=1; TeamMax:integer=1): string;
var
     iIndex: Integer;
     p: pTeam;
begin
     result := 'clSilver';

     for iIndex := 0 to Strings.Count - 1 do
     begin
          if (iIndex = iItemIndex) then
          begin
               p := pTeam(Strings.Objects[iIndex]);
               Result := p^.team_color;
               break;

          end;
     end;

end;

procedure LoadTeamColor(Strings: TStrings);
var
     p: pTeam;
     i: integer;
begin
     Strings.Clear();
     Strings.AddObject('clWhite', TObject(p));
     try
          with dm_f.SqlTemp do
          begin
               Close;

               SQL.Text := '  SELECT  team_key    ' + #13#10 +
                    '         ,team_doctor1, team_color' + #13#10 +
                    '    FROM  ma_team        ' + #13#10 +
                    'ORDER BY  team_key ASC';

               Open();

               if IsEmpty then
                    Exit;

             {  while not Eof do
               begin
                    p := AllocMem(Sizeof(TTeamInfo));

                    p^.team_key := FieldByName('team_key').AsString;

                    p^.team_doctor1 :=
                         FieldByName('team_doctor1').AsString;

                    if FieldByName('team_color').AsString <> '' then
                         p^.team_color :=
                              FieldByName('team_color').AsString
                    else
                         p^.team_color := 'clWhite';

                    Strings.AddObject(FieldByName('team_color').AsString, TObject(p));

                    Next();
               end; }
               for i:= 1 to 100 do
               begin

                    if inttostr(i) =  FieldByName('team_key').AsString then
                    begin
                         p := AllocMem(Sizeof(TTeamInfo));

                         p^.team_key := FieldByName('team_key').AsString;

                         p^.team_doctor1 :=
                              FieldByName('team_doctor1').AsString;

                         if FieldByName('team_color').AsString <> '' then
                              p^.team_color :=
                                   FieldByName('team_color').AsString
                         else
                              p^.team_color := 'clWhite';

                         Strings.AddObject(FieldByName('team_color').AsString, TObject(p));
                         next;
                    end
                    else
                    begin



                         p := AllocMem(Sizeof(TTeamInfo));

                         p^.team_key := inttostr(i);

                         p^.team_doctor1 :='';
                         p^.team_color := 'clWhite';

                         Strings.AddObject('clWhite', TObject(p));


                    end;

               end;
          end;
     except
          raise;
     end;
end;

procedure CleanMem(Strings: TStrings);
var
     p: Pointer;
     iIndex: Integer;
begin
     for iIndex := 0 to Strings.Count - 1 do
     begin
          p := Strings.Objects[iIndex];
          if (p <> nil) then
          begin
               FreeMem(p);
          end;
     end;

     Strings.Clear;
end;

function loadSelectedItemTeam(varTag: integer): string;
const
     SQL_Select_Data = 'Select * From ma_promise ' + #13#10 +
          '              WHERE idn=:idn';
begin

     with Dm_f.sqlWork do
     begin
          SQL.Text := SQL_Select_Data;
          ParamByName('idn').AsInteger := varTag;
          open;
          if not isEmpty then
          begin

               result := fieldByName('team').asString;
          end
          else
          begin
               result := '1';

          end;

     end;

     if result <> '' then
          result := result
     else
          result := '1';
end;

function loadChairName(varTag: string): string;
const
     SQL_Select_Data = 'Select * From ma_promise_chair ' + #13#10 +
          '              WHERE ChairNo=:idn';
begin

     with Dm_f.sqlWork do
     begin
          SQL.Text := SQL_Select_Data;
          ParamByName('idn').AsString := varTag;
          open;
          if not isEmpty then
          begin

               result := fieldByName('ChairRemark').asString;
          end
          else
          begin
               result := '';

          end;

     end;

end;

procedure DBDataToPlan(varPlanner: Tplanner;
     varPopup: TPopupmenu;
     varPopup2: TPopupmenu;
     varDate,
       varTeam: string;
     interval,
       starttime: integer;
     varChartView: boolean = false;
     varCancelView: boolean = false;
     varChangeView: boolean = false;
     varNameView: boolean = true;
     viewAll: boolean = true;
     viewItalic: boolean = true;
     varDaegiKind:integer = 0;
     varJubsuView : boolean = true );
var
     varChart: string;
     varname: string;
     varRemark: string;
     varMemo: string;
     varTel: string;
     varTime: string;
     varinterval: string;
     varColor: string;
     varColorto: string;
     varFontColor: string;
     varFontColor2: string; //remark색
     varFontSize: string; //remark글자크기
     varBgColor: string;

     varidn: integer;

     varGubun: integer;
     varPos: string;
     varcancel: string;
     varStat: string;
     varStat2: string;
     varAlret: integer;
     varLock: integer;
     begintime: integer;
     intervaltime: integer;
     varTeamColor: string;
     varTelYeyak: string;
     iii: integer;


     varQuery: string;
     varQuery_Gubun: string;

     varItalicS,
          varItalicF: string;
     varBoldS, varBoldF: string;

     varChamgo : string;

begin
     varPlanner.Items.Clear;
     iii := 0;
     varStat := '';
     varPos := '';
     varCancel := '';
     varStat2 := '';
     varTelYeyak := '';

      varChamgo :='';


     if viewItalic = true then
     begin
          varItalicS := '<I>';
          varItalicF := '</I>';
     end
     else
     begin
          varItalicS := '';
          varItalicF := '';
     end;

     //  varQuery:=  ' gubun =''C''  ';
     //  varQuery := varQuery+ ' or gubun =''B''  ';
     varQuery := LoadGroupDataQuery;
     varQuery_Gubun := LoadTeam_PromiseGubun(varTeam);

     try
          with dm_f.SqlWork do
          begin
               close;
               sql.Clear;




               if configvalue.P_remarkPrint <> 1 then
               begin
                     sql.text := 'select * from ma_promise' + #10#13+
                                 'where pday=:pday ' ;
               end
               else
               begin


                     sql.text := 'select    (select top 1 chamgo from ma_gogek_basic where chart=ma_promise.chart) as chamgo, * from ma_promise'  + #10#13+
                                 'where pday=:pday ' ;


               end;



               if varTeam <> '0' then       //
               begin
                    sql.Add('and team=:team ');
                    ParamByName('team').AsString := varTeam;
               end;

               //todo : team이 전체가 아니면 조건을 환경설정에서 읽어서 gubun을 where절에서 골라줘야 한다.
               if varTeam <> '0' then
               begin
                    if varQuery_Gubun <> '' then
                         sql.Add('and (' + varQuery_Gubun + ' )  ');
               end;

               sql.Add('and name <> ''''  ');

               if varCancelView = false then
               begin
                    sql.Add('and cancel <> ''C'' '); //Canceled Data
                    sql.Add('and cancel <> ''Y'' '); //Canceled Data
                    sql.Add('and cancel <> ''R'' '); //Recalled Data
               end;

               if varChangeView = false then
               begin
                    sql.Add('and cancel <> ''U'' '); //Changed Data
               end;



               if varJubsuView = false then
               begin
                    sql.Add('and ((Pos = '''') or (Pos = ''8'')) '); //접수전이나 블럭
               end;



               paramByName('pday').AsString := varDate;
               //   ParamByName('team').AsString := varTeam;

               if viewAll <> true then
               begin
//                    if varQuery <> '' then
//                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
                   if   configvalue.varAgeFilter ='0' then
                    begin

                        if varQuery <> '' then
                             sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

                    end
                    else
                    begin
                             sql.Add('and (chart not in  ('+  ageFilterQry  +  '  ) ) ');

                    end;



               end;

               open;
               first;
               if not isEmpty then
               begin

                    varPlanner.items.BeginUpdate;
                    while not eof do
                    begin
                         //  showmessage(inttostr(iii));
                         varidn := fieldByname('idn').Asinteger;

                         varChart := fieldByname('chart').AsString;
                         varname := fieldByname('name').AsString;
                         varRemark := fieldByname('remark').asString;


                         if configvalue.P_remarkPrint = 1 then
                         begin
                              varChamgo := fieldByname('chamgo').asString;
                         end;

                         varMemo := fieldByname('pMemo').asString;
                         varTel := fieldByname('tel').asString;
                         varTelYeyak := fieldByname('pnaewon').asString;

                         if checkint(fieldByname('team').asString) = true then
                              varTeam := fieldByname('team').asString
                         else
                              varTeam := '1';

                         {
                               if fieldByname('team').asString <> '' then
                               varTeam := fieldByname('team').asString
                               else
                               varteam:='1';
                          }

                          //ToDo : repair
                       //  varTeamColor :=  'clLime';
                            //  getteamColor(main_f.cbTeamColor.items, strtoint(varTeam));

                         varTime   := fieldByname('ptime').asString;


                         //ToDo : repair
                         varGubun  := fieldByname('gubun').asinteger;// - columnstart;
                         //  varGubun := 0;

                         varPos    := fieldByname('pos').asString;
                         varCancel := fieldByname('cancel').asString;

                         if varCancel = 'Y' then
                              varStat := '취소됨'
                         else
                              if varCancel = 'C' then
                                   varStat := '취소됨'
                              else
                                   if varCancel = 'U' then
                                        varStat := '변경됨'
                                   else
                                        varStat := '';
     //  10:  접수
     //  0: 진료대기
     //  1: 진료중
     //  2: 수납대기
     //  3: 수납완료
     //  8: 블럭표시
     // 공백 :안온사람

     //   4:연락안됨
     //   5: 재예약
     //   6:  리콜함
     //   7:  타치과로감

                         if varPos = '10' then
                              varStat2 := '접수'
                              else
                         if varPos = '0' then
                              varStat2 := '진료대기'
                         else
                              if varPos = '1' then
                                   varStat2 := '진료중'
                              else
                                   if varPos = '2' then
                                        varStat2 := '수납대기'
                                   else
                                        if varPos = '3' then
                                             varStat2 := '수납완료'
                                        else
                                             if varPos = '9' then
                                                  varStat2 := '수납완료'
                                             else
                                                  if varPos = '4' then
                                                       varStat2 := '연락안됨'
                                                  else
                                                       if varPos = '5' then
                                                            varStat2 := '재예약'
                                                       else
                                                            if varPos = '6' then
                                                                 varStat2 := '리콜함'
                                                            else
                                                                 if varPos = '7' then
                                                                      varStat2 := '종결'
                                                                 else
                                                                      varStat2 := '';

                         if trim(fieldByname('alret').asString) <> '' then
                              varAlret :=
                                   fieldByname('alret').asinteger
                         else
                              varAlret := 0;

                         if trim(fieldByname('pLock').asString) <> '' then
                              varLock := fieldByname('pLock').asinteger
                         else
                              varLock := 0;

                         varDate := fieldByname('pday').asString;
                         if fieldByname('pinterval').asString <> '' then
                              varinterval :=
                                   fieldByname('pinterval').asString
                         else
                              varinterval := '30';

                         if trim(fieldByname('pcolor').asString) <> '' then
                         begin
                              varColor := fieldByname('pcolor').asString;
                              varColorto := fieldByname('pcolor').asString;

                         end

                         else
                         begin
                              varColor := 'clWhite'; //'$008C8C8C';
                              varColorto := 'clWhite';
                              // '$008C8C8C'; // '$00404040';

                         end;
                         if trim(fieldByname('f_bold').asString) = '1' then
                         begin
                              varBolds := '<B>';
                              varBoldf := '</B>';
                         end
                         else
                         begin
                              varBolds := '';
                              varBoldf := '';
                         end;

                             varBgColor := 'clwhite';
                             varFontColor := 'clblack';

                             if trim(fieldByname('f_color').asString) <> '' then
                                    varFontColor2 := fieldByname('f_color').asString
                             else
                                    varFontColor2 := 'clBlack';

                             if ( trim(fieldByname('f_size').asString) <> '' )
                                  and  (  fieldByname('f_size').asinteger  <> 0 ) then
                                    varFontSize := fieldByname('f_size').asString
                             else
                                    varFontSize := '10';


                         if trim(varCancel) = 'Y' then
                         begin
                              varBgColor := substr(configvalue.p_ColorCancel_b, 2, ','); //'clgray';
                              varFontColor := substr(configvalue.p_ColorCancel_f, 2, ','); // 'clblack'; //'clblack';
                              varFontColor2 := substr(configvalue.p_ColorCancel_f, 2, ','); // 'clblack'; //'clblack';
                         end
                         else
                              if trim(varCancel) = 'C' then
                              begin
                                   varBgColor := substr(configvalue.p_ColorCancel_b, 2, ','); //'clgray';
                                   varFontColor := substr(configvalue.p_ColorCancel_f, 2, ','); //'clblack';
                                   varFontColor2 := substr(configvalue.p_ColorCancel_f, 2, ','); //'clblack';
                              end
                              else
                                   if trim(varCancel) = 'U' then
                                   begin
                                        varBgColor := substr(configvalue.p_ColorChange_b, 2, ','); //'clpurple';
                                        varFontColor := substr(configvalue.p_ColorChange_f, 2, ','); //'clGreen';
                                        varFontColor2 := substr(configvalue.p_ColorChange_f, 2, ','); //'clGreen';
                                   end
                                   else
                                        if trim(varpos) = '10' then
                                             //접수
                                        begin
                                             varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                             varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                             varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                        end
                                        else
                                        if trim(varpos) = '0' then
                                             //진료대기
                                        begin
                                             varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                             varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                             varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                        end
                                        else
                                             if trim(varpos) = '1' then
                                                  //진료중
                                             begin
                                                  varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); //'clwhite';
                                                  varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                                  varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                             end
                                             else
                                                  if trim(varpos) = '2' then
                                                       //수납대기
                                                  begin
                                                       varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                                       varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                                       varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                                  end
                                                  else
                                                       if trim(varpos) = '3' then
                                                            //수납완료
                                                       begin
                                                            varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                                            varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                                            varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                                       end
                                                       else
                                                            if trim(varpos) = '9' then
                                                                 //수납완료(9)에서 추가
                                                            begin
                                                                 varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                                                 varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                                                 varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                                            end
                                                            else
                                                                 if trim(varpos) = '4' then //연락안됨
                                                                 begin
                                                                      varBgColor := substr(configvalue.p_ColornotCon_b, 2, ','); //'clRed';
                                                                      varFontColor := substr(configvalue.p_ColorNotCon_f, 2, ','); // 'clblack';
                                                                      varFontColor2 := substr(configvalue.p_ColorNotCon_f, 2, ','); // 'clblack';

                                                                 end
                                                                 else
                                                                      if trim(varpos) = '5' then //재예약
                                                                      begin
                                                                           varBgColor := substr(configvalue.p_ColorReyeyak_b, 2, ','); // 'clGreen';
                                                                           varFontColor := substr(configvalue.p_Colorreyeyak_f, 2, ','); // 'clBlack';
                                                                           varFontColor2 := substr(configvalue.p_Colorreyeyak_f, 2, ','); // 'clBlack';

                                                                      end
                                                                      else
                                                                           if trim(varpos) = '6' then //리콜
                                                                           begin
                                                                                varBgColor := substr(configvalue.p_ColorRecall_b, 2, ','); // 'clBlue';
                                                                                varFontColor := substr(configvalue.p_ColorReCall_f, 2, ','); // 'clblack';
                                                                                varFontColor2 := substr(configvalue.p_ColorReCall_f, 2, ','); // 'clblack';

                                                                           end
                                                                           else
                                                                                if trim(varpos) = '7' then //종결
                                                                                begin
                                                                                     varBgColor := substr(configvalue.p_ColorEnd_b, 2, ','); // 'clOlive';
                                                                                     varFontColor := substr(configvalue.p_ColorEnd_f, 2, ','); //'clblack';
                                                                                     varFontColor2 := substr(configvalue.p_ColorEnd_f, 2, ','); //'clblack';

                                                                                end ;


                         begintime := timetoMin(vartime) div interval -
                              StartTime;
                         intervaltime := strtoint(varinterval) div interval;

                         with varPlanner.items.Add do
                         begin

                              //   if varFontColor <> 'clwhite' then
                              //   begin

                              if varLock = 1 then
                              begin

                                   fixedPos := true;
                                   fixedposition := true;
                                   fixedTime := true;
                                   fixedSize := true;
                                   AllowOverlap := False;
                                   Shadow := True;
                              end
                              else
                              begin

                                   fixedPos := false;
                                   fixedposition := false;
                                   fixedTime := false;
                                   fixedSize := false;
                                   AllowOverlap := true;
                                   Shadow := false;
                              end;

                          //이렇게 하면 데이터 select후 이동이 안된다.
                          //   fixedPos := true;


                            //  SelectColor:=clRed;
                              //selectedbordercolor:=clRed;

                              if (varTelYeyak = '1') and (trim(varChart) ='') then
                                   imageid := 8
                                   else
                                 if (varTelYeyak = '1') and (trim(varChart) <> '') then
                                   imageid := 9;



                              shape := psRect;

                              bordercolor := clsilver;


                              color := stringtocolor(varColor);
                              colorto := stringtocolor(varColorto);

                              trackColor :=stringtocolor('clLime') ;// stringtocolor(varTeamColor);
                              //    end
                              //    else
                              //    begin
                              //         shape := psSkin;
                              //    end;

                              ItemPos   := varGubun;
                              ItemBegin := begintime;
                              ItemEnd   := begintime + intervaltime;

                              if varPlanner.display.DisplayScale < 50 then
                                   CaptionType := ctnone
                              else
                                   CaptionType := ctTime;

                              captionFont.Name := '돋움'; // '굴림체';
                              captionFont.Color := clBlue;
                              captionFont.Size := 9;
                              captionBkg := clyellow;
                              captionBkgto := clYellow;
                              {This is an <A href="action">URL</A><BR>
                               and some simple <B>HTML</B><BR>
                               <FONT color="clFuchsia">formatted</FONT> text.
                               <IMG src="idx:3">
                               }

                              if varpos <> '8' then //블럭지정이 아닐때만...
                              begin
                                   if trim(varMemo) = '' then
                                   begin
                                        if (varPos = '0')
                                             or (varpos = '1')
                                             or (varpos = '2')
                                             or (varpos = '3') then
                                        begin
                                             if varChartView = false then
                                                  Text.Insert(0,
                                                       varBolds + '<FONT color="'
                                                       +
                                                       varFontColor + '" bgcolor="'
                                                       +
                                                       varBgColor + '">'
                                                       +
                                                       '<FONT size="'
                                                       +
                                                       varFontsize + '">' +
                                                       varItalicS + varname +
                                                       varItalicF
                                                       +
                                                       '</FONT>' + varBoldF)
                                             else
                                                  if varNameView = false then
                                                  begin
                                                       if varTelYeyak <> '1' then
                                                       begin
                                                            Text.Insert(0,
                                                                 varBolds + '<FONT color="'
                                                                 +
                                                                 varFontColor + '" bgcolor="'
                                                                 +
                                                                 varBgColor + '">'
                                                                 +
                                                                 '<FONT size="'
                                                                 +
                                                                 varFontsize + '">' +
                                                                 varItalicS + varChart +
                                                                 varItalicF
                                                                 +
                                                                 '</FONT>' + varBoldf);
                                                       end
                                                       else
                                                       begin
                                                            Text.Insert(0,
                                                                 varBolds + '<FONT color="'
                                                                 +
                                                                 varFontColor + '" bgcolor="'
                                                                 +
                                                                 varBgColor + '">'
                                                                 +
                                                                 '<FONT size="'
                                                                 +
                                                                 varFontsize + '">' +
                                                                 varItalicS + varName +
                                                                 varItalicF
                                                                 +
                                                                 '</FONT>' + varBoldf);
                                                       end;
                                                  end
                                                  else
                                                       Text.Insert(0,
                                                            varBolds + '<FONT color="'
                                                            +
                                                            varFontColor + '" bgcolor="'
                                                            +
                                                            varBgColor + '">'
                                                            +
                                                            '<FONT size="'
                                                            +
                                                            varFontsize + '">' +
                                                            varItalicS + '(' + varChart + ')' + varname +
                                                            varItalicF
                                                            +
                                                            '</FONT>' + varBoldf);

                                        end
                                        else
                                        begin

                                             if varChartView = false then
                                                  Text.Insert(0,
                                                       varBolds + '<FONT color="'
                                                       +
                                                       varFontColor + '" bgcolor="'
                                                       +
                                                       varBgColor + '">'
                                                       +
                                                       '<FONT size="'
                                                       +
                                                       varFontsize + '">' +
                                                       varname
                                                       +
                                                       '</FONT>' + varBoldf)
                                             else
                                                  if varNameView = false then
                                                  begin
                                                       if varTelYeyak <> '1' then
                                                       begin
                                                            Text.Insert(0,
                                                                 varBolds + '<FONT color="'
                                                                 +
                                                                 varFontColor + '" bgcolor="'
                                                                 +
                                                                 varBgColor + '">'
                                                                 +
                                                                 '<FONT size="'
                                                                 +
                                                                 varFontsize + '">' +
                                                                 varChart
                                                                 +
                                                                 '</FONT>' + varBoldF);
                                                       end
                                                       else
                                                       begin
                                                            Text.Insert(0,
                                                                 varBolds + '<FONT color="'
                                                                 +
                                                                 varFontColor + '" bgcolor="'
                                                                 +
                                                                 varBgColor + '">'
                                                                 + '<FONT size="'
                                                                 +
                                                                 varFontsize + '">'
                                                                 + varName
                                                                 +
                                                                 '</FONT>' + varBoldF);
                                                       end;
                                                  end
                                                  else
                                                       Text.Insert(0,
                                                            varBolds + '<FONT color="'
                                                            +
                                                            varFontColor + '" bgcolor="'
                                                            +
                                                            varBgColor + '">'
                                                            + '<FONT size="'
                                                            +
                                                            varFontsize + '">'
                                                            + '(' + varChart + ')' +
                                                            varname
                                                            +
                                                            '</FONT>' + varBoldF);

                                        end;
                                   end
                                   else
                                   begin
                                        if (varPos = '0')
                                             or (varpos = '1')
                                             or (varpos = '2')
                                             or (varpos = '3') then
                                        begin

                                             if varChartView = false then
                                                  Text.Insert(0,
                                                       varBolds + '<U><FONT color="clBlue" bgcolor="' +
                                                       varBgColor + '">'
                                                       +
                                                       '<FONT size="'
                                                       +
                                                       varFontsize + '">' +
                                                       varItalicS + varname +
                                                       varItalicF
                                                       +
                                                       '</FONT></U>' + varBoldF)
                                             else
                                                  if varNameView = false then
                                                  begin
                                                       if varTelYeyak <> '1' then
                                                       begin
                                                            Text.Insert(0,
                                                                 varBolds + '<FONT color="'
                                                                 +
                                                                 varFontColor + '" bgcolor="'
                                                                 +
                                                                 varBgColor + '">'
                                                                 +
                                                                 '<FONT size="'
                                                                 +
                                                                 varFontsize + '">' +
                                                                 varItalicS + varChart +
                                                                 varItalicF
                                                                 +
                                                                 '</FONT>' + varBoldF);
                                                       end
                                                       else
                                                       begin
                                                            Text.Insert(0,
                                                                 varBolds + '<FONT color="'
                                                                 +
                                                                 varFontColor + '" bgcolor="'
                                                                 +
                                                                 varBgColor + '">'
                                                                 +
                                                                 '<FONT size="'
                                                                 +
                                                                 varFontsize + '">' +
                                                                 varItalicS + varName +
                                                                 varItalicF
                                                                 +
                                                                 '</FONT>' + varBoldF);
                                                       end;
                                                  end
                                                  else
                                                       Text.Insert(0,
                                                            varBolds + '<U><FONT color="clBlue" bgcolor="' +
                                                            varBgColor + '">'
                                                            +
                                                            '<FONT size="'
                                                            +
                                                            varFontsize + '">' +
                                                            varItalicS + '(' + varChart + ')' + varname +
                                                            varItalicF
                                                            +
                                                            '</FONT></U>' + varBoldF);

                                        end
                                        else
                                        begin
                                             if varChartView = false then

                                                  Text.Insert(0,
                                                       varBolds + '<U><FONT color="clBlue" bgcolor="' +
                                                       varBgColor + '">'
                                                       +
                                                       varname
                                                       +
                                                       '</FONT></U>' + varBoldF)
                                             else
                                                  if varNameView = false then
                                                  begin
                                                       if varTelYeyak <> '1' then
                                                       begin
                                                            Text.Insert(0,
                                                                 varBolds + '<FONT color="'
                                                                 +
                                                                 varFontColor + '" bgcolor="'
                                                                 +
                                                                 varBgColor + '">'
                                                                 +
                                                                 '<FONT size="'
                                                                 +
                                                                 varFontsize + '">' +
                                                                 varChart +

                                                                 '</FONT>' + varBoldF);
                                                       end
                                                       else
                                                       begin
                                                            Text.Insert(0,
                                                                 varBolds + '<FONT color="'
                                                                 +
                                                                 varFontColor + '" bgcolor="'
                                                                 +
                                                                 varBgColor + '">'
                                                                 +
                                                                 '<FONT size="'
                                                                 +
                                                                 varFontsize + '">' +
                                                                 varName +
                                                                 '</FONT>' + varBoldF);
                                                       end;
                                                  end
                                                  else
                                                       Text.Insert(0,
                                                            varBolds + '<U><FONT color="clBlue" bgcolor="' +
                                                            varBgColor + '">'
                                                            + '<FONT size="'
                                                            +
                                                            varFontsize + '">'
                                                            + '(' + varChart + ')' +
                                                            varname
                                                            +
                                                            '</FONT></U>' + varBoldF);

                                        end;
                                   end;

                                   //   if varChartView = false then
                                   Text.Insert(1, '<Z>' + '(' +
                                        varChart + ')' + '</Z>');
                                   //   else
                                   //        Text.Insert(1, '(' + varChart +
                                   //             ')');

                                      //Text.Insert(2, ') ' + #10#13);
                                   Text.Insert(2, '');

                                   if trim(varRemark) <> '' then
                                   begin
                                        varRemark :=
                                             StringReplace(varRemark, '&',
                                             '&&', [rfReplaceAll,
                                             rfIgnoreCase]);
                                        varRemark :=
                                             StringReplace(varRemark, ';',
                                             '<Br />', [rfReplaceAll,
                                             rfIgnoreCase]);
                                        Text.Insert(3, varBoldS+'<FONT color="'
                                             +
                                             varFontColor2 + '">' +
                                             '<FONT size="'
                                             +
                                             varFontsize + '">' +
                                             ' (' +
                                             varRemark + ')' +
                                             '</FONT>'+varBoldF)
                                             //+ #10#13)
                                   end
                                   else
                                        Text.Insert(3, ''); //+ #10#13);

                                   Text.Insert(4, '<Z>' +
                                        inttostr(varidn)); // + #10#13);
                                   Text.Insert(5, varDate);
                                   Text.Insert(6, varMemo);
                                   if varStat2 <> '' then
                                        Text.Insert(7,
                                             '<FONT color="clRed">'
                                             + varStat + '(' +
                                             varStat2 + ')'
                                             + '</FONT>' +
                                             '</Z>')
                                   else
                                        Text.Insert(7,
                                             '<FONT color="clRed">'
                                             + varStat
                                             + '</FONT>' +
                                             '</Z>');
                                   Text.Insert(8, '<Z>' + varTel +
                                        '</Z>');




                                   Text.Insert(9, '<Z>' + varChamgo +
                                        '</Z>');






                                   //힌트에서는 칼라가 안받음
                                   popupmenu := varpopup;
                                              //  showmessage(  popupmenu.Items[15].Caption);
                                   if varDaegiKind= 2 then
                                   begin
                                       popupmenu.Items[14].Visible:=true;
                                        popupmenu.Items[15].Visible:=true;
                                   end
                                   else
                                   begin
                                       popupmenu.Items[14].Visible:=false;
                                       popupmenu.Items[15].Visible:=true;
                                    end;


                                   {   //팝업메뉴의 디저블 상태를 정한다.
                                      //수납이 완료된 상태에서는 미내원처리 메뉴를 감춘다.
                                      if varPos='3' then
                                      begin
                                       popupmenu.Items[2].Visible:=false;
                                      end
                                      else
                                      begin
                                        popupmenu.Items[2].Visible:=true;

                                      end;
                                    }

                              end
                              else
                              begin //쓰기방지 블럭 구간 지정
                                   if varChartView = false then
                                        Text.Insert(0, '<FONT color= clRed>' +
                                             varname
                                             +
                                             '</FONT>')
                                   else
                                   begin
                                       if varname <> '[B]' then
                                        Text.Insert(0, '<FONT color= clRed>' +
                                             '(' + varChart + ')' + varname
                                             +
                                             '</FONT>')
                                             else
                                            Text.Insert(0, '<FONT color= clRed>' +
                                             varname
                                             +
                                             '</FONT>');
                                   end;
                                   Text.Insert(1, '');
                                   //Text.Insert(2, ') ' + #10#13);
                                   Text.Insert(2, '');
                                   Text.Insert(3, varRemark + #10#13);
                                   Text.Insert(4, '<Z>' + inttostr(varidn)
                                        + #10#13);
                                   Text.Insert(5, varDate + '</Z>');
                                   Text.Insert(6, varMemo);
                                   if varStat2 <> '' then
                                        Text.Insert(7,
                                             '<FONT color="clRed">'
                                             + varStat + '(' +
                                             varStat2 + ')'
                                             + '</FONT>' +
                                             '</Z>')
                                   else
                                        Text.Insert(7,
                                             '<FONT color="clRed">'
                                             + varStat
                                             + '</FONT>' +
                                             '</Z>');
                                   Text.Insert(8, '<Z>' + varTel +
                                        '</Z>');

                                   Alignment := taCenter;
                                   // AllowOverlap := False;
                                   Background := True;
                                   Font.Name := 'Tahoma'; //'돋움';//'굴림체';
                                //   Font.Color := clBlue;
                                   Font.Color := stringtocolor(varFontColor2);// clBlue;
                                   if ( trim(fieldByname('f_size').asString) <> '' )
                                  and  (  fieldByname('f_size').asinteger  <> 0 ) then
                                   Font.Size := strtoint(varFontSize) // 15;
                                  else
                                     Font.Size := 15;
                                 if trim(fieldByname('f_bold').asString) = '1' then
                                 begin
                                   Font.Style := [fsBold];
                                 end
                                 else
                                 begin
                                    Font.Style := [fsBold];
                                 end;
                                   popupmenu := varpopup2;

                              end;
                              {..Add('<FONT color=' + varFontColor + '>' + varname
                                   +
                                   '</FONT>' + '(' + varChart + ') ' + #10#13 +
                                   varRemark + #10#13 +
                                   '<Z>' + inttostr(varidn) + #10#13 + varDate + #13
                                   +
                                   '</Z>');
                               }
                              readonly := true;

                              //    fixedPos := true;
                              //    FixedTime := true;
                              //    FixedPosition := true;
                              //    fixedSize := true;

                              tag := varidn;

                              //대기구분
                    // '0', '진료대기'
                    // '1', '진료중'
                    // '2', '수납완료'
                    // '3', '수납대기' 진료완료

                             { if trim(varPos) = '' then
                                     imageId := 37
                              else if trim(varPos) = '0' then
                                     imageId := 110
                              else if trim(varPos) = '1' then
                                     imageId := 111
                              else if trim(varPos) = '2' then
                                     imageId := 112

                              else if trim(varPos) = '3' then
                                     imageId := 113;
                              }

                              // ShowDeleteButton:=true;

                               // Edit;
                               // Planner1.MemoEdit.SelStart := 1;
                               // Planner1.MemoEdit.SelLength := 0;

                              if varalret > 0 then
                              begin
                                   alarm.Active := True;
                                   //alarm.Handler := AlarmMessage1;
                                   alarm.TimeBefore := encodeTime(0,
                                        varAlret,
                                        0, 0);
                                   alarm.NotifyType := anNotes;

                              end;







                         end;

                         //iii:=iii+1;
                         next;

                    end;
                    varPlanner.items.endupdate;

               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('LoadPlan=>' + E.Message);
               varPlanner.items.endupdate;
          end;
     end;
end;

procedure DBDataToPlan_term(varPlanner: Tplanner; varPopup: TPopupmenu;
     varPopup2: TPopupmenu;
     varDate, varDate1, varDate2, varteam
     : string; interval, starttime: integer;
     viewAll: boolean = true);
const
     selectPromise = 'select * from ma_promise' + #10#13 +
          'where pday >=:pday1 and pday<= :pday2' + #10#13 +
          'and name <> '''' ';

     selectPromise_cancel =      ' and cancel <> ''C'' ' + #10#13 +
          'and cancel <> ''R'' ' + #10#13 +
          'and cancel <> ''Y'' ';
     //    'and pos <> ''8'' ' + #10#13 +

var
     varChart: string;
     varname: string;
     varRemark: string;
     varTime: string;
     varinterval: string;
     varPos: string;
     varColor: string;
     varColorto: string;
     varFontColor: string;


     varFontColor2: string; //remark색
     varFontSize: string; //remark글자크기
     varBgColor: string;


     varMemo, varTel, varCancel: string;
     varStat: string;
     varStat2: string;

     varidn: integer;

     varGubun: integer;
     varAlret: integer;
     begintime: integer;
     intervaltime: integer;
     varSelDate: TstringList;
     i, varSelDateindex: integer;
begin
     varSelDate := TStringList.Create;
     varSeldateindex := daysu(strtodate(vardate2), strtodate(vardate1));
     // showmessage(datetoStr(strtodate(vardate1)+1));
     for i := 0 to varSeldateindex do
     begin
          varSelDate.Add(datetoStr(strtodate(vardate1) + i));
     end;
     //  showmessage(varSeldate.Text);
     varPlanner.Items.Clear;
     with dm_f.SqlWork do
     begin
          close;
          sql.Clear;
          sql.Text := selectpromise;
          paramByName('pday1').AsString := varDate1;
          ParamByName('pday2').AsString := varDate2;
          if varTeam <> '0' then
          begin
               sql.Add('and team=:team ');
               ParamByName('team').AsString := varTeam;
          end;

          //      paramByName('team').AsString := varteam;
          open;
          first;
          if not isEmpty then
          begin

               varPlanner.items.BeginUpdate;
               while not eof do
               begin
                    i :=
                         varSelDate.IndexOf(fieldByname('pday').asString);
                    varidn := fieldByname('idn').Asinteger;
                    varChart := fieldByname('chart').AsString;
                    varname := fieldByname('name').AsString;
                    varRemark := fieldByname('remark').asString;
                    varTeam := fieldByname('team').asString;
                    varTime := fieldByname('ptime').asString;
                    varPos := fieldByname('pos').asString;
                    varGubun := i; //fieldByname('gubun').asinteger - 1;
                    varMemo := fieldByname('pMemo').asString;
                    varTel := fieldByname('tel').asString;
                    varPos := fieldByname('pos').asString;
                    varCancel := fieldByname('cancel').asString;

                    if varCancel = 'Y' then
                         varStat := '취소됨'
                    else
                         if varCancel = 'C' then
                              varStat := '취소됨'
                         else
                              if varCancel = 'U' then
                                   varStat := '변경됨'
                              else
                                   varStat := '';
                    //  0:  진료대기
//  1: 진료중
//  2: 수납대기
//  3: 수납완료
//  8: 블럭표시
// 공백 :안온사람

//   4:연락안됨
//   5: 재예약
//   6:  리콜함
//   7:  타치과로감

                    if varPos = '0' then
                         varStat2 := '진료대기'
                    else
                         if varPos = '1' then
                              varStat2 := '진료중'
                         else
                              if varPos = '2' then
                                   varStat2 := '수납대기'
                              else
                                   if varPos = '3' then
                                        varStat2 := '수납완료'
                                   else
                                        if varPos = '9' then
                                             varStat2 := '수납완료'
                                        else
                                             if varPos = '4' then
                                                  varStat2 := '연락안됨'
                                             else
                                                  if varPos = '5' then
                                                       varStat2 := '재예약'
                                                  else
                                                       if varPos = '6' then
                                                            varStat2 := '리콜함'
                                                       else
                                                            if varPos = '7' then
                                                                 varStat2 := '종결'
                                                            else
                                                                 varStat2 := '';

                    if fieldByname('alret').asString <> '' then
                         varAlret := fieldByname('alret').asinteger;
                    varDate := fieldByname('pday').asString;
                    if fieldByname('pinterval').asString <> '' then
                         varinterval :=
                              fieldByname('pinterval').asString
                    else
                         varinterval := '30';

                    if trim(fieldByname('pcolor').asString) <> '' then
                    begin
                         varColor := fieldByname('pcolor').asString;
                         varColorto := fieldByname('pcolor').asString;
                         varFontColor := 'clBlack';

                    end

                    else
                    begin
                         varColor := 'clWhite'; //'$008C8C8C';
                         varColorto := 'clWhite';
                         // '$008C8C8C'; // '$00404040';
                         varFontColor := 'clBlack'; //'clwhite';

                    end;




                             varBgColor := 'clwhite';
                             varFontColor := 'clblack';



                         if trim(varCancel) = 'Y' then
                         begin
                              varBgColor := substr(configvalue.p_ColorCancel_b, 2, ','); //'clgray';
                              varFontColor := substr(configvalue.p_ColorCancel_f, 2, ','); // 'clblack'; //'clblack';
                              varFontColor2 := substr(configvalue.p_ColorCancel_f, 2, ','); // 'clblack'; //'clblack';
                         end
                         else
                              if trim(varCancel) = 'C' then
                              begin
                                   varBgColor := substr(configvalue.p_ColorCancel_b, 2, ','); //'clgray';
                                   varFontColor := substr(configvalue.p_ColorCancel_f, 2, ','); //'clblack';
                                   varFontColor2 := substr(configvalue.p_ColorCancel_f, 2, ','); //'clblack';
                              end
                              else
                                   if trim(varCancel) = 'U' then
                                   begin
                                        varBgColor := substr(configvalue.p_ColorChange_b, 2, ','); //'clpurple';
                                        varFontColor := substr(configvalue.p_ColorChange_f, 2, ','); //'clGreen';
                                        varFontColor2 := substr(configvalue.p_ColorChange_f, 2, ','); //'clGreen';
                                   end
                                   else
                                        if trim(varpos) = '10' then
                                             //접수
                                        begin
                                             varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                             varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                             varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                        end
                                        else
                                        if trim(varpos) = '0' then
                                             //진료대기
                                        begin
                                             varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                             varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                             varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                        end
                                        else
                                             if trim(varpos) = '1' then
                                                  //진료중
                                             begin
                                                  varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); //'clwhite';
                                                  varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                                  varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                             end
                                             else
                                                  if trim(varpos) = '2' then
                                                       //수납대기
                                                  begin
                                                       varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                                       varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                                       varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                                  end
                                                  else
                                                       if trim(varpos) = '3' then
                                                            //수납완료
                                                       begin
                                                            varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                                            varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                                            varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                                       end
                                                       else
                                                            if trim(varpos) = '9' then
                                                                 //수납완료(9)에서 추가
                                                            begin
                                                                 varBgColor := substr(configvalue.p_ColorNewon_b, 2, ','); // 'clwhite';
                                                                 varFontColor := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';
                                                                 varFontColor2 := substr(configvalue.p_ColorNewon_f, 2, ','); // 'clGray';

                                                            end
                                                            else
                                                                 if trim(varpos) = '4' then //연락안됨
                                                                 begin
                                                                      varBgColor := substr(configvalue.p_ColornotCon_b, 2, ','); //'clRed';
                                                                      varFontColor := substr(configvalue.p_ColorNotCon_f, 2, ','); // 'clblack';
                                                                      varFontColor2 := substr(configvalue.p_ColorNotCon_f, 2, ','); // 'clblack';

                                                                 end
                                                                 else
                                                                      if trim(varpos) = '5' then //재예약
                                                                      begin
                                                                           varBgColor := substr(configvalue.p_ColorReyeyak_b, 2, ','); // 'clGreen';
                                                                           varFontColor := substr(configvalue.p_Colorreyeyak_f, 2, ','); // 'clBlack';
                                                                           varFontColor2 := substr(configvalue.p_Colorreyeyak_f, 2, ','); // 'clBlack';

                                                                      end
                                                                      else
                                                                           if trim(varpos) = '6' then //리콜
                                                                           begin
                                                                                varBgColor := substr(configvalue.p_ColorRecall_b, 2, ','); // 'clBlue';
                                                                                varFontColor := substr(configvalue.p_ColorReCall_f, 2, ','); // 'clblack';
                                                                                varFontColor2 := substr(configvalue.p_ColorReCall_f, 2, ','); // 'clblack';

                                                                           end
                                                                           else
                                                                                if trim(varpos) = '7' then //종결
                                                                                begin
                                                                                     varBgColor := substr(configvalue.p_ColorEnd_b, 2, ','); // 'clOlive';
                                                                                     varFontColor := substr(configvalue.p_ColorEnd_f, 2, ','); //'clblack';
                                                                                     varFontColor2 := substr(configvalue.p_ColorEnd_f, 2, ','); //'clblack';

                                                                                end ;





                    begintime := timetoMin(vartime) div interval -
                         StartTime;
                    intervaltime := strtoint(varinterval) div interval;

                    with varPlanner.items.Add do
                    begin

                         //  color := stringtocolor(varColor);
                         //   if varFontColor <> 'clwhite' then
                         //   begin
                         shape := psRect;
                         color := stringtocolor(varColor);
                         colorto := stringtocolor(varColorto);
                         //    end
                         //    else
                         //    begin
                         //         shape := psSkin;
                         //    end;

                         ItemPos := varGubun;
                         ItemBegin := begintime;
                         ItemEnd := begintime + intervaltime;

                         if varPlanner.display.DisplayScale < 50 then
                              CaptionType := ctnone
                         else
                              CaptionType := ctTime;

                         captionFont.Name := '돋움'; //'굴림체';
                         captionFont.Color := clBlue;
                         captionFont.Size := 9;
                         captionBkg := clyellow;
                         captionBkgto := clYellow;
                         {This is an <A href="action">URL</A><BR>
                          and some simple <B>HTML</B><BR>
                          <FONT color="clFuchsia">formatted</FONT> text.
                          <IMG src="idx:3">
                          }

                         if varpos <> '8' then //블럭지정이 아닐때만...
                         begin


                              Text.Insert(0, '<FONT color="'
                                 +
                                 varFontColor + '" bgcolor="'
                                 +
                                 varBgColor + '">' +
                                 varname
                                   +
                                   '</FONT>' + '(');
                              Text.Insert(1, varChart);
                              Text.Insert(2, ') ' + #10#13);
                              Text.Insert(3, varRemark + #10#13);
                              Text.Insert(4, '<Z>' + inttostr(varidn)
                                   + #10#13);
                              Text.Insert(5, varDate + '</Z>');

                              Text.Insert(6, varMemo);
                              if varStat2 <> '' then
                                   Text.Insert(7,
                                        '<FONT color="clRed">'
                                        + varStat + '(' +
                                        varStat2 + ')'
                                        + '</FONT>' +
                                        '</Z>')
                              else
                                   Text.Insert(7,
                                        '<FONT color="clRed">'
                                        + varStat
                                        + '</FONT>' +
                                        '</Z>');
                              Text.Insert(8, '<Z>' + varTel +
                                   '</Z>');

                              {
                              Text.Add('<FONT color=' + varFontColor + '>' + varname
                                   +
                                   '</FONT>' + '(' + varChart + ') ' + #10#13 +
                                   varRemark + #10#13 +
                                   '<Z>' + inttostr(varidn) + #10#13 + varDate + #13
                                   +
                                   '</Z>');
                                   }
                              popupMenu := varpopup;

                         end
                         else
                         begin  //블럭지정


                              Text.Insert(0, '<FONT color=' +
                                   varFontColor + '>' +
                                   varname
                                   +
                                   '</FONT>' + '(');
                              Text.Insert(1, '');
                              //Text.Insert(2, ') ' + #10#13);
                              Text.Insert(2, '');
                              Text.Insert(3, varRemark + #10#13);
                              Text.Insert(4, '<Z>' + inttostr(varidn)
                                   + #10#13);
                              Text.Insert(5, varDate + '</Z>');

                              Text.Insert(6, varMemo);
                              if varStat2 <> '' then
                                   Text.Insert(7,
                                        '<FONT color="clRed">'
                                        + varStat + '(' +
                                        varStat2 + ')'
                                        + '</FONT>' +
                                        '</Z>')
                              else
                                   Text.Insert(7,
                                        '<FONT color="clRed">'
                                        + varStat
                                        + '</FONT>' +
                                        '</Z>');
                              Text.Insert(8, '<Z>' + varTel +
                                   '</Z>');

                              Alignment := taCenter;
                              AllowOverlap := False;
                              Background := True;
                              Font.Name := 'Tahoma'; //'돋움';// '굴림체';
                              Font.Color := stringtocolor(varFontColor);// clBlue;
                              Font.Size := 15;
                              Font.Style := [fsBold];

                              popupMenu := varpopup2;
                         end;
                         readonly := true;

                         //    fixedPos := true;
                         //    FixedTime := true;
                         //    FixedPosition := true;
                         //    fixedSize := true;

                         tag := varidn;

                         shape := psRect; // psSkin;
                         // '0', '진료대기'
                         // '1', '수납완료'
                         // '2', '수납대기' 진료완료
                         // '3', '진료중'

                         if trim(varPos) = '' then
                              imageId := 37
                         else
                              if trim(varPos) = '0' then
                                   imageId := 33
                              else
                                   if trim(varPos) = '1' then
                                        imageId := 34
                                   else
                                        if trim(varPos) = '2' then
                                             imageId := 35

                                        else
                                             if trim(varPos) = '9' then
                                                  imageId := 36

                                             else
                                                  if trim(varPos) = '3' then
                                                       imageId := 36;

                         // ShowDeleteButton:=true;

                          // Edit;
                          // Planner1.MemoEdit.SelStart := 1;
                          // Planner1.MemoEdit.SelLength := 0;

                         if varalret > 0 then
                         begin
                              alarm.Active := True;
                              //alarm.Handler := AlarmMessage1;
                              alarm.TimeBefore := encodeTime(0,
                                   varAlret,
                                   0, 0);
                              alarm.NotifyType := anNotes;

                         end;

                    end;
                    next;

               end;
               varPlanner.items.endupdate;

          end;
     end;
     varSelDate.Free;
end;

procedure Promise_DayMemosave(varDay, varTeam, varGubun, varRemark: string);
const
     SQL_INSERT_DATA = 'INSERT INTO ma_promise_memo      ' + #13#10
          +
          ' (pdate, pteam, pgugan,pmemo)          ' + #13#10
          +
          ' VALUES                                              ' + #13#10
          +
          ' (:pdate, :pteam, :pgugan,:pmemo)     ';

     SQL_SELECT_DATA = 'select * from ma_promise_memo' + #13#10 +
          '             WHERE pdate  = :pdate  and pteam = :pteam  and pgugan = :pgugan';
     SQL_UPDATE_DATA = 'UPDATE ma_promise_memo SET ' + #13#10 +
          '                    pmemo = :pmemo' + #13#10 +
          '             WHERE pdate  = :pdate  and pteam = :pteam  and pgugan = :pgugan';
     SQL_Delete_Data = 'Delete From ma_promise_memo ' + #13#10 +
          '             WHERE pdate  = :pdate  and pteam = :pteam  and pgugan = :pgugan';
begin

     try
          with Dm_f.SqlWork do
          begin
               close;
               sql.clear;
               sql.text := SQL_SELECT_DATA;
               ParamByName('pdate').AsString := varday;
               ParamByName('pTEAM').AsString := varTeam;
               ParamByName('pGUgaN').AsString := VarGubun;
               open;
               if isEmpty then
               begin
                    close;
                    sql.clear;

                    SQL.Text := SQL_INSERT_DATA;
               end
               else
               begin
                    close;
                    sql.clear;
                    SQL.Text := SQL_UPDATE_DATA;
               end;
               ParamByName('pdate').AsString := varday;
               ParamByName('pTEAM').AsString := varTeam;
               ParamByName('pGUgaN').AsString := VarGubun;
               ParamByName('pmemo').AsString := varRemark;
               ExecSQL;
          end;
     except
          on E: Exception do
          begin
               ShowMessage(E.Message + ' [예약 메모 저장오류]');
          end;
     end;
end;

procedure Promise_DisplasyLunch(varPlanner: Tplanner;
     varColcount, Begintime, intervaltime: integer; varColor, varCap: string);
var
     i: integer;
begin

     varPlanner.items.BeginUpdate;
     for i := 0 to varColcount - 1 do
     begin

          with varPlanner.items.Add do
          begin

               { fixedPos := false;
                fixedposition := false;
                fixedTime := false;
                fixedSize := false;
                AllowOverlap := true;
                Shadow := false;
                trackVisible:=true;
               }
               fixedPos := true;
               fixedposition := true;
               fixedTime := true;
               fixedSize := true;
               AllowOverlap := true;
               trackVisible := false;
               Shadow := True;

               shape := psRect;
               color := stringtocolor(varColor);
               colorto := stringtocolor(varColor);
               trackColor := clRed;

               ItemPos := i;
               ItemBegin := begintime;
               ItemEnd := begintime + intervaltime;

               if varPlanner.display.DisplayScale < 50 then
                    CaptionType := ctnone
               else
                    CaptionType := ctTime;

               captionFont.Name := '돋움'; //'굴림체';
               captionFont.Color := clBlue;
               captionFont.Size := 9;
               captionBkg := clyellow;
               captionBkgto := clYellow;
               {This is an <A href="action">URL</A><BR>
and some simple <B>HTML</B><BR>
<FONT color="clFuchsia">formatted</FONT> text.
<IMG src="idx:3">
}

               Text.Insert(0, '<FONT color= clRed>' + varCap + '</FONT>');
               { Text.Insert(1, '');
                Text.Insert(2, '');
                Text.Insert(3, 'varRemark' + #10#13);
                Text.Insert(4, '<Z>' + 'inttostr(varidn)' + #10#13);
                Text.Insert(5, 'varDate' + '</Z>');
                Text.Insert(6, 'varMemo');
                Text.Insert(7, '<FONT color="clRed">' + 'varStat' + '</FONT>' + '</Z>');
                     Text.Insert(8, '<Z>' + 'varTel' + '</Z>');
                }
               Alignment := taCenter;
               // AllowOverlap := False;

               Background := false; //이것이 true면 복지부동
               Font.Name := 'Tahoma'; //'굴림체';
               Font.Color := clBlue;
               Font.Size := 15;
               Font.Style := [fsBold];

               //  popupmenu := varpopup2;

               tag := -1;
          end;
          //   readonly := true;

     end;
     varPlanner.items.EndUpdate;
end;
end.

