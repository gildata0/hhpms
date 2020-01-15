unit uWebservice;

interface

uses
  Windows, Dialogs, SysUtils, Classes, uConfig, uGogekData, iniFiles;

type
  TMyArray = array [0 .. 250] of ansichar;

var
  Hwebservice : HINST;



//const
//  webserviceLib = 'webService.dll';
//
//function WS_AddParam(sKey: pAnsiChar; sValue: pAnsiChar): integer; stdcall;
//  external webserviceLib;// delayed;
//function WS_Qualify(sUrl: pAnsiChar): integer; stdcall; external webserviceLib;// delayed;
//function WS_Approval(sUrl: pAnsiChar): integer; stdcall; external webserviceLib;// delayed;
//function WS_GetValue(nSeq: integer; sKey: pAnsiChar; sValue: TMyArray): integer;
//  stdcall; external webserviceLib;// delayed;
//function WS_Close(): integer; stdcall; external webserviceLib;// delayed;
//function WS_Cancel(sUrl: pAnsiChar): integer; stdcall; external webserviceLib;// delayed;
procedure LoadWebserviceDLL;




function SendDataMsg1(isTest: boolean; stmsgType, stJuminNo, stykiho,
  clientInfo, stJumin2, NHIC_InfoID, NHIC_InfoPW, strPaitionName,
  DiagDt: string): integer;

function SendDataMsg2(stmsgType, stsujinjaJuminNo, stsujinjaJuminNm, stykiho,
  stdiagType, stpayDdCnt, sttoyakDdCnt, stselfPartBrdnAmt, stcfhcDmdAmt,
  stadminBrdnAmt, stmainSickSym, stdiagDt, stpiAdmin, stprscGnoAdmin,
  stsbrdnType,otherRequestYn, stclientInfo, stJumin2, NHIC_InfoID, NHIC_InfoPW, sGnoYn,
  sOutCode, sSunkiho: string): integer;

function SendDataMsg3(stmsgType, stsujinjaJuminNo, stsujinjaJuminNm, stykiho,
  stcfhcCfrNo, stdiagDt, stclientInfo, stJumin2, NHIC_InfoID,
  NHIC_InfoPW: string): integer;

procedure ByteClear(var data: TMyArray);

function CallM1(isTest: boolean; strJuminNo,strPaitName, strkiho, clientInfo, strJumin2,
   varJagyukID, varJagyukPass, sDate: string):boolean ;

function CallM3(strJuminNo,strPaitName, strkiho, jinKind, jinilsu, tuilsu,
   bonin, chung, bohum, sSangkiho, jinDay,sPhalmKiho, sYoungNo, sBonin, otherRequestYn, clientInfo, strJumin2,
   varJagyukID, varJagyukPass, sDate, sSaNo, sYN, sSunkiho: string) : boolean ;

function CallM5(strJuminNo, strPaitName,  strkiho, HwakinNo,jinday,
   clientInfo, strJumin2,
  varJagyukID, varJagyukPass, sDate: string) : boolean ;

function JakyukJohoi(strJuminNo, strPaitName: string;sDate: string;
  shMessage: Boolean = true): Boolean;



const
  webserviceLib = 'webService.dll';

  NumberChar: array [0 .. 13] of Integer   //����Ư���÷�
      = (23, 25, 28, 38,  41, 42, 44, 45, 46, 47, 48, 49, 50, 51);


