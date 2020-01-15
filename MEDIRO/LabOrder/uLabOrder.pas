unit uLabOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvSplitter, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, FormSize, Vcl.StdCtrls, Vcl.ComCtrls,

  uni, db,

  frxBarcode,

  xmldom, XMLIntf, XMLDoc, AdvEdit, EllipsLabel, AdvUtil, frxClass;

type
  TlabOrder_f = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdHx: TAdvStringGrid;
    grdWonNe: TAdvStringGrid;
    AdvSplitter1: TAdvSplitter;
    FormSize1: TFormSize;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    saveEhwa: TButton;
    Button3: TButton;
    btnSend: TButton;
    Button5: TButton;
    edtname: TAdvEdit;
    edtChart: TAdvEdit;
    dpSdate: TDateTimePicker;
    dpfDate: TDateTimePicker;
    Button6: TButton;
    Memo1: TMemo;
    Button2: TButton;
    lblFrom: TLabel;
    Label3: TLabel;
    cbChoiceLab: TComboBox;
    Label4: TLabel;
    btnPrint: TButton;
    frxReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    frxBarCodeObject1: TfrxBarCodeObject;
    cbPreview: TCheckBox;
    Panel3: TPanel;
    cbBloodTest: TCheckBox;
    procedure saveEhwaClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdHxRowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure grdHxClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button2Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure edtnameClick(Sender: TObject);
    procedure grdHxGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdHxGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
    procedure grdWonNeGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
  private
    { Private declarations }
    procedure SaveXml;
    procedure ReadXml;
    procedure JinryoHistoryView(chart: string; sDate, fDate: Tdate);
    procedure LoadJinryo_S(chart, jinDay: string);
    procedure SendEhwa;
    procedure DataToPrintForm(varDate, sYoungNo: string);
  public
    { Public declarations }
  end;

var
  labOrder_f: TlabOrder_f;

implementation
uses uConfig, uFunctions, uGogekData, uDm, uFormInit ,EwonService;
{$R *.dfm}

procedure TlabOrder_f.JinryoHistoryView(chart: string; sDate: Tdate ; fDate : Tdate);
var
     temp_yy, temp_mm, temp_dd: Variant;
     tempQuery : TuniQuery;
     i : integer;
begin
    i:= 0;

     grdHx.RemoveRows(1, grdHx.RowCount - 1);

     try
        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin //진료history 다시 뿌려주고
                  Close;
                  Sql.Clear;


                  Sql.Add('select i.name , p.jin_day, p.chart, i.jumin, p.jinryo_pid , p.isRes from jinryo_p p ');
                  Sql.Add('left join ma_gogek_basic i on p.chart= i.chart               ');



//                  Sql.Add('select  s.jin_day, s.chart, i.name, i.jumin   from jinryo_s s       ');
//                  Sql.Add('left join ma_gogek_basic i on s.chart= i.chart            ');
                //  Sql.Add('where jin_day='2019-04-17' and s.chart=:chart             ');
                //  Sql.Add('  and substring(su_key,1,1) in (''B'',''C'',''D'')        ');
                //  Sql.Add('group by  s.jin_day, s.chart, i.name , s.jin_day, s.chart ');


                  if edtChart.Text <> '' then
                  begin
//                      sql.add('where s.chart = :chart and  s.jin_Day >= :jinDay1 and s.jin_Day <= :jinDay2 ');
                      sql.add('where p.chart = :chart and  p.jin_Day >= :jinDay1 and p.jin_Day <= :jinDay2 ');
                      ParamByName('chart').AsString :=chart;//  edtChart.Text ;
                  end
                  else
                  begin
//                      sql.add('where s.jin_Day >= :jinDay1 and s.jin_Day <= :jinDay2 ');
                      sql.add('where p.jin_Day >= :jinDay1 and p.jin_Day <= :jinDay2 ');

                  end;

                  sql.Add('and p.chart in (select chart from jinryo_s where chart=p.chart and modality =''LAB'' and jin_day=p.jin_day) ');

        //          sql.add(' and substring(su_key,1,1) in (''B'',''C'',''D'')    ');
        //           sql.add('   and g_check <> ''G'' ');
        //          sql.add(' and modality=''LAB'' ');
                  ParamByName('jinDay1').AsString := formatDatetime('YYYY-MM-DD', sDate); //dpSdate.dateTime);
                  ParamByName('jinDay2').AsString := formatDatetime('YYYY-MM-DD', fDate);//dpFdate.dateTime);
        //          sql.add('and jin_gu  =  ''0'' );
        //          sql.add('and chojae  <> ''9'' ');
        //          sql.add('and chojae  <> ''0''  ');
        //          sql.add('and chojae  <> ''13'' ');
