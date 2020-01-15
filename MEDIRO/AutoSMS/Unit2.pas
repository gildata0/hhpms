unit Unit2;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
       Dialogs, StdCtrls, ComCtrls, OleServer, SMSCALLLib_TLB;

type
       TsendSMS_f = class(TForm)
              Label1: TLabel;
              ProgressBar1: TProgressBar;
              Button1: TButton;
              Button2: TButton;
              Label2: TLabel;
              ProgressBar2: TProgressBar;
              Label3: TLabel;
              lblStat: TLabel;
              Button3: TButton;
    SMSCALLMSG1: TSMSCALLMSG;
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure FormDestroy(Sender: TObject);
              procedure Button3Click(Sender: TObject);
              procedure FormShow(Sender: TObject);
       private
    { Private declarations }
              function SendMessage_One(varGogekName: string; varGogekId: string;
                     varRecvNoTong: string; varRecvNoGuk: string;
                     varRecvNoBun: string; varDay: string;
                     varTime: string; varCont: string): boolean;
              function CheckBirthSMS: boolean;
              function CheckVisitSMS: boolean;
              procedure LogWrite(varID: string; varName: string; varNumber: string; varContent: string);
              procedure writeBirthSendReult(varCount: integer);
              procedure writeVisitSendReult(varCount: integer);
              function ErrorCheck(ECode: integer): string;
       public
    { Public declarations }
       end;

var
       sendSMS_f: TsendSMS_f;

implementation
uses udm, main, uFunctions;
{$R *.dfm}

procedure TsendSMS_f.LogWrite(varID: string; varName: string; varNumber: string; varContent: string);
var
       stFileText: TStringList;
       sFilePath: string;
       sFileName: string;
       varSendTime: string;
begin

       sFilePath := ExtractFilePath(paramStr(0)) + 'SmsLog';
       sFileName := sFilePath + '\SMS' + formatDateTime('YYYYMMDD', now) + '.Log';
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
              stFileText.Insert(0, varSendTime + '>>' + varID + '(' + varName + ')' + varNumber + ':' + varContent);
              stFileText.SaveToFile(sFileName);
       end
       else
       begin
              stFileText.Insert(0, varSendTime + '>>' + varID + '(' + varName + ')' + varNumber + ':' + varContent);
              stFileText.SaveToFile(sFileName);
       end;
end;


procedure TsendSMS_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       action := caFree;
end;

procedure TsendSMS_f.FormDestroy(Sender: TObject);
begin
       sendSMS_f := nil;
end;



function TsendSMS_f.CheckBirthSMS: boolean;
begin
       with dm_f.SqlSel do
       begin
              Close;
              Sql.Clear;

              Sql.Add('SELECT  sendDate, countBirth     ');
              Sql.Add('from tblSMSSend            ');
              Sql.Add('where sendDate=:sendDate and countBirth > 0 ');
              ParamByName('sendDate').AsString := formatDateTime('YYYY-MM-DD', now);
              open;
              if not isEmpty then
                     result := true
              else
                     result := false;
       end;

end;

function TsendSMS_f.CheckVisitSMS: boolean;
begin
       with dm_f.SqlSel do
       begin
              Close;
              Sql.Clear;

              Sql.Add('SELECT  sendDate, countVisit    ');
              Sql.Add('from tblSMSSend            ');
              Sql.Add('where sendDate=:sendDate and countVisit > 0 ');
              ParamByName('sendDate').AsString := formatDateTime('YYYY-MM-DD', now);
              open;
              if not isEmpty then
                     result := true
              else
                     result := false;
       end;

end;

