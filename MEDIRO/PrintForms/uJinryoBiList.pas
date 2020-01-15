unit uJinryoBiList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  strUtils,

  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvPanel, Vcl.ExtCtrls, Vcl.StdCtrls,
  EllipsLabel, Vcl.ComCtrls, AdvEdit, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,

  uni, db,

  FormSize,
  iniFiles, AdvSplitter,
   AdvUtil, frxClass, frxBarcode, tmsAdvGridExcel;

type
  TjinryobiList_f = class(TForm)
    pnlTop: TPanel;
    pnlBody: TPanel;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    pnlNewon: TAdvPanel;
    pnlWonNe: TAdvPanel;
    grdWonNe: TAdvStringGrid;
    grdHx: TAdvStringGrid;
    edtname: TAdvEdit;
    edtChart: TAdvEdit;
    edtJumin: TAdvEdit;
    edtJumin2: TAdvEdit;
    dpSdate: TDateTimePicker;
    dpfDate: TDateTimePicker;
    btnSearch: TButton;
    btnPrint: TButton;
    FormSize1: TFormSize;
    Panel2: TPanel;
    Splitter1: TAdvSplitter;
    frxReport1: TfrxReport;
    cbPreview: TCheckBox;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxUserDataSet1: TfrxUserDataSet;
    frxUserDataSet2: TfrxUserDataSet;
    lblJuso: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblJohap: TLabel;
    Label3: TLabel;
    lblJungNo: TLabel;
    lblFrom: TLabel;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    CheckBox1: TCheckBox;
    Button3: TButton;
    frxUserDataSet_feeDetail: TfrxUserDataSet;
    Label4: TLabel;
    edtOrderName: TEdit;
    Label5: TLabel;
    edtGwanGye: TEdit;
    cbExceptZero: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grdHxRowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure grdHxClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnPrintClick(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure frxUserDataSet2GetValue(const VarName: string;
      var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
   { Private declarations }

    cTot, bTot, gTot, jTot, yTot : double;

    procedure setArrayPanel;

    procedure LoadJinryo_S(jubsu_id : string);//chart , jinDay , jinDay2 : string);

    function CurrText(varRichText: TRichedit): TTextAttributes;

    procedure DataToPrintForm(varDate, sYoungNo: string);
    procedure InitFastReport;
    procedure DataToPrintForm_Detail(varDate, sYoungNo: string);
  public
    { Public declarations }
    procedure JinryoHistoryView(chart: string; sDate: Tdate; fDate : Tdate);
  end;

var
  jinryobiList_f: TjinryobiList_f;

implementation
uses
 uConfig, uDM, uRest, uFormInit,  uFunctions, usysInfo, uJinryoCalc, uGogekData;
{$R *.dfm}




procedure TjinryobiList_f.setArrayPanel;
begin
    setLength( pnlArray, 4);
    pnlArray[0] :=  pnlTop;
    pnlArray[1] :=  pnlLeft ;
    pnlArray[2] :=  pnlRight ;
    pnlArray[3] :=  pnlBody;

end;

procedure TjinryobiList_f.btnSearchClick(Sender: TObject);
begin
     JinryoHistoryView(
          edtChart.text,
          dpSdate.DateTime,
          dpFdate.DateTime);

     edtOrderName.Text:= edtName.Text;
     edtGwanGye.Text  := '본인';
end;

procedure TjinryobiList_f.Button2Click(Sender: TObject);
begin
  SaveDialog1.fileName := 'order정보' + '.xls';
  if SaveDialog1.execute then
  begin
    if FileExists(SaveDialog1.fileName) then
      deletefile(SaveDialog1.fileName);
    AdvGridExcelIO1.XLSExport(SaveDialog1.fileName);
  end;
end;

procedure TjinryobiList_f.Button3Click(Sender: TObject);
var
    WPath   : string;
    bReturn : boolean;
    barcode1:  TfrxBarcodeView;
begin

     WPath := ExtractFilePath(Application.ExeName) + 'print\';

     with frxReport1 do
     begin

            LoadFromFile(WPath + 'rptFeeDetailList.fr3')  ;

//           barcode1      := FindComponent('BarCode1') as TfrxBarcodeView;
//           barcode1.Text := edtchart.text  ;


           frxUserDataSet1.RangeEnd      := reCount;
           frxUserDataSet1.RangeEndCount := grdWonne.RowCount-1;



           frxUserDataSet2.RangeEnd      := reCount;
           frxUserDataSet2.RangeEndCount := grdHx.RowCount-1;



           DataToPrintForm_Detail('', '');

           if cbPreview.Checked then
               ShowReport()
           else
           begin
               PrepareReport();
               bReturn := Print();
           end;
     end;



end;

procedure TjinryobiList_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action:= caFree;
end;

procedure TjinryobiList_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
    path     : string;
    FormInit : TIniFile;
begin
    Path := GetConfigDir + 'db.ini';

    FormInit := TIniFile.Create(Path);
    FormInit.WriteInteger('splitInfo_Jinryobi', 'splitLeft', PnlLeft.Width);
    FormInit.WriteInteger('splitInfo_Jinryobi', 'splitNewon', pnlNewon.Height);
    FormInit.WriteInteger('splitInfo_Jinryobi', 'splitWonNe', pnlWonNe.Height);

    FormInit.Free;


end;

procedure TjinryobiList_f.FormCreate(Sender: TObject);
var
   i : integer;
begin
     setArrayPanel;
     for I := 0 to 3 do
    begin
     initPanel(  pnlArray[i]);
    end;

    pnlTop.Align := alTop;
    pnlBody.Align := alClient;
    pnlLeft.Align := alLeft;
    pnlRight.Align := alClient;

     edtname.text := '';
     edtChart.text := '';

     edtJumin.text := '';
     edtJumin2.text := '';


//     dpSDate.Date := now;
//     dpFDate.Date := now;

     caption:='Tx. Hx.';


end;


procedure TjinryobiList_f.FormDestroy(Sender: TObject);
begin
      jinryobiList_f := nil;
end;

procedure TjinryobiList_f.FormShow(Sender: TObject);
var
    path     : string;
    FormInit : TIniFile;
begin
    Path := GetConfigDir + 'db.ini';

    FormInit              :=  TIniFile.Create(Path);
    PnlLeft.Width         :=  FormInit.ReadInteger('splitInfo_Jinryobi', 'splitLeft',   450 );
    pnlNewon.Height       :=  FormInit.ReadInteger('splitInfo_Jinryobi', 'splitNewon',200 );
    pnlWonNe.Height       :=  FormInit.ReadInteger('splitInfo_Jinryobi', 'splitWonNe',150 );

    FormInit.Free;


    edtName.Text   := ma_Paname;
    edtChart.Text  := ma_Chart;
    edtJumin.text  := copy(ma_jumin, 1, 6);
    edtJumin2.text := copy(ma_jumin, 7, 7);

    lblJuso.Caption   :=   ma_h_juso;
    lblJungNo.Caption :=   ma_K_number;
    lblJohap.Caption  :=   ma_Kiho ;


    btnSearchClick(self);

            initAdvGrid(grdHx);

            initAdvGrid(grdWonNe);


end;


procedure TjinryobiList_f.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin
{jinday
code
hname
chongtu
hoisu
ilsu
kumak
hangMok}

//  if  (VarName = 'danga' ) and  (Value =  '0') then
//  exit;

         if VarName = 'jinday' then
            Value := grdWonne.cells[ 1, frxUserDataSet1.RecNo+1]
          else if VarName = 'code' then
            Value := grdWonne.cells[ 4, frxUserDataSet1.RecNo+1]
          else if VarName = 'hname' then
            Value := grdWonne.cells[ 5, frxUserDataSet1.RecNo+1]
          else if VarName = 'hangMok' then
            Value := grdWonne.cells[ 3, frxUserDataSet1.RecNo+1]
          else if VarName = 'danga' then
            Value := grdWonne.cells[ 6, frxUserDataSet1.RecNo+1]
          else if VarName = 'kumak' then
            Value := grdWonne.cells[ 10, frxUserDataSet1.RecNo+1]
          else if VarName = 'chongtu' then
            Value := grdWonne.cells[ 6, frxUserDataSet1.RecNo+1]
          else if VarName = 'gubgu' then
            Value := grdWonne.cells[ 11, frxUserDataSet1.RecNo+1]

          else if VarName = 'hoisu' then  //약품 인경우 횟수?
            Value := grdWonne.cells[ 8, frxUserDataSet1.RecNo+1]
        //  Value := grdWonne.cells[ 17, frxUserDataSet1.RecNo+1]

          else if VarName = 'gongdan' then
            Value := grdWonne.cells[ 13, frxUserDataSet1.RecNo+1]

          else if VarName = 'bonin' then
            Value := grdWonne.cells[ 12, frxUserDataSet1.RecNo+1]

          else if VarName = 'bigub' then
            Value := grdWonne.cells[ 14, frxUserDataSet1.RecNo+1]

          else if VarName = 'junekBonin' then
            Value := grdWonne.cells[ 15, frxUserDataSet1.RecNo+1]

          else if VarName = 'ilsu' then
            Value := grdWonne.cells[ 9, frxUserDataSet1.RecNo+1];

end;

procedure TjinryobiList_f.frxUserDataSet2GetValue(const VarName: string;
  var Value: Variant);
begin

         if VarName = 'val1' then
            Value := grdHx.cells[ 2, frxUserDataSet2.RecNo+1]    //내원일자
          else if VarName = 'val2' then
            Value := grdHx.cells[ 5, frxUserDataSet2.RecNo+1]    //진료과목
          else if VarName = 'val3' then
            Value := grdHx.cells[ 9, frxUserDataSet2.RecNo+1]    //담당의

          else if VarName = 'val4' then
            Value := grdHx.cells[ 6, frxUserDataSet2.RecNo+1]    //보험유형

          else if VarName = 'val5' then
            Value := grdHx.cells[ 12, frxUserDataSet2.RecNo+1]    //사업체기호
          else if VarName = 'val6' then
            Value := grdHx.cells[ 13, frxUserDataSet2.RecNo+1]     //증번호
          else if VarName = 'val7' then
            Value := grdHx.cells[ 4, frxUserDataSet2.RecNo+1]     //초재진구분
          else if VarName = 'val8' then
            Value := grdHx.cells[ 10, frxUserDataSet2.RecNo+1]     //접수시간

          else if VarName = 'val9' then
            Value := grdHx.cells[ 11, frxUserDataSet2.RecNo+1];    //접수완료시간

end;

procedure TjinryobiList_f.grdHxClickCell(Sender: TObject; ARow, ACol: Integer);
var
    jubsu_id :string;

begin

        edtName.Text    := grdHx.Cells[1, ARow];
        edtChart.Text   := grdHx.Cells[3, ARow];
        edtJumin.text   := copy(grdHx.Cells[4, ARow], 1, 6);
        edtJumin2.text  := copy(grdHx.Cells[4, ARow], 7, 7);
        jubsu_id        := grdHx.Cells[16, ARow];

//        LoadJinryo_S(grdHx.Cells[3, ARow],
//          formatDatetime('YYYY-MM-DD', dpSdate.DateTime),
//          formatDatetime('YYYY-MM-DD',  dpFdate.DateTime) );
         LoadJinryo_S(jubsu_id);
end;

procedure TjinryobiList_f.grdHxRowChanging(Sender: TObject; OldRow, NewRow: Integer;
  var Allow: Boolean);
var
   jubsu_id : string;
begin

     if NewRow > 0  then
     begin

          jubsu_id     := grdHx.Cells[16, NewRow];
          edtName.Text := grdHx.Cells[1, NewRow];
          edtChart.Text:= grdHx.Cells[3, NewRow];
          edtJumin.text := copy(grdHx.Cells[4, NewRow], 1, 6);
          edtJumin2.text := copy(grdHx.Cells[4, NewRow], 7, 7);

          LoadJinryo_S( jubsu_id);
//         LoadJinryo_S(grdHx.Cells[3, NewRow],  formatDatetime('YYYY-MM-DD', dpSdate.DateTime),
//          formatDatetime('YYYY-MM-DD',  dpFdate.DateTime) );
     end;
end;

procedure TjinryobiList_f.JinryoHistoryView(chart: string; sDate: Tdate ; fDate : Tdate);
var
     temp_yy, temp_mm, temp_dd: Variant;
     tempQuery : TuniQuery;
     i : integer;
begin
    i:= 0;
    grdHx.RemoveRows(1, grdHx.RowCount - 1);
    grdWonne.RemoveRows(1, grdWonne.RowCount - 1);


     try


        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin //진료history 다시 뿌려주고
                  Close;
                  Sql.Clear;
                //  Sql.Add('select i.name , p.jin_day, p.chart, i.jumin  from jinryo_p p ');
                //  Sql.Add('left join ma_gogek_basic i on p.chart= i.chart ');


                  Sql.Add(' select (select top 1 name from  ma_gogek_basic where chart = p.chart ) as paName , ');
                  Sql.Add('        (select  top 1 special from view_gogek where chart=p.chart) as Jange ,      ');
                  Sql.Add('       (select top 1  saName from ma_sawon_basic where saID = p.doc_code and ( sajikgub=''1'' and noUse <> ''1'') ) as DrName ,');
                  Sql.Add('   case when (piboname is null)  then   (select  top 1 piboname from view_gogek where chart=p.chart)  else piboname end as 피보, ');
                  Sql.Add('   case when (kiho is null)      then   (select  top 1 kiho from view_gogek where chart=p.chart) else kiho end as 조합기호, ' );
                  Sql.Add('   case when (k_number is null)  then   (select  top 1 k_number from view_gogek where chart=p.chart) else k_number end as 증번호, ' );
                  Sql.Add('    (select  top 1 bontype from view_gogek where chart=p.chart) as 본담구분, ' );
                  Sql.Add('    (select  top 1 special from view_gogek where chart=p.chart) as 장애구분, '  );
                  Sql.Add('    (select  top 1 jongbeul from view_gogek where chart=p.chart) as 종별, '   );


                  Sql.Add(' * from jinryo_p p left join ma_jubsu j on p.jubsu_id=j.id                          ');

                  sql.add('where ');

                  if edtChart.Text <> '' then
                  begin
                      sql.add('  p.chart = :chart  and ');
                      ParamByName('chart').AsString :=chart;//  edtChart.Text ;
                  end;

                      sql.add(' ( p.jin_Day >= :jinDay1 and p.jin_Day <= :jinDay2) ');
                      ParamByName('jinDay1').AsString := formatDatetime('YYYY-MM-DD', sDate); //dpSdate.dateTime);
                      ParamByName('jinDay2').AsString := formatDatetime('YYYY-MM-DD', fDate);//dpFdate.dateTime);

                  Sql.Add('  order by p.jin_day desc');

                  Open;
                  grdHx.RowCount := RecordCount + 1;

                  if not isEmpty then
                  begin
                       while not eof do
                       begin
                          //  grdHx.AddRow;
                            i := i + 1;



                            grdHx.Cells[1, i]   :=  FieldByName('paname').AsString;
                            grdHx.Cells[2, i]   :=  FieldByName('jin_day').AsString;
                            grdHx.Cells[3, i]   :=  FieldByName('chart').AsString;
                            grdHx.Cells[4, i]   :=  FieldByName('jumin').AsString;
                            grdHx.Cells[5, i]   :=  FieldByName('treatRoom').AsString;
                            grdHx.Cells[6, i]   :=  FieldByName('jongbyul').AsString;
                            grdHx.Cells[7, i]   :=  FieldByName('choje').AsString; //FieldByName('sunapak').AsString;
                            grdHx.Cells[8, i]   :=  FieldByName('isInPat').AsString;
                            grdHx.Cells[9, i]   :=  FieldByName('drName').AsString;   // 9담당의
                            grdHx.Cells[10, i]   :=  FieldByName('조합기호').AsString;  // 12사업체기호
                            grdHx.Cells[11, i]   :=  FieldByName('증번호').AsString;  // 13증번호
                            grdHx.Cells[12, i]   :=  FieldByName('gub_gu').AsString; // 14공단검진  gub_gu/건강검진 - 검 진 코드
                            grdHx.Cells[13, i]   :=  FieldByName('nai').AsString;  // 15나이
                            grdHx.Cells[14, i]   :=  FieldByName('jin_time').AsString;  // 16진료시간
                            grdHx.Cells[15, i]   :=  FieldByName('jange').AsString;  // 17장애
                            grdHx.Cells[16, i]   :=  FieldByName('jubsu_id').AsString;  //jubsu_id
                            grdHx.Cells[17, i]   :=  FieldByName('isBohum100').AsString;  //보험100
                            grdHx.Cells[18, i]   :=  FieldByName('sanjungteakrye').AsString;  //산정특례 적용
                            grdHx.Cells[19, i]   :=  FieldByName('tjung').AsString;  //산정특례 코드

                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
       grdHx.AutoNumberCol(0);
     end;
end;



{
09|투약(내복약)
10|투약(외용약)
12|피하근육내주사
13|정맥내주사
14|수액제
19|마취
23|처치
25|수술
26|수탁검사
28|임플란트
29|자체검사
30|자체검사
31|방사선
39|CT촬영
40|MRI
41|응급 및 회송
42|초음파
50|기타
47|보철
48|교정
49|임플란트


09|10|12|13|14|19|23|25|26|28|29|30|31|39|40|41|42|50|47|48|49|



투약(내복약)
투약(외용약)
피하근육내주사
정맥내주사
수액제
마취
처치
수술
수탁검사
임플란트
자체검사
자체검사
방사선
CT촬영
MRI
응급 및 회송
초음파
기타
보철
교정
임플란트


}

procedure TjinryobiList_f.LoadJinryo_S(jubsu_id:string);//chart, jinDay, jinDay2: string);
var
     tempQuery : TuniQuery;
     i, r : integer;

    nJongBeul   : Integer;
    nChoJae     : Integer;
    nAge        : Integer;
    dWorkDate   : TDateTime;

    jin_day     : string;
    jin_time    : string;

    jange       : boolean;
    yongua      : boolean;
    ilban       : boolean;
    ifirst      : boolean;
    jinilsu     : string;
    nDanga      : integer;
    iGumjin       : integer;


    fJinQty       : double;
    fJinHoisu     : double;
    fJinilSu      : double;
    fTotQty      : double;

    jinchalRyoCode     : string;
    jinchalRyoCode_sat : string;
    DispCap   : string;
    fBudamYul : double;
    jongGasan : double;
    jongGasanDanga : currency;
    hangmokName : string;
    suGu3, su_extra : string;
    aSuKey : string;
    aGubGu : string;
//    iKind  : integer;
      iKind  : string;
    isBohum100 : string;



   sanjungArray05: TArray<string>;
   sanjungArray10: TArray<string>;
   sanjungArray20: TArray<string>;

   applySanjung : boolean;
   sanjungCode  : string;

begin

           cTot :=0;
           bTot :=0;
           gTot :=0;
           jTot :=0;
           yTot :=0;

          i:= 0;

          grdWonNe.RemoveRows(1, grdWonNe.RowCount - 1);

          r:=   grdHx.Row;
{1이름
2진료일자
3차트번호
4주민번호
5진료과목  treatroom
6보험유형  jong
7초재진    choje
8입원/외래 isInPat  0: 외래 1,2 입원
9담당의
10사업체기호
11증번호
12공단검진  gub_gu
13나이
14진료시간
15장애


}

        //  jongGasan := 1.15;


          jin_day   := grdHx.cells[2, r];
          jin_time  := grdHx.cells[14, r];
          nJongBeul := grdHx.ints[6, r];// 0:건보  1;보호1종  2://보호2종
          nChoJae   := grdHx.ints[7, r] +1;  //0: 초진 1: 재진 4:
          nAge      := grdHx.ints[13, r];
          dWorkDate := strtodate(jin_day);

          isBohum100 := grdHx.cells[17, r];


          if grdHx.cells[18, r] ='1'then
          begin

               applySanjung := true;
                sanjungCode := grdHx.cells[19, r] ;
          end
           else
           begin
               applySanjung := false;
               sanjungCode  :='';
           end;


          if grdHx.ints[15, r] = 1 then
            jange := true
          else
            jange := false;

          iGumjin :=  grdHx.ints[12, r];


                   if nJongbeul = 0 then  //   건강보험
                         begin

                            if  suGu3  <>   '26' then
                               JongGasan := 1.15
                              else
                                JongGasan := 1;


                         end
                         else
                              if  ((nJongbeul  = 1)    //보호1종
                                or (nJongbeul  = 2)    //보호2종
                                or (nJongbeul  = 4)    //보호4종
                                or (nJongbeul  = 5)) then //보호8종
                              begin
                                   JongGasan := 1.11;
                              end
                              else
                              begin
                                   JongGasan := 1;  //일반, 산재, 자보
                              end;


         //ToDo : 진찰료 산정 안함일 때 처리는 어떻게 할 것인가?????
  //     if grdHx.cells[8, r] ='0' then  //외래인경우만 진찰료 꺼내지말고 입원도 꺼내야...

       if grdHx.cells[7, r] <> '4' then     //0: 초진 1: 재진 4: 진찰료산정안함
       begin
        jinchalRyoCode :=
              MakeJinchalRyoCode(
              nChoJae,
              nAge,
              dWorkDate,
              jange,
              iGumjin
              );//
         if DayOfWeek( strtoDate(jin_day) ) = 7 then
           jinchalRyoCode_sat :=
              MakeJinchalRyoCode(
              nChoJae,
              nAge,
              dWorkDate,
              jange,
              iGumjin,
              true);//

          DispCap := '진찰료';

           case nJongBeul of
//
//              0: fBudamYul := 0.3; //건보
//              1: fBudamYul := 0; //보호1종   1000
//              2: fBudamYul := 0;  //보호2종  1000 / 1500
//              else
//                fBudamYul := 0.3 ;

              0:  //건보
              begin


                    if grdHx.cells[8, r] ='0' then //외래
                    begin
                     fBudamYul := 0.3;
                     iKind:= '0';


                    //미등록 암환자가 해당 상병(C00～C97, D00～D09, D32～D33, D37～D48)으로 진료를 받은 당일
                          //외래 진료시 산정특례 대상 - 요양급여비용총액의 100분의 20을 본인일부부담
                           sanjungArray20 :=TArray<string>.Create('V027');

                         if  ( applySanjung = true)
                            and (strUtils.MatchStr(uppercase(sanjungCode), sanjungArray20) = true) then
                         begin

                              fBudamYul :=  0.2;

                              //특수장비는 30% 일반진료는 20%
                              //result := result +  100 * Floor((( nCTMRI) * 0.3) / 100);

                         end;

                            // C00~C97, D00~D09, D32~D33, D37~D48

                      //중증질환자 산정특례 대상 - 외래 또는 입원진료(질병군 입원진료 및
                      //    고가의료장비사용 포함)시 요양급여비용 총액의 100분의 5 본인일부부담
                        sanjungArray05 :=TArray<string>.Create('V193'
                                              ,'V191'
                                              ,'V268'
                                              ,'V275'
                                              ,'V192'
                                              ,'V247'
                                              ,'V248'
                                              ,'V249'
                                              ,'V250'
                                              ,'V273');


                       if  ( applySanjung = true)
                           and ( strUtils.MatchStr(upperCase(sanjungCode), sanjungArray05)= true) then
                            begin


                                  fBudamYul :=0.05;
                            end;



                         {희귀난치성질환자 산정특례 대상
                            - 외래 또는 입원진료(질병군 입원진료 및 고가의료장비사용 포함)시
                            요양급여비용총액의 100분의 10을 본인일부부담(별지 서식에 따라
                            등록(인체면역결핍바이러스질환(B20～B24)은 등록에서 제외)한 환자가
                            등록일로부터 5년간 해당 상병으로 진료를 받은 경우.
                            단, 결핵(A15∼A19)은 등록일로부터 2년간 해당상병으로 진료를 받은 경우로 하며,
                            상세불명 희귀질환은 등록일로부터 1년간 해당 임상 소견으로 진료를 받은 경우로 함.}

                              sanjungArray10 :=TArray<string>.Create('V001'
                                            ,'V003'
                                            ,'V009'
                                            ,'V013'
                                            ,'V014'
                                            ,'V015'
                                            ,'V005'
                                            ,'V277'
                                            ,'V278'
                                            ,'V161'
                                            ,'V206'
                                            ,'V246'
                                            ,'V102'
                                            ,'V103'
                                            ,'V104'
                                            ,'V105'
                                            ,'V162'
                                            ,'V163'
                                            ,'V164'
                                            ,'V232'
                                            ,'V219'
                                            ,'V187'
                                            ,'V023'
                                            ,'V220'
                                            ,'V253'
                                            ,'V106'
                                            ,'V188'
                                            ,'V107'
                                            ,'V108'
                                            ,'V109'
                                            ,'V110'
                                            ,'V111'
                                            ,'V112'
                                            ,'V113'
                                            ,'V165'
                                            ,'V114'
                                            ,'V115'
                                            ,'V254'
                                            ,'V116'
                                            ,'V166'
                                            ,'V207'
                                            ,'V117'
                                            ,'V221'
                                            ,'V118'
                                            ,'V119'
                                            ,'V255'
                                            ,'V189'
                                            ,'V120'
                                            ,'V121'
                                            ,'V256'
                                            ,'V122'
                                            ,'V123'
                                            ,'V124'
                                            ,'V257'
                                            ,'V190'
                                            ,'V208'
                                            ,'V022'
                                            ,'V276'
                                            ,'V279'
                                            ,'V233'
                                            ,'V230'
                                            ,'V125'
                                            ,'V234'
                                            ,'V140'
                                            ,'V167'
                                            ,'V168');

                                     if  ( applySanjung = true)
                                         and ( strUtils.MatchStr(uppercase(sanjungCode), sanjungArray10)=true) then
                                      begin
                                             fBudamYul := 0.1;

                                         //    희귀난치성질환자 지원금처리

                                        //    if applyJiwon ='H' then
                                        //     result := 0;

                                      end;













                    end
                    else
                    begin  //입원
                        fBudamYul := 0.2; //건보
                        iKind:= '0';
                    end;




              end;
              1:
               begin
               fBudamYul := 0; //보호1종
               iKind:= '0';
                end;

              2:
              begin
                 fBudamYul := 0;  //보호2종
                 iKind:= '0';

              end;
              else
               begin
                fBudamYul :=1 ;
                iKind:= '2';
               end;

           end;


          suGu3 := '01';

        end
        else
        begin
           jinchalRyoCode := 'AF400';   //입원
           DispCap := '입원료';
           case nJongBeul of

              0:
              begin
                 fBudamYul := 0.2; //건보
                 iKind:= '0';
              end;
              1:
               begin
               fBudamYul := 0; //보호1종
               iKind:= '0';
                end;

              2:
              begin
                 fBudamYul := 0.1;  //보호2종
                 iKind:= '0';

              end;
              else
               begin
                fBudamYul :=1 ;
                iKind:= '2';
               end;
           end;

           suGu3 := '02';
        end;


//       if (grdHx.cells[8, r] ='0') and  (nChojae <> 5) then
         if  (nChojae <> 5) then
              //와래만 진찰료 넣자. 입원은 들어가 있다.
       begin


            //1. 진찰료 넣자....
            nDanga := getSugaGeum(
               jinchalRyoCode, // varCode:string;
               jin_day,  // jinday:string;
               iKind);

                            grdWonNe.AddRow;
                            grdWonNe.Cells[0, grdWonNe.RowCount -  1]    :=  dispCap;

                            grdWonNe.Cells[1, grdWonNe.RowCount - 1]   := jin_day;// FieldByName('jin_day').AsString; //입원일
                            grdWonNe.Cells[2, grdWonNe.RowCount - 1]   := jin_day;// FieldByName('jin_day').AsString; //진료일
                     //       grdWonNe.Cells[3, grdWonNe.RowCount - 1]   := suGu3;// FieldByName('su_gu3').AsString;
                            hangmokName :=    loadHanMokName(sugu3) ;
                            grdWonNe.Cells[3, grdWonNe.RowCount - 1]   :=  hangmokName;

                            grdWonNe.Cells[4, grdWonNe.RowCount - 1]   := jinchalRyoCode;// FieldByName('su_key').AsString;
                            grdWonNe.Cells[5, grdWonNe.RowCount - 1]   := getSugaName(jinchalRyoCode);// FieldByName('su_kor_Name').AsString;
                            //수가금액
                            grdWonNe.ints[6, grdWonNe.RowCount - 1]   := nDanga;// FieldByName('su_kor_Name').AsString;

                            grdWonNe.Cells[7, grdWonNe.RowCount - 1]   := '1';// FieldByName('jin_qty').AsString;
                            grdWonNe.Cells[8, grdWonNe.RowCount - 1]   := '1';// FieldByName('div').AsString;
                            grdWonNe.Cells[9, grdWonNe.RowCount - 1]   := '1';// FieldByName('jin_ilsu').AsString;
                            grdWonNe.ints[10, grdWonNe.RowCount - 1]    :=  nDanga;//FieldByName('jin_danga').AsInteger *
                                                      // FieldByName('jin_qty').AsInteger ;//
                            if ikind = '0' then
                            begin

                               if isBohum100 <> '1' then
                               begin
                                grdWonNe.Cells[11, grdWonNe.RowCount - 1]   :=  '급여';//0:급여 2:비급여
                               // grdWonNe.Cells[10, grdWonNe.RowCount - 1]   :=  '급여' ;//0:급여 2:비급여
                                grdWonNe.floats[12, grdWonNe.RowCount - 1]  :=grdWonNe.floats[10,  grdWonNe.RowCount - 1]* fBudamYul;  //본인부담금
                                grdWonNe.floats[13, grdWonNe.RowCount - 1]  :=grdWonNe.floats[10,  grdWonNe.RowCount - 1]* (1-fBudamYul);  //공단부담금
                               end
                               else
                               begin
                                grdWonNe.Cells[11, grdWonNe.RowCount - 1]   :=  '보험100';//0:급여 2:비급여
                               // grdWonNe.Cells[10, grdWonNe.RowCount - 1]   :=  '급여' ;//0:급여 2:비급여
                                grdWonNe.floats[12, grdWonNe.RowCount - 1]  :=grdWonNe.floats[10,  grdWonNe.RowCount - 1] ;  //본인부담금
                                grdWonNe.floats[13, grdWonNe.RowCount - 1]  :=0;  //공단부담금

                               end;

                            end
                            else
                            begin
                                grdWonNe.Cells[11, grdWonNe.RowCount - 1]   :=  '비급여'; //0:급여 2:비급여
                            end;



                            //비급여 금액
                            grdWonNe.floats[14, grdWonNe.RowCount - 1]  := 0;
                            //전액본인부담
                            grdWonNe.floats[15, grdWonNe.RowCount - 1]  := 0;

                            grdWonNe.Cells[16, grdWonNe.RowCount - 1]  :=   ''; //용법

                            cTot  :=  nDanga ;
                            bTot  :=   grdWonNe.floats[12, grdWonNe.RowCount - 1]; //본인부담
                            gTot  :=   grdWonNe.floats[13, grdWonNe.RowCount - 1];  //공단부담
                            jTot  :=  grdWonNe.floats[15, grdWonNe.RowCount - 1] ;  //전액본인부담
                            yTot  :=  grdWonNe.floats[14, grdWonNe.RowCount - 1] ;


                      if   DayOfWeek( strtoDate(jin_day) ) = 7 then  //토요일이면 토요 진찰료 가산
                      begin

                        nDanga := getSugaGeum(
                           jinchalRyoCode_sat, // varCode:string;
                           jin_day,  // jinday:string;
                           '0');
                             grdWonNe.AddRow;
                            grdWonNe.Cells[0, grdWonNe.RowCount -  1]    :=  dispCap;

                            grdWonNe.Cells[1, grdWonNe.RowCount - 1]   := jin_day;// FieldByName('jin_day').AsString; //입원일
                            grdWonNe.Cells[2, grdWonNe.RowCount - 1]   := jin_day;// FieldByName('jin_day').AsString; //진료일
                     //       grdWonNe.Cells[3, grdWonNe.RowCount - 1]   := suGu3;// FieldByName('su_gu3').AsString;
                            hangmokName :=    loadHanMokName(sugu3) ;
                            grdWonNe.Cells[3, grdWonNe.RowCount - 1]   :=  hangmokName;

                            grdWonNe.Cells[4, grdWonNe.RowCount - 1]   := jinchalRyoCode_sat;// FieldByName('su_key').AsString;
                            grdWonNe.Cells[5, grdWonNe.RowCount - 1]   := getSugaName(jinchalRyoCode_sat);// FieldByName('su_kor_Name').AsString;
                            //수가금액
                            grdWonNe.ints[6, grdWonNe.RowCount - 1]   := nDanga;// FieldByName('su_kor_Name').AsString;

                            grdWonNe.Cells[7, grdWonNe.RowCount - 1]   := '1';// FieldByName('jin_qty').AsString;
                            grdWonNe.Cells[8, grdWonNe.RowCount - 1]   := '1';// FieldByName('div').AsString;
                            grdWonNe.Cells[9, grdWonNe.RowCount - 1]   := '1';// FieldByName('jin_ilsu').AsString;
                            grdWonNe.ints[10, grdWonNe.RowCount - 1]    :=  nDanga;//FieldByName('jin_danga').AsInteger *
                                                      // FieldByName('jin_qty').AsInteger ;//
//                            grdWonNe.Cells[11, grdWonNe.RowCount - 1]   :=  '급여'; //0:급여 2:비급여
                           if ikind = '0' then
                           begin
                              if isBohum100 <> '1' then
                              begin
                                grdWonNe.Cells[11, grdWonNe.RowCount - 1]   :=  '급여';//0:급여 2:비급여
                               // grdWonNe.Cells[10, grdWonNe.RowCount - 1]   :=  '급여' ;//0:급여 2:비급여
                                grdWonNe.floats[12, grdWonNe.RowCount - 1]  :=grdWonNe.floats[10,  grdWonNe.RowCount - 1]* fBudamYul;  //본인부담금
                                grdWonNe.floats[13, grdWonNe.RowCount - 1]  :=grdWonNe.floats[10,  grdWonNe.RowCount - 1]* (1-fBudamYul);  //공단부담금
                              end
                              else
                              begin
                                grdWonNe.Cells[11, grdWonNe.RowCount - 1]   :=  '보험100';//0:급여 2:비급여
                                grdWonNe.floats[12, grdWonNe.RowCount - 1]  :=grdWonNe.floats[10,  grdWonNe.RowCount - 1] ;  //본인부담금
                                grdWonNe.floats[13, grdWonNe.RowCount - 1]  :=0;  //공단부담금

                              end;

                           end
                           else
                           begin
                                grdWonNe.Cells[11, grdWonNe.RowCount - 1]   :=  '비급여'; //0:급여 2:비급여
                                grdWonNe.floats[12, grdWonNe.RowCount - 1]  := 0;  //본인부담금
                                grdWonNe.floats[13, grdWonNe.RowCount - 1]  := 0;  //공단부담금
                           end;


                            //비급여 금액
                            grdWonNe.floats[14, grdWonNe.RowCount - 1]  := 0;
                            //전액본인부담
                            grdWonNe.floats[15, grdWonNe.RowCount - 1]  := 0;

                            grdWonNe.Cells[16, grdWonNe.RowCount - 1]  :=   ''; //용법

                            cTot  :=  cTot   +   nDanga ;
                            bTot  :=  bTot   +   grdWonNe.floats[12, grdWonNe.RowCount - 1]; //본인부담
                            gTot  :=  gTot   +   grdWonNe.floats[13, grdWonNe.RowCount - 1];  //공단부담
                            jTot  :=  jTot   +   grdWonNe.floats[15, grdWonNe.RowCount - 1] ;  //전액본인부담
                            yTot  :=  yTot   +   grdWonNe.floats[14, grdWonNe.RowCount - 1] ;

                      end;


     end;

             //2. 진료 기록 불러다 놓자...

     try
        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin //진료history 다시 뿌려주고, 입원, 진료실, 담당의 등으로 불러와야 한다.
                  Close;
                  Sql.Clear;
                  Sql.Add('select * from  jinryo_s  ');
                  sql.add('where jubsu_id=:jubsu_id    ');
//                  sql.add('where chart=:chart and   ');
//                  sql.Add(' (jin_Day >= :jinDay  and jin_Day <= :jinDay2)   ');
                  sql.Add('  and g_check <> ''G'' ');
                  sql.add('order by jin_Day desc, su_gu3  ');
                  ParamByName('jubsu_id').AsString  := jubsu_id;
                //  ParamByName('chart').AsString  := chart;
                //  ParamByName('jinDay').AsString := jinDay;
                //  ParamByName('jinDay2').AsString := jinDay2;

                  Open;

               //   grdWonNe.RowCount := RecordCount + 1 + 1;

                  if not isEmpty then
                  begin
                       while not eof do
                       begin

                            aGubGu := FieldByName('gub_gu').AsString;
                            if checkINT(FieldByName('su_gu3').AsString)= true then

                                    sugu3 := formatFloat('00', FieldByName('su_gu3').AsInteger)
                            else
                                    sugu3 :='50' ;

                            su_extra :=  FieldByName('except_code').AsString;



                            if  (cbExceptZero.Checked=true)  //원외처방이면...
                                and    (su_extra = '')
                                and    (( SuGu3 = '09') or ( SuGu3 = '10')) then
                             begin
                                next;
                                continue;
                             end;

                            grdWonNe.AddRow;
                            //i := i + 1 + 1;
                            i:= grdWonNe.RowCount -1;




                            {
                            1내원일
                            2처방일
                            3항목
                            4코드
                            5명칭
                            6총투
                            7횟수
                            8일수
                            9금액
                            10급여구분
                            11본인부담
                            12공단부담
                            11용법(처방내역)
                            }


                            //ToDo ;  진찰료, 의원입원료 넣어라
                            grdWonNe.Cells[1, i]   :=  FieldByName('jin_day').AsString; //입원일
                            grdWonNe.Cells[2, i]   :=  FieldByName('jin_day').AsString; //진료일

                            hangmokName :=    loadHanMokName(sugu3) ;
                            grdWonNe.Cells[3, i]   :=  hangmokName;

                            grdWonNe.Cells[4, i]   :=  FieldByName('su_key').AsString;
                            grdWonNe.Cells[5, i]   :=  FieldByName('su_kor_Name').AsString;

//                                         nDanga := getSugaGeum(grdWonNe.Cells[4, i], // varCode:string;
//                                                    grdWonNe.Cells[2, i],  // jinday:string;
//                                                   strtoint( FieldByName('gub_gu').AsString) ); // kind:string);




                            grdWonNe.Cells[7, i]   :=  FieldByName('jin_qty').AsString;       //1회 총투
                        //    grdWonNe.Cells[8, i]   :=  FieldByName('jin_qty').AsString;
                    //        grdWonNe.Cells[8, i]   :=  FieldByName('jin_ilsu').AsString;  //회수
                    //        grdWonNe.Cells[9, i]   :=  FieldByName('dan_qty').AsString;   //일수


                            if (FieldByName('Su_gu3').AsString =  '09') then
                            begin
                               grdWonNe.Cells[8, i]   :=  FieldByName('div').AsString;    //횟수
                               grdWonNe.Cells[9, i]   :=  FieldByName('dan_qty').AsString;  //일수

                            end
                            else
                            begin
                               grdWonNe.Cells[8, i]   :=  FieldByName('div').AsString;   //횟수
                               grdWonNe.Cells[9, i]   :=  FieldByName('jin_ilsu').AsString;   //일수

                            end;





                            if (( SuGu3 = '09')
                             or ( SuGu3 = '10')
                               or ( SuGu3 = '12')
                               or ( SuGu3 = '13')
                               or ( SuGu3 = '14')) then
                                begin
                                     grdWonNe.Cells[7, i]   :=  FieldByName('jin_qty').AsString;  //총투
                                   //  grdWonNe.Cells[7, i] := FieldByName('div').AsString;
                                   //  grdWonNe.Cells[9, i] := FieldByName('jin_Ilsu').AsString;
                                end
                                else
                                begin
                                     grdWonNe.Cells[8, i] :=   FieldByName('jin_ilsu').AsString;
                                end;



//                            if (( SuGu3 = '09')
//                               or ( SuGu3 = '10')
//                               or ( SuGu3 = '12')
//                               or ( SuGu3 = '13')
//                               or ( SuGu3 = '14')) then
//                            begin
//                                  if (su_extra = '')  then
//                                  begin
//                                   grdWonNe.Cells[8, i]   :=  FieldByName('jin_qty').AsString;
//                                   grdWonNe.Cells[9, i]   :=  FieldByName('dan_qty').AsString;
//
//                                  end
//                                  else
//                                  begin
//
//                                    grdWonNe.Cells[8, i]   :=  FieldByName('jin_ilsu').AsString;
//                                    grdWonNe.Cells[9, i]   :=  FieldByName('dan_qty').AsString;
//
//                                  end;
//                            end;

                            aSuKey :=     FieldByName('su_key').AsString;

                            nDanGa     :=  FieldByName('jin_danga').AsInteger;
                            fJinQty    :=  FieldByName('jin_qty').AsFloat;
                            fJinHoisu  :=  FieldByName('dan_qty').AsFloat;
                            fJinilSu   :=  FieldByName('jin_ilsu').AsFloat;
                         //   Round2(nDanGa * fJinQty *(round2(jonggasan * 100, 0) / 100), 0);
                            fTotQty    :=  fJinQty * fJinHoisu * fJinilSu;

                            grdWonNe.cells[17, i]   := formatfloat('0.0', fTotQty);
                            //ToDo : 금액에 행위종별 가산해라.
                            //=>>> 급여에만 종별 가산 해라. gub_gu =0
                            //su_gu3 =26 수탁검사 는 가산 하지 마라
                            if      ( FieldByName('su_gu1').AsString ='2') //행위
                               and  ( (aGubGU ='0') or (aGubGU ='9') ) //급여
                               and  ( copy(FieldByName('su_key').AsString, 1,2) <> 'AF')
                               and  ( copy(FieldByName('su_key').AsString, 1,2) <> 'AA')
                               and ( FieldByName('su_gu3').AsString <>   '26' )
                            then
                            begin


                                 jongGasanDanga :=  Round2(nDanga , 1);
                                 jongGasanDanga :=  Round2(jongGasanDanga *(round2(jonggasan * 100, 0) / 100), 0);

                                 grdWonNe.floats[6, i]   :=  jongGasanDanga; //단가

                                 jongGasanDanga :=  Round2(nDanga *  fJinQty * fJinHoisu * fJinilSu, 1);
                                 jongGasanDanga :=  Round2(jongGasanDanga *(round2(jonggasan * 100, 0) / 100), 0);

                                 grdWonNe.floats[10, i]    := jongGasanDanga  ;
                            end
                            else
                            begin
                                 grdWonNe.floats[6, i]     :=   nDanGa  ;
                                 grdWonNe.floats[10, i]    :=   Round2(nDanga * fJinilSu * fJinQty  * fJinHoisu, 1); ;

                            end;

//                            if FieldByName('jin_danga').AsInteger = 0   then
//                            begin
//                              next;
//                              continue;
//                            end;

                            if (su_extra = '')
                                and (( SuGu3 = '09')
                                  or ( SuGu3 = '10')) then  //원내처방이 아니면...
                             begin
                                grdWonNe.floats[6, i]     :=  0  ;
                                grdWonNe.floats[10, i]    :=  0 ;
                             end;

                            if aGubGU <> '2' then //FieldByName('gub_gu').AsString <> '2' then
                            begin

                              if isBohum100 <> '1' then
                              begin

                                 grdWonNe.Cells[11, i]   :=  '급여' ;//0:급여 2:비급여

                                if (FieldByName('su_gu2').AsString = 'B') and (aGubGU ='9') then
                                begin
                                  grdWonNe.floats[12, i]  := round2( grdWonNe.floats[10, i]*0.8,0);  //본인부담금
                                  grdWonNe.floats[13, i]  :=  grdWonNe.floats[10, i] -(grdWonNe.floats[10, i]*0.8);  //공단부담금
                                  grdWonNe.floats[14, i] := 0; //전액본인부담
                                  grdWonNe.floats[15, grdWonNe.RowCount - 1]  := 0;
                                end
                                else
                                if (FieldByName('su_gu2').AsString = 'E') and (aGubGU ='B') then  //90/100
                                begin
                                  grdWonNe.floats[12, i]  := round2( grdWonNe.floats[10, i]*0.9,0);  //본인부담금
                                  grdWonNe.floats[13, i]  :=  grdWonNe.floats[10, i] -(grdWonNe.floats[10, i]*0.9);  //공단부담금
                                  grdWonNe.floats[14, i] := 0; //전액본인부담
                                  grdWonNe.floats[15, grdWonNe.RowCount - 1]  := 0;
                                end
                                else
                                begin

                                  grdWonNe.floats[12, i]  := round2( grdWonNe.floats[10, i] * fBudamYul,0);  //본인부담금
                                  grdWonNe.floats[13, i]  :=  grdWonNe.floats[10, i] -(grdWonNe.floats[10, i]*fBudamYul) ;  //공단부담금
                                  grdWonNe.floats[14, i] := 0;  //전액본인부담
                                  grdWonNe.floats[15, grdWonNe.RowCount - 1]  := 0;

                                end;
                             end
                             else
                             begin

                                  grdWonNe.Cells[11, i]   :=  '보험100' ;//0:급여 2:비급여


                                  grdWonNe.floats[12, i]  := grdWonNe.floats[10, i];// round2( grdWonNe.floats[10, i] * fBudamYul,0);  //본인부담금
                                  grdWonNe.floats[13, i]  := 0;// grdWonNe.floats[10, i] -(grdWonNe.floats[10, i]*fBudamYul) ;  //공단부담금
                                  grdWonNe.floats[14, i]  := 0;  //전액본인부담
                                  grdWonNe.floats[15, grdWonNe.RowCount - 1]  := 0;

                             end;


                            end
                            else
                            begin
                                 grdWonNe.Cells[11, i] :=  '비급여' ;  //9 --->100/80 급여로 구분하자.
                                 grdWonNe.floats[12, i] :=0 ;            //본인부담금
                                 grdWonNe.floats[13, i]:= 0; //공단부담금
                                 grdWonNe.floats[14, i] :=grdWonNe.floats[10, i] ;            //비급여

                                 grdWonNe.floats[15, grdWonNe.RowCount - 1]  := 0;     //전액본인부담

                            end;


                            grdWonNe.Cells[16, i]   :=   ''; //용법



                            cTot  :=  cTot +  grdWonNe.floats[10, i] ; //총금액
                            bTot  :=  bTot +  grdWonNe.floats[12, i] ; //본인부담
                            gTot  :=  gTot +  grdWonNe.floats[13, i] ;  //공단부담
                            jTot  :=  jTot +  grdWonNe.floats[15, i] ;  //전액본인부담
                            yTot  :=  yTot +  grdWonNe.floats[14, i] ;  //비급여




                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
       grdWonNe.AutoNumberCol(0);
     end;
end;





procedure TjinryobiList_f.InitFastReport;
begin
//
end;


procedure TjinryobiList_f.DataToPrintForm(varDate, sYoungNo: string);
var
     imsiryo, i: integer;
begin

     with frxReport1 do
     begin
       //  barcode1.text:=  edtchart.text;
          Variables['성명']         := QuotedStr('성명: '         + edtName.text); //
          Variables['차트번호']     := QuotedStr('차트번호: '     + edtchart.text); //
          Variables['주소']         := QuotedStr('주소: '         + lblJuso.Caption);///ma_h_juso); //
          Variables['조합기호']     := QuotedStr('조합기호: '     + lblJohap.Caption);// ma_kiho); //
          Variables['주민등록번호'] := QuotedStr('주민등록번호: ' + edtJumin.text+'-'+ edtJumin2.text); //
          Variables['증번호']       := QuotedStr('증번호: '       + lblJungNo.Caption);// ma_k_number); //
          Variables['병원명']       := QuotedStr('의료기관 : '    + configvalue.varsaupname); //
          Variables['병원주소']     := QuotedStr('주소 : '        + configvalue.varAdd1 + ' ' + configvalue.varAdd2); //
          Variables['병원전화']     := QuotedStr('전화 : '        + configvalue.varTel1 ); //
          Variables['병원팩스']     := QuotedStr('팩스 : '        + configvalue.varFax1 ); //
          Variables['대표원장']     := QuotedStr('대표원장 : '    + configvalue.varDaepyo +'  [인]'); //
      end;
end;

procedure TjinryobiList_f.DataToPrintForm_Detail(varDate, sYoungNo: string);
var
     imsiryo, i: integer;
begin

     with frxReport1 do
     begin
       //  barcode1.text:=  edtchart.text;
          Variables['성명']            := QuotedStr(edtName.text); //
          Variables['차트번호']        := QuotedStr( edtchart.text); //
          Variables['진료기간']        := QuotedStr( grdHx.Cells[2, grdHx.Row]); //

          Variables['환자구분']        := QuotedStr( loadJongByulName(inttostr(grdHx.ints[6, grdHx.Row]+1)) ); //

          if grdHx.Cells[8, grdHx.Row] = '0' then

          Variables['병실']            := QuotedStr( '외래')
          else
             Variables['병실']            := QuotedStr( '입원');
          Variables['요양기관명칭']    := QuotedStr( configvalue.varsaupname); //
          Variables['대표자']          := QuotedStr( configvalue.varDaepyo ); //
          Variables['신청인']          := QuotedStr( edtOrderName.text ); //

          Variables['관계']            := QuotedStr( edtGwangye.text ); //

          Variables['발급일']          := QuotedStr(formatDatetime('YYYY', now) +'년 '+
                          formatDatetime('MM', now) +'월 '+
                          formatDatetime('DD', now) +'일'); //



            Variables['cTot']   :=    QuotedStr(formatfloat('#,0' , cTot));//QuotedStr(formatfloat('#,0' , cTot));
            Variables['cEndp']  := '0';
            Variables['cTot2']  :=  QuotedStr(formatfloat('#,0' , cTot));;
            Variables['bTot']   :=  QuotedStr(formatfloat('#,0' , bTot));
            Variables['bEndp']  := '0';
            Variables['bTot2']  :=  QuotedStr(formatfloat('#,0' , bTot));;
            Variables['gTot']   :=  QuotedStr(formatfloat('#,0' , gTot));
            Variables['gEndp']  := '0';
            Variables['gTot2']  :=  QuotedStr(formatfloat('#,0' , gTot));;
            Variables['jTot']   :=  QuotedStr(formatfloat('#,0' , jTot));
            Variables['jEndp']  := '0';
            Variables['jTot2']  :=  QuotedStr(formatfloat('#,0' , jTot));;
            Variables['yTot']   :=  QuotedStr(formatfloat('#,0' , yTot));
            Variables['yEndp']  := '0';
            Variables['yTot2']  :=  QuotedStr(formatfloat('#,0' , yTot));;
// cTot
// cEndp
// cTot2
// bTot
// bEndp
// bTot2
// gTot
// gEndp
// gTot2
// jTot
// jEndp
// jTot2
// yTot
// yEndp
// yTot2



      end;
end;

procedure TjinryobiList_f.btnPrintClick(Sender: TObject);
var
    WPath   : string;
    bReturn : boolean;
    barcode1:  TfrxBarcodeView;
begin

     WPath := ExtractFilePath(Application.ExeName) + 'print\';

     with frxReport1 do
     begin
         if checkBox1.Checked then
            LoadFromFile(WPath + 'rptFeeListPrint_landscape.fr3')
           else
               LoadFromFile(WPath + 'rptFeeListPrint.fr3') ;






           barcode1      := FindComponent('BarCode1') as TfrxBarcodeView;
           barcode1.Text := edtchart.text  ;


           frxUserDataSet1.RangeEnd      := reCount;
           frxUserDataSet1.RangeEndCount := grdWonne.RowCount-1;


//           frxUserDataSet_feedetail.RangeEnd      := reCount;
//           frxUserDataSet_feedetail.RangeEndCount := grdHx.RowCount-1;
           frxUserDataSet2.RangeEnd      := reCount;
           frxUserDataSet2.RangeEndCount := grdHx.RowCount-1;



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

function TjinryobiList_f.CurrText(varRichText: TRichedit): TTextAttributes;
begin
     if varRichText.SelLength > 0 then
          Result := varRichText.SelAttributes
     else
          Result := varRichText.DefAttributes;
end;


end.




투약(내복약)', TObject(9)) ;
투약(외용약)', TObject(10)) ;end.
피하근육내주사', TObject(12)) ;
정맥내주사', TObject(13)) ;
수액제내주사', TObject(14)) ;
향정앤마약', TObject(16)) ;
마취', TObject(19)) ;
처치', TObject(23)) ;
수술', TObject(25)) ;
수탁검사', TObject(26)) ;
임플란트(급여)', TObject(28)) ;
자체검사', TObject(29)) ;
자체검사', TObject(30)) ;
방사선', TObject(31)) ;
치료재료', TObject(32)) ;
CT촬영', TObject(39)) ;
MRI', TObject(40)) ;
응급 및 회송', TObject(41)) ;
초음파', TObject(42)) ;
초음파유도', TObject(43)) ;
기타', TObject(50)) ;
보철', TObject(47)) ;
교정', TObject(48)) ;
임플란트(비급여)', TObject(49)) ;