//                  Sql.Add(' group by  s.jin_day, s.chart, i.name, i.jumin ');
                  Sql.Add('  order by jin_day desc');
                  //Sql.Add(' union select distinct jin_day from jinryo_s where chart=:chart order by jin_day desc');
                  // and makam_chk<>''9''

                  Open;
                //  First;
                  grdHx.RowCount := RecordCount + 1;

                  if not isEmpty then
                  begin
                       while not eof do
                       begin
                          //  grdHx.AddRow;
                            i := i + 1;
{
선택
일자
차트번호
성명
진료실
담당의
}
                            grdHx.AddCheckBox(1, i, false, false) ;
                            grdHx.Cells[2, i]   :=  FieldByName('jin_day').AsString;
                            grdHx.Cells[3, i]   :=  FieldByName('chart').AsString;
                            grdHx.Cells[4, i]   :=  FieldByName('name').AsString;
                         //   grdHx.Cells[5, i]   :=  FieldByName('team').AsString;
                         //   grdHx.Cells[6, i]   := LoadDocNameFromSawonWithID( FieldByName('doc_code').AsString);
//                            grdHx.Cells[4, i]   :=  FieldByName('jumin').AsString;
                            grdHx.Cells[5, i]   :=  jumintoGender(FieldByName('jumin').AsString);
                            grdHx.Cells[6, i]   :=  JuminToNai(FieldByName('jumin').AsString);
                            grdHx.Cells[7, i]   :=  copy(FieldByName('jumin').AsString, 1,7);
                            grdHx.Cells[8, i]   :=  FieldByName('Jinryo_pID').AsString;
                            grdHx.Cells[9, i]   :=  FieldByName('isRes').AsString;
//                            grdHx.Cells[7, i]   :=  'Human';  //진로실
//                            grdHx.Cells[8, i]   :=  'Dr.Kim'; //담당의
//                            grdHx.Cells[9, i]   :=   '';      //전송여부
                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
       grdHx.AutoNumberCol(0);
     end;
end;



procedure TlabOrder_f.saveEhwaClick(Sender: TObject);
begin
      SendEhwa;
end;


procedure TlabOrder_f.SendEhwa;
var
   i, j : integer;
    chartno, paName : string;

