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
     gl_strCertSubjDn : String ;              //인증서DN
     gl_strSignCert : String  ;               //서명용인증서
     gl_strkmCert : String    ;              //암호용인증서
     gl_strRnumber : String   ;              //Random키

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



//인증서를 불러오자...
function LoadSignCert2( strSSN : string;var isCorrectCert : boolean) : WideString;  // strSSN :주민 또는 사업자번호
var
    bCertLoadDlg : Boolean;
    bCertValid : Boolean;
    SetSetting : Boolean;

    strCertSubjDn : String;              //  '인증서DN
    strSignCert : String;                //  '서명용인증서
    strkmCert : String;                  //  '암호용인증서
    strRnumber : String;                 //  'Random키
    strPolicy : String;                  //  '인증서정책
    strBefore : String;                  //  '유효기간 시작일
    strAfter : String;                   //  '유효기간 종료일


begin

  try
     bCertValid:=false;

     varTSG_CAppAtx:=  TSG_CAppAtx.Create(nil);

     bCertLoadDlg  := varTSG_CAppAtx.LoadUserKeyCertDlg(3);


    if bCertLoadDlg then
    begin
        strSignCert   := varTSG_CAppAtx.GetUserSignCert();   //   '서명용인증서 sign Cert


        strPolicy := '1.2.410.200004.5.2.1.2|1.2.410.200004.5.2.1.1|'+
        '1.2.410.200004.5.1.1.7|1.2.410.200005.1.1.1|'+
        '1.2.410.200005.1.1.5| 1.2.410.200004.5.3.1.9|'+
        '1.2.410.200004.5.3.1.2|1.2.410.200004.5.3.1.1|'+
        '1.2.410.200004.5.4.1.1|1.2.410.200004.5.4.1.2|1.2.410.200012.1.1.1|1.2.410.200012.1.1.3';


       // 'strPolicy = "ANY"
        varTSG_CAppAtx.SetCertPolicy(strPolicy);             // '인증서정책설정
        bCertValid := varTSG_CAppAtx.ValidateCert(strSignCert); //'인증서검증

        strRnumber := varTSG_CAppAtx.GetUserKeyRNumber();


        isCorrectCert := varTSG_CAppAtx.CheckCertOwner(strSignCert,strSSN, strRnumber );

        if   isCorrectCert = false then
        begin
             showmessage('인증서 검증실패' + varTSG_CAppAtx.GetLastErrMsg());
             result   := '';
             varTSG_CAppAtx.UnloadUserKeyCert;
             exit;
        end;
    End;


    //'전역변수 설정
    gl_strCertSubjDn := strCertSubjDn  ;
    gl_strSignCert :=strSignCert;      //   '서명용인증서     // Replace(strSignCert, vbLf, vbCrLf) ;
    gl_strkmCert :=strkmCert;          // '암호화인증서       // Replace(strkmCert, vbLf, vbCrLf) ;
    gl_strRnumber :=strRnumber;        //  'RandomNumber       사업자 또는 주민번호 Hash 값  //// Replace(strRnumber, vbLf, '') ;


    If bCertValid Then
    begin
    //    showmessage('인증서 검증성공') ;
        result   := varTSG_CAppAtx.GetUserSignCert();   //   '서명용인증서 sign Cert
    end
    Else
    begin

        showmessage('인증서 검증실패' + varTSG_CAppAtx.GetLastErrMsg());
        result   := '';
        varTSG_CAppAtx.UnloadUserKeyCert;
     end;
  finally
      //  varTSG_CAppAtx.Destroy;
  end;
end;




function DoElectSign(varSourceData:WideString): TElectSignInfo;
var
  strSignStr :String;                  //전자서명할 데이타
  strSignedMsg : String ;              //전자서명
  strPKCS7SignedMesg : String;         //PKCS7메세지
  strRcvCert : String;                 //넘겨받은 인증서
  bCertCloseAPI :Boolean ;
begin
    strSignStr := varSourceData;                         //전자사명할 데이타

   //전자서명
     If strSignStr <> '' Then
        strSignedMsg := varTSG_CAppAtx.GenerateDigitalSignatureSG('', strSignStr);


   //전자서명값
    result.ElectsignedData :=  strSignedMsg ;
   // PKCS7Mesg 생성
    strPKCS7SignedMesg := varTSG_CAppAtx.GenPKCS7SignedMsg(strSignStr);
    result.PKCS7SignedData :=  strPKCS7SignedMesg;

end;



end.
