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

  NumberChar: array [0 .. 13] of Integer   //산정특례컬럼
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
      ('수진자 주민 등록번호',                'sujinjaJuminNo') ,  //1
      ('수진자 성명',                         'sujinjaJuminNm') ,  //2
      ('의료 급여 기관기호',                  'ykiho') ,           //3
      ('자격여부',                            'qlfType') ,         //4
      ('자격취득일',                          'qlfChwidukDt') ,    //5
      ('세대주 성명',                         'sedaejuNm') ,       //6
      ('보장기관기호(사업장기호)',            'protAdminSym') ,    //7
      ('시설기호(증번호)',                    'asylmSym') ,        //8
      ('급여제한일자(건강보험상실일자)',      'payRestricDt') ,    //9
      ('본인부담여부',                        'sbrdnType') ,       //10
      ('건강생활유지비 잔액',                 'cfhcRem') ,         //11
      ('선택기관기호1(관할지사코드)',         'ykiho1') ,          //12
      ('선택기관기호2',                       'ykiho2') ,          //13
      ('선택기관기호3',                       'ykiho3') ,          //14
      ('선택기관기호4',                       'ykiho4') ,          //15
      ('선택기관 이름1(관할지사명)',          'yoyangNm1') ,       //16
      ('선택기관 이름2',                      'yoyangNm2') ,       //17
      ('선택기관 이름3',                      'yoyangNm3') ,       //18
      ('선택기관 이름4',                      'yoyangNm4') ,       //19
      ('출국자 여부',                         'dprtYn') ,          //20
      ('장애인등록일자',                      'obstRegDt') ,       //21
      ('희귀난치대상자',                      'disRegPrson1') ,    //22
      ('산정특례(희귀)등록대상자',            'disRegPrson2') ,    //23
      ('차상위대상자',                        'disRegPrson3') ,    //24
      ('산정특례(암)등록대상자1',             'disRegPrson4') ,    //25
      ('약국환자 정보(약국전용)',             'reqPatInfo') ,      //26
      ('의료급여 산전 지원금 잔액',           'pregRemAmt') ,      //27
      ('산정특례(화상)등록대상자',            'disRegPrson5') ,    //28
      ('당뇨병 요양비 대상자 등록일',         'disRegPrson6') ,    //29
      ('동일성분 의약품 제한자',              'disRegPrson7') ,    //30
      ('노인틀니 대상자(상악)',               'dentTop') ,         //31
      ('노인틀니 대상자(하악)',               'dentBottom') ,      //32
      ('건강보험 수진자의 자격상실처리일자',  'sangsilProcDt') ,   //33
      ('자가도뇨 카테타 대상자',              'disRegPrson8') ,    //34
      ('급여제한 여부',                       'qlfRestrictCd') ,   //35
      ('임플란트 대상자정보 1',               'dentImpl1') ,       //36
      ('임플란트 대상자정보 2',               'dentImpl2') ,       //37
      ('산정특례(결핵)등록대상자',            'disRegPrson9') ,    //38
      ('장애여부',                            'obstYn') ,          //39
      ('당뇨병 요양비 대상자 유형',           'diabetesCd') ,      //40
      ('산정특례(극희귀)등록대상자',          'disRegPrson10') ,   //41
      ('산정특례(상세불명희귀)등록대상자',    'disRegPrson11') ,   //42
      ('조산아 및 저체중출생아 등록대상자',   'preInfant') ,       //43
      ('요양기관별 산정특례(결핵)등록대상자', 'disRegPrson12') ,   //44
      ('산정특례(중복암)등록대상자2',         'disRegPrson13') ,   //45
      ('산정특례(중복암)등록대상자3',         'disRegPrson14') ,   //46
      ('산정특례(중복암)등록대상자4',         'disRegPrson15') ,   //47
      ('산정특례(중복암)등록대상자5',         'disRegPrson16') ,   //48
      ('산정특례(중증치매)등록대상자',        'disRegPrson17') ,   //49
      ('산정특례(중증난치질환)등록대상자',        'disRegPrson18') ,   //50
      ('산정특례(기타염색체이상질환)등록대상자',        'disRegPrson19') ,   //51
      ('데이터 입력 일자( 년월일-시분초)',    'date') ,            //52  50
      ('서버로부터의 메시지 Code',            'messageCode') ,     //53  51
      ('서버로부터의 메시지',                 'message') ,         //54  52
      ('메시지 타입',                       'msgType') ,           //55  53
      ('화면 클라이언트의 개별 고유 값',    'clientInfo') ,        //56  54
      ('담당자주민등록번호',                'operatorJuminNo') ,   //57  55
      ('프로그램 구분',                     'pgmType') ,           //58  56
      ('DLL 버전',                          'version')             //59  57
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

//COL01	수진자 주민 등록번호                  sujinjaJuminNo
//COL02	의료 급여 기관기호                     ykiho
//COL03	수진자 성명                               sujinjaJuminNm
//COL04	진료일자                                   diagDt
//COL05	건강보험증번호                          hiCardNo
//COL06	생년월일                                   birthDay
//COL29	로그인 아이디                            loginId
//COL30	패스워드                                   password
//DATE	데이터 입력 일자( 년월일-시분초)  date
//STATUS	메시지 처리상태                       해당없음
//MSG_TYPE	메시지 타입                           msgType
//CLIENT_INFO	화면 클라이언트의 개별 고유 값
//OPERATOR_JUMIN_NO	담당자주민등록번호


  // DiagDt := FormatDateTime('yyyymmdd', dt1.date); //ver.2.137 吏꾨즺?쇱옄
  if isTest = false then
    sUrl := 'http://api.nhic.or.kr:1443/services/nhic?WSDL' // ?댁쁺?쒕쾭
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
           showMessage('로딩 에러 : ' + IntToStr(GetLastError));
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
  nResult := WS_AddParam(pAnsiChar('prscGnoYn'),  pAnsiChar(ansistring(sGnoYn)));       //처방전 발급유무
  nResult := WS_AddParam(pAnsiChar('diagOutCode'),  pAnsiChar(ansistring(sOutCode)));   //퇴원구분코드
  nResult := WS_AddParam(pAnsiChar('diagReqYkiho'),  pAnsiChar(ansistring(sSunkiho)));  //진료의뢰 의료급여기관기호

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
  sUrl := 'http://api.nhic.or.kr:1443/services/nhic?WSDL'; // ?댁쁺?쒕쾭

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


//보호환자 승인의뢰
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
          jinKind,//'2', //진료형태                                         //             diagType'), pAn
          jinilsu,//'1', //입(내)원 일수                                    //            payDdCnt'), pAn
          tuilsu,//'0', //sNaewon, //투약일수                               //             tuyakDdCnt'), p
          bonin,//IntToStr(Round(wNumEdit13.Value)), //본인 일부 부담금     //          selfPartBrdnAmt
          chung,//IntToStr(Round(edtSukum.Value)), //건강생활 유지비 청구액 //       cfhcDmdAmt'), p
          bohum,//Realgrid14.Cells[1, 2].AsString, //기관부담금             //            adminBrdnAmt'),
          sSangkiho, //주상병분류기호(약국직접조제-증상기호)                //mainSickSym'),
          jinDay,//FormatDateTime('YYYYMMDD', jinryo_f.dMain.Date), //진료일자//           diagDt'), pAnsi
          sPhalmKiho, //처방전 교부 기관 기호(약국)  - 병원 미기재           //piAdmin'), pAns
          sYoungNo, //처방전 교부 교부번호                                   //       prscGnoAdmin'),
          sBonin, //본인부담여부                                             //          sbrdnType'), pA
          '',                                                                   //      otherRequestYn'
          clientInfo, //Client IP                                            //          clientInfo'), p
          strJumin2, //원장주민번호                                          //        operatorJuminNo
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


//보호환자 승인취소
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
          jinDay,//FormatDateTime('YYYYMMDD', jinryo_f.dMain.Date), //진료일자
          clientInfo, //Client IP
          strJumin2, //원장주민번호
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

  //ToDo : 자보면 자격조회를 하지말자.

  {건강보험	1
보호1종	2
보호2종	3
일반	4
보호4종	5
보호8종	6
산재	7
자보	8
차상위1종	9
차상위2종	10
차상위2종장애인	11}
//  if  (ma_jongbeul = '8')      //자동차보험
//     or  (ma_jongbeul = '4')   //일반
//     or  (ma_jongbeul = '7')   //산재
//     then
//  begin
//       exit;
//  end;


  Result := False;

  if checkClientProxynRun = False then
  begin
    showmessage('자격조회모듈(ClientProxy)을 설치하세요.');
    exit;
  end;

  LoadWebserviceDLL;


//ToDo : 자동으로 하지 말자.
//  varPath := extractFilePath(paramStr(0)) + 'auto.exe';
//  varParam1 := '만세만세';
//  varParam := varParam1 + ' ' + configvalue.varJagyukID + ' ' +  configvalue.varJagyukPass;
//  // sleep(100);
//
//
//
//  // showmessage(varPath +':'+ varParam) ;
//
//  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), pchar(varParam), nil,
//    SW_SHOWNORMAL);



  { 본인부담여부
    "M001: 선택기관적용자(조건부연장 승인자) 1종
    M002: 선택기관 자발적 참여자 1종
    M003: 18세 미만인자 1종
    M004: 임산부1종
    M005: 희귀난치성질환자 1종
    M006: 장기이식환자 1종
    M007: 20세 이하인자로 중.고등학교 재학중인자 1종
    M008: 가정간호 대상자 1종
    M009: 응급환자인 선택기관 이용자 1종
    M010: 장애인보장구 지급받는 선택기관 이용자 1종
    M011: 행려환자 1종
    M012: 노숙인 1종
    M013: 응급환자인 노숙인 1종
    M014: 2차노숙인진료시설에서 3차로 의뢰된 노숙인 1종
    B001: 선택기관 적용자(조건부연장승인자) 2종
    B002: 선택기관 자발적 참여자 2종"
  }

  hkind := 'M1';

//  edtSanjung.Text := '';
//  edtTeakryeRegNo.Text := '';

  //
