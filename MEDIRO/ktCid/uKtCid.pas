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
              //CID��
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

       //��ȭ�� ���� ��ȣ ����...
       //407 : �׳� ����
       //201 : ��ȭ��.
       //200 : ��ȭ����
       //404 : ��ȭ��


{200	ȣó�� ����
201	ȣó����
202	������
203	������
401	���
404	��ȭ��
405	������
407	�߽��� ȣ����
408	������ ȣ����
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

       if (SResult = '407')  then       //��ȭ ����
       begin

        if assigned( CID_f) then
          SendMessage(CID_f.Handle, MY_MESSAGE, 0, DWORD(PChar('A��������ȭ => ' + nowTime)));

       end;

       if (SResult = '404')  then        //��ȭ�� ��ȭ
       begin
        if assigned( CID_f) then
          SendMessage(CID_f.Handle, MY_MESSAGE, 0, DWORD(PChar('T��ȭ����ȭ => ' + nowTime)));
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
              main_f.pnlinfo2.caption := 'CID ON';//���� ���� ��';
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
                            main_f.pnlinfo2.caption := 'CID ON';//'�α��� ��';
                            //GetPhoneList();
                     end;
              300:
                     begin
                            main_f.pnlinfo2.caption := '�α׾ƿ�';
                     end;
              400:
                     begin
                            main_f.pnlinfo2.caption := '�ٸ������� �α��� ��';
                     end;
              401:
                     begin
                            main_f.pnlinfo2.caption :=
                                   '����Ű �������� ���� ���� �α׾ƿ�';
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

                     { ��ǥ ȸ�� ���� }
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
              200: result := 'ȣó�� ����';
              201: result := 'ȣó����';
              202: result := '������';
              203: result := '������';
              401: result := '���';
              404: result := '��ȭ��';
              405: result := '������';
              407: result := '�߽��� ȣ����';
              408: result := '������ ȣ����';
              701: result := 'SHOW CID ���� ȸ�� ȣ ������';
              700: result := 'SHOW CID ���� ȸ�� ȣ �����';
              904, 905, 906, 907: result := 'SHOW CID ���� ȸ�� ������';
       end;
end;

function TKtCid_f.CIDLogin: string;
var
       varuserid, varuserpw: string;
       nLoginResult: integer;
begin
       varUserID := configvalue.varCidID;
       //'gildata@naver.com'; //'User ID �Է�';
       varUserPW := configvalue.varCidPass; //'gkgjsdu0'; //'User PW �Է�';

       if (length(varAuthKey) = 0) or (length(varUserID) = 0) or
              (length(varUserPW) = 0) then
       begin
              result := '�α��ο� �ʿ��� ������ ���ġ �ʽ��ϴ�.';
              Exit;
       end;

       nLoginResult := ctrlKTOpenAPI.Login(varCidServerKind,
              varAuthKey,
              varUserID,
              varUserPW);

       case nLoginResult of
              200:
                     begin
                            result := '(200)�α��� ��';
                     end;
              301:
                     begin
                            result := '(301)�ٸ� ��ġ���� �α��� ��';
                            bAlreayLogined := true;
                     end;
              401:
                     begin
                            result :=
                                   '(401)�̵�� ���̵�� �α��� ��û';
                     end;
              402:
                     begin
                            result :=
                                   '(402)��й�ȣ ���� Ƚ�� �ʰ�(5ȸ)';
                     end;
              405:
                     begin
                            result := '(405)��й�ȣ ����';
                     end;
              407:
                     begin
                            result := '(407)���� IP ����';
                     end;
              408:
                     begin
                            result := '(408)�̵�� PC';
                     end;
              500:
                     begin
                            result :=
                                   '(500)��Ÿ(HTTPS/HTTP) ��û ����';
                     end;
              1000:
                     begin
                            result := '(1000)�̹� �α��� ��';
                     end;
              1001:
                     begin
                            result := '(1001)���� Ÿ�� ����';
                     end;
              1502:
                     begin
                            result := '(1502)���� �������� ������';
                     end;
              1503:
                     begin
                            result := '(1503)����Ű ��ȿ�Ⱓ�� ������';
                     end;
              1504:
                     begin
                            result := '(1504)����Ű ��Ȱ��';
                     end;
              1505:
                     begin
                            result := '(1505)����Ű Ÿ���� Ʋ��';
                     end;
              1506:
                     begin
                            result :=
                                   '(1506)���� �����̳� ��� ����Ű, ��� Flag�� ���';
                     end;
              1507:
                     begin
                            result :=
                                   '(1507)��� �����̳� ���� ����Ű, ���� Flag�� ���';
                     end;
              1700:
                     begin
                            result :=
                                   '(1700)API ȯ�� ���� ���� ����(����Ǵ� ���)';
                     end;
              1701:
                     begin
                            result :=
                                   '(1701)KTA_API.dat / KTD_API.dat ���� data ���� �ʱ�ȭ ����(������ �����ؾ� ��)';
                     end;
              1702:
                     begin
                            result :=
                                   '(1702)PC �޸� ����(API ���� ����)';
                     end;
              0:
              begin
              end;

       else
              begin
                     result := '��Ÿ ��û ����';
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
       varCALLER := FormInit.ReadString('��Ÿ����', 'CALLER', '0');

       FormInit.Free;
       if varCallER = 'dept' then
       begin

              //��������*****************************************************
              varAuthKey := 'ec6d9f680a0e649e493ac70710df28c7287d0262'; //����Ű
              varCIDServerKind := 0; //0:���߼��� 1:��뼭��
              //*************************************************************
       end
       else
       begin
              //�������*****************************************************
              varAuthKey := '769b06a4f78f1dee1bec2f86c7b59744623e75d2'; //���Ű
              varCIDServerKind := 1; //0:���߼��� 1:��뼭��
              //*************************************************************

       end;

end;

procedure Tktcid_f.ctrlKTOpenAPIEventSMS(ASender: TObject; const sCaller,
  sCallee, sMessage, sSlSeqno: WideString);
var
     varTelNo, varDate, varMaxCode, varName, varChartNo: string;

begin


 //Form ����
 //�߽ŵ� ��ȭ���η� Form�� ���� ����.
 //�߽� ��ȭ���η� ĸ�ǿ� �̸��� ��ȭ���θ� ǥ�����ش�.
 //���ŵ� �޽����� ȭ�鿡 ���������� ǥ�����ش�.


     //���� ����
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
            '�߽�������:' +varName +'('+ sCaller+')'#10#13+
            '������ȭ��ȣ:' +sCallee+#10#13+
            '�޽���:' +sMessage+#10#13+
            '����:'   +sSlSeqno);



end;

procedure Tktcid_f.ctrlKTOpenAPIEventAddinCall(ASender: TObject;
  nSelectType: Integer; sAddinType, nCount: Smallint);
begin
     showmessage('');
end;


end.