var


 WS_AddParam : function (sKey: pAnsiChar; sValue: pAnsiChar): integer; stdcall;
 WS_Qualify  : function (sUrl: pAnsiChar): integer; stdcall;
 WS_Approval : function (sUrl: pAnsiChar): integer; stdcall;
 WS_GetValue : function (nSeq: integer; sKey: pAnsiChar; sValue: TMyArray): integer;  stdcall;
 WS_Close    : function (): integer; stdcall;
 WS_Cancel   : function (sUrl: pAnsiChar): integer; stdcall;


  KeyValues: TStrings ;


  //M2 Layout
  Response_KeyName_M1: array [ 0..59  ,0..1 ] of string = (
      ('Blank',                               'Blank'),            //0
      ('������ �ֹ� ��Ϲ�ȣ',                'sujinjaJuminNo') ,  //1
      ('������ ����',                         'sujinjaJuminNm') ,  //2
      ('�Ƿ� �޿� �����ȣ',                  'ykiho') ,           //3
      ('�ڰݿ���',                            'qlfType') ,         //4
      ('�ڰ������',                          'qlfChwidukDt') ,    //5
      ('������ ����',                         'sedaejuNm') ,       //6
      ('��������ȣ(������ȣ)',            'protAdminSym') ,    //7
      ('�ü���ȣ(����ȣ)',                    'asylmSym') ,        //8
      ('�޿���������(�ǰ�����������)',      'payRestricDt') ,    //9
      ('���κδ㿩��',                        'sbrdnType') ,       //10
      ('�ǰ���Ȱ������ �ܾ�',                 'cfhcRem') ,         //11
      ('���ñ����ȣ1(���������ڵ�)',         'ykiho1') ,          //12
      ('���ñ����ȣ2',                       'ykiho2') ,          //13
      ('���ñ����ȣ3',                       'ykiho3') ,          //14
      ('���ñ����ȣ4',                       'ykiho4') ,          //15
      ('���ñ�� �̸�1(���������)',          'yoyangNm1') ,       //16
      ('���ñ�� �̸�2',                      'yoyangNm2') ,       //17
      ('���ñ�� �̸�3',                      'yoyangNm3') ,       //18
      ('���ñ�� �̸�4',                      'yoyangNm4') ,       //19
      ('�ⱹ�� ����',                         'dprtYn') ,          //20
      ('����ε������',                      'obstRegDt') ,       //21
      ('��ͳ�ġ�����',                      'disRegPrson1') ,    //22
      ('����Ư��(���)��ϴ����',            'disRegPrson2') ,    //23
      ('�����������',                        'disRegPrson3') ,    //24
      ('����Ư��(��)��ϴ����1',             'disRegPrson4') ,    //25
      ('�౹ȯ�� ����(�౹����)',             'reqPatInfo') ,      //26
      ('�Ƿ�޿� ���� ������ �ܾ�',           'pregRemAmt') ,      //27
      ('����Ư��(ȭ��)��ϴ����',            'disRegPrson5') ,    //28
      ('�索�� ���� ����� �����',         'disRegPrson6') ,    //29
      ('���ϼ��� �Ǿ�ǰ ������',              'disRegPrson7') ,    //30
      ('����Ʋ�� �����(���)',               'dentTop') ,         //31
      ('����Ʋ�� �����(�Ͼ�)',               'dentBottom') ,      //32
      ('�ǰ����� �������� �ڰݻ��ó������',  'sangsilProcDt') ,   //33
      ('�ڰ����� ī��Ÿ �����',              'disRegPrson8') ,    //34
      ('�޿����� ����',                       'qlfRestrictCd') ,   //35
      ('���ö�Ʈ ��������� 1',               'dentImpl1') ,       //36
      ('���ö�Ʈ ��������� 2',               'dentImpl2') ,       //37
      ('����Ư��(����)��ϴ����',            'disRegPrson9') ,    //38
      ('��ֿ���',                            'obstYn') ,          //39
      ('�索�� ���� ����� ����',           'diabetesCd') ,      //40
      ('����Ư��(�����)��ϴ����',          'disRegPrson10') ,   //41
      ('����Ư��(�󼼺Ҹ����)��ϴ����',    'disRegPrson11') ,   //42
      ('����� �� ��ü������� ��ϴ����',   'preInfant') ,       //43
      ('������� ����Ư��(����)��ϴ����', 'disRegPrson12') ,   //44
      ('����Ư��(�ߺ���)��ϴ����2',         'disRegPrson13') ,   //45
      ('����Ư��(�ߺ���)��ϴ����3',         'disRegPrson14') ,   //46
      ('����Ư��(�ߺ���)��ϴ����4',         'disRegPrson15') ,   //47
      ('����Ư��(�ߺ���)��ϴ����5',         'disRegPrson16') ,   //48
      ('����Ư��(����ġ��)��ϴ����',        'disRegPrson17') ,   //49
      ('����Ư��(������ġ��ȯ)��ϴ����',        'disRegPrson18') ,   //50
      ('����Ư��(��Ÿ����ü�̻���ȯ)��ϴ����',        'disRegPrson19') ,   //51
      ('������ �Է� ����( �����-�ú���)',    'date') ,            //52  50
      ('�����κ����� �޽��� Code',            'messageCode') ,     //53  51
      ('�����κ����� �޽���',                 'message') ,         //54  52
      ('�޽��� Ÿ��',                       'msgType') ,           //55  53
      ('ȭ�� Ŭ���̾�Ʈ�� ���� ���� ��',    'clientInfo') ,        //56  54
      ('������ֹε�Ϲ�ȣ',                'operatorJuminNo') ,   //57  55
      ('���α׷� ����',                     'pgmType') ,           //58  56
      ('DLL ����',                          'version')             //59  57
  );


  Response_KeyName_M3: array [0..18] of string =
  ( 'Blank',
    'sujinjaJuminNo',
    'sujinjaJuminNm',
    'ykiho',
    'admType',
    'cfhcCfrNo',
    'selfPartBrdnAmt',
    'cfhcDmdAmt',
    'cfhcRem',
    'pregDmndAmt',
    'pregRemAmt',
    'date',
    'messageCode',
    'message',
    'msgType',
    'clientInfo',
    'operatorJuminNo',
    'pgmType',
    'version');





  Response_KeyName_M5: array [0 .. 12] of string =
  (   'Blank',
      'sujinjaJuminNo',
      'ykiho',
      'cfhcCfrNo',
      'diagDt',
      'loginId',
      'password',
      'date',
      'msgType',
      'clientInfo',
      'operatorJuminNo',
      'pgmType',
      'version');


  data: TMyArray;
  nResult: integer;
  nhicInfo: array of string;

