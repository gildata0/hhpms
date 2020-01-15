unit uTxList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvPanel, Vcl.ExtCtrls, Vcl.StdCtrls,
  EllipsLabel, Vcl.ComCtrls, AdvEdit, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,

  uni, db,

  FormSize,
  iniFiles, AdvSplitter,
   AdvUtil, frxClass, frxBarcode;

type
  TtxList_f = class(TForm)
    pnlTop: TPanel;
    pnlBody: TPanel;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    pnlChamgo: TAdvPanel;
    pnlNewon: TAdvPanel;
    pnlWonweNumber: TAdvPanel;
    pnlWonNe: TAdvPanel;
    pnlWonweList: TAdvPanel;
    pnlSangByungCC: TPanel;
    pnlSangByung: TAdvPanel;
    pnlCC: TAdvPanel;
    grdWonNe: TAdvStringGrid;
    grdHx: TAdvStringGrid;
    grdChubangHx: TAdvStringGrid;
    grdWonew: TAdvStringGrid;
    grdSangByung: TAdvStringGrid;
    reRemark: TRichEdit;
    reCC: TRichEdit;
    edtname: TAdvEdit;
    edtChart: TAdvEdit;
    edtJumin: TAdvEdit;
    edtJumin2: TAdvEdit;
    dpSdate: TDateTimePicker;
    dpfDate: TDateTimePicker;
    Button1: TButton;
    btnPrint: TButton;
    FormSize1: TFormSize;
    Panel2: TPanel;
    Splitter1: TAdvSplitter;
    Splitter2: TAdvSplitter;
    Splitter3: TAdvSplitter;
    Splitter4: TAdvSplitter;
    Splitter6: TAdvSplitter;
    Splitter5: TAdvSplitter;
    frxReport1: TfrxReport;
    cbPreview: TCheckBox;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxUserDataSet1: TfrxUserDataSet;
    frxUserDataSet2: TfrxUserDataSet;
    frxUserDataSet3: TfrxUserDataSet;
    frxUserDataSet4: TfrxUserDataSet;
    grdCC: TAdvStringGrid;
    lblJuso: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblJohap: TLabel;
    Label3: TLabel;
    lblJungNo: TLabel;
    lblFrom: TLabel;
    Button2: TButton;
    grdCopy: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grdHxClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnPrintClick(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure frxUserDataSet2GetValue(const VarName: string;
      var Value: Variant);
    procedure frxUserDataSet3GetValue(const VarName: string;
      var Value: Variant);
    procedure frxUserDataSet4GetValue(const VarName: string;
      var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdHxDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdHxGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
  private
   { Private declarations }
    procedure setArrayPanel;

    procedure LoadJinryo_S(chart , jinDay , jinDay2 , jubsu_id: string);
    procedure LoadJinryo_O(chart , jinDay, jinDay2  , jubsu_id: string);
    procedure LoadCC(chart, jinDay, jinDay2: string);
    procedure LoadRemark(chart, jinDay, jinDay2: string);

    function CurrText(varRichText: TRichedit): TTextAttributes;

    procedure DataToPrintForm(varDate, sYoungNo: string);
    procedure InitFastReport;
    procedure setArrayAdvPanel;
  public
    { Public declarations }
    aLoadForm : string;
    procedure JinryoHistoryView(chart: string; sDate: Tdate; fDate : Tdate);
  end;

var
  txList_f: TtxList_f;

implementation
uses
 uConfig, uDM, uRest, uFormInit, uFunctions, usysInfo, uGogekData;
{$R *.dfm}




procedure TtxList_f.setArrayPanel;
begin
    setLength( pnlArray, 4);
    pnlArray[0] :=  pnlTop;
    pnlArray[1] :=  pnlLeft ;
    pnlArray[2] :=  pnlRight ;
    pnlArray[3] :=  pnlBody;

end;

procedure TtxList_f.setArrayAdvPanel;
begin


    setLength( AdvPnlArray, 7);
    AdvPnlArray[0]:=    pnlChamgo;
    AdvPnlArray[1]:=    pnlNewon ;
    AdvPnlArray[2]:=    pnlWonweNumber;
    AdvPnlArray[3]:=    pnlWonNe;
    AdvPnlArray[4]:=    pnlWonweList;
    AdvPnlArray[5]:=    pnlSangByung;
    AdvPnlArray[6]:=    pnlCC;


end;


procedure TtxList_f.Button1Click(Sender: TObject);
begin
     JinryoHistoryView(
          edtChart.text,
          dpSdate.DateTime,
          dpFdate.DateTime);
end;

procedure TtxList_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//     action:= caFree;
end;

procedure TtxList_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
    path     : string;
    FormInit : TIniFile;
begin
    Path := GetConfigDir + 'db.ini';

    FormInit := TIniFile.Create(Path);
    FormInit.WriteInteger('splitInfo_tx', 'splitLeft', PnlLeft.Width);
    FormInit.WriteInteger('splitInfo_tx', 'splitChamgo', pnlChamgo.height);
    FormInit.WriteInteger('splitInfo_tx', 'splitNewon', pnlNewon.Height);

    FormInit.WriteInteger('splitInfo_tx', 'splitSangByungCC', pnlSangByungCC.Height);
    FormInit.WriteInteger('splitInfo_tx', 'splitCC', pnlCC.Width);
    FormInit.WriteInteger('splitInfo_tx', 'splitWonNe', pnlWonNe.Height);

    FormInit.Free;


end;

procedure TtxList_f.FormCreate(Sender: TObject);
var
   i : integer;
begin
     setArrayPanel;
     for I := 0 to 3 do
    begin
     initPanel(  pnlArray[i]);
    end;

    setArrayAdvPanel;

     for I := 0 to 6 do
    begin
        initAdvPanel(AdvPnlArray[i], dm_f.PictureContainer1);
     end;


     initAdvGrid(grdHx);
     initAdvGrid(grdWonew);
     initAdvGrid(grdWonNe);
     initAdvGrid(grdSangByung);
     initAdvGrid(grdChubangHx);


    pnlTop.Align := alTop;
    pnlBody.Align := alClient;
    pnlLeft.Align := alLeft;
    pnlRight.Align := alClient;
    reCC.Align := alClient;
    reRemark.Align := alClient;

     edtname.text := '';
     edtChart.text := '';

     edtJumin.text := '';
     edtJumin2.text := '';


//     dpSDate.Date := now;
//     dpFDate.Date := now;

     caption:='Tx. Hx.';


end;


procedure TtxList_f.FormShow(Sender: TObject);
var
    path     : string;
    FormInit : TIniFile;
begin
    Path := GetConfigDir + 'db.ini';

    FormInit              :=  TIniFile.Create(Path);
    PnlLeft.Width         :=  FormInit.ReadInteger('splitInfo_tx', 'splitLeft',   450 );
    pnlChamgo.height      :=  FormInit.ReadInteger('splitInfo_tx', 'splitChamgo', 120);
    pnlNewon.Height       :=  FormInit.ReadInteger('splitInfo_tx', 'splitNewon',200 );

    pnlSangByungCC.Height :=  FormInit.ReadInteger('splitInfo_tx', 'splitSangByungCC',200 );
    pnlCC.Width           :=  FormInit.ReadInteger('splitInfo_tx', 'splitCC', 200);
    pnlWonNe.Height       :=  FormInit.ReadInteger('splitInfo_tx', 'splitWonNe',150 );

    FormInit.Free;


    edtName.Text   := ma_Paname;
    edtChart.Text  := ma_Chart;
    edtJumin.text  := copy(ma_jumin, 1, 6);
    edtJumin2.text := copy(ma_jumin, 7, 7);

    lblJuso.Caption   :=   ma_h_juso;
    lblJungNo.Caption :=   ma_K_number;
    lblJohap.Caption  :=   ma_Kiho ;



end;


procedure TtxList_f.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin


{jinday
code
hname
chongtu
hoisu
ilsu}
         if VarName = 'jinday' then
            Value := grdWonne.cells[ 2, frxUserDataSet1.RecNo+1]
          else if VarName = 'code' then
            Value := grdWonne.cells[ 4, frxUserDataSet1.RecNo+1]
          else if VarName = 'hname' then
            Value := grdWonne.cells[ 5, frxUserDataSet1.RecNo+1]

          else if VarName = 'chongtu' then
            Value := grdWonne.cells[ 6, frxUserDataSet1.RecNo+1]

          else if VarName = 'hoisu' then
            Value := grdWonne.cells[ 7, frxUserDataSet1.RecNo+1]

          else if VarName = 'ilsu' then
            Value := grdWonne.cells[ 8, frxUserDataSet1.RecNo+1];

end;

procedure TtxList_f.frxUserDataSet2GetValue(const VarName: string;
  var Value: Variant);
begin
{
1�̸�
2��������
3��Ʈ��ȣ
4�ֹι�ȣ
5�������
6��������
7������
8��/��
9�����
10�����ð�
11����Ϸ�ð�
12���ü��ȣ
13����ȣ
}


         if VarName = 'val1' then
            Value := grdCopy.cells[ 2, frxUserDataSet2.RecNo+1]    //��������
          else if VarName = 'val2' then
            Value := grdCopy.cells[ 5, frxUserDataSet2.RecNo+1]    //�������
          else if VarName = 'val3' then
            Value := grdCopy.cells[ 9, frxUserDataSet2.RecNo+1]    //�����

          else if VarName = 'val4' then
            Value := grdCopy.cells[ 6, frxUserDataSet2.RecNo+1]    //��������

          else if VarName = 'val5' then
            Value := grdCopy.cells[ 12, frxUserDataSet2.RecNo+1]    //���ü��ȣ
          else if VarName = 'val6' then
            Value := grdCopy.cells[ 13, frxUserDataSet2.RecNo+1]     //����ȣ
          else if VarName = 'val7' then
            Value := grdCopy.cells[ 7, frxUserDataSet2.RecNo+1]     //����������
          else if VarName = 'val8' then
            Value := grdCopy.cells[ 10, frxUserDataSet2.RecNo+1]     //�����ð�

          else if VarName = 'val9' then
            Value := grdCopy.cells[ 11, frxUserDataSet2.RecNo+1];    //�����Ϸ�ð�

end;

procedure TtxList_f.frxUserDataSet3GetValue(const VarName: string;
  var Value: Variant);
begin
         if VarName = 'val1' then
            Value := grdCC.cells[ 1, frxUserDataSet3.RecNo+1]    //��������
          else if VarName = 'val2' then
            Value := grdCC.cells[ 2, frxUserDataSet3.RecNo+1] ;    //CC

end;

procedure TtxList_f.frxUserDataSet4GetValue(const VarName: string;
  var Value: Variant);
begin

         if VarName = 'val1' then
            Value := grdSangByung.cells[ 3, frxUserDataSet4.RecNo+1]    //��������
         else if VarName = 'val2' then
            Value := grdSangByung.cells[ 1, frxUserDataSet4.RecNo+1]    //Code
          else if VarName = 'val3' then
            Value := grdSangByung.cells[ 2, frxUserDataSet4.RecNo+1] ;  //KorName

end;

procedure TtxList_f.grdHxClickCell(Sender: TObject; ARow, ACol: Integer);
var
   jubsu_id : string;
    i: integer;
begin
         grdCopy.removeRows(1,grdCopy.RowCount - 1);
         grdCopy.AddRow;
         for I := 0 to grdHx.ColCount -1 do
         begin
             grdCopy.Cells[i, 1] :=  grdHx.Cells[i, aRow];
         end;

        edtName.Text    := grdHx.Cells[1, ARow];
        edtChart.Text   := grdHx.Cells[3, ARow];
        edtJumin.text   := copy(grdHx.Cells[4, ARow], 1, 6);
        edtJumin2.text  := copy(grdHx.Cells[4, ARow], 7, 7);


        dpSdate.DateTime :=  strToDate(grdHx.Cells[2, ARow]);
        dpFdate.DateTime :=  strToDate(grdHx.Cells[2, ARow]);


        jubsu_id       :=  grdHx.Cells[14, ARow] ;


        LoadJinryo_S(grdHx.Cells[3, ARow],
               formatDatetime('YYYY-MM-DD', dpSdate.DateTime),
                formatDatetime('YYYY-MM-DD',  dpFdate.DateTime),
               jubsu_id );

        LoadJinryo_O(grdHx.Cells[3, ARow],
              formatDatetime('YYYY-MM-DD', dpSdate.DateTime),
              formatDatetime('YYYY-MM-DD',  dpFdate.DateTime),
               jubsu_id );

        LoadCC(grdHx.Cells[3, ARow],
            formatDatetime('YYYY-MM-DD', dpSdate.DateTime),
            formatDatetime('YYYY-MM-DD',  dpFdate.DateTime) );

        LoadRemark(
            grdHx.Cells[3, ARow],
            formatDatetime('YYYY-MM-DD', dpSdate.DateTime),
            formatDatetime('YYYY-MM-DD',  dpFdate.DateTime) );

end;

procedure TtxList_f.grdHxDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
//  if aLoadForm='jinryo' then
//       modalResult:= mrOK;
end;

procedure TtxList_f.grdHxGetCellBorder(Sender: TObject; ARow, ACol: Integer;
  APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];

               APen.Width := 2;
               APen.Color := $00f2e6e2;//clSilver; //clGray;

           end;
end;

procedure TtxList_f.JinryoHistoryView(chart: string; sDate: Tdate ; fDate : Tdate);
var
     temp_yy, temp_mm, temp_dd: Variant;
     tempQuery : TuniQuery;
     i : integer;
     nJongByul, nChoje, nInPat : integer;
begin
    i:= 0;
    grdHx.RemoveRows(1, grdHx.RowCount - 1);
    grdWonne.RemoveRows(1, grdWonne.RowCount - 1);
    grdChubangHx.RemoveRows(1, grdChubangHx.RowCount - 1);
    grdWonew.RemoveRows(1, grdWonew.RowCount - 1);
    grdSangByung.RemoveRows(1, grdSangByung.RowCount - 1);
    grdCC.RemoveRows(1, grdCC.RowCount - 1);


    reRemark.Clear;
    reCC.Clear;


     try


        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin //����history �ٽ� �ѷ��ְ�
                  Close;
                  Sql.Clear;
                //  Sql.Add('select i.name , p.jin_day, p.chart, i.jumin  from jinryo_p p ');
                //  Sql.Add('left join ma_gogek_basic i on p.chart= i.chart ');


//                  Sql.Add(' select (select top 1 name from  ma_gogek_basic where chart = p.chart ) as paName , ');
//                  Sql.Add(' * from jinryo_p p left join ma_jubsu j on p.jubsu_id=j.id                              ');


                Sql.Add('SELECT  (SELECT  TOP (1) name                                                                                                                                                                                                   ');
                Sql.Add('                FROM     ma_gogek_basic                                                                                                                                                                                         ');
                Sql.Add('                WHERE  (chart = p.chart)) AS paName, p.chart, p.jin_day, p.kwamok, p.kw_code, p.jongbeul, p.dup, p.nai, p.chojae, p.gasan, p.gub_gu, p.chong, p.chung, p.kamak, p.sunsugeum, p.misugeum,                        ');
                Sql.Add('               p.sunapak, p.junsanchaek, p.jubsuak, p.youngsu_num, p.kam_code, p.kam_rate, p.kam_sayu, p.jin_gu, p.kyulkwa, p.doc_code, p.jinryosil, p.jin_time, p.jin_user, p.sunap, p.gongsang,                               ');
                Sql.Add('               p.jojae11, p.jojae21, p.bonin, p.bonin1, p.makam, p.jusa, p.whan_day, p.whan_time, p.whan_user, p.account, p.whanbulak, p.card, p.cardcode, p.cardname, p.JojaeIn, p.JojaeOut, p.extra,                          ');
                Sql.Add('               p.wonwes, p.team, p.remark, p.chart_id, p.cmemo, p.SunsuCard, p.SunsuTong, p.SunsuCash, p.sunsucardcode, p.sunsucardname, p.sunsutongcode, p.sunsutongname, p.Cash, p.Tong,                                      ');
                Sql.Add('               p.TongName, p.TongCode, p.Makam_day, p.Makam_time, p.Makam_chk, p.Makam_Sabun, p.jinryo_pid, p.fil, p.bill, p.HwakinNo, p.bontype, p.Yujikum, p.wein, p.tjung, p.chartid, p.jungyul,                             ');
                Sql.Add('               p.jangegigeum, p.qlfRestrictCd, p.car_id, p.satGasan, p.isAnother, p.[43except], p.pregnan, p.k_number, p.piboname, p.kiho, p.jubsu_id, p.hyunreceipt, p.tong2, p.tongreceipt,                                   ');
                Sql.Add('               p.sanjungTeakRye, p.isRes, p.isInPat, p.simsa, p.mod_day, p.isBohum100, p.isJiwon, j.chart AS Expr1, j.team AS Expr2, j.doc, j.hyg, j.gubun, j.jin_day AS Expr3, j.jin_time AS Expr4,                            ');
                Sql.Add('               j.sunaptime, j.jinstime, j.jinftime, j.fchart, j.first_day, j.jumin, j.area, j.choje, j.name, j.c_phone, j.pr_memo, j.pr_remark, j.pr_idn, j.pr_time, j.chair, j.regdate, j.moddate, j.moduser, j.nOrder,       ');
                Sql.Add('               j.isChart, j.isEmergency, j.chamgo, j.ID, j.jubsu_time, j.isJubsu, j.isOut, j.isCompany, j.jongbyul, j.kwamok AS Expr5, j.teakrye, j.teakryecode, j.health, j.pregnan AS Expr6, j.chasangNo,                    ');
                Sql.Add('               j.bontype AS Expr7, j.yujikum AS Expr8, j.artteeth1, j.artteeth2, j.implteeth1, j.implteeth2, j.treatRoom, j.isInpat AS Expr9, j.isOutPat, j.inPat_Time, j.outPat_Time, j.rpPK, j.jaboID,                       ');
                Sql.Add('               j.doc_code AS Expr10, j.isJiwon AS Expr11, j.isBohum100 AS Expr12                                                                                                                                               ');
                Sql.Add('FROM     jinryo_p AS p LEFT OUTER JOIN                                                                                                                                                                                         ');
                Sql.Add('               ma_jubsu AS j ON p.jubsu_id = j.ID                                                                                                                                                                              ');






//                  Sql.Add(' select (select top 1 name from  ma_gogek_basic where chart = ma_jubsu.chart ) as paName , ');
//                  Sql.Add(' * from   ma_jubsu                               ');
                  sql.add('where ');

                 // if edtChart.Text <> '' then
                  if ma_chart <> '' then
                  begin
                 sql.add('  p.chart = :chart  and ');
 //                       sql.add('  chart = :chart  and ');
                      ParamByName('chart').AsString :=chart;//  edtChart.Text ;
                  end;

                      sql.add(' ( p.jin_Day >= :jinDay1 and p.jin_Day <= :jinDay2) ');
//                        sql.add(' ( jin_Day >= :jinDay1 and jin_Day <= :jinDay2) ');
                      ParamByName('jinDay1').AsString := formatDatetime('YYYY-MM-DD', sDate); //dpSdate.dateTime);
                      ParamByName('jinDay2').AsString := formatDatetime('YYYY-MM-DD', fDate);//dpFdate.dateTime);


        //          sql.add('and jin_gu  =  ''0'' );
        //          sql.add('and chojae  <> ''9'' ');
        //          sql.add('and chojae  <> ''0''  ');
        //          sql.add('and chojae  <> ''13'' ');
                  Sql.Add('  order by p.jin_day desc');
//                  Sql.Add('  order by jin_day desc');
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
�̸�
��������
��Ʈ��ȣ
�ֹι�ȣ
�������  treatroom
��������  jong
������    choje
��/��
}

                           //    cells[5, r]  := loadChojeName(inttostr(varChojae));
                           //    cells[6, r]  := loadJongByulName(inttostr(varJongbeul));

                            grdHx.Cells[1, i]   :=  FieldByName('paname').AsString;
                            grdHx.Cells[2, i]   :=  FieldByName('jin_day').AsString;
                            grdHx.Cells[3, i]   :=  FieldByName('chart').AsString;
                            grdHx.Cells[4, i]   :=  FieldByName('jumin').AsString;
                            grdHx.Cells[5, i]   :=  loadJinjryosil(FieldByName('treatroom').AsString) ;

                            if checkInt(FieldByName('jongbyul').AsString)= true then
                                nJongByul:=  FieldByName('jongbyul').AsInteger
                            else
                               nJongByul := 0;


                            grdHx.Cells[6, i]   :=  loadJongByulName( inttostr(nJongByul+1));
                            grdHx.Cells[9, i]   :=  LoadDocNameFromSawonWithID(FieldByName('Expr10').AsString) ;
                                                                                        //J.Doc_Code
                             if checkInt(FieldByName('choje').AsString)= true then
                                nChoje:=  FieldByName('choje').AsInteger
                            else
                               nChoje := 0;
                            grdHx.Cells[7, i]   :=  loadChojeName(inttostr( nChoje+1)); //FieldByName('sunapak').AsString;


                            if checkInt(FieldByName('isInPat').AsString)= true then
                                nInPat:=  FieldByName('isInPat').AsInteger
                            else
                               nInPat := 0;

                            case nInPat of //0:  �ܷ�, 1: �����Կ� 2: �������Կ�
                            0:  grdHx.Cells[8, i]    := '�ܷ�';         //0:  �ܷ�
                            1:  grdHx.Cells[8, i]   := '�����Կ�';           //1: �����Կ�
                            2:  grdHx.Cells[8, i]   := '�������Կ�';           //2: �������Կ�
                            end;

                            //FieldByName('sunapak').AsString; //FieldByName('sunapak').AsString;



                            grdHx.Cells[14, i]   :=  FieldByName('jubsu_id').AsString;
                         //   grdHx.Cells[14, i]   :=  FieldByName('id').AsString;

                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
       grdHx.AutoNumberCol(0);
     end;
end;



procedure TtxList_f.LoadJinryo_S(chart, jinDay, jinDay2, jubsu_id: string);
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
               // sql.add('where chart=:chart and (jin_Day >= :jinDay  and jin_Day <= :jinDay2)  and g_check <> ''G'' ');
                  sql.add('where jubsu_id=:jubsu_id   and g_check <> ''G'' ');
                  sql.add('order by jin_Day desc, sort_key ');
//                  ParamByName('chart').AsString  := chart;
//                  ParamByName('jinDay').AsString := jinDay;
//                  ParamByName('jinDay2').AsString := jinDay2;
                   ParamByName('jubsu_id').AsString := jubsu_id;

                  Open;

                  grdWonNe.RowCount := RecordCount + 1;

                  if not isEmpty then
                  begin
                       while not eof do
                       begin
                          //  grdHx.AddRow;
                            i := i + 1;
                            {
                            1������
                            2ó����
                            3�׸�
                            4�ڵ�
                            5��Ī
                            6����
                            7Ƚ��
                            8�ϼ�
                            9�ݾ�
                            10�޿�����
                            11ó�泻��
                            }


                            //ToDo ;  ������, �ǿ��Կ��� �־��
                            grdWonNe.Cells[1, i]   :=  FieldByName('jin_day').AsString; //�Կ���
                            grdWonNe.Cells[2, i]   :=  FieldByName('jin_day').AsString; //������
                            grdWonNe.Cells[3, i]   :=  FieldByName('su_gu3').AsString;
                            grdWonNe.Cells[4, i]   :=  FieldByName('su_key').AsString;
                            grdWonNe.Cells[5, i]   :=  FieldByName('su_kor_Name').AsString;
                            grdWonNe.Cells[6, i]   :=  FieldByName('jin_qty').AsString;
                            if (FieldByName('Su_gu3').AsString =  '09') then
                            begin
                               grdWonNe.Cells[7, i]   :=  FieldByName('div').AsString;    //Ƚ��
                               grdWonNe.Cells[8, i]   :=  FieldByName('dan_qty').AsString;  //�ϼ�

                            end
                            else
                            begin
                               grdWonNe.Cells[7, i]   :=  FieldByName('div').AsString;   //Ƚ��
                               grdWonNe.Cells[8, i]   :=  FieldByName('jin_ilsu').AsString;   //�ϼ�

                            end;




                            //ToDo : �ݾ׿� ���� �����ض�.
                            grdWonNe.ints[9, i]    :=  FieldByName('jin_danga').AsInteger *
                                                       FieldByName('jin_qty').AsInteger ;//

                            grdWonNe.Cells[10, i]   :=  FieldByName('gub_gu').AsString; //0:�޿� 2:��޿�
                            grdWonNe.Cells[11, i]   :=   ''; //���


                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
       grdWonNe.AutoNumberCol(0);
     end;
end;





procedure TtxList_f.LoadJinryo_O(chart, jinDay, jinDay2,  jubsu_id: string);
var
     tempQuery : TuniQuery;
     i : integer;
begin
    i:= 0;
    grdSangByung.RemoveRows(1, grdSangByung.RowCount - 1);

     try
        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin //����history �ٽ� �ѷ��ְ�
                  Close;
                  Sql.Clear;
                  //Sql.Add('select * from  jinryo_O  ');

//                  Sql.Add(' select * , (select top 1  s_kor_name from sangbyung where  ');
//                   Sql.Add(' s_key = jinryo_o.s_key1) as korName  from jinryo_o  ');
                  Sql.Add(' select *    from jinryo_o  ');

                //  sql.add('where chart=:chart and (jin_Day >= :jinDay  and jin_Day <= :jinDay2 )');
                    sql.add('where jubsu_id=:jubsu_id ');
                  Sql.Add(' order by  jin_Day desc');
//                  ParamByName('chart').AsString  := chart;
//                  ParamByName('jinDay').AsString := jinDay;
//                  ParamByName('jinDay2').AsString := jinDay2;
                   ParamByName('jubsu_id').AsString := jubsu_id;
                  Open;

                  grdSangByung.RowCount := RecordCount + 1;

                  if not isEmpty then
                  begin
                       while not eof do
                       begin

                            i := i + 1;

                            grdSangByung.Cells[1, i]   :=  FieldByName('s_key1').AsString;
                         //   grdSangByung.Cells[2, i]   :=  FieldByName('korName').AsString;
                              grdSangByung.Cells[2, i]   :=  FieldByName('sang1').AsString;
                            grdSangByung.Cells[3, i]   :=  FieldByName('jin_Day').AsString;

                            Next;
                       end;
                  end;
             end;
     finally

       tempQuery.free;
      // grdSangByung.AutoNumberCol(0);
     end;
end;


procedure TtxList_f.InitFastReport;
begin
//     with frxPDFExport do
//     begin
//          PrintOptimized := True;
//          EmbeddedFonts := True;
//          Background := True;
//          Compressed := True;
//     end;

//     with frxReport1 do
//     begin
//          EngineOptions.MaxMemSize := 10000000;
//          EngineOptions.UseFileCache := True;
//          PreviewOptions.Buttons := [pbPrint, pbZoom, pbFind, pbPageSetup,
//               pbTools,
//               pbNavigator, pbExportQuick];
//     end;
end;


procedure TtxList_f.DataToPrintForm(varDate, sYoungNo: string);
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

      if  grdHx.Cells[8, grdHx.row] = '�ܷ�' then

          Variables['maintitle']    := QuotedStr('�ܷ������Ϻ�')  //
      else
          Variables['maintitle']    := QuotedStr('�Կ������Ϻ�'); //

          Variables['����']         := QuotedStr('����: '         + edtName.text); //
          Variables['��Ʈ��ȣ']     := QuotedStr('��Ʈ��ȣ: '     + edtchart.text); //
          Variables['�ּ�']         := QuotedStr('�ּ�: '         + lblJuso.Caption);///ma_h_juso); //
          Variables['���ձ�ȣ']     := QuotedStr('���ձ�ȣ: '     + lblJohap.Caption);// ma_kiho); //
          Variables['�ֹε�Ϲ�ȣ'] := QuotedStr('�ֹε�Ϲ�ȣ: ' + edtJumin.text+'-'+ edtJumin2.text); //
          Variables['����ȣ']       := QuotedStr('����ȣ: '       + lblJungNo.Caption);// ma_k_number); //
          Variables['������']       := QuotedStr('�Ƿ��� : '    + configvalue.varsaupname); //
          Variables['�����ּ�']     := QuotedStr('�ּ� : '        + configvalue.varAdd1 + ' ' + configvalue.varAdd2); //
      end;
end;
 procedure TtxList_f.btnPrintClick(Sender: TObject);
var
    WPath   : string;
    bReturn : boolean;
    barcode1:  TfrxBarcodeView;
begin

     InitFastReport;

     WPath := ExtractFilePath(Application.ExeName) + 'print\';

     with frxReport1 do
     begin

           LoadFromFile(WPath + 'rptChartPrint.fr3') ;



           barcode1      := FindComponent('BarCode1') as TfrxBarcodeView;
           barcode1.Text := edtchart.text  ;


           frxUserDataSet1.RangeEnd      := reCount;
           frxUserDataSet1.RangeEndCount := grdWonne.RowCount-1;


           frxUserDataSet2.RangeEnd      := reCount;
           frxUserDataSet2.RangeEndCount := grdCopy.RowCount-1;


           frxUserDataSet3.RangeEnd      := reCount;
           frxUserDataSet3.RangeEndCount := grdCC.RowCount-1;


           frxUserDataSet4.RangeEnd      := reCount;
           frxUserDataSet4.RangeEndCount := grdSangByung.RowCount-1;

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

function TtxList_f.CurrText(varRichText: TRichedit): TTextAttributes;
begin
     if varRichText.SelLength > 0 then
          Result := varRichText.SelAttributes
     else
          Result := varRichText.DefAttributes;
end;

procedure TtxList_f.LoadCC(chart, jinDay, jinDay2: string);
var
     tempQuery : TuniQuery;
     bstream: Tstream;

     Temp: string;
     varLength: integer;
     varRichText: TRichEdit;
 begin

     try
        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;
        varRichText := reCC;
        varRichText.Text := '';

        grdcc.removeRows(1, grdcc.RowCount-1);

             with tempQuery do
             begin
                  Close;
                  Sql.Clear;

                  Sql.Add(' select  * from hxCC  ');
                  sql.add('where ccchart=:chart ');
                  sql.add(' and (ccdate >= :jinday and  ccdate <= :jinday2)');
                  sql.Add(' order by ccDate desc');// and ccDate=:ccDate');
                  ParamByName('chart').AsString  := chart;
                  ParamByName('jinDay').AsString  := jinDay;
                  ParamByName('jinDay2').AsString  := JinDay2;

                //  ParamByName('ccDate').AsString := jinDay;
                  Open;
                  if not isEmpty then
                  begin
                      while not eof do
                      begin
                         varLength := length(varRichText.Text);
                         Temp := FieldByName('CCDate').AsString+'----------------------------';
                         (varRichText).Lines.Add(Temp);
                         (varRichText).SelStart := varLength;
                         (varRichText).SelLength := length(Temp);
                         CurrText(varRichText).Color := clRed;

                        // #$D#$A
                         varLength := length(varRichText.Text);
                         Temp := FieldByName('CCMemo').AsString;

                          Temp :=  StringReplace(Temp,
                            #$D#$A#$D#$A, '|||', [rfReplaceAll]);
                          Temp :=  StringReplace(Temp,
                            #$D#$A, '', [rfReplaceAll]);
                          Temp :=  StringReplace(Temp,
                            '|||', #$D#$A, [rfReplaceAll]);
                          Temp :=  StringReplace(Temp,
                            'Plan', #$D#$A+#$D#$A +'Plan', [rfReplaceAll]);
                          Temp :=  StringReplace(Temp,
                            'Assessment', #$D#$A+#$D#$A +'Assessment', [rfReplaceAll]);

                         (varRichText).Lines.Add(Temp);
                         (varRichText).SelStart := varLength;
                         (varRichText).SelLength := length(Temp);
                         CurrText(varRichText).Color := clGreen;


                         grdCC.AddRow;

                         grdCC.Cells[1,grdcc.RowCount-1] := FieldByName('CCDate').AsString;
                         grdCC.Cells[2,grdcc.RowCount-1] := Temp;//FieldByName('CCMemo').AsString;




                        next;
                      end;
                  end
                  else
                  begin
                        reCC.Lines.Clear;
                  end;
              end;
     finally

       tempQuery.free;

     end;
end;



procedure TtxList_f.LoadRemark(chart, jinDay, jinDay2: string);
var
     tempQuery : TuniQuery;
     bstream: Tstream;
 begin

     reRemark.Lines.Clear;

     try
        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

             with tempQuery do
             begin
                  Close;
                  Sql.Clear;
                  Sql.Add(' select  * from hxsRemark  ');
                  sql.add(' where srChart=:chart and (srdate >= :jinday and  srdate <= :jinday2)');
                  Sql.Add(' order by  srdate ');
                  ParamByName('chart').AsString  := chart;
                  ParamByName('jinDay').AsString  := jinDay;
                  ParamByName('jinDay2').AsString  := JinDay2;
                  Open;
                  if not isEmpty then
                  begin
                      while not eof do
                      begin

                         if   FieldByName('sRMemo').AsString  <> '' then
                         begin

                             BStream := CreateBlobStream(FieldByName('sRMemo'), bmRead);
                             reRemark.Lines.LoadFromStream(bStream);
                             BStream.Free;


                         end;

                        next;
                      end;
                  end
                  else
                  begin
                        reRemark.Lines.Clear;
                  end;
              end;
     finally

       tempQuery.free;

     end;
end;

end.