begin
                for j := 1 to grdHx.RowCount - 1  do   //Patient Count
                begin
                   chartno :=  grdHx.Cells[2, j];
                   paName  :=  grdHx.Cells[3, j];

                        for I := 1 to grdWonNe.RowCount - 1  do   //iTem Count
                        begin


                           saveLabOrderEwha(
                                   configValue.varYoyang       //  HSP_NUM       :string             요양기관기호
                                  ,grdHx.Cells[1, j]      //   ; ORD_DATE    :string  처방일자
                                  ,formatDatetime('YYYYMMDD',now) + chartno      //   ; ORD_NUM     :string                         처방번호
                                  ,inttostr(i)       //   ; ITM_SEQ     :string                                항목번호
                                  , paName       //   ; PSN_NAME    :string                                 환자명
                                  , grdHx.Cells[5, j]      //   ; PSN_SEX     :string                                 성별
                                  , grdHx.Cells[6, j]       //   ; PSN_AGE     :string                                 나이
                                  , copy(grdHx.Cells[4, j], 1, 6) + '-*******'      //   ; PSN_ID      :string                                 주민번호
                                  , chartno       //   ; CHT_NUM     :string                                 차트번호
                                  ,''       //   ;  HSP_DEPT  :string                                 병원검사코드
                                  ,''       //   ;  HSP_WARD  :string                                 HSP_WARD
                                  ,''       //   ;  HSP_DOCTOR  :string                                 HSP_DOCTOR
                                  ,formatDatetime('YYYY-MM-DD',now)        //   ;  SAMPLE_DATE  :string                                 SAMPLE_DATE
                                  ,grdWonNe.Cells[2, i] //'L7890'       //   ; HLAB_CODE   :string                                 병원검사코드
                                  ,grdWonNe.Cells[2, i] //'GHJ'       //   ; HSUB_CODE   :string                                 병원서브코드
                                  , grdWonNe.Cells[3, i]  //'갑상선'       //   ; HLAB_NAME   :string                                 병원검사명
                                  ,''       //   ; LAB_CODE    :string                                 검사코드
                                  ,''       //   ; LAB_NAME    :string                                 검사명
                                  ,''       //   ; LAB_UNIT    :string                                 단위
                                  ,grdWonNe.Cells[2, i]   //'LZ463'       //   ; INSU_CODE   :string                                 청구코드
                                  ,'J'       //   ; LAB_STAT    :string                                 상태
                                  ,''       //   ; LAB_RESULT  :string                                 결과값
                                  ,''       //   ; DESC_RESULT1:string                                 서술결과값1
                                  ,''        //   ; DESC_RESULT2:string                                 서술결과값2
                                  ,''        //   ; DESC_RESULT3:string                                 서술결과값3
                                  ,''        //   ; DESC_RESULT4:string                                 서술결과값4
                                  ,''        //   ; DESC_RESULT5:string                                 서술결과값5
                                  ,''        //   ; RSLT_DATE   :string                                 결과일자
                                  ,''        //   ; RSLT_TIME   :string                                 결과시간
                                  ,''        //   ; DR_NUM      :string                                 전문의번호
                                  ,''        //   ; DR_NAME     :string                                 전문의명
                                  ,''        //   ; ABN_VALUE   :string                                 판정
                                  ,''        //   ; REF_VALUE   :string                                 참고값
                                  ,formatDatetime('YYYY-MM-DD',now)       //   ; RQST_DATE   :string                                 의뢰일자
                                  ,formatDatetime('hh:nn:ss',now)       //   ; RQST_TIME   :string                                 의뢰시간
                                  ,''       //   ; RCPT_DATE   :string                                 접수일자
                                  ,''       //   ; RCPT_TIME   :string                                 접수시간
                                  ,''       //   ; RCPT_NUM    :string                                 접수번호
                                  ,''       //   ; SEND_DATE   :string                                 전송일자
                                  ,''       //   ; SEND_TIME   :string                                 전송시간
                                  ,''//formatDatetime('YYYY-MM-DD',now)        //   ; DOWN_DATE   :string                                 수신일자
                                  ,'');////formatDatetime('hh:nn:ss',now) );      //   ; DOWN_TIME   :string                                 수신시간



                        end;

                end;




end;



procedure TlabOrder_f.SaveXml;
var
    varFName, varLname: string;
    dir: string;

    xdSoft : TXMLDocument;
    xnRoot  : IXMLNode;
    xnPatient : IXMLNode;
    xnChild : IXMLNode;
    xnGrandchild : IXMLNode;
    xnGrandGrandchild : IXMLNode;

    i , j, nCount: integer;

    FS: TFileStream;
    Stream: TStream;
    isUpdate : boolean;


    NewImage : IXMLNode ;
    NewImageKey : IXMLNode ;
    imgSeqID : integer;

    chartno, paName : string;

    xmlfileName : string;
    aXml : string;
    checkState: boolean;
    nPatientCnt : integer;
    aSendResult : string;
begin

       aSendResult :='';
       isUpdate := false;
       nPatientCnt := 0;

  //     varFName := copy(edtname.text, 1, 2);
  //     varLName := copy(edtname.text, 3, 4);

       //xmlfileName := extractFilePath(paramStr(0)) + 'Xml\FMX18.xml';



