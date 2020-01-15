unit inputElectSign;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, OleCtrls, KISVANMS3Lib_TLB, StdCtrls, ExtCtrls, AdvPanel,
     AdvGlowButton, iniFiles;

type
     TinputElectSign_f = class(TForm)
          AdvPanelStyler1: TAdvPanelStyler;
    AdvPanel1: TPanel;
    Label1: TLabel;
    AdvPanel2: TPanel;
    AdvPanel3: TPanel;
    KisvanMS31: TKisvanMS3;
    btnOk: TButton;
    btnCancel: TButton;
    btnRetry: TButton;
    btnSet: TButton;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure btnOkClick(Sender: TObject);
          procedure FormActivate(Sender: TObject);
          procedure btnRetryClick(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure KisvanMS31SignEnd(Sender: TObject);
    procedure btnSetClick(Sender: TObject);
     private
     cardno, varterminalno :string;
     varSignPort:integer;
          procedure signComplete;
    procedure loadSignStat;
          { Private declarations }
     public
          varSignChart:string;
          signKind:string;
          { Public declarations }
     end;

var
     inputElectSign_f: TinputElectSign_f;

implementation
uses  uMain, uDM, personalinfo, uFunctions, uGogekData;


{$R *.dfm}

procedure TinputElectSign_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin

     KisvanMS31.KisCancel;
     action := caFree;
end;

procedure TinputElectSign_f.FormDestroy(Sender: TObject);
begin
     inputElectsign_f := nil;
end;

procedure TinputElectSign_f.btnOkClick(Sender: TObject);
begin
     signComplete;
end;

procedure TinputElectSign_f.signComplete;
var
     SignBuf: OLEVariant;
     nch: Smallint;
     gpDataArray: PByteArray;
     ret:integer;
     varFilePath:string;
     varSignFile :string;
begin
     varFilePath :=  stringreplace(varSignChart, '*', '_',   [rfReplaceAll])  ;

     if signKind = '1' then
        varSignFile := extractFilePath(ParamStr(0))+'signdata\'+varFilePath   +'Parent_sign.bmp'
     else
        varSignFile := extractFilePath(ParamStr(0))+'signdata\'+varFilePath   +'sign.bmp';


     ret:=    KisvanMS31.KisGetSignBMP(Format('%-20s', [Copy(CardNo, 1, 16)])
          , Format('%16s', [varTerminalNo])
          + '000001      '
          + FormatDateTime('YYMMDD', Now())
          + '0000'
          + Format('%-8s', ['0'])
          + '000001         '
          , varSignFile);

     if ret <> 1 then
     begin
      //   kismain_f.m_SignCheck := -1;
        showmessage('싸인데이터생성 실패, 다시 싸인하여 주십시오.');
     end;

 //    Close;
end;

procedure TinputElectSign_f.FormActivate(Sender: TObject);
begin

   //  loadSignStat;
     
end;
procedure TinputElectSign_f.loadSignStat;
var
     lRet: smallint;
begin
   //  kismain_f.m_SignCheck := -1;

     KisvanMS31.SetPortNo(varSignPort);//kismain_f.varSignPadPort); //서명패드가 연결된 시리얼포트 번호
     KisvanMS31.SetBaudRate(57600); // 디폴트

     //
     //거래정보: 단말기번호(16)+거래일련번호(12)+승인일자(6)+승인금액(12 leading zero) + 거래일련번호(15)
     //m_TrInfo := '90071085        000001      071217000000001004000001         ';

     lRet := KisvanMS31.KisElecSign(Format('%-20s', [Copy(CardNo, 1, 16)])
          , Format('%16s', [varTerminalNo])
          + '000001      '
          + FormatDateTime('YYMMDD', Now())
          + '0000'
          + Format('%-8s', ['0'])
          + '000001         ');

     if (lRet <> 0) then
     begin
          ShowMessage('사인패드연결실패');
     end;
end;

procedure TinputElectSign_f.btnRetryClick(Sender: TObject);
var
     lRet: smallint;
begin
     KisvanMS31.SetPortNo(varSignPort);//kismain_f.varsignpadport); //서명패드가 연결된 시리얼포트 번호
     KisvanMS31.SetBaudRate(57600); // 디폴트

     KisvanMS31.KisCancel;
     //
     //거래정보: 단말기번호(16)+거래일련번호(12)+승인일자(6)+승인금액(12 leading zero) + 거래일련번호(15)
     //m_TrInfo := '90071085        000001      071217000000001004000001         ';

    lRet := KisvanMS31.KisElecSign(Format('%-20s', [Copy(CardNo, 1, 16)])
          , Format('%16s', [varTerminalNo])
          + '000001      '
          + FormatDateTime('YYMMDD', Now())
          + '0000'
          + Format('%-8s', ['0'])
          + '000001         ');

     if (lRet <> 0) then
     begin
          ShowMessage('사인패드연결실패');
     end;

end;

procedure TinputElectSign_f.btnCancelClick(Sender: TObject);
begin
     KisvanMS31.KisCancel;
    // kismain_f.m_SignCheck := -1;
     Close;

end;

procedure TinputElectSign_f.FormShow(Sender: TObject);
var
     FormInit: Tinifile;
     path: string;
begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varSignPort:= FormInit.ReadInteger('기타정보', 'SIGNPORT', 8);
     FormInit.Free;

     cardno:='1234567890123456';
     varterminalno:='1234567890123456';
     caption := '서명 입력 대기';

     loadSignStat;
end;

procedure TinputElectSign_f.KisvanMS31SignEnd(Sender: TObject);
begin
     //    showmessage('signend');
           signComplete;
end;

procedure TinputElectSign_f.btnSetClick(Sender: TObject);
var
     FormInit: Tinifile;
     path: string;
     varPortNo:string;
     varOldPortNo : string;
begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varOldPortNo := FormInit.ReadString('기타정보', 'SIGNPORT', '8');

     varPortNo:=    inputBox('COMPORT를 설정합니다.','PORT NO', varOldPortNo);
     FormInit.WriteString('기타정보', 'SIGNPORT', varPortNo);
     varSignPort:= strtoint(varPortNo);
     FormInit.Free;


end;




end.