//  strJuminNo     :=  ma_jumin;  //저장전에는 값이 안들어간다.
//  strPaitName    := ma_paName;  //저장전에는 값이 안들어간다.


  strkiho := configvalue.varYoyang;
  clientInfo := '127.0.0.1';
  strJumin2 := configvalue.varJumin;
  varJagyukID := configvalue.varJagyukID;
  varJagyukPass := configvalue.varJagyukPass;
  sDate := formatdatetime('YYYMMDD', now);

  if CallM1(False, // 테스트모드인가?
    strJuminNo,
    strPaitName,
    strkiho, // 요양기관기호
    clientInfo,
    strJumin2, // 원장주민번호
    varJagyukID,
    varJagyukPass,
    sDate) // 조회일자
    = true then
  begin

    ma_jumin := nhicInfo[1]; // 주민등록번호
    ma_Paname := nhicInfo[2]; // 수진자성명
    // nhicInfo[3]; YoyangKiho
    ma_hira_jong := nhicInfo[4]; // 가입자구분
    // ma_jongbeul   := nhicInfo[4]; // 가입자구분
    // 1: 지역가입자 2: 지역세대원 4:임의계속직장가입자 5:직장가입자
    // 6:직장피부양자 7:의료급여1종 8:의료급여2종
    if (ma_hira_jong = '1') or
       (ma_hira_jong = '2') or
       (ma_hira_jong = '4') or
       (ma_hira_jong = '5') or
       (ma_hira_jong = '6') or
       (ma_hira_jong = '7') or
       (ma_hira_jong = '8') then
    begin


            ma_apply_Day    := nhicInfo[5]; // 자격취득일  //ver.2.20
            ma_PiboName     := nhicInfo[6]; // 세대주(가입자명)
            ma_Kiho         := nhicInfo[7]; // 사업장기호
            ma_K_Number     := nhicInfo[8]; // 보험증번호
            ma_cancelDay    := nhicInfo[9]; // 급여제한일자
            ma_budam        := nhicInfo[10]; // 본인부담여부, injek에 저장
            ma_janek        := nhicInfo[11]; // 유지비잔액

            // boninJun      := NjunaekYN; //본인 전액 부담 여부

            // ma_Sunkiho1,  ma_Sunkiho2,  ma_Sunkiho3 ,ma_Sunkiho4
            ma_Sunkiho1 := trim(nhicInfo[12] + '  ' + nhicInfo[16]); // 선택기관기호1 명칭
            ma_Sunkiho2 := trim(nhicInfo[13] + '  ' + nhicInfo[17]); // 선택기관기호2
            ma_Sunkiho3 := trim(nhicInfo[14] + '  ' + nhicInfo[18]); // 선택기관기호3
            ma_Sunkiho4 := trim(nhicInfo[15] + '  ' + nhicInfo[19]);
            // 선택기관기호4 - 치과 //2008.12.8 관할지사명 미제공

            ma_overseas := nhicInfo[20]; // 출국자 여부
            ma_jangeil := nhicInfo[21]; // 장애일자

            ma_chaSangNo := trim(nhicInfo[24]); // 차상위 특정기호(4) + 시작일(8) + 종료일(8) + 구분(1)
            // 구분 1: 차상위 1종 구분 2: 차상위 2종
            // 1종 시행(C)
            // 2009.04.01 2종 시행(E, F)"


            // sanjung := copy(nhicInfo[22], 5, 15); // 산정특례등록대상자
            // ver.2.125 산정특례 등록번호
            // sanjung := trim(lblRegNo.Caption);

            // 2012.7.1
            // 등록번호(15) + 등록요양기관기호(8) + 틀니장착일(8) + 무상사후기간 종료일(8) + 시작일(8) + 종료일(8)
            ma_artTeeth1 := copy(nhicInfo[31], 1, 15); // 틀니등록번호(상악)
            ma_artTeeth2 := copy(nhicInfo[32], 1, 15); // 틀니등록번호(하악)

            ma_artYoyang1 := copy(nhicInfo[31], 16, 8);
            ma_artYoyang2 := copy(nhicInfo[32], 16, 8);
            // *****

            // ver.2.133 임플란트
            // "등록번호(18)+등록요양기관기호(8)
            // +최종단계시술일(8)+사후점검종료일(8)+시작유효일(8)+상실유효일(8)"
            ma_implTeeth1 := copy(nhicInfo[36], 1, 18); // 임플란트 등록번호(1)
            ma_implTeeth2 := copy(nhicInfo[37], 1, 18); // 임플란트 등록번호(2)

            ma_implYoyang1 := copy(nhicInfo[36], 19, 8);
            ma_implYoyang2 := copy(nhicInfo[37], 19, 8);

            ma_RestrictCd := nhicInfo[35]; // 급여제한 01 : 무자격자,  02 : 보험료체납 급여제한자"

            // ver.3.42 장애여부
            // "Y : 장애우
            // N : 비장애우"
            // 차상위 특정기호(E) 대상자 또는 의료급여 1·2종 대상자일 경우만 서비스 제공
            ma_special := nhicInfo[39]; // Y : 장애우 N: 비장애우

            {
              1건강보험
              2보호1종
              3보호2종
              4일반
              5보호4종
              6보호8종
              7산재
              8자보
              9차상위1종
              10차상위2종
              11차상위2종장애인 }

            if ((ma_cancelDay <> '') and ((trim(ma_Sunkiho1) = '') or
              (trim(ma_Sunkiho4) = '0000')) and (trim(ma_Sunkiho2) = '') and
              (trim(ma_Sunkiho3) = '') and (trim(ma_Sunkiho4) = '')) or
              (ma_RestrictCd = '01') // 01 : 무자격자
              or (ma_RestrictCd = '02') // 02 : 보험료체납 급여제한자"
              or not((ma_hira_jong = '1') or // 보험자격자.
              (ma_hira_jong = '2') or (ma_hira_jong = '4') or (ma_hira_jong = '5') or
              (ma_hira_jong = '6') or (ma_hira_jong = '7') or (ma_hira_jong = '8'))

            then
            begin // 전액본인(무자격자)
              ma_jongbeul := '4'; // '일반';
              ma_K_Number := '';
              ma_Kiho := '';
              ma_PiboName := '';
            end
            else if copy(ma_chaSangNo, 1, 1) = 'C' then
            begin
              ma_jongbeul := '9'; // '차상위1종';
            end
            else if copy(ma_chaSangNo, 1, 1) = 'E' then
            begin
              // jongbeul := '차상위2종';
              // ver.3.42 장애여부 확인 -------------
              if ma_special = 'Y' then
                ma_jongbeul := '11' // '차상위2종장애인'
              else
                ma_jongbeul := '10'; // '차상위2종';
              // ------------------------------------
            end
            else if copy(ma_chaSangNo, 1, 1) = 'F' then
            begin
              ma_jongbeul := '11'; // '차상위2종장애인';
            end

            else if ma_hira_jong = '7' then
            begin
              ma_jongbeul := '2'; // '보호1종';
            end
            else if (ma_hira_jong = '8') and (ma_jangeil <> '') then
            begin
              ma_jongbeul := '6'; // '보호8종';
              // isJange := true;      // 인적창에서 장애는 정신지체장애를 말하므로 무조건 장애라고하면 안된다.
            end
            else if (ma_hira_jong = '8') then
            begin
              // jongbeul := '보호2종';
              // ver.3.42 장애여부 확인 -------------
              if ma_special = 'Y' then
                ma_jongbeul := '6' // '보호8종'
              else
                ma_jongbeul := '3'; // '보호2종';
              // ------------------------------------

            end
            else
            begin
              ma_jongbeul := '1'; // '보험';
            end;

            // 종별
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


     //성공하면 ini에 쓰자.
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
    showmessage('인증 오류');
//
     //    cbJong.ItemIndex := 3; // 일반

  end;
end;

end.