implementation

function SendDataMsg1(isTest: boolean; stmsgType, stJuminNo, stykiho,
  clientInfo, stJumin2, NHIC_InfoID, NHIC_InfoPW, strPaitionName,
  DiagDt: string): integer;

var
  nResult: integer;
  st, sUrl: string;
  stSql: string;
  stdate: TDateTime;

  varPath: string;
begin

//COL01	������ �ֹ� ��Ϲ�ȣ                  sujinjaJuminNo
//COL02	�Ƿ� �޿� �����ȣ                     ykiho
//COL03	������ ����                               sujinjaJuminNm
//COL04	��������                                   diagDt
//COL05	�ǰ���������ȣ                          hiCardNo
//COL06	�������                                   birthDay
//COL29	�α��� ���̵�                            loginId
//COL30	�н�����                                   password
//DATE	������ �Է� ����( �����-�ú���)  date
//STATUS	�޽��� ó������                       �ش����
//MSG_TYPE	�޽��� Ÿ��                           msgType
//CLIENT_INFO	ȭ�� Ŭ���̾�Ʈ�� ���� ���� ��
//OPERATOR_JUMIN_NO	������ֹε�Ϲ�ȣ


  // DiagDt := FormatDateTime('yyyymmdd', dt1.date); //ver.2.137 진료?�자
  if isTest = false then
    sUrl := 'http://api.nhic.or.kr:1443/services/nhic?WSDL' // ?�영?�버
  else
    sUrl := 'http://ws.nhic.or.kr:1443/services/nhic?WSDL';
  /// Test Server

  // varPath := GetConfigDir + 'auto.exe';
  // gogek_f.Timer1.Enabled:=true;
  stdate := Now;
  st := FormatDateTime('yyyymmdd-hhmmss', stdate);

  Result := -1;

    //  S := WS_AddParam(Msg);


      if HWebService <> 0 then
      begin

            nResult := WS_AddParam(pAnsiChar(ansistring('sujinjaJuminNo')), pAnsiChar(ansistring(stJuminNo)));
            nResult := WS_AddParam(pAnsiChar(ansistring('msgType')), pAnsiChar(ansistring(stmsgType)));
            nResult := WS_AddParam(pAnsiChar(ansistring('ykiho')), pAnsiChar(ansistring(stykiho)));
            nResult := WS_AddParam(pAnsiChar(ansistring('clientInfo')), pAnsiChar(ansistring(clientInfo)));
            nResult := WS_AddParam(pAnsiChar(ansistring('operatorJuminNo')), pAnsiChar(ansistring(stJumin2)));
            nResult := WS_AddParam(pAnsiChar(ansistring('date')), pAnsiChar(ansistring(st)));
            nResult := WS_AddParam(pAnsiChar(ansistring('loginId')), pAnsiChar(ansistring(NHIC_InfoID)));
            nResult := WS_AddParam(pAnsiChar(ansistring('password')), pAnsiChar(ansistring(NHIC_InfoPW)));
            nResult := WS_AddParam(pAnsiChar(ansistring('sujinjaJuminNm')), pAnsiChar(ansistring(strPaitionName)));
            nResult := WS_AddParam(pAnsiChar(ansistring('diagDt')), pAnsiChar(ansistring(DiagDt)));

            nResult := WS_Qualify(pAnsiChar(ansistring(sUrl)));    // InputPass;
      end
      else
      begin
       showMessage( 'ERROR!!');
      end;



  Result := nResult;

end;

procedure LoadWebserviceDLL;
begin
  Hwebservice := LoadLibrary(PChar(webserviceLib));
  if Hwebservice <= 0 then
      begin
           showMessage('�ε� ���� : ' + IntToStr(GetLastError));
      end
  else
  begin
    try


      @WS_AddParam   := GetProcAddress(Hwebservice, Pchar('WS_AddParam'));
      @WS_Qualify    := GetProcAddress(Hwebservice, Pchar('WS_Qualify'));
      @WS_Approval   := GetProcAddress(Hwebservice, Pchar('WS_Approval'));
      @WS_GetValue   := GetProcAddress(Hwebservice, Pchar('WS_GetValue'));
      @WS_Close      := GetProcAddress(Hwebservice, Pchar('WS_Close'));
      @WS_Cancel     := GetProcAddress(Hwebservice, Pchar('WS_Cancel'));


    finally
   //   FreeLibrary(Hwebservice);
    end;
  end;
end;

