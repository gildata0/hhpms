unit personalinfo;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ExtCtrls,  AdvGlowButton, StdCtrls, frxClass;

type
     Tpersonalinfo_f = class(TForm)
          Panel1: TPanel;
          pnlBottom: TPanel;
          ScrollBox1: TScrollBox;
          Panel3: TPanel;
          Image1: TImage;
          edtDate: TEdit;
          Label1: TLabel;
          Label2: TLabel;
          edtName: TEdit;
          edtJumin: TEdit;
    btnPrint: TAdvGlowButton;
    btnClose: TAdvGlowButton;
          Label3: TLabel;
          pnlSign: TPanel;
    btnSave: TAdvGlowButton;
    btnSign: TAdvGlowButton;
          Image2: TImage;
    Panel2: TPanel;
    lblSangho: TLabel;
    frxReport: TfrxReport;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnParentSign: TAdvGlowButton;
    Panel5: TPanel;
    Image3: TImage;
    edtParentName: TEdit;
    edtparentJumin: TEdit;
    edtLawRelation: TEdit;
    edtPhone: TEdit;
    edtParentName2: TEdit;
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure btnCloseClick(Sender: TObject);
          procedure btnPrintClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure btnSignClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
    procedure btnParentSignClick(Sender: TObject);
     private
    procedure DataToPrintForm;
          { Private declarations }
     public
          { Public declarations }
          varSignChart:string;
     end;

var
     personalinfo_f: Tpersonalinfo_f;

implementation

uses uConfig, uGogekData, personalinfo_prt, uDM, uMain, inputElectSign, uSignPadKovan;//inputElectSign, ;

{$R *.dfm}

procedure Tpersonalinfo_f.FormShow(Sender: TObject);
var
     varFilePath:string;
     varSignInfo : TSignInfo;
begin
     varFilePath:=   stringreplace( main_f.edtchart.text, '*', '_',
          [rfReplaceAll]) ;


     caption := '개인정보활용동의서';

     personalinfo_f.edtName.text := main_f.edtName.text + '(' + main_f.edtChart.text + ')';
     personalinfo_f.edtJumin.text := main_f.edtJumin.text + '-' + main_f.edtJumin2.text; //'*******';
     personalinfo_f.lblSangho.Caption := configvalue.varsaupname + ' 귀하';


    // if   fileExists(extractFilePath(ParamStr(0)) + 'signdata\' + varFilePath + 'sign.bmp') then
    //  image2.picture.LoadFromFile(extractFilePath(ParamStr(0)) + 'signdata\' +varFilePath + 'sign.bmp')
   //   else

     varSignInfo :=  LoadToBmpData2(main_f.edtChart.text,
          formatdatetime('YYYY-MM-DD', now),
          '1',
          image2,
          extractFilePath(ParamStr(0)) + 'signdata\' +varFilePath + 'sign.bmp',
          image3,
          extractFilePath(ParamStr(0)) + 'signdata\' +varFilePath + 'Parent_sign.bmp',
          );

          if varSignInfo.signDate  <> '' then
          begin

              personalinfo_f.edtDate.text := copy( varSignInfo.signDate,1,4) + '년 '
              +copy( varSignInfo.signDate,6,2) + '월 '
              +copy( varSignInfo.signDate,9,2) + '일';

          end
          else
          begin
                 personalinfo_f.edtDate.text := formatDatetime('YYYY', now) + '년 '
          + formatDatetime('MM', now) + '월 '
          + formatDatetime('DD', now) + '일';

          end;

          personalinfo_f.edtparentname.text :=  varSignInfo.parentName ;

          personalinfo_f.edtparentJumin.text :=  varSignInfo.parentJumin ;

          personalinfo_f.edtPhone.text :=  varSignInfo.parentPhone ;

          personalinfo_f.edtlawRelation.text :=  varSignInfo.lawRelation ;

          personalinfo_f.edtParentName2.text :=  varSignInfo.parentName ;

end;

procedure Tpersonalinfo_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Tpersonalinfo_f.FormDestroy(Sender: TObject);
begin
     personalinfo_f := nil;
end;

procedure Tpersonalinfo_f.btnCloseClick(Sender: TObject);
begin
     modalResult := mrNone;
     close;
end;

procedure Tpersonalinfo_f.btnPrintClick(Sender: TObject);
var
     strPrintFile: string;
     strSignFile: string;
     wPath : string;