//    with dm_f.SqlWork do
//    begin
//         close;
//         sql.Clear;
//         sql.Add('select * from Tb_img_temp') ;
//         sql.Add('where  PNT_ID = :PNT_ID  and TMP_SEQ=:TMP_SEQ' ) ;
//         paramByName('PNT_ID').AsString  := edtChart.Text;
//         paramByName('TMP_SEQ').AsString := '1' ;
//         open;
//
//         if not isEmpty then
//         begin
//
//               isUpdate := true;
//
//
//              try
//                 dir := extractFilePath(paramStr(0))
//                     + 'temp\Xml\'+ FieldByname('TMP_KEY').AsString ;
//
//                FS := TFileStream.Create(dir, fmCreate);
//
//                Stream :=  CreateBlobStream(FieldByName('TMP_XML'), bmRead);
//                FS.CopyFrom(Stream, 0);
//
//
//
//              finally
//                Stream.Free;
//                FS.Free;
//              end;
//         end
//         else
//         begin
//
//            dir := extractFilePath(paramStr(0))   + 'temp\Xml\'+ edtChart.text+ '.xml';
//
//         end;
//    end;


        dir := extractFilePath(paramStr(0))   + 'temp\Xml\';

  //     copyfile(pchar(xmlfilename), pchar(dir) , false);

  if not DirectoryExists(dir) then
     ForceDirectories(dir);


      xmlfileName := dir +'order'+formatdatetime('yyyymmddhhnnsszzz',now) +'.xml';//dir  ;
{  <CONSIGNEXAM CHARTNO="19500956" CHARTNM="김**" PEOPID="400217-*******" SEX="M/70-7" AGE="">
        <INFO SAMPNO="21008210011" ACPTNO="" HOSP_KEY="">
            <REQUEST ORDCD="C5916" SPCCD="" ORDNM="Histopathology 절편이 필요블록6개이하" SPCNM="OTHERS" NOTICE="">
                <SUBINFO ACPTYMD="2010/08/21" ACCYMD="2010/08/23" DRNM="" DEPTCD="" DEPTNM="GS1/51W" ROOMNO="" FIL1="공단보험" FIL2="R10.0"
                FIL3="급성 복통" FIL4="C5916" FIL5="" FIL6="" FIL7="" FIL8="" FIL9="" FIL10="" />
            </REQUEST>
        </INFO>
    </CONSIGNEXAM>}

      if isUpdate = false then  //New Create
      begin
              // XML Document 만들기
              xdSoft := TXMLDocument.Create(Application);
              xdSoft.Active := True;
              xdSoft.Encoding:= 'utf-8';
                // 루트 노드 만들기
                xnRoot := xdSoft.AddChild('LAB');
                   // 노드에 속성 설정
                   xnRoot.Attributes['HOSPCD']      :=  '180296';  //'01';
                   xnRoot.Attributes['ORDYMD']      :=  formatDatetime('YYYYMMDD',now);  //'01';
                //<CONSIGNEXAM CHARTNO="19500956" CHARTNM="김**" PEOPID="400217-*******" SEX="M/70-7" AGE="">

                for j := 1 to  grdHx.RowCount - 1  do   //Patient Count
                begin
                //  j:=  grdHx.row;

                   grdHx.GetCheckBoxState(1, j, checkState);
                   if checkState = true then
                  begin

                   //  진료내역을 가져오자.
                    LoadJinryo_S(grdHx.Cells[3, j],  grdHx.Cells[2, j]); //chart, jin_day

                   nPatientCnt := nPatientCnt + 1; //선택된 환자가 1명이상일경우만 전송하자.

                   chartno :=  grdHx.Cells[3, j];
                   paName  :=  grdHx.Cells[4, j];

                    xnPatient := xnRoot.AddChild('CONSIGNEXAM');
                        xnPatient.Attributes['CHARTNO']  :=  chartno; //chart
                        xnPatient.Attributes['CHARTNM']  :=  paName; //Name
                        xnPatient.Attributes['PEOPID']   :=  copy(grdHx.Cells[7, j], 1, 6) + '-*******';
                        xnPatient.Attributes['SEX']      :=  grdHx.Cells[5, j]; //Gender
                        xnPatient.Attributes['AGE']      :=  grdHx.Cells[6, j]; //Ages-Month'70-7';  //'01';

                      // 노드 밑에 노드 만들기
                        xnChild := xnPatient.AddChild('INFO');
                          xnChild.Attributes['SAMPNO']   :=  formatdatetime('YYYYMMDD', now) +
                                                           formatFloat('000',grdHx.ints[0, j] );
                                                          //'21008210011';
                          xnChild.Attributes['ACPTNO']   := '';
                          xnChild.Attributes['HOSP_KEY'] := '';

                        for I := 1 to grdWonNe.RowCount - 1  do   //iTem Count
                        begin

                              nCount:= 5;// imageCnt[i];
                                  xnGrandchild := xnChild.AddChild('REQUEST');
                                      xnGrandchild.Attributes['ORDCD']      := grdWonNe.Cells[2, i] ;//'C5916';  //'01';
                                      xnGrandchild.Attributes['SPCCD']      := '';
                                      xnGrandchild.Attributes['ORDNM']      := grdWonNe.Cells[3, i] ;//'Histopathology 절편이 필요블록6개이하';
                                      xnGrandchild.Attributes['SPCNM']      := 'OTHERS';
                                      xnGrandchild.Attributes['NOTICE']     := '';

                                       xnGrandGrandchild := xnGrandchild.AddChild('SUBINFO') ;
                                           xnGrandGrandchild.Attributes['ACPTYMD']     := grdHx.Cells[2, j] ;//'2010/08/21';
                                           xnGrandGrandchild.Attributes['ACCYMD']      := grdHx.Cells[2, j] ;
                                           xnGrandGrandchild.Attributes['DRNM']        := grdWonNe.Cells[6, i] ;//Dr Name
                                           xnGrandGrandchild.Attributes['DEPTCD']      := grdWonNe.Cells[5, i] ;
                                           xnGrandGrandchild.Attributes['DEPTNM']      := grdWonNe.Cells[5, i] ;
                                           xnGrandGrandchild.Attributes['ROOMNO']      := '';
                                           xnGrandGrandchild.Attributes['FIL1']        := '';
                                           xnGrandGrandchild.Attributes['FIL2']        := '';
                                           xnGrandGrandchild.Attributes['FIL3']        := '';
                                           xnGrandGrandchild.Attributes['FIL4']        := '';
                                           xnGrandGrandchild.Attributes['FIL5']        := '';
                                           xnGrandGrandchild.Attributes['FIL6']        := '';
                                           xnGrandGrandchild.Attributes['FIL7']        := '';
                                           xnGrandGrandchild.Attributes['FIL8']        := '';
                                           xnGrandGrandchild.Attributes['FIL9']        := '';
                                           xnGrandGrandchild.Attributes['FIL10']       := '';

                        end;
                   end;

                end;


                if nPatientCnt > 0 then //선택된 환자가 1명이상일경우만 전송하자.
                begin
                    // XML Document 저장하기
                    xdSoft.SaveToFile(xmlfileName);
                    xdSoft.SaveToXML(aXml);   //    );
                    memo1.Text:= aXMl;
                    xdSoft.Free;

                    aSendResult:=  GetService1Soap.Set_Order( aXml);

                    if ( copy(aSendResult,1,1) ='M')
                       or (copy(aSendResult,1,1) ='Y') then
                    begin



                         //1. jinryo_p에 isRes에 1로 업데이트 하자.

                      for j := 1 to  grdHx.RowCount - 1  do   //Patient Count
                      begin
                      //  j:=  grdHx.row;

                         grdHx.GetCheckBoxState(1, j, checkState);
                         if checkState = true then
                        begin
                            updateJinryoP_isRes( grdHx.Cells[8, j],  '1' );
                        end;

                      end;


                         //2. 전송결과를 저장하자....