function SendDataMsg2(stmsgType, stsujinjaJuminNo, stsujinjaJuminNm, stykiho,
  stdiagType, stpayDdCnt, sttoyakDdCnt, stselfPartBrdnAmt, stcfhcDmdAmt,
  stadminBrdnAmt, stmainSickSym, stdiagDt, stpiAdmin, stprscGnoAdmin,
  stsbrdnType,otherRequestYn, stclientInfo, stJumin2, NHIC_InfoID, NHIC_InfoPW, sGnoYn,
  sOutCode, sSunkiho: string): integer;
var
  nResult: integer;
  st, stt, sUrl: string;
  stSql: string;
  stdate: TDateTime;

begin

  sUrl := 'http://api.nhic.or.kr:1443/services/nhic?WSDL'; //
   stdate := Now;
   st := FormatDateTime('yyyymmdd-hhmmss', stdate);
  Result := -1;
  stt := 'N';

  nResult := WS_AddParam(pAnsiChar('msgType'),  pAnsiChar(ansistring(stmsgType)));
  nResult := WS_AddParam(pAnsiChar('sujinjaJuminNo'),  pAnsiChar(ansistring(stsujinjaJuminNo)));
  nResult := WS_AddParam(pAnsiChar('sujinjaJuminNm'),    pAnsiChar(ansistring(stsujinjaJuminNm)));
  nResult := WS_AddParam(pAnsiChar('ykiho'),  pAnsiChar(ansistring(stykiho)));
  nResult := WS_AddParam(pAnsiChar('diagType'),  pAnsiChar(ansistring(stdiagType)));
  nResult := WS_AddParam(pAnsiChar('payDdCnt'),  pAnsiChar(ansistring(stpayDdCnt)));
  nResult := WS_AddParam(pAnsiChar('tuyakDdCnt'),  pAnsiChar(ansistring(sttoyakDdCnt)));
  nResult := WS_AddParam(pAnsiChar('selfPartBrdnAmt'),   pAnsiChar(ansistring(stselfPartBrdnAmt)));
  nResult := WS_AddParam(pAnsiChar('cfhcDmdAmt'),  pAnsiChar(ansistring(stcfhcDmdAmt)));
  nResult := WS_AddParam(pAnsiChar('adminBrdnAmt'),  pAnsiChar(ansistring(stadminBrdnAmt)));
  nResult := WS_AddParam(pAnsiChar('mainSickSym'),  pAnsiChar(ansistring(stmainSickSym)));
  nResult := WS_AddParam(pAnsiChar('diagDt'),  pAnsiChar(ansistring(stdiagDt)));
  nResult := WS_AddParam(pAnsiChar('piAdmin'),  pAnsiChar(ansistring(stpiAdmin)));
  nResult := WS_AddParam(pAnsiChar('prscGnoAdmin'),  pAnsiChar(ansistring(stprscGnoAdmin)));
  nResult := WS_AddParam(pAnsiChar('sbrdnType'),  pAnsiChar(ansistring(stsbrdnType)));
  nResult := WS_AddParam(pAnsiChar('otherRequestYn'),  pAnsiChar(ansistring(stt)));
  nResult := WS_AddParam(pAnsiChar('clientInfo'),  pAnsiChar(ansistring(stclientInfo)));
  nResult := WS_AddParam(pAnsiChar('operatorJuminNo'),  pAnsiChar(ansistring(stJumin2)));
  nResult := WS_AddParam(pAnsiChar('date'),  pAnsiChar(ansistring(st)));
  nResult := WS_AddParam(pAnsiChar('loginId'),  pAnsiChar(ansistring(NHIC_InfoID)));
  nResult := WS_AddParam(pAnsiChar('password'),  pAnsiChar(ansistring(NHIC_InfoPW)));
  nResult := WS_AddParam(pAnsiChar('prscGnoYn'),  pAnsiChar(ansistring(sGnoYn)));       //ó���� �߱�����
  nResult := WS_AddParam(pAnsiChar('diagOutCode'),  pAnsiChar(ansistring(sOutCode)));   //��������ڵ�
  nResult := WS_AddParam(pAnsiChar('diagReqYkiho'),  pAnsiChar(ansistring(sSunkiho)));  //�����Ƿ� �Ƿ�޿������ȣ

  nResult := WS_Approval(pAnsiChar(ansistring(sUrl)));

  Result := nResult;

end;

function SendDataMsg3(stmsgType, stsujinjaJuminNo, stsujinjaJuminNm, stykiho,
  stcfhcCfrNo, stdiagDt, stclientInfo, stJumin2, NHIC_InfoID,
  NHIC_InfoPW: string): integer;
var
  nResult: integer;
  st: string;
  stSql, sUrl: string;

