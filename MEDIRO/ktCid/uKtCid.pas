unit uKtCid;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
       Forms,
       Dialogs, OleCtrls, KTPCBizLib_TLB, StdCtrls, iniFiles, ExtCtrls;

type
       Tktcid_f = class(TForm)
              ComboBox1: TComboBox;
    memRcvInfo: TMemo;
    ctrlKTOpenAPI: TKTPCBizX;
              procedure ctrlKTOpenAPIEventCID(ASender: TObject; const sCaller,
                     sCallee,
                     sResult, sClSeqno, sMiSeqno: WideString);
              procedure ctrlKTOpenAPIEventCON(ASender: TObject; const sCaller,
                     sCallee,
                     sCallBackID, sResult: WideString);
              procedure ctrlKTOpenAPIEventConnect(ASender: TObject; nResult:
                     Integer);
              procedure ctrlKTOpenAPIEventCTC(ASender: TObject; const sCaller,
                     sCallee,
                     sResult, sMiSeqno: WideString);
              procedure ctrlKTOpenAPIEventLogin(ASender: TObject; nResult:
                     Integer);
              procedure FormCreate(Sender: TObject);
              procedure ctrlKTOpenAPIEventSMS(ASender: TObject; const sCaller,
                     sCallee, sMessage, sSlSeqno: WideString);
              procedure ctrlKTOpenAPIEventAddinCall(ASender: TObject;
                     nSelectType: Integer; sAddinType, nCount: Smallint);

              { Private declarations }
       public
              //CID용
              bLogin, bAlreayLogined: Boolean;
              varauthkey: string;
              varCIDServerKind: integer;

              function CheckMyNumber(varNum: string): boolean;
              function CallResult(nResult: Integer): string;
              procedure GetPhoneList(varCombo: TComboBox);
              function CIDLogin: string;
              { Public declarations }





       end;

const
  MY_MESSAGE = WM_USER + 4242;


var
       ktcid_f: Tktcid_f;



implementation
uses uConfig, uDm, uFunctions, uGogekData, uMain, Cid, cidView;




{$R *.dfm}

procedure Tktcid_f.ctrlKTOpenAPIEventCID(ASender: TObject; const sCaller,
       sCallee, sResult, sClSeqno, sMiSeqno: WideString);
var
   nowTime : string;
begin

       //전화가 오면 번호 수신...
       //407 : 그냥 끊음
       //201 : 전화옴.
       //200 : 전화받음
       //404 : 통화중


{200	호처리 성공
201	호처리중
202	부재중
203	부재중
401	결번
404	통화중
405	무응답
407	발신자 호포기
408	착신자 호포기
}
       nowTime:= formatDatetime('hh:nn:ss', now);


       if (SResult = '201') and (CheckMyNumber(sCaller) = false) then
       begin
              main_f.CidView(sCaller, sCallee, sResult, sClSeqno, sMiSeqno);
       end;

       if (SResult = '200') and (CheckMyNumber(sCaller) = false) then
       begin
            if assigned( CID_f) then
               CID_f.timer1.enabled:=true;
       end;

       if (SResult = '407')  then       //전화 끊음
       begin

        if assigned( CID_f) then
          SendMessage(CID_f.Handle, MY_MESSAGE, 0, DWORD(PChar('A부재중전화 => ' + nowTime)));

       end;

       if (SResult = '404')  then        //통화중 전화
       begin
        if assigned( CID_f) then
          SendMessage(CID_f.Handle, MY_MESSAGE, 0, DWORD(PChar('T통화중전화 => ' + nowTime)));
       end;


       {
       memRcvInfo.Lines.Add(sCaller);
       memRcvInfo.Lines.Add(sCallee);
       memRcvInfo.Lines.Add(CallResult(strtoint(SResult)));
       memRcvInfo.Lines.Add(sClSeqno);
       memRcvInfo.Lines.Add(sMiSeqno);
       }

end;

procedure Tktcid_f.ctrlKTOpenAPIEventCON(ASender: TObject; const sCaller,
       sCallee, sCallBackID, sResult: WideString);