procedure TsendSMS_f.writeBirthSendReult(varCount: integer);
begin
       with dm_f.SqlSel do
       begin
              Close;
              Sql.Clear;

              Sql.Add('insert into tblSMSSend');
              sql.Add('(  sendDate, countBirth,countVisit) values    ');
              sql.Add('(  :sendDate, :countBirth, :countVisit)    ');
              ParamByName('sendDate').AsString := formatDateTime('YYYY-MM-DD', now);
              ParamByName('countBirth').AsInteger := varCount;
              ParamByName('CountVisit').AsInteger := 0;
              execSql;

       end;

end;

procedure TsendSMS_f.writeVisitSendReult(varCount: integer);
begin
       with dm_f.SqlSel do
       begin
              Close;
              Sql.Clear;

              Sql.Add('insert into tblSMSSend');
              sql.Add('(  sendDate, countBirth,countVisit) values    ');
              sql.Add('(  :sendDate, :countBirth, :countVisit)    ');
              ParamByName('sendDate').AsString := formatDateTime('YYYY-MM-DD', now);
              ParamByName('countBirth').AsInteger := 0;
              ParamByName('CountVisit').AsInteger := varCount;
              execSql;

       end;

end;

function TsendSMS_f.SendMessage_One(varGogekName: string; varGogekId: string; varRecvNoTong: string; varRecvNoGuk: string; varRecvNoBun: string; varDay: string; varTime: string; varCont: string): boolean;
const
       SQL_INSERT_DATA = 'INSERT INTO SBSendList                    ' + #13#10 +
              '(SBCode, SBChart,SBName,SBTel,SBMail,     ' + #13#10 +
              'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
              'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
              'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL)' + #13#10 +
              'VALUES                                              ' + #13#10 +
              '(:SBCode, :SBChart, :SBName, :SBTel,:SBMail,     ' + #13#10 +
              ':SBHp,:SBContent, :SBRegDate, :SBSendDate,      ' + #13#10 +
              ':SBSendTime, :SBZip, :SBAdd, :SBQty, :SBGroup,:SBCHOICE,       ' + #13#10 +
              ':SBSFSMS, :SBSFMAIL, :SBSFFAX, :SBSFDM, :SBSFRECALL)';


       SQL_INSERT_DATA2 = 'INSERT INTO SResultSms                    ' + #13#10 +
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
              VTel, sCust, sCustname
              : WideString;
       MaxSBcode: string;
       nRet, nRet2: integer;
       nUnCost, nRem: Integer;

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
       sCust := 'OV-JJG-9R';
       with Dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('Select * from SResultLogin');
              Sql.Add('Where SLCode=:SLCode');
              ParamByName('SLCODE').AsString := '11'; //Password
              open;
              VPass := FieldByName('SLCOMMENT').AsString;


              Close;
              Sql.Clear;
              Sql.Add('Select * from SResultLogin');
              Sql.Add('Where SLCode=:SLCode');
              ParamByName('SLCODE').AsString := '00'; //Id
              open;
              VId := FieldByName('SLCOMMENT').AsString;

              Close;
              Sql.Clear;
              Sql.Add('Select * from SResultLogin');
              Sql.Add('Where SLCode=:SLCode');
              ParamByName('SLCODE').AsString := '12'; //��ȣ
              open;
              sCustname := FieldByName('SLCOMMENT').AsString;


              Close;
              Sql.Clear;
              Sql.Add('Select * from SResultLogin');
              Sql.Add('Where SLCode=:SLCode');
              ParamByName('SLCODE').AsString := '14'; //��ȭ��ȣ
              open;
              VTel := FieldByName('SLCOMMENT').AsString;


       end;

       VMem := varCont;
       VMem := StringReplace(VMem, '+aaa+', sCustname, [rfReplaceAll, rfIgnoreCase]);
       VMem := StringReplace(VMem, '+ddd+', varGogekName, [rfReplaceAll, rfIgnoreCase]);

       Vtong := varRecvNoTong;
       VGuk := varRecvNoGuk;
       VBun := varRecvNoBun;
       VName := varGogekName;
       VYDay := varDay;
       VYTime := varTime; //'110000';

       if (trim(vTong) = '') or (trim(vGuk) = '') or (trim(vBun) = '') then
       begin
              showmessage('[' + vMem + '] (��)�� ' + Vtong + '-' + vGuk + '-' + vBun + '(��)�δ� ȣ���� �� �����ϴ�.' + #10#13 +
                     '�޴���ȭ ��ȣ�� Ȯ���Ͻð� �ٽ� ����� �ֽʽÿ�.');
         // exit;
       end;
       Vtong2 := SubStr(Vtel, 1, '-');
       VGuk2 := SubStr(Vtel, 2, '-');
       VBun2 := SubStr(Vtel, 3, '-');

       nRet2 :=
             smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName, VTong2, VGuk2, VBun2, nRem, nUnCost);

       if nRet2 = 1 then
       begin
              Vtong2 := SubStr(Vtel, 1, '-');
              VGuk2 := SubStr(Vtel, 2, '-');
              VBun2 := SubStr(Vtel, 3, '-');
              nRet :=smscallmsg1.SMSSendUnit(1, VId, sCustname, sCust, sCustName,
                     VTong, VGuk, VBun,
                     VName,
                     VTong2, VGuk2, VBun2,
                     Trim(VMem), VYDay, VYTime, nRem, nUnCost);
          //���� ��� ����
              with Dm_f.SqlWork do
              begin
                     close;
                     sql.clear;
                     sql.add('select max(SBCode) MSBcode from SBSendList');
                     open;
                     MaxSBCode := FieldByName('MSBcode').AsString;


                     close;
                     sql.clear;
                     SQL.Text := SQL_INSERT_DATA2;
                     if MaxSBCode <> '' then
                            ParamByName('SRCODE').AsString := FormatFloat('0000000000', (StrToInt(MaxSBcode) + 1))
                     else
                            ParamByName('SRCODE').AsString := '0000000001';
                     ParamByName('SRDate').AsString := FormatDateTime('YYYY-MM-DD', now);
                     ParamByName('SRTime').AsString := FormatDateTime('HH:MM', now);
                     ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
                     ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
                     ExecSQL;



          //���� ���� ��� ����
                     close;
                     sql.clear;
                     sql.add('select max(SBCode) MSBcode from SBSendList');
                     open;
                     MaxSBCode := FieldByName('MSBcode').AsString;

                     close;
                     sql.clear;
                     SQL.Text := SQL_INSERT_DATA;
                     if MaxSBCode <> '' then
                            ParamByName('SBCODE').AsString := FormatFloat('0000000000', (StrToInt(MaxSBcode) + 1))
                     else
                            ParamByName('SBCODE').AsString := '0000000001';
                     ParamByName('SBChart').AsString := varGogekId;
                     ParamByName('SBName').AsString := varGogekName;
                     ParamByName('SBTel').AsString := '';
                     ParamByName('SBMail').AsString := '';
                     ParamByName('SBHp').AsString := varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun;
                     ParamByName('SBContent').AsString := VMem;
                     ParamByName('SBRegDate').AsString := FormatDateTime('YYYY-MM-DD', now);
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
                     ParamByName('SBSendTime').AsString := copy(VYTime, 1, 2) + ':' + copy(VYTime, 3, 2);
                     ParamByName('SBCHOICE').AsString := '1'; //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL
                     ExecSQL;

              end;


              if nRet <> 1 then
              begin
                     result := false;
                     LogWrite(ErrorCheck(nRet)+':'+VPASS+':'+varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
                     Showmessage('[' + ErrorCheck(nRet) + ']' + '�޽������ۿ� �����Ͽ����ϴ�.');
            //   Showmessage('�޽����� �����Ͽ����ϴ�.')

         // else
          //     Showmessage('�޽������ۿ� �����Ͽ����ϴ�.');
              end
              else
              begin
                     LogWrite(varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
                     result := true;
              end;
       end
       else
       begin
              result := false;
                     LogWrite('�α��� ����' +ErrorCheck(nRet2)+':'+VPASS+':'+varGogekId, varGogekName, varRecvNoTong + '-' + varRecvNoGuk + '-' + varRecvNoBun, VMem);
              showmessage('�α��� ����' + ErrorCheck(nRet2) + ':' + VId); //+ VPass+ sCust+ sCustName+ VTong2+ VGuk2+ VBun2+ nRem+ nUnCost);
       end;

end;

procedure TsendSMS_f.Button3Click(Sender: TObject);
begin
       close;
end;

procedure TsendSMS_f.FormShow(Sender: TObject);
var
       nowBirth: string;
       varTreatDay: string;
       varTreatDay1: string;
       varTreatDay2: string;
       varName, varId, varTong, varGuk, varBun, varDate, varTime, varContent: string;
       varBirthCount: integer;
       varVisitCount: integer;
begin
       application.ProcessMessages;
       caption := 'SMS ������...��� ��ٷ��ּ���.';
       lblStat.Caption := '';
       application.ProcessMessages;

     //������ �˻� �� �޽��� ����===============================================
       if checkBirthSms = false then
       begin
              nowBirth := formatDateTime('MMDD', now);
              varTreatDay := formatDateTime('YYYY-MM-DD', now - 365);
              varBirthcount := 0;
              application.ProcessMessages;

              with dm_f.SqlSel do
              begin
                     Close;
                     Sql.Clear;

                     Sql.Add('SELECT   a.gogekID, b.gogekname, b.birth, b.c_phone   ');
                     Sql.Add('FROM      tblTreat a INNER JOIN             ');
                     Sql.Add('                tblGogek b ON a.GogekID = b.idn  ');
                     Sql.Add('WHERE   (a.TreatDate >= ''' + varTreatDay + ''') ');
                     Sql.Add('AND (SUBSTRING(b.birth, 5, 4)) = ''' + nowBirth + ''' ');
                     Sql.Add('AND  (b.c_phone <> '''')                ');
                     Sql.Add('GROUP BY a.GogekID, b.birth, b.c_phone, b.gogekname ');
                     Sql.Add('ORDER BY a.GogekID                         ');
               // showmessage(sql.text);
                     open;
                     first;
                     if not isEmpty then
                     begin
                            while not eof do
                            begin

                                   varName := fieldByName('gogekName').asString;
                                   varId := fieldByName('gogekID').asString;
                                   varTong := substr(fieldByName('c_phone').asString, 1, '-');
                                   varGuk := substr(fieldByName('c_phone').asString, 2, '-');
                                   varBun := substr(fieldByName('c_phone').asString, 3, '-');
                                   varDate := formatDateTime('YYYYMMDD', now + 1);
                                   varTime := '110000';


                                   with dm_f.sqlTemp do
                                   begin
                                          Close;
                                          Sql.Clear;
                                          Sql.Add('Select * from SmsSmsData ');
                                          Sql.Add('Where Class=''115001''  and SML_CLASS=''003'' and Title=''�������ϵ����'' ');
                                          open;
                                          varContent := FieldByName('CONTENT').AsString;
                                   end;



                                   if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime, varContent) = true then
                                   begin
                                          label3.caption := varName;
                                          varBirthCount := varBirthCount + 1;
                                   end;
                                   next;
                            end;
                     end;
              end;
              lblStat.Caption := '���� : ��� ' + inttostr(varBirthCount) + ' ���� �����Ͽ����ϴ�.';
              writeBirthSendReult(varBirthCount);
       end
       else
       begin
              lblStat.Caption := 'SMS ������ ������ �����ϴ�.';
       end;

       application.ProcessMessages;

     //6���� �Ǵ� 1��� �� �˻� �� �޽��� ����===============================================
       if checkVisitSms = false then
       begin
              nowBirth := formatDateTime('MMDD', now);
              varTreatDay1 := formatDateTime('YYYY-MM-DD', now - 365);
              varTreatDay2 := formatDateTime('YYYY-MM-DD', now - 183);
              varVisitcount := 0;
              application.ProcessMessages;

              with dm_f.SqlSel do
              begin
                     Close;
                     Sql.Clear;

                     Sql.Add('SELECT a.gogekID , b.birth, b.gogekName, b.c_phone, a.TreatDate                             ');
                     Sql.Add('FROM      tblTreat a, tblgogek b                                                            ');
                     Sql.Add('WHERE   a.TreatDate = CASE WHEN isNumeric(birth)                                            ');
                     Sql.Add('                = 1 THEN (CASE WHEN (LEFT(year(getdate()), 4) - (cast(substring(birth, 1, 4)');
                     Sql.Add('                AS int))) >= ''20'' THEN ''' + varTreatDay1 + ''' ELSE ''' + varTreatDay2 + ''' END) END AND          ');
                     Sql.Add('                b.idn = a.gogekid AND c_phone <> ''''                                         ');
                     Sql.Add('GROUP BY a.gogekID ,b.birth, b.c_phone, b.gogekName, a.TreatDate                            ');
                     Sql.Add('ORDER BY  gogekID                                                                           ');

               // showmessage(sql.text);
                     open;
                     first;
                     if not isEmpty then
                     begin
                            while not eof do
                            begin

                                   varName := fieldByName('gogekName').asString;
                                   varId := fieldByName('gogekID').asString;
                                   varTong := substr(fieldByName('c_phone').asString, 1, '-');
                                   varGuk := substr(fieldByName('c_phone').asString, 2, '-');
                                   varBun := substr(fieldByName('c_phone').asString, 3, '-');
                                   varDate := formatDateTime('YYYYMMDD', now + 1);
                                   varTime := '110000';


                                   with dm_f.sqlwork do
                                   begin
                                          Close;
                                          Sql.Clear;
                                          Sql.Add('Select * from SmsSmsData ');
                                          Sql.Add('Where Class=''114008''  and SML_CLASS=''010'' and Title=''�˻�ȳ�'' ');
                                          open;
                                          varContent := FieldByName('CONTENT').AsString;
                                   end;



                                   if SendMessage_One(varname, varID, varTong, varGuk, varBun, varDate, varTime, varContent) = true then
                                   begin
                                          label3.caption := varName;
                                          varVisitCount := varVisitCount + 1;
                                   end;
                                   next;
                            end;
                     end;
              end;
              lblStat.Caption := '���� : ��� ' + inttostr(varVisitCount) + ' ���� �����Ͽ����ϴ�.';
              writeVisitSendReult(varVisitCount);
       end
       else
       begin
              lblStat.Caption := 'SMS ������ ������ �����ϴ�.';
       end;


       sendSMS_f.close;

end;

function Tsendsms_f.ErrorCheck(ECode: integer): string;
begin
       case ECode of
              1: result := 'ȣ���û����';
              11: result := '��ȭ��ȣ �̻�';
              21: result := 'Connect ����';
              22: result := '������ Send ����';
              23: result := 'Ack Receive ����';
              67: result := '�ܾ׺���';
              68: result := '���� �ڵ� �̻�';
              73: result := '�̵�� ȸ�� �Ǵ� �⺻��̳� ';
              77: result := 'ȣ���� �޽����� ������ ����';
              78: result := '���� or ��ȭ��ȣ �� 4 �ڸ� �̻�';
              79: result := 'ȣ���û����';
              80: result := '������ȣ �̻�';
              82: result := '��700��, ��800�� ������ü';
              84: result := '�������� �̻�';
              85: result := 'ȣ�� URL�� ����';
              88: result := '������ ���� ���� �� ��Ÿ����';
              99: result := '������ ���� ���� �� ��Ÿ����';
       end;
end;

end.