//                         with Dm_f.sqlRegi do
//                         begin
//                              close;
//                              SQL.Clear;
//                              SQL.Add('     INSERT INTO ma_ResInfo');
//                              SQL.Add('   ([ResDate]                   ');
//                              SQL.Add('   ,[ResSeq]                    ');  //가장 큰  ResSeq를 가져오자.
//                              SQL.Add('   ,[ResXmlTyp]                 ');
//                              SQL.Add('   ,[ResCnt]                    ');
//                              SQL.Add('   ,[ResXml]) values            ');
//                              SQL.Add('   (ResDate                     ');
//                              SQL.Add('   ,ResSeq                      ');  //가장 큰  ResSeq를 가져오자.
//                              SQL.Add('   ,ResXmlTyp                   ');
//                              SQL.Add('   ,ResCnt                      ');
//                              SQL.Add('   ,ResXml)                     ');
//                              ParamByName('ResDate').AsString       := ResDate;  //YYYYMMDD
//                              ParamByName('ResSeq').AsString        := ResSeq;
//                              ParamByName('ResCnt').AsString        := ResCnt;
//                              ParamByName('ResXml').AsString        := ResXml;
//                              ExecSQL;
//
//                         end;
//
//                           INSERT INTO [dbo].[ma_ResInfo]
//                                 ([ResDate]
//                                 ,[ResSeq]    //가장 큰  ResSeq를 가져오자.
//                                 ,[ResXmlTyp]
//                                 ,[ResCnt]
//                                 ,[ResXml])
//                           VALUES
//                                 (<ResDate, char(10),>
//                                 ,<ResSeq, smallint,>
//                                 ,<ResXmlTyp, char(1),>
//                                 ,<ResCnt, int,>
//                                 ,<ResXml, text,>)
//


                         showmessage('전송되었습니다.' +#10+aSendResult);//


                    end
                    else
                    begin
                        showmessage('다시 시도.' +#10+aSendResult);//
                    end;
                end;



      end



end;


procedure TlabOrder_f.Button2Click(Sender: TObject);
var
   aXML : string;
begin
    aXML     :=   memo1.text;
    GetService1Soap.Set_Order(aXML);
end;

procedure TlabOrder_f.btnPrintClick(Sender: TObject);
var
    WPath   : string;
    bReturn : boolean;
    barcode1:  TfrxBarcodeView;
begin

   //  InitFastReport;

     WPath := ExtractFilePath(Application.ExeName) + 'print\';

     with frxReport1 do
     begin

           LoadFromFile(WPath + 'rptLabPrint.fr3') ;



           barcode1      := FindComponent('BarCode1') as TfrxBarcodeView;

           barcode1.Text := edtchart.text  ;


           frxUserDataSet1.RangeEnd      := reCount;
           frxUserDataSet1.RangeEndCount := grdWonne.RowCount-1;




           DataToPrintForm('', '');

           if cbPreview.Checked then
               ShowReport()
           else
           begin
               PrepareReport();
               bReturn := Print();
           end;
     end;

end;


procedure TlabOrder_f.DataToPrintForm(varDate, sYoungNo: string);
var
     imsiryo, i: integer;
begin

{     qlblName.caption   := '성명: ' + main_f.edtName.text;
     qlblChart.caption  := '차트번호: ' + main_f.edtchart.text;
     qlblJuso.caption   := '주소: ' + main_f.memAdd.text;
     qlblJohap.caption  := '조합기호: ' + main_f.edtgiho.text;
     if eChart_f.cbPrintChartRemark.Checked then
     qlblChamgo.caption := '참고: ' + main_f.memChamgo.Text
     else
      qlblChamgo.caption := '참고: ';

     qlblJumin.caption  := '주민등록번호: ' + main_f.edtjumin.text + '-' +copy( main_f.edtjumin2.text,1,2)+'*****';
     qlblJung.caption   := '증번호: ' + main_f.edtjungno.text;
     qlblHospitalName.caption := dm_f.configvalue.varsaupname;
     qlblHospitalJuso.caption := dm_f.configvalue.varAdd1 + ' ' + dm_f.configvalue.varAdd2;
}
     with frxReport1 do
     begin
       //  barcode1.text:=  edtchart.text;
          Variables['성명']         := QuotedStr('성명: '         + edtName.text); //
          Variables['차트번호']     := QuotedStr('차트번호: '     + edtchart.text); //
          Variables['주민등록번호'] := QuotedStr('주민등록번호: ' + copy(grdHx.Cells[7, grdHx.Row], 1, 6) + '-*******'); //
          Variables['병원명']       := QuotedStr('의료기관 : '    + configvalue.varsaupname); //
          Variables['병원주소']     := QuotedStr('주소 : '        + configvalue.varAdd1 + ' ' + configvalue.varAdd2); //
      end;
end;



procedure TlabOrder_f.edtnameClick(Sender: TObject);
begin
    edtName.Text  := '';
    edtChart.Text := '';
end;

procedure TlabOrder_f.btnSendClick(Sender: TObject);
begin


  if cbChoiceLab.ItemIndex <= 0 then
  begin
       showmessage('검사기관을 선택하세요.');
       cbChoiceLab.SetFocus;
       exit;
  end;

  try
       btnSend.Enabled:=false;


      case cbChoiceLab.ItemIndex of

          1: //이원
          begin
               saveXml;
          end;


          2: //이화
          begin
              SendEhwa;;
          end;
      end;

  finally
       btnSend.Enabled:=true;
  end;

end;

procedure TlabOrder_f.Button5Click(Sender: TObject);
begin
     ReadXml;
end;

procedure TlabOrder_f.Button6Click(Sender: TObject);
begin
     JinryoHistoryView(edtChart.text, dpSdate.DateTime, dpFdate.DateTime);
end;

procedure TlabOrder_f.FormCreate(Sender: TObject);
var
   i : integer;
begin
//     setArrayPanel;
//     for I := 0 to 3 do
//    begin
//     initPanel(  pnlArray[i]);
//    end;

//    pnlTop.Align := alTop;
//    pnlBody.Align := alClient;
//    pnlLeft.Align := alLeft;
//    pnlRight.Align := alClient;
//    reCC.Align := alClient;
//    reRemark.Align := alClient;

     edtname.text := '';
     edtChart.text := '';

//     edtJumin.text := '';
//     edtJumin2.text := '';


     dpSDate.Date := now;
     dpFDate.Date := now;



     initAdvGrid(grdHx);
     initAdvGrid(grdWonNe);


     caption:='Labaratory Order Hx.';


end;

procedure TlabOrder_f.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin
{jinday
code
hname
chongtu
hoisu
ilsu}
         if VarName = 'jinday' then
            Value := grdHx.cells[ 2, grdHx.Row]
          else if VarName = 'code' then
            Value := grdWonne.cells[ 1, frxUserDataSet1.RecNo+1]
          else if VarName = 'hname' then
            Value := grdWonne.cells[ 3, frxUserDataSet1.RecNo+1]

          else if VarName = 'chongtu' then
            Value := '1'

          else if VarName = 'hoisu' then
            Value := '1'

          else if VarName = 'ilsu' then
            Value := '1';

end;

procedure TlabOrder_f.grdHxClickCell(Sender: TObject; ARow, ACol: Integer);
begin

          edtName.Text := grdHx.Cells[4, ARow];
          edtChart.Text:= grdHx.Cells[3, ARow];
//          edtJumin.text := copy(grdHx.Cells[4, ARow], 1, 6);
//          edtJumin2.text := copy(grdHx.Cells[4, ARow], 7, 7);
//
          LoadJinryo_S(grdHx.Cells[3, ARow],  grdHx.Cells[2, ARow]);

end;

procedure TlabOrder_f.grdHxGetCellBorder(Sender: TObject; ARow, ACol: Integer;
  APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];

               APen.Width := 2;
               APen.Color := $00f2e6e2;//clSilver; //clGray;

           end;
end;

procedure TlabOrder_f.grdHxGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin

      if (aRow > 0)
          and  (aCol > 0)
             and ( grdHx.originalCells[grdHx.RealColIndex(9), aRow]  = '1') then
                   begin
                       aBrush.Color := $00EAFFEA;
                       aFont.Color  := clBlack;
                   end;


end;

procedure TlabOrder_f.grdHxRowChanging(Sender: TObject; OldRow, NewRow: Integer;
  var Allow: Boolean);
begin


     if NewRow > 0  then
     begin


          edtName.Text := grdHx.Cells[4, NewRow];
          edtChart.Text:= grdHx.Cells[3, NewRow];
//          edtJumin.text := copy(grdHx.Cells[4, NewRow], 1, 6);
//          edtJumin2.text := copy(grdHx.Cells[4, NewRow], 7, 7);

          LoadJinryo_S(grdHx.Cells[3, NewRow],  grdHx.Cells[1, NewRow]);

     end;
end;


procedure TlabOrder_f.grdWonNeGetCellBorder(Sender: TObject; ARow,
  ACol: Integer; APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];

               APen.Width := 2;
               APen.Color := $00f2e6e2;//clSilver; //clGray;

           end;
end;

procedure TlabOrder_f.LoadJinryo_S(chart:string; jinDay : string);
var
     tempQuery : TuniQuery;
     i : integer;
begin
    i:= 0;
    grdWonNe.RemoveRows(1, grdWonNe.RowCount - 1);

     try
        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin //진료history 다시 뿌려주고
                  Close;
                  Sql.Clear;
                  Sql.Add('select * from  jinryo_s  ');
                  sql.add('where chart=:chart and jin_Day = :jinDay  and g_check <> ''G'' ');
                  sql.add(' and modality=:modality');

                  if cbBloodTest.Checked then
                  begin
                      sql.add(' and su_key like ''D%'' ');

                  end;
                  sql.add('order by sort_key ');
                  ParamByName('chart').AsString  := chart;
                  ParamByName('jinDay').AsString := jinDay;
                  ParamByName('modality').AsString := 'LAB';

                  Open;

                  grdWonNe.RowCount := RecordCount + 1;

                  if not isEmpty then
                  begin
                       while not eof do
                       begin

                            i := i + 1;

                            grdWonNe.Cells[1, i]   :=  FieldByName('su_key').AsString;
                            grdWonNe.Cells[2, i]   :=  FieldByName('su_key').AsString;
                            grdWonNe.Cells[3, i]   :=  FieldByName('su_kor_Name').AsString;
                            grdWonNe.Cells[4, i]   :=  FieldByName('su_kor_Name').AsString;
                            grdWonNe.Cells[5, i]   :=  FieldByName('jins_key').AsString;
                            grdWonNe.Cells[6, i]   :=  FieldByName('team').AsString;
                            grdWonNe.Cells[7, i]   :=  LoadDocNameFromSawonWithID( FieldByName('doc_code').AsString);

                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
       grdWonNe.AutoNumberCol(0);
     end;
end;


procedure TlabOrder_f.ReadXml;
Var
  xdSoft : TXMLDocument;
    xnPatient : IXMLNode;
  xnChild : IXMLNode;
  xnGrandchild : IXMLNode;
  i : Integer;
  j : Integer;
  k : Integer;
  sMsg : string;
  sTest : string;
  dir : string;
begin

  // XML Document 만들기
  xdSoft := TXMLDocument.Create(Application);
  dir := extractFilePath(paramStr(0))   + 'temp\Xml\';

  // XML Document 불러오기
  xdSoft.LoadFromFile(dir + 'order20180911094509977.xml' );
  xdSoft.Active := True;

  // 루트 노드가 없을 경우 종료
  if xdSoft.ChildNodes.First = nil then Begin
    Exit;
  End;

  // 루트에 딸려있는 노드 분
  For i := 0 To xdSoft.DocumentElement.ChildNodes.count - 1 Do
  Begin
    sMsg := '';
    sTest := '';
    xnPatient := xdSoft.DocumentElement.ChildNodes[i];
    xnChild := xnPatient.ChildNodes[0];

    // Soft 노드의 첫번째 노드의 속한 attribute 분
    For j :=0 To xnChild.AttributeNodes.Count - 1 Do
    begin

    sMsg := sMsg +
      '    ' + xnChild.AttributeNodes.Get(j).NodeName + ' : ' +
      xnChild.AttributeNodes.Get(j).NodeValue + #13

    end;
    sTest := sTest + xnPatient.NodeName + ' : ';
    sTest := sTest + xnPatient.AttributeNodes.Get(0).NodeValue + #13;

    xnChild := xnPatient.ChildNodes[2];

//    xnGrandchild := xnChild.ChildNodes[2];

    ShowMessage(
      sTest + #13 +
      sMsg + '    ----------' + #13 +
      '    ' + xnChild.NodeName + ' : ' +
      xnChild.NodeValue
    );

  End;

  xdSoft.Free;

end;


end.



요양기관기호
처방일자
처방번호
항목번호
환자명
성별
나이
주민번호
차트번호
병원검사코드
병원서브코드
병원검사명
검사코드
검사명
단위
청구코드
상태
결과값
서술결과값1
서술결과값2
서술결과값3
서술결과값4
서술결과값5
결과일자
결과시간
전문의번호
전문의명
판정
참고값
의뢰일자
의뢰시간
접수일자
접수시간
접수번호
전송일자
전송시간
수신일자
수신시간
