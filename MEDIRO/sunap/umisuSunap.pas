unit umisuSunap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, Vcl.ComCtrls, AdvSplitter,
  tmsAdvGridExcel, AdvPanel, AdvProgressBar ;

type
  TmisuSunap_f = class(TForm)
    Panel3: TPanel;
    grdMisu: TAdvStringGrid;
    AdvSplitter1: TAdvSplitter;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    pnlBottom: TAdvPanel;
    Label4: TLabel;
    pnlTop: TAdvPanel;
    lblTerm: TLabel;
    lblterm2: TLabel;
    btnMisuSearch: TButton;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    cbWhole: TCheckBox;
    Button2: TButton;
    pnlBody: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wLabel11: TLabel;
    btnSunap: TButton;
    edtChart: TEdit;
    edtName: TEdit;
    DateTimePicker1: TDateTimePicker;
    btnCard: TButton;
    edtCard: TAdvEdit;
    lblHyunGeum: TButton;
    edtHyun: TAdvEdit;
    lblTong: TButton;
    edtTong: TAdvEdit;
    edtSunap: TAdvEdit;
    edtTreatRoom: TEdit;
    edtJinryoPid: TEdit;
    edtDocCode: TEdit;
    Button1: TButton;
    AdvProgressBar1: TAdvProgressBar;
    Button3: TButton;
    Label5: TLabel;
    Button4: TButton;
    procedure btnMisuSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdMisuClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure edtCardChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSunapClick(Sender: TObject);
    procedure grdMisuClickSort(Sender: TObject; ACol: Integer);
    procedure Button2Click(Sender: TObject);
    procedure cbWholeClick(Sender: TObject);
    procedure edtChartClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure grdMisuCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure Button4Click(Sender: TObject);
  private
    procedure loadMisuList;
    function SetSunapValue: double;
    procedure misuSunapSave(chart, jin_Day, jinryo_pid, misu_pid : string);
    procedure FieldClear;
    procedure ExcuteMisusunap( chart, treatroom, doccode,
     jin_Day, patName, jinryo_pid:string;
     sunapek, card, hyun, tong:integer);
    procedure fieldSet(aRow: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  misuSunap_f: TmisuSunap_f;

implementation
uses uDm, uFunctions, uGogekData, uFormInit;
{$R *.dfm}

procedure TmisuSunap_f.btnMisuSearchClick(Sender: TObject);
begin
     loadMisuList;
end;

procedure TmisuSunap_f.Button1Click(Sender: TObject);
begin
         if  (sender as Tbutton).Tag = 0 then
         begin
              (sender as Tbutton).Tag := 1;
             grdMisu.CheckAll(1);
         end
             else
             begin

                grdMisu.UnCheckAll(1);
               (sender as Tbutton).Tag := 0;
             end;
end;

procedure TmisuSunap_f.Button2Click(Sender: TObject);
begin
   savedialog1.fileName:= '미수금내역'+formatdatetime('YYYYMMDD', datetimepicker1.date)  +'_'
                    + formatdatetime('YYYYMMDD', datetimepicker2.date) +'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;

procedure TmisuSunap_f.Button4Click(Sender: TObject);
begin
         fieldclear;
         grdMisu.RemoveRows(1, grdMisu.RowCount-1);


end;

procedure TmisuSunap_f.cbWholeClick(Sender: TObject);
begin

 if cbWhole.Checked then
 begin
//     misuSunap_f.DateTimePicker2.Visible := false;
//     misuSunap_f.DateTimePicker3.Visible := false;
     misuSunap_f.DateTimePicker2.enabled := false;
     misuSunap_f.DateTimePicker3.enabled := false;
//     misuSunap_f.lblTerm.Visible := false;
//     misuSunap_f.lblTerm2.Visible := false;
 end
 else
 begin
//     misuSunap_f.DateTimePicker2.Visible := true;
//     misuSunap_f.DateTimePicker3.Visible := true;
     misuSunap_f.DateTimePicker2.enabled := true;
     misuSunap_f.DateTimePicker3.enabled := true;
     misuSunap_f.lblTerm.Visible := true;
     misuSunap_f.lblTerm2.Visible := true;
 end;

end;

procedure TmisuSunap_f.btnSunapClick(Sender: TObject);
var
    pID: integer;
    jID: integer;
    state : boolean;
    i: integer;

    Num: integer;
begin

    Num := 0;


 //1. jinryo_p에서 미수리스트 불러오고 수납할 환자  선택
 //2. ma_Jubsu 에 저장 choje = 9 미수수납
 //3. jinryo_p 에 저장 jin_gu = 3 미수수납 chojae=9 미수수납
 //4. ma_MisuSunap 에 저장
 //     jinryo_pID 에 수납할 진료일의 jinryo_pID,
 //     misu_pid에 수납한 Jinryo_p의  jinryo_pID

      for I := 1 to grdMisu.RowCount - 1 do
      begin
         begin
           if grdMisu.GetCheckboxState(1,I,State)
              then
                if State then inc(Num);
          end;
      end;

      if num <= 0 then
      begin
         showmessage('미수 수납처리할 환자에 체크를 하세요.');
         exit;
      end;


      if num > 1 then
      begin


               if Application.MessageBox(PChar('선택된 환자들'+#10
               + inttostr(num) +'건을 ' +#10
               + formatdatetime('YYYY-MM-DD', datetimePicker1.Date) +'일자로' +#10
               + '현금으로' +#10
               + '미수 수납처리  하시겠습니까?'),  '일괄 미수수납 처리 알림', MB_YESNO) = IDYES then
               begin
                     AdvProgressBar1.Min :=1;
                     AdvProgressBar1.Max :=grdMisu.RowCount - 1;

                     for i := 1 to grdMisu.RowCount - 1 do
                    begin

                           grdMisu.GetCheckBoxState(1, i, state);
                          if state = false then
                          begin
                            application.ProcessMessages;
                            AdvProgressBar1.Position := i;
                            continue;
                          end;
                  {
                         edtChart.Text     := grdMisu.Cells[2, ARow];
                         edtname.Text      := grdMisu.Cells[3, ARow];

                         edtCard.IntValue  := grdMisu.ints[7, ARow];
                         edtJinryoPid.Text := grdMisu.Cells[8, ARow];
                         edtdocCode.Text   := grdMisu.Cells[9, ARow];
                         edtTreatRoom.Text := grdMisu.Cells[10, ARow];
                  }

                          ExcuteMisusunap(
                             grdMisu.Cells[2, i],//edtChart.Text,
                             grdMisu.Cells[10, i],//edtTreatRoom.text,
                             grdMisu.Cells[9, i],//edtDocCode.text,
                             formatdatetime('YYYY-MM-DD', datetimePicker1.Date),
                             grdMisu.Cells[3, i],//edtName.text,
                             grdMisu.Cells[8, i],//edtJinryopID.text,
                             grdMisu.ints[7, i],//edtSunap.intvalue,
                             0,//edtCard.intValue,
                             grdMisu.ints[7, i],//edtHyun.intValue,
                             0);//edtTong.intValue);

                          application.ProcessMessages;
                          AdvProgressBar1.Position := i;
                    end;
                     showmessage('미수 수납되었습니다.');

            end
            else
            begin
                 // exit;
                 (sender as TButton).modalResult := mrCancel;;
            end;
      end
      else
      begin
              if edtSunap.intvalue =0 then
              begin

                 showmessage('수납한 금액을 입력하세요.');
                 exit;
              end;

                          ExcuteMisusunap(
                             edtChart.Text,
                             edtTreatRoom.text,
                             edtDocCode.text,
                             formatdatetime('YYYY-MM-DD', datetimePicker1.Date),
                             edtName.text,
                             edtJinryopID.text,
                             edtSunap.intvalue,
                             edtCard.intValue,
                             edtHyun.intValue,
                             edtTong.intValue);

                             showmessage('미수 수납되었습니다.');

      end;
{  jID := jubsuSave(        //미수금 수납 전용 접수
     edtChart.Text,
     edtTreatRoom.text, // cbdamteam.text,
     edtDocCode.text,//'NHIC', // cbDoc.Text,
     '', // cbHyg.Text,
     '3', //수납완료
     formatdatetime('YYYY-MM-DD', datetimePicker1.Date), //접수일
     now,// nowTime,
     formatdatetime('YYYY-MM-DD', datetimePicker1.Date), //초진일
     '', // edtjumin.text,
     '', // edtZip.Text,
     edtName.text, // edtname.text,
     '', // edtcphone.text,
     '', // 예약내용
     '', // 참고사항
     '', // 예약 idn
     '', // 예약 시간
    3, //Jongbyul =일반
    9, //초재=9 미수수납
    '', // '', //Sanjung
    '',// teakryeCode,
    0, // 0, //health
    '', // '', //pregnan
    '', // '', //chasangNo
    '', // '', //bonType
    '0', // '', //yujikum
    '', // '', //Kwamok
    edtTreatRoom.text,
    '0', // isInPat
    '', // inPat_time
    0,//ma_rp_RequestPK, '', // artteeth1
    '0',//isOutPat
    '',//out_patTime,
    0,//jaboID
    edtDocCode.text, //docCode
    '0', //isJiwon
    '0', //isBohum100  1: bohum100
    '', // artteeth2
    '', // implteeth1
    '', // implteeth2
    '0'); // 접수종류 1: 자동접수 0: 수동접수

    pID:= JinryoPSave(
          inttostr(jID),
          edtChart.text, // chart   (챠트번호)
          formatDatetime('YYYY-MM-DD',datetimePicker1.Date), // jin_day (진료일)
          '0', // kwamok
          '0', // jongbeul (종별)
          '', // 증버호
          '', // 가입자명
          '', // 조합기호
          '', // dup      (1=장애인)
          // naiCalc(main_f.edtJumin.text + main_f.edtJumin2.text,
          '0',   // nai
          '9',  // chojae  (초재구분) 9:미수수납
          '', // gasan       (진찰료 산정인 경우=9)
          '', // gub_gu    //*******  2011.7 영유아 건강검진 당일  '0', //gub_gu
          formatFloat('#', 0), //chong       (총 진료비)
          formatFloat('#', 0), //chung       (청구액)
          '0', // kamak       (감면액)
          '0', // sunsugeum
          '0', // misugeum    (당일미수금)
          inttostr(edtSunap.intvalue), // sunapak (수납액)
          '0', // junsanchaek
          formatFloat('#', 0),   // jubsuak(진찰료)
          '0', // NewYoungsuNo(strtodate(JinDate)), //youngsu_num,  //(영수증발급번호)
          '0', // kam_code
          '0', // kam_rate
          '0', // kam_sayu
          '3', // jin_gu,  (토탈차지이면 jin_gu=1, 증명료면 2, 미수수납=3)
          '', // kyulkwa      (진료결과)
          edtDocCode.text,// doc_code(의사코드)
          '0', // jinryosil
          '', // jin_time     (심야시간)
          '0', // jin_user
          '1', // sunap          (0 : 수납대기 1:수납완료 2:수납대기취소 3: 수납보류 )
          '', // gongsang     (공상구분)
          '0', // jojae11
          '0', // jojae21
          formatFloat('#', 0), //bonin         (본인부담금)
          formatFloat('#', 0), //bonin1        (본인비급여)
          '0', // makam
          '0', // jusa
          '', // whan_day
          '', // whan_time
          '0', // whan_user
          '0', // account
          '0', // whanbulak
          inttostr(edtCard.intValue), // card          (카드액)
          '', // CardCode
          '', // CardName      (카드명)
          '0', // JojaeIn       (현금영수증 액)
          '0', // JojaeOut      (1=소득공제 미제출 자료)
          '', // extra,        (의약분업예외)
          '0', // wonwes        (처방일수)
          edtTreatRoom.text,//  //진료실
          '', // remark        (영수증에 인쇄되는 내용)
          '0', // chart_id
          '0', // cmemo
          '0', // SunsuCard
          '0', // SunsuTong
          '0', // SunsuCash
          '0', // sunsucardcode
          '0', // sunsucardname
          '0', // sunsutongcode
          '0', // sunsutongname
          inttostr(edtHyun.intvalue),  //Cash  (현금액)
          inttostr(edtTong.intvalue), // Tong  (무통장)
          '0', // TongName
          '0', // TongCode
          formatDatetime('YYYY-MM-DD',datetimePicker1.Date), // Makam_day
          '0', // Makam_time
          '0', // Makam_chk
          '', // wein     (상해외인)
          '', // Tjung    (특정기호)
          '', // 2007.7.1
          '', // 2007.7.1
          '0', // 2007.7.1
          '',//Makam_Sabun,
          '',//varJaboId,
          '',//varSatGasan,
          '',//varPregnan,
          '', //varSanjungTeakRye);
          '0',//0: 외래 1: 숙박입원 2: 낮입원
          '0', //bohum100 1: 보험100
          ''); //isJiwon H : code

      misuSunapSave(inttostr( pid) );
   }
  //    btnSunap.Enabled := false;

end;

procedure TmisuSunap_f.ExcuteMisusunap(
     chart, treatroom, doccode,
     jin_Day, patName, jinryo_pid:string;
     sunapek, card, hyun, tong:integer);
var
    pID: integer;
    jID: integer;
begin

 //1. jinryo_p에서 미수리스트 불러오고 수납할 환자  선택
 //2. ma_Jubsu 에 저장 choje = 9 미수수납
 //3. jinryo_p 에 저장 jin_gu = 3 미수수납 chojae=9 미수수납
 //4. ma_MisuSunap 에 저장
 //     jinryo_pID 에 수납할 진료일의 jinryo_pID,
 //     misu_pid에 수납한 Jinryo_p의  jinryo_pID

  jID := jubsuSave(        //미수금 수납 전용 접수
     chart,//edtChart.Text,
     treatRoom,//edtTreatRoom.text, // cbdamteam.text,
     docCode,//edtDocCode.text,//'NHIC', // cbDoc.Text,
     '', // cbHyg.Text,
     '3', //수납완료
     jin_Day,//formatdatetime('YYYY-MM-DD', datetimePicker1.Date), //접수일
     now,// nowTime,
     jin_Day,//formatdatetime('YYYY-MM-DD', datetimePicker1.Date), //초진일
     '', // edtjumin.text,
     '', // edtZip.Text,
     patName,//edtName.text, // edtname.text,
     '', // edtcphone.text,
     '', // 예약내용
     '', // 참고사항
     '', // 예약 idn
     '', // 예약 시간
    3, //Jongbyul =일반
    9, //초재=9 미수수납
    '', // '', //Sanjung
    '',// teakryeCode,
    0, // 0, //health
    '', // '', //pregnan
    '', // '', //chasangNo
    '', // '', //bonType
    '0', // '', //yujikum
    '', // '', //Kwamok
    treatRoom,//edtTreatRoom.text,
    '0', // isInPat
    '', // inPat_time
    0,//ma_rp_RequestPK, '', // artteeth1
    '0',//isOutPat
    '',//out_patTime,
    0,//jaboID
    docCode,//edtDocCode.text, //docCode
    '0', //isJiwon
    '0', //isBohum100  1: bohum100
    '', // artteeth2
    '', // implteeth1
    '', // implteeth2
    '0'); // 접수종류 1: 자동접수 0: 수동접수

    pID:= JinryoPSave(
          inttostr(jID),
          chart,//edtChart.text, // chart   (챠트번호)
          jin_Day,//formatDatetime('YYYY-MM-DD',datetimePicker1.Date), // jin_day (진료일)
          '0', // kwamok
          '0', // jongbeul (종별)
          '', // 증버호
          '', // 가입자명
          '', // 조합기호
          '', // dup      (1=장애인)
          // naiCalc(main_f.edtJumin.text + main_f.edtJumin2.text,
          '0',   // nai
          '9',  // chojae  (초재구분) 9:미수수납
          '', // gasan       (진찰료 산정인 경우=9)
          '', // gub_gu    //*******  2011.7 영유아 건강검진 당일  '0', //gub_gu
          formatFloat('#', 0), //chong       (총 진료비)
          formatFloat('#', 0), //chung       (청구액)
          '0', // kamak       (감면액)
          '0', // sunsugeum
          '0', // misugeum    (당일미수금)
          inttostr(sunapEk),//inttostr(edtSunap.intvalue), // sunapak (수납액)
          '0', // junsanchaek
          formatFloat('#', 0),   // jubsuak(진찰료)
          '0', // NewYoungsuNo(strtodate(JinDate)), //youngsu_num,  //(영수증발급번호)
          '0', // kam_code
          '0', // kam_rate
          '0', // kam_sayu
          '3', // jin_gu,  (토탈차지이면 jin_gu=1, 증명료면 2, 미수수납=3)
          '', // kyulkwa      (진료결과)
          docCode,//edtDocCode.text,// doc_code(의사코드)
          '0', // jinryosil
          '', // jin_time     (심야시간)
          '0', // jin_user
          '1', // sunap          (0 : 수납대기 1:수납완료 2:수납대기취소 3: 수납보류 )
          '', // gongsang     (공상구분)
          '0', // jojae11
          '0', // jojae21
          formatFloat('#', 0), //bonin         (본인부담금)
          formatFloat('#', 0), //bonin1        (본인비급여)
          '0', // makam
          '0', // jusa
          '', // whan_day
          '', // whan_time
          '0', // whan_user
          '0', // account
          '0', // whanbulak
          inttostr(Card), // card          (카드액)
          '', // CardCode
          '', // CardName      (카드명)
          '0', // JojaeIn       (현금영수증 액)
          '0', // JojaeOut      (1=소득공제 미제출 자료)
          '', // extra,        (의약분업예외)
          '0', // wonwes        (처방일수)
          TreatRoom,//  //진료실
          '', // remark        (영수증에 인쇄되는 내용)
          '0', // chart_id
          '0', // cmemo
          '0', // SunsuCard
          '0', // SunsuTong
          '0', // SunsuCash
          '0', // sunsucardcode
          '0', // sunsucardname
          '0', // sunsutongcode
          '0', // sunsutongname
          inttostr(Hyun),  //Cash  (현금액)
          inttostr(Tong), // Tong  (무통장)
          '0', // TongName
          '0', // TongCode
          jin_Day,//formatDatetime('YYYY-MM-DD',datetimePicker1.Date), // Makam_day
          '0', // Makam_time
          '0', // Makam_chk
          '', // wein     (상해외인)
          '', // Tjung    (특정기호)
          '', // 2007.7.1
          '', // 2007.7.1
          '0', // 2007.7.1
          '',//Makam_Sabun,
          '',//varJaboId,
          '',//varSatGasan,
          '',//varPregnan,
          '', //varSanjungTeakRye);
          '0',//0: 외래 1: 숙박입원 2: 낮입원
          '0', //bohum100 1: 보험100
          ''); //isJiwon H : code

    //  misuSunapSave(inttostr( pid) );
     misuSunapSave(chart, jin_Day, jinryo_pid, inttostr( pid) );
//      btnSunap.Enabled := false;

end;


procedure TmisuSunap_f.edtCardChange(Sender: TObject);
begin

     edtSunap.FloatValue := SetSunapValue;

end;

procedure TmisuSunap_f.edtChartClick(Sender: TObject);
begin
      edtChart.text :='';
      edtName.text :='';
end;

procedure TmisuSunap_f.FormCreate(Sender: TObject);
begin

     caption              := '미수수납';
     grdMisu.Colwidths[8] := 0;
     grdMisu.Colwidths[9] := 0;
     grdMisu.Colwidths[10]:= 0;
     grdMisu.Colwidths[11]:= 0;
     FieldClear;
end;
procedure TmisuSunap_f.FieldClear;
begin

     datetimePicker1.Date := now;

     grdMisu.Align        := alClient;
     edtName.Text         := '';
     edtChart.Text        := '';
     edtJinryoPid.Text    := '';
     edtHyun.FloatValue   :=0;
     edtCard.FloatValue   :=0;
     edtTong.FloatValue   :=0;
     edtSunap.FloatValue  :=0;

     AdvProgressBar1.position := 0;

end;

procedure TmisuSunap_f.misuSunapSave(chart, jin_Day, jinryo_pid, misu_pid : string);
var
   aSql : string;
begin
   aSql :=
      'insert into  ma_misuSunap                     '+#10+
      ' (chart,  jin_day, jinryo_pid, misu_pid) values         '+#10+
      ' (:chart, :jin_day, :jinryo_pid, :misu_pid)             ';
      with dm_f.sqlWork do
      begin
           close;
           sql.Clear;
           sql.Text := aSql;
           paramByName('chart').AsString       := chart;//edtChart.Text;
           paramByName('jin_day').AsString     := jin_Day;//formatDatetime('YYYY-MM-DD',datetimePicker1.Date);
           paramByName('jinryo_pid').AsString  := jinryo_pid;//edtJinryoPid.Text;
           paramByName('misu_pid').AsString    := misu_pid;
           execsql;
      end;
end;




procedure TmisuSunap_f.FormShow(Sender: TObject);
begin


        initAdvPanel(pnlTop, dm_f.PictureContainer1);
        initAdvPanel(pnlBody, dm_f.PictureContainer1);
        initAdvPanel(pnlBottom, dm_f.PictureContainer1);
        initAdvGrid(grdMisu);



     loadMisuList;
end;

procedure TmisuSunap_f.fieldSet(aRow: integer);
begin

       FieldClear;

       edtChart.Text     := grdMisu.Cells[2, ARow];
       edtname.Text      := grdMisu.Cells[3, ARow];

       edtCard.IntValue  := grdMisu.ints[7, ARow];
       edtJinryoPid.Text := grdMisu.Cells[8, ARow];
       edtdocCode.Text   := grdMisu.Cells[9, ARow];
       edtTreatRoom.Text := grdMisu.Cells[10, ARow];

end;

procedure TmisuSunap_f.grdMisuCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
      if state= true then
           fieldSet(aRow);
end;

procedure TmisuSunap_f.grdMisuClickCell(Sender: TObject; ARow, ACol: Integer);
begin

       if aRow <= 0  then
         exit;

       fieldSet(aRow);

//       FieldClear;
//
//       edtChart.Text     := grdMisu.Cells[2, ARow];
//       edtname.Text      := grdMisu.Cells[3, ARow];
//
//       edtCard.IntValue  := grdMisu.ints[7, ARow];
//       edtJinryoPid.Text := grdMisu.Cells[8, ARow];
//       edtdocCode.Text   := grdMisu.Cells[9, ARow];
//       edtTreatRoom.Text := grdMisu.Cells[10, ARow];

end;

procedure TmisuSunap_f.grdMisuClickSort(Sender: TObject; ACol: Integer);
begin
    grdMisu.autonumbercol(0);
end;

function TmisuSunap_f.SetSunapValue:double;
begin
        result:=
         edthyun.FloatValue
        + edtcard.FloatValue
        + edttong.FloatValue;
end;

procedure TmisuSunap_f.loadMisuList;
var
   aSql , aSqlOredrBy ,aWhereTerm, aSqlChart: string;
begin

   aSql :=
      'select                                                                             '+#10+
      '  misugeum                                                                         '+#10+
      ' -isnull( (select sum(sunapak) from jinryo_p a                                     '+#10+
      '       where a.jinryo_pid in                                                       '+#10+
      '	      (select m.misu_pid from ma_misuSunap m                                      '+#10+
      '		     where m.jinryo_pid=p.jinryo_pid and chart=p.chart) ) , 0) as  misugeum,    '+#10+
      '(select name from ma_gogek_basic where chart= p.chart) as hName,                   '+#10+
      'isnull( (select sum(sunapak) from jinryo_p a                                       '+#10+
      '       where a.jinryo_pid in                                                       '+#10+
      '	      (select m.misu_pid from ma_misuSunap m                                      '+#10+
      '		     where m.jinryo_pid=p.jinryo_pid and chart=p.chart) ) , 0) ,                '+#10+
      '    team,chong, chung, bonin, bonin1,kamak, sunapak, jongbeul,                     '+#10+
      '(select                                                                            '+#10+
      '(select hospName from ma_referhosp where refercode=  ma_gogek_referhosp.refercode) '+#10+
      ' from ma_gogek_referhosp where chart= p.chart and jin_day=p.jin_day)               '+#10+
      '  as referHospName ,                                                               '+#10+
      '      * from jinryo_p p                                                            '+#10+
      'where misugeum                                                                     '+#10+
      ' -isnull( (select sum(sunapak) from jinryo_p a                                     '+#10+
      '       where a.jinryo_pid in                                                       '+#10+
      '	      (select m.misu_pid from ma_misuSunap m                                      '+#10+
      '		     where m.jinryo_pid=p.jinryo_pid and chart=p.chart) ) , 0) > 0      ';

     aWhereTerm :=
        ' and (jin_day>=:jin_day1 and jin_day <= :jin_day2 )                        ';

     aSqlOredrBy :=
        'order by jin_day                                                                   ';

     aSqlChart := 'and chart=:chart         '  ;

     grdMisu.RemoveRows(1, grdMisu.RowCount-1);

      with dm_f.sqlWork do
      begin
           close;
           sql.Clear;
           if cbWhole.Checked then
            begin
                if trim(edtChart.Text )<> '' then
                begin
                    sql.Text := aSql +aSqlChart+ aSqlOredrBy;
                    paramByName('chart').AsString :=  trim(edtChart.Text );
                end
                else
                begin
                   sql.Text := aSql + aSqlOredrBy;
                end;
            end
            else
            begin

                if trim(edtChart.Text )<> '' then
                begin

                      sql.Text := aSql  + aWhereTerm + aSqlChart + aSqlOredrBy;
                      paramByName('chart').AsString :=  trim(edtChart.Text );

                end
                else
                begin
                      sql.Text := aSql  + aWhereTerm + aSqlOredrBy;
                end;

                 paramByName('jin_day1').AsString := formatDatetime('YYYY-MM-DD', datetimePicker1.Date );
                 paramByName('jin_day2').AsString := formatDatetime('YYYY-MM-DD', datetimePicker2.Date );
            end;
            open;
        {차트번호
        성명
        미수일자
        미수금액
        ID }

           if not isEmpty then
           begin
                  while not eof do
                  begin
                    grdMisu.addRow;
                    grdMisu.AddCheckBox(1,grdMisu.RowCount -1, false, true );

                    grdMisu.CellProperties[2, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[3, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[4, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[5, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[6, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[7, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[8, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[9, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[10, grdMisu.RowCount -  1].ReadOnly := true;
                    grdMisu.CellProperties[11, grdMisu.RowCount -  1].ReadOnly := true;


                    grdMisu.Cells[2, grdMisu.RowCount -1]  := fieldByName('chart').AsString;
                    grdMisu.Cells[3, grdMisu.RowCount -1]  := fieldByName('hname').AsString;
                    grdMisu.Cells[4, grdMisu.RowCount -1]  := fieldByName('referHospName').AsString;//의뢰병원
                    grdMisu.Cells[5, grdMisu.RowCount -1]  := fieldByName('jin_day').AsString;//미수발생일자
                    grdMisu.Cells[6, grdMisu.RowCount -1]  := '';//완납일자
                    grdMisu.ints[7, grdMisu.RowCount -1]   := fieldByName('misugeum').AsInteger;
                    grdMisu.Cells[8, grdMisu.RowCount -1]  := fieldByName('jinryo_pid').AsString;
                    grdMisu.Cells[9, grdMisu.RowCount -1]  := fieldByName('jubsu_id').AsString;
                    grdMisu.Cells[10, grdMisu.RowCount -1] := fieldByName('doc_code').AsString;
                    grdMisu.Cells[11, grdMisu.RowCount -1] := fieldByName('team').AsString;

                    next;
                  end;
           end;

         grdMisu.AutoNumberCol(0);
      end;

end;







end.