begin
{     personalinfo_prt_f := Tpersonalinfo_prt_f.Create(self);

     strPrintFile := extractFilePath(paramStr(0)) + 'BgChart\개인정보활용동의서001.jpg';
     strSignFile := extractFilePath(paramStr(0)) + 'signData\' +varSignChart +'sign.bmp';

     if fileExists(strPrintFile) then
          personalinfo_prt_f.QRImage1.Picture.LoadFromFile(strPrintFile);

     personalinfo_prt_f.qrLblName.caption := '성명 : ' + edtName.text;
     personalinfo_prt_f.qrLblJumin.caption := '주민번호 : ' + edtJumin.text;

     personalinfo_prt_f.qrlblDate.caption := '신청일자 : ' + formatDatetime('YYYY', now) + '년'
          + formatDatetime('MM', now) + '월'
          + formatDatetime('DD', now) + '일';

     personalinfo_prt_f.QrlblSangho.Caption := configvalue.varsaupname + ' 귀하';

     if fileExists(strSignFile) then
          personalinfo_prt_f.QrImage2.Picture.LoadFromFile(strSignFile);

     personalinfo_prt_f.QuickRep1.PreviewModal;
    }

  //   InitFastReport(); // FastReport 속성 Setting...

     WPath := ExtractFilePath(Application.ExeName) + 'print\';
     frxReport.LoadFromFile(WPath + 'agreement.fr3');

     DataToPrintForm();

     frxReport.ShowReport();

end;

procedure Tpersonalinfo_f.FormCreate(Sender: TObject);
var
     strPrintFile: string;
begin


     strPrintFile := extractFilePath(paramStr(0)) + 'BgChart\개인정보활용동의서001.jpg';
     Image1.Picture.LoadFromFile(strPrintFile);

end;

procedure Tpersonalinfo_f.btnSignClick(Sender: TObject);
var
    PadKind : integer;
    cPort : integer;

    //KOVAN
            L_SEND : array[1..3000] of char;
            L_RET : Integer;
            PinData : string;
            L_PINPinNum : String;