begin
  Result := -1;
  sUrl := 'http://api.nhic.or.kr:1443/services/nhic?WSDL'; // ?�영?�버

  // test
  // stykiho := '99560001';

  nResult := WS_AddParam(pAnsiChar('msgType'), pAnsiChar(stmsgType));
  nResult := WS_AddParam(pAnsiChar('sujinjaJuminNo'),
    pAnsiChar(stsujinjaJuminNo));
  nResult := WS_AddParam(pAnsiChar('sujinjaJuminNm'),
    pAnsiChar(stsujinjaJuminNm));
  nResult := WS_AddParam(pAnsiChar('ykiho'), pAnsiChar(stykiho));
  nResult := WS_AddParam(pAnsiChar('cfhcCfrNo'), pAnsiChar(stcfhcCfrNo));
  nResult := WS_AddParam(pAnsiChar('diagDt'), pAnsiChar(stdiagDt));
  nResult := WS_AddParam(pAnsiChar('clientInfo'), pAnsiChar(stclientInfo));
  nResult := WS_AddParam(pAnsiChar('operatorJuminNo'), pAnsiChar(stJumin2));
  nResult := WS_AddParam(pAnsiChar('loginId'), pAnsiChar(NHIC_InfoID));
  nResult := WS_AddParam(pAnsiChar('password'), pAnsiChar(NHIC_InfoPW));

  nResult := WS_Cancel(pAnsiChar(ansistring(sUrl)));
  Result := nResult;

end;

procedure ByteClear(var data: TMyArray);
var
  i: integer;
begin
  // zeromemory(data,sizeof(data));
  { for i:=0 to 49 do
    begin
    data[i] := #00;
    end; }

end;

function GetDataM1(nSeq: integer): integer;
var
  i: integer;