begin

              memRcvInfo.lines.Add(sCaller);
              memRcvInfo.lines.Add(sCallee);
              memRcvInfo.lines.Add(CallResult(strtoint(SResult)));
              memRcvInfo.lines.Add(sCallBackID);

end;

procedure Tktcid_f.ctrlKTOpenAPIEventConnect(ASender: TObject; nResult:
       Integer);
begin
       if nResult = 1 then
       begin
              main_f.pnlinfo2.caption := 'CID ON';
       end
       else
       begin
              main_f.pnlinfo2.caption := 'CID ON';//서버 접속 중';
       end;

end;

procedure Tktcid_f.ctrlKTOpenAPIEventCTC(ASender: TObject; const sCaller,
       sCallee, sResult, sMiSeqno: WideString);
begin
       {
              memsendInfo.Lines.Add(sCaller);
              memsendInfo.Lines.Add(sCallee);
              memsendInfo.Lines.Add(CallResult(strtoint(SResult)));
              memsendInfo.Lines.Add(sMiSeqno);
       }

end;

procedure Tktcid_f.ctrlKTOpenAPIEventLogin(ASender: TObject; nResult: Integer);
begin
       bLogin := False;

       case nResult of
              200:

                     begin

                            bLogin := True;
                            main_f.pnlinfo2.caption := 'CID ON';//'로그인 됨';
                            //GetPhoneList();
                     end;
              300:
                     begin
                            main_f.pnlinfo2.caption := '로그아웃';
                     end;
              400:
                     begin
                            main_f.pnlinfo2.caption := '다른곳에서 로그인 함';
                     end;
              401:
                     begin
                            main_f.pnlinfo2.caption :=
                                   '인증키 차단으로 인한 강제 로그아웃';
                     end;
       end;

end;

function TKtCid_f.CheckMyNumber(varNum: string): boolean;
type
       ArrayData = array of Variant;

var
       oPhoneList: OleVariant;
       oKTDPhone: IKTDPhone;
       arrPhoneList: ArrayData;
       i: Integer;
       ItemIndex: Integer;
       oPhone: OleVariant;

       AttrPtr: PCHAR;

begin
       if bLogin = false then
       begin
              exit;
       end;
       result := False;
       oPhoneList := ctrlKTOpenAPI.GetPhoneList();
       oKTDPhone := nil;

       if VarIsEmpty(oPhoneList) or VarIsNULL(oPhoneList) then
              Exit;

       arrPhoneList := ArrayData(oPhoneList);
       ItemIndex := 1;

       for i := LOW(arrPhoneList) to HIGH(arrPhoneList) do
       begin
              oPhone := arrPhoneList[i];

              if VarIsEmpty(oPhone) or VarIsNULL(oPhone) then
                     Continue;

              if TVarData(oPhone).VType = VarDispatch then
              begin
                     AttrPtr := TVarData(oPhone).VDispatch;
              end;

              if AttrPtr <> nil then
              begin
                     oKTDPhone := IKTDPhone(AttrPtr);
                     if oKTDPhone.TelNum = varNum then
                            result := True;

              end;
       end;
end;

procedure TKtCid_f.GetPhoneList(varCombo: TComboBox);
type
       ArrayData = array of Variant;

var
       oPhoneList: OleVariant;
       oKTDPhone: IKTDPhone;
       arrPhoneList: ArrayData;
       i: Integer;
       ItemIndex: Integer;
       oPhone: OleVariant;

       AttrPtr: PCHAR;