begin
{TODO -o: repair -cGeneral : ActionItem}

  PadKind := configValue.varKeyPadKind; //signPad kind
   case PadKind  of
      1: //KIS
        begin
           if not assigned(inputElectSign_f) then
                inputElectSign_f := TinputElectSign_f.Create(Application);
                inputElectSign_f.varSignChart := varSignChart;
         //  inputElectSign_f.ShowModal;
            if  inputElectSign_f.ShowModal = mrOk then
            begin
                 image2.Picture.LoadFromFile(extractFilePath(ParamStr(0))+'signdata\'+ varSignChart+'sign.bmp');
                 SaveToBmpData(varSignChart,
                 formatdatetime('YYYY-MM-DD',now),
                 '1',
                 extractFilePath(ParamStr(0))+'signdata\'+ varSignChart +'sign.bmp',
                 0,'','',0,0,
                 extractFilePath(ParamStr(0)) + 'signdata\' + varSignChart + 'Parent_sign.bmp',
                 edtParentName.text,edtPhone.text,edtparentJumin.text,edtLawRelation.text);

            end;
        end;

      2: //Kovan
        begin



          //   Edit6.Text := '';
          //   Edit7.Text := '';
                                        //( main_f.edtchart.text, '*', '_',  [rfReplaceAll]) ;
         if not directoryExists(extractFilePath(ParamStr(0)) + 'signdata') then
              ForceDirectories(extractFilePath(ParamStr(0)) + 'signdata');

         if not directoryExists(extractFilePath(ParamStr(0)) + 'signdata2') then
              ForceDirectories(extractFilePath(ParamStr(0)) + 'signdata2');


            cPort := strtoInt( stringReplace(configvalue.varKeyPadPort ,'COM', '', [rfReplaceAll] ) );

            DllHandle          := LoadLibrary('SignPad_dll.dll');
            @general_sign      := GetProcAddress(DllHandle, 'general_sign');
            FillChar(L_SEND, SizeOf(L_SEND), 0);
            L_PINPinNum        := '     1004';
            PinData            := L_PINPinNum;

            CopyMemory(@L_SEND[1], @PinData[1], length(PinData));
            L_RET := general_sign(@L_SEND[1],  cPort, 110);
            if L_RET > 0 then
            begin
                 image2.Picture.LoadFromFile(extractFilePath(ParamStr(0))+'signdata\signtemp.bmp');

                 SaveToBmpData(varSignChart,
                     formatdatetime('YYYY-MM-DD',now),
                     '1',
                     extractFilePath(ParamStr(0))+'signdata\signtemp.bmp',
                     0,
                     '',
                     '',
                     0,
                     0,
                     extractFilePath(ParamStr(0)) + 'signdata\' + varSignChart + 'Parent_sign.bmp',
                     edtParentName.text,
                     edtPhone.text,
                     edtparentJumin.text,
                     edtLawRelation.text);

            end;


          //  Edit7.Text := IntToStr(L_RET);
          //  Edit6.Text := Copy(L_SEND, Length(trim(L_SEND)) - L_RET + 1, L_RET);

         end;
   end;
end;

procedure Tpersonalinfo_f.btnSaveClick(Sender: TObject);
begin
     if image2.Picture = nil then
     begin
          showmessage('싸인 데이터가 없습니다.');
          modalResult :=  mrNone;
          exit;
     end;


     if not directoryExists(extractFilePath(ParamStr(0)) + 'signdata') then
          ForceDirectories(extractFilePath(ParamStr(0)) + 'signdata');


     if not fileexists(extractFilePath(ParamStr(0)) + 'signdata\' + varSignChart + 'sign.bmp') then
     begin
          image2.Picture.savetofile(extractFilePath(ParamStr(0)) + 'signdata\' +  varSignChart + 'sign.bmp');

          SaveToBmpData( varSignChart,
               formatdatetime('YYYY-MM-DD', now),
               '1', extractFilePath(ParamStr(0)) + 'signdata\' + varSignChart + 'sign.bmp',
                0,'','',0,0,
               extractFilePath(ParamStr(0)) + 'signdata\' + varSignChart + 'Parent_sign.bmp',
               edtParentName.text,edtPhone.text,edtparentJumin.text,edtLawRelation.text);

               modalResult :=  mrOK;

     end
     else
     begin
          image2.Picture.savetofile(extractFilePath(ParamStr(0)) + 'signdata\' + varSignChart + '_' +
               formatdatetime('yyyymmddhhnnss', now) + 'sign.bmp')

     end;


     if  fileexists(extractFilePath(ParamStr(0)) + 'signdata2\' +  varSignChart + 'sign.bmp') then
     begin
          SaveToBmpData( varSignChart,
               formatdatetime('YYYY-MM-DD', now),
               '1', extractFilePath(ParamStr(0)) + 'signdata2\' + varSignChart + 'sign.bmp',
               0,'','',0,0,
               extractFilePath(ParamStr(0)) + 'signdata\' + varSignChart + 'Parent_sign.bmp',
               edtParentName.text,edtPhone.text,edtparentJumin.text,edtLawRelation.text);


             modalResult :=  mrOK;

     end;


   //  showmessage('저장되었습니다.');
end;



procedure  Tpersonalinfo_f.DataToPrintForm;
var
     strPrintFile: string;
     strSignFile: string;

     strJuminNo: string;
     strSangCode: string;


      Pict : TfrxPictureView;
      Pict2 : TfrxPictureView;
    Image: TImage;
begin
     personalinfo_prt_f := Tpersonalinfo_prt_f.Create(self);

     strPrintFile := extractFilePath(paramStr(0)) + 'BgChart\개인정보활용동의서001.jpg';
     strSignFile := extractFilePath(paramStr(0)) + 'signData\' +varSignChart +'sign.bmp';


     if fileExists(strPrintFile) then
     begin
            Pict := frxreport.FindComponent('Picture1') as TfrxPictureView;
            Image := TImage.Create(nil);
            Image.Picture.LoadFromFile(strPrintFile);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );
            Pict.Picture := Image.Picture;
            Image.Free;
     end;

     if fileExists(strSignFile) then
     begin
            Pict2 := frxreport.FindComponent('Picture2') as TfrxPictureView;
            Image := TImage.Create(nil);
            Image.Picture.LoadFromFile(strSignFile);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );
            Pict2.Picture := Image.Picture;
            Image.Free;
     end;


     with frxReport  do
     begin                       //        Variables['차트번호'] := QuotedStr(edtChart.text);

              Variables['aDate'] :=  QuotedStr('신청일자 : ' + formatDatetime('YYYY', now) + '년  '
                  + formatDatetime('MM', now) + '월  '
                   + formatDatetime('DD', now) + '일 ');
               Variables['aName'] := QuotedStr('성명 : ' + edtName.text);
               Variables['aJumin'] :=  QuotedStr('주민번호 : ' + edtJumin.text);
               Variables['aSangho'] :=  QuotedStr(configvalue.varsaupname + ' 귀하');
  Variables['주소'] :=  QuotedStr(configvalue.varsaupname + ' 귀하');

     end;
end;

procedure Tpersonalinfo_f.btnParentSignClick(Sender: TObject);
begin
//ToDo : repair

//     if not assigned(inputElectSign_f) then
//          inputElectSign_f := TinputElectSign_f.Create(Application);
//
//          inputElectSign_f.Caption :='보호자 동의 서명 입력';
//          inputElectSign_f.signKind :='1';
//          inputElectSign_f.varSignChart := varSignChart;
//   //  inputElectSign_f.ShowModal;
//      if  inputElectSign_f.ShowModal = mrOk then
//      begin
//           image3.Picture.LoadFromFile(
//           extractFilePath(ParamStr(0))+'signdata\'+ varSignChart +'Parent_sign.bmp');
//
//
//           SaveToBmpData(
//           varSignChart,
//           formatdatetime('YYYY-MM-DD',now),
//           '1',
//           extractFilePath(ParamStr(0))+'signdata\'+ varSignChart +'sign.bmp',
//           0,'','',0,0,
//           extractFilePath(ParamStr(0)) + 'signdata\' + varSignChart + 'Parent_sign.bmp',
//           edtParentName.text,edtPhone.text,edtparentJumin.text,edtLawRelation.text);
//      end;
end;

end.


