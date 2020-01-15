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
             begin //����history �ٽ� �ѷ��ְ�
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
����
����
��Ʈ��ȣ
����
�����
�����
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
//                            grdHx.Cells[7, i]   :=  'Human';  //���ν�
//                            grdHx.Cells[8, i]   :=  'Dr.Kim'; //�����
//                            grdHx.Cells[9, i]   :=   '';      //���ۿ���
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
                                   configValue.varYoyang       //  HSP_NUM       :string             �������ȣ
                                  ,grdHx.Cells[1, j]      //   ; ORD_DATE    :string  ó������
                                  ,formatDatetime('YYYYMMDD',now) + chartno      //   ; ORD_NUM     :string                         ó���ȣ
                                  ,inttostr(i)       //   ; ITM_SEQ     :string                                �׸��ȣ
                                  , paName       //   ; PSN_NAME    :string                                 ȯ�ڸ�
                                  , grdHx.Cells[5, j]      //   ; PSN_SEX     :string                                 ����
                                  , grdHx.Cells[6, j]       //   ; PSN_AGE     :string                                 ����
                                  , copy(grdHx.Cells[4, j], 1, 6) + '-*******'      //   ; PSN_ID      :string                                 �ֹι�ȣ
                                  , chartno       //   ; CHT_NUM     :string                                 ��Ʈ��ȣ
                                  ,''       //   ;  HSP_DEPT  :string                                 �����˻��ڵ�
                                  ,''       //   ;  HSP_WARD  :string                                 HSP_WARD
                                  ,''       //   ;  HSP_DOCTOR  :string                                 HSP_DOCTOR
                                  ,formatDatetime('YYYY-MM-DD',now)        //   ;  SAMPLE_DATE  :string                                 SAMPLE_DATE
                                  ,grdWonNe.Cells[2, i] //'L7890'       //   ; HLAB_CODE   :string                                 �����˻��ڵ�
                                  ,grdWonNe.Cells[2, i] //'GHJ'       //   ; HSUB_CODE   :string                                 ���������ڵ�
                                  , grdWonNe.Cells[3, i]  //'����'       //   ; HLAB_NAME   :string                                 �����˻��
                                  ,''       //   ; LAB_CODE    :string                                 �˻��ڵ�
                                  ,''       //   ; LAB_NAME    :string                                 �˻��
                                  ,''       //   ; LAB_UNIT    :string                                 ����
                                  ,grdWonNe.Cells[2, i]   //'LZ463'       //   ; INSU_CODE   :string                                 û���ڵ�
                                  ,'J'       //   ; LAB_STAT    :string                                 ����
                                  ,''       //   ; LAB_RESULT  :string                                 �����
                                  ,''       //   ; DESC_RESULT1:string                                 ���������1
                                  ,''        //   ; DESC_RESULT2:string                                 ���������2
                                  ,''        //   ; DESC_RESULT3:string                                 ���������3
                                  ,''        //   ; DESC_RESULT4:string                                 ���������4
                                  ,''        //   ; DESC_RESULT5:string                                 ���������5
                                  ,''        //   ; RSLT_DATE   :string                                 �������
                                  ,''        //   ; RSLT_TIME   :string                                 ����ð�
                                  ,''        //   ; DR_NUM      :string                                 �����ǹ�ȣ
                                  ,''        //   ; DR_NAME     :string                                 �����Ǹ�
                                  ,''        //   ; ABN_VALUE   :string                                 ����
                                  ,''        //   ; REF_VALUE   :string                                 ����
                                  ,formatDatetime('YYYY-MM-DD',now)       //   ; RQST_DATE   :string                                 �Ƿ�����
                                  ,formatDatetime('hh:nn:ss',now)       //   ; RQST_TIME   :string                                 �Ƿڽð�
                                  ,''       //   ; RCPT_DATE   :string                                 ��������
                                  ,''       //   ; RCPT_TIME   :string                                 �����ð�
                                  ,''       //   ; RCPT_NUM    :string                                 ������ȣ
                                  ,''       //   ; SEND_DATE   :string                                 ��������
                                  ,''       //   ; SEND_TIME   :string                                 ���۽ð�
                                  ,''//formatDatetime('YYYY-MM-DD',now)        //   ; DOWN_DATE   :string                                 ��������
                                  ,'');////formatDatetime('hh:nn:ss',now) );      //   ; DOWN_TIME   :string                                 ���Žð�



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
{  <CONSIGNEXAM CHARTNO="19500956" CHARTNM="��**" PEOPID="400217-*******" SEX="M/70-7" AGE="">
        <INFO SAMPNO="21008210011" ACPTNO="" HOSP_KEY="">
            <REQUEST ORDCD="C5916" SPCCD="" ORDNM="Histopathology ������ �ʿ���6������" SPCNM="OTHERS" NOTICE="">
                <SUBINFO ACPTYMD="2010/08/21" ACCYMD="2010/08/23" DRNM="" DEPTCD="" DEPTNM="GS1/51W" ROOMNO="" FIL1="���ܺ���" FIL2="R10.0"
                FIL3="�޼� ����" FIL4="C5916" FIL5="" FIL6="" FIL7="" FIL8="" FIL9="" FIL10="" />
            </REQUEST>
        </INFO>
    </CONSIGNEXAM>}

      if isUpdate = false then  //New Create
      begin
              // XML Document �����
              xdSoft := TXMLDocument.Create(Application);
              xdSoft.Active := True;
              xdSoft.Encoding:= 'utf-8';
                // ��Ʈ ��� �����
                xnRoot := xdSoft.AddChild('LAB');
                   // ��忡 �Ӽ� ����
                   xnRoot.Attributes['HOSPCD']      :=  '180296';  //'01';
                   xnRoot.Attributes['ORDYMD']      :=  formatDatetime('YYYYMMDD',now);  //'01';
                //<CONSIGNEXAM CHARTNO="19500956" CHARTNM="��**" PEOPID="400217-*******" SEX="M/70-7" AGE="">

                for j := 1 to  grdHx.RowCount - 1  do   //Patient Count
                begin
                //  j:=  grdHx.row;

                   grdHx.GetCheckBoxState(1, j, checkState);
                   if checkState = true then
                  begin

                   //  ���᳻���� ��������.
                    LoadJinryo_S(grdHx.Cells[3, j],  grdHx.Cells[2, j]); //chart, jin_day

                   nPatientCnt := nPatientCnt + 1; //���õ� ȯ�ڰ� 1���̻��ϰ�츸 ��������.

                   chartno :=  grdHx.Cells[3, j];
                   paName  :=  grdHx.Cells[4, j];

                    xnPatient := xnRoot.AddChild('CONSIGNEXAM');
                        xnPatient.Attributes['CHARTNO']  :=  chartno; //chart
                        xnPatient.Attributes['CHARTNM']  :=  paName; //Name
                        xnPatient.Attributes['PEOPID']   :=  copy(grdHx.Cells[7, j], 1, 6) + '-*******';
                        xnPatient.Attributes['SEX']      :=  grdHx.Cells[5, j]; //Gender
                        xnPatient.Attributes['AGE']      :=  grdHx.Cells[6, j]; //Ages-Month'70-7';  //'01';

                      // ��� �ؿ� ��� �����
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
                                      xnGrandchild.Attributes['ORDNM']      := grdWonNe.Cells[3, i] ;//'Histopathology ������ �ʿ���6������';
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


                if nPatientCnt > 0 then //���õ� ȯ�ڰ� 1���̻��ϰ�츸 ��������.
                begin
                    // XML Document �����ϱ�
                    xdSoft.SaveToFile(xmlfileName);
                    xdSoft.SaveToXML(aXml);   //    );
                    memo1.Text:= aXMl;
                    xdSoft.Free;

                    aSendResult:=  GetService1Soap.Set_Order( aXml);

                    if ( copy(aSendResult,1,1) ='M')
                       or (copy(aSendResult,1,1) ='Y') then
                    begin



                         //1. jinryo_p�� isRes�� 1�� ������Ʈ ����.

                      for j := 1 to  grdHx.RowCount - 1  do   //Patient Count
                      begin
                      //  j:=  grdHx.row;

                         grdHx.GetCheckBoxState(1, j, checkState);
                         if checkState = true then
                        begin
                            updateJinryoP_isRes( grdHx.Cells[8, j],  '1' );
                        end;

                      end;


                         //2. ���۰���� ��������....