begin

  setLength(nhicInfo, 60);
  for i := 0 to 59 do
  begin
    ByteClear(data);
    nResult := WS_GetValue(nSeq, pAnsiChar(ansiString(Response_KeyName_M1[i,1])), data);
    nhicInfo[i] := strPas(data);
    KeyValues.Add(Response_KeyName_M1[i, 0]  + #9 +  '='  + #9 + nhicInfo[i]);
  end;
  Result := 1;
end;

function CallM1(isTest: boolean; strJuminNo, strPaitName,strkiho, clientInfo, strJumin2,
   varJagyukID, varJagyukPass, sDate: string) : boolean ;
var
  nCount: integer;
  i: integer;
  nResult: integer;

begin
  result:= false;
  try
        KeyValues := TStringList.Create;

        nCount := SendDataMsg1(
              isTest,
              'M1',
              strJuminNo,
              strkiho,
              clientInfo,
              strJumin2,
              varJagyukID,
              varJagyukPass,
              strPaitName,
              sDate);

        if nCount > 0 then
        begin
          for i := 0 to nCount-1 do
          begin
            nResult := GetDataM1(i);
          end;
          result:=true;
        end
        else
        begin


           result:=false;

        end;

  finally

      WS_Close();

  end;
end;


function GetDataM3(nSeq: integer): integer;
var
  i: integer;
begin

  setLength(nhicInfo, 19);
  for i := 0 to 18 do
  begin
    ByteClear(data);
    nResult := WS_GetValue(nSeq,pAnsiChar(ansiString(Response_KeyName_M3[i])), data);
    nhicInfo[i] := strPas(data);
    KeyValues.Add( inttostr(i)+':'+ nhicInfo[i]);
  end;
  Result := 1;
end;


//��ȣȯ�� �����Ƿ�
function CallM3(strJuminNo,  strPaitName, strkiho, jinKind, jinilsu, tuilsu,
   bonin, chung, bohum, sSangkiho, jinDay, sPhalmKiho, sYoungNo, sBonin,otherRequestYn, clientInfo, strJumin2,
  varJagyukID, varJagyukPass, sDate, sSaNo, sYN, sSunkiho: string) : boolean ;
var
  nCount: integer;
  i: integer;
  nResult: integer;

begin

  result:= false;
  try
     KeyValues := TStringList.Create;

     nCount := SendDataMsg2('M3',                                           //                 msgType'), pAns
          strJuminNo,// jinryo_f.varJuminNo,                                //                 sujinjaJuminNo'
          strPaitName,//main_f.edtName.text,                                //                 sujinjaJuminNm'
          strkiho,                                                          //                 ykiho'), pAnsiC
          jinKind,//'2', //��������                                         //             diagType'), pAn
          jinilsu,//'1', //��(��)�� �ϼ�                                    //            payDdCnt'), pAn
          tuilsu,//'0', //sNaewon, //�����ϼ�                               //             tuyakDdCnt'), p
          bonin,//IntToStr(Round(wNumEdit13.Value)), //���� �Ϻ� �δ��     //          selfPartBrdnAmt
          chung,//IntToStr(Round(edtSukum.Value)), //�ǰ���Ȱ ������ û���� //       cfhcDmdAmt'), p
          bohum,//Realgrid14.Cells[1, 2].AsString, //����δ��             //            adminBrdnAmt'),
          sSangkiho, //�ֻ󺴺з���ȣ(�౹��������-�����ȣ)                //mainSickSym'),
          jinDay,//FormatDateTime('YYYYMMDD', jinryo_f.dMain.Date), //��������//           diagDt'), pAnsi
          sPhalmKiho, //ó���� ���� ��� ��ȣ(�౹)  - ���� �̱���           //piAdmin'), pAns
          sYoungNo, //ó���� ���� ���ι�ȣ                                   //       prscGnoAdmin'),
          sBonin, //���κδ㿩��                                             //          sbrdnType'), pA
          '',                                                                   //      otherRequestYn'
          clientInfo, //Client IP                                            //          clientInfo'), p
          strJumin2, //�����ֹι�ȣ                                          //        operatorJuminNo
          varJagyukID,//NHIC_Info.ID,                                        //               loginId'), pAns
          sSaNo,                                                              //              password'), pAn
          sYN,                                                                //             prscGnoYn'), pA
          '9',                                                                //             diagOutCode'),
          sSunkiho                                                            //             diagReqYkiho'),
          );                                                                  //

        if nCount > 0 then
        begin
          for i := 0 to nCount -1 do
          begin
            nResult := GetDataM3(i);
          end;
           result:=true;
        end
        else
        begin
           nResult := nCount;
           result:=false;

        end;

  finally

      WS_Close();

  end;
end;




function GetDataM5(nSeq: integer): integer;
var
  i: integer;
begin

  setLength(nhicInfo, 13);
  for i := 0 to 12 do
  begin
    ByteClear(data);
    nResult := WS_GetValue(nSeq, pAnsiChar(Response_KeyName_M5[i]), data);
    nhicInfo[i] := strPas(data);
    KeyValues.Add( inttostr(i)+':'+ nhicInfo[i]);
  end;
  Result := 1;
end;


//��ȣȯ�� �������
function CallM5(strJuminNo,  strPaitName, strkiho, HwakinNo,jinday,
   clientInfo, strJumin2,
  varJagyukID, varJagyukPass, sDate: string) : boolean ;
var
  nCount: integer;
  i: integer;
  nResult: integer;

begin

  result:= false;
  try
     KeyValues := TStringList.Create;

//stmsgType,
//stsujinjaJuminNo,
//stsujinjaJuminNm,
//stykiho,
//  stcfhcCfrNo,
//  stdiagDt,
//  stclientInfo,
//  stJumin2,
//  NHIC_InfoID,
//  NHIC_InfoPW:

     nCount := SendDataMsg3('M5',
          strJuminNo,// jinryo_f.varJuminNo,
          strPaitName,//main_f.edtName.text,
          strkiho,
          HwakinNo,
          jinDay,//FormatDateTime('YYYYMMDD', jinryo_f.dMain.Date), //��������
          clientInfo, //Client IP
          strJumin2, //�����ֹι�ȣ
          varJagyukID,//NHIC_Info.ID,
          varJagyukPass);

        if nCount > 0 then
        begin
          for i := 0 to nCount -1 do
          begin
            nResult := GetDataM5(i);
          end;
            result:=true;
        end
        else
        begin

              result:=false;
        end;

  finally

      WS_Close();

  end;
end;





function JakyukJohoi(strJuminNo, strPaitName: string; sDate: string;
  shMessage: Boolean = true): Boolean;

var
  strkiho, clientInfo, strJumin2, varJagyukID, varJagyukPass: string;
  hkind: string;
  S: string;

  path : string;
  FormInit : TIniFile;

  i, j: Integer;

  varPath, varParam, varParam1: string;
  teakryeCode: string;
begin

  //ToDo : �ں��� �ڰ���ȸ�� ��������.

  {�ǰ�����	1
��ȣ1��	2
��ȣ2��	3
�Ϲ�	4
��ȣ4��	5
��ȣ8��	6
����	7
�ں�	8
������1��	9
������2��	10
������2�������	11}
//  if  (ma_jongbeul = '8')      //�ڵ�������
//     or  (ma_jongbeul = '4')   //�Ϲ�
//     or  (ma_jongbeul = '7')   //����
//     then
//  begin
//       exit;
//  end;


  Result := False;

  if checkClientProxynRun = False then
  begin
    showmessage('�ڰ���ȸ���(ClientProxy)�� ��ġ�ϼ���.');
    exit;
  end;

  LoadWebserviceDLL;


//ToDo : �ڵ����� ���� ����.
//  varPath := extractFilePath(paramStr(0)) + 'auto.exe';
//  varParam1 := '��������';
//  varParam := varParam1 + ' ' + configvalue.varJagyukID + ' ' +  configvalue.varJagyukPass;
//  // sleep(100);
//
//
//
//  // showmessage(varPath +':'+ varParam) ;
//
//  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), pchar(varParam), nil,
//    SW_SHOWNORMAL);



  { ���κδ㿩��
    "M001: ���ñ��������(���Ǻο��� ������) 1��
    M002: ���ñ�� �ڹ��� ������ 1��
    M003: 18�� �̸����� 1��
    M004: �ӻ��1��
    M005: ��ͳ�ġ����ȯ�� 1��
    M006: ����̽�ȯ�� 1��
    M007: 20�� �������ڷ� ��.����б� ���������� 1��
    M008: ������ȣ ����� 1��
    M009: ����ȯ���� ���ñ�� �̿��� 1��
    M010: ����κ��屸 ���޹޴� ���ñ�� �̿��� 1��
    M011: ���ȯ�� 1��
    M012: ����� 1��
    M013: ����ȯ���� ����� 1��
    M014: 2�����������ü����� 3���� �Ƿڵ� ����� 1��
    B001: ���ñ�� ������(���Ǻο��������) 2��
    B002: ���ñ�� �ڹ��� ������ 2��"
  }

  hkind := 'M1';

//  edtSanjung.Text := '';
//  edtTeakryeRegNo.Text := '';

  //
//  strJuminNo     :=  ma_jumin;  //���������� ���� �ȵ���.
//  strPaitName    := ma_paName;  //���������� ���� �ȵ���.


  strkiho := configvalue.varYoyang;
  clientInfo := '127.0.0.1';
  strJumin2 := configvalue.varJumin;
  varJagyukID := configvalue.varJagyukID;
  varJagyukPass := configvalue.varJagyukPass;
  sDate := formatdatetime('YYYMMDD', now);

  if CallM1(False, // �׽�Ʈ����ΰ�?
    strJuminNo,
    strPaitName,
    strkiho, // �������ȣ
    clientInfo,
    strJumin2, // �����ֹι�ȣ
    varJagyukID,
    varJagyukPass,
    sDate) // ��ȸ����
    = true then
  begin

    ma_jumin := nhicInfo[1]; // �ֹε�Ϲ�ȣ
    ma_Paname := nhicInfo[2]; // �����ڼ���
    // nhicInfo[3]; YoyangKiho
    ma_hira_jong := nhicInfo[4]; // �����ڱ���
    // ma_jongbeul   := nhicInfo[4]; // �����ڱ���
    // 1: ���������� 2: ��������� 4:���ǰ�����尡���� 5:���尡����
    // 6:�����Ǻξ��� 7:�Ƿ�޿�1�� 8:�Ƿ�޿�2��
    if (ma_hira_jong = '1') or
       (ma_hira_jong = '2') or
       (ma_hira_jong = '4') or
       (ma_hira_jong = '5') or
       (ma_hira_jong = '6') or
       (ma_hira_jong = '7') or
       (ma_hira_jong = '8') then
    begin


            ma_apply_Day    := nhicInfo[5]; // �ڰ������  //ver.2.20
            ma_PiboName     := nhicInfo[6]; // ������(�����ڸ�)
            ma_Kiho         := nhicInfo[7]; // ������ȣ
            ma_K_Number     := nhicInfo[8]; // ��������ȣ
            ma_cancelDay    := nhicInfo[9]; // �޿���������
            ma_budam        := nhicInfo[10]; // ���κδ㿩��, injek�� ����
            ma_janek        := nhicInfo[11]; // �������ܾ�

            // boninJun      := NjunaekYN; //���� ���� �δ� ����

            // ma_Sunkiho1,  ma_Sunkiho2,  ma_Sunkiho3 ,ma_Sunkiho4
            ma_Sunkiho1 := trim(nhicInfo[12] + '  ' + nhicInfo[16]); // ���ñ����ȣ1 ��Ī
            ma_Sunkiho2 := trim(nhicInfo[13] + '  ' + nhicInfo[17]); // ���ñ����ȣ2
            ma_Sunkiho3 := trim(nhicInfo[14] + '  ' + nhicInfo[18]); // ���ñ����ȣ3
            ma_Sunkiho4 := trim(nhicInfo[15] + '  ' + nhicInfo[19]);
            // ���ñ����ȣ4 - ġ�� //2008.12.8 ��������� ������

            ma_overseas := nhicInfo[20]; // �ⱹ�� ����
            ma_jangeil := nhicInfo[21]; // �������

            ma_chaSangNo := trim(nhicInfo[24]); // ������ Ư����ȣ(4) + ������(8) + ������(8) + ����(1)
            // ���� 1: ������ 1�� ���� 2: ������ 2��
            // 1�� ����(C)
            // 2009.04.01 2�� ����(E, F)"


            // sanjung := copy(nhicInfo[22], 5, 15); // ����Ư�ʵ�ϴ����
            // ver.2.125 ����Ư�� ��Ϲ�ȣ
            // sanjung := trim(lblRegNo.Caption);

            // 2012.7.1
            // ��Ϲ�ȣ(15) + ��Ͽ������ȣ(8) + Ʋ��������(8) + ������ıⰣ ������(8) + ������(8) + ������(8)
            ma_artTeeth1 := copy(nhicInfo[31], 1, 15); // Ʋ�ϵ�Ϲ�ȣ(���)
            ma_artTeeth2 := copy(nhicInfo[32], 1, 15); // Ʋ�ϵ�Ϲ�ȣ(�Ͼ�)

            ma_artYoyang1 := copy(nhicInfo[31], 16, 8);
            ma_artYoyang2 := copy(nhicInfo[32], 16, 8);
            // *****

            // ver.2.133 ���ö�Ʈ
            // "��Ϲ�ȣ(18)+��Ͽ������ȣ(8)
            // +�����ܰ�ü���(8)+��������������(8)+������ȿ��(8)+�����ȿ��(8)"
            ma_implTeeth1 := copy(nhicInfo[36], 1, 18); // ���ö�Ʈ ��Ϲ�ȣ(1)
            ma_implTeeth2 := copy(nhicInfo[37], 1, 18); // ���ö�Ʈ ��Ϲ�ȣ(2)

            ma_implYoyang1 := copy(nhicInfo[36], 19, 8);
            ma_implYoyang2 := copy(nhicInfo[37], 19, 8);

            ma_RestrictCd := nhicInfo[35]; // �޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"

            // ver.3.42 ��ֿ���
            // "Y : ��ֿ�
            // N : ����ֿ�"
            // ������ Ư����ȣ(E) ����� �Ǵ� �Ƿ�޿� 1��2�� ������� ��츸 ���� ����
            ma_special := nhicInfo[39]; // Y : ��ֿ� N: ����ֿ�

            {
              1�ǰ�����
              2��ȣ1��
              3��ȣ2��
              4�Ϲ�
              5��ȣ4��
              6��ȣ8��
              7����
              8�ں�
              9������1��
              10������2��
              11������2������� }

            if ((ma_cancelDay <> '') and ((trim(ma_Sunkiho1) = '') or
              (trim(ma_Sunkiho4) = '0000')) and (trim(ma_Sunkiho2) = '') and
              (trim(ma_Sunkiho3) = '') and (trim(ma_Sunkiho4) = '')) or
              (ma_RestrictCd = '01') // 01 : ���ڰ���
              or (ma_RestrictCd = '02') // 02 : �����ü�� �޿�������"
              or not((ma_hira_jong = '1') or // �����ڰ���.
              (ma_hira_jong = '2') or (ma_hira_jong = '4') or (ma_hira_jong = '5') or
              (ma_hira_jong = '6') or (ma_hira_jong = '7') or (ma_hira_jong = '8'))

            then
            begin // ���׺���(���ڰ���)
              ma_jongbeul := '4'; // '�Ϲ�';
              ma_K_Number := '';
              ma_Kiho := '';
              ma_PiboName := '';
            end
            else if copy(ma_chaSangNo, 1, 1) = 'C' then
            begin
              ma_jongbeul := '9'; // '������1��';
            end
            else if copy(ma_chaSangNo, 1, 1) = 'E' then
            begin
              // jongbeul := '������2��';
              // ver.3.42 ��ֿ��� Ȯ�� -------------
              if ma_special = 'Y' then
                ma_jongbeul := '11' // '������2�������'
              else
                ma_jongbeul := '10'; // '������2��';
              // ------------------------------------
            end
            else if copy(ma_chaSangNo, 1, 1) = 'F' then
            begin
              ma_jongbeul := '11'; // '������2�������';
            end

            else if ma_hira_jong = '7' then
            begin
              ma_jongbeul := '2'; // '��ȣ1��';
            end
            else if (ma_hira_jong = '8') and (ma_jangeil <> '') then
            begin
              ma_jongbeul := '6'; // '��ȣ8��';
              // isJange := true;      // ����â���� ��ִ� ������ü��ָ� ���ϹǷ� ������ ��ֶ���ϸ� �ȵȴ�.
            end
            else if (ma_hira_jong = '8') then
            begin
              // jongbeul := '��ȣ2��';
              // ver.3.42 ��ֿ��� Ȯ�� -------------
              if ma_special = 'Y' then
                ma_jongbeul := '6' // '��ȣ8��'
              else
                ma_jongbeul := '3'; // '��ȣ2��';
              // ------------------------------------

            end
            else
            begin
              ma_jongbeul := '1'; // '����';
            end;

            // ����
            // if (ma_jongbeul <> '') then
            // begin
            // for iIndex := 0 to JongbyulList.Count - 1 do
            // begin
            // if (JongbyulList.Strings[iIndex] = ma_jongbeul) then
            // begin
            // ma_jongbeul := IntToStr(iIndex + 1);
            // break;
            // end;
            // end;
            // end;
         Result := true ;


     //�����ϸ� ini�� ����.
          Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
          FormInit := TIniFile.Create(Path);
          FormInit.WriteString('CERTLOAD', 'DATE', FormatDateTime('YYYY-MM-DD',  Now));
          FormInit.Free;

     end
     else
     begin

      Result := False;
     end;


  end
  else
  begin
    Result := False;
    showmessage('���� ����');
//
     //    cbJong.ItemIndex := 3; // �Ϲ�

  end;
end;

end.
