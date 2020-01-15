unit uCert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SG_CAPPATXLib_TLB, StdCtrls, ComCtrls, OleServer,
  SecuTimeStampLib_TLB;
type
     TElectSignInfo = record
          ElectsignedData : widestring;
          PKCS7SignedData: widestring;

     end;
var
     varTSG_CAppAtx : TSG_CAppAtx;
     varTSigngateTSP :  TSigngateTSP;
     gl_strCertSubjDn : String ;              //������DN
     gl_strSignCert : String  ;               //�����������
     gl_strkmCert : String    ;              //��ȣ��������
     gl_strRnumber : String   ;              //RandomŰ

     function LoadSignCert2( strSSN : string; var isCorrectCert: boolean) : WideString;
     function callTimeStamp(variniPath:string; varSourceData:widestring) :WideString;
     function DoElectSign(varSourceData:WideString): TElectSignInfo;


implementation


function callTimeStamp(variniPath:string; varSourceData:widestring) :WideString;
var
     varconnect : boolean;
     varStr: widestring;

begin
     //variniPath:='C:\Program Files (x86)\SignGATE\SecuTimeStamp\conf\server.ini'
      result:='';

      varTSigngateTSP:= TSigngateTSP.Create(application);
   try
     varconnect := varTSigngateTSP.InitConfig(variniPath) ;
     varTSigngateTSP.Connect;
     varStr  :=  varTSigngateTSP.Request(varSourceData);
     varTSigngateTSP.Disconnect;
   except
       on E: Exception do
           showmessage( varTSigngateTSP.GetLastError +#01#13+ e.Message);
   end;

     varTSigngateTSP.free;
     result:= varStr  ;
end;



//�������� �ҷ�����...
function LoadSignCert2( strSSN : string;var isCorrectCert : boolean) : WideString;  // strSSN :�ֹ� �Ǵ� ����ڹ�ȣ
var
    bCertLoadDlg : Boolean;
    bCertValid : Boolean;
    SetSetting : Boolean;

    strCertSubjDn : String;              //  '������DN
    strSignCert : String;                //  '�����������
    strkmCert : String;                  //  '��ȣ��������
    strRnumber : String;                 //  'RandomŰ
    strPolicy : String;                  //  '��������å
    strBefore : String;                  //  '��ȿ�Ⱓ ������
    strAfter : String;                   //  '��ȿ�Ⱓ ������


begin

  try
     bCertValid:=false;

     varTSG_CAppAtx:=  TSG_CAppAtx.Create(nil);

     bCertLoadDlg  := varTSG_CAppAtx.LoadUserKeyCertDlg(3);


    if bCertLoadDlg then
    begin
        strSignCert   := varTSG_CAppAtx.GetUserSignCert();   //   '����������� sign Cert


        strPolicy := '1.2.410.200004.5.2.1.2|1.2.410.200004.5.2.1.1|'+
        '1.2.410.200004.5.1.1.7|1.2.410.200005.1.1.1|'+
        '1.2.410.200005.1.1.5| 1.2.410.200004.5.3.1.9|'+
        '1.2.410.200004.5.3.1.2|1.2.410.200004.5.3.1.1|'+
        '1.2.410.200004.5.4.1.1|1.2.410.200004.5.4.1.2|1.2.410.200012.1.1.1|1.2.410.200012.1.1.3';


       // 'strPolicy = "ANY"
        varTSG_CAppAtx.SetCertPolicy(strPolicy);             // '��������å����
        bCertValid := varTSG_CAppAtx.ValidateCert(strSignCert); //'����������

        strRnumber := varTSG_CAppAtx.GetUserKeyRNumber();


        isCorrectCert := varTSG_CAppAtx.CheckCertOwner(strSignCert,strSSN, strRnumber );

        if   isCorrectCert = false then
        begin
             showmessage('������ ��������' + varTSG_CAppAtx.GetLastErrMsg());
             result   := '';
             varTSG_CAppAtx.UnloadUserKeyCert;
             exit;
        end;
    End;


    //'�������� ����
    gl_strCertSubjDn := strCertSubjDn  ;
    gl_strSignCert :=strSignCert;      //   '�����������     // Replace(strSignCert, vbLf, vbCrLf) ;
    gl_strkmCert :=strkmCert;          // '��ȣȭ������       // Replace(strkmCert, vbLf, vbCrLf) ;
    gl_strRnumber :=strRnumber;        //  'RandomNumber       ����� �Ǵ� �ֹι�ȣ Hash ��  //// Replace(strRnumber, vbLf, '') ;


    If bCertValid Then
    begin
    //    showmessage('������ ��������') ;
        result   := varTSG_CAppAtx.GetUserSignCert();   //   '����������� sign Cert
    end
    Else
    begin

        showmessage('������ ��������' + varTSG_CAppAtx.GetLastErrMsg());
        result   := '';
        varTSG_CAppAtx.UnloadUserKeyCert;
     end;
  finally
      //  varTSG_CAppAtx.Destroy;
  end;
end;




function DoElectSign(varSourceData:WideString): TElectSignInfo;
var
  strSignStr :String;                  //���ڼ����� ����Ÿ
  strSignedMsg : String ;              //���ڼ���
  strPKCS7SignedMesg : String;         //PKCS7�޼���
  strRcvCert : String;                 //�Ѱܹ��� ������
  bCertCloseAPI :Boolean ;
begin
    strSignStr := varSourceData;                         //���ڻ���� ����Ÿ

   //���ڼ���
     If strSignStr <> '' Then
        strSignedMsg := varTSG_CAppAtx.GenerateDigitalSignatureSG('', strSignStr);


   //���ڼ���
    result.ElectsignedData :=  strSignedMsg ;
   // PKCS7Mesg ����
    strPKCS7SignedMesg := varTSG_CAppAtx.GenPKCS7SignedMsg(strSignStr);
    result.PKCS7SignedData :=  strPKCS7SignedMesg;

end;



end.
