unit uSendSMS;
interface
uses sysutils, Dialogs, Classes, SMSCALLLib_TLB;

function isEmptyPromise(varPhone, varDate: string): boolean;
function SendMessage_One_Now(VarSMSCallMsg: TSMSCALLMSG;
       varGogekName: string;
       varGogekId: string;
       varDate: string;
       varyTime: string;
       varRecvNoTong: string;
       varRecvNoGuk: string;
       varRecvNoBun: string;
       varCont: string): integer;   //지금 바로  전송

function SendMessage_One(VarSMSCallMsg: TSMSCALLMSG; varGogekName: string;
       varGogekId: string; varDate: string; varyTime: string;
       varRecvNoTong: string; varRecvNoGuk: string;
       varRecvNoBun: string; varDay: string;
       varTime: string; varCont: string): integer;  //예약전송
function CancelSMS(VarSMSCallMsg: TSMSCALLMSG; varGogekName: string;
       varGogekId: string;
       varRecvNoTong: string; varRecvNoGuk: string; varRecvNoBun: string;
       varDay:
       string): integer;

procedure LogWrite(varID: string; varName: string; varNumber: string;
       varContent: string);
function ErrorCheck(ECode: integer): string;

function smsLogin2(VarSMSCallMsg: TSMSCALLMSG) :integer;


implementation

uses uConfig, uDm, uFunctions;

procedure LogWrite(varID: string; varName: string; varNumber: string;
       varContent: string);
var
       stFileText: TStringList;
       sFilePath: string;
       sFileName: string;
       varSendTime: string;
begin

       sFilePath := GetConfigDir + 'SmsLog';
       sFileName := sFilePath + '\SMS' + formatDateTime('YYYYMMDD', now) +
              '.Log';
       stFileText := TStringList.Create;
       varSendTime := formatDateTime('YYYYMMDDHHMMSS', now);

       if not DirectoryExists(sFilePath) then
       begin
              if not CreateDir(sFilePath) then
                     raise Exception.Create('Cannot create' + sFilePath);

       end;

       if FileExists(sFileName) then
       begin
              stFileText.LoadFromFile(sFileName);
              stFileText.Insert(0, varSendTime + '>>' + varID + '(' + varName +
                     ')'
                     + varNumber + ':' + varContent);
              stFileText.SaveToFile(sFileName);
       end
       else
       begin
              stFileText.Insert(0, varSendTime + '>>' + varID + '(' + varName +
                     ')'
                     + varNumber + ':' + varContent);
              stFileText.SaveToFile(sFileName);
       end;
end;


function smsLogin2(VarSMSCallMsg: TSMSCALLMSG) :integer;
var
     nRet2, nTotal, nCall:integer;
      sReqTel1, sReqtel2,
          sReqtel3:widestring;
      vYday, sret: string;
       sCust,sCustName: widestring;
       vId, vPass :wideString;
begin
     VPass := configvalue.varSmspass;
     VId := configvalue.varsmsId;
     sCust := dm_f.smsCustCode; //'OV-JJG-9R';
     sCustName := configvalue.varsaupname;



      result :=
          VarSMSCallMsg.SMSLogin(VId, VPass, sCust, sCustName,
           sReqTel1, sReqtel2,  sReqtel3, nTotal, nCall );

end;

function CancelSMS(VarSMSCallMsg: TSMSCALLMSG; varGogekName: string;
       varGogekId: string;
       varRecvNoTong: string; varRecvNoGuk: string; varRecvNoBun: string;
       varDay: string): integer;
var
       VbstrType: WideString;
       vDwMember, nRet: Integer;
       sCust, vId, vYday, sret: string;
       nLogin:integer;