begin
       varCombo.Items.Clear();
       oPhoneList := ctrlKTOpenAPI.GetPhoneList();
       oKTDPhone := nil;

       if VarIsEmpty(oPhoneList) or VarIsNULL(oPhoneList) then
              Exit;

       arrPhoneList := ArrayData(oPhoneList);
       ItemIndex := 1;

       for i := LOW(arrPhoneList) to HIGH(arrPhoneList) do
       begin
              oPhone := arrPhoneList[i];

              if VarIsEmpty(oPhone) or VarIsNULL(oPhone) then
                     Continue;

              if TVarData(oPhone).VType = VarDispatch then
              begin
                     AttrPtr := TVarData(oPhone).VDispatch;
              end;

              if AttrPtr <> nil then
              begin
                     oKTDPhone := IKTDPhone(AttrPtr);
                     varCombo.Items.Add(oKTDPhone.Telnum);

                     { 대표 회선 셋팅 }
                     if oKTDPhone.Mainnum = 1 then
                     begin
                            varcombo.ItemIndex :=
                                   varCombo.Items.Count - 1;
                     end;

                     ItemIndex := ItemIndex + 1;
              end;
       end;
end;

function TKtCid_f.CallResult(nResult: Integer): string;
begin
       case nResult of
              200: result := '호처리 성공';
              201: result := '호처리중';
              202: result := '부재중';
              203: result := '부재중';
              401: result := '결번';
              404: result := '통화중';
              405: result := '무응답';
              407: result := '발신자 호포기';
              408: result := '착신자 호포기';
              701: result := 'SHOW CID 무선 회선 호 연결중';
              700: result := 'SHOW CID 무선 회선 호 연결됨';
              904, 905, 906, 907: result := 'SHOW CID 무선 회선 부재중';
       end;
end;

function TKtCid_f.CIDLogin: string;
var
       varuserid, varuserpw: string;
       nLoginResult: integer;
begin
       varUserID := configvalue.varCidID;
       //'gildata@naver.com'; //'User ID 입력';
       varUserPW := configvalue.varCidPass; //'gkgjsdu0'; //'User PW 입력';

       if (length(varAuthKey) = 0) or (length(varUserID) = 0) or
              (length(varUserPW) = 0) then
       begin
              result := '로그인에 필요한 정보가 충분치 않습니다.';
              Exit;
       end;

       nLoginResult := ctrlKTOpenAPI.Login(varCidServerKind,
              varAuthKey,
              varUserID,
              varUserPW);

       case nLoginResult of
              200:
                     begin
                            result := '(200)로그인 됨';
                     end;
              301:
                     begin
                            result := '(301)다른 위치에서 로그인 중';
                            bAlreayLogined := true;
                     end;
              401:
                     begin
                            result :=
                                   '(401)미등록 아이디로 로그인 요청';
                     end;
              402:
                     begin
                            result :=
                                   '(402)비밀번호 오류 횟수 초과(5회)';
                     end;
              405:
                     begin
                            result := '(405)비밀번호 오류';
                     end;
              407:
                     begin
                            result := '(407)접속 IP 오류';
                     end;
              408:
                     begin
                            result := '(408)미등록 PC';
                     end;
              500:
                     begin
                            result :=
                                   '(500)기타(HTTPS/HTTP) 요청 실패';
                     end;
              1000:
                     begin
                            result := '(1000)이미 로그인 중';
                     end;
              1001:
                     begin
                            result := '(1001)서버 타입 에러';
                     end;
              1502:
                     begin
                            result := '(1502)협정 만료일이 지났음';
                     end;
              1503:
                     begin
                            result := '(1503)인증키 유효기간이 지났음';
                     end;
              1504:
                     begin
                            result := '(1504)인증키 비활성';
                     end;
              1505:
                     begin
                            result := '(1505)인증키 타입이 틀림';
                     end;
              1506:
                     begin
                            result :=
                                   '(1506)개발 서버이나 상용 인증키, 상용 Flag일 경우';
                     end;
              1507:
                     begin
                            result :=
                                   '(1507)상용 서버이나 개발 인증키, 개발 Flag일 경우';
                     end;
              1700:
                     begin
                            result :=
                                   '(1700)API 환경 정보 얻지 못함(실행되는 경로)';
                     end;
              1701:
                     begin
                            result :=
                                   '(1701)KTA_API.dat / KTD_API.dat 등의 data 파일 초기화 에러(파일이 존재해야 함)';
                     end;
              1702:
                     begin
                            result :=
                                   '(1702)PC 메모리 부족(API 생성 에러)';
                     end;
              0:
              begin
              end;

       else
              begin
                     result := '기타 요청 실패';
              end;
       end;

end;

procedure Tktcid_f.FormCreate(Sender: TObject);
var
       iHeight: Integer;
       iWidth: Integer;
       FormInit: Tinifile;
       varCALLER, path: string;

begin
       Path := GetConfigDir + 'db.ini';
       FormInit := TIniFile.Create(Path);
       varCALLER := FormInit.ReadString('기타정보', 'CALLER', '0');

       FormInit.Free;
       if varCallER = 'dept' then
       begin

              //개발정보*****************************************************
              varAuthKey := 'ec6d9f680a0e649e493ac70710df28c7287d0262'; //개발키
              varCIDServerKind := 0; //0:개발서버 1:상용서버
              //*************************************************************
       end
       else
       begin
              //상용정보*****************************************************
              varAuthKey := '769b06a4f78f1dee1bec2f86c7b59744623e75d2'; //상용키
              varCIDServerKind := 1; //0:개발서버 1:상용서버
              //*************************************************************

       end;

end;

procedure Tktcid_f.ctrlKTOpenAPIEventSMS(ASender: TObject; const sCaller,
  sCallee, sMessage, sSlSeqno: WideString);
var
     varTelNo, varDate, varMaxCode, varName, varChartNo: string;

begin


 //Form 띄우기
 //발신된 전화번로로 Form을 새로 띄운다.
 //발신 전화번로로 캡션에 이름과 전화번로를 표시해준다.
 //수신된 메시지를 화면에 순차적으로 표시해준다.


     //정보 셋팅
     if sCaller <> '' then
     begin
          varTelNo := call_tel_type(sCaller);

          varDate := formatdatetime('YYYY-MM-DD', now);
          varMaxCode := formatdatetime('YYYYMMDDhhmmss', now);
     end;

     with Dm_f.SqlWork do
     begin
          CLOSE;
          Sql.Clear;
          Sql.Add('select b.chart , b.name, phone ');
          sql.add('from ma_gogek_phone a join ma_gogek_basic b on a.chart=b.chart');
          sql.Add('where phone = :TelNo');
          ParamByName('TelNo').AsString := varTelNo;
          Open;
          if not isEmpty then
          begin
               varName :=
                    fieldbyName('name').AsString;
               varChartNo :=
                    FieldbyName('Chart').AsString;
          end
          else
          begin

               CLOSE;
               Sql.Clear;
               Sql.Add('select name, phone, chart ');
               sql.add('from ma_gogek_phone ');
               sql.Add('where phone = :TelNo');
               ParamByName('TelNo').AsString := varTelNo;
               Open;
               if not isEmpty then
               begin
                    varName := fieldbyName('name').AsString;
                    varChartNo := fieldbyName('chart').AsString;
               end;

          end;
     end;

     if sCaller <> '' then
     begin

               TelRecSave(
                    varMaxCode  //;
                    ,varName //TrName;
                    ,varChartno  //TrChart;
                    ,FormatDateTime('YYYY-MM-DD', now)
                    ,FormatDateTime('HH:MM', now)    //TrTime;
                    ,'SMS'  //TriTime;
                    ,sMessage  //   TrRemark
                    ,''
                    ,''
                    ,''
                    ,''
                    ,varTelNo    // TrNumber
                    ,'R'
                    ,sSlSeqno);


     end
     else
     begin
     end;

      showmessage(
            '발신자정보:' +varName +'('+ sCaller+')'#10#13+
            '수신전화번호:' +sCallee+#10#13+
            '메시지:' +sMessage+#10#13+
            '연번:'   +sSlSeqno);



end;

procedure Tktcid_f.ctrlKTOpenAPIEventAddinCall(ASender: TObject;
  nSelectType: Integer; sAddinType, nCount: Smallint);
begin
     showmessage('');
end;


end.

