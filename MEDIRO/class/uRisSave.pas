unit uRisSave;

interface
uses
     Forms,
     SysUtils,
     Dialogs,
     Classes,
     IniFiles,
   {$IFDEF MSWINDOWS}
     Windows, ShellApi,
    {$ENDIF}
    {$IFDEF POSIX}
    Posix.SysSysctl,
    {$ENDIF}

     Controls,
     ComCtrls,
     stdCtrls,  math,
     ExtCtrls, JPEG, graphics,
     AdvProgressBar,
     colCombo,
     advEdit,
     Vcl.CheckLst, AdvGrid,
     Winsock,

     uni, db,


     IdHTTP, IdURI,
     IdFTP, IdFTPList, IdFTPCommon,   IdGlobal;

type

     TRisResult = record
          aResult : boolean;
          aMsgIn : string;

     end;

//RIS
function  RisSave(
       risKind : integer ;
       AMemo: TMemo;
       aCheckbox: TcheckBox;
       nowTime:TdateTime;
       aEngDoctorName    : string;
       aEngHospitalName  : string;
       patAdmitKind      : string;
       aReasonForStudy   : string='';
       aClinicalInfo     : string='';
       aOrderNO  : string='';
       groupCode : string='';
       groupName : string='';
       seqNo     : string='';
       isCancel  : boolean= false) : TRisResult;


implementation
uses  uConfig, uFunctions,  uTCPcs,  uGogekData,
      uHLClass,
      bsHL7Object, ZPI_Z01MsgUnit, bsUtils, BSHL7251, BSHL7Grp251, BSHL7DT251;


function  RisSave(
       risKind   : integer ;
       AMemo     : TMemo;
       aCheckbox : TcheckBox;
       nowTime   : Tdatetime; //접수일자/시간
       aEngDoctorName    : string;
       aEngHospitalName  : string;
       patAdmitKind      : string; // //외래 O 입원I  N: 해당없음
       aReasonForStudy   : string='';
       aClinicalInfo     : string='';
       aOrderNO  : string='';
       groupCode : string='';
       groupName : string='';
       seqNo     : string=''; //접수아이디.
       isCancel  : boolean= false) : TRisResult;

var
  MsgOut : AnsiString;
  MsgIn : AnsiString;

begin

    AMemo.text := '';
    result.aResult:= false;
    case risKind of
            //inPatient
         0:     MessageCreate_ADT_A01(AMemo, aCheckbox.Checked, patAdmitKind, nowTime);

            //outPatient
         1:     MessageCreate_ADT_A02(AMemo, aCheckbox.Checked, nowTime);

            //Out/Charged
         2:     MessageCreate_ADT_A03(AMemo, aCheckbox.Checked, nowTime);

            //Locate Change
         3:     MessageCreate_ADT_A04(AMemo, aCheckbox.Checked, nowTime);

            //Tx Order
         4:     MessageCreate_OMG_019(AMemo, aCheckbox.Checked,
            nowTime,
            aOrderNO,
            groupCode,
            groupName,
            aEngDoctorName,
            aEngHospitalName,
            seqNo,
            DeleteLineBreaks(aReasonForStudy),
            DeleteLineBreaks(aClinicalInfo),
            isCancel   );

            //OBR-16, ORC-13

            //Cancel Visit
         5:     MessageCreate_ADT_A11(AMemo, aCheckbox.Checked, patAdmitKind, nowTime);//nowTime);
    end;

   if trim(aMemo.text) <> '' then
   begin
       try

         try
             dmTcpCs_f :=  TdmTcpCs_f.create(nil);
             dmTcpCs_f.IdTcpClient1.Port :=  strtoint(configValue.varImageDBPort) ;  // 18080;
             dmTcpCs_f.IdTcpClient1.Host := configvalue.varImageDBIP;// '192.168.10.190';   // '192.168.10.183';//  '10.211.55.4';//
             if  dmTcpCs_f.IdTcpClient1.Connected = false  then
                 dmTcpCs_f.IdTcpClient1.Connect;

             // Send Message
             //   IdTCPClient1.IOHandler.Write(START_BLOCK + utf8string( memo1.text )+ END_BLOCK);
             dmTcpCs_f.IdTCPClient1.IOHandler.Write(START_BLOCK +   aMemo.text + END_BLOCK, enUTF8);

             // Wait ACK Message
             MsgIn :=  dmTcpCs_f.IdTCPClient1.IOHandler.ReadLn(END_BLOCK);

             Result.aMsgIn :=  MsgIn;
        // showmessage(MsgIn);//
         finally
             dmTcpCs_f.free;
         end;

       except
         result.aResult := false;
       end;
   end;



end;




end.