begin
       //sCust := 'WW-NYA-BN'; //인포메디계정 테스트
       sCust := dm_f.smsCustCode; //'OV-JJG-9R';
       result:=-1;
             //Login
       nLogin:=  smsLogin2(VarSMSCallMsg);
       if   nLogin <> 1 then
       begin

                   showmessage('선택하신 예약전송 취소에 실패하였습니다.'+#10#13+inttostr(nLogin));
                   exit;

       end;


       try
              VId := configvalue.varsmsId;
              VYDay := deldash(varDay);
              VbstrType := '1';
              vDwMember := 1;






              // Cancel
              sRet := VarSMSCallMsg.UserReservedCancel(VYDay,
                     VId,
                     sCust, varRecvNoTong, varRecvNoGuk, varRecvNoBun,
                     VDwMember, VbstrType);
              nRet := StrToInt(SubStr(sRet, 1, ','));

              result:=nRet;

              if nRet = 1 then
              begin
                     with Dm_f.SqlWork do
                     begin
                            SQL.Text := 'Update ma_sms_sendlist Set' +
                                   #10#13
                                   +
                                   'SBSFRECALL=:SBSFRECALL' + #10#13 +
                                   'Where SbSendDate=:SbSendDate and SbHp=:SbHp';
                            ParamByName('SbHp').AsString :=
                                   varRecvNoTong + '-' + varRecvNoGuk + '-' +
                                   varRecvNoBun;
                            ParamByName('SbSendDate').AsString :=
                                   varDay;
                            ParamByName('SBSFRECALL').AsString := '3';
                            //취소한건 3을 쓴다.
                            execsql;
                     end;

                     LogWrite(ErrorCheck(nRet) + varGogekId,
                            varGogekName, varRecvNoTong + '-' + varRecvNoGuk +
                            '-' +
                            varRecvNoBun, '');

                     { showmessage('선택하신 ' + varDay +
                             '일자의' + #10#13 +
                             '<' + varGogekName + '(' +
                             varRecvNoTong + '-' + varRecvNoGuk + '-' +
                             varRecvNoBun + ')' + '>' +
                             '님의 예약전송을 취소하였습니다.');
                      //sms_f.ViewRestmoney;
                      }
              end
              else
              begin
                     showmessage('선택하신 예약전송 취소에 실패하였습니다.');
                     LogWrite('예약전송삭제 실패>>' + ErrorCheck(nRet) +
                            varGogekId,
                            varGogekName, varRecvNoTong + '-' + varRecvNoGuk +
                            '-' +
                            varRecvNoBun, '');
                     {showmessage('선택하신 ' + varDay +
                            '일자의' + #10#13 +
                            '<' + varGogekName + '(' +
                            varRecvNoTong + '-' + varRecvNoGuk + '-' +
                            varRecvNoBun + ')' + '>' +
                            '님의 예약전송 취소에 실패하였습니다.');
                      }
              end;

       except
              on E: Exception do
              begin

                     LogWrite('예약전송삭제실패>>' + ErrorCheck(nRet) +
                            varGogekId,
                            varGogekName, varRecvNoTong + '-' + varRecvNoGuk +
                            '-' +
                            varRecvNoBun, '');
                     {showmessage('선택하신 ' + varDay +
                            '일자의' + #10#13 +
                            '<' + varGogekName + '(' +
                            varRecvNoTong + '-' + varRecvNoGuk + '-' +
                            varRecvNoBun + ')' + '>' +
                            '님의 예약전송 취소에 실패하였습니다.');
                      }
              end;

       end;
end;

function SendMessage_One(VarSMSCallMsg: TSMSCALLMSG; varGogekName: string;
       varGogekId: string;
       varDate: string;  //예약일,
       varyTime: string; // 예약시간
       varRecvNoTong: string; varRecvNoGuk: string; varRecvNoBun: string;
       varDay: string;//예약전송일
        varTime: string; //예약전송시간
        varCont: string): integer;   //지정일 예약 전송
const
       SQL_INSERT_DATA = 'INSERT INTO ma_sms_sendlist                    ' +
              #13#10 +
              '(SBCode, SBChart,SBName,SBTel,SBMail,     ' + #13#10 +
              'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
              'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
              'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL)' + #13#10 +
              'VALUES                                              ' + #13#10 +
              '(:SBCode, :SBChart, :SBName, :SBTel,:SBMail,     ' + #13#10 +
              ':SBHp,:SBContent, :SBRegDate, :SBSendDate,      ' + #13#10 +
              ':SBSendTime, :SBZip, :SBAdd, :SBQty, :SBGroup,:SBCHOICE,       ' + #13#10
              +
              ':SBSFSMS, :SBSFMAIL, :SBSFFAX, :SBSFDM, :SBSFRECALL)';

       SQL_INSERT_DATA2 = 'INSERT INTO ma_sms_sendResult                    ' +
              #13#10 +
              ' (SRCode, SRDate, SRTime, SRResult,SRResult2)                          ' + #13#10
              +
              ' VALUES                                              ' + #13#10 +
              ' (:SRCode, :SRDate, :SRTime, :SRResult,:SRResult2)                        ';

var
       Vtong,
              VGuk,
              VBun,
              VName,
              Vtong2,
              VGuk2,
              VBun2,
              VMem,
              VId,
              VPass,
              VYDay,
              VYTime,
              VTel, sCust, sCustname,
              vMonth, vDay, vHour, vMin
              : WideString;

       MaxSBcode: string;
       nRet, nRet2: integer;
       nUnCost, nRem: Integer;
              nLogin:integer;
begin
       Vtong := '';
       VGuk := '';
       VBun := '';
       VName := '';
       Vtong2 := '';
       VGuk2 := '';
       VBun2 := '';
       VMem := '';
       VPass := '';
       VId := '';
       sCust := dm_f.smsCustCode; //'OV-JJG-9R';
       VPass := configvalue.varSmspass;
       VId := configvalue.varsmsId;

       sCustname := configvalue.varsaupname;
       VTel := configvalue.varTel1;
       vMonth := Copy(varDate, 6, 2);
       vDay := Copy(vardate, 9, 2);



       nLogin:=  smsLogin2(VarSMSCallMsg);
       if   nLogin <> 1 then
       begin

                   showmessage('선택하신 예약전송 취소에 실패하였습니다.'
                        + #10#13 + inttostr(nLogin));
                   exit;

       end;



       if varYTime <> '' then
       begin
              vHour :=   HangeulTime(Copy(varyTime, 1, 2));


             
              if configvalue.varSMSConvMin = '1' then
              begin

                if ( Copy(varyTime, 4, 2)  < '30') 
                    then
                     vMin :=   HangeulMin('00')
                    else
                     vMin :=   HangeulMin('30');
              end
              else
              begin
                 vMin :=    HangeulMin(Copy(varyTime, 4, 2));
              end;
       end
       else
       begin
              vHour := '';
              vMin := '';
       end;



       VMem := varCont;
       VMem := StringReplace(VMem, '+aaa+', sCustname, [rfReplaceAll,
              rfIgnoreCase]);
       VMem := StringReplace(VMem, '+ddd+', varGogekName, [rfReplaceAll,
              rfIgnoreCase]);

       vMem := StringReplace(vMem, '+dd+',
              vDay,
              [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem, '+hh+',
              vHour,
              [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem, '+mm+',
              vMin,
              [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem,
              '+xxxx+', '30',
              [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem, '+rr+',
              vMonth, [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem, '+ccc+',
              '',
              [rfReplaceAll, rfIgnoreCase]);

       Vtong := varRecvNoTong;
       VGuk := varRecvNoGuk;
       VBun := varRecvNoBun;
       VName := varGogekName;
       VYDay := varDay;
       VYTime := varTime; //'110000';

       if (trim(vTong) = '') or (trim(vGuk) = '') or (trim(vBun) = '') then
       begin
              showmessage('[' + vMem + '] (를)을 ' + Vtong + '-' + vGuk + '-' +
                     vBun
                     + '(으)로는 호출할 수 없습니다.' + #10#13 +
                     '휴대전화 번호를 확인하시고 다시 등록해 주십시오.');
              // exit;
       end;
       Vtong2 := SubStr(Vtel, 1, '-');
       VGuk2 := SubStr(Vtel, 2, '-');
       VBun2 := SubStr(Vtel, 3, '-');

       nRet2 :=
              VarSmscallmsg.SMSLogin(VId, VPass, sCust, sCustName, VTong2,
              VGuk2, VBun2, nRem, nUnCost);

       if (nRet2 = 1) or  (nRet2 = 88) then
       begin
              Vtong2 := SubStr(Vtel, 1, '-');
              VGuk2 := SubStr(Vtel, 2, '-');
              VBun2 := SubStr(Vtel, 3, '-');
              nRet := VarSmscallmsg.SMSSendUnit(1, VId, sCustname, sCust,
                     sCustName,
                     VTong, VGuk, VBun,
                     VName,
                     VTong2, VGuk2, VBun2,
                     Trim(VMem), VYDay, VYTime, nRem, nUnCost);
              //전송 결과 저장
              with Dm_f.SqlWork do
              begin
                     close;
                     sql.clear;
                     sql.add('select max(SBCode) MSBcode from ma_sms_sendList');
                     open;
                     MaxSBCode := FieldByName('MSBcode').AsString;

                     close;
                     sql.clear;
                     SQL.Text := SQL_INSERT_DATA2;
                     if MaxSBCode <> '' then
                            ParamByName('SRCODE').AsString :=
                                   FormatFloat('0000000000',
                                   (StrToInt(MaxSBcode) + 1))
                     else
                            ParamByName('SRCODE').AsString := '0000000001';
                     ParamByName('SRDate').AsString :=
                            FormatDateTime('YYYY-MM-DD',
                            now);
                     ParamByName('SRTime').AsString := FormatDateTime('HH:MM',
                            now);
                     ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
                     ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
                     ExecSQL;

                     //전송 세부 결과 저장
                     close;
                     sql.clear;
                     sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
                     open;
                     MaxSBCode := FieldByName('MSBcode').AsString;

                     close;
                     sql.clear;
                     SQL.Text := SQL_INSERT_DATA;
                     if MaxSBCode <> '' then
                            ParamByName('SBCODE').AsString :=
                                   FormatFloat('0000000000',
                                   (StrToInt(MaxSBcode) + 1))
                     else
                            ParamByName('SBCODE').AsString := '0000000001';
                     ParamByName('SBChart').AsString := varGogekId;
                     ParamByName('SBName').AsString := varGogekName;
                     ParamByName('SBTel').AsString := '';
                     ParamByName('SBMail').AsString := '';
                     ParamByName('SBHp').AsString := varRecvNoTong + '-' +
                            varRecvNoGuk
                            + '-' + varRecvNoBun;
                     ParamByName('SBContent').AsString := VMem;
                     ParamByName('SBRegDate').AsString :=
                            FormatDateTime('YYYY-MM-DD',
                            now);
                     ParamByName('SBZip').AsString := '';
                     ParamByName('SBAdd').AsString := '';
                     ParamByName('SBQty').AsString := '';
                     ParamByName('SBGroup').AsString := '1';
                     ParamByName('SBSFSMS').AsString := '1';
                     ParamByName('SBSFMAIL').AsString := '';
                     ParamByName('SBSFFAX').AsString := '';
                     ParamByName('SBSFDM').AsString := '';
                     ParamByName('SBSFRECALL').AsString := '1';
                     ParamByName('SBSendDate').AsString := VYDay;
                     ParamByName('SBSendTime').AsString := copy(VYTime, 1, 2) +
                            ':' +
                            copy(VYTime, 3, 2);
                     ParamByName('SBCHOICE').AsString := '1';
                     //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL
                     ExecSQL;

              end;

              if nRet <> 1 then
              begin
                     result := nRet;

                     LogWrite(ErrorCheck(nRet) + ':' + varGogekId,
                            varGogekName, varRecvNoTong + '-' + varRecvNoGuk +
                            '-' +
                            varRecvNoBun, VMem);
                     { Showmessage('[' + ErrorCheck(nRet) + ']' +
                             '메시지전송에 실패하였습니다.');
                         }//   Showmessage('메시지를 전송하였습니다.')

                   // else
                    //     Showmessage('메시지전송에 실패하였습니다.');
              end
              else
              begin
                     result := nRet;

                     LogWrite(varGogekId, varGogekName, varRecvNoTong + '-' +
                            varRecvNoGuk + '-' + varRecvNoBun, VMem);

              end;
             // result := nRet2;
       end
       else
       begin
              LogWrite('로그인 실패:' + ErrorCheck(nRet2) + ':' +
                     varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk
                     + '-'
                     +
                     varRecvNoBun, VMem);
              showmessage('로그인 실패:' + ErrorCheck(nRet2) + ':' + VId);
              //+ VPass+ sCust+ sCustName+ VTong2+ VGuk2+ VBun2+ nRem+ nUnCost);
              result := nRet2;
       end;
end;



function SendMessage_One_Now(VarSMSCallMsg: TSMSCALLMSG;
       varGogekName: string;
       varGogekId: string;
       varDate: string;   //예약일
       varyTime: string;  //예약시간
       varRecvNoTong: string;
       varRecvNoGuk: string;
       varRecvNoBun: string;
       varCont: string): integer;   //지금 바로  전송
const
       SQL_INSERT_DATA = 'INSERT INTO ma_sms_sendlist                    ' +
              #13#10 +
              '(SBCode, SBChart,SBName,SBTel,SBMail,     ' + #13#10 +
              'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
              'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
              'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL)' + #13#10 +
              'VALUES                                              ' + #13#10 +
              '(:SBCode, :SBChart, :SBName, :SBTel,:SBMail,     ' + #13#10 +
              ':SBHp,:SBContent, :SBRegDate, :SBSendDate,      ' + #13#10 +
              ':SBSendTime, :SBZip, :SBAdd, :SBQty, :SBGroup,:SBCHOICE,       ' + #13#10
              +
              ':SBSFSMS, :SBSFMAIL, :SBSFFAX, :SBSFDM, :SBSFRECALL)';

       SQL_INSERT_DATA2 = 'INSERT INTO ma_sms_sendResult                    ' +
              #13#10 +
              ' (SRCode, SRDate, SRTime, SRResult,SRResult2)                          ' + #13#10
              +
              ' VALUES                                              ' + #13#10 +
              ' (:SRCode, :SRDate, :SRTime, :SRResult,:SRResult2)                        ';

var
       Vtong,
              VGuk,
              VBun,
              VName,
              Vtong2,
              VGuk2,
              VBun2,
              VMem,
              VId,
              VPass,
              VYDay,
              VYTime,
              VTel, sCust, sCustname,
              vMonth, vDay, vHour, vMin
              : WideString;

       MaxSBcode: string;
       nRet, nRet2: integer;
       nUnCost, nRem: Integer;
              nLogin:integer;
begin
       Vtong := '';
       VGuk := '';
       VBun := '';
       VName := '';
       Vtong2 := '';
       VGuk2 := '';
       VBun2 := '';
       VMem := '';
       VPass := '';
       VId := '';
       sCust := dm_f.smsCustCode; //'OV-JJG-9R';
       VPass := configvalue.varSmspass;
       VId := configvalue.varsmsId;

       sCustname := configvalue.varsaupname;
       VTel := configvalue.varTel1;
       vMonth := Copy(varDate, 6, 2);
       vDay := Copy(vardate, 9, 2);





       if varYTime <> '' then
       begin
              vHour :=   HangeulTime(Copy(varyTime, 1, 2));


             
              if configvalue.varSMSConvMin = '1' then
              begin

                if ( Copy(varyTime, 4, 2)  < '30') 
                    then
                     vMin :=   HangeulMin('00')
                    else
                     vMin :=   HangeulMin('30');
              end
              else
              begin
                 vMin :=    HangeulMin(Copy(varyTime, 4, 2));
              end;
       end
       else
       begin
              vHour := '';
              vMin := '';
       end;



       VMem := varCont;
       VMem := StringReplace(VMem, '+aaa+', sCustname, [rfReplaceAll,
              rfIgnoreCase]);
       VMem := StringReplace(VMem, '+ddd+', varGogekName, [rfReplaceAll,
              rfIgnoreCase]);

       vMem := StringReplace(vMem, '+dd+',
              vDay,
              [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem, '+hh+',
              vHour,
              [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem, '+mm+',
              vMin,
              [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem,
              '+xxxx+', '30',
              [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem, '+rr+',
              vMonth, [rfReplaceAll, rfIgnoreCase]);
       vMem := StringReplace(vMem, '+ccc+',
              '',
              [rfReplaceAll, rfIgnoreCase]);

       Vtong := varRecvNoTong;
       VGuk := varRecvNoGuk;
       VBun := varRecvNoBun;
       VName := varGogekName;

       if (trim(vTong) = '') or (trim(vGuk) = '') or (trim(vBun) = '') then
       begin
              showmessage('[' + vMem + '] (를)을 ' + Vtong + '-' + vGuk + '-' +
                     vBun
                     + '(으)로는 호출할 수 없습니다.' + #10#13 +
                     '휴대전화 번호를 확인하시고 다시 등록해 주십시오.');
              // exit;
       end;
       Vtong2 := SubStr(Vtel, 1, '-');
       VGuk2 := SubStr(Vtel, 2, '-');
       VBun2 := SubStr(Vtel, 3, '-');

       nRet2 :=
              VarSmscallmsg.SMSLogin(VId, VPass, sCust, sCustName, VTong2,
              VGuk2, VBun2, nRem, nUnCost);

       if (nRet2 = 1) or  (nRet2 = 88) then
       begin
              Vtong2 := SubStr(Vtel, 1, '-');
              VGuk2 := SubStr(Vtel, 2, '-');
              VBun2 := SubStr(Vtel, 3, '-');

              nRet := VarSmscallmsg.SMSSendUnit(1, VId, sCustname, sCust,
                     sCustName,
                     VTong, VGuk, VBun,
                     VName,
                     VTong2, VGuk2, VBun2,
                     Trim(VMem),  '00000000', '000000', nRem, nUnCost);

              //전송 결과 저장
              with Dm_f.SqlWork do
              begin
                     close;
                     sql.clear;
                     sql.add('select max(SBCode) MSBcode from ma_sms_sendList');
                     open;
                     MaxSBCode := FieldByName('MSBcode').AsString;

                     close;
                     sql.clear;
                     SQL.Text := SQL_INSERT_DATA2;
                     if MaxSBCode <> '' then
                            ParamByName('SRCODE').AsString :=
                                   FormatFloat('0000000000',
                                   (StrToInt(MaxSBcode) + 1))
                     else
                            ParamByName('SRCODE').AsString := '0000000001';
                     ParamByName('SRDate').AsString :=
                            FormatDateTime('YYYY-MM-DD',
                            now);
                     ParamByName('SRTime').AsString := FormatDateTime('HH:MM',
                            now);
                     ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
                     ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
                     ExecSQL;

                     //전송 세부 결과 저장
                     close;
                     sql.clear;
                     sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
                     open;
                     MaxSBCode := FieldByName('MSBcode').AsString;

                     close;
                     sql.clear;
                     SQL.Text := SQL_INSERT_DATA;
                     if MaxSBCode <> '' then
                            ParamByName('SBCODE').AsString :=
                                   FormatFloat('0000000000',
                                   (StrToInt(MaxSBcode) + 1))
                     else
                            ParamByName('SBCODE').AsString := '0000000001';
                     ParamByName('SBChart').AsString := varGogekId;
                     ParamByName('SBName').AsString := varGogekName;
                     ParamByName('SBTel').AsString := '';
                     ParamByName('SBMail').AsString := '';
                     ParamByName('SBHp').AsString := varRecvNoTong + '-' +
                            varRecvNoGuk
                            + '-' + varRecvNoBun;
                     ParamByName('SBContent').AsString := VMem;
                     ParamByName('SBRegDate').AsString :=
                            FormatDateTime('YYYY-MM-DD',
                            now);
                     ParamByName('SBZip').AsString := '';
                     ParamByName('SBAdd').AsString := '';
                     ParamByName('SBQty').AsString := '';
                     ParamByName('SBGroup').AsString := '1';
                     ParamByName('SBSFSMS').AsString := '1';
                     ParamByName('SBSFMAIL').AsString := '';
                     ParamByName('SBSFFAX').AsString := '';
                     ParamByName('SBSFDM').AsString := '';
                     ParamByName('SBSFRECALL').AsString := '1';
                     ParamByName('SBSendDate').AsString := FormatDateTime('YYYY-MM-DD',  now);
                     ParamByName('SBSendTime').AsString := FormatDateTime('hh:nn',  now);
                     ParamByName('SBCHOICE').AsString := '1';
                     //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL
                     ExecSQL;

              end;

              if nRet <> 1 then
              begin
                     result := nRet;

                     LogWrite(ErrorCheck(nRet) + ':' + varGogekId,
                            varGogekName, varRecvNoTong + '-' + varRecvNoGuk +
                            '-' +
                            varRecvNoBun, VMem);
                     { Showmessage('[' + ErrorCheck(nRet) + ']' +
                             '메시지전송에 실패하였습니다.');
                         }//   Showmessage('메시지를 전송하였습니다.')

                   // else
                    //     Showmessage('메시지전송에 실패하였습니다.');
              end
              else
              begin
                     result := nRet;

                     LogWrite(varGogekId, varGogekName, varRecvNoTong + '-' +
                            varRecvNoGuk + '-' + varRecvNoBun, VMem);

              end;
             // result := nRet2;
       end
       else
       begin
              LogWrite('로그인 실패:' + ErrorCheck(nRet2) + ':' +
                     varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk
                     + '-'
                     +
                     varRecvNoBun, VMem);
              showmessage('로그인 실패:' + ErrorCheck(nRet2) + ':' + VId);
              //+ VPass+ sCust+ sCustName+ VTong2+ VGuk2+ VBun2+ nRem+ nUnCost);
              result := nRet2;
       end;
end;

function ErrorCheck(ECode: integer): string;
begin
       case ECode of
              1: result := '호출요청성공';
              11: result := '전화번호 이상';
              21: result := 'Connect 실패';
              22: result := '데이터 Send 실패';
              23: result := 'Ack Receive 실패';
              40: result := 'SMS 서버 이상';
              41: result := '미등록 사용자';
              67: result := '잔액부족';
              68: result := '고객사 코드 이상';
              73: result := '미등록 회원 또는 기본료미납 ';
              77: result := '호출할 메시지의 내용이 없음';
              78: result := '국번 or 전화번호 뒤 4 자리 이상';
              79: result := '호출요청성공';
              80: result := '이통사번호 이상';
              82: result := '‘700’, ’800’ 금지업체';
              84: result := '예약일자 이상';
              85: result := '호출 URL이 없음';
              88: result := '데이터 포맷 오류 및 기타오류';
              99: result := '암호 이상';
       else
              result := '관리자에게 문의하세요.';
       end;
end;

function isEmptyPromise(varPhone, varDate: string): boolean;
begin

       with Dm_f.SqlWork do
       begin
              SQL.Text := 'select * from ma_promise' + #10#13
                     +
                     'Where pday=:pday and tel=:tel ';
              ParamByName('tel').AsString :=
                     varPhone;
              ParamByName('pday').AsString :=
                     varDate;

              open;
              result := IsEmpty;
       end;
end;
end.