//                         with Dm_f.sqlRegi do
//                         begin
//                              close;
//                              SQL.Clear;
//                              SQL.Add('     INSERT INTO ma_ResInfo');
//                              SQL.Add('   ([ResDate]                   ');
//                              SQL.Add('   ,[ResSeq]                    ');  //���� ū  ResSeq�� ��������.
//                              SQL.Add('   ,[ResXmlTyp]                 ');
//                              SQL.Add('   ,[ResCnt]                    ');
//                              SQL.Add('   ,[ResXml]) values            ');
//                              SQL.Add('   (ResDate                     ');
//                              SQL.Add('   ,ResSeq                      ');  //���� ū  ResSeq�� ��������.
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
//                                 ,[ResSeq]    //���� ū  ResSeq�� ��������.
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


                         showmessage('���۵Ǿ����ϴ�.' +#10+aSendResult);//


                    end
                    else
                    begin
                        showmessage('�ٽ� �õ�.' +#10+aSendResult);//
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

{     qlblName.caption   := '����: ' + main_f.edtName.text;
     qlblChart.caption  := '��Ʈ��ȣ: ' + main_f.edtchart.text;
     qlblJuso.caption   := '�ּ�: ' + main_f.memAdd.text;
     qlblJohap.caption  := '���ձ�ȣ: ' + main_f.edtgiho.text;
     if eChart_f.cbPrintChartRemark.Checked then
     qlblChamgo.caption := '����: ' + main_f.memChamgo.Text
     else
      qlblChamgo.caption := '����: ';

     qlblJumin.caption  := '�ֹε�Ϲ�ȣ: ' + main_f.edtjumin.text + '-' +copy( main_f.edtjumin2.text,1,2)+'*****';
     qlblJung.caption   := '����ȣ: ' + main_f.edtjungno.text;
     qlblHospitalName.caption := dm_f.configvalue.varsaupname;
     qlblHospitalJuso.caption := dm_f.configvalue.varAdd1 + ' ' + dm_f.configvalue.varAdd2;
}
     with frxReport1 do
     begin
       //  barcode1.text:=  edtchart.text;
          Variables['����']         := QuotedStr('����: '         + edtName.text); //
          Variables['��Ʈ��ȣ']     := QuotedStr('��Ʈ��ȣ: '     + edtchart.text); //
          Variables['�ֹε�Ϲ�ȣ'] := QuotedStr('�ֹε�Ϲ�ȣ: ' + copy(grdHx.Cells[7, grdHx.Row], 1, 6) + '-*******'); //
          Variables['������']       := QuotedStr('�Ƿ��� : '    + configvalue.varsaupname); //
          Variables['�����ּ�']     := QuotedStr('�ּ� : '        + configvalue.varAdd1 + ' ' + configvalue.varAdd2); //
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
       showmessage('�˻����� �����ϼ���.');
       cbChoiceLab.SetFocus;
       exit;
  end;

  try
       btnSend.Enabled:=false;


      case cbChoiceLab.ItemIndex of

          1: //�̿�
          begin
               saveXml;
          end;


          2: //��ȭ
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
             begin //����history �ٽ� �ѷ��ְ�
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

  // XML Document �����
  xdSoft := TXMLDocument.Create(Application);
  dir := extractFilePath(paramStr(0))   + 'temp\Xml\';

  // XML Document �ҷ�����
  xdSoft.LoadFromFile(dir + 'order20180911094509977.xml' );
  xdSoft.Active := True;

  // ��Ʈ ��尡 ���� ��� ����
  if xdSoft.ChildNodes.First = nil then Begin
    Exit;
  End;

  // ��Ʈ�� �����ִ� ��� ��
  For i := 0 To xdSoft.DocumentElement.ChildNodes.count - 1 Do
  Begin
    sMsg := '';
    sTest := '';
    xnPatient := xdSoft.DocumentElement.ChildNodes[i];
    xnChild := xnPatient.ChildNodes[0];

    // Soft ����� ù��° ����� ���� attribute ��
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



�������ȣ
ó������
ó���ȣ
�׸��ȣ
ȯ�ڸ�
����
����
�ֹι�ȣ
��Ʈ��ȣ
�����˻��ڵ�
���������ڵ�
�����˻��
�˻��ڵ�
�˻��
����
û���ڵ�
����
�����
���������1
���������2
���������3
���������4
���������5
�������
����ð�
�����ǹ�ȣ
�����Ǹ�
����
����
�Ƿ�����
�Ƿڽð�
��������
�����ð�
������ȣ
��������
���۽ð�
��������
���Žð�
