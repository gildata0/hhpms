unit uNimsGuibBogo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvPanel, Vcl.ExtCtrls, AdvSplitter,
  uni,
  Vcl.StdCtrls, AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ComCtrls,
  xmldom, XMLIntf, XMLDoc,
  AdvEdit, AdvEdBtn, ComObj;

type
  TnimsGuibBogo_f = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    AdvSplitter1: TAdvSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    AdvPanel1: TAdvPanel;
    AdvSplitter2: TAdvSplitter;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    grdSendData: TAdvStringGrid;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;

    dtBogoDate: TDateTimePicker;
    dtGuipDate: TDateTimePicker;
    edtDamdangName: TAdvEdit;
    edtBogojaName: TAdvEdit;
    edtDamdangPhone: TAdvEdit;
    edtDamdangCPhone: TAdvEdit;
    edtSayu: TAdvEdit;
    dtLifeTerm: TDateTimePicker;
    edtMinUtong: TAdvEdit;
    edtMinGuip: TAdvEdit;
    edtChungGuName: TAdvEdit;
    edtManageGubun: TAdvEdit;
    edtDanwi: TAdvEdit;
    edtNatGuipSu: TAdvEdit;
    cbStorage1: TComboBox;
    cbStorage2: TComboBox;
    dtStart: TDateTimePicker;
    dtFinish: TDateTimePicker;
    edtUpche: TAdvEdit;
    grdSearchData: TAdvStringGrid;
    cbBogoKind: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    btnSearchGumeHx: TButton;
    Label28: TLabel;
    btnGuipSearch: TButton;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    btnInit1: TButton;
    AdvPanel2: TAdvPanel;
    btnInit2: TButton;
    btnInsert: TButton;
    btnMod: TButton;
    btnDelete: TButton;
    edtUpcheCode: TAdvEdit;
    edtChungGuCode: TAdvEdit;
    edtProductName: TAdvEdit;
    edtUpcheName: TAdvEdit;
    edtUserCode: TAdvEdit;
    edtJepumCode: TAdvEdit;
    edtJejoNo: TAdvEdit;
    edtSeqNo: TAdvEdit;
    edtBarcode: TAdvEdit;
    lblDanwi1: TLabel;
    lblDanwi2: TLabel;
    lblDanwi4: TLabel;
    lblDanwi3: TLabel;
    btnSendXML: TButton;
    Panel5: TAdvPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    txtFilename: TMemo;
    txtKey: TMemo;
    txtURL: TMemo;
    btnUpload: TButton;
    btnResult: TButton;
    txtResult: TMemo;
    Label34: TLabel;
    txtPlainText: TMemo;
    Label35: TLabel;
    txtEncryption2: TMemo;
    Button2: TButton;
    btnDBSave: TButton;
    btnLoadNotSendData: TButton;
    btnCls: TButton;
    procedure btnInit2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGuipSearchClick(Sender: TObject);
    procedure btnSettingClick(Sender: TObject);
    procedure grdSearchDataClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdSendDataClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnSendXMLClick(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label2DblClick(Sender: TObject);
    procedure btnDBSaveClick(Sender: TObject);
  private
    procedure fieldClear;
    procedure SearchGuib;
    function SaveXml(xmlFilename: string; FileCreateDate:string; seqNO:string) : boolean;

   function ExcryptPhoneNumber(plainStr: string):string;


    { Private declarations }
  public
    { Public declarations }
  end;


const
  testLib = 'RSALib.dll';

var
  nimsGuibBogo_f: TnimsGuibBogo_f;

  PublicKey      : AnsiString;
  DispatchObj    : Variant;
  webUtil        : Variant;

implementation
uses
  uConfig, uDM, uRest, uFormInit, uFunctions, usysInfo, uGogekData, uNimsSet
 ,uLageTextStringReplace;


{$R *.dfm}

procedure TnimsGuibBogo_f.btnDBSaveClick(Sender: TObject);
const

  insertPcmHInf =
  '   INSERT INTO  [PcmHInf]                        '+#10+
  '           ([HDR_DE]                                  '+#10+
  '           ,[BSSH_CD]                                 '+#10+
  '           ,[RPT_SE_CD]                               '+#10+
  '           ,[USR_RPT_ID_NO]                           '+#10+
  '           ,[REF_USR_RPT_ID_NO]                       '+#10+
  '           ,[RPT_TY_CD]                               '+#10+
  '           ,[RMK]                                     '+#10+
  '           ,[RPTR_NM]                                 '+#10+
  '           ,[RPTR_ENTRPS_NM]                          '+#10+
  '           ,[CHRG_NM]                                 '+#10+
  '           ,[CHRG_TEL_NO]                             '+#10+
  '           ,[CHRG_MP_NO]                              '+#10+
  '           ,[RND_DTL_RPT_CNT]                         '+#10+
  '           ,[OPP_BSSH_NM]                             '+#10+
  '           ,[OPP_BSSH_CD]                             '+#10+
  '           ,[OPP_STORGE_NO]                           '+#10+
  '           ,[ATCH_FILE_CO]                            '+#10+
  '           ,[REGISTER_ID]                             '+#10+
  '           ,[FILE_CREAT_DT]                           '+#10+
  '           ,[UidCod]                                  '+#10+
  '           ,[UpdDtm]                                  '+#10+
  '           ,[ChkStt]                                  '+#10+
  '           ,[UpdYon]                                  '+#10+
  '           ,[FileName])                               '+#10+
  '     VALUES                                           '+#10+
  '           (:HDR_DE                  '+#10+                   //, varchar(8),>
  '           ,:BSSH_CD                 '+#10+                   //, varchar(10),>
  '           ,:RPT_SE_CD               '+#10+                    //, varchar(3),>
  '           ,:USR_RPT_ID_NO            '+#10+                   //, varchar(22),>
  '           ,:REF_USR_RPT_ID_NO        '+#10+                   //, varchar(22),>
  '           ,:RPT_TY_CD                  '+#10+                 //, varchar(1),>
  '           ,:RMK                             '+#10+            //, text,>
  '           ,:RPTR_NM                  '+#10+                   //, varchar(40),>
  '           ,:RPTR_ENTRPS_NM          '+#10+                   //, varchar(200),>
  '           ,:CHRG_NM                  '+#10+                  //, varchar(40),>
  '           ,:CHRG_TEL_NO               '+#10+                 //, varchar(20),>
  '           ,:CHRG_MP_NO               '+#10+                  //, varchar(20),>
  '           ,:RND_DTL_RPT_CNT                 '+#10+           //, int,>
  '           ,:OPP_BSSH_NM             '+#10+                   //, varchar(200),>
  '           ,:OPP_BSSH_CD              '+#10+                  //, varchar(10),>
  '           ,:OPP_STORGE_NO             '+#10+                 //, varchar(16),>
  '           ,:ATCH_FILE_CO                      '+#10+         //, int,>
  '           ,:REGISTER_ID              '+#10+                  //, varchar(20),>
  '           ,:FILE_CREAT_DT         '+#10+                     //, varchar(14),>
  '           ,:UidCod                       '+#10+               //, char(8),>
  '           ,:UpdDtm                      '+#10+                //, char(12),>
  '           ,:ChkStt                        '+#10+              //, char(1),>
  '           ,:UpdYon                        '+#10+              //, char(1),>
  '           ,:FileName)                    ';                   //, char(35),>

  insertPcmLInf=
  ' INSERT INTO  [PcmLInf]                               '+#10+
  '           ([USR_RPT_ID_NO]                           '+#10+
  '           ,[USR_RPT_LN_ID_NO]                        '+#10+
  '           ,[STORGE_NO]                               '+#10+
  '           ,[MVMN_TY_CD]                              '+#10+
  '           ,[PRDUCT_CD]                               '+#10+
  '           ,[MNF_NO]                                  '+#10+
  '           ,[MNF_SEQ]                                 '+#10+
  '           ,[MIN_DISTB_QY]                            '+#10+
  '           ,[PRD_MIN_DISTB_UNIT]                      '+#10+
  '           ,[PCE_QY]                                  '+#10+
  '           ,[PRD_PCE_UNIT]                            '+#10+
  '           ,[PRDUCT_NM]                               '+#10+
  '           ,[PRD_SGTIN]                               '+#10+
  '           ,[PRD_MIN_DISTB_QY]                        '+#10+
  '           ,[PRD_TOT_PCE_QY]                          '+#10+
  '           ,[PRD_VALID_DE]                            '+#10+
  '           ,[FILE_CREAT_DT]                           '+#10+
  '           ,[PElcCod]                                 '+#10+
  '           ,[PPcsDte]                                 '+#10+
  '           ,[PSeq]                                    '+#10+
  '           ,[POdrCod])                                '+#10+
  '     VALUES                                           '+#10+
  '           (:USR_RPT_ID_NO             '+#10+                 //, varchar(22),>
  '           ,:USR_RPT_LN_ID_NO        '+#10+                   //, varchar(22),>
  '           ,:STORGE_NO                '+#10+                 //, varchar(16),>
  '           ,:MVMN_TY_CD                '+#10+                //, varchar(4),>
  '           ,:PRDUCT_CD                 '+#10+                //, varchar(14),>
  '           ,:MNF_NO                   '+#10+                 //, varchar(20),>
  '           ,:MNF_SEQ                 '+#10+                  //, varchar(42),>
  '           ,:MIN_DISTB_QY           '+#10+                   //, decimal(9,4),>
  '           ,:PRD_MIN_DISTB_UNIT      '+#10+                  //, varchar(20),>
  '           ,:PCE_QY                  '+#10+                 //, decimal(9,4),>
  '           ,:PRD_PCE_UNIT           '+#10+                  //, varchar(20),>
  '           ,:PRDUCT_NM                '+#10+                //, varchar(200),>
  '           ,:PRD_SGTIN                '+#10+                //, varchar(68),>
  '           ,:PRD_MIN_DISTB_QY       '+#10+                  //, decimal(9,4),>
  '           ,:PRD_TOT_PCE_QY          '+#10+                 //, decimal(9,4),>
  '           ,:PRD_VALID_DE              '+#10+               //, varchar(8),>
  '           ,:FILE_CREAT_DT            '+#10+                //, varchar(14),>
  '           ,:PElcCod                     '+#10+            //, char(10),>
  '           ,:PPcsDte                     '+#10+            //, char(8),>
  '           ,:PSeq                    '+#10+               //, numeric(5,0),>
  '           ,:POdrCod)                     ';             //, char(10),>



begin
    with dm_f.sqlTemp13 do
    begin
           close;
           sql.Clear;
           sql.Text := insertPcmHInf;
           paramByName('HDR_DE'           ).AsString :=   '' ;  //창고입고일자
           paramByName('BSSH_CD'          ).AsString :=   '' ;  //마약류취급자 식별번호
           paramByName('RPT_SE_CD'        ).AsString :=   'PCM' ; //PCM: 구입 MCM:투약
           paramByName('USR_RPT_ID_NO'    ).AsString :=   '' ;   //사용자식별번호 , //Line과 같이 사용
           paramByName('REF_USR_RPT_ID_NO').AsString :=   '' ;   //참조사용자 식별번호 취소,변경하려는 기존보고건의 사용자보고식별번호_NO
           paramByName('RPT_TY_CD'        ).AsString :=   '0' ;   //신규보고:0, 취소보고:1, 변경보고:2
           paramByName('RMK'              ).AsString :=   edtSayu.text ; //신구는 없음. 텍스트만 입력, 줄바꿈컴마, 특수기호 안됨.
           paramByName('RPTR_NM'          ).AsString :=   edtBogojaName.text ; //법령상 허가, 지정받은 보고자명 기재
           paramByName('RPTR_ENTRPS_NM'   ).AsString :=   configvalue.varsaupname ;  //보고자업체명
           paramByName('CHRG_NM'          ).AsString :=   edtDamdangName.text  ; //당해 보고건을 처리한 담당자 명.
           paramByName('CHRG_TEL_NO'      ).AsString :=   edtDamdangPhone.text  ;
           paramByName('CHRG_MP_NO'       ).AsString :=   edtDamdangCPhone.text ; //휴대전화 - 암호화 입력
           paramByName('RND_DTL_RPT_CNT'  ).AsString :=   inttostr(grdSendData.RowCount -1)  ;  //상세보고 라인 수
           paramByName('OPP_BSSH_NM'      ).AsString :=   edtUpcheName.text ;  //판매업체 명
           paramByName('OPP_BSSH_CD'      ).AsString :=   edtUpcheCode.text ;  //마약류취급자식별번호
           paramByName('OPP_STORGE_NO'    ).AsString :=   cbStorage1.Items[ cbStorage1.ItemIndex]; //'S0001'
           paramByName('ATCH_FILE_CO'     ).AsString :=   '0' ;  //첨부파일의 개수
           paramByName('REGISTER_ID'      ).AsString :=   '' ;   //마약류통합관리시스템 회원 ID
           paramByName('FILE_CREAT_DT'    ).AsString :=   '' ;   //파일생성일시
           paramByName('UidCod'           ).AsString :=   '' ;   //사용자 ID
           paramByName('UpdDtm'           ).AsString :=   '' ;   //작성일시
           paramByName('ChkStt'           ).AsString :=   '' ;   //전송상태
           paramByName('UpdYon'           ).AsString :=   '' ;   //
           paramByName('FileName'         ).AsString :=   '' ;   //전송파일 명
    end;

    with dm_f.sqlTemp13 do
    begin
           close;
           sql.Clear;
           sql.Text := insertPcmLInf;

           paramByName('USR_RPT_ID_NO'     ).AsString :=   '' ; //헤더(PcmHinfo)부분의 사용자 식별번호
           paramByName('USR_RPT_LN_ID_NO'  ).AsString :=   '' ; //보고건의 상세항목(라인)식별 번호20181004155434_1
           paramByName('STORGE_NO'         ).AsString :=   cbStorage2.items[ cbStorage2.ItemIndex] ; //저장소
           paramByName('MVMN_TY_CD'        ).AsString :=   '0201';    //이동유형코드, 0201:구매입고 0802:투약출고
           paramByName('PRDUCT_CD'         ).AsString :=   edtJepumCode.text ;  //제품코드
           paramByName('MNF_NO'            ).AsString :=   edtJejoNo.text ;     //제조번호
           paramByName('MNF_SEQ'           ).AsString :=   edtSeqNo.text  ;    //일련번호
           paramByName('MIN_DISTB_QY'      ).AsString :=   edtMinGuip.text ;  //제품최소유통구입수량
           paramByName('PRD_MIN_DISTB_UNIT').AsString :=   lblDanwi1.Caption ;  //제품최소유통단위
           paramByName('PCE_QY'            ).AsString :=   edtNatGuipSu.text ;   //제품낱개단위구입수량
           paramByName('PRD_PCE_UNIT'      ).AsString :=   lblDanwi3.Caption ;   //제품낱개단위
           paramByName('PRDUCT_NM'         ).AsString :=   edtProductName.text  ; //제품명
           paramByName('PRD_SGTIN'         ).AsString :=   edtBarcode.text  ;      //Barcode/RFID
           paramByName('PRD_MIN_DISTB_QY'  ).AsString :=   edtMinUtong.text  ;  //최소유통단위수량
           paramByName('PRD_TOT_PCE_QY'    ).AsString :=   edtDanwi.text ;    //제품낱개단위수량
           paramByName('PRD_VALID_DE'      ).AsString :=   formatDatetime('YYYYMMDD',dtLifeTerm.date) ;//유효기간
           paramByName('FILE_CREAT_DT'     ).AsString :=   '' ; //20190114103614
           paramByName('PElcCod'           ).AsString :=   edtChungGuCode.text  ;  //청구코드
           paramByName('PPcsDte'           ).AsString :=   formatDatetime('YYYYMMDD',dtGuipDate.date) ;
           paramByName('PSeq'              ).AsString :=   '0' ;
           paramByName('POdrCod'           ).AsString :=   edtUserCode.text;  //사용자코드
    end;




end;

procedure TnimsGuibBogo_f.btnGuipSearchClick(Sender: TObject);
begin
     SearchGuib;
end;

procedure TnimsGuibBogo_f.btnInit2Click(Sender: TObject);
begin
     fieldClear;
end;

procedure TnimsGuibBogo_f.btnResultClick(Sender: TObject);
var
resultTextFile : string;

 Replacer : TFileSearchReplace;
  Strings: TStrings;

begin

  webUtil.Url := 'https://test.nims.or.kr/api/result.do';

  //  화면표시
  txtFilename.Text := webUtil.FileName;
  txtKey.Text := webUtil.Key;
  txtURL.Text := webUtil.Url;

  //  보고서 요청/결과 호출
  txtResult.Text := webUtil.postRequest('response');


   txtResult.Text:=      stringReplace(txtResult.Text, '{"code":"0","result":"', '', [rfReplaceAll, rfIgnoreCase]);
   txtResult.Text:=      stringReplace(txtResult.Text, '\n"}', '', [rfReplaceAll, rfIgnoreCase]);
   txtResult.Text:=      stringReplace(txtResult.Text, '\n', '', [rfReplaceAll, rfIgnoreCase]);
   txtResult.Text:=      stringReplace(txtResult.Text, '\', '', [rfReplaceAll, rfIgnoreCase]);

 //  txtResult.Text :=  UTF8Encode(txtResult.Text);

      resultTextFile := stringReplace(webUtil.FileName , '.xml','', [rfReplaceAll, rfIgnoreCase] ) ;
      resultTextFile :=resultTextFile + '_Result'+  '.xml' ;

      txtResult.Lines.SaveToFile( resultTextFile, TEncoding.UTF8);
                                    //txtResult.Text  TEncoding.UTF8);
//  try
//    Strings := TStringList.Create;
//   // Strings.LoadFromFile(resultTextFile);
//  //  Strings.Text := UTF8Encode(Strings.Text);
//    Strings.Text := UTF8Encode(txtResult.Text);
//    Strings.SaveToFile(resultTextFile);
//  finally
//    Strings.Free;
//  end;

//      Replacer:=TFileSearchReplace.Create(resultTextFile);
//      try
//        Replacer.Replace('{"code":"0","result":"', '', [rfReplaceAll, rfIgnoreCase]);
//        Replacer.Replace('\n"}', '', [rfReplaceAll, rfIgnoreCase]);
//        Replacer.Replace('\n', '', [rfReplaceAll, rfIgnoreCase]);
//        Replacer.Replace('\', '', [rfReplaceAll, rfIgnoreCase]);
//      finally
//        Replacer.Free;
//      end;

end;

procedure TnimsGuibBogo_f.btnSettingClick(Sender: TObject);
begin
  if not Assigned(nimsSet_f) then
    nimsSet_f := TnimsSet_f.Create(application);

  nimsSet_f.ShowModal;

end;

procedure TnimsGuibBogo_f.btnUploadClick(Sender: TObject);
begin
  webUtil.Url := 'https://test.nims.or.kr/api/upload.do';

  //  화면표시
  txtFilename.Text := webUtil.FileName;
  txtKey.Text := webUtil.Key;
  txtURL.Text := webUtil.Url;

  //  보고서 요청/결과 호출
  txtResult.Text := webUtil.postRequest('request');

end;

procedure TnimsGuibBogo_f.btnSendXMLClick(Sender: TObject);
var
    dir,  xmlfileName: string;
    fileDate : string;

    Replacer: TFileSearchReplace;
    StartTime: TDateTime;
    resultTextFile:string;

    Doc         : IXMLDocument;
    pcm_result  : IXMLNode;
    result_set  : IXMLNode;
    result      : IXMLNode;
    aResultCode : string;
begin

  begin

  txtResult.Lines.Clear;

   DispatchObj  := CreateOleObject('RSALib.Dispatch');
   webUtil      := CreateOleObject('RSALib.Webutil');

   webUtil.Key := '787064004350fa950b798c9edea1b38f3cfbcf3b77e03e419';  //인증키
//  webUtil.FileName := extractFilePath(paramStr(0))
//    +'TEMP\XML\TST000397PCM20190608133947_0001.xml';                //보고서파일명 (패스포함)

  PublicKey :=
   '30820122300d06092a864886f70d010101050'+
   '00382010f003082010a0282010100a276b723301526dcec143d'+
   '1d8c77ba2c007dddf14b461d403c9db5fce2ca7091cbecf0622'+
   'af3aebcb7d7e824dbeb33c281906815c829df82ff8a5c522433'+
   '6fd4038d3c2bef7b28b21c00f81c087813d0b28298aa67cc63c'+
   'b8f3e3d7265533380e5f649082f14bfcb6439bf8530275be3cd'+
   'b3c7cb2ee535e2f8e73ef693bf0bedcb40726bd908c9816c0ed'+
   '9b03a5f7c1770998db39cb292c7c6c09eb81033c1d4d1193ceb'+
   '1571d5c41bd9388f697621169baba50648cb9c4a9bd9f8eac16'+
   '8dcba8337923b712824eaa4951bef19f726ca7f5e87d8dde3de'+
   '7ff2e42001544ca7b55a83ab0ecc0c483c79a97666b0be513d4'+
   'e619a97330668ec725776973b55421b0203010001';

   fileDate :=    formatdatetime('YYYYMMDDhhnnss',now);

   dir := extractFilePath(paramStr(0))   + 'temp\Xml\';

   if not DirectoryExists(dir) then
     ForceDirectories(dir);


   xmlfileName := dir +'TST000397PCM'+
                  fileDate + '_0001'+ '.xml';//dir  ;

  if SaveXml(xmlfileName,  fileDate, inttostr(random(1000)) ) = true then
  begin



          webUtil.Url := 'https://test.nims.or.kr/api/upload.do';
          webUtil.FileName := xmlfileName;
          //  화면표시
          txtFilename.Text := webUtil.FileName;
          txtKey.Text := webUtil.Key;
          txtURL.Text := webUtil.Url;

          //        보고서 요청/결과 호출
          txtResult.Text := webUtil.postRequest('request');
          //webUtil.postRequest('request')성공하면
          //메시지 {"code":"0","filename":"TST000397PCM20190609202323_0001.xml"} 를 txtResult.Text에 쓴다.
          //  txtResult.Text {"code"가 나올때까지 기다린다.
          //      while  pos( '{"code":"0"',txtResult.Lines[0]) = 1 do
          //      begin
          //           showmessage(txtResult.Lines[0]);
          //      end;

          repeat

          until
           pos( '{"code":"0"',txtResult.Lines[0]) = 1;


          sleep(1000);
          application.ProcessMessages;
          //요청 결과값 가져오기
          webUtil.Url := 'https://test.nims.or.kr/api/result.do';

          //  화면표시
          txtFilename.Text := webUtil.FileName;
          txtKey.Text := webUtil.Key;
          txtURL.Text := webUtil.Url;

          //  보고서 요청/결과 호출
          txtResult.Text := webUtil.postRequest('response');

          repeat

          until
           pos( '{"code":"0"',txtResult.Lines[0]) = 1;



          //txt파일 읽어서 문자열 치환(uLageTextStringReplace.pas사용)을 메모내용 가져와서 문자열 치환으로 수정함.
          txtResult.Text:=      stringReplace(txtResult.Text, '{"code":"0","result":"', '', [rfReplaceAll, rfIgnoreCase]);
          txtResult.Text:=      stringReplace(txtResult.Text,'\n"}', '', [rfReplaceAll, rfIgnoreCase]);
          txtResult.Text:=      stringReplace(txtResult.Text,'\n', '', [rfReplaceAll, rfIgnoreCase]);
          txtResult.Text:=      stringReplace(txtResult.Text,'\', '', [rfReplaceAll, rfIgnoreCase]);

          //  txtResult.Text :=  UTF8Encode(txtResult.Text);

          resultTextFile := stringReplace(webUtil.FileName , '.xml','', [rfReplaceAll, rfIgnoreCase] ) ;
          resultTextFile :=resultTextFile + '_Result'+  '.xml' ;

          txtResult.Lines.SaveToFile( resultTextFile, TEncoding.UTF8);

         //ToDo : Xml ( resultTextFile )  읽어서 RESULT_CD, RESULT_MSG 값으로 결과 인식
            //<RESULT_CD><![CDATA[0000]]></RESULT_CD><!-- 보고결과코드 -->
            //<RESULT_MSG><![CDATA[정상 보고 등록 되었습니다.]]></RESULT_MSG><!-- 보고결과메시지 -->
              Doc          := LoadXMLDocument(resultTextFile);
              pcm_result   := Doc.DocumentElement.ChildNodes.First.ChildNodes.FindNode('RESULT') ;
             // result_set   := pcm_result.CloneNode(true);

              result       := pcm_result ;

              aResultCode :=   result.ChildNodes['RESULT_CD'].Text  ;

              MessageDlg(result.ChildNodes['RESULT_MSG'].Text +'('+aResultCode+')', mtInformation,[mbOk], 0);

//
//           resultTextFile := dir +'result_PCM'+
//                  fileDate + '_0001.txt'   ;
//
//      txtResult.Lines.SaveToFile( resultTextFile);
//
//
//      //txt파일 읽어서 문자열 치환(uLageTextStringReplace.pas사용)
//      Replacer:=TFileSearchReplace.Create(resultTextFile);
//      try
//        Replacer.Replace('\n', '', [rfReplaceAll, rfIgnoreCase]);
//        Replacer.Replace('\', '', [rfReplaceAll, rfIgnoreCase]);
//        Replacer.Replace('"', '', [rfReplaceAll, rfIgnoreCase]);
//        Replacer.Replace('{', '', [rfReplaceAll, rfIgnoreCase]);
//        Replacer.Replace('}', '', [rfReplaceAll, rfIgnoreCase]);
//      finally
//        Replacer.Free;
//      end;

   end;
 end;
end;

procedure TnimsGuibBogo_f.Button2Click(Sender: TObject);
var
  plainStr  : String;
begin

    // ' Encrypt 대상 문자열
   plainStr := Trim(txtPlainText.text);

   //' Encrypt처리후 Encrypte된 문자열 리턴
   txtEncryption2.Text := DispatchObj.GetRSAEncryptToHex(PublicKey, plainStr) ;

end;



function TnimsGuibBogo_f.ExcryptPhoneNumber(plainStr: string):string;
begin

    // ' Encrypt 대상 문자열
   plainStr := Trim(plainStr);

   //' Encrypt처리후 Encrypte된 문자열 리턴
   result:= DispatchObj.GetRSAEncryptToHex(PublicKey, plainStr) ;

end;

procedure TnimsGuibBogo_f.fieldClear;
begin
    dtBogoDate.Date := now;
    dtGuipDate.Date := now;
    dtLifeTerm.Date := now;
    dtStart.Date := now;
    dtFinish.Date := now;

    cbBogoKind.ItemIndex := 0;
    cbStorage1.ItemIndex := 0;
    cbStorage2.ItemIndex := 0;

    RadioButton1.Checked := true;
    RadioButton2.Checked := false;

    grdSearchData.RemoveRows(1, grdSearchData.RowCount-1);
    grdSendData.RemoveRows(1, grdSearchData.RowCount-1);

    edtDamdangName.text:='';
    edtBogojaName.text:='';
    edtDamdangPhone.text:='';
    edtDamdangCPhone.text:='';
    edtSayu.text:='';
    edtUpcheCode.text:='';
    edtUpcheName.text:='';
    edtUserCode.text:='';
    edtJepumCode.text:='';
    edtJejoNo.text:='';
    edtSeqNo.text:='';
    edtBarcode.text:='';
    edtChungGuCode.text:='';
    edtProductName.text:='';
    edtMinUtong.text:='';
    edtMinGuip.text:='';
    edtChungGuName.text:='';
    edtManageGubun.text:='';
    edtDanwi.text:='';
    edtNatGuipSu.text:='';
    edtUpche.text:='';


end;


procedure TnimsGuibBogo_f.FormShow(Sender: TObject);
begin


     Caption := '마약류 연계보고 시스템' ;
     fieldClear;
end;





procedure TnimsGuibBogo_f.grdSearchDataClickCell(Sender: TObject; ARow,
  ACol: Integer);
const
  selectPcmLInf=
    ' SELECT            [USR_RPT_ID_NO]     '+#10+
    '   ,[USR_RPT_LN_ID_NO]                 '+#10+
    '   ,[STORGE_NO]                        '+#10+
    '   ,[MVMN_TY_CD]                       '+#10+
    '   ,[PRDUCT_CD]                        '+#10+
    '   ,[MNF_NO]                           '+#10+
    '   ,[MNF_SEQ]                          '+#10+
    '   ,[MIN_DISTB_QY]                     '+#10+
    '   ,[PRD_MIN_DISTB_UNIT]               '+#10+
    '   ,[PCE_QY]                           '+#10+
    '   ,[PRD_PCE_UNIT]                     '+#10+
    '   ,[PRDUCT_NM]                        '+#10+
    '   ,[PRD_SGTIN]                        '+#10+
    '   ,[PRD_MIN_DISTB_QY]                 '+#10+
    '   ,[PRD_TOT_PCE_QY]                   '+#10+
    '   ,[PRD_VALID_DE]                     '+#10+
    '   ,[FILE_CREAT_DT]                    '+#10+
    '   ,[PElcCod]                          '+#10+
    '   ,[PPcsDte]                          '+#10+
    '   ,[PSeq]                             '+#10+
    '   ,[POdrCod]                          '+#10+
    'FROM  [PcmLInf]                        ';

  selectPcmHInf=
       'SELECT  [HDR_DE]                    '+#10+
       '      ,[BSSH_CD]                    '+#10+
       '      ,[RPT_SE_CD]                  '+#10+
       '      ,[USR_RPT_ID_NO]              '+#10+
       '      ,[REF_USR_RPT_ID_NO]          '+#10+
       '      ,[RPT_TY_CD]                  '+#10+
       '      ,[RMK]                        '+#10+
       '      ,[RPTR_NM]                    '+#10+
       '      ,[RPTR_ENTRPS_NM]             '+#10+
       '      ,[CHRG_NM]                    '+#10+
       '      ,[CHRG_TEL_NO]                '+#10+
       '      ,[CHRG_MP_NO]                 '+#10+
       '      ,[RND_DTL_RPT_CNT]            '+#10+
       '      ,[OPP_BSSH_NM]                '+#10+
       '      ,[OPP_BSSH_CD]                '+#10+
       '      ,[OPP_STORGE_NO]              '+#10+
       '      ,[ATCH_FILE_CO]               '+#10+
       '      ,[REGISTER_ID]                '+#10+
       '      ,[FILE_CREAT_DT]              '+#10+
       '      ,[UidCod]                     '+#10+
       '      ,[UpdDtm]                     '+#10+
       '      ,[ChkStt]                     '+#10+
       '      ,[UpdYon]                     '+#10+
       '      ,[FileName]                   '+#10+
       '  FROM   [PcmHInf]                  ';

var
     temp_yy, temp_mm, temp_dd: Variant;
     tempQuery : TuniQuery;
     i : integer;
     USR_RPT_ID_NO : string;
begin
    i:= 0;
    grdSendData.RemoveRows(1, grdSendData.RowCount - 1);

    USR_RPT_ID_NO:=   grdSearchData.Cells[4, aRow] ;

     try

        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin

                  Close;
                  Sql.Clear;

                  Sql.Text := selectPcmHinf;

                  sql.add(' where USR_RPT_ID_NO = :USR_RPT_ID_NO  ');
                  ParamByName('USR_RPT_ID_NO').AsString := USR_RPT_ID_NO;
                  Open;

                  if not isEmpty then
                  begin
                  //기본정보, 상대마약류취급자정보 가죠오자...
                    edtDamdangName.text        :=   fieldByName('CHRG_NM').asString;
                    edtBogojaName.text         :=   fieldByName('RPTR_NM').asString;
                    edtDamdangPhone.text       :=   fieldByName('CHRG_TEL_NO').asString;
                    edtDamdangCPhone.text      :=   fieldByName('CHRG_MP_NO').asString;
                    edtSayu.text               :=   fieldByName('RMK').asString;

                    edtUpcheCode.text          :=   fieldByName('OPP_BSSH_CD').asString;
                    edtUpcheName.text          :=   fieldByName('OPP_BSSH_NM').asString;
          //          edtUpche.text              :=   fieldByName('').asString;
                    cbStorage1.ItemIndex       :=  cbStorage1.Items.IndexOf( fieldByName('OPP_STORGE_NO').asString) ;

                  end
                  else
                  begin
                    edtDamdangName.text        :=   '';
                    edtBogojaName.text         :=    '';
                    edtDamdangPhone.text       :=    '';
                    edtDamdangCPhone.text      :=    '';
                    edtSayu.text               :=    '';

                    edtUpcheCode.text          :=    '';
                    edtUpcheName.text          :=    '';
          //          edtUpche.text              :=   fieldByName('').asString;
                    cbStorage1.ItemIndex       :=  0 ;

                  end;

                  Close;
                  Sql.Clear;

                  Sql.Text := selectPcmLInf;

                  sql.add(' where USR_RPT_ID_NO = :USR_RPT_ID_NO  ');
                  ParamByName('USR_RPT_ID_NO').AsString := USR_RPT_ID_NO;
                  Sql.Add('  order by USR_RPT_LN_ID_NO desc');
                  Open;

                  grdSendData.RowCount := RecordCount + 1;

                  if not isEmpty then
                  begin
                       while not eof do
                       begin
                            i := i + 1;

                            grdSendData.Cells[1, i]   :=  FieldByName('POdrCod').AsString; //사용자코드
                            grdSendData.Cells[2, i]   :=  FieldByName('PElcCod').AsString;  //청구코드
                            grdSendData.Cells[3, i]   :=  FieldByName('PRDUCT_NM').AsString;//제품명
                            grdSendData.Cells[4, i]   :=  FieldByName('PRDUCT_CD').AsString;//제품코드
                            grdSendData.Cells[5, i]   :=  FieldByName('STORGE_NO').AsString; //저장소
                            grdSendData.Cells[6, i]   :=  FieldByName('MNF_NO').AsString; //제조번호
                            grdSendData.Cells[7, i]   :=  FieldByName('MNF_SEQ').AsString;     //일련번호
                            grdSendData.Cells[8, i]   :=  FieldByName('PRD_VALID_DE').AsString; //유효기간
                            grdSendData.Cells[9, i]   :=  FieldByName('PRD_MIN_DISTB_QY').AsString;   //최소유통단위수량
                            grdSendData.Cells[10, i]  :=  FieldByName('PRD_MIN_DISTB_UNIT').AsString; //제품최소유통단위
                            grdSendData.Cells[11, i]  :=  FieldByName('MIN_DISTB_QY').AsString;       //제품최소유통구입수량
                            grdSendData.Cells[12, i]  :=  FieldByName('PRD_TOT_PCE_QY').AsString;     //제품낱개단위수량
                            grdSendData.Cells[13, i]  :=  FieldByName('PRD_PCE_UNIT').AsString;       //제품낱개단위
                            grdSendData.Cells[14, i]  :=  FieldByName('PCE_QY').AsString;             //제품낱개단위구입수량
                            grdSendData.Cells[15, i]  :=  FieldByName('PRD_SGTIN').AsString;    //Barcode/RFID

                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
       grdSendData.AutoNumberCol(0);
     end;
end;

procedure TnimsGuibBogo_f.grdSendDataClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

{No.
1   사용자코드
2   청구코드
3   제품명
4   제품코드
5   저장소
6   제조번호
7   일련번호
8   유효기간
9   최소유통단위수량
10  제품최소유통단위
11  제품최소유통구입수량
12  제품낱개단위수량
13  제품낱개단위
14  제품낱개단위구입수량
15  barcode/RFID
}


    edtUserCode.text       :=  grdSendData.Cells[1, aRow];
    edtChungGuCode.text    :=  grdSendData.Cells[2, aRow];
    edtProductName.text    :=  grdSendData.Cells[3, aRow];
    edtJepumCode.text      :=  grdSendData.Cells[4, aRow];
    cbStorage2.ItemIndex   :=  cbStorage2.Items.IndexOf( grdSendData.Cells[5, aRow]) ;
    edtJejoNo.text         :=  grdSendData.Cells[6, aRow];
    edtSeqNo.text          :=  grdSendData.Cells[7, aRow];

    dtLifeTerm.date        :=  strToDate(
                                copy(grdSendData.Cells[8, aRow],1,4) +'-'
                             +  copy(grdSendData.Cells[8, aRow],5,2) +'-'
                             +  copy(grdSendData.Cells[8, aRow],7,1) );

    edtMinUtong.text       :=  grdSendData.Cells[9, aRow];
    lblDanwi1.Caption      :=  grdSendData.Cells[10, aRow];
    lblDanwi2.Caption      :=  grdSendData.Cells[10, aRow];
    edtMinGuip.text        :=  grdSendData.Cells[11, aRow];

    edtChungGuName.text    :=  grdSendData.Cells[3, aRow];
    edtManageGubun.text    :=  '';//grdSendData.Cells[, aRow];
    edtDanwi.text          :=  grdSendData.Cells[12, aRow];
    lblDanwi3.Caption      :=  grdSendData.Cells[13, aRow];
    edtNatGuipSu.text      :=  grdSendData.Cells[14, aRow];
    lblDanwi4.Caption      :=  grdSendData.Cells[13, aRow];

    edtBarcode.text        :=  grdSendData.Cells[15, aRow];

end;

procedure TnimsGuibBogo_f.Label2DblClick(Sender: TObject);
begin
       panel5.Visible := true;
end;

procedure TnimsGuibBogo_f.SearchGuib;
const
  selPcmHInf =
      'SELECT [HDR_DE]           '+#10+
       '    ,[BSSH_CD]           '+#10+
       '    ,[RPT_SE_CD]         '+#10+
       '    ,[USR_RPT_ID_NO]     '+#10+
       '    ,[REF_USR_RPT_ID_NO] '+#10+
       '    ,[RPT_TY_CD]         '+#10+
       '    ,[RMK]               '+#10+
       '    ,[RPTR_NM]           '+#10+
       '    ,[RPTR_ENTRPS_NM]    '+#10+
       '    ,[CHRG_NM]           '+#10+
       '    ,[CHRG_TEL_NO]       '+#10+
       '    ,[CHRG_MP_NO]        '+#10+
       '    ,[RND_DTL_RPT_CNT]   '+#10+
       '    ,[OPP_BSSH_NM]       '+#10+
       '    ,[OPP_BSSH_CD]       '+#10+
       '    ,[OPP_STORGE_NO]     '+#10+
       '    ,[ATCH_FILE_CO]      '+#10+
       '    ,[REGISTER_ID]       '+#10+
       '    ,[FILE_CREAT_DT]     '+#10+
       '    ,[UidCod]            '+#10+
       '    ,[UpdDtm]            '+#10+
       '    ,[ChkStt]            '+#10+
       '    ,[UpdYon]            '+#10+
       '    ,[FileName]          '+#10+
       'FROM  [PcmHInf]     ';
var
     temp_yy, temp_mm, temp_dd: Variant;
     tempQuery : TuniQuery;
     i : integer;
begin
    i:= 0;
    grdSearchData.RemoveRows(1, grdSearchData.RowCount - 1);


     try

        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin
                  Close;
                  Sql.Clear;

                  Sql.Text := selPcmHInf;//Add('  select * from PcmHInf ');

                  sql.add(' where HDR_DE >= :jinDay1 and HDR_DE <= :jinDay2');
                  ParamByName('jinDay1').AsString := formatDatetime('YYYYMMDD', dtStart.Date);
                  ParamByName('jinDay2').AsString := formatDatetime('YYYYMMDD', dtFinish.Date);
                  Sql.Add('  order by HDR_DE desc');
                  Open;

                  grdSearchData.RowCount := RecordCount + 1;

                  if not isEmpty then
                  begin
                       while not eof do
                       begin

                            i := i + 1;

                            grdSearchData.Cells[1, i]   := strToDate_dash( FieldByName('HDR_DE').AsString);
                            grdSearchData.Cells[2, i]   := strToDate_dash( FieldByName('UpdDtm').AsString);
                            grdSearchData.Cells[3, i]   :=  FieldByName('OPP_BSSH_NM').AsString;
                            grdSearchData.Cells[4, i]   :=  FieldByName('USR_RPT_ID_NO').AsString;
                            grdSearchData.Cells[5, i]   :=  FieldByName('REF_USR_RPT_ID_NO').AsString;

                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
       grdSearchData.AutoNumberCol(0);
     end;
end;



function TnimsGuibBogo_f.SaveXml(xmlFilename:string; FileCreateDate:string; seqNO:string) : boolean;
var
    varFName, varLname: string;
    dir: string;


    i , j, nCount: integer;

    FS: TFileStream;
    Stream: TStream;
    isUpdate : boolean;


    NewImage : IXMLNode ;
    NewImageKey : IXMLNode ;
    imgSeqID : integer;

    chartno, paName : string;

    aXml : string;
    checkState: boolean;
    nPatientCnt : integer;
    aSendResult : string;



    xdSoft                      : TXMLDocument;
    xnPatient                   : IXMLNode;
    xnRoot                      : IXMLNode;
    xnChild                     : IXMLNode;
    xnGrandchild                : IXMLNode;
    xnGrandGrandchild           : IXMLNode;
    xnGrandGrandGrandchild      : IXMLNode;
    xnGrandGrandGrandGrandchild : IXMLNode;
    xnCaptionData               : IXMLNode;  //CDATA  생성용
    strCaption                  : string;




       UID
      ,HDR_DE
      ,BSSH_CD
      ,RPT_SE_CD
      ,USR_RPT_ID_NO
      ,REF_USR_RPT_ID_NO
      ,RPT_TY_CD
      ,RMK
      ,RPTR_NM
      ,RPTR_ENTRPS_NM
      ,CHRG_NM
      ,CHRG_TEL_NO
      ,CHRG_MP_NO
      ,RND_DTL_RPT_CNT
      ,OPP_BSSH_NM
      ,OPP_BSSH_CD
      ,OPP_STORGE_NO
      ,ATCH_FILE_CO
      ,REGISTER_ID
      ,FILE_CREAT_DT
      ,FileName : string;


      //  USR_RPT_ID_NO
       USR_RPT_LN_ID_NO
      ,STORGE_NO
      ,MVMN_TY_CD
      ,PRDUCT_CD
      ,MNF_NO
      ,MNF_SEQ
      ,MIN_DISTB_QY
      ,PRD_MIN_DISTB_UNIT
      ,PCE_QY
      ,PRD_PCE_UNIT
      ,PRDUCT_NM
      ,PRD_SGTIN
      ,PRD_MIN_DISTB_QY
      ,PRD_TOT_PCE_QY
      ,PRD_VALID_DE
      ,PElcCod
      ,PPcsDte
      ,PSeq
      ,POdrCod : string;

begin
         try
                 result:= false;

                   aSendResult :='';
                   isUpdate := false;
                   nPatientCnt := 0;


                //     copyfile(pchar(xmlfilename), pchar(dir) , false);

                UID                 :='787064004350fa950b798c9edea1b38f3cfbcf3b77e03e419';
                HDR_DE              := '20190606';   //취급일자
                BSSH_CD             :='TST000397';  //마약류취급자식별번호(9자리)
                RPT_SE_CD           :='PCM';   //보고구분코드
                USR_RPT_ID_NO       :=  seqNO;//'PCM_R20180126_H0001';  //사용자보고식별번호
                REF_USR_RPT_ID_NO   :=  '';//'20190606';   //참조사용자보고식별번호
                RPT_TY_CD           :='0';   //보고유형코드
                RMK                 :=''; //비고
                RPTR_NM             :='홍길동';// 보고자명
                RPTR_ENTRPS_NM      :='KIDS'; //보고자업체명
                CHRG_NM             :='이길동';//담당자명
                CHRG_TEL_NO         :='02-6645-0965';  //담당자전화번호
                CHRG_MP_NO          := ExcryptPhoneNumber('010-6645-0965'); //담당자휴대폰번호
                RND_DTL_RPT_CNT     :='1'; //수불상세보고수
                OPP_BSSH_NM         :='천사약국';   //상대마약류취급자업체명
                OPP_BSSH_CD         :='W00000507';//'TSTNIMSW1'; //상대마약류취급자식별번호
                OPP_STORGE_NO       :='S0001';//상대저장소번호
                ATCH_FILE_CO        :='0';//첨부파일건수
                REGISTER_ID         :='gildata'; //등록자ID
                FILE_CREAT_DT       :=FileCreateDate;  //파일생성일시


                    //+'order'+formatdatetime('yyyymmddhhnnsszzz',now) +'.xml';//dir  ;

               // XML Document 만들기
              xdSoft := TXMLDocument.Create(Application);
            //  xdSoft.Options := [doNodeAutoIndent];//activate the auto indentation
              xdSoft.Active := True;
              xdSoft.Encoding:= 'utf-8';

                // 루트 노드 만들기
              xnRoot := xdSoft.AddChild('pcm_regist','https://www.nims.or.kr/schema/nims');
                  //     pcm_regist xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="https://www.nims.or.kr/schema/nims
                   // 노드에 속성 설정
                   xnRoot.Attributes['xmlns:xsi']               :=  'http://www.w3.org/2001/XMLSchema-instance';
                   xnRoot.Attributes['xsi:schemaLocation']      :=  'https://www.nims.or.kr/schema/nims https://www.nims.or.kr/resource/nims.xsd';

                   xnPatient := xnRoot.AddChild('REPORT_SET') ;


                  //  + <REPORT_SET>
                        //노드에 속성설정
                        //   xnPatient.Attributes['CHARTNO']  :=  chartno; //chart

                         // 노드 밑에 노드 만들기


                             //UID
                             strCaption :=  UID;//'787064004350fa950b798c9edea1b38f3cfbcf3b77e03e419';                       //   ==>장문TEXT넣는 방법
                             xnChild:=  xnPatient.AddChild('UID');   //<!--인증키 보고자식별ID -->
                             xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                             xnChild.ChildNodes.Add(xnCaptionData);// AddChild('![CDATA[  ]]')

                             //S/W ID   ==>
//                             strCaption :='NONE';                       //   ==>장문TEXT넣는 방법
//                             xnChild:=  xnPatient.AddChild('SW_ID');   //<!--연계SW인증키 -->
//                             xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
//                             xnChild.ChildNodes.Add(xnCaptionData);// AddChild('![CDATA[  ]]')
                             //Header
                             xnChild:=  xnPatient.AddChild('HEADER');

                                        xnGrandchild      := xnChild.AddChild('HDR_DE');
                                        strCaption        :=HDR_DE;//'20190606';   //취급일자
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandchild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild      := xnChild.AddChild('BSSH_CD');
                                        strCaption        :=BSSH_CD;//'TST000397';  //마약류취급자식별번호(9자리)
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('RPT_SE_CD');
                                        strCaption :=RPT_SE_CD;//'PCM';   //보고구분코드
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);

                                        xnGrandchild := xnChild.AddChild('USR_RPT_ID_NO');
                                        strCaption := USR_RPT_ID_NO;//'3';//'PCM_R20180126_H0001';  //사용자보고식별번호
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);

                                        xnGrandchild := xnChild.AddChild('REF_USR_RPT_ID_NO');
                                        strCaption :=REF_USR_RPT_ID_NO;// '2';//'20190606';   //참조사용자보고식별번호
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('RPT_TY_CD');
                                        strCaption :=RPT_TY_CD;//'0';   //보고유형코드
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('RMK');
                                        strCaption :=RMK;//''; //비고
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('RPTR_NM');
                                        strCaption :=RPTR_NM;//'홍길동';// 보고자명
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('RPTR_ENTRPS_NM');
                                        strCaption :=RPTR_ENTRPS_NM;//'KIDS'; //보고자업체명
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);

                                        xnGrandchild := xnChild.AddChild('CHRG_NM');
                                        strCaption :=CHRG_NM;//'이길동';//담당자명
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);

                                        xnGrandchild := xnChild.AddChild('CHRG_TEL_NO');
                                        strCaption :=CHRG_TEL_NO;//'02-6645-0965';  //담당자전화번호
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);



                                        xnGrandchild := xnChild.AddChild('CHRG_MP_NO');
                                        strCaption := CHRG_MP_NO;// txtEncryption2.text;//'010-6645-0965'; //담당자휴대폰번호
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('RND_DTL_RPT_CNT');
                                        strCaption :=RND_DTL_RPT_CNT;//'1'; //수불상세보고수
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('OPP_BSSH_NM');
                                        strCaption :=OPP_BSSH_NM;//'천사약국';   //상대마약류취급자업체명
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('OPP_BSSH_CD');
                                        strCaption :=OPP_BSSH_CD;//'W00000507';//'TSTNIMSW1'; //상대마약류취급자식별번호
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);




                                        xnGrandchild := xnChild.AddChild('OPP_STORGE_NO');
                                        strCaption :=OPP_STORGE_NO;//'S0001';//상대저장소번호
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);


                                        xnGrandchild := xnChild.AddChild('ATCH_FILE_CO');
                                        strCaption :=ATCH_FILE_CO;//'0';//첨부파일건수
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);

                                        xnGrandchild := xnChild.AddChild('REGISTER_ID');
                                        strCaption :=REGISTER_ID;//'gildata'; //등록자ID
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);

                                        xnGrandchild := xnChild.AddChild('FILE_CREAT_DT');
                                        strCaption :=FILE_CREAT_DT;//'20180126140443';  //파일생성일시
                                        xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                        xnGrandChild.ChildNodes.Add(xnCaptionData);



                                       //LINES 노드 추가



                                        USR_RPT_ID_NO          :=  seqNO; //사용자보고식별번호
                                        USR_RPT_LN_ID_NO       :=  formatDatetime('YYYYMMDDhhnnss',now)+'_1';//'20181205170031_1';  //사용자보고라인식별번호
                                        STORGE_NO              :='S0001';  //저장소번호
                                        MVMN_TY_CD             :='0201';  //이동유형코드
                                        PRDUCT_CD              :='8806228020521';  //제품코드
                                        MNF_NO                 :='MNF001';  //제조번호
                                        MNF_SEQ                :='000001';  //제조일련번호
                                        MIN_DISTB_QY           :='1';  //최소유통단위수량
                                        PRD_MIN_DISTB_UNIT     :='병';  //제품최소유통단위
                                        PCE_QY                 :='60';  //낱개단위수량
                                        PRD_PCE_UNIT           := '정';  //제품낱개단위
                                        PRDUCT_NM              :='아트민정(펜터민염산염) (37.5mg)';  //제품명
                                        PRD_SGTIN              :='8800010193847293848263838';  //제품BarCode_RFID
                                        PRD_MIN_DISTB_QY       :='1';  //제품최소유통단위수량
                                        PRD_TOT_PCE_QY         :='100';  //제품총낱개단위수량
                                        PRD_VALID_DE           :='99991231';  //제품유효기한일자
                                        FILE_CREAT_DT          := FileCreateDate;//'20180126140443';  //파일생성일시



                                        xnGrandchild :=  xnChild.AddChild('LINES');

                                           xnGrandGrandchild :=  xnGrandchild.AddChild('LINE');

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('USR_RPT_ID_NO');
                                              strCaption :=USR_RPT_ID_NO ;//'3'; //사용자보고식별번호
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);


                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('USR_RPT_LN_ID_NO');  //사용자보고식별번호
                                              strCaption :=USR_RPT_LN_ID_NO;//'20181205170031_1';  //사용자보고라인식별번호
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('STORGE_NO');
                                              strCaption :=STORGE_NO;//'S0001';  //저장소번호
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);


                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('MVMN_TY_CD');
                                              strCaption :=MVMN_TY_CD;//'0201';  //이동유형코드
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);


                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PRDUCT_CD');
                                              strCaption :=PRDUCT_CD;//'8806228020521';  //제품코드
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('MNF_NO');
                                              strCaption :=MNF_NO;//'MNF001';  //제조번호
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('MNF_SEQ');
                                              strCaption :=MNF_SEQ;//'000001';  //제조일련번호
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);


                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('MIN_DISTB_QY');
                                              strCaption :=MIN_DISTB_QY;//'1';  //최소유통단위수량
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PRD_MIN_DISTB_UNIT');
                                              strCaption :=PRD_MIN_DISTB_UNIT;//'1';  //제품최소유통단위
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PCE_QY');
                                              strCaption :=PCE_QY;//'60';  //낱개단위수량
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PRD_PCE_UNIT');
                                              strCaption := PRD_PCE_UNIT;// '정';  //제품낱개단위
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PRDUCT_NM');
                                              strCaption :=PRDUCT_NM;//'아트민정(펜터민염산염) (37.5mg)';  //제품명
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);


                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PRD_SGTIN');
                                              strCaption :=PRD_SGTIN;//'8800010193847293848263838';  //제품BarCode_RFID
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);


                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PRD_MIN_DISTB_QY');  //사용자보고식별번호
                                              strCaption :=PRD_MIN_DISTB_QY;//'1';  //제품최소유통단위수량
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);


                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PRD_TOT_PCE_QY');  //사용자보고식별번호
                                              strCaption :=PRD_TOT_PCE_QY;//'100';  //제품총낱개단위수량
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('PRD_VALID_DE');  //사용자보고식별번호
                                              strCaption :=PRD_VALID_DE;//'99991231';  //제품유효기한일자
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);

                                              xnGrandGrandGrandchild := xnGrandGrandchild.AddChild('FILE_CREAT_DT');  //사용자보고식별번호
                                              strCaption :=FILE_CREAT_DT;//'20180126140443';  //파일생성일시
                                              xnCaptionData     :=  xdSoft.CreateNode(strCaption, ntCData);
                                              xnGrandGrandGrandchild.ChildNodes.Add(xnCaptionData);


                      // XML Document 저장하기
                    xdSoft.SaveToFile(xmlfileName);
                    xdSoft.SaveToXML(aXml);   //    );
                   // memo1.Text:= aXMl;

                    result:= true;
                    xdSoft.Free;
            except
                    result:= false;
            end;

end;

end.




\HDR_DE;//'20190606';   //취급일자
BSSH_CD;//'TST000397';  //마약류취급자식별번호(9자리)
RPT_SE_CD;//'PCM';   //보고구분코드
USR_RPT_ID_NO;//'3';//'PCM_R20180126_H0001';  //사용자보고식별번호
REF_USR_RPT_ID_NO;// '2';//'20190606';   //참조사용자보고식별번호
RPT_TY_CD;//'0';   //보고유형코드
RMK;//''; //비고
RPTR_NM;//'홍길동';// 보고자명
RPTR_ENTRPS_NM;//'KIDS'; //보고자업체명
CHRG_NM;//'이길동';//담당자명
CHRG_TEL_NO;//'02-6645-0965';  //담당자전화번호
CHRG_MP_NO;// txtEncryption2.text;//'010-6645-0965'; //담당자휴대폰번호
RND_DTL_RPT_CNT;//'1'; //수불상세보고수
OPP_BSSH_NM;//'천사약국';   //상대마약류취급자업체명
OPP_BSSH_CD;//'W00000507';//'TSTNIMSW1'; //상대마약류취급자식별번호
OPP_STORGE_NO;//'S0001';//상대저장소번호
ATCH_FILE_CO;//'0';//첨부파일건수
REGISTER_ID;//'gildata'; //등록자ID
FILE_CREAT_DT;//'20180126140443';  //파일생성일시


USR_RPT_ID_NO ;//'3'; //사용자보고식별번호
USR_RPT_LN_ID_NO;//'20181205170031_1';  //사용자보고라인식별번호
STORGE_NO;//'S0001';  //저장소번호
MVMN_TY_CD;//'0201';  //이동유형코드
PRDUCT_CD;//'8806228020521';  //제품코드
MNF_NO;//'MNF001';  //제조번호
MNF_SEQ;//'000001';  //제조일련번호
MIN_DISTB_QY;//'1';  //최소유통단위수량
PRD_MIN_DISTB_UNIT;//'1';  //제품최소유통단위
PCE_QY;//'60';  //낱개단위수량
PRD_PCE_UNIT;// '정';  //제품낱개단위
PRDUCT_NM;//'아트민정(펜터민염산염) (37.5mg)';  //제품명
PRD_SGTIN;//'8800010193847293848263838';  //제품BarCode_RFID
PRD_MIN_DISTB_QY;//'1';  //제품최소유통단위수량
PRD_TOT_PCE_QY;//'100';  //제품총낱개단위수량
PRD_VALID_DE;//'99991231';  //제품유효기한일자
FILE_CREAT_DT;//'20180126140443';  //파일생성일시
