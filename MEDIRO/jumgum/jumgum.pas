unit jumgum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeButtons, StdCtrls, EllipsLabel, AdvCombo, ExtCtrls,
  AdvPanel, AdvGlowButton, Grids, AdvObj, BaseGrid, AdvGrid, AdvSplitter,
  iniFiles,
  uni,  Ansistrings,
  AdvProgressBar, math,  AdvOfficeStatusBar, DB, shellApi, tmsAdvGridExcel,
   ComCtrls, AdvEdit, AdvUtil, Vcl.CheckLst, FormSize, Vcl.Menus,
  RichEdit, AdvScrollControl, AdvRichEditorBase, AdvRichEditor;

type

  TiaValue = record
    iaOnly : boolean; //틀니, 임플란트 만 있는 경우 true
    iaList : Tstringlist;
    iaArtTeethDanga: integer;
    iaImplantDanga: integer;
    iaExDanga : integer;
   // iaCount: integer; //UA, UB count
    iaKind : integer;
    cntImplant : integer;  //UB count
    cntArtTeeth : integer; //UA  count
    cntImplantRefair : integer; //임플란트수리 count
    cntArtRefair : integer; //의치수리 count

    iOrder: array of string;
    cntIorder : integer;  //Order Count
  end;

type

  Tartteeth_Info = record
    upper: string;
    lower: string;
  end;



  Tjumgum_f = class(TForm)
    AdvSplitter1: TAdvSplitter;
    pnlMain: TAdvPanel;
    grdMain: TAdvStringGrid;
    pnlSummary: TAdvPanel;
    grdsummary: TAdvStringGrid;
    pnlJinryoInfo: TAdvPanel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvPanel5: TAdvPanel;
    ListBox1: TListBox;
    pnlBowan: TAdvPanel;
    Label8: TLabel;
    Label9: TLabel;
    edtJubsuno: TEdit;
    edtSimsaBulCode: TEdit;
    grdJinO: TAdvStringGrid;
    Button5: TButton;
    AdvPanel6: TAdvPanel;
    AdvStringGrid1: TAdvStringGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    AdvGridExcelIO2: TAdvGridExcelIO;
    pnlLeft1: TPanel;
    pnlTop1: TPanel;
    ProgressBar: TAdvProgressBar;
    pnlHospInfo: TAdvPanel;
    edtYoyangKiho: TEdit;
    edtWonjangname: TEdit;
    edtJumin: TEdit;
    pgInfo: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Button13: TButton;
    Button14: TButton;
    TabSheet4: TTabSheet;
    Button4: TButton;
    Button15: TButton;
    Button16: TButton;
    Button1: TButton;
    Button2: TButton;
    Button18: TButton;
    cbMyungNo: TComboBox;
    Button3: TButton;
    rgChungGubun: TRadioGroup;
    pnlTerm2: TPanel;
    Label7: TLabel;
    lblTerm: TLabel;
    pnlJuminCheck: TPanel;
    lblJuminCheck: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edtChart: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    cbYear: TAdvComboBox;
    cbMonth: TAdvComboBox;
    cbDay1: TAdvComboBox;
    cbDay2: TAdvComboBox;
    Label10: TLabel;
    GroupBox4: TGroupBox;
    cbChungNo: TAdvComboBox;
    cbChungGuMethod: TAdvComboBox;
    GroupBox5: TGroupBox;
    btnChungGuDataCreate: TButton;
    btnSamCheck: TButton;
    Button7: TButton;
    GroupBox6: TGroupBox;
    cbPreExam: TCheckBox;
    CheckBox1: TCheckBox;
    btnSend: TButton;
    pnlTerm: TPanel;
    lblStat: TLabel;
    GroupBox7: TGroupBox;
    btnLoadJinryoData: TButton;
    AdvProgressBar1: TAdvProgressBar;
    CheckBox4: TCheckBox;
    cbCheckSend: TCheckBox;
    Button12: TButton;
    pnlJagyuk: TAdvPanel;
    edtJungNo: TAdvEdit;
    edtGiho: TAdvEdit;
    edtgaip: TAdvEdit;
    edtJungNo2: TAdvEdit;
    edtgaip2: TAdvEdit;
    edtGiho2: TAdvEdit;
    Label11: TLabel;
    Label12: TLabel;
    Button6: TButton;
    CheckBox2: TCheckBox;
    SaveDialog1: TSaveDialog;
    EllipsLabel9: TLabel;
    EllipsLabel10: TLabel;
    EllipsLabel11: TLabel;
    EllipsLabel1: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
    EllipsLabel4: TLabel;
    EllipsLabel8: TLabel;
    EllipsLabel6: TLabel;
    EllipsLabel13: TLabel;
    EllipsLabel5: TLabel;
    EllipsLabel7: TLabel;
    EllipsLabel12: TLabel;
    RichEdit1: TRichEdit;
    pnlDetail: TPanel;
    FormSize1: TFormSize;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    pnlErrorLog: TAdvPanel;
    grdReport: TAdvStringGrid;
    AdvSplitter3: TAdvSplitter;
    pnlPrice: TAdvPanel;
    grdCost: TAdvStringGrid;
    AdvSplitter5: TAdvSplitter;
    pnlButton: TAdvPanel;
    btnSave: TButton;
    Panel4: TPanel;
    Splitter2: TAdvSplitter;
    pnlTeakJung: TAdvPanel;
    Button8: TButton;
    Button17: TButton;
    pnlSummary2: TAdvPanel;
    lblMyungSeSeoNo: TLabel;
    lblName: TLabel;
    lblKiho: TLabel;
    lblKNumber: TLabel;
    lblSangName: TLabel;
    pnlChungMemo: TAdvPanel;
    Splitter1: TAdvSplitter;
    Panel5: TPanel;
    pnlTx: TAdvPanel;
    pnlSangByung: TAdvPanel;
    grdSangByung: TAdvStringGrid;
    clbSangByung: TCheckListBox;
    AdvSplitter2: TAdvSplitter;
    Button20: TButton;
    grdNeyuk: TAdvStringGrid;
    btnLoadSangByung: TButton;
    GroupBox8: TGroupBox;
    pnlSuga: TAdvPanel;
    lstGroupTemp: TListBox;
    pgFavorite: TPageControl;
    TabSheet5: TTabSheet;
    grdGroupCode: TAdvStringGrid;
    Panel6: TPanel;
    Label2: TLabel;
    edtGroupOrderValue: TEdit;
    Button19: TButton;
    TabSheet6: TTabSheet;
    grdSuga: TAdvStringGrid;
    Panel7: TPanel;
    Label25: TLabel;
    edtSearchSuga: TEdit;
    btnFind: TButton;
    RadioGroup1: TRadioGroup;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    TabSheet7: TTabSheet;
    pnlDrug: TPanel;
    Label40: TLabel;
    edtSearchDrug: TEdit;
    btnDrugFind: TButton;
    RadioGroup2: TRadioGroup;
    Button24: TButton;
    grdDrug: TAdvStringGrid;
    TabSheet8: TTabSheet;
    AdvSplitter9: TAdvSplitter;
    grdFindSuga: TAdvStringGrid;
    Panel8: TPanel;
    edtFindGroupCode: TEdit;
    btnGroupCodeFind: TButton;
    rgGroupSugaFind: TRadioGroup;
    grdFindGroup: TAdvStringGrid;
    TabSheet9: TTabSheet;
    grdFavorite: TAdvStringGrid;
    Panel9: TPanel;
    Button25: TButton;
    dtDate: TDateTimePicker;
    lblAge: TLabel;
    cbJong: TComboBox;
    wLabel38: TLabel;
    grdJx_jinchal: TAdvStringGrid;
    CheckListBox1: TCheckListBox;
    ListBox3: TListBox;
    cbJinchal: TCheckBox;
    grdJx2: TAdvStringGrid;
    clbJinryoHx: TCheckListBox;
    ListBox2: TListBox;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    GroupBox9: TGroupBox;
    cbSimsaAll: TRadioButton;
    cbSimsaEnd: TRadioButton;
    cbSimsaExcept: TRadioButton;
    cbGubunOut: TRadioButton;
    cbGubunIn: TRadioButton;
    cb1: TRadioButton;
    cb2: TRadioButton;
    cb4: TRadioButton;
    cb3: TRadioButton;
    N5: TMenuItem;
    N6: TMenuItem;
    Label3: TLabel;
    PopupMenu3: TPopupMenu;
    N7: TMenuItem;
    PopupMenu4: TPopupMenu;
    MenuItem1: TMenuItem;
    Button26: TButton;
    pnlDoctorsNote: TAdvPanel;
    memDrsNote: TRichEdit;
    AdvSplitter4: TAdvSplitter;
    lblTreatRoom: TLabel;
    lblPiDate: TLabel;
    edtCC: TRichEdit;
    N8: TMenuItem;
    N9: TMenuItem;
    CheckBox3: TCheckBox;
    N10: TMenuItem;
    N11: TMenuItem;
    pnlModSuga: TAdvPanel;
    gbBefore: TGroupBox;
    Label4: TLabel;
    lblBefName: TLabel;
    edtBeforeCode: TEdit;
    Button27: TButton;
    gbAfter: TGroupBox;
    Label13: TLabel;
    lblAftName: TLabel;
    edtAfterCode: TEdit;
    Button28: TButton;
    Button29: TButton;
    Button31: TButton;
    rgKind: TRadioGroup;
    GroupBox10: TGroupBox;
    dtStart: TDateTimePicker;
    dtFinish: TDateTimePicker;
    lblChart: TLabel;
    Label5: TLabel;
    memChungGuMemo: TRichEdit;
    lblJubsuID: TLabel;
    Label1: TLabel;
    lbljinday: TLabel;
    Button30: TButton;
    GroupBox11: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox12: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox13: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    cbYear1: TAdvComboBox;
    cbMonth1: TAdvComboBox;
    AdvStringGrid2: TAdvStringGrid;
    Panel2: TPanel;
    PopupMenu5: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    cbBowan: TRadioButton;
    cbNurak: TRadioButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    N16: TMenuItem;
    N17: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnLoadJinryoDataClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnChungGuDataCreateClick(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
    procedure grdsummaryGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure grdsummaryGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdMainDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdMainFilterDone(Sender: TObject);
    procedure grdMainClickSort(Sender: TObject; ACol: Integer);
    procedure Button1Click(Sender: TObject);
    procedure edtYoyangKihoExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure grdMainCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnSamCheckClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure grdReportDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdMainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdMainClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure rgChungGubunClick(Sender: TObject);
    procedure cbCheckSendClick(Sender: TObject);
    procedure pgInfoChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure grdMainRowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure Button8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure grdJx2ButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure grdReportClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button20Click(Sender: TObject);
    procedure btnLoadSangByungClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure grdSangByungKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure memChungGuMemoContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure memChungGuMemoClick(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure grdGroupCodeDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdJx2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdJx2GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure btnFindClick(Sender: TObject);
    procedure grdSugaDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdJx2ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure N4Click(Sender: TObject);
    procedure grdMainGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure N7Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure rgKindClick(Sender: TObject);
    procedure edtChartKeyPress(Sender: TObject; var Key: Char);
    procedure Button30Click(Sender: TObject);
    procedure grdReportClickSort(Sender: TObject; ACol: Integer);
    procedure N12Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
  private


    checkArray : array of TRadioButton;
    inputShortCut: Boolean;

    isJx2Delete : Boolean;
    useWonNaeTuYak: boolean;   //MS002용
    iChongTu: Integer;            //MS002용 총 투약일

    //maru와 dentro에따라서 다르게 가져와야함.
    YoyangKiho: string; // 요양기관(의료급여기관)기호	an(8)
    chungGuName: String; // 청구인	an(20)
    jaksungName: String; // 작성자성명	an(20)
    jaksungJumin: string; // 작성자생년월일	an(13)
    SeunginNo: string; // 검사승인번호	an(35)


    jin_day : string;
    doc_code: string;
    treatRoom: string;
    varChartno : string;


    wonjangJinryoIlsu : string;



    varMT037: Integer; // MT037(MT037(레진상 틀니 및 타 상병 진료) 한번만 기재)

    targetPath, targetFile: string;

    F: TextFile;

    ChungGuNo: string;
    ChungGuNo_serial: string;
    varDrJumin: string;

    varDrJumin1: array of string;
    WonjangCount : integer;


    varDrMyunHu: string;
    varDrMyunHu2: string;

    bohumSaCode:string;


    sumBohumGunsu: Integer; // 명세서 청구건수의 합 (보험)
    sumBohumChong: Integer; // 명세서요양급여비용총액의 합
    sumBohumBonin: Integer; // 명세서 본인일부부담금의 합
    sumBohumBoninSangHan: Integer; // 명세서 본인부담상한초과금액의 합
    sumBohumChung: Integer; // 명세서 청구액의 합
    sumBohumJiwon: Integer; // 명세서 지원금의 합
    sumBohumjangE: Integer; // 의료급여2종 장애인명세서의 장애인의료비의합,
    // 요양급여의 경우 차상위장애인만성질환
    // 18세미만 본인부담경감대상자 요양급여비용명세서의 장애인진료비의합

    sumBohumjinChong   : Integer; // 요양급여비용명세사의 진료비총액
    sumBohumBohun      : Integer;    // 보훈위탁지정병원
    sumBohumHbyH       : Integer;     // 건강보험100/100 진료비총액
    sumBohumHbyHunder  : Integer;    // 건강보험100/100 미만 진료비총액

          sumBohumHbyHChong : Integer;
          sumBohumHbyHChung : Integer;
          sumBohumHbyHBonin : Integer;

          sumYoyangChong1   : Integer;

    sumBohoGunsu       : Integer; // 명세서 청구건수의 합  (보호)
    sumBohoChong       : Integer; // 명세서요양급여비용총액의 합
    sumBohoBonin       : Integer; // 명세서 본인일부부담금의 합
    sumBohoBoninSangHan: Integer; // 명세서 본인부담상한초과금액의 합
    sumBohoChung       : Integer; // 명세서 청구액의 합
    sumBohoJiwon       : Integer; // 명세서 지원금의 합
    sumBohojangE       : Integer; // 의료급여2종 장애인명세서의 장애인의료비의합,
    // 요양급여의 경우 차상위장애인만성질환
    // 18세미만 본인부담경감대상자 요양급여비용명세서의 장애인진료비의합

    sumBohojinChong    : Integer;   // 보호 요양급여비용명세사의 진료비총액
    sumBohoBohun       : Integer;      // 보호 보훈위탁지정병원
    sumBohoHbyH        : Integer;       // 보호 100/100 본인부담금총액
    sumBohoHbyHUnder   : Integer;       // 보호 100/100 미만 진료비총액

          sumBohoHbyHChong : Integer;
          sumBohoHbyHChung : Integer;
          sumBohoHbyHBonin : Integer;


    sumJaboGunsu : Integer;
  sumJaboChong : Integer;
  sumJaboBonin : Integer;
  sumJaboBoninSangHan : Integer;
  sumJaboChung : Integer;
  sumJaboJiwon : Integer;
  sumJabojangE : Integer;
  sumJabojinChong : Integer;
  sumJaboBohun : Integer;
  sumJaboHbyH : Integer;

    sumSanjeGunsu : Integer;
  sumSanjeChong : Integer;
  sumSanjeBonin : Integer;
  sumSanjeBoninSangHan : Integer;
  sumSanjeChung : Integer;
  sumSanjeJiwon : Integer;
  sumSanjejangE : Integer;
  sumSanjejinChong : Integer;
  sumSanjeBohun : Integer;
  sumSanjeHbyH : Integer;




    SatGasanJul, ChojaeJul: Integer;

    function TeethConvert_SimPyungWon(varteeth: string): string;
    function TeethConvert_EDI(varteeth: string): string;

    procedure LoadJinryoData;
    function SangByungCheck(varChart, varJinday: string): string;
    procedure ReportWrite(varName, varChart, varReport,
           varJinDay, jumin, jubsu_id: string;
           aRow:integer;
           jinryo_p_id :string ='';
           bondamCode  :string ='';
           sang_Key1   :string ='';
           WonWeNo     :string ='';
           WonWeIlu   :string ='';
           bonDamEk    :string ='');

    procedure WriteChungGuSeo(varKind: string);

    procedure WriteMyungSeSeo(varKind: string = '');
    procedure WriteMyungSeSeo_Sangbyubg(
         varGubun,
         varChart,
         varJinday: string;
         aMyunhu:string;
         illyun: Integer;
         teakryeNo : string;  //산정특례번호
         isImplant : boolean=false;
         iaValue :string ='';
         iaOrder:string='';
         isArtRefair:integer=0 );
    procedure WriteMyungSeSeo_jinryo_old(varGubun, varChart, varJinday: string;
      illyun: Integer; varChojae: Integer; age: Integer;
      jubsu_id:string; isInpat:string; varJabo:boolean=false ;
      isImplant : boolean=false; iaValue :string ='');

    procedure   WriteMyungSeSeo_jinryo(
         isWrite : boolean;
         varGubun: string;
         varChart: string;
         varJinday: string;
         illyun: Integer;
         varChojae: Integer;
         jongbeul:integer;
         kwamok : string;
         age: Integer;
         jubsu_id:string;
         isInpat:string;
         docName : string;
         MyunHu : string;
         varJabo:boolean=false;
         isImplant : boolean=false;
         iaValue:string ='' );
    procedure WriteMyungSeSeo_Chubang(varGubun, varJinday: string;
      illyun, varChubangNo: Integer);
    procedure WriteMyungSeSeo_Neyuk(varGubun, varJinday: string;
      illyun, varChubangNo: Integer);
    procedure WriteMyungSeSeo_Chojae(varGubun, varChart, varJinday: string;
      illyun: Integer; varChojae: Integer; varJinTime: string; varMyunhu:string);
    function loadSugu2(varsukey: string): string;
    function loadSutakinfo(varSutakKEy: string): string;
    function loadTeakRyeNo(varChart: string): string;
    procedure MakeMyungSeFile_Bohum; // 보험용 .GHP파일 생성
    procedure MakeMyungSeFile_Boho;
    function getJinryoilsu(varDay1, varDay2: string): Integer;
    procedure setCombo;
    function loadTeuleeRegiNo(varChart: string): Tartteeth_Info;
    procedure LoadDays(varLastday: Integer);
    procedure WriteMyungSeSeo_SatGasan(varGubun, varChart, varJinday: string;
      illyun, varChojae: Integer; varJinTime: string);
    function LoadChungGuNo(varYear, varMonth: string): string;
    function SaveChungGuFiles(varYear, varMonth, varNo,
      varKind: string): boolean;
//    function loadGasanCode(jinDay : string;varsukey: string; varSugu2:integer;varSugu3:integer; varChojae, varAge: Integer;
//      varsoa: boolean): string;
    function loadJinilsu(varChart, varJinday: ansistring): Integer;
    procedure ReSummary;
    procedure MakeMyungSeFile_Jabo(varJaboCode: string);
    procedure WriteChungGuSeo_Jabo(varJaboCode: string);
    procedure WriteMyungSeSeo_Jabo(varJaboCode: string);
    procedure ReSummary_Jabo;
    procedure loadHospitalInfo;
    procedure saveChungGuInfo_maru;
    procedure loadBohumsaList;
    function ReplaceImplantTeeth(varChart, varJinDay,varPos, varteeth: string): string;
    procedure TotSummary(varJong, aRow: integer);
    function CheckIAvalue(varChart, varJinday: string): TiaValue;
               {  iaOnly : boolean; //틀니, 임플란트 만 있는 경우 true
                  iaList : Tstringlist;
                  iaDanga: integer;
                  iaExDanga: integer;
                  iaCount: integer; //UA, UB count
                  iOrder: string;}

    procedure searchJinryo_o(varChart, varJinday : string);
    procedure LoadMyungse(varKind, varYear, varMonth, varNo: string);
    procedure LoadMyungseList(varYear, varMonth: string);
    procedure ReCalcTotal;
//    procedure SetJinSO(varChart, varJinday:string; jongbyul:integer; nai:string; yagan: boolean);
    function jongbyulToInt(jongbyul: string): integer;
    procedure makeMedLog;
    procedure SetCheckArray;

//function CalcBonin(hkind:string;  // 병원, 의원, 종합병원
//                       varChong : double;
//                       boolWonwe: Boolean;
//                       varDate : string;  //YYYY-MM-DD
//                       varTime : string;  //hh:mm:ss
//                       varChojae : integer;
//                       varJongbeul : integer;
//                       varAge : integer;
//                       isSat:boolean;   //토요일여부 - 토요가산적용
//                       varbonDamCode:string;  //보험 본인부담코드
//                       varBonjun : string;
//                       varCT : integer; //CT금액
//                       varDenture : integer;  //틀니 금액
//                       artTeeth : boolean = false;       //틀니여부
//                       AfterArtTeeth : boolean = false;  //틀니수리여부
//                       implTeeth: boolean = false;       //임플란트여부
//                       anotherTeeth : boolean = false;   //다른치아 치료여부
//                       nBoMan :integer=0; //의약품관리료
//                       varGongsang : boolean = false; //공상여부
//                       varjange : boolean = false; //장애여부
//                       varYongua: boolean = false; //영유아구분
//                       varGumjin: boolean = false; //건강검진
//                       varfirst: boolean  = false; //생애전환기검진
//                       varRestrict:boolean = false; //급여제한자여부
//                       varPregnan: boolean= false)    //임신부
//                       : double;

procedure calcSatGasanGeum(hkind, varDate, varTime : string; varChojae,
      varAge: integer; isSat: boolean);
    function GetJinchalRyo(varjinchalRyoCode: string;
      dWorkDate: string): Integer;
     function GetJinchalRyo_SatGasan(hKind: string; nChoJae, nAge: Integer;
                    dWorkDate: TdateTime;
                     varJange, varGumjin,
                    varFirst, varYongUa, varYagan: boolean): Integer;

//    function MakeJinchalRyoCode(nChoJae, nAge: Integer;
//     dWorkDate: TDateTime;
//      jange: boolean; yongua: boolean; ilban: boolean; ifirst: boolean;
//      isSat: boolean = false): string;
    procedure LoadInputTeakJung(
                           chart       :string;
                           jubsu_id    :string;
                           jin_Day    : string;
                           docID      :string;
                           TeakRyeCode:string;
                           jin_skey   :string;
                           su_Key     : string;
                           julno      :integer);
    procedure fillJinryoData(aRow: integer; isView : boolean = true);

    procedure insertjin_s(
      JubsuID : string;
      ADate: TDateTime;
      AChart: string;
      aTeam: string;
      aDoc: string;
      isInpat:string;
      aGrid: TAdvStringGrid;
      saveKind:integer = 1);
    function DeleteSangByung(aRow: integer): boolean;
    procedure insertGridGroupSuga(aGrid: TAdvStringGrid; col1, col2, col3,
      ARow: Integer);
    procedure InsertSugaCode(AGroupName, AGroupCode: string;  nAdd: Integer;
       modiKind:string='C';
        aSutak:string='1');
    procedure LoadDefaultValue;
    procedure LoadCC(chart: string);
    procedure bohoCert;
//    procedure AlterTable;//, treatRoom, doc_code, jin_day, isInPat: string);
    //

    // 보호용 .GHP파일 생성
    { 발생단위구분 ,처방전발급번호 줄번호 특정내역구분 특정내역 }

    { Private declarations }
  public
    { Public declarations }
  end;


const


  jongKind: array[0..10] of string =('보험','보호1종','보호2종','일반',
        '보호4종','보호8종','산재','자보','차상위1종','차상위2종','차상위2종 장애인');




var
  jumgum_f: Tjumgum_f;

implementation

uses uConfig,  udm, uFunctions, uTeeth, uGogekdata,
    uWebservice, uJinryoCalc, Result,  uInputTeakJung,
    SangSeek, SugaProp, uFormInit;

{$R *.dfm}

procedure CreateTable_chungGu;
const


     sqlText_ma_chunggu =
        'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chunggu]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)' + #10#13 +
        'CREATE TABLE [dbo].[ma_chunggu](                                  ' + #10#13 +
        '	[id] [int] IDENTITY(1,1) NOT NULL,                               ' + #10#13 +
        '	[kind] [char](1) COLLATE Korean_Wansung_CI_AS NULL,              ' + #10#13 +
        '	[chungYear] [char](4) COLLATE Korean_Wansung_CI_AS NULL,         ' + #10#13 +
        '	[chungMonth] [char](2) COLLATE Korean_Wansung_CI_AS NULL,        ' + #10#13 +
        '	[chungNo] [char](4) COLLATE Korean_Wansung_CI_AS NULL,           ' + #10#13 +
        '	[neyuk] [image] NULL                                             ' + #10#13 +
        ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]                             ';
begin
     with Dm_f.SqlWork do
     begin
          close;
          sql.clear;
          Sql.text :=  sqlText_ma_chunggu;
          execsql;
     end;
end;

function Tjumgum_f.loadSugu2(varsukey: string): string;
begin
  result := '0';
  with dm_f.sqlTemp12 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from suga');
    sql.Add('where su_key=:su_key');
    paramByName('su_key').AsString := varsukey;
    open;
    if not isEmpty then
    begin
      if trim(fieldByName('su_gu2').AsString) <> '' then
        result := fieldByName('su_gu2').AsString
      else
        result := '0';
    end;

  end;
end;

function Tjumgum_f.TeethConvert_SimPyungWon(varteeth: string): string;
var
  i, To_I: Integer;
  temp: string;
begin
  temp := '';
  To_I := Length(trim(varteeth));


  for i := 1 to To_I do
  begin
    if CheckInt(varteeth[i]) then
    begin


            if varteeth[i] ='9'  then
            begin
               temp := temp + '!'; //임플란트 성인치아
            end
            else
            begin
                 temp := temp + '*';    //일반성인치아
            end;



    end
    else
    if varteeth[i] in ['a' .. 'z', 'A' .. 'Z'] then
         temp := temp + '#'    //유치
    else
         temp := temp + copy(varteeth, i, 1);
  end;

  result := stringreplace(temp, '_', '0', [rfReplaceAll]);

end;

function Tjumgum_f.TeethConvert_EDI(varteeth: string): string;
begin
  result := stringreplace(varteeth, '_', ' ', [rfReplaceAll]);

end;


procedure Tjumgum_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tjumgum_f.FormDestroy(Sender: TObject);
begin
  jumgum_f := nil;
end;

procedure Tjumgum_f.FormShow(Sender: TObject);
begin



  caption := '보험청구';

  isJx2Delete := false;
     lblchart.caption  :=  '' ;
     lbljinday.caption :=  ''  ;


  if  pos('pms.cjedioeqnhkl.ap-northeast-2.rds.amazonaws.com',configValue.varDbIp) > 0 then
  begin
        btnSave.Enabled  := false;
        btnSave.Caption  :='읽기전용' ;
        cbJinchal.checked:= false;
        cbJinchal.enabled:= false;
  end
   else
   begin

   end;




  targetPath := 'C:\hira\DDMD\sam\in\'; // extractFilePath(paramstr(0));
  if not directoryExists(targetPath) then
           ForceDirectories(targetPath);

  AdvProgressBar1.Position := 0;

  SatGasanJul := 0;
  ChojaeJul := 0;

  SetCheckArray;

  pnlMain.Align      := alClient;
  pnlSummary2.Align  := alTop;
  //pgReport.Align     := alClient;
  grdMain.Align      := alClient;
  grdReport.Align    := alClient;
  grdsummary.Align   := alClient;

//  pnlSangByung.Align := alClient;

  with grdSangByung do
  begin
       colWidths[1]  := 0;
       colWidths[2]  := 0;
       colWidths[3]  := 0;
       colWidths[4]  := 0;
       colWidths[5]  := 0;
       colWidths[7]  := 0;
       colWidths[8]  := 0;
       colWidths[11] := 0;
       colWidths[12] := 0;
       colWidths[15] := 0;
       colWidths[16] := 0;
       colWidths[17] := 0;
       colWidths[18] := 0;

  end;

  with grdCost do
  begin
       colWidths[4]  := 0;
       colWidths[5]  := 0;
       colWidths[6]  := 0;

  end;


  cbYear.text := formatDatetime('YYYY', now);

  // cbMonth.text := formatDatetime('MM', now);
  // cbDay2.text := inttostr(dateDaysInMonth(now));

  with pnlSummary do
  begin
    caption.Visible := true;
    caption.text :=   '[청구 요약 정보]';
     //  '[청구 요약 정보] 일당진료비: ' + '      0' + '     ' + '건당진료비: ' + '      0' +
     // '     ' + '인당진료비: ' + '       0';
    caption.TopIndent := 3;
  end;


  with grdMain do
  begin
      ColWidths[4] := 100;
  end;

  with grdsummary do
  begin
    RowCount := 6;
    cells[0, 1] := '국민건강보험';
    cells[0, 2] := '의료급여';
    cells[0, 3] := '자보';
    cells[0, 4] := '산재';
    cells[0, 5] := '합계';

  end;

  edtSimsaBulCode.Text :='';
  edtJubsuno.Text :='';
  lblAge.caption:='';

  loadHospitalInfo;  // 초기값 원장주민번호등 불러오기

  setCombo;

end;
function Tjumgum_f.CheckIAvalue(varChart, varJinday : string): TiaValue;
var
   sDanga ,
   cntOrder,
   i        : integer;
begin
    result.iaArtTeethDanga := 0;
    result.iaImplantDanga := 0;
    result.iaList := Tstringlist.Create;
    result.iaList.Clear;
    result.iaExDanga := 0;
//    result.iOrder  := '';
    result.iaOnly := false;
   // result.iaCount := 0;
    result.cntImplant := 0;
    result.cntArtTeeth := 0;
    result.cntArtRefair  := 0;

    result.iaKind := 0;
          //iaKind 임플란트,  틀니 명세서 분리 방법
          //                       iaCnt
          //0. 기본
          //1. 임플란트만 있는경우   1
          //2. 틀니만 있는경우       1
          //3. 임플란트와 틀니       2
          //4. 임플란트와 타상병     2
          //5. 틀니와 타상병         2
          //6. 임플란트와틀니와 타상병         3
          //7. 틀니와 틀니수리                 1
          //8. 틀니와 틀니수리와 타상병        2
          //9. 틀니수리                        1
          //10. 틀니수리와 타상병               2
          //11. 틀니수리와 임플란트와 타상병    3
          //12. 틀니와 틀니수리와 임플란트와 타상병    3


    with dm_f.sqlSel do
    begin
        close;
        sql.Clear;
        sql.Text :=
                  ' select count(*) as orderCnt from jinryo_o ' +#10#13+
                  ' where chart=:chart and jin_day=:jin_day';
        paramByName('chart').AsString   := varChart;
        paramByName('jin_day').AsString := varJinday;
        open;
        cntOrder := fieldByName('orderCnt').AsInteger;

        if cntOrder <= 0 then
                       cntOrder := 1;


        result.cntIorder := cntOrder;

        setLength(result.iOrder, cntOrder);

        for i:= 0 to cntOrder-1 do
        begin
          result.iOrder[i]  := '';
        end;



        close;
        sql.Clear;                                        // su_gu3 = ''28'' 임플란트 행위 및 재료
        sql.Text :=
                  ' select iorder, su_key , sum(jin_danga * jin_qty) as sDanga  from jinryo_s ' +#10#13+
                  ' where chart=:chart and jin_day=:jin_day' +#10#13+
                  ' and (su_key like ''UA%'' or su_key like ''UB%''     or su_gu3 = ''28''   or su_key like ''U15%''  ) '  +#10#13+
                  ' group by su_key, iorder ' ;

        paramByName('chart').AsString := varChart;
        paramByName('jin_day').AsString := varJinday;

        open;
        if not isEmpty then
            while not eof do
            begin
 //               result.iaList.add(fieldByName('su_Key').asString + '_' + fieldByName('sDanga').asString);
                result.iaList.add(fieldByName('su_Key').asString
                          + '_' + fieldByName('sDanga').asString
                          + '_' + fieldByName('iorder').asString);
                next;
            end;
    end;


    with dm_f.sqlSel do
    begin

        close;
        sql.Clear;
        sql.Text :=
         'select sum(jin_danga * jin_qty) as sDanga  from jinryo_s                                                               ' +#10#13+
         ' where chart=:chart and jin_day=:jin_day                                                                               ' +#10#13+  //
           ' and (su_key like ''UA%''  or su_key like ''U15%''   )    ';
        paramByName('chart').AsString := varChart;
        paramByName('jin_day').AsString := varJinday;

        open;
        sDanga := fieldByName('sDanga').AsInteger;  //틀니 단가
        if sDanga > 0  then
        begin
            result.iaArtTeethDanga := sDanga;
        end;

        close;
        sql.Clear;
        sql.Text :=
         'select sum(jin_danga * jin_qty) as sDanga  from jinryo_s                                                               ' +#10#13+
         ' where chart=:chart and jin_day=:jin_day                                                                               ' +#10#13+
           ' and (  su_key like ''UB%''     or su_gu3 = ''28'' )    ';
        paramByName('chart').AsString := varChart;
        paramByName('jin_day').AsString := varJinday;

        open;
        sDanga := fieldByName('sDanga').AsInteger;   //임플란트 단가
        if sDanga > 0  then
        begin
            result.iaImplantDanga := sDanga;
        end;

        if    result.iaArtTeethDanga  + result.iaImplantDanga > 0 then
        begin
              close;
              sql.Clear;
              sql.Text :=
                        ' select sum(jin_danga * jin_qty) as sDanga from jinryo_s ' +#10#13+
                        ' where chart=:chart and jin_day=:jin_day' +#10#13+
                        ' and  not (su_key like ''UA%'' or su_key like ''UB%''  or su_gu3 = ''28'' or su_key like ''U15%'')  and ( su_gu3 <> ''28'' ) ' ;  //
              paramByName('chart').AsString := varChart;
              paramByName('jin_day').AsString := varJinday;
              open;
              sDanga := fieldByName('sDanga').AsInteger;
              result.iaExDanga := sDanga;

              if sDanga = 0  then
              begin

                 result.iaOnly := true;
               //  result.iaDanga := 0;
              end;
        end;




        close;
        sql.Clear;   //일단 첫번째 iOrder를 가져오자. 2~3개 일경우는 ? 보류
        sql.Text :=
            //      'select top 1 iOrder from jinryo_s ' +#10#13+
                  'select   iOrder from jinryo_s ' +#10#13+
                  'where chart=:chart and jin_day=:jin_day' +#10#13+
              //    ' and (su_gu3=''24'' ) ' ;
                  ' and (su_key like ''UA%'' or su_key like ''UB%''  or su_gu3 = ''28'' or su_key like ''U15%'' )  order by iorder' ;//
                  paramByName('chart').AsString := varChart;
                  paramByName('jin_day').AsString := varJinday;
        open;

     //   result.iOrder := fieldByName('iOrder').AsString;
          i:= 0;
        // result.iOrder := fieldByName('iOrder').AsString;
        //   for i:= 0 to cntOrder-1 do
        while not eof do
        begin
          result.iOrder[i]  := fieldByName('iOrder').AsString;
          i:= i + 1;
          next;
        end;


        //ToDo: 임플란트만 또는 틀니만 있다면...
        if result.iaOnly = true then
        begin
            result.iOrder[0] :='';
        end;

        close;
        sql.Clear;
        sql.Text := ' select count(*) as iaCount from jinryo_s                                      ' +#10#13+
                    ' where chart=:chart and jin_day=:jin_day                                        ' +#10#13+
                    ' and   (su_key like ''UA%'' or su_key like ''UB%''   or su_gu3 = ''28'' or su_key like ''U15%'') ' ;   //
                  paramByName('chart').AsString := varChart;
                  paramByName('jin_day').AsString := varJinday;
          open;
          if   fieldByName('iaCount').AsInteger > 0 then
          begin
                //임플란트와 틀니 가 있는지 보자.

                close;
                sql.Clear;
                sql.Text := ' select * from jinryo_s                                      ' +#10#13+
                            ' where chart=:chart and jin_day=:jin_day                                        ';
                          paramByName('chart').AsString := varChart;
                          paramByName('jin_day').AsString := varJinday;
                open;
                while not eof do
                begin


                    if ( copy(fieldByName('su_key').AsString,1,2) ='UA')
                    // or   ( copy(fieldByName('su_key').AsString,1,3) ='U15')
                   then
                      result.cntArtTeeth :=  result.cntArtTeeth +1;

                    if  ( copy(fieldByName('su_key').AsString,1,3) ='U15')
                   //  or  ( copy(fieldByName('su_key').AsString,1,2) ='UA')
                   then
                      result.cntArtRefair :=  result.cntArtRefair +1;




                    if ( copy(fieldByName('su_key').AsString,1,2) ='UB' ) or
                     ( copy(fieldByName('su_gu3').AsString,1,2) ='28' )
                   then
                      result.cntImplant := result.cntImplant +1;


                    next;
                end;




          end;

       // result.iaCount :=  fieldByName('iaCount').AsInteger;



    end;
          //iaKind 임플란트,  틀니 명세서 분리 방법
          //                                iaCnt
          //0. 기본
          //1. 임플란트만 있는경우             1
          //2. 틀니만 있는경우                 1
          //3. 임플란트와 틀니                 2
          //4. 임플란트와 타상병               2
          //5. 틀니와 타상병                   2
          //6. 임플란트와틀니와 타상병         3
          //7. 틀니와 틀니수리                 1
          //8. 틀니와 틀니수리와 타상병        2
          //9. 틀니수리                        1
          //10. 틀니수리와 타상병               2
          //11. 틀니수리와 임플란트와 타상병           3
          //12. 틀니와 틀니수리와 임플란트와 타상병    3
    if  (result.iaOnly = false) and ( result.cntImplant >0) and  ( result.cntArtTeeth > 0) and  ( result.cntArtRefair > 0) then
      result.iaKind:= 12
      else
        if  (result.iaOnly = false) and ( result.cntImplant >0)  and  ( result.cntArtRefair > 0) then
          result.iaKind:= 11
          else
                if  (result.iaOnly = false) and ( result.cntArtTeeth >0)  and  ( result.cntArtRefair > 0) then
                  result.iaKind:= 8
                  else
                    if  (result.iaOnly = false)   and  ( result.cntArtRefair > 0) then
                      result.iaKind:= 10
                      else
                        if    ( result.cntArtTeeth >0)  and  ( result.cntArtRefair > 0) then
                          result.iaKind:= 7
                          else
                                if  ( result.cntArtRefair > 0) then
                                  result.iaKind:= 9
                                  else
                                    if  (result.iaOnly = false) and ( result.cntImplant >0) and  ( result.cntArtTeeth > 0) then
                                      result.iaKind:= 6
                                      else
                                       if  ( result.cntImplant >0) and  ( result.cntArtTeeth > 0) then
                                           result.iaKind:= 3
                                             else
                                                    if  (result.iaOnly = false) and ( result.cntImplant >0)  then
                                                        result.iaKind:= 4
                                                        else
                                                        if  (result.iaOnly = false) and ( result.cntArtTeeth >0)  then
                                                            result.iaKind:= 5
                                                                else
                                                                if    result.cntImplant >0  then
                                                                result.iaKind:= 1
                                                                else
                                                                  if    result.cntArtTeeth > 0  then
                                                                    result.iaKind:= 2
                                                                     else
                                                                      if  result.iaOnly = false then
                                                                         result.iaKind:= 0 ;


end;


procedure Tjumgum_f.searchJinryo_o(varChart, varJinday : string);
begin
    grdJinO.RowCount := 1;
    with dm_f.sqlSel do
    begin

        close;
        sql.Clear;
        sql.Text := 'select * from jinryo_o ' +#10#13+
                  'where chart=:chart and jin_day=:jin_day'  ;
        paramByName('chart').AsString := varChart;
        paramByName('jin_day').AsString := varJinday;
        open;
        if not isEmpty  then
        begin
            while not Eof do
            begin
                grdJinO.addRow;
                grdJinO.Cells[0, grdJinO.RowCount - 1 ]:= fieldByName('s_key1').AsString;
                grdJinO.Cells[1, grdJinO.RowCount - 1 ]:= fieldByName('jin_order').AsString;
                next;
            end;
        end;

    end;
end;



procedure Tjumgum_f.LoadJinryoData;
const
  selectData  =
    'SELECT chart, jin_day, jongbeul, doc_code, team, nai, simsa, chojae, jubsuak, chong, chung, pregnan, sanjungTeakRye,  isInPat,jubsu_id, isBohum100, isJiwon, ilyunNo, ' +
    #10#13 + '(select inpat_time from ma_jubsu where id=p.jubsu_id) as intime,             ' +
    #10#13 + '(select outpat_time from ma_jubsu where id=p.jubsu_id) as outtime ,           ' +
    #10#13 + ' (select top 1 name from ma_gogek_basic where chart=p.chart) as 성명, ' +
    #10#13 + ' (select top 1  jumin from ma_gogek_basic where chart=p.chart) as 주민, ' +
    #10#13 + 'case when (piboname is null)  then   (select  top 1 piboname from view_gogek where chart=p.chart)  else piboname end as 피보, ' +
    #10#13 + 'case when (kiho is null)      then   (select  top 1 kiho from view_gogek where chart=p.chart) else kiho end as 조합기호, ' +
    #10#13 + 'case when (k_number is null)  then   (select  top 1 k_number from view_gogek where chart=p.chart) else k_number end as 증번호, ' +
    #10#13 + ' (select  top 1 bontype from view_gogek where chart=p.chart) as 본담구분, '
    + #10#13 + ' (select  top 1 special from view_gogek where chart=p.chart) as 장애구분, '
    + #10#13 + ' (select  top 1 jongbeul from view_gogek where chart=p.chart) as 종별, '
    + #10#13 +
    ' (select top 1  saMyunhu from ma_sawon_basic where saID = p.doc_code and ( sajikgub=''1'' and noUse <> ''1'')  ) as MyunhuNo ,'
//      ' (select top 1  saMyunhu from ma_sawon_basic where saTeam = p.makam_sabun and ( sajikgub=''1'' and noUse <> ''1'')  ) as MyunhuNo ,'
//      ' (select top 1  saMyunhu from ma_sawon_basic where saBun = p.makam_sabun and ( sajikgub=''1'' and noUse <> ''1'')  ) as MyunhuNo ,'
    + #10#13 +
    ' (select top 1  saName from ma_sawon_basic where saID = p.doc_code and ( sajikgub=''1'' and noUse <> ''1'') ) as DrName ,'
//      ' (select top 1  saName from ma_sawon_basic where saTeam = p.makam_sabun and ( sajikgub=''1'' and noUse <> ''1'') ) as DrName ,'
//      ' (select top 1  saName from ma_sawon_basic where saBun = p.makam_sabun and ( sajikgub=''1'' and noUse <> ''1'') ) as DrName ,'
    + #10#13 +
    ' (select top 1 insu_code from ma_car_info where id=p.car_id) as car_code, '
    + #10#13 +
    ' (select top 1 insu_jubsu from ma_car_info where id=p.car_id) as car_jubsu, '
    + #10#13 +
    ' (select top 1 insu_jigub from ma_car_info where id=p.car_id) as car_jigub, '
    + #10#13 +
    ' (select top 1 artTeeth1 from ma_gogek_basic where chart=p.chart) as 틀니1, ' +
    #10#13 + ' (select top 1 artTeeth2 from ma_gogek_basic where chart=p.chart) as 틀니2, '
    + #10#13 +
    ' (select top 1 implTeeth1 from ma_gogek_basic where chart=p.chart) as 임플1, ' +
    #10#13 + ' (select top 1 implTeeth2 from ma_gogek_basic where chart=p.chart) as 임플2, '
    + #10#13 + ' bonin, bonin1, jin_time, gongsang, sunapak, makam_chk, ' +
    #10#13 + ' bontype, HwakinNo, gub_gu , wein,  Tjung , KyulKwa , jungyul, jangegigeum, '
    + #10#13 +
    ' (SELECT top 1 cmemo FROM cmemo c where c.chart=p.chart and c.jin_day=p.jin_day and c.team=p.team) as 참고사항, '
    + #10#13 +
    ' (SELECT top 1 seqno FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as 처방번호, '
    + #10#13 +
    ' (SELECT top 1 tjungCode FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as 원외특정구분, '
    + #10#13 +
    ' (SELECT top 1 tjungneyuk FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as 원외특정내역, '

    +  #10#13 + ' (select  top 1 teakRyeCode from ma_gogek_pibo where chart=p.chart and reg_day= p.jin_day ) as 산정특례번호, '
    +  #10#13 + ' (select  top 1 teakRye from ma_gogek_pibo where chart=p.chart and reg_day= p.jin_day ) as 산정특례 '
    + #10#13 + ' FROM jinryo_p p' + #10#13 +
    ' WHERE (jin_day >= :jinday1 ) AND (jin_day <= :jinDay2)                    ' + #10#13 +
    ' and ((chojae <> ''0'')              ' + #10#13 +
//    ' and (chojae <> ''5'')               ' + #10#13 +  // 산정무는 제외
    ' and ( (chojae <> ''9'')  )                                                ' + #10#13 + // 수납만 처리한날
//    ' and jongbeul  in (''1'',''2'',''3'',''5'',''6'', ''8'', ''9'', ''10'',''11'')   '  + #10#13 + // 4:일반은 제외
    ' or (makam_chk = ''9'' and sunapak > 0)                                    ' + #10#13 +
    ' or ((chojae = ''6'') and ((chong > 0) or (chung > 0 ))) )                 ';//   + #10#13 +

  // makam_chk
  // 검진치료면서 총진료비 =0, 청구액 <=0 은 제외    //ToDO : 이젠에서는 왜 안뺐을까?


  selectData_jabo =
    'SELECT chart, jin_day, doc_code, team, jongbeul,simsa, nai, chojae, jubsuak, chong, chung, pregnan, sanjungTeakRye, isBohum100, ilyunNo, ' +
    #10#13 + '(select inpat_time from ma_jubsu where id=p.jubsu_id) as intime,             ' +
    #10#13 + '(select outpat_time from ma_jubsu where id=p.jubsu_id) as outtime ,           ' +
    #10#13 + ' (select name from ma_gogek_basic where chart=p.chart) as 성명, ' +
    #10#13 + ' (select jumin from ma_gogek_basic where chart=p.chart) as 주민, ' +
    #10#13 + ' (select piboname from view_gogek where chart=p.chart) as 피보, ' +
    #10#13 + ' (select kiho from view_gogek where chart=p.chart) as 조합기호, ' +
    #10#13 + ' (select k_number from view_gogek where chart=p.chart) as 증번호, ' +
    #10#13 + ' (select bontype from view_gogek where chart=p.chart) as 본담구분, ' +
//    #10#13 + ' (select bonsanjung from view_gogek where chart=p.chart) as 산정특례번호, '
    #10#13 + ' (select  top 1 teakRyeCode from view_gogek where chart=p.chart) as 산정특례번호, '  +
    #10#13 + ' (select  top 1 teakRye from view_gogek where chart=p.chart) as 산정특례, '
    + #10#13 + ' (select special from view_gogek where chart=p.chart) as 장애구분, '
    + #10#13 + ' (select jongbeul from view_gogek where chart=p.chart) as 종별, '
    + #10#13 +
    ' (select  top 1   saMyunhu from ma_sawon_basic where saID = p.doc_code and  ( sajikgub=''1'' and noUse <> ''1'')  ) as MyunhuNo ,'
    + #10#13 +
    ' (select   top 1  saName from ma_sawon_basic where saID = p.doc_code and  ( sajikgub=''1'' and noUse <> ''1'')  ) as DrName ,'
    + #10#13 +
    ' (select insu_code from ma_car_info where id=p.car_id) as car_code, '
    + #10#13 +
    ' (select insu_jubsu from ma_car_info where id=p.car_id) as car_jubsu, '
    + #10#13 +
    ' (select insu_jigub from ma_car_info where id=p.car_id) as car_jigub, '
    + #10#13 +
    ' (select artTeeth1 from ma_gogek_basic where chart=p.chart) as 틀니1, ' +
    #10#13 + ' (select artTeeth2 from ma_gogek_basic where chart=p.chart) as 틀니2, '

    + #10#13 +' (select top 1 implTeeth1 from ma_gogek_basic where chart=p.chart) as 임플1, '
    + #10#13 + ' (select top 1 implTeeth2 from ma_gogek_basic where chart=p.chart) as 임플2, '
    + #10#13 + ' bonin, bonin1, jin_time, gongsang, sunapak, makam_chk, '
    + #10#13 + ' bontype, HwakinNo, gub_gu , wein,  Tjung , KyulKwa , jungyul, jangegigeum, '
    + #10#13 +
    ' (SELECT top 1 cmemo FROM cmemo c where c.chart=p.chart and c.jin_day=p.jin_day) as 참고사항, '
    + #10#13 +
    ' (SELECT top 1 seqno FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as 처방번호, '
    + #10#13 +
    ' (SELECT top 1 tjungCode FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as 원외특정구분, '
    + #10#13 +
    ' (SELECT top 1 tjungneyuk FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as 원외특정내역 '
    + #10#13 + ' FROM jinryo_p p' + #10#13 +
    ' WHERE (jin_day >= :jinday1 ) AND (jin_day <= :jinDay2)  ' + #10#13 +
    ' and ((chojae <> ''0'')                                       '  + #10#13 +
    ' and (chojae <> ''9'')                                        ' + #10#13 + // 수납만 처리한날
//    ' and jongbeul  in (''1'',''2'',''3'',''5'',''6'', ''8'', ''9'', ''10'',''11'')   ' + #10#13 + // 4:일반은 제외
    ' or (makam_chk = ''9'' and sunapak > 0)                       ' + #10#13 +
    ' or ((chojae = ''6'') and ((chong > 0) or (chung > 0 ))) )    ' ;
  // 검진치료면서 총진료비 =0, 청구액 <=0 은 제외    //ToDO : 이젠에서는 왜 안뺐을까?



  sqlText_Where_jongbeul = ' and jongbeul =:jongbeul';
  sqlText_Where_chart = ' and chart =:chart';
  sqlText_orderby = ' ORDER BY jongbeul , chart, jin_day';

var
  r: Integer;
  o: integer;
  varHwakinNo: string;
  varSangByungCheck: string;
  varRecCount: Integer;
  varJinday: string;
  varChart, varName, varJumin, varPiboName: string;
  varJongbeul: Integer;
  varChojae: Integer;
  varJong:integer;

  varChong, varBonin1, varChung : integer;
  varBonin : double;

  varIaValue : TiaValue;
  varsDanga : integer;


  varIorder : array of string;


  varWonweNo : string; //원외처방전번호
  varWonweTjung : string; //원외 특정내역
  varWonweTjungGubun : string;// fieldByName('원외특정내역').AsString;
   varImpleNo1,  varImpleNo2:string; //임플란트등록번호
   varArt1, varArt2 : string; // 틀니등록번호
   varJubsuEk: integer; //접수액
   varIaOnly, iaOnly : boolean; //임플틀니, 하나만 있는경우

   i, k, iaCnt : integer;
   cntImplant : integer;
   cntArtTeeth : integer;
   iaArtTeethDanga : integer;
   iaImplantDanga : integer;
//   iaDanga : integer;
   iaLists : Tstrings;
   iaKind : integer;


  //진찰료계산용.------
//  jinchalRyoCode : string;
  nChoJae: Integer;
  nAge: Integer;
  dWorkDate: TDateTime;
  jange: boolean;
  yongua: boolean;
  ilban: boolean;
  ifirst: boolean;
  jinilsu: string;
  //진찰료계산용.------

  isPregnan:boolean;

  nSumJin : integer;

  nSum80Chong : integer;
  nSum80Chung : integer;
  nSum80Bonin : integer;

  fSum80Chong : double;
  fSum80Chung : double;
  fSum80Bonin : double;

  nSum90Chong : integer;
  nSum90Chung : integer;
  nSum90Bonin : integer;

  fSum90Chong : double;
  fSum90Chung : double;
  fSum90Bonin : double;

  bonDamCode : string;
  ci : integer;
  kindTag, kindTag2, kindTag3 : double; //1,2,4,8
  sqlCond : string;
  nGubGu : integer;
  isAppluSanjung : boolean;   //산정특례적용 = 1
  aSanJungCode   : string;
  aChamgo : string;


  w: integer;
  chaDeungJinilsu : string;
  sanTeakCode : string;
  juSangRow   : integer;

  nDanga : integer;
  Bonrate : double;

  isJiwon : string;

  cntIorder : integer;

  BStream : TStream;
  isBohum100 : string;

begin


          //건보, 보호, 자보,  산재인지 확인
          kindTag := 0;

          for ci:= 0 to 3 do
          begin
             if checkArray[ci].Checked then
             begin
                 kindTag :=  kindTag +  checkArray[ci].Tag ;
             end;
          end;



          // 진료내역 jinryo_p를 읽어오면서
          // 1. 상병체크
          // 2. 초재진 산정체크
          // 3. 진료일수

          varJinday := '';
          varName := '';
          varChart := '';
          varJongbeul := 1;
          varChojae := 1;
          varJumin := '';
          varPiboName := '';
          r := 1;

          if checkBox4.Checked = false then
             grdMain.RowCount := 1;

          grdReport.RowCount := 1;

          iaCnt :=0; // jinryo_s 내에 있는 임플란트와 틀니 수 (UA???, UB???)

          // Summary
          sumBohumGunsu := 0;
          sumBohumChong := 0;
          sumBohumBonin := 0;
          sumBohumBoninSangHan := 0;
          sumBohumChung := 0;
          sumBohumJiwon := 0;
          sumBohumjangE := 0;
          sumBohumjinChong := 0;
          sumBohumBohun := 0;
          sumBohumHbyH := 0;

          sumBohumHbyHChong := 0;
          sumBohumHbyHChung := 0;
          sumBohumHbyHBonin := 0;

          sumYoyangChong1  := 0;


          sumBohoGunsu := 0;
          sumBohoChong := 0;
          sumBohoBonin := 0;
          sumBohoBoninSangHan := 0;
          sumBohoChung := 0;
          sumBohoJiwon := 0;
          sumBohojangE := 0;
          sumBohojinChong := 0;
          sumBohoBohun := 0;

          sumBohoHbyHChong := 0;
          sumBohoHbyHChung := 0;
          sumBohoHbyHBonin := 0;


          sumJaboGunsu := 0;
          sumJaboChong := 0;
          sumJaboBonin := 0;
          sumJaboBoninSangHan := 0;
          sumJaboChung := 0;
          sumJaboJiwon := 0;
          sumJabojangE := 0;
          sumJabojinChong := 0;
          sumJaboBohun := 0;
          sumJaboHbyH := 0;

          sumSanjeGunsu := 0;
          sumSanjeChong := 0;
          sumSanjeBonin := 0;
          sumSanjeBoninSangHan := 0;
          sumSanjeChung := 0;
          sumSanjeJiwon := 0;
          sumSanjejangE := 0;
          sumSanjejinChong := 0;
          sumSanjeBohun := 0;
          sumSanjeHbyH  := 0;



            //Summary초기화
          grdsummary.floats[1, 1] := 0;   //보험
          grdsummary.floats[2, 1] := 0;
          grdsummary.floats[3, 1] := 0;
          grdsummary.floats[4, 1] := 0;

          grdsummary.floats[1, 2] := 0;   //보호
          grdsummary.floats[2, 2] := 0;
          grdsummary.floats[3, 2] := 0;
          grdsummary.floats[4, 2] := 0;

          grdsummary.floats[1, 3] := 0;  //자보
          grdsummary.floats[2, 3] := 0;
          grdsummary.floats[3, 3] := 0;
          grdsummary.floats[4, 3] := 0;

          grdsummary.floats[1, 4] := 0;   //산재
          grdsummary.floats[2, 4] := 0;
          grdsummary.floats[3, 4] := 0;
          grdsummary.floats[4, 4] := 0;

          grdsummary.floats[1, 5] := 0;   //합계
          grdsummary.floats[2, 5] := 0;
          grdsummary.floats[3, 5] := 0;
          grdsummary.floats[4, 5] := 0;


          k:=1;


     //--------------------------------------------------------------------------------------
     //처방일수, 원장진료일수 구하자....
          chaDeungJinilsu := formatFloat('0000',
          getJinryoilsu(cbYear.text + '-' + cbMonth.text + '-' + cbDay1.text,
          cbYear.text + '-' + cbMonth.text + '-' + cbDay2.text));


          for w:= 0 to WonjangCount-1 do
          begin
                if  wonjangJinryoIlsu ='' then
                     wonjangJinryoIlsu := varDrJumin1[w]+'/'+  inttostr(strtoint(chaDeungJinilsu))
               else
                     wonjangJinryoIlsu :=wonjangJinryoIlsu +'/'+ varDrJumin1[w]+'/'+  inttostr(strtoint(chaDeungJinilsu));

          end;
     //---------------------------------------------------------------------------------------




  with dm_f.sqlwork, grdMain do
  begin
    close;
    sql.Clear;
              // 1=보험 4=일반 5=보호4종 6=보호8종  7=산재 8=자보
              // 9=차상위1종, 10=차상위2종, 11=차상위2종장애인

//              sql.text := selectData;
//              if cb3.Checked = true then
//              begin
//                  sql.text := sql.text +  ' and (jongbeul = ''8'') ' ;
//
//              end;

{            if cb3.Checked = true then  //자보
            begin
              sql.text := selectData_jabo;
              sql.text := sql.text +  sqlText_Where_jongbeul ;
              paramByName('jongbeul').AsString := '8';

            end
            else
            begin
              sql.text := selectData;



              if trim(edtChart.text) <> '' then
              begin
              sql.text := sql.text +  sqlText_Where_chart ;
              paramByName('chart').AsString := edtchart.text;
              end ;
            end;

}

         sqlCond := '';

         while not (kindTag <= 0) do
         begin
              kindTag2 := Power(2, Trunc((Log2(kindTag))));
              kindTag := kindTag - kindTag2;
              kindTag3 := Log2(kindTag2) + 1;
              case strtoInt(FloatToStr(kindTag3)) of
                  //    ' and jongbeul  in (''1'',''2'',''3'',''5'',''6'', ''8'', ''9'', ''10'',''11'')   ' + #10#13 + // 4:일반은 제외
                        //Jongbeul ==4 : 일반
                   1:
                        begin
                          // showmessage('0'); //건보
                              if trim(sqlCond) = '' then
                                   sqlCond  :=  '( jongbeul  in (''1'',''9'', ''10'',''11'') ) '
                               else
                                   sqlCond  := trim(sqlCond) + ' or ( jongbeul  in (''1'',''9'', ''10'',''11'') ) ';

                        end;
                   2:
                        begin
                         //  showmessage('1'); //급여
                              if trim(sqlCond) = '' then
                              sqlCond :=  '( jongbeul  in (''2'',''3'',''5'',''6'') ) '
                               else
                               sqlCond := trim(sqlCond) + ' or ( jongbeul  in (''2'',''3'',''5'',''6'') ) ';
                        end;
                   3:
                        begin
                         //  showmessage('2'); //자보
                              if trim(sqlCond) = '' then
                               sqlCond := '( jongbeul  in (''8'') ) '
                               else
                                sqlCond :=trim(sqlCond) + ' or ( jongbeul  in (''8'') ) ';
                        end;
                   4:
                        begin
                         //  showmessage('3'); //산재
                             if trim(sqlCond) = '' then
                                sqlCond := '( jongbeul  in (''7'') ) '
                               else
                                sqlCond := trim(sqlCond) + ' or ( jongbeul  in (''7'') ) ';
                        end;
              end;
         end;

         sql.text := selectData + ' and ' + '('+ sqlCond + ')';


         if trim(edtChart.text) <> '' then
         begin
              sql.text := sql.text +  sqlText_Where_chart ;
              paramByName('chart').AsString := edtchart.text;
         end;


         //외래, 입원구분
         if  cbGubunOut.checked   then
         begin
              sql.text := sql.text +  ' and isInpat = ''0'' ' ;
         end
         else
             if  cbGubunIn.checked   then
         begin
              sql.text := sql.text +  ' and (isInpat = ''1'' or isInpat = ''2'')' ;
         end ;

         //심사완료 구분
         if  cbSimsaEnd.checked   then
         begin
              sql.text := sql.text +  ' and simsa = ''1'' ' ;
         end
               else
                   if  cbSimsaExcept.checked   then
               begin
                    sql.text := sql.text +  ' and simsa = ''3'' ' ;
               end

                   else
                       if  cbBowan.checked   then
                   begin
                        sql.text := sql.text +  ' and simsa = ''4'' ' ;
                   end

                       else
                           if  cbNurak.checked   then
                       begin
                            sql.text := sql.text +  ' and simsa = ''5'' ' ;
                       end;




         sql.text := sql.text + sqlText_orderby;


         paramByName('jinday1').AsString := cbYear.text + '-' + cbMonth.text + '-' +
           cbDay1.text;
         paramByName('jinday2').AsString := cbYear.text + '-' + cbMonth.text + '-' +
           cbDay2.text;


       open;


    if  not dm_f.sqlwork.isEmpty then
    begin
      varRecCount := RecordCount;
      AdvProgressBar1.Min := 0;
      AdvProgressBar1.Max := varRecCount;

      if checkBox4.Checked = false then
      begin
          grdMain.RowCount := RecordCount + 1;
          r := 1;
      end
       else
       begin
          grdMain.RowCount := grdMain.RowCount + RecordCount ;
          r:=  grdMain.RowCount - 1  ;

       end;


      while not eof do
      begin




        //일단 건강보험에 대해서 입원은 20%적용
        if fieldByName('isInPat').AsInteger = 0 then
           BonRate := 0.3
           else  if fieldByName('isInPat').AsInteger = 1 then
            BonRate := 0.2
              else  if fieldByName('isInPat').AsInteger = 2 then
               BonRate := 0.2;


//             varIorder := ''; //jinryo_o [iOrder]
             varIaOnly := false;


            varJinday := fieldByName('jin_day').AsString;
            varName := fieldByName('성명').AsString;
            varChart := fieldByName('chart').AsString;
            varWonweNo := fieldByName('처방번호').AsString; // 원외처방전번호
            varWonweTjung :=   fieldByName('원외특정구분').AsString; // 원외특정구분
            varWonweTjungGubun := fieldByName('원외특정내역').AsString;
            varImpleNo1 := fieldByName('임플1').AsString; // 임플란트 등록번호1
            varImpleNo2  :=fieldByName('임플2').AsString; // 임플란트 등록번호2
            varArt1 := trim(fieldByName('틀니1').AsString) ;//
            varArt2 := trim(fieldByName('틀니2').AsString) ;//

            bondamCode:=  trim( fieldByName('bontype').AsString);

            aSanJungCode:= copy( trim(  fieldByName('산정특례').AsString) ,1,4);

            if FieldByName('pregnan').AsString ='1' then
               isPregnan := true
            else
               isPregnan := false;

           if FieldByName('sanjungTeakRye').AsString ='1' then
               isAppluSanjung := true
            else
               isAppluSanjung := false;





            // ToDo:진료당시의 종별로 해야한다
            varJongbeul := fieldByName('jongbeul').AsInteger;
            // fieldByName('종별').AsString;

            varChojae := fieldByName('chojae').AsInteger;
            varJumin := fieldByName('주민').AsString;
            varPiboName := fieldByName('피보').AsString;


          //  varJubsuEk := fieldByName('jubsuak').AsInteger;
           //ToDo : 진찰료 다시 계산 2017-10-03

             //진찰료코드 만들기---------------------------------------------------------

                  yongua := false;
                  ilban := false;
                  ifirst := false;


              nAge := fieldByName('nai').Asinteger;//grdMain.ints[7, i];
              if   fieldByName('장애구분').AsString ='1' then
             // if grdMain.ints[12, i] = 1 then
                jange := true
              else
                jange := false;



             if checkint( fieldByName('gub_gu').AsString ) = true then
             begin
                  nGubGu :=    fieldByName('gub_gu').AsInteger;
             end
             else
             begin
                  nGubGu :=   0;
             end;

            isBohum100 := fieldByName('isBohum100').AsString;
//              case nGubGu of //grdMain.ints[28, i] of
//                1:
//                  yongUa := true;
//                2:
//                  ilban := true;
//                3:
//                  ifirst := true;
//                4: ;
//                 // ifirst := true;
//                5:;
//                //  iCancer := true;
//              end;



//            jinchalRyoCode := MakeJinchalRyoCode(varChoJae, nAge, strtodate(varJinday), jange,
//                                yongua, ilban, ifirst);
//
//
//            varJubsuEk :=  GetJinchalRyo( jinchalRyoCode, varJinday); //진찰료

         //-------------------------------------------------------------------------
         //진찰료를 계산하자.
              nJinchalRyo :=
                Jinchalryo_make(configvalue.varGubun,
                // '의원' ,  // 병원, 의원, 종합병원
                nSumBohumChong + nJinchalRyo, // nSumTotal,// nSumChong,// varChong ,
                 false, // checkInt(varWonweNo), // boolWonwe: Boolean;
                 varJinday,//FormatDateTime('YYYY-MM-DD', dmain.Date), // varJinday,  //YYYY-MM-DD
                 copy(fieldByName('jin_time').AsString,1,2)
                        +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                 varChojae - 1 ,
                 varJongbeul,
                 nAge,
                 DayOfWeek(strtodate(varJinday)) = 7, // 토요일여부 - 토요가산적용
                 nGubGu,//iGumjin,// cbSanCode3.itemindex;
                // false,//Yongua,//영유아구분
                // false,//ilban, //건강검진
                // false,//ifirst,//생애전환기검진
                 bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                '', // varBonjun : string;
                0, // varCT : integer; //CT금액
                0, // iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                false, // iaOnly, //틀니여부
                false, // 틀니수리여부
                false, // iaOnly, //임플란트여부
                false, // 다른 치료 여부
                nBoman, // 의약품관리료
                false, // 공상여부
                false, // jange, //장애여부
                false, // 급여제한자여부
                false); // isPregnan);  //임신여부

               calcSatGasanGeum(configvalue.varGubun,
                     varJinday,
                                    copy(fieldByName('jin_time').AsString,1,2)
                        +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                      //   edtSimTime.text,
                      varChojae - 1,
                      StrToInt(jumintoNai(varJumin)),
                      DayOfWeek(strtodate(varJinday)) = 7);





               nJinchalRyo :=  nJinchalRyo +  SatGasangeum2;

               varJubsuEk := nJinchalRyo;
         //-------------------------------------------------------------------------


        //toDo : 임플란트 틀니 명세서 분리작업용 자료 생성==========================
            //1. jinryo_p에서 그리드에 집어넣자.
            //2. jinryo_s를 보고 UA, UB코드가 있는 경우(su_gu3=28)를 찾는다.
            //3. UA, UB코드 갯수(iaCnt)만큼 for문으로 돌려준다.

       //    varIaValue := TiaValue.create(self);
           varIaValue := CheckIAvalue(varChart, varJinday);       //UA 틀니 UB임플란트 도 분리 해야 한다.

        //    iaDanga   := CheckIAvalue(varChart, varJinday).iaDanga;
        //    iaOnly    := CheckIAvalue(varChart, varJinday).iaOnly;
        //    variOrder := CheckIAvalue(varChart, varJinday).iOrder;

         //   iaDanga   := varIaValue.iaDanga;
            iaArtTeethDanga  := varIaValue.iaArtTeethDanga;
            iaImplantDanga  := varIaValue.iaImplantDanga;


            iaOnly    := varIaValue.iaOnly;



            cntIorder := varIaValue.cntIorder;


            setLength(variOrder, cntIorder);

           for i:= 0 to  cntIorder -1 do
           begin
            variOrder[i] := varIaValue.iOrder[i];
           end;

           // variOrder := varIaValue.iOrder;

            iaKind := varIaValue.iaKind;

            cntImplant := varIaValue.cntImplant;
            cntArtTeeth := varIaValue.cntArtTeeth;


           iaLists := Tstringlist.Create;
           iaLists.Clear;
           iaLists.Assign( varIaValue.iaList );
        //   iaLists.Assign( CheckIAvalue(varChart, varJinday).iaList );

          //iaKind 임플란트,  틀니 명세서 분리 방법
          //                                iaCnt
          //0. 기본
          //1. 임플란트만 있는경우             1
          //2. 틀니만 있는경우                 1
          //3. 임플란트와 틀니                 2
          //4. 임플란트와 타상병               2
          //5. 틀니와 타상병                   2
          //6. 임플란트와틀니와 타상병         3
          //7. 틀니와 틀니수리                 1
          //8. 틀니와 틀니수리와 타상병        2
          //9. 틀니수리                        1
          //10. 틀니수리와 타상병               2
          //11. 틀니수리와 임플란트와 타상병    3
          //12. 틀니와 틀니수리와 임플란트와 타상병    3



   {       if  ( iaDanga > 0 ) and  (iaOnly = false)  then  //임플란트 또는 틀니와  타상병 같이 있을경우
          begin
             varIaOnly := true;
             iaCnt := 2;  // CheckIAvalue(varChart, varJinday).iaCount + 1


          end
          else
                if  (  iaDanga > 0 ) and  ( iaOnly = true)  then  //임플만 있는경우
                    begin
                       varIaOnly := false;
                       iaCnt := 1;
                       varJubsuEk:=0;
                    end
                    else  //임플 없는 경우
                        begin
                          varIaOnly := false;
                          iaCnt := 1;
                        end;
 }


        //   if iaLists.Count > 0 then
        //   begin
        //      showmessage( iaLists.Strings[0]);
        //   end;
         //명세서분리용 자료생성 끝=============================================




         //   varChong := fieldByName('bonin').AsInteger  + fieldByName('chung').AsInteger;


            varBonin := fieldByName('bonin').AsInteger;
            varChung := fieldByName('chung').AsInteger;

            varBonin1 := fieldByName('bonin1').AsInteger;

          //   nChoJae := varChojae;//grdMain.ints[31, i];



            //진찰료에 토요일 가산금액을 더해 줘야 한다.
            calcSatGasanGeum(configvalue.varGubun , varJinday,
              copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00',
              varChojae +1   , nAge, DayOfWeek( strtoDate(varJinday) ) = 7);




          //1.진료비 총금액을 다시 계산하자...
          // 소아가산코드가 2017.7.1일부터 적용되지 않아야 하는데 적용되어
          //수납된경우가 있어서 다시 계산.
          // SetJinSO(varChart, varJinday, varJongbeul-1,  inttostr(nAge), false);
                        //진료내역불러오기
            setJinryo_s( fieldByName('jubsu_id').AsString,
                grdJX2,
                varChart,
                '', //Team
                '', //Doc_Code
                fieldByName('isInPat').AsString,  //isInPat
                  varJinday,  // sfinday
                  varJinday,
                  1);



            setJinryo_o(grdSangbyung,
              varChart,
              '',
               fieldByName('isInPat').AsString,
               fieldByName('jubsu_id').AsString,
               sanTeakCode,
               juSangRow,   //주상병 있는 Row
               varJinday,
               varJinday);

//            CalcSum(jinryo_f.grdJx2,
//                   jinryo_f.grdCost,
//                   ma_chart,
//                   configvalue.varGubun,
//                   FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),
//                   jinryo_f.cbJong.itemindex,
//                   jinryo_f.lblAge.caption,
//                   jinryo_f.chbYagan.checked,
//                   jinryo_f.edit3.text );   // 의약분업예외

               CalcSum(grdJx2,  //진료내역
                  grdCost,      //항목별 내역
                  varChart ,
                  configvalue.varGubun,
                  varjinday,
                  varJongbeul - 1,//jinryo_f.cmbJongbeul.ValueIndex,
                  inttostr(nAge),//jinryo_f.lblAge.caption,
                  fieldByName('isInPat').AsString,  //isInPat
                  false,//jinryo_f.chbYagan.checked,
                  '',  // 의약분업예외코드
                  true);// ToDO : 청구점검에서는 자동으로 들어가는 주사료 등 제외

//     numchong.Text  := formatFloat('#,0' ,nSumBohumChong + nJinchalryo +nSumBigubChong); //nSumTotal + nJinchalryo);
//     numBonin.Text  := formatFloat('#,0' ,nSumBonin + nSumBigubChong);
//     numJinchal.Text  :=   FormatFloat('#,0',nJinchalryo);




            //2.SetJinSO에서 만들어준 행위 + 재료  금액을 불러온다.
 //           nSumJin:= round(nSumBohumChong + nSumBigubChong);//(*   *)alGrid14.ints[2, 1];
            nSumJin:= round(nSumBohumChong );//(*   *)alGrid14.ints[2, 1];

            //3. 행위 + 재료  + 진찰료 + 토요진찰료 가산금
          //  varChong:= nJinchalRyo + SatGasangeum + nSumJin;
            varChong:=   nSumJin;

            //총액 10원미만 절사
             // 10*  Floor(( varDenture * 0.1  )/10);
        //    varChong :=   ( Ceil(nJinchalRyo + SatGasangeum + nSumJin) div 10) *10;
            varChong :=   ( Ceil(  nSumJin) div 10) *10;

            varBonin :=  CalcBonin(
                     configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                     fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                     varChong ,
                     checkInt(varWonweNo), // boolWonwe: Boolean;
                     varJinday,  //YYYY-MM-DD
                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                     varChojae - 1 ,
                     varJongbeul,
                     nAge,
                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                     nGubGu, //검진종류
                     bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                     '',//varBonjun : string;
                     nCTMRI,//varCT : integer; //CT금액
                     0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                     0,  //100by30
                     0,  //100by50
                     0,  //100by80
                     0,  //100by90
                     isBohum100,
                     aSanJungCode,   //산정특례코드
                     isAppluSanjung,   //산정특례적용 여부
                     isJiwon,   //산정특례지원금 여부 H
                     iaOnly, //틀니여부
                     false,  //틀니수리여부
                     iaOnly, //임플란트여부
                     false, //다른 치료 여부
                     nBoman,     //의약품관리료
                     false, //공상여부
                     jange, //장애여부
//                     Yongua,//영유아구분
//                     ilban, //건강검진
//                     ifirst,//생애전환기검진
                     false,//급여제한자여부
                     isPregnan);  //임신여부

                varChung := varChong -  round( varBonin);






          //iaKind 임플란트,  틀니 명세서 분리 방법
          //                                iaCnt
          //0. 기본
          //1. 임플란트만 있는경우             1
          //2. 틀니만 있는경우                 1
          //3. 임플란트와 틀니                 2
          //4. 임플란트와 타상병               2
          //5. 틀니와 타상병                   2
          //6. 임플란트와틀니와 타상병         3
          //7. 틀니와 틀니수리                 1
          //8. 틀니와 틀니수리와 타상병        2
          //9. 틀니수리                        1
          //10. 틀니수리와 타상병               2
          //11. 틀니수리와 임플란트와 타상병    3
          //12. 틀니와 틀니수리와 임플란트와 타상병    3

                    case iaKind of

                      //iaKind 임플란트,  틀니 명세서 분리 방법
                      //                                  iaCnt
                      0://. 기본
                        begin
                           varIaOnly := false;
                           iaCnt := 1;
                        end;
                      1, 2://. 틀니만, 임플란트만 있는경우  1
                        begin
                            iaCnt := 1;
                        end;
                      3://. 임플란트와 틀니                 2
                        begin
                           iaCnt := 2;
                        end;
                      4://. 임플란트와 타상병               2
                        begin
                           iaCnt := 2;
                        end;
                      5://. 틀니와 타상병                   2
                        begin
                           iaCnt := 2;
                        end;
                      6://. 임플란트와틀니와 타상병         3
                        begin
                           iaCnt := 3;
                        end;

                      7://. 틀니와 틀니수리                 1     //===>2
                       begin
                           iaCnt := 1;
                        end;
                      8://. 틀니와 틀니수리와 타상병        2     //===>5
                       begin
                           iaCnt := 2;
                        end;
                      9://. 틀니수리                        1     //===>2
                       begin
                           iaCnt := 1;
                        end;
                      10://. 틀니수리와 타상병               2    //===>5
                       begin
                           iaCnt := 2;
                        end;
                      11://. 틀니수리와 임플란트와 타상병    3    //===>6
                       begin
                           iaCnt := 3;
                        end;
                      12://.틀니와 틀니수리와 임플란트와 타상병  3 //===>6
                       begin
                           iaCnt := 3;
                        end;

                    end;



         cells[47, r] := '0' ; //임플란트(1) 틀니(2)  일반(0)


          for i:= 0 to iaCnt - 1   do  //iaCnt는 기본적으로 1이고 일반진료를 먼저 쓴다.
          begin
                 case i of
                  0: //일반진료이거나 임플, 틀리이거나.
                        begin

                        if iaKind in [4,5,6,  8, 10, 11, 12]  then  //일반진료 포함
                        begin
                           //타상병 있으면 일반진료용 명세서
                           //진찰료코드 ---------------------------------------------------------
                            nChoJae := varChojae;//grdMain.ints[31, i];
                            nAge := fieldByName('nai').Asinteger;//grdMain.ints[7, i];
                            dWorkDate := strtodate(varJinday);//  strtodate(grdMain.cells[4, i]);


                            varChojae := 2; //재진으로,,,

                            jinchalRyoCode := MakeJinchalRyoCode(nChoJae,
                                nAge,
                                dWorkDate,
                                jange,
                                nGubGu );
//                                yongua,
//                                ilban,
//                                ifirst);
                             //진찰료코드 ---------------------------------------------------------


                            varJubsuEk :=  GetJinchalRyo( jinchalRyoCode, varJinday); //진찰료

                            varChong := varChong - (iaImplantDanga + iaArtTeethDanga) ;// +  varJubsuEk  ;



                            varBonin :=
                                 CalcBonin(
                                   configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                   fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                   varChong ,
                                   checkInt(varWonweNo), // boolWonwe: Boolean;
                                   varJinday,  //YYYY-MM-DD
                                   copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                   varChojae - 1 ,
                                   varJongbeul,
                                   nAge,
                                   DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                   0, //검진종류
                                   bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                   '',//varBonjun : string;
                                   nCTMRI,//varCT : integer; //CT금액
                                   0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                   0,//100by30
                                   0,//100by50
                                   0,//100by80
                                   0,//100by90
                                    isBohum100,
                                   '',   //산정특례코드
                                   false,   //산정특례적용 여부
                                   isJiwon,   //산정특례지원금 여부 H
                                   false, //틀니여부
                                   false, //틀니수리여부
                                   false, //임플란트여부
                                   false, //다른 치료 여부
                                   nBoman,     //의약품관리료
                                   false, //공상여부
                                   jange, //장애여부
              //                     Yongua,//영유아구분
              //                     ilban, //건강검진
              //                     ifirst,//생애전환기검진
                                   false,//급여제한자여부
                                   isPregnan);  //임신여부

//                               CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     0,//varDenture : integer;  //틀니 금액
//                                     false, //틀니여부
//                                     false, //틀니수리여부
//                                     false, //임플란트여부
//                                     false, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부

                          //    varBonin := varBonin -  (100 * Floor((iaDanga * 0.5) / 100))  +  varJubsuEk  ;
                              varChung := varChong -  round( varBonin);

                              cells[47, r] := '0' ; //임플란트(1) 틀니(2)  일반(0)

                        end
                        else  //일반진료 아니면 틀니, 아니면 임플란트
                        if iaKind in [1]  then //임플란트용  명세서
                        begin
                             //임플란트 만 있는 경우

                             // addrow; //0일때는 필요없다.

                              varJubsuEk := 0; //진찰료

                              varChong :=  iaImplantDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;


                             varBonin :=
                              CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                          isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         false, //틀니여부
                                         false, //틀니수리여부
                                         true, //임플란트여부
                                         false, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부


//                                CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니 , 임풀금액
//                                     false, //틀니여부
//                                     false, //틀니수리여부
//                                     true, //임플란트여부
//                                     false, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부

                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] := '1' ;  //임플란트(1) 틀니(2)  일반(0)

                        end
                        else
                        if iaKind in [2, 7, 9]  then //틀니
                            // 2 틀니만 7틀니와 틀리수리
                            // 9 틀니수리
                        begin

                            //  틀리만 있는 경우

                              //addrow;////0일때는 필요없다.

                              varJubsuEk := 0; //진찰료

                              if iaKind = 9 then
                             begin
                              //3. 행위 + 재료  + 진찰료 + 토요진찰료 가산금
                              //틀니수리가 있을 경우는 종별가산금 붙여야...

                              varChong :=    iaArtTeethDanga;

                              varBonin :=

                                     CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                          isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         false, //틀니여부
                                         true, //틀니수리여부
                                         false, //임플란트여부
                                         false, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부

//                                 CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니 금액
//                                     false, //틀니여부
//                                     true, //틀니수리여부
//                                     false, //임플란트여부
//                                     false, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부
                             end
                             else
                             begin
                              varChong :=    iaArtTeethDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;

                              varBonin :=
                                      CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                          0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                           isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         true, //틀니여부
                                         false, //틀니수리여부
                                         false, //임플란트여부
                                         false, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부


//                                  CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니 금액
//                                     true, //틀니여부
//                                     false, //틀니수리여부
//                                     false, //임플란트여부
//                                     false, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부
                             end;






                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] := '2' ; //임플란트(1) 틀니(2)  일반(0)


                        end
                          else
                          if iaKind in [3]  then //임플란트와 틀니 가 함께 있을때 첫번째 임플란트
                          begin

                               //addrow; //0일때는 필요없다.

                              varJubsuEk := 0; //진찰료

                              varChong   :=  iaImplantDanga  ;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;



                               varBonin :=
                                    CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                          isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         false, //틀니여부
                                         false, //틀니수리여부
                                         true, //임플란트여부
                                         false, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부
//                                  CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니, 임풀 금액
//                                     false, //틀니여부
//                                     false, //틀니수리여부
//                                     true, //임플란트여부
//                                     false, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부

                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] :=  '1' ; //isAI //임플란트(1) 틀니(2)  일반(0)


                           end;


                        end;
                       1 :
                       begin
                        if iaKind in [6, 11, 12]  then //틀니  + 임플란트 + 일반지료  중 틀니
                        begin
                              addrow;//

                              varJubsuEk := 0; //진찰료

                              varChong :=    iaArtTeethDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;



                              varBonin :=
                                  CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                          0,//100/30
                                          0,//100/50
                                          0,//100/80
                                         0,//100/90
                                           isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         false, //틀니여부
                                         true, //틀니수리여부
                                         false, //임플란트여부
                                         false, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부

//                                 CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니 금액
//                                     false, //틀니여부
//                                     true, //틀니수리여부
//                                     false, //임플란트여부
//                                     false, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부

                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] := '2' ; //임플란트(1) 틀니(2)  일반(0)


                        end
                        else



                              if iaKind in [5, 8, 10]  then //틀니  + 일반지료
                              begin
                                    addrow;//

                                    varJubsuEk := 0; //진찰료

                                    varChong :=    iaArtTeethDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;



                              varBonin :=
                                   CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                          0,//100/30
                                          0,//100/50
                                          0,//100/80
                                         0,//100/90
                                           isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         true, //틀니여부
                                         false, //틀니수리여부
                                         false, //임플란트여부
                                         true, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부

//                                 CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니 금액
//                                     true, //틀니여부
//                                     false, //틀니수리여부
//                                     false, //임플란트여부
//                                     true, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부

                                    varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                                    varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                                    cells[47, r] := '2' ; //임플란트(1) 틀니(2)  일반(0)


                              end
                              else

                              if iaKind in [4]  then //임플란트용  명세서용 임플란트
                              begin
                                   //임플란트+ 일반진료 가  있는 경우

                                    addrow;

                                    varJubsuEk := 0; //진찰료

                                    varChong :=  iaImplantDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;



                               varBonin :=
                               CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                          isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         false, //틀니여부
                                         false, //틀니수리여부
                                         true, //임플란트여부
                                         true, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부

//                                  CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니,ㅡ임풀 금액
//                                     false, //틀니여부
//                                     false, //틀니수리여부
//                                     true, //임플란트여부
//                                     true, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부

                                    varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                                    varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                                    cells[47, r] := '1' ;  //임플란트(1) 틀니(2)  일반(0)

                                  end
                                  else
                                    if iaKind in [3]  then //임플란트와 틀니 가 함께 있을때 두번째 틀니
                                    begin

                                        addrow; //새 행을 추가하여 명세서를 한장 더 생성하자.

                                        varJubsuEk := 0; //진찰료

                                        varChong   :=   iaArtTeethDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;


                               varBonin :=

                               CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                           0,//100/30
                                           0,//100/50
                                           0,//100/80
                                         0,//100/90
                                            isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         true, //틀니여부
                                         false, //틀니수리여부
                                         false, //임플란트여부
                                         false, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부
//                                 CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                    bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니 금액
//                                     true, //틀니여부
//                                     false, //틀니수리여부
//                                     false, //임플란트여부
//                                     false, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부

                                        varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                                        varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                                        cells[47, r] := '2' ; //임플란트(1) 틀니(2)  일반(0)


                                     end;


                         end;
                       2 :
                       begin
                        if iaKind in [6, 11, 12]  then //틀니  + 임플란트 + 일반지료  중 임플란트
                        begin
                              addrow;//

                              varJubsuEk := 0; //진찰료

                              varChong :=    iaImplantDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;


                              varBonin :=
                              CalcBonin(
                                         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
                                         fieldByName('isInPat').AsInteger ,//0,//0 :외래, 1: 입원
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
                                         0, //검진종류
                                         bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT금액
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                           isBohum100,
                                         '',   //산정특례코드
                                         false,   //산정특례적용 여부
                                         isJiwon,   //산정특례지원금 여부 H
                                         false, //틀니여부
                                         false, //틀니수리여부
                                         true, //임플란트여부
                                         true, //다른 치료 여부
                                         nBoman,     //의약품관리료
                                         false, //공상여부
                                         jange, //장애여부
                    //                     Yongua,//영유아구분
                    //                     ilban, //건강검진
                    //                     ifirst,//생애전환기검진
                                         false,//급여제한자여부
                                         isPregnan);  //임신여부
//                               CalcBonin(configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //토요일여부 - 토요가산적용
//                                     bonDamCode,//  varbonDamCode:string;  //보험 본인부담코드
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT금액
//                                     varChong,//varDenture : integer;  //틀니 금액
//                                     false, //틀니여부
//                                     false, //틀니수리여부
//                                     true, //임플란트여부
//                                     true, //다른 치료 여부
//                                     nBoman,     //의약품관리료
//                                     false, //공상여부
//                                     jange, //장애여부
//                                     Yongua,//영유아구분
//                                     ilban, //건강검진
//                                     ifirst,//생애전환기검진
//                                     false,//급여제한자여부
//                                     isPregnan);//임신여부

                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] := '1' ; //임플란트(1) 틀니(2)  일반(0)
                            end;


                         end;

                end;


            ints[48, r] := iaKind ;

            cells[46, r] :=varIorder[cntIorder - 1] ;

            if isPregnan = true then
                cells[49, r] :='1'
            else
                cells[49, r] :='0';

            addcheckbox(1, r, false, false);

            cells[2, r] := varChart;

            cells[3, r] := varName;
            cells[4, r] := varJinday;

            cells[5, r]  := loadChojeName(inttostr(varChojae));
            cells[6, r]  := loadJongByulName(inttostr(varJongbeul));

//            case varChojae of
//              1:
//                cells[5, r] := '초진';
//              2:
//                cells[5, r] := '재진';
//              3:
//                cells[5, r] := '심야초진';
//              4:
//                cells[5, r] := '심야재진';
//              5:
//                cells[5, r] := '산정무';
//              6:
//                cells[5, r] := '틀니';
//              7:
//                cells[5, r] := '초진+심야재진';
//              8:
//                cells[5, r] := '재진+심야재진';
//            end;

            // 1=보험 2=보호1종 3=보호2종 4=일반 5=보호4종 6=보호8종  7=산재 8=자보
            // 9=차상위1종, 10=차상위2종, 11=차상위2종장애인
//            case varJongbeul of
//              1:  cells[6, r] := '보험'            ;
//              2:  cells[6, r] := '보호1종'         ;
//              3:  cells[6, r] := '보호2종'         ;
//              4:  cells[6, r] := '일반'            ;
//              5:  cells[6, r] := '보호4종'         ;
//              6:  cells[6, r] := '보호8종'         ;
//              7:  cells[6, r] := '산재'            ;
//              8:  cells[6, r] := '자보'            ;
//              9:  cells[6, r] := '차상위1종'       ;
//              10: cells[6, r] := '차상위2종'       ;
//              11: cells[6, r] := '차상위2종 장애인';
//            end;

            cells[7, r] := fieldByName('nai').AsString;

            cells[8, r] := varJumin; // 주민번호
            cells[9, r] := varPiboName; // 피보험자
            cells[10, r] := fieldByName('증번호').AsString; // 증번호
            cells[11, r] := fieldByName('조합기호').AsString; // 조합기호
            cells[12, r] := fieldByName('장애구분').AsString; // 장애

            cells[13, r] := fieldByName('jin_time').AsString;
            cells[14, r] := varWonweNo;


            if varJongbeul  in [8] then // 자동차보험
            begin
                 ints[15, r] := fieldByName('bonin').AsInteger
                       + fieldByName('chung').AsInteger; //총금액
                        //fieldByName('chong').Asinteger - fieldByName('bonin1').Asinteger ;
                 ints[16, r] := 0;//fieldByName('bonin').AsString;  //본인부담액
                 ints[17, r] := fieldByName('bonin').Asinteger
                     + fieldByName('chung').Asinteger;  //청구금액
                 ints[18, r] := fieldByName('bonin1').Asinteger; //비보험

            end
            else
            begin             //10원미만 절사 안한 값을 넣고,
                 ints[15, r] := nSumJin;//varChong;//fieldByName('bonin').AsInteger  + fieldByName('chung').AsInteger ;//fieldByName('chong').Asinteger;

                 ints[16, r] := round(varBonin);//fieldByName('bonin').AsInteger;
                 ints[17, r] := varChung;//fieldByName('chung').AsInteger;


                 ints[18, r] := varBonin1;//fieldByName('bonin1').AsInteger;

            end;





            if fieldByName('산정특례번호').AsString <> '' then
              cells[20, r] := fieldByName('산정특례번호').AsString; // gogek_view
            // else
            // cells[20, r] := fieldByName('Tjung').AsString; // jinryo_p

            cells[21, r] := fieldByName('gongsang').AsString;

            if (fieldByName('kyulkwa').AsString = '') or
              (fieldByName('kyulkwa').AsString = '0') then
              cells[22, r] := '1'
            else
              cells[22, r] := fieldByName('kyulkwa').AsString;

        //    aChamgo:=   fieldByName('참고사항').AsString; // 참고사항


          //  richedit1.Lines.Text :=  AdjustLineBreaks( fieldByName('참고사항').AsString);

             richedit1.Clear;

//             richedit1.text := StringReplace( fieldByName('참고사항').AsString,
//             #13#10, '', [rfReplaceAll]);
             richedit1.text :=  fieldByName('참고사항').AsString;
             RichToCell(23, r, richedit1);
           //   BStream := CreateBlobStream(fieldByname('참고사항'), bmRead);
           //   richedit1.lines.loadfromStream(BStream)  ;
           //   BStream.Free;
          //  richedit1.PlainText := true;

          //  aChamgo:= richedit1.Text;

          //  cells[23, r] :=AdjustLineBreaks(  aChamgo);
         //   cells[23, r] :=  aChamgo;

         // RichToCell(gridDescription, grdProgress.Row, richedit1);



            cells[24, r] := ''; // 사유
            cells[25, r] := ''; // 명일련
        //    if fieldByName('본담구분').AsString <> '' then
        //      cells[26, r] := fieldByName('본담구분').AsString // view_gogek에서 온거..
        //    else
              cells[26, r] :=   bondamCode;// fieldByName('bontype').AsString; // jinryo_p에서 온거..

            varHwakinNo := fieldByName('HwakinNo').AsString;
            // 진료확인번호 38510294201206230908625 요양기관기호(8)+년도(CC)+확인번호

            if Length(varHwakinNo) > 13 then
              varHwakinNo := copy(varHwakinNo, Length(varHwakinNo) - 12, 13);

            cells[27, r] := varHwakinNo; // 확인번호

            cells[28, r] := fieldByName('gub_gu').AsString;
            // 영유아검진당일 // gub_gu 영유아일반검진 영유아=1, 일반=2, 생애최초=3

            if varArt1 <> '' then  //fieldByName('틀니1').AsString
            begin
                cells[29, r] := varArt1;// fieldByName('틀니1').AsString; // 틀니등록번호



                if (varArt1 <> '') and (varArt2 <> '') then  //fieldByName('틀니2').AsString
                    cells[29, r] := varArt1 + '/' +    varArt2; // 틀니등록번호

            end
            else
            begin
              if varArt2 <> '' then
                cells[29, r] := varArt2; // 틀니등록번호

            end;


            ints[31, r] := varChojae;
            ints[32, r] := varJongbeul;

            ints[34, r] := varJubsuEk; // 진찰료



             cells[19, r] := fieldByName('wein').AsString;
             cells[30, r] := fieldByName('jungyul').AsString; // 정액정율구분
             ints[33, r] := fieldByName('jangegigeum').AsInteger; // 장애기금

             cells[35, r] := varWonweTjung;  // 원외특정구분
             cells[36, r] := varWonweTjungGubun;// 원외특정내역

          //   cells[37, r] := fieldByName('Tjung').AsString; // 진료_p 특정내역
             cells[37, r] := fieldByName('산정특례').AsString;  //ma_gogek_pibo TeakryeCode
             cells[38, r] := fieldByName('DrName').AsString; // 담당의명

             cells[39, r] := fieldByName('MyunhuNo').AsString; // 면허번호

             cells[40, r] := fieldByName('car_code').AsString; // 보험사코드
             cells[41, r] := fieldByName('car_jubsu').AsString; // 접수번호
             cells[42, r] := fieldByName('car_jigub').AsString; // 지급보장번호
             cells[43, r] := varImpleNo1;//fieldByName('임플1').AsString; // 임플란트 등록번호1
             cells[44, r] := varImpleNo2;//fieldByName('임플2').AsString; // 임플란트 등록번호2


             //ToDO : 저장했던 명일련번호를 DB에서 가져오자.
             if  fieldByName('ilyunNo').AsString <> ''then

                  Cells[45,r]  :=  formatFloat('00000',fieldByName('ilyunNo').AsInteger) //명일련번호 - 보완청구시 수동입력
             else
                  Cells[45,r]  := '';

             cells[50, r] := fieldByName('isInPat').AsString; // 입원 0:외래 1:숙박입원 2:낮병동
             cells[51, r] := fieldByName('jubsu_id').AsString;

             cells[52, r] := fieldByName('doc_code').AsString;  //Doc_Cdoe
             cells[53, r] := fieldByName('team').AsString;  //treeatRoom

            if fieldByName('simsa').AsString <> '' then
                  ints[54, r] := fieldByName('simsa').AsInteger   //simsa
             else
                  ints[54, r] := 0;



            fSum80Chong :=   nSum100by80Hang + nSum100by80Jae ;
            fSum80Bonin :=   fSum80Chong * 0.8 ;
            fSum80Chung :=   fSum80Chong - fSum80Bonin;


            nSum80Chong :=  10 * Floor(fSum80Chong / 10);
            nSum80Bonin :=  10 * Floor(fSum80Bonin / 10);
            nSum80Chung :=  nSum80Chong - nSum80Bonin;

            fSum90Chong :=   nSum100by90Hang + nSum100by90Jae ;
            fSum90Bonin :=   fSum90Chong * 0.9 ;
            fSum90Chung :=   fSum90Chong - fSum90Bonin;


            nSum90Chong :=  10 * Floor(fSum90Chong / 10);
            nSum90Bonin :=  10 * Floor(fSum90Bonin / 10);
            nSum90Chung :=  nSum90Chong - nSum90Bonin;

           //10원미만 절사
           // round(10 * floor( nSum80Chong /10));

             //100/100미만 총액
              ints[55, r] :=  round(nSum80Chong + nSum90Chong); // nSum80Chong;
             //100/100미만 본담액
              ints[56, r] :=  round(nSum80Bonin + nSum90Bonin);// nSum80Bonin;// 10 * Floor(((  nSum100by80Hang + nSum100by80Jae) * 0.8) / 10);
             //100/100미만 청구액
              ints[57, r] :=  round(nSum80Chung + nSum90Chung);//nSum80Chung;//   ints[55, r]-  ints[56, r] ;


          //    result := 100 * Floor(((varChong - nSum100by80Hang - nSum100by80Jae ) * bonRate) / 100);

              ints[58, r] := round( nSumBohumHangTot);


             cells[59, r] := formatDatetime('yyyymmddhhnn',  fieldByName('intime').AsDatetime); // 입원시간

             cells[60, r] := formatDatetime('yyyymmddhhnn',  fieldByName('outtime').AsDatetime); // 퇴원원시간

             cells[61, r] := fieldByName('sanjungTeakRye').AsString;



             //listbox1에 보험사 코드를 집어넣자. 중복을 피해서.
              if trim(fieldByName('car_code').AsString) <> '' then
                   listBox1.items.add( fieldByName('car_code').AsString);








        // Summary Start==================================================

          varJong:=  grdMain.ints[32, r];

          TotSummary(varJong, r);

        // Summary End ===================================================


            // 오류체크 start==================================================

            // 초재진 체크
            if r > 1 then
            begin
              if (cells[3, r - 1] = varChart)
              // and
              // (cells[4, r - 1] = '1')
              // ToDo : 검진먼저하고 다음에 오면 초진이냐 재진이냐?
                and ((fieldByName('chojae').AsString = '1') or
                (fieldByName('chojae').AsString = '3')) then
              begin
                ReportWrite(
                   varName,
                   varChart,
                   '초재진산정',
                   varJinday,
                   varJumin,
                   fieldByName('jubsu_id').AsString
                   , r );
              end;

            end;

            // 상병 체크
             varSangByungCheck :=
                  SangByungCheck(fieldByname('chart').asString,
                                fieldByname('jin_day').asString);

             if varSangByungCheck <> '' then
              begin
                   ReportWrite(varName, varChart, varSangByungCheck,varJinday,
                   varJumin,
                   fieldByName('jubsu_id').AsString
                   ,r );

              end;

            // 보호진료승인번호 체크
            if (varJongbeul in [2, 3, 5, 6]) and (varHwakinNo = '') then
            begin
              ReportWrite(varName, varChart, '보호진료확인번호 확인',varJinday ,
              varJumin,
              fieldByName('jubsu_id').AsString
              ,r,'','','',
              cells[14, r - 1],
              '1',
              '0' );
            end;

            // 주민번호 체크
            if chkJumin(  deldash(cells[8, r])) = false then    //ToDo : 어떤때는 멀쩡한게 오류로 뜨네
            begin
                  ReportWrite(varName, varChart, '주민번호 확인(' + varJumin + ')',varJinday,
                  varJumin,
                  fieldByName('jubsu_id').AsString
                  ,  r  );
            end;

            //면허번호 체크
             if trim( cells[39, r]) ='' then
             begin
               ReportWrite(varName, varChart, '면허번호 확인',varJinday,
               varJumin,
               fieldByName('jubsu_id').AsString
               ,r  );
             end;

        //진료내역체크
//        if grdJx2.RowCount <= 1 then
//        begin
//           ReportWrite(varName, varChart, '진료내역 확인',varJinday,
//           varJumin,
//           fieldByName('jubsu_id').AsString,
//           r  );
//        end;

            // 자격미확인
            if (cells[5, r] <> '산정무') and
                 (trim(varPiboName) = '') then
            begin
              ReportWrite(varName
                         , varChart
                         , '보험자격 확인'
                         ,varJinday
                         ,varJumin
                         ,fieldByName('jubsu_id').AsString
                         ,r );
            end;
            // end 오류체크==================================================




             //---------------------------------------------------------------------
             //start 진찰료코드를 jinryo_s에 넣자.
              if cbJinchal.Checked then
              begin



                 //  insertJincharCode
                  grdJx_jinchal.RemoveRows(1, grdJx_jinchal.RowCount -  1);

                  dWorkDate := strtodate(varJinday);//  strtodate(grdMain.cells[4, i]);
                  nChoJae := varChojae;//grdMain.ints[31, i];
                  nAge := fieldByName('nai').Asinteger;//grdMain.ints[7, i];

                  jinchalRyoCode := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate, jange,
                   nGubGu );
//                                yongua,
//                                ilban,
//                                ifirst);


                    //7093861
                   if jinchalRyoCode <>'' then
                   begin


                   nDanga := getSugaGeum(jinchalRyoCode, // varCode:string;
                          grdMain.cells[4, r],  // jinday:string;
                          '0'); // kind:string);

                    grdJx_jinchal.AddRow;
                    grdJx_jinchal.Cells[0, grdJx_jinchal.RowCount -  1] :=  '진찰료';
                    grdJx_jinchal.Cells[1, grdJx_jinchal.RowCount - 1]     := getSugaName(jinchalRyoCode);
                    grdJx_jinchal.ints[2, grdJx_jinchal.RowCount - 1]      := nDanga;
                    grdJx_jinchal.Cells[3, grdJx_jinchal.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
                    grdJx_jinchal.Cells[4, grdJx_jinchal.RowCount - 1]     := '1';//FieldByName('div').AsString;
                    grdJx_jinchal.Cells[16, grdJx_jinchal.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
                    grdJx_jinchal.ints[5, grdJx_jinchal.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
                    grdJx_jinchal.ints[7, grdJx_jinchal.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//급여구분
                    grdJx_jinchal.Cells[8, grdJx_jinchal.RowCount - 1]     := '';//FieldByName('Modality').AsString;
                    grdJx_jinchal.Cells[9, grdJx_jinchal.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
                    grdJx_jinchal.Cells[10, grdJx_jinchal.RowCount - 1]    := '1';//FieldByName('Su_gu1').AsString;
                    grdJx_jinchal.Cells[11, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
                    grdJx_jinchal.Cells[12, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
                    grdJx_jinchal.Cells[13, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
                    grdJx_jinchal.Cells[14, grdJx_jinchal.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
                    grdJx_jinchal.Cells[15, grdJx_jinchal.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
                    grdJx_jinchal.Cells[17, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
                    grdJx_jinchal.Cells[18, grdJx_jinchal.RowCount -1]     := '';//FieldByName('jins_key').AsString;
                    grdJx_jinchal.Cells[19, grdJx_jinchal.RowCount - 1]    := jinchalRyoCode;
                    grdJx_jinchal.Cells[20, grdJx_jinchal.RowCount - 1]    := getSugaName(jinchalRyoCode);//FieldByName('Su_kor_name').AsString;
                    grdJx_jinchal.Cells[21, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('gasan').AsString;
                    grdJx_jinchal.Cells[22, grdJx_jinchal.RowCount - 1]    := grdMain.cells[4,  r];//FieldByName('jin_day').AsString;
                    grdJx_jinchal.Cells[23, grdJx_jinchal.RowCount - 1]    := grdMain.cells[13, r];//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
                    grdJx_jinchal.Cells[24, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
                    grdJx_jinchal.Cells[25, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('except_code').AsString;
                    grdJx_jinchal.ints[6, grdJx_jinchal.RowCount - 1]      :=  nDanga;        //금액 = 단가 * 수량* 일수
//

    //                 // 토요가산코드 구하기
                      jinchalRyoCode_gasan := '';

                      if (DayOfWeek(dWorkDate) = 7) // 토요일만 계산
                        and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 이후
                        and (nChoJae <> 3) and (nChoJae <> 4) then // 초재가 심야가 아니면
                      begin

                        jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
                          jange,
                           nGubGu ,
//                                yongua,
//                                ilban,
//                                ifirst);yongua, ilban, ifirst,
                          true);


                         nDanga := getSugaGeum(jinchalRyoCode_gasan, // varCode:string;
                           grdMain.cells[4, r],  // jinday:string;
                           '0'); // kind:string);

                        grdJx_jinchal.AddRow;

                        grdJx_jinchal.Cells[0, grdJx_jinchal.RowCount -  1] :=  '진찰료';

                        grdJx_jinchal.Cells[1, grdJx_jinchal.RowCount - 1]     := getSugaName(jinchalRyoCode_gasan);
                        grdJx_jinchal.ints[2, grdJx_jinchal.RowCount - 1]      := nDanga;
                        grdJx_jinchal.Cells[3, grdJx_jinchal.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
                        grdJx_jinchal.Cells[4, grdJx_jinchal.RowCount - 1]     := '1';//FieldByName('div').AsString;
                        grdJx_jinchal.Cells[16, grdJx_jinchal.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
                        grdJx_jinchal.ints[5, grdJx_jinchal.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
                        grdJx_jinchal.ints[7, grdJx_jinchal.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//급여구분
                        grdJx_jinchal.Cells[8, grdJx_jinchal.RowCount - 1]     := '';//FieldByName('Modality').AsString;
                        grdJx_jinchal.Cells[9, grdJx_jinchal.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
                        grdJx_jinchal.Cells[10, grdJx_jinchal.RowCount - 1]    := '1';//FieldByName('Su_gu1').AsString;
                        grdJx_jinchal.Cells[11, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
                        grdJx_jinchal.Cells[12, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
                        grdJx_jinchal.Cells[13, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
                        grdJx_jinchal.Cells[14, grdJx_jinchal.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
                        grdJx_jinchal.Cells[15, grdJx_jinchal.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
                        grdJx_jinchal.Cells[17, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
                        grdJx_jinchal.Cells[18, grdJx_jinchal.RowCount -1]     := '';//FieldByName('jins_key').AsString;
                        grdJx_jinchal.Cells[19, grdJx_jinchal.RowCount - 1]    := jinchalRyoCode_gasan;
                        grdJx_jinchal.Cells[20, grdJx_jinchal.RowCount - 1]    := getSugaName(jinchalRyoCode_gasan);//FieldByName('Su_kor_name').AsString;
                        grdJx_jinchal.Cells[21, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('gasan').AsString;
                        grdJx_jinchal.Cells[22, grdJx_jinchal.RowCount - 1]    := grdMain.cells[4,  r];//FieldByName('jin_day').AsString;
                        grdJx_jinchal.Cells[23, grdJx_jinchal.RowCount - 1]    := grdMain.cells[13, r];//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
                        grdJx_jinchal.Cells[24, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
                        grdJx_jinchal.Cells[25, grdJx_jinchal.RowCount - 1]    := '';//FieldByName('except_code').AsString;
                        grdJx_jinchal.ints[6, grdJx_jinchal.RowCount - 1]      :=  nDanga;        //금액 = 단가 * 수량* 일수

                      end; //토요일 이면...끝.

                    jin_day     := grdMain.cells[4, r];
                    ma_Jubsu_Id := grdMain.cells[51, r];
                    doc_code    := grdMain.cells[52, r];;//cbDoc.ColumnItems[cbDoc.itemindex, 4]; //saID
                    treatRoom   := grdMain.cells[53, r];;//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0]; //saTeam
                    varChartno  := grdMain.cells[2, r];

                    insertjin_s(
                      ma_jubsu_id,
                      strtoDate(jin_day),//dmain.Date,
                      varChartno,
                      treatRoom,   // cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0],
                      doc_code, // cbDoc.ColumnItems[cbDoc.itemindex, 0],
                      '0',//inttostr(cbIo.ItemIndex) , //0: 외래 1: 낮 2: 숙박 입원
                      grdJx_jinchal
                      ); // 1. 진료내역 저장   2. RIS저장 3. 옵티멈저장 BIT서버   121.166.70.201,51983  sa / bit
                  end;
               end;

              //진찰료코드 저장 끝.---------------------------------------------------------

              r:= r+1;

              AdvProgressBar1.Position := r;

          //Floats[i,  RowCount - 1] := ColumnSum(i, 1, RowCount - 2);
          //FloatingFooter.Invalidate;



        end; // for iaCnt




         iaLists.Free;

         next;
      end;//While


        autonumbercol(0);

        AdvProgressBar1.Position := 0;

        if cb3.checked then   //자보
           reSummary_jabo;

       application.ProcessMessages;
       pgInfo.ActivePageIndex := 1;


    end
    else
    begin
      showmessage('진료내역이 없습니다.');
    end;
  end;

end;


procedure Tjumgum_f.TotSummary(varJong:integer; aRow: integer);
var
 nsumBohumjinChong   :integer;
 nSumBohumHbyHChong   :integer;
 nSumYoYangChong1      :integer;
 begin

       nsumBohumjinChong   :=  0;
       nSumBohumHbyHChong  :=  0;
       nSumYoYangChong1    :=  0;


        varJong:=  grdMain.ints[32, aRow];
        if  varJong in [1, 9, 10, 11] then
        // 건보 , 차상위1, 차상위2, 차상위 2장애
        begin

          sumBohumGunsu := sumBohumGunsu + 1;

          sumBohumChong := sumBohumChong + round(10 * floor( grdMain.ints[15, aRow]/10));
          sumBohumBonin := sumBohumBonin + round(10 * floor( grdMain.ints[16, aRow]/10));//grdMain.ints[16, aRow];
          sumBohumBoninSangHan := sumBohumBoninSangHan;
          sumBohumChung := sumBohumChung + round(10 * floor( grdMain.ints[17, aRow]/10));//grdMain.ints[17, aRow];

          if ( grdMain.cells[21, aRow] = 'H')
            or (grdMain.cells[21, aRow] = 'G' )
          then
            sumBohumJiwon  := sumBohumJiwon    + grdMain.ints[16, aRow];

          sumBohumjangE    := sumBohumjangE    + grdMain.ints[33, aRow];
          sumBohumjinChong := sumBohumjinChong + grdMain.ints[15, aRow];

          sumBohumBohun    := sumBohumBohun;
          sumBohumHbyH     := sumBohumHbyH;


//          sumBohumHbyHChong := sumBohumHbyHChong + round(10 * floor( grdMain.ints[55, aRow]/10));//grdMain.ints[55, aRow];
//          sumBohumHbyHChung := sumBohumHbyHChung + round(10 * floor( grdMain.ints[57, aRow]/10));//grdMain.ints[57, aRow];
//          sumBohumHbyHBonin := sumBohumHbyHBonin + round(10 * floor( grdMain.ints[56, aRow]/10));//grdMain.ints[56, aRow];

          sumBohumHbyHChong := sumBohumHbyHChong +   grdMain.ints[55, aRow] ;//grdMain.ints[55, aRow];
          sumBohumHbyHChung := sumBohumHbyHChung +   grdMain.ints[57, aRow] ;//grdMain.ints[57, aRow];
          sumBohumHbyHBonin := sumBohumHbyHBonin +   grdMain.ints[56, aRow];//grdMain.ints[56, aRow];

          //ToDO: 10원차이 해결법 - 원단위 절사전 총금액에서 원단위 절사전 100/100미만 금액 을 빼서 원단위 절사 해주자.
          //
//          nsumBohumjinChong   := round(10 * floor( (grdMain.ints[15, aRow])/10));// grdMain.ints[15, aRow];
//          nSumBohumHbyHChong  := round(10 * floor( (grdMain.ints[55, aRow])/10));//grdMain.ints[55, aRow];
          nsumBohumjinChong   :=  grdMain.ints[15, aRow] ;// grdMain.ints[15, aRow];
          nSumBohumHbyHChong  :=  grdMain.ints[55, aRow] ;//grdMain.ints[55, aRow];

          nSumYoYangChong1    :=  round( nSumBohumHangTot) ;// nsumBohumjinChong- nSumBohumHbyHChong;
     //     nSumYoYangChong1    :=    nsumBohumjinChong- nSumBohumHbyHChong;

          //round(10 * floor( (nSumBohumjinChong)/10)) -
          //                        round(10 * floor( (nSumBohumjinChong)/10))

          sumYoYangChong1     := sumYoYangChong1 +  nSumYoYangChong1;

                          //         + round(10 * floor( (nSumBohumjinChong-nSumBohumHbyHChong)/10));
                          //      + round(10 * floor( (grdMain.ints[15, aRow] - grdMain.ints[55, aRow])/10));

          // 건수, 총진료비, 본인부담, 청구액, 차등청구액
          grdsummary.floats[1, 1] := sumBohumGunsu;
          grdsummary.floats[2, 1] := sumBohumChong;
          grdsummary.floats[3, 1] := sumBohumBonin;
          grdsummary.floats[4, 1] := sumBohumChung;

        end
        else if varJong  in [2, 3, 5, 6] then // 보호
        begin
          sumBohoGunsu := sumBohoGunsu + 1;
          sumBohoChong := sumBohoChong + grdMain.ints[15, aRow];
          sumBohoBonin := sumBohoBonin + grdMain.ints[16, aRow];
          sumBohoBoninSangHan := sumBohoBoninSangHan;
          sumBohoChung := sumBohoChung + grdMain.ints[17, aRow];

          if ( grdMain.cells[21, aRow] = 'H')
          or (grdMain.cells[21, aRow] = 'G' )
          then
            sumBohoJiwon := sumBohoJiwon + grdMain.ints[16, aRow];

          sumBohojangE := sumBohojangE + grdMain.ints[33, aRow];
          sumBohojinChong := sumBohojinChong + grdMain.ints[15, aRow];
          sumBohoBohun := sumBohoBohun;
          sumBohoHbyH := sumBohoHbyH;

          sumBohoHbyHChong := sumBohoHbyHChong  + round(10 * floor( grdMain.ints[55, aRow]/10));//+ grdMain.ints[55, aRow];
          sumBohoHbyHChung := sumBohoHbyHChung  + round(10 * floor( grdMain.ints[57, aRow]/10));//+ grdMain.ints[57, aRow];
          sumBohoHbyHBonin := sumBohoHbyHBonin  + round(10 * floor( grdMain.ints[56, aRow]/10));//+ grdMain.ints[56, aRow];

          //ToDO: 10원차이 해결법 - 원단위 절사전 총금액에서 원단위 절사전 100/100미만 금액 을 빼서 원단위 절사 해주자.
          sumYoYangChong1   := sumYoYangChong1
                                + round(10 * floor( (grdMain.ints[15, aRow]        //보험총금액
                                                   - grdMain.ints[55, aRow])/10)); //100/100미만 총액


          grdsummary.floats[1, 2] := sumBohoGunsu;
          grdsummary.floats[2, 2] := sumBohoChong;
          grdsummary.floats[3, 2] := sumBohoBonin;
          grdsummary.floats[4, 2] := sumBohoChung;
        end
        else if varJong  in [8] then // 자동차보험
        begin
          sumJaboGunsu := sumJaboGunsu + 1;

          sumJaboChong := sumJaboChong + grdMain.ints[15, aRow] + grdMain.ints[18, aRow];
          sumJaboBonin := 0;//sumJaboBonin + grdMain.ints[16, aRow];
          sumJaboBoninSangHan := sumJaboBoninSangHan;
          sumJaboChung := sumJaboChong;//sumJaboBonin + grdMain.ints[16, aRow]; //sumJaboChung + grdMain.ints[17, aRow];

          if ( grdMain.cells[21, aRow] = 'H')
          or (grdMain.cells[21, aRow] = 'G' )
          then
            sumJaboJiwon := sumJaboJiwon + grdMain.ints[16, aRow];

          sumJabojangE := sumJabojangE + grdMain.ints[33, aRow];
          sumJabojinChong := sumJabojinChong + grdMain.ints[15, aRow];
          sumJaboBohun := sumJaboBohun;
          sumJaboHbyH := sumJaboHbyH;

          // 건수, 총진료비, 본인부담, 청구액, 차등청구액
          grdsummary.floats[1, 3] := sumJaboGunsu;
          grdsummary.floats[2, 3] := sumJaboChong;
          grdsummary.floats[3, 3] := sumJaboBonin;
          grdsummary.floats[4, 3] :=  sumJaboChung;
        end
        else if varJong  in [7] then // 산재
        begin
          sumSanjeGunsu := sumSanjeGunsu + 1;

          sumSanjeChong := sumSanjeChong + grdMain.ints[15, aRow];
          sumSanjeBonin := sumSanjeBonin + grdMain.ints[16, aRow];
          sumSanjeBoninSangHan := sumSanjeBoninSangHan;
          sumSanjeChung := sumSanjeBonin + grdMain.ints[16, aRow]; //sumSanjeChung + grdMain.ints[17, aRow];

          if ( grdMain.cells[21, aRow] = 'H')
          or (grdMain.cells[21, aRow] = 'G' )
          then
            sumSanjeJiwon := sumSanjeJiwon + grdMain.ints[16, aRow];

          sumSanjejangE := sumSanjejangE + grdMain.ints[33, aRow];
          sumSanjejinChong := sumSanjejinChong + grdMain.ints[15, aRow];
          sumSanjeBohun := sumSanjeBohun;
          sumSanjeHbyH := sumSanjeHbyH;

          // 건수, 총진료비, 본인부담, 청구액, 차등청구액
          grdsummary.floats[1, 4] := sumSanjeGunsu;
          grdsummary.floats[2, 4] := sumSanjeChong;
          grdsummary.floats[3, 4] := sumSanjeBonin;
          grdsummary.floats[4, 4] :=  sumSanjeChung;
        end;


        grdsummary.floats[1, 5] := sumBohumGunsu + sumJaboGunsu + sumBohoGunsu;
        grdsummary.floats[2, 5] := sumBohumChong +sumJaboChong + sumBohoChong;
        grdsummary.floats[3, 5] := sumBohumBonin +sumJaboBonin + sumBohoBonin;
        grdsummary.floats[4, 5] := sumBohumChung +sumJaboChung + sumBohoChung;
end;


procedure Tjumgum_f.ReSummary;
//label
//  reLoad, isEof;
var
  r: Integer;
  state: boolean;
begin
  // Summary
  sumBohumGunsu := 0;
  sumBohumChong := 0;
  sumBohumBonin := 0;
  sumBohumBoninSangHan := 0;
  sumBohumChung := 0;
  sumBohumJiwon := 0;
  sumBohumjangE := 0;
  sumBohumjinChong := 0;
  sumBohumBohun := 0;
  sumBohumHbyH := 0;

  sumBohoGunsu := 0;
  sumBohoChong := 0;
  sumBohoBonin := 0;
  sumBohoBoninSangHan := 0;
  sumBohoChung := 0;
  sumBohoJiwon := 0;
  sumBohojangE := 0;
  sumBohojinChong := 0;
  sumBohoBohun := 0;
  sumBohoHbyH := 0;

  sumjaboGunsu := 0;
  sumjaboChong := 0;
  sumjaboBonin := 0;
  sumjaboBoninSangHan := 0;
  sumjaboChung := 0;
  sumjaboJiwon := 0;
  sumjabojangE := 0;
  sumjabojinChong := 0;
  sumjaboBohun := 0;
  sumjaboHbyH := 0;

  // Summary==================================================
  for r := 1 to grdMain.RowCount - 1 do
  begin

    if rgChungGubun.ItemIndex in [0,1,2,3] then
    begin
      grdMain.GetCheckBoxState(1, r, state);
      if state = false then
      begin
        //goto reLoad;
          continue;
      end;
    end;


    if grdMain.ints[32, r] in [1, 9, 10, 11] then
    // 건보 , 차상위1, 차상위2, 차상위 2장애
    begin

      sumBohumGunsu := sumBohumGunsu + 1;

      sumBohumChong := sumBohumChong + grdMain.ints[15, r];
      sumBohumBonin := sumBohumBonin + grdMain.ints[16, r];
      sumBohumBoninSangHan := sumBohumBoninSangHan;
      sumBohumChung := sumBohumChung + grdMain.ints[17, r];

          if ( grdMain.cells[21, r] = 'H')
          or (grdMain.cells[21, r] = 'G' )
          then
        sumBohumJiwon := sumBohumJiwon + grdMain.ints[16, r];

      sumBohumjangE := sumBohumjangE + grdMain.ints[33, r];
      sumBohumjinChong := sumBohumjinChong + grdMain.ints[15, r];
      sumBohumBohun := sumBohumBohun;
      sumBohumHbyH := sumBohumHbyH;

      // 건수, 총진료비, 본인부담, 청구액, 차등청구액
      grdsummary.floats[1, 1] := sumBohumGunsu;
      grdsummary.floats[2, 1] := sumBohumChong;
      grdsummary.floats[3, 1] := sumBohumBonin;
      grdsummary.floats[4, 1] := sumBohumChung;

    end
    else    if grdMain.ints[32, r] in [8] then  //자보

    begin

      sumjaboGunsu := sumjaboGunsu + 1;

      sumjaboChong := sumjaboChong + grdMain.ints[15, r];
      sumjaboBonin := 0;//sumjaboBonin + grdMain.ints[16, r];
      sumjaboBoninSangHan := sumjaboBoninSangHan;
      sumjaboChung := sumjaboChong;//sumjaboBonin + grdMain.ints[16, r];
                    // sumjaboChung + grdMain.ints[17, r];

          if ( grdMain.cells[21, r] = 'H')
          or (grdMain.cells[21, r] = 'G' )
          then
        sumjaboJiwon := sumjaboJiwon + grdMain.ints[16, r];

      sumjabojangE := sumjabojangE + grdMain.ints[33, r];
      sumjabojinChong := sumjabojinChong + grdMain.ints[15, r];
      sumjaboBohun := sumjaboBohun;
      sumjaboHbyH := sumjaboHbyH;

      // 건수, 총진료비, 본인부담, 청구액, 차등청구액
      grdsummary.floats[1, 3] := sumBohumGunsu;
      grdsummary.floats[2, 3] := sumBohumChong;
      grdsummary.floats[3, 3] := sumBohumBonin;
      grdsummary.floats[4, 3] := sumBohumChung;

    end

    else if grdMain.ints[32, r] in [2, 3, 5, 6] then // 보호
    begin
      sumBohoGunsu := sumBohoGunsu + 1;
      sumBohoChong := sumBohoChong + grdMain.ints[15, r];
      sumBohoBonin := sumBohoBonin + grdMain.ints[16, r];
      sumBohoBoninSangHan := sumBohoBoninSangHan;
      sumBohoChung := sumBohoChung + grdMain.ints[17, r];

          if ( grdMain.cells[21, r] = 'H')
          or (grdMain.cells[21, r] = 'G' )
          then
        sumBohoJiwon := sumBohoJiwon + grdMain.ints[16, r];

      sumBohojangE := sumBohojangE + grdMain.ints[33, r];
      sumBohojinChong := sumBohojinChong + grdMain.ints[15, r];
      sumBohoBohun := sumBohoBohun;
      sumBohoHbyH := sumBohoHbyH;

      grdsummary.floats[1, 2] := sumBohoGunsu;
      grdsummary.floats[2, 2] := sumBohoChong;
      grdsummary.floats[3, 2] := sumBohoBonin;
      grdsummary.floats[4, 2] := sumBohoChung;
    end;

    grdsummary.floats[1, 5] := sumBohumGunsu + sumJaboGunsu + sumBohoGunsu;
    grdsummary.floats[2, 5] := sumBohumChong + sumJaboChong + sumBohoChong;
    grdsummary.floats[3, 5] := sumBohumBonin + sumJaboBonin + sumBohoBonin;
    grdsummary.floats[4, 5] := sumBohumChung + sumJaboChung + sumBohoChung;

//  reLoad:

  end;
end;
procedure Tjumgum_f.ReSummary_Jabo;
//label
//  reLoad, isEof;
var
  r: Integer;
  state: boolean;
begin
  // Summary
  sumBohumGunsu := 0;
  sumBohumChong := 0;
  sumBohumBonin := 0;
  sumBohumBoninSangHan := 0;
  sumBohumChung := 0;
  sumBohumJiwon := 0;
  sumBohumjangE := 0;
  sumBohumjinChong := 0;
  sumBohumBohun := 0;
  sumBohumHbyH := 0;

  sumBohoGunsu := 0;
  sumBohoChong := 0;
  sumBohoBonin := 0;
  sumBohoBoninSangHan := 0;
  sumBohoChung := 0;
  sumBohoJiwon := 0;
  sumBohojangE := 0;
  sumBohojinChong := 0;
  sumBohoBohun := 0;
  sumBohoHbyH := 0;

  sumjaboGunsu := 0;
  sumjaboChong := 0;
  sumjaboBonin := 0;
  sumjaboBoninSangHan := 0;
  sumjaboChung := 0;
  sumjaboJiwon := 0;
  sumjabojangE := 0;
  sumjabojinChong := 0;
  sumjaboBohun := 0;
  sumjaboHbyH := 0;

  // Summary==================================================
  for r := 1 to grdMain.RowCount - 1 do
  begin




      sumjaboGunsu := sumjaboGunsu + 1;

      sumjaboChong := sumjaboChong + grdMain.ints[15, r]+ grdMain.ints[18, r];
      sumjaboBonin := 0;//sumjaboBonin + grdMain.ints[16, r];
      sumjaboBoninSangHan := sumjaboBoninSangHan;
      sumjaboChung :=   sumjaboChong;//sumjaboBonin ;//+ grdMain.ints[16, r];
             // sumjaboChung + grdMain.ints[17, r];

          if ( grdMain.cells[21, r] = 'H')
          or (grdMain.cells[21, r] = 'G' )
          then
        sumjaboJiwon := sumjaboJiwon + grdMain.ints[16, r];

      sumjabojangE := sumjabojangE + grdMain.ints[33, r];
      sumjabojinChong := sumjabojinChong + grdMain.ints[15, r];
      sumjaboBohun := sumjaboBohun;
      sumjaboHbyH := sumjaboHbyH;

      // 건수, 총진료비, 본인부담, 청구액, 차등청구액
      grdsummary.floats[1, 1] := 0;
      grdsummary.floats[2, 1] := 0;
      grdsummary.floats[3, 1] := 0;
      grdsummary.floats[4, 1] := 0;

      grdsummary.floats[1, 2] := 0;
      grdsummary.floats[2, 2] := 0;
      grdsummary.floats[3, 2] := 0;
      grdsummary.floats[4, 2] := 0;

      grdsummary.floats[1, 3] := sumjaboGunsu;
      grdsummary.floats[2, 3] := sumjaboChong;
      grdsummary.floats[3, 3] := sumjaboBonin;
      grdsummary.floats[4, 3] := sumjaboChung;

    grdsummary.floats[1, 5] := sumjaboGunsu  ;
    grdsummary.floats[2, 5] := sumjaboChong  ;
    grdsummary.floats[3, 5] := sumjaboBonin  ;
    grdsummary.floats[4, 5] := sumjaboChung  ;

//  reLoad:

  end;
end;

procedure Tjumgum_f.ReportWrite(varName, varChart,
     varReport, varJinDay, jumin, jubsu_id: string; aRow:integer;
     jinryo_p_id :string ='';
     bondamCode  :string ='';
     sang_Key1   :string ='';
     WonWeNo     :string ='';
     WonWeIlu    :string ='';
     bonDamEk    :string ='' );
begin
  with grdReport do
  begin
    addRow;
    cells[1,  RowCount - 1] := varName;
    cells[2,  RowCount - 1] := varChart;
    cells[3,  RowCount - 1] := varReport;
    cells[4,  RowCount - 1] := varjinDay;
    cells[5,  RowCount - 1] := jumin;
    cells[6,  RowCount - 1] := jubsu_id;
    ints[7,   RowCount - 1] := aRow;    //grdMain.Row
    cells[8,  RowCount - 1] := bondamCode; //본담구분
    cells[9,  RowCount - 1] := WonWeNo; //처방전번호
    cells[10,  RowCount - 1] := WonWeIlu; //처방일수
    cells[11, RowCount - 1] := bonDamEk; //본담액
    cells[12, RowCount - 1] := jinryo_p_id; //
    autonumbercol(0);
  end;

end;

function Tjumgum_f.SangByungCheck(varChart, varJinday: string): string;
var
  iOrder: string;
  s_key1: string;
  s_key2: string;
  s_key3: string;
  su_key: string;
begin
  result := '';

  with dm_f.sqlTemp do
  begin

    close;
    sql.Clear;
    sql.Add(' select * from jinryo_o                                        ');
    sql.Add(' where chart=:chart and  jin_day=:jin_day     ');
    sql.Add(' order by  s_key1 desc ');
    paramByName('chart').AsString := varChart;
    paramByName('jin_day').AsString := varJinday;
    open;
    if isEmpty then
    begin
         result := '상병이 없음';
         exit
    end
    else
    begin
        First;
        s_key1 := fieldByName('s_key1').AsString;
        if s_key1 <> '' then
           exit;

    end;


    close;
    sql.Clear;
    sql.Add(' select * from jinryo_o                                        ');
    sql.Add(' where chart=:chart and  jin_day=:jin_day  and jusang=''1''    ');
    sql.Add(' order by  s_key1 desc ');
    paramByName('chart').AsString := varChart;
    paramByName('jin_day').AsString := varJinday;
    open;
    First;
    if not isEmpty then
    begin
      while not eof do
      begin
        iOrder := fieldByName('jin_order').AsString;
        s_key1 := fieldByName('s_key1').AsString;
        s_key2 := fieldByName('s_key2').AsString;
        s_key3 := fieldByName('s_key3').AsString;
     //   su_key := fieldByName('su_key').AsString;

        if (s_key1 = '') then
        begin
         /// if ((UpperCase(copy(su_key, 1, 2)) <> 'RX')) then //and (su_key <> '')) then
         // begin
            result := '주상병없음';
        //  end;

        end
        else
        begin
          if varJinday > '2010-12-31' then
          begin
            with dm_f.sqlTemp2 do
            begin
              close;
              sql.Clear;
              sql.Add('select * from sangbyung where s_key=:s_key');
              paramByName('s_key').AsString := s_key1;
              // ParamByName('s_key2').AsString := dm_f.SqlTemp.FieldByName('s_key2').AsString;
              open;
              if fieldByName('bul').AsString = 'N' then
              begin
                result := '구상병'
              end;
            end;
          end;
        end;

        next;
      end;
    end
    else
    begin
         result := '주 상병없음';
    end;
  end;
end;

function Tjumgum_f.SaveChungGuFiles(varYear, varMonth, varNo,
  varKind: string): boolean;
var
  myBytes: array of Byte;
  aString: TStringList;

  A: string;
  i, bufferSize: Integer;

  strJinDay: string;

  signature, ms: TMemoryStream;
  bt: array of Byte;
begin
  try
    with dm_f.sqlTemp do
    begin
      close;
      sql.Clear;
      sql.Add(' delete from ma_chungGu ');
      sql.Add(' where chungYear=:chungYear ');
      sql.Add(' and chungMonth=:chungMonth and chungNo=:chungNo and kind=:kind');
      paramByName('chungYear').AsString := varYear;
      paramByName('chungMonth').AsString := varMonth;
      paramByName('chungNo').AsString := varNo;
      paramByName('kind').AsString := varKind;
      execsql;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('SaveChungGuData(1):' + E.Message);
    end;
  end;
  try
    with dm_f.sqlTemp do
    begin
      close;
      sql.Clear;
      sql.Add('insert into ma_chungGu ');
      sql.Add(' ( kind, chungYear, chungMonth, chungNo, Neyuk) values ');
      sql.Add(' ( :kind, :chungYear, :chungMonth, :chungNo, :Neyuk) ');
      paramByName('kind').AsString := varKind;
      paramByName('chungYear').AsString := varYear;
      paramByName('chungMonth').AsString := varMonth;
      paramByName('chungNo').AsString := varNo;
      paramByName('Neyuk').LoadFromFile(targetPath + varYear + varMonth + varNo
        + '.GHP', ftblob);
      execsql;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('saveChungGuData(2):' + E.Message);
    end;
  end;
end;

procedure Tjumgum_f.btnFindClick(Sender: TObject);
begin
  with Dm_f.sqlwork do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from suga ');
    // Sql.Add('where su_gu1 in (''2'',''4'')  and su_key like :su_key ');
    // Sql.Add('where  su_key like :su_key ');

    case RadioGroup1.itemindex of
      0:
        SQL.Add('where  su_key like :su_key ');
      1:
        SQL.Add('where  user_key like :su_key ');
      2:
        SQL.Add('where  su_kor_name like :su_key ');
    end;

    SQL.Add('order by su_kor_name');
    paramByName('su_key').asString := '%' + edtSearchSuga.text + '%';
    open;
    // First;

    grdSuga.RowCount := recordCount + 1;
    i := 1;
    while not eof do
    begin

      grdSuga.Cells[1, i] := fieldByname('su_key').asString;
      grdSuga.Cells[2, i] := fieldByname('su_kor_name').asString;
      grdSuga.Cells[3, i] := fieldByname('user_key').asString;
      grdSuga.Cells[4, i] := fieldByname('su_extra').asString;
      grdSuga.Cells[5, i] := fieldByname('teakryecode').asString;

      i := i + 1;
      next;
    end;
  end;
end;

procedure Tjumgum_f.btnLoadJinryoDataClick(Sender: TObject);
begin

 //cbMaru.Checked여부와 상시점검 여부에 따라 달라지는 값이 있으니 다시한번 불러오자.
 try
       btnLoadJinryoData.enabled:=false;


       LoadHospitalInfo;


       application.ProcessMessages;
       lblStat.caption:= '조회/점검을 실행 중입니다.'+#10+
                        '잠시만 기다려 주세요...';

       application.ProcessMessages;


       LoadJinryoData;


       btnChungGuDataCreate.enabled := true;


       loadBohumsaList;


       grdMain.CheckAll(1);


       //ReCalcTotal;

       application.ProcessMessages;
       lblStat.caption:= '조회/점검을 마쳤습니다.'+#10+
                         '<청구 구분>을 선택한 후 '+#10+
                         '[자료파일생성]을 클릭 하세요.';


  finally

       btnLoadJinryoData.enabled:=true;

  end;



end;
procedure Tjumgum_f.btnLoadSangByungClick(Sender: TObject);
var
  ARow: Integer;
begin

  Sangseek_f := TSangseek_f.Create(Application);
  Sangseek_f.gsgubn := '3';
  if Sangseek_f.Showmodal = mrOk then
  begin
    // aRow := grdSangbyung.Row;

    ARow := checkBlankRow(grdSangByung, 6);

    if aRow = 1 then
        grdSangByung.AddRadioButton(0, ARow , true )
    else
        grdSangByung.AddRadioButton(0, ARow , false );

    // grdSangbyung.addRow;
    grdSangByung.Cells[9, ARow] := '16';
    grdSangByung.Cells[6, ARow] := // grdSangbyung.RowCount - 1] :=
      Sangseek_f.grdMain.Cells[1, Sangseek_f.grdMain.Row];
    grdSangByung.Cells[10, ARow] := //
      Sangseek_f.grdMain.Cells[2, Sangseek_f.grdMain.Row];
//
//    grdSangByung.Cells[13, ARow] := // grdSangbyung.RowCount - 1] :=
//      cbDoc.ColumnItems[cbDoc.itemindex, 2]; // cmbDoctor.Text; //담당의
//    grdSangByung.Cells[14, ARow] := // grdSangbyung.RowCount - 1] :=
//      cbDoc.ColumnItems[cbDoc.itemindex, 3]; // 담당의 면허번호
    //grdSangByung.AutoNumberCol(0);
  end;

end;

procedure Tjumgum_f.loadBohumsaList;
var
  i , w: integer;
  Str: TStringList;
begin
  Str := TStringList.Create; // This is needed when using this class(or most classes)
  for i:= 0 to listBox1.items.Count-1 do
  begin
      Str.Add( listBox1.items[i]);

  end;
   RemoveDuplicates( Str);
   listBox1.items.clear;
   for I := 0 to str.count -1 do
   begin
          listBox1.items.add(str[i]);
   end;


end;



procedure Tjumgum_f.loadHospitalInfo;
var
   forminit : TiniFile;
   path:string;
begin



      edtYoyangKiho.Text:='';
      edtwonjangname.Text:='';
      edtJumin.Text:='';


       //  YoyangKiho := configvalue.varYoyang;  // 요양기관(의료급여기관)기호	an(8)
         edtYoyangKiho.Text:=configvalue.varYoyang;  // 요양기관(의료급여기관)기호	an(8)
         YoyangKiho := edtYoyangKiho.Text;  // 요양기관(의료급여기관)기호	an(8)

         varDrJumin := copy(configvalue.varJumin, 1, 6);
         varDrMyunHu := configvalue.varMyunhu;

         with dm_f.sqlTemp15 do
         begin
            close;
            sql.Clear;
            sql.text:='select * from ma_sawon_basic  where saJikgub=''1'' and nouse=''0'' and sateam=''RADX''  and sabun<>''RD5'' ' ;
            open;
             WonjangCount:= recordCount;
             setLength(varDrJumin1, WonjangCount);


              i:= 0;

            while not eof do
            begin
                varDrJumin1[i] := copy(fieldByName('saJumin').AsString,1,6);
                i:= i+1;
                next;
            end;

         end;





         if CheckBox1.Checked = true then
         begin
            chungGuName := '상시점검';   // 청구인	an(20)
            jaksungName := '상시점검';   // 작성자성명	an(20)
            SeunginNo := 'B02TEMP20131016103102740000001'
         end
         else
         begin
          //  chungGuName := configvalue.varChungname;  // 청구인	an(20)
          //  jaksungName := configvalue.varChungname; // 작성자성명	an(20)

         //   SeunginNo := configvalue.varChungNo;

         //   if trim(SeunginNo) =''  then  // B01004492018101608074024320180
               SeunginNo  := 'B01004492019101607232054320194';// 'B02011932013102407303025220135';


            edtwonjangname.Text:=configvalue.varChungname;  // 청구인	an(20)
            chungGuName := edtwonjangname.Text;   // 청구인	an(20)
            jaksungName := edtwonjangname.Text;   // 작성자성명	an(20)


         end;

             edtJumin.Text:= deldash(configvalue.varChungJumin);  // 작성자생년월일	an(13)
             jaksungJumin := edtJumin.Text; // 작성자생년월일	an(13)





end;

procedure Tjumgum_f.saveChungGuInfo_maru;
var
   forminit : TiniFile;
   path:string;
begin
//        Path := GetConfigDir + 'db.ini';
//        FormInit := TIniFile.Create(Path);
//        FormInit.WriteString('청구정보', 'yoyangkiho', edtYoyangKiho.Text);
//        FormInit.WriteString('청구정보', 'wonjangname', edtwonjangname.Text);
//        FormInit.WriteString('청구정보', 'jumin', edtJumin.Text);
//        FormInit.Free;
end;

function Tjumgum_f.LoadChungGuNo(varYear, varMonth: string): string;
begin

  if cbChungno.ItemIndex > 0  then
  begin
      result :=formatFloat('0000', strtoint(cbChungno.text));
      exit;
  end;

  with dm_f.sqlTemp do
  begin
    close;
    sql.Clear;
    sql.Add('select isnull(max( convert(int,chungNo,121)),0) as MaxChungNo from ma_chungGu ');
    sql.Add('where chungYear=:chungYear and chungMonth=:chungMonth ');
    paramByName('chungYear').AsString := varYear;
    paramByName('chungMonth').AsString := varMonth;
    open;
    result := formatFloat('0000', fieldByName('MaxChungNo').AsInteger + 1);

  end;
end;

procedure Tjumgum_f.MakeMyungSeFile_Bohum;
var
  i: Integer;

begin

  try

    Assignfile(F, targetPath + targetFile);
    Rewrite(F);
  except
    on E: Exception do
    begin
      Closefile(F);
      showmessage(E.Message + #10#13 + targetPath + targetFile + ' 파일생성 ');
    end;
  end;
end;

procedure Tjumgum_f.MakeMyungSeFile_Boho;
var
  i: Integer;

begin
   try

    Assignfile(F, targetPath + targetFile);
    Rewrite(F);
  except
    on E: Exception do
    begin
      Closefile(F);
      showmessage(E.Message + targetPath + targetFile + ' 파일생성 ');
    end;
  end;
end;

procedure Tjumgum_f.MakeMyungSeFile_Jabo(varJaboCode:string);
var
  i: Integer;

begin
  ChungGuNo_serial := LoadChungGuNo(cbYear.text, cbMonth.text);
  ChungGuNo := cbYear.text + cbMonth.text + ChungGuNo_serial;//+'_'+varJaboCode;
  // ChungGuNo := cbYear.text + cbMonth.text + '0017';
  targetPath := 'C:\hira\DDMD\sam\in\'; // extractFilePath(paramstr(0));
  targetFile := ChungGuNo+'_'+varJaboCode + '.CAR'; // 2012070001

  try
    Assignfile(F, targetPath + targetFile);
    Rewrite(F);
  except
    on E: Exception do
    begin
      Closefile(F);
      showmessage(E.Message + #10#13 + targetPath + targetFile + ' 파일생성 ');
    end;
  end;
end;

procedure Tjumgum_f.memChungGuMemoClick(Sender: TObject);
begin
     SetImeInputMode(memChungGuMemo.Handle  , imHangul);
end;

procedure Tjumgum_f.memChungGuMemoContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

  RichEditPopupMenu(TRichEdit(Sender));
  Handled := true;

end;

procedure Tjumgum_f.MenuItem1Click(Sender: TObject);
begin
  if grdJx2.Row > 0 then
  begin
    SugaProp_f := TSugaProp_f.Create(Application);
    SugaProp_f.edtSuKey.text := grdJx2.Cells[19, grdJx2.Row];
    SugaProp_f.btnSave.Visible := true;

    SugaProp_f.pnlChangeSuGu.Visible := true;

    SugaProp_f.ActiveControl := SugaProp_f.edtname;
    SugaProp_f.Showmodal;
    SugaProp_f.Free;
    SugaProp_f := nil;
  end;

end;

procedure Tjumgum_f.N11Click(Sender: TObject);
begin
        edtBeforeCode.Text :=  grdJx2.Cells[19,  grdJx2.Row];
         dtStart.date := strtodate(cbYear.text + '-' + cbMonth.text + '-' +
           cbDay1.text);
          dtFinish.date := strtodate( cbYear.text + '-' + cbMonth.text + '-' +
           cbDay2.text);




        pnlModSuga.Visible := true;
end;

procedure Tjumgum_f.N12Click(Sender: TObject);
var
   i : integer;
begin

   //   grdSangByung.UnCheckAll(0);

       for I := 1 to grdSangByung.RowCount-1 do
       begin
          grdSangByung.AddRadioButton(0, grdSangByung.Row , false )
       end;


end;

procedure Tjumgum_f.N17Click(Sender: TObject);
var
   jubsuId : string;
   nRow: integer;
   hewakinNo : string;
   k_number, kiho, piboname : string;
begin

   nRow  := grdMain.row;
   jubsuId      := grdMain.cells[51, nRow];
   hewakinNo    := grdMain.cells[27, nRow];
   k_number     := grdMain.cells[10, nRow];
   kiho         := grdMain.cells[11, nRow];
   piboname     := grdMain.cells[10, nRow];
    //
   if  update_Jinryo_p_HwakinNo(jubsuid, hewakinNo,k_number, kiho, piboname)= true
    then
   begin

       grdMain.Repaint;

   end;
end;

procedure Tjumgum_f.N1Click(Sender: TObject);
var
   FindRow : integer;
   aJumin   : string;
   aName    : string;
   aJinDay  : string;
begin

    aJumin  :=  grdReport.cells[5, grdReport.row];  //Jumin
    aName   :=  grdReport.cells[1, grdReport.row];   //name
    aJinDay :=  delSlash( delDash(grdReport.cells[4, grdReport.row])) ;  //jin_day


         if    JakyukJohoi(aJumin,
                           aName,
                           aJinDay  //jin_day
                           )
           = true then
          begin

              FindRow := Find_Chk_item_Row(grdMain,
                    grdReport.cells[6, grdReport.row]).varRow ; //Jubsu_id


              grdMain.cells[9, FindRow]  :=    ma_piboName; //피보함자
              grdMain.cells[10, FindRow] :=   ma_k_number; //증번호



             saveGogekpibo(ma_piboid,
                grdReport.cells[2, grdReport.row], //Chart
                ma_Paname, // ma_PiboName,
                ma_K_Number,
                ma_jongbeul, // 종별
                '', // 집우편번호
                '', // 집주소
                ma_Kiho, // 조합기호
                '', // 집전화번호
                ma_apply_Day, // 보험증 적용일
                formatdatetime('YYYY-MM-DD', now), // regDay
                ma_budam, // bontype
                ma_janek, // janek
                ma_sanjung, // bonsanjung
                ma_teakRye, // bonsanjung
                ma_teakryeCode, // bonsanjung
                ma_artTeeth1, // artTeeth1
                ma_artTeeth2, // artTeeth2
                ma_implTeeth1, // implYoyang1
                ma_implTeeth2, // implYoyang2
                ma_artYoyang1, // implTeeth1
                ma_artYoyang2, // implTeeth2
                ma_implYoyang1, // artYoyang1
                ma_implYoyang2, // artYoyang2
                ma_Sunkiho1, // sunkiho1
                ma_Sunkiho2, // sunkiho2
                ma_Sunkiho3, // sunkiho3
                ma_Sunkiho4, // sunkiho4
                '', // pregnan
                ma_chaSangNo, // chaSangNo
                grdReport.cells[4, grdReport.row], // johoidate
                ma_special, // jange //Y : 장애우 N: 비장애우
                ma_RestrictCd, // restricted //급여제한 01 : 무자격자,  02 : 보험료체납 급여제한자"
                ma_cancelDay, //
                ma_hira_jong, // hira_Jong
                ma_PiboName // sedejuNm
                );

               updateJinryoP_PiboInfo(grdReport.cells[6, grdReport.row],
                   ma_K_Number,// k_kumber,
                   ma_Kiho,// kiho,
                   ma_PiboName );//piboName
          end;


end;

procedure Tjumgum_f.N4Click(Sender: TObject);
var
   jubsuId : string;
   nRow: integer;
   simsaValue : integer;
begin
    //simsa 0, '', : 아직 안함   1: 완료  3: 제외   4: 보완 5: 누락
   nRow  := grdMain.row;
   simsaValue :=  (sender as TmenuItem).tag;
   jubsuId := grdMain.cells[51, nRow];
    //update_Jinryo_p_HwakinNo
   if  update_Jinryo_p_simsa(jubsuid, inttostr(simsaValue))= true
    then
   begin
       grdMain.ints[54, nRow] := simsaValue;
//       case simsaValue of
//         0:   showmessage('초기화 되었습니다.');
//         1:   showmessage('심사완료 되었습니다.');
//         3:   showmessage('심사제외 되었습니다.');
//       end;

       grdMain.Repaint;

   end;
end;

procedure Tjumgum_f.N7Click(Sender: TObject);
begin

  saveTJung(5,    //1: insert 2: update      5: delete
              grdneyuk.Cells[8,  grdneyuk.row],               //TjungID,
              '0',    //  jubsu_id,
              '0',// ma_chart,
              grdneyuk.Cells[6,  grdneyuk.row],  //jin_day
              grdneyuk.Cells[1,  grdneyuk.row],// RefTyp,
              '0',    // jin_skey,
              grdneyuk.Cells[3,  grdneyuk.row],  //JulNo
              grdneyuk.Cells[4,  grdneyuk.row],//edtCodeMyungse.text,          //RefCod
              grdneyuk.Cells[5,  grdneyuk.row],// memTJungSayuMyungse.text,  // RefCmt,
              FormatDateTime('YYYY-MM-DD' ,now),// modday,
              grdneyuk.Cells[7,  grdneyuk.row],// docID,//userID,
              grdneyuk.Cells[2,  grdneyuk.row]//''//edtSugaCode.text//su_key : string
              );

//     grdneyuk.Cells[1,  grdneyuk.row]:=  refTyp;   //발생단위
//     grdneyuk.Cells[2,  grdneyuk.row]:=  edtSugaCode.text;
//     grdneyuk.Cells[3,  grdneyuk.row]:=   lblJinSkey.caption ;    //줄번호
//     grdneyuk.Cells[4,  grdneyuk.row]:=  cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0] ;
//     grdneyuk.Cells[5,  grdneyuk.row]:=  edtCode.text+'/'+edtSugaCode.Text+'/';
//     grdneyuk.Cells[6,  grdneyuk.row]:=  FormatDateTime('YYYY-MM-DD' ,now);// FormatDateTime('YYYY-MM-DD' , jinryo_f.dtDate.date);
//     grdneyuk.Cells[7,  grdneyuk.row]:=  docID;//
//     :=  '0';//
//     grdneyuk.Cells[9,  grdneyuk.row]:=  lblJinSkey.captio;//

end;

procedure Tjumgum_f.N9Click(Sender: TObject);
begin
     bohoCert;
end;

procedure Tjumgum_f.bohoCert;
var
     nCount: integer;
     i: integer;
     nResult: integer;
     strkiho, strJumin2, sYoungNo, sNaewon, sBonin, sBonBudam, sChung,
          clientInfo,
          sSaNo, sYN, sSangkiho, sSunkiho: string;
     NHIC_Info: TNHIC_Info;
     varPath: string;

     hkind : string;

     varParam, varParam1, varCount, varPass: string;
     strJuminNo, strPaitName, varJagyukID, varJagyukPass , sDate: string ;
     aJumin  , aName , aJinDay : string;
     aBohoHwakinNo, aResult,
     aJubsu_ID , aSangKey1,
     aWonweNo, aWonweIlsu, aBonDamCode : string;

     aBondamEk , aChungGuEk: string;

begin
 try
    LoadWebserviceDLL;

    {    cells[1,  RowCount - 1] := varName;
    cells[2,  RowCount - 1] := varChart;
    cells[3,  RowCount - 1] := varReport;
    cells[4,  RowCount - 1] := varjinDay;
    cells[5,  RowCount - 1] := jumin;
    cells[6,  RowCount - 1] := jubsu_id;
    ints[7,   RowCount - 1] := aRow;    //grdMain.Row
    cells[8,  RowCount - 1] := bondamCode; //본담구분
    cells[9,  RowCount - 1] := WonWeNo; //처방전번호
    cells[10,  RowCount - 1] := WonWeIlu; //처방일수
    cells[11, RowCount - 1] := bonDamEk; //본담액
    cells[12, RowCount - 1] := jinryo_p_id; //
}

    aJumin        :=  grdReport.cells[5, grdReport.row];  //Jumin
    aName         :=  grdReport.cells[1, grdReport.row];   //name
    aJinDay       :=  delSlash( delDash(grdReport.cells[4, grdReport.row])) ;  //jin_day

    aJubsu_ID   :=  grdReport.cells[6, grdReport.row];

    aSangKey1     :=  grdsangByung.cells[6, grdsangByung.row];

    aBonDamCode   :=  grdReport.cells[8, grdReport.row];
    aWonweNo      :=  grdReport.cells[9, grdReport.row];
    aWonweIlsu    :=  grdReport.cells[10, grdReport.row];
    aBondamEk     :=  '0';//grdReport.cells[11, grdReport.row];
    aChungGuEk := aBondamEk;

     if (aBonDamCode= '2') then
     begin
          Showmessage('전액 본인부담 대상자이므로 승인의뢰가 필요없습니다.');
          exit;
     end;

     if trim(aSangKey1) ='' then//Jinryo_f.RealGrid2.Cells[5, 0].AsString = '' then
     begin
          Showmessage('주상병기호가 누락되었습니다. 확인하세요.');
          exit;
     end;

     sSangkiho := trim(aSangKey1);//Trim(Jinryo_f.RealGrid2.Cells[5, 0].AsString);


     if trim(aWonweNo ) <> '' then //.Edit7.Text <> '' then  // 처방전교부번호
          sYoungNo :=aWonweNo;//  deldash(lblSunapDay.caption) +// FormatDateTime('yyyymmdd', Jinryo_f.dMain.Date) +
            //   Formatfloat('00000', StrToInt(trim( lblWonweNo.Caption ) ));


     if trim(aWonweIlsu)  <> '' then    // 처방일수
          sNaewon := trim(aWonweIlsu) ;

     sYN := 'N';

     if sYoungNo <> '' then
          sYN := 'Y';

     hkind:='M3';

     strJuminNo     := aJumin;// ma_jumin;  //저장전에는 값이 안들어간다.
     strPaitName    := aName;//ma_paName;  //저장전에는 값이 안들어간다.
     strkiho        := configvalue.varYoyang;
     clientInfo     := '127.0.0.1';
     strJumin2      := configvalue.varJumin;
     varJagyukID    := configvalue.varJagyukID;
     varJagyukPass  := configvalue.varJagyukPass;
     sDate          := aJinDay;//delSlash( delDash(grdReport.cells[4, grdReport.row]));//formatDatetime('YYYMMDD', now);

     //
     varPath := extractFilePath(paramstr(0)) + 'auto.exe';
     varParam1 := '만세만세';
     varPass := configvalue.varJagyukpass;
     varCount := configvalue.varJagyukID;
     varParam := varParam1 + ' ' + varCount + ' ' + varPass;

     ShellExecute(GetDeskTopWindow, 'open', PChar(varPath), pchar(varParam),
          nil, SW_SHOWNORMAL);


//          CallM3(strJuminNo,  strPaitName, strkiho, jinKind, jinilsu, tuilsu,
//                 bonin, chung, bohum, sSangkiho, jinDay, sYoungNo, sBonin, clientInfo, strJumin2,
//                varJagyukID, varJagyukPass, sDate, sSaNo, sYN, sSunkiho: string)
//


  if  CallM3( strJuminNo,
          strPaitName,
          strkiho,
          '2', //진료형태
          '1', //입(내)원 일수
          '0', //sNaewon, //투약일수
          aBondamEk, //본인 일부 부담금
          aChungGuEk, //건강생활 유지비 청구액
          '0', //기관부담금
          sSangkiho, //주상병분류기호(약국직접조제-증상기호)
          sDate, //진료일자
          '', //처방전 교부 기관 기호(약국)  - 병원 미기재
          sYoungNo, //처방전 교부 교부번호
          sBonin, //본인부담여부
          '',
          clientInfo, //Client IP
          strJumin2, //원장주민번호
          varJagyukID,
          '',
          '',
          sSaNo,
          sYN,
          sSunkiho
          ) = true then
          begin
                   aBohoHwakinNo     := nhicInfo[5];
                   aResult           := nhicInfo[13];
                   if aBohoHwakinNo <> '' then
                    begin
                         with dm_f.sqlwork do
                         begin
                              close;
                              sql.clear;
                              sql.add('update jinryo_p set');
                              sql.add('HwakinNo=:HwakinNo ');
                           //   sql.add('where jinryo_pid=:jinryo_pid');
                                sql.add('where jubsu_id=:jubsu_id');
                              parambyname('jubsu_id').AsString := aJubsu_ID;

                              ParamByName('HwakinNo').AsString := aBohoHwakinNo ;

                              execsql;
                         end;
                    end;


                  showmessage(aResult) ;
                  grdReport.RemoveRows(grdReport.Row, 1);
          end
          else
          begin
              showmessage('수납에서 진료확인 처리 하세요.')
          end;

   finally

        FreeLibrary(Hwebservice);

  end;
end;


procedure Tjumgum_f.WriteMyungSeSeo(varKind: string = '');
//label
//  reLoad, isEof;
var
  i: Integer;

  varChungGubun: string;

  nChoJae: Integer;
  nAge: Integer;
  dWorkDate: TDateTime;
  jange: boolean;
  yongua: boolean;
  ilban: boolean;
  ifirst: boolean;
  jinilsu: string;

  gongsangGubun: string;
  // 0:무
  // 1:공상
  // 4: 보훈 국비환자(요양급여등)
  // 7:보훈국비환자(상이처 무자격자등)
  // 8: 군인가조계비역장군 등
  // 9: 군인 군무원의 군요양기관이용시
  // B: 보훈병원 국비일반
  // C: 차상위 희귀난치성질환자
  // D: 보훈병원 국비보험(급여)2차
  // E: 차상위 만성질환 18세미만 본인부담 경감
  // F: 차상위 장애인 만성질환 18세미만 본인부담 경감
  // G: 긴급복지의료지원 대상자
  // H: 희귀 난치성질환대상자
  varjungekGubun: string;

  varJiwonGeum: string;

  varJohapKiho, varBohoGubun: string;
  varSusikNo: string;

  varIlyun: Integer;
  varIlyun_boho: Integer;
  varIlyun_bohum: Integer;
  ChubangNo: string;

  state: boolean;


  varJubsuNo    :string;
  varMyungIlyun :string;
  varSayuCode   :string;
  isImplant : boolean;
  iOrder : integer; //jinryo_s 의 jin_order

//  wonjangJinryoIlsu : string;   전역변수로 옮겼다.
  w: integer;
  chaDeungJinilsu : string;

  sujinJumin : string;  //보완청구와 원청구 주민번호 요구사항이 달라요...


    nSum1  : integer;
    nSum2  : integer;
    nTot1   : integer;

 totYoyang1 : integer;

 neyuk, jubsuId : string;
begin

  varIlyun := 0;
  varIlyun_boho := 0;
  varIlyun_bohum := 0;


  varJubsuNo    :='';
  varMyungIlyun :='';
  varSayuCode   :='';


  ChubangNo := '';

  AdvProgressBar1.Min := 0;
  AdvProgressBar1.Max := grdMain.RowCount - 1;
  AdvProgressBar1.Position := 0;


          chaDeungJinilsu := formatFloat('0000',
          getJinryoilsu(cbYear.text + '-' + cbMonth.text + '-' + cbDay1.text,
          cbYear.text + '-' + cbMonth.text + '-' + cbDay2.text));


                  for w:= 0 to WonjangCount-1 do
                  begin
                        if  wonjangJinryoIlsu ='' then
                             wonjangJinryoIlsu := varDrJumin1[w]+'/'+  inttostr(strtoint(chaDeungJinilsu))
                       else
                             wonjangJinryoIlsu :=wonjangJinryoIlsu +'/'+ varDrJumin1[w]+'/'+  inttostr(strtoint(chaDeungJinilsu));

                  end;

  for i := 1 to grdMain.RowCount - 1 do
  begin

          try

                  //명세서 작성
                  {0원청구
                   1 보완청구
                   2 추가청구
                   3 분리청구
                    }


                  grdMain.GetCheckBoxState(1, i, state);
                  if state = false then
                  begin
 //                   goto reLoad;
                   application.ProcessMessages;
                   AdvProgressBar1.Position := i;
                   continue;
                end;

{0. 원청구
1. 보완청구
2. 추가청구
3. 분리청구
}                case    rgChungGubun.ItemIndex of

                  1: //1. 보완청구
                  begin
                          if trim(edtJubsuNo.text) ='' then
                          begin
                            showmessage('명세서 접수번호를 입력하세요.');
                            edtJubsuNo.SetFocus;
                             btnChungGuDataCreate.enabled := true;

                            Closefile(F);

                            Deletefile(targetPath + targetFile);

                            break;
                          end;

                          if trim(edtSimsaBulCode.Text) ='' then
                          begin
                            showmessage('심사불능코드를 입력하세요.');
                             btnChungGuDataCreate.enabled := true;
                            edtSimsaBulCode.SetFocus;
                            Closefile(F);
                            Deletefile(targetPath + targetFile);
                             break;
                          end;

                          if trim(grdMain.cells[45, i]) ='' then
                          begin
                            showmessage(inttostr(i)+ '행의 맨 마지막셀에 명일련번호를 입력하세요.');

                             grdmain.SetFocus;
                             grdmain.Col:=45;
                             grdmain.Row := i;

                             btnChungGuDataCreate.enabled := true;
                            Closefile(F);
                            Deletefile(targetPath + targetFile);

                             break;
                          end;


                           varJubsuNo    := edtJubsuNo.text;
                           varSayuCode   := edtSimsaBulCode.Text;
                           varMyungIlyun :=  grdMain.cells[45, i];
                  end;

                  2: //2. 추가청구
                  begin
                          if trim(edtJubsuNo.text) ='' then
                          begin
                            showmessage('명세서 접수번호를 입력하세요.');
                            edtJubsuNo.SetFocus;
                             btnChungGuDataCreate.enabled := true;

                            Closefile(F);

                            Deletefile(targetPath + targetFile);

                            break;
                          end;



                          if trim(grdMain.cells[45, i]) ='' then
                          begin
                            showmessage(inttostr(i)+ '행의 맨 마지막셀에 명일련번호를 입력하세요.');

                             grdmain.SetFocus;
                             grdmain.Col:=45;
                             grdmain.Row := i;

                             btnChungGuDataCreate.enabled := true;
                            Closefile(F);
                            Deletefile(targetPath + targetFile);

                             break;
                          end;


                           varJubsuNo    := edtJubsuNo.text;
                           varSayuCode   := edtSimsaBulCode.Text;
                           varMyungIlyun :=  grdMain.cells[45, i];
                  end;

                  end;

                  ChojaeJul := 0;
                  SatGasanJul := 0;
                  // 2. 진찰료코드 만들자
                  { makejinchalRyoCode(
                    nChoJae: Integer;
                    nAge: Integer;
                    dWorkDate: TDateTime;
                    jange:boolean;
                    yongua:boolean;
                    ilban:boolean;
                    ifirst:boolean }
                  {
                    1.건강보험
                    2.의료급여1종
                    3.의료급여2종
                    4.일반
                    5.의료급여4종
                    6.의료급여8종
                    7.산재
                    8.자보
                    9.차상위1종
                    10.차상위2종
                    11.차상위2종장애인
                  }
                  if varKind = '보험' then
                  begin

                    if ( grdMain.ints[32, i] in [4, 7, 8, 2, 3, 5, 6] )
                        // 일반, 산재, 자보, 의료급여1종 ,의료급여2종 ,의료급여4종, 의료급여8종
                         or (grdMain.cells[3, i] = '' )   //성명 없고
                         or (grdMain.cells[8, i] = '')  then   //주민번호 없으면
                   begin
                       application.ProcessMessages;
                       AdvProgressBar1.Position := i;

                       continue;
//                      goto reLoad;
                   end;





                     if  cbGubunOut.checked   then
                     begin
                           varSusikNo := 'H021';
                     end
                     else
                         if  cbGubunIn.checked   then
                     begin
                          varSusikNo := 'H020';
                     end ;


                    varJohapKiho := '';
                    varBohoGubun := '';

                    varIlyun_bohum := varIlyun_bohum + 1;
                    varIlyun := varIlyun_bohum;

                    jubsuId := grdMain.cells[51, i];

                    updateIlyunNo(jubsuId, inttostr(varIlyun)) ;

                  end
                  else if varKind = '보호' then
                  begin
                    if (grdMain.ints[32, i] in [4, 7, 8, 1, 9, 10, 11] )
                     // 일반, 산재, 자보, 건강보험, 차상위1종, 차상위2종, 차상위2종장애
                    or (grdMain.cells[3, i] = '' )     //성명 없고
                     or (grdMain.cells[8, i] = '')  then   //주민번호 없으면
//                      goto reLoad;
                    begin

                        application.ProcessMessages;
                        AdvProgressBar1.Position := i;
                    end;





                     if  cbGubunOut.checked   then
                     begin
                           varSusikNo := 'H031';
                     end
                     else
                         if  cbGubunIn.checked   then
                     begin
                          varSusikNo := 'H030';
                     end ;




                    varJohapKiho := grdMain.cells[11, i];
                    case grdMain.ints[32, i] of
                      2:
                        varBohoGubun := '1'; // 1종
                      3:
                        varBohoGubun := '2'; // 2종
                      5:
                        varBohoGubun := '4'; // 행려
                      6:
                        varBohoGubun := '8'; // 2종대상자 장애인의 1차진료 6: 2종대상자 장애인의 2차진료
                    end; // 9:노숙자 및  외국인 근로자

                    varIlyun_boho := varIlyun_boho + 1;

                    varIlyun := varIlyun_boho;



                    jubsuId := grdMain.cells[51, i];

                    updateIlyunNo(jubsuId, inttostr(varIlyun)) ;
                  end;




                  grdNeyuk.RemoveRows(1, grdNeyuk.RowCount - 1); // 1. 특정내역을 모두 지우고...

                  nChoJae := grdMain.ints[31, i];
                  nAge := grdMain.ints[7, i];
                  dWorkDate := strtodate(grdMain.cells[4, i]);

                  gongsangGubun := grdMain.cells[21, i];

                  if ( gongsangGubun = 'H')
                      or ( gongsangGubun = 'G') then
                    varJiwonGeum := grdMain.cells[16, i]
                  else
                    varJiwonGeum := '0';

                  if grdMain.ints[12, i] = 1 then
                    jange := true
                  else
                    jange := false;


//                  case grdMain.ints[28, i] of
//                    1:
//                      yongUa := true;
//                    2:
//                      ilban := true;
//                    3:
//                      ifirst := true;
//                  else
//                    begin
//                      yongua := false;
//                      ilban := false;
//                      ifirst := false;
//                    end;
//                  end;

                  jinchalRyoCode := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate, jange,
                     grdMain.ints[28, i] );
//                                yongua,
//                                ilban,
//                                ifirst); yongua, ilban, ifirst);

                  // 토요가산코드 구하기
                  jinchalRyoCode_gasan := '';
                  if (DayOfWeek(dWorkDate) = 7) // 토요일만 계산
                    and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 이후
                    and (nChoJae <> 3) and (nChoJae <> 4) then // 초재가 심야가 아니면
                  begin
                    jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
                      jange,
                       //  yongua, ilban, ifirst,
                      grdMain.ints[28, i],
                      true);

                  end;

                  { 1건강보험
                    2의료급여1종
                    3의료급여2종
                    4일반
                    5의료급여4종
                    6의료급여8종
                    7산재
                    8자보
                    9차상위1종
                    10차상위2종
                    11차상위2종장애인
                  }
                  // if  grdMain.ints[32, i] in [2,'3','5','6','9','10','11'] then
                  // if grdMain.ints[32, i] in [2, 3, 5, 6, 9, 10, 11] then
                  // varjungekGubun := '0'
                  // else
                  // varjungekGubun := '9';

                  if grdMain.cells[30, i] <> '' then
                    varjungekGubun := grdMain.cells[30, i]
                  else
                  begin
                    varjungekGubun := '9';
                  end;

                  // jinilsu := '1';
                  jinilsu := inttostr(loadJinilsu(grdMain.cells[2, i], grdMain.cells[4, i]));

                  { 1:보완,2:추가,3:분리,8:삭제
                    원청구
                    1보완청구
                    누락청구
                    2추가청구
                    3분리청구
                  }
                  case rgChungGubun.ItemIndex of
                    0:
                      varChungGubun := ' ';
                    1:
                      varChungGubun := '1';
                    2:
                      varChungGubun := '2';
                    3:
                      varChungGubun := '3';
                  end;



                  if  rgChungGubun.ItemIndex=  1  then     //: //1. 보완청구
                  begin
                     if checkbox2.Checked = false then
                        sujinJumin := AnsiStrings.Format('%-11s', [copy(grdMain.cells[8, i], 1 ,11)])  // 수진자주민번호 (-) 생략기재
                     else
                        sujinJumin :=  AnsiStrings.Format('%-13s', [grdMain.cells[8, i]]); // 수진자주민번호 (-) 생략기재
                  end
                  else
                     sujinJumin :=  AnsiStrings.Format('%-13s', [grdMain.cells[8, i]]); // 수진자주민번호 (-) 생략기재


                   nSum1 :=   round(10 * floor( (grdMain.ints[15, i] )/10)) ;
                   nSum2 :=   round(10 * floor( (grdMain.ints[55, i] )/10)) ;
               //    nTot1 :=   nSum1 -  nSum2;


                   nTot1 :=  round(10 * floor( (grdMain.ints[58, i] )/10)) ;
                   totYoyang1:=  nTot1;
                     //  round(10 * floor( (grdMain.ints[15, i] - grdMain.ints[55, i] )/10))  ;

                  // 일반내역'A'
                  WriteLn(F, ChungGuNo + formatFloat('00000', varIlyun) + 'A'
                    // 내역구분 A 일반 B 상병 C 진료 D 처방 E 특정내역메모
                    + varSusikNo // 서식번호  H022:치과요양급여입원 H023:치과요양급여외래
                    // H032:치과의료급여입원 H033:치과의료급여 외래
                    + AnsiStrings.Format('%-8s', [edtYoyangKiho.Text]) // 기관기호
                    + AnsiStrings.Format('%-11s', [varJohapKiho])  // [grdMain.cells[10, i] // 사업장기호(보장기관) 조합기호
                    + AnsiStrings.Format('%-1s', [varBohoGubun]) // AnsiStrings.Format('%-1s', ['']) // 의료급여 종별구분
                    + AnsiStrings.Format('%-1s', [gongsangGubun]) // 공상구분 0무 1공상 ..위 변수 정의서 참조.
                    + AnsiStrings.Format('%-1s', [varjungekGubun]) // 정액0  정율9
                    + AnsiStrings.Format('%-1s', [varChungGubun]) // 청구구분코드  1:보완,2:추가,3:분리,8:삭제
                    + AnsiStrings.Format('%-7s', [varJubsuNo]) //    varJubsuNo    접수번호  당초 청구한 명세서 접수번호
                    + AnsiStrings.Format('%-5s', [varMyungIlyun]) // varMyungIlyun 명세서일련번호  당초 청구한 명세서 일련번호
                    + AnsiStrings.Format('%-2s', [varSayuCode]) //   varSayuCode   사유코드 보완청구시 기청구서 명세서의 심사불능코드기재
                    + AnsiStrings.Format('%-8s', ['']) // 최초입원개시일   입원요양급여비용 분리청구시 기재 CCYYMMDD
                    + AnsiStrings.Format('%-20s', [unicodeString(grdMain.cells[9, i])]) // 가입자(세대주)성명
                    + AnsiStrings.Format('%-20s', [grdMain.cells[10, i]]) // 증번호(보장시설기호)
                    + AnsiStrings.Format('%-20s', [grdMain.cells[3, i]]) // 수진자성명
                    + sujinJumin //AnsiStrings.Format('%-13', [sujinJumin])
                    + Format('%3s', [jinilsu]) // 요양급여일수 , 처방내역의 일수를 따라간다.
                    + Format('%3s', ['1']) // 입원일수
                    + AnsiStrings.Format('%-31s', ['']) // 공란(구 내원일항목)
                    + AnsiStrings.Format('%-2s', ['']) // 도착,입원경로(병원급이상)
                    + Format('%-1s', ['1']) // 진료결과 1계속 2이송 3회송 4사망 9퇴원또는 외래종결
                    + Format('%10s', [ inttostr( totYoyang1 )]) // 요양급여비용총액1
             //       + Format('%10s', [ inttostr(round(10 * floor(grdMain.ints[16, i]/10)) - round(10 * floor(grdMain.ints[56, i]/10)))]) // 본인일부부담금
                      + Format('%10s', [ inttostr(round(10 * floor((grdMain.ints[16, i]- grdMain.ints[56, i])  /10)) )]) //- round(10 * floor(grdMain.ints[56, i]/10)))]) // 본인일부부담금
                    + Format('%10s', ['0']) // 본인부담상한액초과금
             //       + Format('%10s', [ inttostr(round(10 * floor(grdMain.ints[17, i]/10))- round(10 * floor(grdMain.ints[57, i]/10)))]) // 청구액
                      + Format('%10s', [ inttostr(round(10 * floor((grdMain.ints[17, i]- grdMain.ints[57, i])  /10)) )]) //- round(10 * floor(grdMain.ints[57, i]/10)))]) // 청구액
                    + Format('%10s', [varJiwonGeum]) // 지원금
                    + Format('%10s', [grdMain.cells[33, i]]) // 장애인의료비
                    + Format('%10s', ['0']) // 대불금
                    + Format('%10s', [ inttostr( totYoyang1 )])// [inttostr( round(10 * floor( (grdMain.ints[15, i]  )/10))
                                          //    - round(10 * floor( (grdMain.ints[55, i]  )/10))   )]) // 요양급여비용2, 진료비총액
                    + Format('%10s', ['0']) // 보훈청구액
                    + Format('%-10s', ['']) // 공란
                    + Format('%-10s', ['']) // 공란
                    + Format('%10s', ['0']) // 건강보험(의료급여) 100/100 본인부담금총액
                    + Format('%10s', ['0']) // 보훈일부부담금
                    + Format('%10s', [inttostr(round(10 * floor(grdMain.ints[55, i]/10)) )  ]) // 100/100 미만 총액
                    + Format('%10s', [inttostr(round(10 * floor(grdMain.ints[56, i]/10)) ) ]) //grdMain.cells[56, i]]) // 100/100 미만 본인일부 부담금 10원 미만 절사
                    + Format('%10s', [inttostr(round(10 * floor(grdMain.ints[57, i]/10)) ) ])// 100/100 미만 청구액
                    + Format('%10s', ['0']) // 100/100 미만 보훈 청구액
                    );

                  // 특정내역 생성(보험용)
                  // MT008  의사별 진료(조제)일수.  첫번째 명일련에만 기재한다.


//                  if varIlyun = 1 then
//                  begin
//                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT008',   wonjangJinryoIlsu  )  ;
//                    // MT008주민번호(첫6자리)/진료(조제)일수     //641117/22/820207/22/810804/22
//                  end;

                  if grdMain.cells[19, i] <> '' then // 상해외인
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT001', grdMain.cells[19, i]);




                  if grdMain.cells[27, i] <> '' then // 급여환자 진료확인번호 13자리
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT019', grdMain.cells[27, i]);



                  if grdMain.cells[26, i] <> '' then // 급여환자 본인부담 구분
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT018', grdMain.cells[26, i]);

                  if grdMain.cells[14, i] <> '' then
                  begin
                    ChubangNo := formatDatetime('YYYYMMDD', strtodate(grdMain.cells[4, i])) +
                      formatFloat('00000', grdMain.ints[14, i]);

                    if grdMain.cells[35, i] <> '' then // 원외투약특정내역구분
                      BufferNeyuk(grdNeyuk, '4', ChubangNo, '', grdMain.cells[35, i],
                        grdMain.cells[36, i]);
                  end;

                    if (trim(grdMain.cells[37, i]) <> '') and    // 진료특정내역
                              (grdMain.cells[61, i] = '1')  then  //특례적용
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002',
                      trim( subStr( grdMain.cells[37, i], 1, '|') ) );


                 if  cbGubunIn.checked   then   //입원
                 begin
                     //입원시간 퇴원시간
                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS005',
                           trim( grdMain.cells[59, i]  )
                           +'/'
                           + trim( grdMain.cells[60, i]  ));  //입원시간 / 퇴원시간



                 end;

//                if  (nChoJae = 3) or (nChoJae = 4)  then//심야 초재
//                begin
//                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS011',
//                           trim( grdMain.cells[59, i]  )
//                           +'/'
//                           + trim( grdMain.cells[60, i]  ));  //입원시간 / 퇴원시간
//
//                end;


                neyuk :='';
                grdMain.CellToRich(23, i,richedit1 );

                neyuk        :=  grdMain.RichToString(richedit1);  // copy(grdNeyuk.cells[5, i],0,699);
                neyuk        :=  richEdit1.text;//copy(neyuk,0,699);

                neyuk        :=  DeleteLineBreaks( copy( ansistring(neyuk),0,699) );


                //  if trim(grdMain.cells[23, i]) <> '' then // 심사참고사항
                 if trim( neyuk  ) <> '' then // 심사참고사항
                  begin
                                                       //ToDO: CR LF제거 해야 줄바꿈이 안일어난다.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MX999', neyuk);// DeleteLineBreaks(grdMain.Cells[23, i]) );
                  end;


                 if grdMain.cells[47, i] <> '0'   then // 임플란트 틀니 구분(isAI)시 일반진료(0)가 아닌경우
                 begin

                      if grdMain.cells[43, i] <> '' then // 임플란트등록번호 1
                      begin
                           BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[43, i]);
                      end;



                      if grdMain.cells[44, i] <> '' then // 임플란트등록번호 2
                      begin
                           BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[44, i]);
                      end;
                 end;


                  if grdMain.cells[49, i] ='1' then // 임산부
                  begin
                                                       //ToDO: CR LF제거 해야 줄바꿈이 안일어난다.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'F015');// DeleteLineBreaks(grdMain.Cells[49, i]) );
                  end;


                  if (grdMain.cells[28, i] ='1') or // 영유아일반검진
                   (grdMain.cells[28, i] ='2') or // 일반건강검진
                   (grdMain.cells[28, i] ='3') // 생애최초
                   then
                  begin
                                                       //ToDO: CR LF제거 해야 줄바꿈이 안일어난다.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'JT018',  DeleteLineBreaks(grdMain.Cells[28, i]) );
                  end;

                  loadTjungHx( grdneyuk,
                        grdMain.cells[2, i],
                        grdMain.cells[4, i],
                        grdMain.cells[51, i], 1); //기존내역 지우지말고 DB에서 불러오기

           //      cells[28, r] := fieldByName('gub_gu').AsString;
            // 영유아검진당일 // gub_gu 영유아일반검진 영유아=1, 일반=2, 생애최초=3





                  // 상병내역'B'

                 if ( trim(grdMain.cells[43, i]) <> '') or
               (trim(grdMain.cells[44, i]) <> '' ) then
                   isImplant:=true
               else
                    isImplant:=false;




               if  grdMain.cells[47, i] ='1' then   // WriteMyungSeSeo_Sangbyubg에서 치식을 제대로 넣자...
               begin
                 isImplant := true;
               end
               else
               begin
                 isImplant := false;
               end;

          //[grdMain.cells[48, i]]
          //0. 기본
          //1. 임플란트만 있는경우             1
          //2. 틀니만 있는경우                 1
          //3. 임플란트와 틀니                 2
          //4. 임플란트와 타상병               2
          //5. 틀니와 타상병                   2
          //6. 임플란트와틀니와 타상병         3
          //7. 틀니와 틀니수리                 1
          //8. 틀니와 틀니수리와 타상병        2
          //9. 틀니수리                        1
          //10. 틀니수리와 타상병               2
          //11. 틀니수리와 임플란트와 타상병           3
          //12. 틀니와 틀니수리와 임플란트와 타상병    3



                  WriteMyungSeSeo_Sangbyubg('B',
                        grdMain.cells[2, i],
                        grdMain.cells[4, i],
                        grdMain.cells[39, i], //기본 면허번호 jinryo_p
                        varIlyun,
                        grdMain.cells[20, i],
                        isImplant,
                        grdMain.cells[47, i],  //1: implant 2: 틀니 0:같은거
                        grdMain.cells[46, i],  //jinryo_o [iorder]
                        grdMain.ints[48, i]); //틀니 수리 구분







                  // 진료내역'C'

                  // jinruo_s set
                   fillJinryoData(i, false);

                  // 진찰료코드를 넣는다.
                  // 틀니등 진찰료가 0 인것은 진찰료코드를 넣지 않는다.

                  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  //초재진코드 넣는 방법
                  //1. GrdJx2에 넣지 않고 .GHP파일에 바로 밀어넣기  --- 기존 방법
//                  if grdMain.ints[34, i] <> 0 then // 진찰료(jubsuak)
//                  begin
//                    WriteMyungSeSeo_Chojae(  // 진찰료 수가코드 넣기
//                        'C',
//                        grdMain.cells[1, i], //chart
//                        grdMain.cells[4, i], //jin_day
//                        varIlyun,            //일련번호
//                        grdMain.ints[31, i], //초재
//                        grdMain.cells[13, i],//jin_time
//                        grdMain.cells[39, i]);//면허번호
//                    // jin_time
//
//                    if (jinchalRyoCode_gasan <> '')
//                       and (configvalue.varGubun <> '병원') then
//                          WriteMyungSeSeo_SatGasan(
//                               'C',
//                               grdMain.cells[2, i],
//                               grdMain.cells[4, i],
//                               varIlyun,
//                               grdMain.ints[31, i],
//                               grdMain.cells[13, i]); // 토요가산코드
//                  end;

                  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  //초재진코드 넣는 방법
                  //2. GrdJx2에 넣어 놓고 GrdJx2에서 수가를  불러와 명세서 만드는  방법






                  //임플란트,틀니는 진료내역을 분리해야한다.    1:임플란트, 2:틀니

                      if  grdMain.cells[47, i] ='0' then   // 임플란트, 틀니 분리된거중 일반치료
                           WriteMyungSeSeo_jinryo(
                            true,
                           'C',
                              grdMain.cells[2, i],
                              grdMain.cells[4, i],
                              varIlyun,
                              grdMain.ints[31, i],  //초재코드
                              grdMain.ints[32, i],  //종별코드
                              '16',
                              grdMain.ints[7, i],          //나이
                               grdMain.cells[51, i],    //jubsu_id
                               grdMain.cells[50, i],    //isInpat
                                grdMain.cells[38, i],   //의사명
                                 grdMain.cells[39, i],  //면허번호
                               false, false, '0')  // 일반 진료내역

                          else
                            if  grdMain.cells[47, i] ='1' then   // 임플란트, 틀니 분리된거 중  임플란트
                                     WriteMyungSeSeo_jinryo(true, 'C',
                                     grdMain.cells[2, i], //chart
                                     grdMain.cells[4, i], //jinDay
                                        varIlyun,        //illyun
                                        grdMain.ints[31, i],   //초재코드
                                        grdMain.ints[32, i],  //종별코드
                                        '16',
                                        grdMain.ints[7, i] ,   //나이
                                      grdMain.cells[51, i],    //jubsu_id
                                      grdMain.cells[50, i],    //isInpat
                                      grdMain.cells[38, i],   //의사명
                                      grdMain.cells[39, i],  //면허번호

                                        false,                 //jabo
                                        false,   // 임플란트 진료내역
                                        '1' )    //iaValue


                                else
                                if  grdMain.cells[47, i] ='2' then   // 임플란트, 틀니 분리된거 중 틀니
                                     WriteMyungSeSeo_jinryo(true, 'C', grdMain.cells[2, i], grdMain.cells[4, i],
                                        varIlyun, grdMain.ints[31, i], //초재코드
                                        grdMain.ints[32, i],  //종별코드
                                        '16',
                                        grdMain.ints[7, i],        //나이
                                grdMain.cells[51, i],    //jubsu_id
                               grdMain.cells[50, i],    //isInpat
                                grdMain.cells[38, i],   //의사명
                                 grdMain.cells[39, i],  //면허번호


                                         false, false, '2')  // 틀니진료내역


                                else
                                begin

                                   WriteMyungSeSeo_jinryo(
                                   true,
                                   'C',
                                   grdMain.cells[2, i],
                                   grdMain.cells[4, i],
                                   varIlyun,
                                   grdMain.ints[31, i],    //초재코드
                                   grdMain.ints[32, i],  //종별코드
                                   '16',
                                   grdMain.ints[7, i],          //나이
                                   grdMain.cells[51, i],    //jubsu_id
                                   grdMain.cells[50, i],    //isInpat
                                   grdMain.cells[38, i],   //의사명
                                   grdMain.cells[39, i],  //면허번호

                                            false, false, '');  // 진료내역

                                end;



//                 if useWonNaeTuYak = true then
//                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS002', inttostr(iChongTu));
//                    // 원내투약일수(주사제)


                  // 처방내역'D'
                  WriteMyungSeSeo_Chubang('D', grdMain.cells[4, i], varIlyun,  grdMain.ints[14, i]);

                  // 특정내역'E'
                  WriteMyungSeSeo_Neyuk('E', grdMain.cells[4, i], varIlyun, 0);





                  application.ProcessMessages;
                  AdvProgressBar1.Position := i;






//                reLoad:
//                   application.ProcessMessages;
//                   AdvProgressBar1.Position := i;



          except
             on E: Exception do
             begin
                 ExceptLogging('ConVertData:' + E.Message +'Chart==>'+grdMain.cells[4, i]);
             end;
          end;


  end;

end;



function Tjumgum_f.loadJinilsu(varChart, varJinday: ansistring): Integer;
begin
  result := 1;
  with dm_f.sqlTemp do
  begin
    close;
    sql.Clear;
    sql.Add('select max(div) as MaxDiv from jinryo_s');
    sql.Add(' where chart=:chart and jin_day=:jin_day');
    paramByName('chart').AsString := varChart;
    paramByName('jin_day').AsString := varJinday;
    open;
    if not isEmpty then
    begin
      result := fieldByName('MaxDiv').AsInteger;
    end;
  end;

end;


procedure Tjumgum_f.Button1Click(Sender: TObject);
begin
  ReSummary_jabo;
end;

procedure Tjumgum_f.Button20Click(Sender: TObject);
var
    refTyp : string;
    docID  : string;
begin

//   docID :=  lblDocID.Caption;
//
//    case pagecontrol1.ActivePageIndex of
//       0: refTyp :='2';
//       1: refTyp :='1';
//    end;
//
//    saveTJung(1,    //1: insert 2: update
//      '0',               //TjungID,
//      lblJubsuID.Caption,    //  jubsu_id,
//      ma_chart,
//      lblJinday.caption,
//      RefTyp,
//      lblJinSkey.caption,    // jin_skey,
//      edtCode.text,          //
//      memTJungSayuJul.text,  // RefCmt,
//      FormatDateTime('YYYY-MM-DD' ,now),// modday,
//      docID,//userID,
//      edtSugaCode.text//su_key : string
//      );
//
//      loadTjungHx( grdneyuk,
//                 ma_chart, lblJinday.caption, lblJubsuID.Caption);

//     grdneyuk.addRow;
//     grdneyuk.Cells[1,  grdneyuk.rowcount-1]:=  refTyp;   //발생단위
//     grdneyuk.Cells[2,  grdneyuk.rowcount-1]:=  edtSugaCode.text;
//     grdneyuk.Cells[3,  grdneyuk.rowcount-1]:=   lblJinSkey.caption ;    //줄번호
//     grdneyuk.Cells[4,  grdneyuk.rowcount-1]:=  cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0] ;
//     grdneyuk.Cells[5,  grdneyuk.rowcount-1]:=  edtCode.text+'/'+edtSugaCode.Text+'/';
//     grdneyuk.Cells[6,  grdneyuk.rowcount-1]:=  FormatDateTime('YYYY-MM-DD' ,now);// FormatDateTime('YYYY-MM-DD' , jinryo_f.dtDate.date);
//     grdneyuk.Cells[7,  grdneyuk.rowcount-1]:=  docID;//
//     grdneyuk.Cells[8,  grdneyuk.rowcount-1]:=  '0';//
//     grdneyuk.Cells[9,  grdneyuk.rowcount-1]:=  lblJinSkey.captio;//



end;

procedure Tjumgum_f.Button25Click(Sender: TObject);
begin
     pnlSuga.Visible := true;
     LoadGroupCode(grdGroupcode);
end;

procedure Tjumgum_f.Button26Click(Sender: TObject);
begin
  showmessage(formatFloat('#,0' , grdJx2.ColumnSum(6, 1, grdJx2.RowCount-1))) ;
end;

procedure Tjumgum_f.Button29Click(Sender: TObject);
begin
          pnlModSuga.Visible := false;
end;

procedure Tjumgum_f.insertGridGroupSuga(aGrid: TAdvStringGrid;
  col1, col2, col3, ARow: Integer);
var
  i: Integer;
  AGroupName, AGroupCode, aSutak: string;

begin

  if ARow <= 0 then
    exit;

  // InsertSugaCode( aGrid.Cells[2, ARow]  , aGrid.Cells[1, ARow] , 0 , aGrid.Cells[3, ARow]);
  InsertSugaCode(aGrid.Cells[col2, ARow],  //GroupName
            aGrid.Cells[col1, ARow],       //GroupCode
            0,                             //nAdd
            'C',
            aGrid.Cells[col3, ARow]);      //aSutak  0:일반 1: 수탁검사 2: 자체검사

  // GroupCode su_gu2 = 2 자체검사  aGrid.Cells[3, ARow]

  inputShortCut := false;

  if lstGroupTemp.Items.Count > 0 then
  begin
    for i := 0 to lstGroupTemp.Items.Count - 1 do
    begin

      AGroupName := substr(lstGroupTemp.Items[i], 1, '|');
      AGroupCode := substr(lstGroupTemp.Items[i], 2, '|');
      aSutak     := substr(lstGroupTemp.Items[i], 3, '|');

      InsertSugaCode(AGroupName, AGroupCode, 0,   'C', aSutak);
                  //GroupName    GroupCode   nAdd  aSutak
    end;
  end;


  lstGroupTemp.Items.Clear;

end;

procedure Tjumgum_f.Button30Click(Sender: TObject);
var
  ci : integer;
  kindTag, kindTag2, kindTag3 : double; //1,2,4,8

begin
//   combobox1.items =선택
//보험
//보호
//자보

          //건보, 보호, 자보,  산재인지 확인
          kindTag := 0;

          for ci:= 0 to 3 do
          begin
             if checkArray[ci].Checked then
             begin
                 kindTag :=  kindTag +  checkArray[ci].Tag ;
             end;
          end;

         while not (kindTag <= 0) do
         begin
              kindTag2 := Power(2, Trunc((Log2(kindTag))));
              kindTag := kindTag - kindTag2;
              kindTag3 := Log2(kindTag2) + 1;

         end;

   loadMyungSe( formatFloat('#', kindTag3),//inttostr(comboBox1.ItemIndex),  //1: 보험, 2:보호 3:자보
         cbYear1.Text,
         cbMonth1.Text,
         cbMyungNo.Text);
        // formatFloat('0000',cbChungno.ItemIndex) );

end;

procedure Tjumgum_f.Button31Click(Sender: TObject);
begin
            if  trim(edtBeforeCode.Text) ='' then
            begin
              showmessage('변경 전 코드를 입력하세요.');
              edtBeforeCode.SetFocus;
              exit;
            end;

            if  trim(edtAfterCode.Text) ='' then
            begin
              showmessage('변경 후 코드를 입력하세요.');
              edtAfterCode.SetFocus;
              exit;
            end;



           if MessageDlg('선택하신 자료'+'['+edtBeforeCode.Text+']'+'를 정말로 일괄 변경합니까?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin

                try

                   with dm_f.sqlTemp do
                   begin

                        close;
                        sql.Clear;
                        sql.Add('update jinryo_s set');
                        sql.Add('su_key = :su_key_new ');//, su_kor_name = :sugakorname ');
                        sql.Add('where  su_key =:su_key_old');


                        paramByname('su_key_old').AsString    := edtBeforeCode.Text;
                        paramByname('su_key_new').AsString    := edtAfterCode.Text;
                     //   paramByname('sugakorname').AsString   := lblAftName.caption;

                          case rgKind.ItemIndex of
                          1:  // 기간천체
                            begin
                               sql.Add('and (jin_day >=:jin_day1 and jin_day <=:jin_day2) ');

                               paramByname('jin_day1').AsString   := formatDatetime('YYYY-MM-DD', dtStart.date);// lblJubsuId.caption;
                               paramByname('jin_day2').AsString   :=  formatDatetime('YYYY-MM-DD',dtFinish.date);//ma_Jubsu_Id;// lblJubsuId.caption;
                            end;
                          0:  //여기만 적용
                            begin

                              sql.Add('and jubsu_id=:jubsu_id');
                               paramByname('jubsu_id').AsString   := ma_Jubsu_Id;// lblJubsuId.caption;
                            end;
                          end;


                      execsql;

                   end;
                    showmessage('일괄 변경되었습니다.');

                    pnlModSuga.Visible := false;

                except

                end;
           end;



end;


procedure Tjumgum_f.Button32Click(Sender: TObject);
begin
      grdMain.FixedCols :=    grdMain.FixedCols +1;
      grdMain.Repaint;
end;

procedure Tjumgum_f.Button33Click(Sender: TObject);
begin
      grdMain.FixedCols :=    1;
end;

procedure Tjumgum_f.Button3Click(Sender: TObject);
begin

//   loadMyungSe( inttostr(comboBox1.ItemIndex),  //1: 보험, 2:보호 3:자보
//         cbYear.Text,
//         cbMonth.Text,
//          comboBox2.Text);


    LoadMyungseList( cbYear1.Text,
         cbMonth1.Text) ;
//   combobox1.items =선택
//보험
//보호
//자보

//   loadMyungSe( inttostr(comboBox1.ItemIndex),  //1: 보험, 2:보호 3:자보
//         cbYear.Text,
//         cbMonth.Text,
//         formatFloat('0000',cbChungno.ItemIndex) );
end;


procedure Tjumgum_f.Button4Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin


      strProgram := 'C:\hira\DDMD\bin\'+ 'samview.exe';
      ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
          nil, SW_SHOW);
end;


procedure Tjumgum_f.LoadMyungseList( varYear,  varMonth  :string);
var
  ci : integer;
  kindTag, kindTag2, kindTag3 : double; //1,2,4,8

begin
//   combobox1.items =선택
//보험
//보호
//자보

          //건보, 보호, 자보,  산재인지 확인
          kindTag := 0;

          for ci:= 0 to 3 do
          begin
             if checkArray[ci].Checked then
             begin
                 kindTag :=  kindTag +  checkArray[ci].Tag ;
             end;
          end;

         while not (kindTag <= 0) do
         begin
              kindTag2 := Power(2, Trunc((Log2(kindTag))));
              kindTag := kindTag - kindTag2;
              kindTag3 := Log2(kindTag2) + 1;


         end;


    cbMyungNo.Items.Clear;
    with dm_f.sqlTemp do
    begin
          close;
          sql.Clear;
          sql.Add(' select * from ma_chungGu ');
          sql.Add(' where    chungYear=:chungYear  ');
          sql.Add(' and chungMonth =:chungMonth and kind=:kind  ');

           paramByName('kind').AsString := formatFloat('#', kindTag3);
           paramByName('chungYear').AsString := varYear;
          paramByName('chungMonth').AsString := varMonth;
           open;
          if not isEmpty then
          begin
              while not eof do
              begin
                 cbMyungNo.Items.Add( fieldByName('ChungNo').asString);
                 next;
              end;
          end;
    end;
end;



procedure Tjumgum_f.LoadMyungse( varKind ,varYear,  varMonth  , varNo :string);
var
        Blob: TStream;
        Strm: TFileStream;
        BlobFld: TBlobField;

begin
    with dm_f.sqlTemp do
    begin
      close;
      sql.Clear;
      sql.Add(' select * from ma_chungGu ');
      sql.Add(' where kind =  :kind and  chungYear=:chungYear  ');
      sql.Add(' and chungMonth =:chungMonth and chungNo= :chungNo  ');
      paramByName('kind').AsString := varKind;
      paramByName('chungYear').AsString := varYear;
      paramByName('chungMonth').AsString := varMonth;
      paramByName('chungNo').AsString := varNo;
      open;
      if  isEmpty then
      begin
        exit;
      end;

      BlobFld := FieldByName('neyuk') as TBlobField;
      Blob := CreateBlobStream(BlobFld, bmRead);
      try
         //   Strm := TFileStream.Create(ExtractFilePath(ParamStr(0))
         //     + varYear + varMonth + varNo   + '.GHP' , fmCreate);

            Strm := TFileStream.Create('C:\hira\DDMD\sam\in\'
            + varYear + varMonth + varNo   + '.GHP' , fmCreate);
            try
              Strm.CopyFrom(Blob, Blob.Size);
            finally
              Strm.Free;
            end;
      finally
            Blob.Free;
        end;

    end;
end;


function Tjumgum_f.ReplaceImplantTeeth(varChart:string; varJinDay:string; varPos:string; varteeth:string):string;
var
  varTeethimp, varTeethR:string;
  varTeethTemp : array [0 .. 7] of string;
  i:integer;
begin

      // implant_info에는 임플란트를 한 치아정보가 있다. 일자는 처음 등록한 날짜.
      with dm_f.SqlWork do
      begin
        close;
        sql.Clear;
        sql.Text:= ' select * from  implant_info '+#10#13+
                   ' where chart=:chart ';//   and regdate = :regdate';
        paramByName('chart').AsString :=  varChart ;
        //    paramByName('regdate').AsString :=  varjinDay ;

        open;
        if not isEmpty then
             varTeethimp:= fieldByName(varPos).AsString   //varPos ==> 'P1', 'P2', 'P3', 'P4'
        else
        begin
             varTeethimp := '';
             result := varteeth;
             exit;
        end
      end;
      //배열에 넣어놓자...

      for I :=0 to 7 do
      begin
              varTeethTemp[i] := copy(varteethimp ,i+1,1);
      end;

      for I :=0 to 7 do
      begin
         if checkInt( copy(varteeth ,i+1,1)  ) then
         begin

              if  (copy(varteeth ,i+1,1) =  varteethTemp[i])   then
                  varTeethR:= varTeethR + '9'
               else
                  varTeethR:= varTeethR+  copy(varteeth ,i+1,1) ;
         end
         else
         begin
                  varTeethR:= varTeethR+  copy(varteeth ,i+1,1) ;
         end;
      end;

      result:= varteethR;

end;

procedure Tjumgum_f.WriteMyungSeSeo_Sangbyubg(
    varGubun,
    varChart,
    varJinday: string;
    aMyunHu:string;
    illyun: Integer;
    teakryeNo : string;
    isImplant : boolean=false;
    iaValue :string ='';
    iaOrder:string='';
    isArtRefair:integer=0 );
var

  s_key: array [0 .. 2] of string;
  s_key1: string;
  s_key2: string;
  s_key3: string;
  kwamok: string;
  teeth1: string;
  teeth2: string;
  teeth3: string;
  teeth4: string;
  jinday: string;
  sangBeongGubun: string;
  myunhuNo, myunhuKind: string;
  i: Integer;
 // teakRyeNo: string;
  artteethUpper, artteethLower: string;

  cntUpper, cntLower : integer;
  iOrder : integer;

  artTeethCnt: TTeeth;
begin
  iOrder := 1;

  varMT037 := 0;


      try
      with dm_f.sqlTemp do
      begin
        close;
        sql.Clear;
        sql.Add('select * from jinryo_o ');
        sql.Add('  where chart=:chart and jin_day=:jin_day ');


        //틀니 임플란트 동시 청구인 경우에  jin_order를 구분해서 상병을 가져와야 한다.
//        if (iaValue = '1') or (iaValue = '2') then
//        begin
//            if iaOrder <> '' then
//            begin
//               sql.Add('  and jin_order = :jin_order ');
//               paramByName('jin_order').AsString := iaOrder;
//            end;
//        end
//        else
//            if (iaValue = '0')  then
//            begin
//              //  if iaOrder <> '' then
//              //  begin
//              //     sql.Add('  and jin_order <> :jin_order ');
//              //     paramByName('jin_order').AsString := iaOrder;
//              //  end
//               // else
//                begin
//                   sql.Add('  and jin_order <> :jin_order ');
//                   paramByName('jin_order').AsString := '0'; //기타의 경우에는 맨 처움 order를 가져오자.
//                end;
//
//            end;
//


        sql.Add(' order by jusang desc, jin_order asc ');
        paramByName('chart').AsString := varChart;
        paramByName('jin_day').AsString := varJinday;
        open;
        First;
        if not isEmpty then
        begin

          sangBeongGubun := ''; //주상병은 하나만 쓰고 나머지는 부상병...
                                //배제된 상병은? 후에 별도로 입력할 수 있도록 하자.

          while not eof do
          begin
            // iorder:=  fieldByName('jin_order').AsInteger ;

            jinday := stringreplace(varJinday, '-', '', [rfReplaceAll]);

            s_key[0] := stringreplace(fieldByName('s_key1').AsString, '.', '',
              [rfReplaceAll]);
            s_key[1] := stringreplace(fieldByName('s_key2').AsString, '.', '',
              [rfReplaceAll]);
            s_key[2] := stringreplace(fieldByName('s_key3').AsString, '.', '',
              [rfReplaceAll]);
            // s_key1 := stringreplace(FieldByName('s_key1').AsString, '.', '', [rfReplaceAll]);
            // s_key2 := stringreplace(FieldByName('s_key2').AsString, '.', '', [rfReplaceAll]);
            // s_key3 := stringreplace(FieldByName('s_key3').AsString, '.', '', [rfReplaceAll]);


            //임플란트, 틀니의 경위 다른 상병이 있는 경우
            //임플란트면 K081 틀니면 Z463을 임의로 넣는다.
            if   iaValue ='1' then
            begin
                  s_key[0] := 'K081';
                  s_key[1] := '';
                  s_key[2] := '';

                    //임플란트, 틀니의 경위 다른 상병이 있는 경우 MT037 에 M을 넣는다.
                    varMT037 := varMT037 + 1;
            end;

            if   iaValue ='2' then
            begin

                //  s_key[0] := 'Z463';
                //  s_key[0] := 'K081';
               if isArtRefair in [9, 10] then //틀니 수리
                  s_key[0] := 'Z463'
               else
                  s_key[0] := 'K081';

                  s_key[1] := '';
                  s_key[2] := '';
                    varMT037 := varMT037 + 1;




            end;


            if (fieldByName('kwamok').AsString <> '0' )
               and  (trim(fieldByName('kwamok').AsString) <> '')  then
            begin
               kwamok := fieldByName('kwamok').AsString;
            end
            else
            begin
                kwamok := '16';

            end;

            teeth1 := fieldByName('p1').AsString; // 우상
            teeth2 := fieldByName('p2').AsString; // 좌상
            teeth3 := fieldByName('p4').AsString; // 우하
            teeth4 := fieldByName('p3').AsString; // 좌하



          //여기서 임플란트 치아를 찾아내서 0으로 써주자.

          if isImplant = true then
          begin

            teeth1 :=  ReplaceImplantTeeth( varChart, varJinday,'P1', fieldByName('p1').AsString);
            teeth2 :=  ReplaceImplantTeeth( varChart, varJinday,'P2', fieldByName('p2').AsString);
            teeth3 :=  ReplaceImplantTeeth( varChart, varJinday,'P4', fieldByName('p4').AsString);
            teeth4 :=  ReplaceImplantTeeth( varChart, varJinday,'P3', fieldByName('p3').AsString);

          end;



              //  cntUpper := calcTeethUpper(teeth1, teeth2, teeth3, teeth4);

              //  cntLower := calcTeethLower(teeth1, teeth2, teeth3, teeth4);


           artTeethCnt := TeethCnt(makesp_Jinryo(Teeth1, teeth2, teeth3, teeth4));

           cntUpper    := artTeethCnt.nSangF + artTeethCnt.nSangR +   artTeethCnt.nSangL ;
           cntLower    := artTeethCnt.nHaF   + artTeethCnt.nHaR +   artTeethCnt.nHaL ;






            if cbChungGuMethod.ItemIndex = 0 then // 심평원청구
            begin
              teeth1 := TeethConvert_SimPyungWon(teeth1); // 우상
              teeth2 := TeethConvert_SimPyungWon(teeth2); // 좌상
              teeth3 := TeethConvert_SimPyungWon(teeth3); // 우하
              teeth4 := TeethConvert_SimPyungWon(teeth4); // 좌하



            end
            else if cbChungGuMethod.ItemIndex = 1 then // EDI청구
            begin
              teeth1 := TeethConvert_EDI(teeth1); // 우상
              teeth2 := TeethConvert_EDI(teeth2); // 좌상
              teeth3 := TeethConvert_EDI(teeth3); // 우하
              teeth4 := TeethConvert_EDI(teeth4); // 좌하
            end;





         //    teakRyeNo := trim(loadTeakRyeNo(varChart)) ;
             artteethUpper := trim(loadTeuleeRegiNo(varChart).upper);
             artteethLower := trim(loadTeuleeRegiNo(varChart).lower);



           if teakRyeNo <> '' then

              BufferNeyuk(grdNeyuk, '1', '', '', 'MT014',
              trim(substr(teakRyeNo, 1, '|'))   );

           for i := 0 to 2 do  //상병 갯수만큼 라인이 생성된다.
            begin
              if s_key[i] <> '' then
              begin
                  case i of
                    0:
                      begin
                      if sangBeongGubun <> '' then
                        sangBeongGubun := '2'
                      else
                        sangBeongGubun := '1';
                        // 면허번호
                        //ToDo : 상병에 기록된 면허번호정보를 가져오는데...jinryo_p면허로 대체...보류 2017-10-18 양문치과 원장 부재오류
                       //    if fieldByName('myunhu').AsString <> '' then
                       //    begin
                       //      myunhuNo := fieldByName('myunhu').AsString ;
                       //      varDrMyunHu2 := myunhuNo;
                       //
                       //    end
                       //    else
                           begin

                         //    myunhuNo := varDrMyunHu; //기본 등록돤 면허번호
                             myunhuNo :=  aMyunHu;
                             varDrMyunHu2 :='';
                           end;

                           myunhuKind := '1'; // 2:치과의사    1:의사
                      end;
                    1, 2:
                      begin
                      if sangBeongGubun <> '' then
                        sangBeongGubun := '2'
                      else
                        sangBeongGubun := '1';
                        myunhuKind := '1';
                        myunhuNo := '';
                      end;
                  end;

                // 특례등록번호가 있고 다음의 상병이면...
                // 산정특례번호 유무 확인
                { //진료입력시 특정코드 입력하여 불러오는 것으로 수정
                  if teakRyeNo <> '' then
                  begin
                  // 상병코드로 특정기호의 특정내역을 불러낸다. MT002
                  if (s_key[i] = 'Q754') then
                  begin
                  BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'V182');
                  end;

                  if (s_key[i] = 'M350') then
                  begin
                  BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'V139');
                  end;

                  // 등록 암환자의 경우는 5년간 다음 상병으로 진료를 받은 경우
                  // 다음의 특정기호 부여
                  if (s_key[i] = 'D102') or (s_key[i] = 'C031') then
                  begin
                  BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'V193');
                  end;


                  end;
                }


                // MT037 한번만 넣기 (레진상 틀니 및 타 상병 진료) 한번만 기재)


                //틀니 등록번호 기재
                //상악인경우  artteethUpper
                if (artTeethUpper <> '')
                      and ( cntUpper > 0 ) then
                  //   and (teeth1 + teeth2 = '0**************0') then  //상악이 선택된 경우
                begin
                  if (s_key[i] = 'Z463') or (s_key[i] = 'K081') then
                        BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', artTeethUpper)
                  else
                  begin

               //     if varMT037 = 0 then
              //        BufferNeyuk(grdNeyuk, '1', '', '', 'MT037', 'M');


                  end;
                end;




                //하악인경우  artteethLower
                if (artTeethLower <> '')
                   and  ( cntlower > 0 )  then
                // and (teeth3 + teeth4 = '0**************0')then
                begin
                  if (s_key[i] = 'Z463') or (s_key[i] = 'K081')  then
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', artTeethLower)
                  else
                  begin

                  end;
                end;


                //타상병 진료와 동시에 등록임플란트 대상 진료시 'M' 기재
                if varMT037 > 0 then
                      BufferNeyuk(grdNeyuk, '1', '', '', 'MT037', 'M');



            if cb3.checked  =  false then

                WriteLn(F, ChungGuNo + formatFloat('00000', illyun)
                  + varGubun
                  + AnsiStrings.Format('%-1s', [sangBeongGubun]) // 상병분류구분,  1 주상병 2 부상병 3 배제된상병
                  + AnsiStrings.Format('%-6s', [s_key[i]])
                  + AnsiStrings.Format('%-2s', [kwamok])
                  + AnsiStrings.Format('%-2s', ['']) // 내과 세부전문과목
                  + AnsiStrings.Format('%-8s', [jinday])
                  + AnsiStrings.Format('%-1s', [myunhuKind])  // 1:의사 2:치과의사
                  + AnsiStrings.Format('%-10s', [myunhuNo])
                  + AnsiStrings.Format('%-8s', [teeth1])
                  + AnsiStrings.Format('%-8s', [teeth2])
                  + AnsiStrings.Format('%-8s', [teeth3])
                  + AnsiStrings.Format('%-8s', [teeth4]))

            else

                  WriteLn(F, ChungGuNo
                  + formatFloat('00000', illyun)
                  + varGubun
                  + Format('%-1s', [sangBeongGubun]) // 상병분류구분,  1 주상병 2 부상병 3 배제된상병
                  + Format('%-6s', [s_key[i]])
                  + Format('%-2s', [kwamok]) +
                  Format('%-2s', ['']) // 내과 세부전문과목
                  + Format('%-8s', [jinday])
                  + Format('%-8s', [teeth1]) +
                  Format('%-8s', [teeth2])
                  + Format('%-8s', [teeth3]) +
                  Format('%-8s', [teeth4]));

              end;
            end;

            iOrder := iOrder + 1;
            next;
          end;
        end;
      end;

       except
       on E: Exception do
       begin
           showmessage('ConVertData:WriteMyungSeSeo_Sangbyubg : ' + E.Message +' Chart==>'+varChart + varJinday);
           ExceptLogging('ConVertData:WriteMyungSeSeo_Sangbyubg : ' + E.Message +' Chart==>'+varChart + varJinday);
       end;



  end;
end;

function Tjumgum_f.loadTeakRyeNo(varChart: string): string;
begin
  result := '';
  with dm_f.sqlregi do
  begin
    close;
    sql.Clear;
    sql.Add('select bonsanjung from ma_gogek_basic');
    sql.Add('where chart=:chart');
    paramByName('chart').AsString := varChart;
    open;
    last;
    if not isEmpty then
    begin
      result := fieldByName('bonsanjung').AsString;
    end;

  end;
end;

function Tjumgum_f.loadTeuleeRegiNo(varChart: string): Tartteeth_Info;
begin

  with dm_f.sqlregi do
  begin
    close;
    sql.Clear;
    sql.Add('select artteeth1, artteeth2 from ma_gogek_basic');
    sql.Add('where chart=:chart');
    paramByName('chart').AsString := varChart;
    open;
    last;
    if not isEmpty then
    begin
      result.upper := fieldByName('artteeth1').AsString;
      result.lower := fieldByName('artteeth2').AsString;
    end;

  end;
end;

procedure Tjumgum_f.WriteMyungSeSeo_jinryo_old(varGubun, varChart,
  varJinday: string; illyun: Integer; varChojae: Integer;
  age: Integer; jubsu_id:string; isInpat:string;
  varJabo:boolean=false; isImplant : boolean=false; iaValue:string ='' );
const
  sqlselect =
    'select  s.chart, s.jin_day, s.jins_key, s.su_key, s.su_kor_name, s.jin_ilsu,       '+ #10#13 +
    ' s.jin_simya, s.jin_soa, s.jin_danga, s.g_check, s.group_key, s.jin_san3,    '+ #10#13 +
    ' s.sort_key, s.su_gu1,                                                       '+ #10#13 +
    's.su_gu2, s.su_gu3, s.jin_qty, s.div, s.s_key, s.sang, s.jaejo_key,          '+ #10#13 +
    's.jin_kumak, s.dan_qty, s.gub_gu, s.Iorder, s.chart_id, s.sutak_key,         '+ #10#13 +
    's.fil, s.su_danwi, s.myunhu AS DocMyunhu,                                    '+ #10#13 +
    's.Hwakin_key, s.chartid, s.except_code,                                      '+ #10#13 +
//    'o.jin_order, o.p1, o.p2, o.p3, o.p4, o.s_key1, o.s_key2, o.s_key3,           '+ #10#13 +
//    'o.kwamok, o.sang1,  o.chart AS Expr1, o.jin_day AS Expr2,                    '+ #10#13 +
//    'o.sang2, o.sang3, o.fil AS Expr3, o.Doc_code, o.chartid AS Expr4,            '+ #10#13 +
//    'o.ID, o.myunhu AS Expr5,                                                     '+ #10#13 +
    'p.kwamok AS Expr8, p.kw_code,   w.samyunhu,                                  '+ #10#13 +
    'p.jongbeul, p.dup, p.nai, p.chojae, p.gasan, p.gub_gu AS Expr9, p.chong,     '+ #10#13 +
    'p.chung, p.kamak, p.sunsugeum, p.misugeum, p.sunapak, p.junsanchaek,         '+ #10#13 +
    ' p.jubsuak,  p.chart AS Expr6, p.jin_day AS Expr7,                           '+ #10#13 +
    'p.youngsu_num, p.kam_code, p.kam_rate, p.kam_sayu, p.jin_gu, p.kyulkwa,      '+ #10#13 +
    'p.doc_code AS Expr10, p.jinryosil, p.jin_time, p.jin_user, p.sunap,          '+ #10#13 +
    'p.gongsang, p.jojae11,                                                       '+ #10#13 +
    'p.jojae21, p.bonin, p.bonin1, p.makam, p.jusa, p.whan_day, p.whan_time,      '+ #10#13 +
    'p.whan_user, p.account, p.whanbulak, p.card, p.cardcode, p.cardname,         '+ #10#13 +
    'p.JojaeIn, p.JojaeOut,                                                       '+ #10#13 +
    'p.extra, p.wonwes, p.team, p.remark, p.chart_id AS Expr11, p.cmemo,          '+ #10#13 +
    ' p.SunsuCard, p.SunsuTong, p.SunsuCash, p.sunsucardcode, p.sunsucardname,    '+ #10#13 +
    'p.sunsutongcode, p.sunsutongname, p.Cash, p.Tong, p.TongName, p.TongCode,    '+ #10#13 +
    ' p.Makam_day, p.Makam_time, p.Makam_chk, p.Makam_Sabun, p.jinryo_pid,        '+ #10#13 +
    'p.fil AS Expr12, p.bill, p.HwakinNo, p.bontype, p.Yujikum, p.wein, p.tjung,  '+ #10#13 +
    ' p.chartid AS Expr13                                                         '+ #10#13 +
    'FROM                                                                          '  + #10#13 +
//    '      jinryo_s AS s INNER JOIN                                                '  + #10#13 +
//    '                      jinryo_o AS o ON s.Iorder = o.jin_order                 '    + #10#13 +
//    '                                AND s.chart = o.chart                         '  + #10#13 +
//    '                                AND s.jin_day = o.jin_day INNER JOIN          '   + #10#13 +
//    '                      jinryo_p AS p ON s.jin_day = p.jin_day                  '  + #10#13 +
//    '                                AND s.chart = p.chart                         ' + #10#13 +
     ' jinryo_s AS s INNER JOIN                                                    ' + #10#13 +
     '                 jinryo_p AS p ON s.jubsu_id = p.jubsu_id                    ' + #10#13 +
     '                   inner join    ma_sawon_basic w on w.said=s.doc_code       ' + #10#13 +
    ' where s.chart=:chart and s.jin_day=:jin_day  and s.isInpat =:isInpat       ' + #10#13 +
//    ' and o.chart=s.chart and o.jin_day=s.jin_day                                  ' +  #10#13 +
    ' and jin_qty > 0 and s.gub_gu <> ''2''                                          ' + #10#13 +
    ' and su_key <> ''''   and s.jubsu_id=:jubsu_id                                ';


  sqlselect_orderby =  ' order by sort_key';//s.jins_key     ';



var

  iOrder: Integer;
  su_key: string;
  su_gu1: Integer;
  su_gu2: Integer;
  su_gu3: Integer;
  teeth1: string;
  teeth2: string;
  teeth3: string;
  teeth4: string;
  jinday: string;

  HangNo: string;
  MokNo: string;
  JulNo: string;
  CodeGubun: string;
  SugaCode: string;
  Danga: string;

  iltu: double;
  iltu_D: string;

  chongtu: string;
//  iChongTu: Integer;
  ilHoitu: string;

  kumak: double;

  sangHanga: string;
  drugSangHanGa: string;
  changeDay: string;

  myunhuNo, myunhuKind, myunhuJuminNo, docName: string;
  except_code: string;

  varSutakinfo: string;
  varSimya: boolean;
  varSimyaTime: string;
  varsoa: boolean;

  i: Integer;
  varJinChalRyoNeyuk: string;
//  sang1, sang2, sang3: string;
  sanCode: string;
  newDanga:integer;
  isSugaDanga : boolean; //행위면 true 재료면 false
begin
  iOrder := 1 + ChojaeJul + SatGasanJul;
  iChongTu := 0;
  { select * from jinryo_s s join jinryo_o o on s.iorder=o.jin_order
    join jinryo_p p on (s.jin_day=p.jin_day and s.chart=p.chart)
    where s.chart='1113' and s.jin_day='2013-08-24'
    and o.chart=s.chart and o.jin_day=s.jin_day
    and jin_qty > 0
    and su_key <> ''  order by s.jins_key
  }

  try
  with dm_f.sqlTemp do
  begin
    close;
    sql.Clear;
    sql.text := sqlselect;
    { sql.Add('select * from jinryo_s s join jinryo_o o on s.iorder=o.jin_order');
      sql.Add(' join jinryo_p p on (s.jin_day=p.jin_day and s.chart=p.chart)   ');
      sql.Add(' where s.chart=:chart and s.jin_day=:jin_day                    ');
      sql.Add(' and o.chart=s.chart and o.jin_day=s.jin_day                    ');
      sql.Add(' and jin_qty > 0                                                ');
      sql.Add(' and su_key <> ''''  order by s.jins_key                        ');
    }



    if iaValue ='1' then     // 임플란트, 틀니 분리된거 중  임플란트
    begin
       // and (su_gu1 <> ''1'' )
        sql.text :=  sql.text +   ' and (su_key like ''UB%''    or  su_gu3 = ''28'' )  and  not ( su_key like ''UA%''  or su_key like ''U15%'')   ';  //
    end
    else

    if iaValue ='2' then     // 임플란트, 틀니 분리된거 중  틀니
    begin
       // and (su_gu1 <> ''1'' )
        sql.text :=  sql.text +   ' and (  su_key like ''UA%''  or su_key like ''U15%''   )    ';    //
    end
    else
    if iaValue ='0' then    // 임플란트, 틀니 분리된거 중  일반치료
    begin

        sql.text :=  sql.text +   ' and  not (su_key like ''UA%'' or su_key like ''UB%''  or su_key like ''U15%'')  and ( su_gu3 <> ''28'' )  ';   //

    end;

    sql.text :=  sql.text + sqlselect_orderby ;

    paramByName('chart').AsString := varChart;
    paramByName('jin_day').AsString := varJinday;
    paramByName('jubsu_id').AsString := jubsu_id;
    paramByName('isInPat').AsString := isInPat;
    open;
    First;


    if not isEmpty then
    begin
      while not eof do
      begin

        jinday := stringreplace(varJinday, '-', '', [rfReplaceAll]);

        su_key := fieldByName('su_key').AsString;


        newDanga := loadDanga(su_key, varJinday);

        if newDanga=0 then // 단가가 0인것은 뺀다.
        begin
          next;
          continue;
        end;

        if ((fieldByName('su_gu3').AsString ='09')
            or (fieldByName('su_gu3').AsString ='10'))
          and  (fieldByName('except_Code').AsString ='') then
        begin

          next;
          continue;

        end;



     //   Danga := stringreplace(formatFloat('#.00', fieldByName('jin_danga') .AsInteger), '.', '', [rfReplaceAll]);
        Danga := stringreplace(formatFloat('#.00', newDanga), '.', '', [rfReplaceAll]);


        if CheckInt(trim(fieldByName('su_gu1').AsString)) = true then
          su_gu1 := fieldByName('su_gu1').AsInteger
        else
          su_gu1 := 1;

        if CheckInt(trim(fieldByName('su_gu3').AsString)) = true then
          su_gu3 := fieldByName('su_gu3').AsInteger
        else
          su_gu3 := 1;

        su_gu2 := strtoint(loadSugu2(su_key));

        if (fieldByName('jin_simya').AsString = '1') and (su_gu3 <> 9) // 약제
          and (su_gu3 <> 41) then // 의약품관리료
          varSimya := true
        else
          varSimya := false;



//          and  (jinday < '2017-07-01')
//        then
//          varsoa := true
//        else
//          varsoa := false;


         varsoa := false ;
        if (fieldByName('jin_soa').AsString = '8') then
        begin // 소아가산이면  30% (8세미만), 10%(방사선)

             varsoa := true;
              {
                if ( (Age >= 0) and  (Age < 8))   then
                begin
                     { if (su_gu3 = 31) then
                      begin // 방사선
                         if  ( varjinday < '2017-07-01') then   //'2017-07-01' 이후 소아가산코드 300 제외하자.
                            varsoa := true;
                          // gasan := gasan + 0.1;
                      end
                            else
                                if (su_gu3 = 39) or // 방사선 ct
                                        (su_gu3 = 40) then // 방사선 MRI
                                begin
                                  //gasan := gasan + 0.15;
                                   if  ( varjinday < '2017-07-01') then   //'2017-07-01' 이후 소아가산코드 300 제외하자.
                                     varsoa := true;
                                end
                                    else
                                    if (su_gu3 = 19) then // 마취
                                    begin
                                      //gasan := gasan + 0.3;
                                       if  ( varjinday < '2017-07-01') then   //'2017-07-01' 이후 소아가산코드 300 제외하자.
                                         varsoa := true;
                                    end
                                        else
                                            begin
                                             // gasan := gasan + 0.3; // 나머지
                                             varsoa := true;
                                            end;
                   }

                {    varsoa := true;

                   if su_gu3 in [31, 39, 40]  then
                   begin
                       if  ( varjinday >= '2017-07-01') then
                        varsoa := false ;

                   end;

                   //소아 마취인경우 6세미만만 가산
                   if su_gu3 in [19]  then
                   begin
                        if (Age >= 6) then
                        begin

                          varsoa := false;

                        end;

                   end;
                end;

                // 노인가산(su_soa=8) : 마취에서 30%
                if (Age >= 70) then
                begin
                  if su_gu3 = 19 then // 마취
                  varsoa := true;
                   // gasan := gasan + 0.3;
                end;
                }
        end;


        varSimyaTime := deldash(varJinday) + fieldByName('jin_time').AsString;

        if ((su_gu1 in [2]) and (su_gu3 in [23 .. 25, 31, 55])  )
           or (su_gu1 in [6])  //마당 준용수가
           or (su_gu2 in [2])  //준용수가
           then
        begin
//          teeth1 := fieldByName('p1').AsString; // 우상
//          teeth2 := fieldByName('p2').AsString; // 좌상
//          teeth3 := fieldByName('p4').AsString; // 우하
//          teeth4 := fieldByName('p3').AsString; // 좌하
//
//
//          if  isImplant = true then
//          begin
//
//              teeth1 :=  ReplaceImplantTeeth( varChart, varJinday,'P1', fieldByName('p1').AsString);
//              teeth2 :=  ReplaceImplantTeeth( varChart, varJinday,'P2', fieldByName('p2').AsString);
//              teeth3 :=  ReplaceImplantTeeth( varChart, varJinday,'P3', fieldByName('p3').AsString);
//              teeth4 :=  ReplaceImplantTeeth( varChart, varJinday,'P4', fieldByName('p4').AsString);
//
//          end;



//          if cbChungGuMethod.ItemIndex = 0 then // 심평원청구
//          begin
//            teeth1 := TeethConvert_SimPyungWon(teeth1); // 우상
//            teeth2 := TeethConvert_SimPyungWon(teeth2); // 좌상
//            teeth3 := TeethConvert_SimPyungWon(teeth3); // 우하
//            teeth4 := TeethConvert_SimPyungWon(teeth4); // 좌하
//          end
//          else if cbChungGuMethod.ItemIndex = 1 then // EDI청구
//          begin
//            teeth1 := TeethConvert_EDI(teeth1); // 우상
//            teeth2 := TeethConvert_EDI(teeth2); // 좌상
//            teeth3 := TeethConvert_EDI(teeth3); // 우하
//            teeth4 := TeethConvert_EDI(teeth4); // 좌하
//          end;
        end
        else
        begin
          teeth1 := '';
          teeth2 := '';
          teeth3 := '';
          teeth4 := '';

        end;


          teeth1 := '';
          teeth2 := '';
          teeth3 := '';
          teeth4 := '';


        case su_gu3 of
          9: // 약재
            HangNo := '03';
          12, 13, 14, 17, 18: // 12파하근육내 주사  13 정맥내주사  14:수액내 주사
            begin
              HangNo := '04';
            end;
          19: // 마취
            HangNo := '05';
          23 .. 25: // 행위 처치및 수술
            HangNo := '08';

          32: // 치료재료
            HangNo := '08';

          26, 29, 30: // 검사     //26 : 수탁 29,30 : 자체
            HangNo := '09';
          31: // X-ray
            begin
              HangNo := '10';
            end;
          39: // CT   특수장비
            begin
              HangNo := '12'; // 'S ' 특수장비 (12)     L :장기요양(11) T:특수재료(13)
            end; // U:건강보험100/100  (14)  V 보훈등(15) w비급여(16)
          40: // MRI
            begin
              HangNo := '12'; // 'S '
            end;
          41: // 의약품관리료
            begin
              HangNo := '01'; // 진찰료
            end;
          42: // 초음파
            begin
              HangNo := '09'; // 검사료
            end;

        else
          begin
            HangNo := '01'; // 진찰료
            // 의약품관리료는  진찰료로 규정

          end;
        end;

        case strtoint(HangNo) of
          1: // 진찰료
            begin
              case varChojae of
                1, 3:
                  MokNo := '01'; // 초진
                2, 4:
                  MokNo := '02'; // 재진
              else
                MokNo := '03'; // 응급및 회송료 등
              end;

              if su_gu3 = 41 then // 의약품관리료면
              begin
                MokNo := '03';
              end;

            end;
          2: // 입원료
            begin

            end;
          3: // 투약료
            begin
              MokNo := '01'; // 내복약 02:외용약 03:처방전 99: 기타
            end;
          4: // 주사료
            begin
              MokNo := '01';
              // 01:주사
              // 02:기타
            end;
          5: // 마취료
            begin
              MokNo := '01';
              // 01:마취
            end;
          6: // 이학요법료
            begin
              MokNo := '01';
            end;
          7: // 정신요법료
            begin
              MokNo := '01';
            end;
          8: // 처치및 수술료
            begin
              // 01:처치및 수술
              // 02:치과 절개외 수술항목
              // 03:캐스트
              // 99:치과 기타
              MokNo := '02';
              case su_gu3 of
                32:  //치료재료
                  MokNo := '01';
                else
                  MokNo := '01';
              end;


            end;
          9: // 검사료
            begin
              // 01;자체검사
              // 02:위탁검사

            //  MokNo := '02';
            //  if copy(su_key, 1, 3) = 'C42' then
            //    MokNo := '01';
              case su_gu3 of
                29, 30, 42: //29,30 : 자체   42: 초음파
                  MokNo := '01'; //01;자체검사
                26: //위탁
                  MokNo := '02';  //02:위탁검사
              end;

            end;
          10: // 영상진단 및 방사선치료
            begin
              // 01:진단
              // 02:치료
              MokNo := '01';

            end;
          11: // 장기요양
            begin
              HangNo := 'L ';
            end;
          12: // 특수장비
            BEGIN
              HangNo := 'S ';
              case su_gu3 of
                39:
                  MokNo := '01'; // CT
                40:
                  MokNo := '02'; // MRI
              end;
            END;
          13: // 특수재료
            begin
              HangNo := 'T ';
              MokNo := '01';
            end;
          14: // 건강보험100/100 등
            begin
              HangNo := 'U ';
              MokNo := '01';
            end;
          15: // 보훈등 100/100본인부담
            begin
              HangNo := 'V ';
              MokNo := '01';
            end;

          16: // 보훈등 100/100본인부담
            begin
              HangNo := 'W ';
              MokNo := '01';
            end;

        else
          MokNo := '01';
        end;

        JulNo := inttostr(iOrder);

        if su_key = 'K2021002' then
          HangNo := 'S ';

        // 100/100은 su_gu1=5이다...
        // 여기서 U항을 넣는다
        // 건강보험(의료급여) 100분의100본인부담 관련 U항과 목 신설 (2012.4.1 청구분부터)
        // * U항 01목:의약품  02목:치료재료  03목:진료행위
        if su_gu1 = 5 then
        begin
          HangNo := 'U ';
          MokNo := '01';
        end;





        case su_gu2 of
          0,1, 9:
            begin
              CodeGubun := '1'; // 수가(상대가치점수표에수록 된 코드

            end;
          2:
            CodeGubun := '2'; // 준용수가
          3:
            CodeGubun := '3'; // 보험등재약
          4:
            CodeGubun := '4'; // 원료약, 요양기관자체조제(제제)약
          7:
            CodeGubun := '7'; // 구협약재료(2000.12.31.이전진료분해당)
          8:
            begin
               if copy(su_key,1,1)='U'  then
                 CodeGubun := '1'
               else
                 CodeGubun := '8'; // 치료재료
            end
        //    CodeGubun := '1'; // 치료재료
        end;


        //마당에서...
        if su_gu1 = 6 then
        begin
           CodeGubun := '2'; // 준용수가
        end;

       if ( copy(Su_key,1,3) = 'J50') and (su_gu3=23) then  // 외래환자 조제·복약지도료-내복약
            CodeGubun := '1';




        // 마취의 입력시에만  면허필드에  주민/면허/성명 으로 입력한다.
        // 특정내역에 마취의 정보를 써줘야 한다.
            if substr(trim(fieldByName('docmyunhu').AsString), 2, '/') <> '' then
            begin
              myunhuJuminNo := substr(trim(fieldByName('docmyunhu').AsString), 1, '/');
              myunhuNo := substr(trim(fieldByName('docmyunhu').AsString), 2, '/');
              docName := substr(trim(fieldByName('docmyunhu').AsString), 3, '/');

            end
            else
              // myunhuNo := fieldByName('docmyunhu').AsString;
              myunhuNo := trim(fieldByName('docmyunhu').AsString);

            if substr(trim(fieldByName('docmyunhu').AsString), 2, '/') <> '' then
              myunhuKind := '1' // 마취의사
            else
              myunhuKind :=   '1'; //의사 (지정하지않으면 무조건 치과의사)
            // myunhuKind := '2'; // 치과의사 (지정하지않으면 무조건 치과의사)




        // 일투, 총투, 일회투
        { 일투 : *1일 실시횟수(소수 셋째자리에서 사사오입하여 소수 둘째자리까지 기재)를
          기재(의약품인 경우는 1일 투여횟수를 기재)
          * 위탁검사의 경우 1.1 기재(위탁진료,개방병원진료,시설 등의 공동이용 진료시
          실시(수탁)한 기관의 종별 가산율을 적용하여 기재
          * 정수부 5자리, 소수부 2자리(총7자리), 소수점 미표기
          예)   1 -> “_ _ _ _100”
          1.6 -> “_ _ _ _160”
        }
        { 총투 :
          수탁기관의 경우 위탁한 진료(검사)료 산정시 총실시횟수
          (1일 진료(검사)실시횟수X총 실시일수)기재
          예) 2 -> “_ _2”
        }
        { 일회투 :
          *1회 투약량(소수 다섯째자리에서 사사오입하여 소수 넷째자리까지 기재)을 기재
          (의약품인 경우만 해당)
          *정수부 5자리, 소수부 4자리(총9자리),소수점 미표기
          예)12.56?”_ _ _ 125600”
        }
        { 금액 :
          단가×1회 투약량×1일 투여량(투여(실시)횟수)×총 투여일수(실시횟수)를
          계산한 후 원미만은 4사5입하여 기재
        }



        // 일투 계산

       { if (fieldByName('jin_qty').AsFloat <> 0) and
          (fieldByName('dan_qty').AsInteger <> 0) then

          iltu := (round2((fieldByName('jin_qty').AsFloat /
            fieldByName('dan_qty').AsInteger) * 100, 0)) / 100
          // (round2((fieldByName('jin_qty').AsFloat ) * 100, 0)) / 100
          // 1일투여량, 투여(실시)횟수 n(5.2) 소수셋째자리에서 사사오입
        else
          iltu := 1;
        }

      //  iltu := fieldByName('jin_ilsu').AsInteger;




        iltu := fieldByName('jin_qty').AsFloat;//fieldByName('jin_qty').AsInteger;

        if su_gu2 = 8 then
        begin

            //일투 - 재료에 대해서만 적용해 보자. 2018-06-19

            if copy(su_key,1,3) = 'L72'  then
            begin
             iltu := (round2(  (fieldByName('jin_qty').AsFloat /
                                fieldByName('dan_qty').AsInteger) * 100, 0)) / 100 ;

            end;
        end;


        iltu_D := formatFloat('0.00', iltu);
        iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);





        // 총투
        if su_gu3 = 9 then // 약재면
        begin

          chongtu := fieldByName('div').AsString; // 총투여일수

          if iChongTu < fieldByName('div').AsInteger then
            iChongTu := fieldByName('div').AsInteger;

        end
        else
        begin
          chongtu := '1';

          // 특정내역기재용  총투여일수
          if iChongTu < fieldByName('jin_qty').AsInteger then
            iChongTu := fieldByName('jin_qty').AsInteger;

        end;

        // 일회투  =>의약품인경우만 n(5.4) 예12.56=>___125600
        if su_gu3 = 9 then // 약재면
        begin

          if fieldByName('jin_qty').AsFloat > 0 then
            ilHoitu := stringreplace(formatFloat('#.0000',
              fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll])
          else
            ilHoitu := '0' + stringreplace(formatFloat('#.0000',
              fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll]);

        end
        else
        begin
          ilHoitu := '10000';
        end;

        { if su_gu3 = 9 then // 약재면
          begin

          // 일투 계산

          if (fieldByName('jin_qty').AsFloat <> 0) and
          (fieldByName('dan_qty').AsInteger <> 0) then

          iltu :=
          (round2((fieldByName('jin_qty').AsFloat / fieldByName('dan_qty')
          .AsInteger) * 100, 0)) / 100
          // 1일투여량, 투여(실시)횟수 n(5.2) 소수셋째자리에서 사사오입
          else
          iltu := 1;

          iltu_D := formatFloat('0.00', iltu);
          iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);

          chongtu := fieldByName('div').AsString; // 총투여일수
          if iChongTu < fieldByName('div').AsInteger then
          iChongTu := fieldByName('div').AsInteger;

          // ilHoitu := stringreplace(formatfloat('#.0000',
          // fieldByName('div').AsInteger), '.', '', [rfReplaceAll]);
          // // '10000'; //div  1회투약량 => 의약품인경우만 n(5.4) 예12.56=>___125600
          if fieldByName('jin_qty').AsFloat > 0 then
          ilHoitu := stringreplace(formatFloat('#.0000',
          fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll])
          else
          ilHoitu := '0' + stringreplace(formatFloat('#.0000',
          fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll]);



          end
          else
          begin
          //일투, 총투, 일회투

          iltu :=
          (round2(  fieldByName('jin_ilsu').AsInteger  * 100, 0)) / 100;

          iltu_D := formatFloat('0.00', iltu);
          iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);


          ChongTu := fieldByName('jin_qty').AsString;

          ilHoitu := stringreplace(formatFloat('#.0000',
          fieldByName('dan_qty').AsFloat), '.', '', [rfReplaceAll])

          end;
        }

        // 여기서 수가코드를 다시구한다.
        // 노인, 소아, 야간 가산 코드 추가
        sanCode := loadGasanCode(varJinday, su_key, su_gu2, su_gu3, varChojae, age, varsoa);

        if  (copy(su_key, 1, 2) = 'aa')  and (sanCode <> '') then //진찰료 야간가산
        begin
          SugaCode := su_key + sanCode;
          if copy(sanCode, 2, 1) = '1' then
            BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // 야간 가산

        end
        else
          SugaCode := su_key;

        // SugaCode가 바뀌면 여기서 단가를 다시구한다.
        if SugaCode <> su_key then
        //  Danga := stringreplace(formatFloat('#.00',
        //        calcKumak_jumgum(age, varJinday,  su_key, 1, 1, 1, 1, fieldByName('jin_danga').AsInteger,
        //           fieldByName('su_gu1').AsString, fieldByName('su_gu3').AsString,
         //         varsoa, varSimya, fieldByName('su_gu3').AsString, true, varjabo)), '.', '',
         //      [rfReplaceAll]);

          //가산율이 적용된 수가의 단가 10원 미만 사사오입
          Danga := stringreplace(formatFloat('#.00',
                calcKumak_jumgum(age, varJinday,  su_key, 1, 1, 1, 1, newDanga,
                   fieldByName('su_gu1').AsString, fieldByName('su_gu3').AsString,
                  varsoa, varSimya, fieldByName('su_gu3').AsString, true, true, varjabo)), '.', '',
               [rfReplaceAll]);

 
        //수량 * 단가 1웜미만 사사오입
        // 금액계산 jin_danga * jin_qty * div
        kumak := calcKumak_jumgum(age,        //금액계산
             varJinday,
             su_key,
             fieldByName('jin_qty').AsFloat,
             fieldByName('dan_qty').AsInteger,
             fieldByName('jin_ilsu').AsInteger,
             fieldByName('div').AsInteger,
             newDanga,//fieldByName('jin_danga').AsInteger,  //ToDO: jinryo_s에 단가가 제대로 안들어 있는 경우가 있다.
             fieldByName('su_gu1').AsString,
             fieldByName('su_gu3').AsString,
             varSoa,
             varSimya,
             fieldByName('su_gu3').AsString,
             true,  //불가산
             false, //  false: 금액 = 단가 * 수량*일수
             varJabo);

        // kumak := round2(fieldByName('jin_danga').AsInteger * iltu *
        // fieldByName('Div').AsInteger, 0);

        sangHanga := '0';
        drugSangHanGa := '0';
        changeDay := '';
        except_code := fieldByName('except_code').AsString;
//        sang1 := fieldByName('sang1').AsString;
//        sang2 := fieldByName('sang2').AsString;
//        sang3 := fieldByName('sang3').AsString;


        // 특정내역 기록
        // sugu3 09 의약품
        // sugu3 41 의약품관리료

        // 먼저 줄번호 없는것 부터 써주자.


      {09 내복
      10 외용제
      12 주사 제일브레비블록주100밀리그람(염산에스몰롤)
      13 조영제 이오파미로300주사액(이오파미돌)_(30.62g/50mL)
      14 중외5%포도당생리식염액1000밀리리터
      19 마취
      50 기타}

        case su_gu3 of
          9, 10: // 의약품 , 피하근육내 주사
            if trim(except_code) <> '' then
              BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', except_code); // 의약분업예외구분

          19: // 의약품 , 마취
            // if trim(except_code) <>'' then
            if su_gu1 = 1 then
            begin
              BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', '55');
              // except_code);  //의약분업예외구분
              useWonNaeTuYak := true;

            end;
          12, 13, 14: // 의약품 , 피하근육내 주사
            begin


              if trim(except_code) <> '' then
              begin
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', except_code); // 의약분업예외구분

                useWonNaeTuYak := true;
              end;

            end;
          41: // 의약품 관리료  AL803
            begin
              if su_gu1 = 1 then // 의약복욕지도료는 2이다..
              begin
                if strtoint(copy(su_key, 5, 1)) <> 0 then
                  iChongTu := strtoint(copy(su_key, 5, 1));

                if useWonNaeTuYak = True then
                begin
                  // 1=보험 2=보호1종 3=보호2종 4=일반 5=보호4종 6=보호8종  7=산재 8=자보
                  // 9=차상위1종, 10=차상위2종, 11=차상위2종장애인


                  // 의료급여1종 의료급여2종 차상위1종 차상위2종 차상위2종장애
                  // MT020(의료급여수급권자원내직접조제 투약횟수)

                  if fieldByName('jongbeul').AsInteger in [2, 3, 5, 6, 9, 10, 11]
                  then
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT020', '01') // 직접투약횟수
                  else
                  begin
                    // 원내투약일수(경구,외용)
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MS001', inttostr(iChongTu));
                  end;

                end;

                useWonNaeTuYak := true;
              end;
            end;

        end;

        if su_key = '642101070' then  //알마겔에프현탁액(알마게이트)
          BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT017', 'E');

        // showmessage(inttostr(su_gu1));

        // 진찰료  ToDO : 진찰료 2개 이상일경우만 하자. 타인대리대원은 어떻게?
//        case fieldByName('chojae').AsInteger of
//          7, 8, 10, 11: // 초진+재진, 초진+심재 , 재진+심재 , 재진+재진
//            begin
//
//              // Jinryo_o에서 두개 이상의 과목을 가져올 수 있어야 한다.
//              for i := 0 to 1 do
//              begin
//                varJinChalRyoNeyuk := fieldByName('kwamok').AsString +
//                  '/' + jinday;
//                varJinChalRyoNeyuk := varJinChalRyoNeyuk + '/' +
//                  fieldByName('kwamok').AsString + '/' + jinday;
//              end;
//              BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT002', varJinChalRyoNeyuk);
//              // 진찰료 두개 이상일때
//            end;
//        end;

        // 수탁검사.
      //  41341473/20190708
        if fieldByName('sutak_key').AsString <> '' then
        begin
          varSutakinfo := loadSutakinfo(fieldByName('sutak_key').AsString);
          if trim(varSutakinfo) <> '' then
          begin
            if substr(varSutakinfo, 1, '|') = '1' then
            begin
              BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS008',
                substr(varSutakinfo, 2, '|'));
            end;
            if substr(varSutakinfo, 1, '|') = '2' then
            begin
              BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS005',
                substr(varSutakinfo, 2, '|'));
            end;
          end;
        end;

        if su_key = 'C5911' then // 해부병리조직검사(생검및 절제조직)
          BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT001', 'EO7/'); // 확인코드

        if su_key = 'L7990' then // 마취전문의 초빙료
          BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS001', myunhuJuminNo + '/' + myunhuNo +
            '/' + docName); // 마취과전문의

        if varSimya = true then
          BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // 야간 가산


         if CodeGubun = '2'  then //준용수가
          begin

               BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS009', fieldByName('su_kor_name').AsString  );
               sugacode  :=  'JJJJJJ';

             iltu_D := formatFloat('0.00', 1.15);
             iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);
          end;




         if (su_key = 'UB111') //임플란트 1단계
            or (su_key = 'UB121') //2단계
            or (su_key = 'UB131') //3단계
            or (su_key = 'UB112') //임플란트 1단계 (병원)
            or (su_key = 'UB122') //2단계  (병원)
            or (su_key = 'UB132') //3단계   (병원)
          then
          begin
                 //  if  varImplantCnt > 1 then  then

             //      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'MT037', 'M');


          end;





       if cb3.checked = false then
       WriteLn(F,
                 ChungGuNo
               + formatFloat('00000', illyun)
               + varGubun // 내역구분 'C'  진료내역
               + Format('%-2s', [HangNo]) // 항번호
               + Format('%-2s', [MokNo]) // 목번호
               + Format('%4s', [JulNo]) // 줄번호
               + Format('%-1s', [CodeGubun]) // 코드구분
               + Format('%-9s', [SugaCode])
               + Format('%10s', [Danga]) // 8.2     단가
               + Format('%7s', [iltu_D]) // 5.2  일투
               + Format('%3s', [chongtu]) // 총투
               + Format('%9s', [ilHoitu]) // 5.4  //일회투
               + Format('%10s', [floattostr(kumak)])
               + Format('%10s', [sangHanga])
               + Format('%10s', [drugSangHanGa])
               + Format('%-8s', [changeDay])
               + Format('%-1s', [myunhuKind])
               + Format('%-100s', [myunhuNo])
               + Format('%-8s', [teeth1])
               + Format('%-8s', [teeth2])
               + Format('%-8s',    [teeth3])
               + Format('%-8s', [teeth4]))
          else       //자동차보험
             WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun
               // 내역구분 'C'  진료내역
               + Format('%-2s', [HangNo]) // 항번호
               + Format('%-2s', [MokNo]) // 목번호
               + Format('%4s', [JulNo]) // 줄번호
               + Format('%-1s', [CodeGubun]) // 코드구분
               + Format('%-9s', [SugaCode])
               + Format('%10s', [Danga]) // 8.2     단가
               + Format('%7s', [iltu_D]) // 5.2  일투
               + Format('%3s', [chongtu]) // 총투
               + Format('%9s', [ilHoitu]) // 5.4  //일회투
               + Format('%10s', [floattostr(kumak)])
               + Format('%10s', [sangHanga])
               + Format('%10s', [drugSangHanGa])
               + Format('%-8s', [changeDay])
               + Format('%-8s', [teeth1])
               + Format('%-8s', [teeth2])
               + Format('%-8s', [teeth3])
               + Format('%-8s', [teeth4]));

               iOrder := iOrder + 1;
        next;
      end;
    end;
  end;
    except
       on E: Exception do
       begin
       showmessage( 'ConVertData:WriteMyungSeSeo_Jinryo : ' + E.Message +' Chart==>'+varChart + varJinday);
           ExceptLogging('ConVertData:WriteMyungSeSeo_Jinryo : ' + E.Message +' Chart==>'+varChart + varJinday);
       end;
    end;


end;




procedure Tjumgum_f.WriteMyungSeSeo_jinryo(
        isWrite : boolean;
        varGubun: string;
        varChart: string;
        varJinday: string;
        illyun: Integer;
        varChojae: Integer;
        jongbeul:integer;
        kwamok : string;
        age: Integer;
        jubsu_id:string;
        isInpat:string;
        docName : string;
        MyunHu : string;
        varJabo:boolean=false;
        isImplant : boolean=false;
        iaValue:string ='' );

var

  iOrder: Integer;
  su_key: string;
  su_gu1: Integer;
  su_gu2: Integer;
  su_gu3: Integer;
  aSutakKey : string;

  teeth1: string;
  teeth2: string;
  teeth3: string;
  teeth4: string;
  jinday: string;

  HangNo: string;
  MokNo: string;
  JulNo: string;
  CodeGubun: string;
  SugaCode: string;
  Danga: string;

  iltu: double;
  iltu_D: string;

  chongtu: string;
//  iChongTu: Integer;
  ilHoitu: string;

  kumak: double;

  sangHanga: string;
  drugSangHanGa: string;
  changeDay: string;

  myunhuNo, myunhuKind, myunhuJuminNo: string;
  except_code: string;

  varSutakinfo: string;
  varSimya: boolean;
  varSimyaTime: string;
  varsoa: boolean;

  i, j: Integer;
  varJinChalRyoNeyuk: string;
//  sang1, sang2, sang3: string;
  sanCode: string;
  newDanga:integer;
  isSugaDanga : boolean; //행위면 true 재료면 false
begin
  iOrder := 1 + ChojaeJul + SatGasanJul;
  iChongTu := 0;

  try
//  with dm_f.sqlTemp do
//  begin


     with grdJx2 do
     begin
            for I := 1 to rowcount -1 do
            begin

              jinday := stringreplace(varJinday, '-', '', [rfReplaceAll]);

              su_key := cells[19, i]; //fieldByName('su_key').AsString;


              newDanga := ints[2, i]; //loadDanga(su_key, varJinday);
              su_gu1   := ints[10, i];


              if  checkInt( cells[29, i])= true  then
                 su_gu2   := ints[29, i]//strtoint(loadSugu2(su_key));
              else
                if ( cells[29, i]  ='B')   //Su_gu2
                    and  ( cells[7, i]  ='9')   then   //Gub_gu
                       su_gu2   := 99  //  80/100
                          else
                            if ( cells[29, i]  ='E')   //Su_gu2
                             //   and  ( cells[7, i]  ='B')
                                      then   //Gub_gu
                                   su_gu2   := 98  //  90/100
                                      else
                                       su_gu2   := 0;

              su_gu3      := ints[11, i];
              except_code := cells[25, i];//fieldByName('except_code').AsString;
              aSutakKey   := '';//cells[43, i];

              if newDanga=0 then // 단가가 0인것은 뺀다.
              begin
                next;
                continue;
              end;

              if ((su_gu3 = 9)       // 원외처방이면 건너뛰어
                  or (su_gu3 =10))
                and  (except_code = '') then//(fieldByName('except_Code').AsString ='') then
              begin

                next;
                continue;

              end;



           //   Danga := stringreplace(formatFloat('#.00', fieldByName('jin_danga') .AsInteger), '.', '', [rfReplaceAll]);
              Danga := stringreplace(formatFloat('#.00', newDanga), '.', '', [rfReplaceAll]);


      //        if CheckInt(trim(fieldByName('su_gu1').AsString)) = true then
      //          su_gu1 := fieldByName('su_gu1').AsInteger
      //        else
      //          su_gu1 := 1;
      //
      //        if CheckInt(trim(fieldByName('su_gu3').AsString)) = true then
      //          su_gu3 := fieldByName('su_gu3').AsInteger
      //        else
      //          su_gu3 := 1;
              if (cells[13, i] = '1')//(fieldByName('jin_simya').AsString = '1')
                 and ((su_gu3 = 9)       // 원외처방이면
                   or (su_gu3 = 10)) // 약제
                  and (su_gu3 <> 41) then // 의약품관리료
                varSimya := true
              else
                varSimya := false;



      //          and  (jinday < '2017-07-01')
      //        then
      //          varsoa := true
      //        else
      //          varsoa := false;


              varsoa := false ;
              if (cells[12, i] = '8') then//fieldByName('jin_soa').AsString = '8') then
              begin // 소아가산이면  30% (8세미만), 10%(방사선)

                   varsoa := true;
                    {
                      if ( (Age >= 0) and  (Age < 8))   then
                      begin
                           { if (su_gu3 = 31) then
                            begin // 방사선
                               if  ( varjinday < '2017-07-01') then   //'2017-07-01' 이후 소아가산코드 300 제외하자.
                                  varsoa := true;
                                // gasan := gasan + 0.1;
                            end
                                  else
                                      if (su_gu3 = 39) or // 방사선 ct
                                              (su_gu3 = 40) then // 방사선 MRI
                                      begin
                                        //gasan := gasan + 0.15;
                                         if  ( varjinday < '2017-07-01') then   //'2017-07-01' 이후 소아가산코드 300 제외하자.
                                           varsoa := true;
                                      end
                                          else
                                          if (su_gu3 = 19) then // 마취
                                          begin
                                            //gasan := gasan + 0.3;
                                             if  ( varjinday < '2017-07-01') then   //'2017-07-01' 이후 소아가산코드 300 제외하자.
                                               varsoa := true;
                                          end
                                              else
                                                  begin
                                                   // gasan := gasan + 0.3; // 나머지
                                                   varsoa := true;
                                                  end;
                         }

                      {    varsoa := true;

                         if su_gu3 in [31, 39, 40]  then
                         begin
                             if  ( varjinday >= '2017-07-01') then
                              varsoa := false ;

                         end;

                         //소아 마취인경우 6세미만만 가산
                         if su_gu3 in [19]  then
                         begin
                              if (Age >= 6) then
                              begin

                                varsoa := false;

                              end;

                         end;
                      end;

                      // 노인가산(su_soa=8) : 마취에서 30%
                      if (Age >= 70) then
                      begin
                        if su_gu3 = 19 then // 마취
                        varsoa := true;
                         // gasan := gasan + 0.3;
                      end;
                      }
              end;


              varSimyaTime := deldash(varJinday) + delColone( copy(cells[23, i],1,5));// fieldByName('jin_time').AsString;

              if ((su_gu1 in [2]) and (su_gu3 in [23 .. 25, 31, 55])  )
                 or (su_gu1 in [6])  //마당 준용수가
                 or (su_gu2 in [2])  //준용수가
                 then
              begin
      //          teeth1 := fieldByName('p1').AsString; // 우상
      //          teeth2 := fieldByName('p2').AsString; // 좌상
      //          teeth3 := fieldByName('p4').AsString; // 우하
      //          teeth4 := fieldByName('p3').AsString; // 좌하
      //
      //
      //          if  isImplant = true then
      //          begin
      //
      //              teeth1 :=  ReplaceImplantTeeth( varChart, varJinday,'P1', fieldByName('p1').AsString);
      //              teeth2 :=  ReplaceImplantTeeth( varChart, varJinday,'P2', fieldByName('p2').AsString);
      //              teeth3 :=  ReplaceImplantTeeth( varChart, varJinday,'P3', fieldByName('p3').AsString);
      //              teeth4 :=  ReplaceImplantTeeth( varChart, varJinday,'P4', fieldByName('p4').AsString);
      //
      //          end;



      //          if cbChungGuMethod.ItemIndex = 0 then // 심평원청구
      //          begin
      //            teeth1 := TeethConvert_SimPyungWon(teeth1); // 우상
      //            teeth2 := TeethConvert_SimPyungWon(teeth2); // 좌상
      //            teeth3 := TeethConvert_SimPyungWon(teeth3); // 우하
      //            teeth4 := TeethConvert_SimPyungWon(teeth4); // 좌하
      //          end
      //          else if cbChungGuMethod.ItemIndex = 1 then // EDI청구
      //          begin
      //            teeth1 := TeethConvert_EDI(teeth1); // 우상
      //            teeth2 := TeethConvert_EDI(teeth2); // 좌상
      //            teeth3 := TeethConvert_EDI(teeth3); // 우하
      //            teeth4 := TeethConvert_EDI(teeth4); // 좌하
      //          end;
              end
              else
              begin
                teeth1 := '';
                teeth2 := '';
                teeth3 := '';
                teeth4 := '';

              end;


                teeth1 := '';
                teeth2 := '';
                teeth3 := '';
                teeth4 := '';


              case su_gu3 of
                9: // 약재
                  HangNo := '03';
                12, 13, 17, 18: // 12파하근육내 주사  13 정맥내주사
                  begin
                    HangNo := '04';
                  end;
                19: // 마취
                  HangNo := '05';
                23 .. 25: // 행위 처치및 수술
                  HangNo := '08';

                32: // 치료재료
                  HangNo := '08';

                26, 29, 30: // 검사     //26 : 수탁 29,30 : 자체
                  HangNo := '09';
                31: // X-ray
                  begin
                    HangNo := '10';
                  end;
                39: // CT   특수장비
                  begin
                    HangNo := '12'; // 'S ' 특수장비 (12)     L :장기요양(11) T:특수재료(13)
                  end; // U:건강보험100/100  (14)  V 보훈등(15) w비급여(16)
                40: // MRI
                  begin
                    HangNo := '12'; // 'S '
                  end;
                41: // 의약품관리료
                  begin
                    HangNo := '01'; // 진찰료
                  end;
                42: // 초음파
                  begin
                    HangNo := '09'; // 검사료
                  end;

              else
                begin
                  HangNo := '01'; // 진찰료
                  // 의약품관리료는  진찰료로 규정

                end;
              end;

              case strtoint(HangNo) of
                1: // 진찰료
                  begin
                    case varChojae of
                      1, 3:
                        MokNo := '01'; // 초진
                      2, 4:
                        MokNo := '02'; // 재진
                    else
                      MokNo := '03'; // 응급및 회송료 등
                    end;

                    if su_gu3 = 41 then // 의약품관리료면
                    begin
                      MokNo := '03';
                    end;

                  end;
                2: // 입원료
                  begin

                  end;
                3: // 투약료
                  begin
                    MokNo := '01'; // 내복약 02:외용약 03:처방전 99: 기타
                  end;
                4: // 주사료
                  begin
                    MokNo := '01';
                    // 01:주사
                    // 02:기타
                  end;
                5: // 마취료
                  begin
                    MokNo := '01';
                    // 01:마취
                  end;
                6: // 이학요법료
                  begin
                    MokNo := '01';
                  end;
                7: // 정신요법료
                  begin
                    MokNo := '01';
                  end;
                8: // 처치및 수술료
                  begin
                    // 01:처치및 수술
                    // 02:치과 절개외 수술항목
                    // 03:캐스트
                    // 99:치과 기타
                    MokNo := '02';
                    case su_gu3 of
                      32:  //치료재료
                        MokNo := '01';
                      else
                        MokNo := '01';
                    end;


                  end;
                9: // 검사료
                  begin
                    // 01;자체검사
                    // 02:위탁검사

                  //  MokNo := '02';
                  //  if copy(su_key, 1, 3) = 'C42' then
                  //    MokNo := '01';
                    case su_gu3 of
                      29, 30, 42: //29,30 : 자체   42: 초음파
                        MokNo := '01'; //01;자체검사
                      26: //위탁
                        MokNo := '02';  //02:위탁검사
                    end;

                  end;
                10: // 영상진단 및 방사선치료
                  begin
                    // 01:진단
                    // 02:치료
                    MokNo := '01';

                  end;
                11: // 장기요양
                  begin
                    HangNo := 'L ';
                  end;
                12: // 특수장비
                  BEGIN
                    HangNo := 'S ';
                    case su_gu3 of
                      39:
                        MokNo := '01'; // CT
                      40:
                        MokNo := '02'; // MRI
                    end;
                  END;
                13: // 특수재료
                  begin
                    HangNo := 'T ';
                    MokNo := '01';
                  end;
                14: // 건강보험100/100 등
                  begin
                    HangNo := 'U ';
                    MokNo := '01';
                  end;
                15: // 보훈등 100/100본인부담
                  begin
                    HangNo := 'V ';
                    MokNo := '01';
                  end;

                16: // 보훈등 100/100본인부담
                  begin
                    HangNo := 'W ';
                    MokNo := '01';
                  end;

              else
                MokNo := '01';
              end;

              JulNo := inttostr(iOrder);

              if su_key = 'K2021002' then
                HangNo := 'S ';

              // 100/100은 su_gu1=5이다...
              // 여기서 U항을 넣는다
              // 건강보험(의료급여) 100분의100본인부담 관련 U항과 목 신설 (2012.4.1 청구분부터)
              // * U항 01목:의약품  02목:치료재료  03목:진료행위
              if su_gu1 = 5 then
              begin
                HangNo := 'U ';
                MokNo := '01';
              end;



             //su_gu1 ==> 1, 2  일때 su_gu2 ==B

              case su_gu2 of
                0,1, 9:
                  begin
                    CodeGubun := '1'; // 수가(상대가치점수표에수록 된 코드

                  end;
                2:
                  CodeGubun := '2'; // 준용수가
                3:
                  CodeGubun := '3'; // 보험등재약
                4:
                  CodeGubun := '4'; // 원료약, 요양기관자체조제(제제)약
                7:
                  CodeGubun := '7'; // 구협약재료(2000.12.31.이전진료분해당)

                8, 99, 98:  //8: 재료 99:B 80/100
                  begin
                     if copy(su_key,1,1)='U'  then
                       CodeGubun := '1'
                     else
                     if su_Gu1=1 then  //재료
                       CodeGubun := '8'  // 치료재료
                        else
                          if su_Gu1=2 then //행위
                           CodeGubun := '1' ;
                  end
              //    CodeGubun := '1'; // 치료재료
              end;

              //HangNo
              // A, B, D, E, U, V
              if su_gu2=99  then   // 80/100
              begin
                  HangNo := 'B ' ;
                  if su_gu1= 1 then
                         begin
                             MokNo := '02';
                         end;

              end
                  else
                   if su_gu2=98  then   // 90/100
                   begin
                      HangNo := 'E ' ;
                         if su_gu1= 1 then
                         begin
                             MokNo := '02';
                         end;


                   end;

               //마당에서...
              if su_gu1 = 6 then
              begin
                 CodeGubun := '2'; // 준용수가
              end;

             if ( copy(Su_key,1,3) = 'J50')
                 and (su_gu3=23)
                 and  (su_gu2 <> 8) then  // 외래환자 조제·복약지도료-내복약
                  CodeGubun := '1';




              // 마취의 입력시에만  면허필드에  주민/면허/성명 으로 입력한다.
              // 특정내역에 마취의 정보를 써줘야 한다.
      //            if substr(trim(fieldByName('docmyunhu').AsString), 2, '/') <> '' then
      //            begin
      //              myunhuJuminNo := substr(trim(fieldByName('docmyunhu').AsString), 1, '/');
      //              myunhuNo := substr(trim(fieldByName('docmyunhu').AsString), 2, '/');
      //              docName := substr(trim(fieldByName('docmyunhu').AsString), 3, '/');
      //
      //            end
      //            else
      //              // myunhuNo := fieldByName('docmyunhu').AsString;
      //              myunhuNo := trim(fieldByName('docmyunhu').AsString);
      //
      //            if substr(trim(fieldByName('docmyunhu').AsString), 2, '/') <> '' then
      //              myunhuKind := '1' // 마취의사
      //            else
      //              myunhuKind :=   '1'; //의사 (지정하지않으면 무조건 치과의사)
                  // myunhuKind := '2'; // 치과의사 (지정하지않으면 무조건 치과의사)

                myunhuNo := myunHu;
                myunhuKind := '1';

              // 일투, 총투, 일회투
              { 일투 : *1일 실시횟수(소수 셋째자리에서 사사오입하여 소수 둘째자리까지 기재)를
                기재(의약품인 경우는 1일 투여횟수를 기재)
                * 위탁검사의 경우 1.1 기재(위탁진료,개방병원진료,시설 등의 공동이용 진료시
                실시(수탁)한 기관의 종별 가산율을 적용하여 기재
                * 정수부 5자리, 소수부 2자리(총7자리), 소수점 미표기
                예)   1 -> “_ _ _ _100”
                1.6 -> “_ _ _ _160”
              }
              { 총투 :
                수탁기관의 경우 위탁한 진료(검사)료 산정시 총실시횟수
                (1일 진료(검사)실시횟수X총 실시일수)기재
                예) 2 -> “_ _2”
              }
              { 일회투 :
                *1회 투약량(소수 다섯째자리에서 사사오입하여 소수 넷째자리까지 기재)을 기재
                (의약품인 경우만 해당)
                *정수부 5자리, 소수부 4자리(총9자리),소수점 미표기
                예)12.56?”_ _ _ 125600”
              }
              { 금액 :
                단가×1회 투약량×1일 투여량(투여(실시)횟수)×총 투여일수(실시횟수)를
                계산한 후 원미만은 4사5입하여 기재
              }



              // 일투 계산

             { if (fieldByName('jin_qty').AsFloat <> 0) and
                (fieldByName('dan_qty').AsInteger <> 0) then

                iltu := (round2((fieldByName('jin_qty').AsFloat /
                  fieldByName('dan_qty').AsInteger) * 100, 0)) / 100
                // (round2((fieldByName('jin_qty').AsFloat ) * 100, 0)) / 100
                // 1일투여량, 투여(실시)횟수 n(5.2) 소수셋째자리에서 사사오입
              else
                iltu := 1;
              }

            //  iltu := fieldByName('jin_ilsu').AsInteger;




              iltu := floats[3, i];//fieldByName('jin_qty').AsFloat;//fieldByName('jin_qty').AsInteger;

              if su_gu2 = 8 then
              begin

                  //일투 - 재료에 대해서만 적용해 보자. 2018-06-19

                  if copy(su_key,1,3) = 'L72'  then
                  begin
                   iltu := (round2( (floats[3, i]/ // (fieldByName('jin_qty').AsFloat /
                                       ints[4, i] )//fieldByName('dan_qty').AsInteger)
                                       * 100, 0)) / 100 ;

                  end;
              end;


              iltu_D := formatFloat('0.00', iltu);
              iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);





              // 총투
              if su_gu3 in [9..13] then // 약재면
              begin

                chongtu :=  cells[5, i]; //fieldByName('div').AsString; // 총투여일수

                if iChongTu <  ints[5, i] then//fieldByName('div').AsInteger then
                  iChongTu :=  ints[5, i] ; //fieldByName('div').AsInteger;

              end
              else
              begin
                chongtu := '1';

                // 특정내역기재용  총투여일수
                if iChongTu < ints[3, i] then //fieldByName('jin_qty').AsInteger then
                  iChongTu := ints[3, i] ;//fieldByName('jin_qty').AsInteger;

              end;

              // 일회투  =>의약품인경우만 n(5.4) 예12.56=>___125600
              if su_gu3 in [9..13] then // 약재면
              begin

                if iltu > 0 then//floats[3, i] >0 then // fieldByName('jin_qty').AsFloat > 0 then
                  ilHoitu := stringreplace(formatFloat('#.0000',
                   iltu),// floats[3, i]),// fieldByName('jin_qty').AsFloat),
                     '.', '', [rfReplaceAll])
                else
                  ilHoitu := '0' + stringreplace(formatFloat('#.0000',
                     floats[3, i]),//fieldByName('jin_qty').AsFloat),
                     '.', '', [rfReplaceAll]);

              end
              else
              begin
                ilHoitu := '10000';
              end;

              //ToDO :일투 총투 횟수 넣자....

              ilHoitu := '10000';
              { if su_gu3 = 9 then // 약재면
                begin

                // 일투 계산

                if (fieldByName('jin_qty').AsFloat <> 0) and
                (fieldByName('dan_qty').AsInteger <> 0) then

                iltu :=
                (round2((fieldByName('jin_qty').AsFloat / fieldByName('dan_qty')
                .AsInteger) * 100, 0)) / 100
                // 1일투여량, 투여(실시)횟수 n(5.2) 소수셋째자리에서 사사오입
                else
                iltu := 1;

                iltu_D := formatFloat('0.00', iltu);
                iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);

                chongtu := fieldByName('div').AsString; // 총투여일수
                if iChongTu < fieldByName('div').AsInteger then
                iChongTu := fieldByName('div').AsInteger;

                // ilHoitu := stringreplace(formatfloat('#.0000',
                // fieldByName('div').AsInteger), '.', '', [rfReplaceAll]);
                // // '10000'; //div  1회투약량 => 의약품인경우만 n(5.4) 예12.56=>___125600
                if fieldByName('jin_qty').AsFloat > 0 then
                ilHoitu := stringreplace(formatFloat('#.0000',
                fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll])
                else
                ilHoitu := '0' + stringreplace(formatFloat('#.0000',
                fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll]);



                end
                else
                begin
                //일투, 총투, 일회투

                iltu :=
                (round2(  fieldByName('jin_ilsu').AsInteger  * 100, 0)) / 100;

                iltu_D := formatFloat('0.00', iltu);
                iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);


                ChongTu := fieldByName('jin_qty').AsString;

                ilHoitu := stringreplace(formatFloat('#.0000',
                fieldByName('dan_qty').AsFloat), '.', '', [rfReplaceAll])

                end;
              }
              //ToDO: 가산 코드는 진료실에서 만들어야 한다.
              //기존에 LA322, LA321 가 노인 가산 붙는다.

              // 여기서 수가코드를 다시구한다.
              // 노인, 소아, 야간 가산 코드 추가



              sanCode := loadGasanCode(varJinday, su_key,
                      su_gu2, su_gu3,
                      varChojae, age,
                      varsoa);

             if  (copy(su_key, 1, 2) = 'aa')  and (sanCode <> '') then //진찰료 야간가산
              begin
              //  SugaCode := su_key + sanCode;
                if copy(sanCode, 2, 1) = '1' then
                  BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // 야간 가산

              end;

              // AA154010
//              if copy(su_key, 7, 1) ='1'  then
//                    BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // 야간 가산


      //        else
                SugaCode := su_key;
      //
      //
      //
      //
      //
      //        // SugaCode가 바뀌면 여기서 단가를 다시구한다.
      //        if SugaCode <> su_key then
      //              Danga := stringreplace(formatFloat('#.00',
      //                    loadDanga( SugaCode,varJinday))



      //                    calcKumak_jumgum(age,
      //                      varJinday,
      //                      SugaCode, 1, 1, 1, 1,
      //                     newDanga,// fieldByName('jin_danga').AsInteger,
      //                     inttostr(su_gu1),  //fieldByName('su_gu1').AsString,
      //                     inttostr( su_gu3),// fieldByName('su_gu3').AsString,
      //                     varsoa, varSimya,
      //                     inttostr(su_gu3),// fieldByName('su_gu3').AsString,
      //                      true, varjabo))
      //                      , '.', '',
      //                  [rfReplaceAll]);

                //가산율이 적용된 수가의 단가 10원 미만 사사오입
      //          Danga := stringreplace(formatFloat('#.00',
      //                calcKumak_jumgum(age, varJinday,
      //                su_key, 1, 1, 1, 1, newDanga,
      //                   fieldByName('su_gu1').AsString,
      //                   fieldByName('su_gu3').AsString,
      //                  varsoa,
      //                  varSimya,
      //                  fieldByName('su_gu3').AsString,
      //                  true, true, varjabo)), '.', '',
      //               [rfReplaceAll]);


              //수량 * 단가 1웜미만 사사오입
              // 금액계산 jin_danga * jin_qty * div
      //        kumak := calcKumak_jumgum(age,        //금액계산
      //             varJinday,
      //             su_key,
      //             fieldByName('jin_qty').AsFloat,
      //             fieldByName('dan_qty').AsInteger,
      //             fieldByName('jin_ilsu').AsInteger,
      //             fieldByName('div').AsInteger,
      //             newDanga,//fieldByName('jin_danga').AsInteger,  //ToDO: jinryo_s에 단가가 제대로 안들어 있는 경우가 있다.
      //             fieldByName('su_gu1').AsString,
      //             fieldByName('su_gu3').AsString,
      //             varSoa,
      //             varSimya,
      //             fieldByName('su_gu3').AsString,
      //             true,  //불가산
      //             false, //  false: 금액 = 단가 * 수량*일수
      //             varJabo);
      //
               kumak := ints[6, i];

              // kumak := round2(fieldByName('jin_danga').AsInteger * iltu *
              // fieldByName('Div').AsInteger, 0);

              sangHanga := '0';
              drugSangHanGa := '0';
              changeDay := '';
      //        sang1 := fieldByName('sang1').AsString;
      //        sang2 := fieldByName('sang2').AsString;
      //        sang3 := fieldByName('sang3').AsString;


              // 특정내역 기록
              // sugu3 09 의약품
              // sugu3 41 의약품관리료

              // 먼저 줄번호 없는것 부터 써주자.

              {09 내복
              10 외용제
              12 주사 제일브레비블록주100밀리그람(염산에스몰롤)
              13 조영제 이오파미로300주사액(이오파미돌)_(30.62g/50mL)
              14 중외5%포도당생리식염액1000밀리리터
              19 마취
              50 기타}

              case su_gu3 of
                9, 10: // 의약품 , 피하근육내 주사
                  if trim(except_code) <> '' then
                    BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', except_code); // 의약분업예외구분

                19: // 의약품 , 마취
                  // if trim(except_code) <>'' then
                  if su_gu1 = 1 then
                  begin
                    BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', '55');
                    // except_code);  //의약분업예외구분
                    useWonNaeTuYak := true;

                  end;
                12, 13, 14: // 의약품 , 피하근육내 주사
                  begin


                    if trim(except_code) <> '' then
                    begin
                      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', except_code); // 의약분업예외구분

                      useWonNaeTuYak := true;

                    end;


                  end;
                41: // 의약품 관리료  AL803
                  begin
                    if su_gu1 = 1 then // 의약복욕지도료는 2이다..
                    begin
                      if strtoint(copy(su_key, 5, 1)) <> 0 then
                        iChongTu := strtoint(copy(su_key, 5, 1));

                      if useWonNaeTuYak = True then
                      begin
                        // 1=보험 2=보호1종 3=보호2종 4=일반 5=보호4종 6=보호8종  7=산재 8=자보
                        // 9=차상위1종, 10=차상위2종, 11=차상위2종장애인


                        // 의료급여1종 의료급여2종 차상위1종 차상위2종 차상위2종장애
                        // MT020(의료급여수급권자원내직접조제 투약횟수)

                      //  if fieldByName('jongbeul').AsInteger in [2, 3, 5, 6, 9, 10, 11]
                          if  jongbeul  in [2, 3, 5, 6, 9, 10, 11]
                        then
                          BufferNeyuk(grdNeyuk, '1', '', '', 'MT020', '01') // 직접투약횟수
                        else
                        begin
                          // 원내투약일수(경구,외용)
                          BufferNeyuk(grdNeyuk, '1', '', '', 'MS001', inttostr(iChongTu));
                        end;

                      end;

                      useWonNaeTuYak := true;
                    end;
                  end;

              end;

              if su_key = '642101070' then  //알마겔에프현탁액(알마게이트)
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT017', 'E');

              // showmessage(inttostr(su_gu1));

              // 진찰료
              case varChojae of//fieldByName('chojae').AsInteger of
                7, 8, 10, 11: // 초진+재진, 초진+심재 , 재진+심재 , 재진+재진
                  begin

                    // Jinryo_o에서 두개 이상의 과목을 가져올 수 있어야 한다.
                    for j := 0 to 1 do
                    begin
                      varJinChalRyoNeyuk := kwamok+  //fieldByName('kwamok').AsString +
                        '/' + jinday;
                      varJinChalRyoNeyuk := varJinChalRyoNeyuk + '/' +
                        kwamok+  //fieldByName('kwamok').AsString +
                        '/' + jinday;
                    end;
                    BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT002', varJinChalRyoNeyuk);
                    // 진찰료 두개 이상일때
                  end;
              end;

              // 수탁검사.
              if trim(aSutakKey) <> '' then  //fieldByName('sutak_key').AsString <> '' then
              begin
                    varSutakinfo := loadSutakinfo(aSutakKey);//fieldByName('sutak_key').AsString);
                    if trim(varSutakinfo) <> '' then
                    begin
                          if substr(varSutakinfo, 1, '|') = '1' then
                          begin
                            BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS008',
                              substr(varSutakinfo, 2, '|'));
                          end;

                          if substr(varSutakinfo, 1, '|') = '2' then
                          begin
                            BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS005',
                              substr(varSutakinfo, 2, '|'));
                          end;
                    end;
              end;

              //수탁 특정내역 넣자.
            //  이원 혈액 요양기관번호 41341473
            //  이화 조직 요양기관번호 12302694 입니다.

              if checkbox3.Checked=true then
              begin
                  if su_gu3= 26 then
                  begin
                   //  41341473/20190708      c5602008, c5623008

                      if    (upperCase(su_key) = 'C5602008'  )
                          or  (upperCase(su_key) = 'C5623008'  )
                          or  (upperCase(su_key) = 'c5620008'  )
                          or  (upperCase(su_key) = 'C567300F'  )  then //이화 조직
                      begin
                                 BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS005',
                                  '12302694/'+ jinday );


                      end
                      else
                      begin
                                 BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS005',
                                  '41341473/'+ jinday );


                      end;

                  end;
              end;

              if su_key = 'C5911' then // 해부병리조직검사(생검및 절제조직)
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT001', 'EO7/'); // 확인코드

              if su_key = 'L7990' then // 마취전문의 초빙료
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS001', myunhuJuminNo + '/' + myunhuNo +
                  '/' + docName); // 마취과전문의

              if varSimya = true then
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // 야간 가산


               if CodeGubun = '2'  then //준용수가
                begin

                     BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS009', cells[1, i]);//fieldByName('su_kor_name').AsString  );
                     sugacode  :=  'JJJJJJ';

                   iltu_D := formatFloat('0.00', 1.15);
                   iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);
                end;




               if (su_key = 'UB111') //임플란트 1단계
                  or (su_key = 'UB121') //2단계
                  or (su_key = 'UB131') //3단계
                  or (su_key = 'UB112') //임플란트 1단계 (병원)
                  or (su_key = 'UB122') //2단계  (병원)
                  or (su_key = 'UB132') //3단계   (병원)
                then
                begin
                       //  if  varImplantCnt > 1 then  then

                   //      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'MT037', 'M');


                end;




             if isWrite = true  then
             begin
               if cb3.checked = false then
                  WriteLn(F,
                       ChungGuNo
                     + formatFloat('00000', illyun)
                     + varGubun // 내역구분 'C'  진료내역
                     + Format('%-2s', [HangNo]) // 항번호
                     + Format('%-2s', [MokNo]) // 목번호
                     + Format('%4s', [JulNo]) // 줄번호
                     + Format('%-1s', [CodeGubun]) // 코드구분
                     + Format('%-9s', [SugaCode])
                     + Format('%10s', [Danga]) // 8.2     단가
                     + Format('%7s', [iltu_D]) // 5.2  일투
                     + Format('%3s', [chongtu]) // 총투
                     + Format('%9s', [ilHoitu]) // 5.4  //일회투
                     + Format('%10s', [floattostr(kumak)])
                     + Format('%10s', [sangHanga])
                     + Format('%10s', [drugSangHanGa])
                     + Format('%-8s', [changeDay])
                     + Format('%-1s', [myunhuKind])
                     + Format('%-100s', [myunhuNo])
                     + Format('%-8s', [teeth1])
                     + Format('%-8s', [teeth2])
                     + Format('%-8s',    [teeth3])
                     + Format('%-8s', [teeth4]))
                else       //자동차보험
                   WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun
                     // 내역구분 'C'  진료내역
                     + Format('%-2s', [HangNo]) // 항번호
                     + Format('%-2s', [MokNo]) // 목번호
                     + Format('%4s', [JulNo]) // 줄번호
                     + Format('%-1s', [CodeGubun]) // 코드구분
                     + Format('%-9s', [SugaCode])
                     + Format('%10s', [Danga]) // 8.2     단가
                     + Format('%7s', [iltu_D]) // 5.2  일투
                     + Format('%3s', [chongtu]) // 총투
                     + Format('%9s', [ilHoitu]) // 5.4  //일회투
                     + Format('%10s', [floattostr(kumak)])
                     + Format('%10s', [sangHanga])
                     + Format('%10s', [drugSangHanGa])
                     + Format('%-8s', [changeDay])
                     + Format('%-8s', [teeth1])
                     + Format('%-8s', [teeth2])
                     + Format('%-8s', [teeth3])
                     + Format('%-8s', [teeth4]));
               end;
                     iOrder := iOrder + 1;
           //   next;
            end;
    //  end;
    end;
    except
       on E: Exception do
       begin
       showmessage( 'ConVertData:WriteMyungSeSeo_Jinryo : ' + E.Message +' Chart==>'+varChart + varJinday);
           ExceptLogging('ConVertData:WriteMyungSeSeo_Jinryo : ' + E.Message +' Chart==>'+varChart + varJinday);
       end;
    end;


end;




function Tjumgum_f.loadSutakinfo(varSutakKEy: string): string;
begin
  with dm_f.sqlTemp2 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from sutak where sutak_key=:sutak_key');
    paramByName('sutak_key').AsString := varSutakKEy;
    open;
    if not isEmpty then
    begin
      result := fieldByName('sutak_kind').AsString + '|' +
        fieldByName('sutak_kiho').AsString + '/' +
        deldash(fieldByName('jin_day').AsString);

    end
    else
    begin
      result := '';
    end;
  end;
end;

procedure Tjumgum_f.WriteMyungSeSeo_Chojae(varGubun, varChart,
  varJinday: string; illyun: Integer; varChojae: Integer; varJinTime: string; varMyunHu:string);
var
  iOrder: Integer;
  su_key: string;
  su_gu1: Integer;
  su_gu3: Integer;
  teeth1: string;
  teeth2: string;
  teeth3: string;
  teeth4: string;
  jinday: string;

  HangNo: string;
  MokNo: string;
  JulNo: string;
  CodeGubun: string;
  SugaCode: string;
  Danga: string;

  iltu: double;
  iltu_D: string;

  chongtu: string;
  ilHoitu: string;

  kumak: double;

  sangHanga: string;
  drugSangHanGa: string;
  changeDay: string;

  myunhuNo, myunhuKind: string;

begin

  iOrder := 1;
  ChojaeJul := 1;
  jinday := stringreplace(varJinday, '-', '', [rfReplaceAll]);
  su_key := jinchalRyoCode;

  su_gu1 := 1;
  su_gu3 := 1;

  teeth1 := '';
  teeth2 := '';
  teeth3 := '';
  teeth4 := '';

  HangNo := '01'; // 진찰료

  
  case varChojae of
    1, 3, 7: // 초진, 심초
      MokNo := '01'; // 초진
    2, 4, 8: // 재진, 심재
      MokNo := '02'; // 재진
    else
       MokNo := '01';  //임플란트인 경우 안들어오는 경우가 있음.
  end;

  JulNo := inttostr(iOrder);
  CodeGubun := '1';
  { 1	수가(상대가치점수표에수록된코드)
    2	준용수가
    3	보험등재약
    4	원료약,요양기관 자체 조제(제제)약
    7	구 협약재료(2000.12.31이전 진료분 해당)
    8	치료재료
  }
  SugaCode := su_key;

  if varMyunHu <> ''  then
      myunhuNo := varMyunHu   //jinryo_p에서 가져오고
  else
      myunhuNo := varDrMyunHu;  //없으면 대표 면허번호


 { if varDrMyunHu2 <> ''  then
      myunhuNo := varDrMyunHu2
  else
      myunhuNo := varDrMyunHu;
  }

  myunhuKind := '1'; //의사 2:치과의사

  Danga := formatFloat('0.00', GetJinchalRyo(SugaCode, varJinday));
  Danga := stringreplace(Danga, '.', '', [rfReplaceAll]);

  iltu := 1;
  iltu_D := formatFloat('0.00', iltu);
  iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);

  chongtu := '1'; // 총투여일수

  ilHoitu := '10000'; // div  1회투약량 => 의약품인경우만 n(5.4) 예12.56=>___125600

  kumak := GetJinchalRyo(SugaCode, varJinday);

  sangHanga := '0';
  drugSangHanGa := '0';
  changeDay := '';

  {
    1.초진
    2.재진
    3.심야초진
    4.심야재진
    5.산정무(일반)
    6.틀니치료
    7.초진+심야재진
    8.재진+심야재진
    9--------------
    10.초진+재진
    11.재진2회
  }

  case varChojae of
    3, 4, 7, 8: // 심초, 심재 초+심재, 재+심재
      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', jinday + varJinTime); // 야간 가산
  end;

  if cb3.checked = false then

      WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun // 내역구분 'C'
        + Format('%-2s', [HangNo]) // 항번호
        + Format('%-2s', [MokNo]) // 목번호
        + Format('%4s', [JulNo]) // 줄번호
        + Format('%-1s', [CodeGubun]) // 코드구분
        + Format('%-9s', [SugaCode])
        + Format('%10s', [Danga]) // 8.2
        + Format('%7s', [iltu_D]) // 5.2
        + Format('%3s', [chongtu])
        + Format('%9s', [ilHoitu]) // 5.4
        + Format('%10s', [floattostr(kumak)])
        + Format('%10s', [sangHanga])
        +  Format('%10s', [drugSangHanGa])
        + Format('%-8s', [changeDay])
        +  Format('%-1s', [myunhuKind])
        + Format('%-100s', [myunhuNo])
        + Format('%-8s', [teeth1])
        + Format('%-8s', [teeth2])
        + Format('%-8s', [teeth3])
        + Format('%-8s', [teeth4]))
  else

      WriteLn(F, ChungGuNo + formatFloat('00000', illyun)
        + varGubun // 내역구분 'C'
        + Format('%-2s', [HangNo]) // 항번호
        + Format('%-2s', [MokNo]) // 목번호
        + Format('%4s', [JulNo]) // 줄번호
        + Format('%-1s', [CodeGubun]) // 코드구분
        + Format('%-9s', [SugaCode])
        + Format('%10s', [Danga]) // 8.2
        + Format('%7s', [iltu_D]) // 5.2
        + Format('%3s', [chongtu])
        + Format('%9s', [ilHoitu]) // 5.4
        + Format('%10s', [floattostr(kumak)])
        + Format('%10s', [sangHanga])
        + Format('%10s', [drugSangHanGa])
        + Format('%-8s', [changeDay])
        + Format('%-8s',  [teeth1])
        + Format('%-8s', [teeth2])
        + Format('%-8s', [teeth3]) +
          Format('%-8s', [teeth4])) ;


end;

procedure Tjumgum_f.WriteMyungSeSeo_SatGasan(varGubun, varChart,
  varJinday: string; illyun: Integer; varChojae: Integer; varJinTime: string);
var
  iOrder: Integer;
  su_key: string;
  su_gu1: Integer;
  su_gu3: Integer;
  teeth1: string;
  teeth2: string;
  teeth3: string;
  teeth4: string;
  jinday: string;

  HangNo: string;
  MokNo: string;
  JulNo: string;
  CodeGubun: string;
  SugaCode: string;
  Danga: string;

  iltu: double;
  iltu_D: string;

  chongtu: string;
  ilHoitu: string;

  kumak: double;

  sangHanga: string;
  drugSangHanGa: string;
  changeDay: string;

  myunhuNo, myunhuKind: string;

begin

  iOrder := ChojaeJul + 1;
  SatGasanJul := 1;

  jinday := stringreplace(varJinday, '-', '', [rfReplaceAll]);
  su_key := jinchalRyoCode_gasan;

  su_gu1 := 1;
  su_gu3 := 1;

  teeth1 := '';
  teeth2 := '';
  teeth3 := '';
  teeth4 := '';

  HangNo := '01'; // 진찰료

  case varChojae of
    1, 3: // 초진, 심초
      MokNo := '01'; // 초진
    2, 4: // 재진, 심재
      MokNo := '02'; // 재진
  end;

  JulNo := inttostr(iOrder);
  CodeGubun := '1';
  { 1	수가(상대가치점수표에수록된코드)
    2	준용수가
    3	보험등재약
    4	원료약,요양기관 자체 조제(제제)약
    7	구 협약재료(2000.12.31이전 진료분 해당)
    8	치료재료
  }
  SugaCode := su_key;

  myunhuNo := varDrMyunHu;
  myunhuKind := '1'; //의사  2:치과의사

  Danga := formatFloat('0.00', GetJinchalRyo(SugaCode, varJinday));
  Danga := stringreplace(Danga, '.', '', [rfReplaceAll]);

  iltu := 1;
  iltu_D := formatFloat('0.00', iltu);
  iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);

  chongtu := '1'; // 총투여일수

  ilHoitu := '10000'; // div  1회투약량 => 의약품인경우만 n(5.4) 예12.56=>___125600

  kumak := GetJinchalRyo(SugaCode, varJinday);

  sangHanga := '0';
  drugSangHanGa := '0';
  changeDay := '';

  {
    1.초진
    2.재진
    3.심야초진
    4.심야재진
    5.산정무(일반)
    6.틀니치료
    7.초진+심야재진
    8.재진+심야재진
    9--------------
    10.초진+재진
    11.재진2회
  }

  case varChojae of
    3, 4: // 심초, 심재
      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', jinday + varJinTime); // 야간 가산
  end;

  WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun // 내역구분 'C'
    + Format('%-2s', [HangNo]) // 항번호
    + Format('%-2s', [MokNo]) // 목번호
    + Format('%4s', [JulNo]) // 줄번호
    + Format('%-1s', [CodeGubun]) // 코드구분
    + Format('%-9s', [SugaCode]) + Format('%10s', [Danga]) // 8.2
    + Format('%7s', [iltu_D]) // 5.2
    + Format('%3s', [chongtu]) + Format('%9s', [ilHoitu]) // 5.4
    + Format('%10s', [floattostr(kumak)]) + Format('%10s', [sangHanga]) +
    Format('%10s', [drugSangHanGa]) + Format('%-8s', [changeDay]) +
    Format('%-1s', [myunhuKind]) + Format('%-100s', [myunhuNo]) + Format('%-8s',
    [teeth1]) + Format('%-8s', [teeth2]) + Format('%-8s', [teeth3]) +
    Format('%-8s', [teeth4]));

end;

procedure Tjumgum_f.WriteMyungSeSeo_Chubang(varGubun, varJinday: string;
  illyun, varChubangNo: Integer);
var

  iOrder: Integer;
  jinday: string;
  ChubangNo: string;

  chubangilsu: string;
  JulNo: string;
  CodeGubun: string;
  SugaCode: string;

  ilHoitu: double;
  ilHoitu_D: string;
  ilHoitu_F: string;

  iltu: string;
  chongtu: string;

  ishundred: boolean;

begin
  iOrder := 1;
  ilHoitu := 0;
  ilHoitu_D := '';
  ilHoitu_F := '';
  iltu := '';
  chongtu := '';

  with dm_f.sqlTemp do
  begin
    close;
    sql.Clear;
    sql.Add('select * from wonwe_s  ');
    sql.Add(' where seqno=:seqno    ');
    sql.Add(' and jin_day=:jin_day  ');
    sql.Add(' and bibo <>''1''      ');
    paramByName('seqno').AsInteger := varChubangNo; // 처방전번호로 가져오자...
    paramByName('jin_day').AsString := varJinday;
    open;
    First;
    if not isEmpty then
    begin
      while not eof do
      begin

        jinday := stringreplace(varJinday, '-', '', [rfReplaceAll]);

        JulNo := inttostr(iOrder);
        ChubangNo := formatDatetime('YYYYMMDD', fieldByName('jin_Day')
          .AsDatetime) + formatFloat('00000', varChubangNo);

        chubangilsu := fieldByName('jin_ilsu').AsString;

        CodeGubun := '3'; // 3:보험등재약 4:원료 조제제약 5. 보험등재약의 일반명
        SugaCode := fieldByName('code').AsString;

        ilHoitu := fieldByName('jin_qty').AsFloat;

        ilHoitu_F := Format('%5.4f', [ilHoitu]);
        // floattostr(ilHoitu );
        if substr(ilHoitu_F, 1, '.') <> '0' then
          ilHoitu_F := substr(ilHoitu_F, 1, '.')
        else
          ilHoitu_F := '';

        ilHoitu_D := Format('%5.4f', [ilHoitu]);
        ilHoitu_D := ilHoitu_F + formatFloat('0000',
          strtoint(substr(ilHoitu_D, 2, '.')));

        iltu := copy(fieldByName('div').AsString,1,2);  //toDo: n(2) 두자리로 만들고 ...헥사메딘, 왜 100을 입력했지?

        chongtu := fieldByName('jin_ilsu').AsString;

        if SugaCode = '643302280' then // 100/100약재중 하나...
          ishundred := true
        else
          ishundred := false;

        if ishundred = true then // todo : 무엇이 100/100약제인가?
          BufferNeyuk(grdNeyuk, '3', ChubangNo, JulNo, 'JT999', 'Y');


        // if 저함량의약품 배수 처방사유  then

        // BufferNeyuk(grdNeyuk, '3', ChubangNo, JulNo, 'JT010', 'B/');
        // 처방전 발행시 직접 입력...
        if fieldByName('tjungCode').AsString = 'MT999' then // 100/100약제 처방내역
        begin
          BufferNeyuk(grdNeyuk, '1', ChubangNo, '', fieldByName('tjungCode').AsString,
            CodeGubun + '/' + SugaCode + '/' + ilHoitu_D + '/' + iltu + '/'
            + chongtu);
        end
        else if fieldByName('tjungCode').AsString <> '' then
        begin
          BufferNeyuk(grdNeyuk, '3', ChubangNo, JulNo, fieldByName('tjungCode').AsString,
            fieldByName('tjungNeyuk').AsString);
        end;
        if cb3.checked= false then

        WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun
          // 내역구분 'D'
          + Format('%-13s', [ChubangNo]) // 처방전교부번호
          + Format('%3s', [chubangilsu]) // 처방일수
          + Format('%2s', ['0']) // 반복조제회수 n(2) - 사용유보
          + Format('%4s', [JulNo]) // 줄번호 1-9999
          + Format('%-1s', [CodeGubun]) // 코드구분
          + Format('%-9s', [SugaCode]) // 코드     an(9)
          + Format('%9s', [ilHoitu_D]) // 1회투약량 n(5.4)
          + Format('%2s', [iltu]) // 1일투여횟수  n(2)
          + Format('%3s', [chongtu]) // 총투약일수   n(3)
          + Format('%-1s', [' ']) //  본인부담율 구분코드
          )
         else
                  WriteLn(F, ChungGuNo + formatFloat('00000', illyun)
                  + varGubun
          // 내역구분 'D'
          + Format('%-13s', [ChubangNo]) // 처방전교부번호
          + Format('%3s', [chubangilsu]) // 처방일수
          + Format('%4s', [JulNo]) // 줄번호 1-9999
          + Format('%-1s', [CodeGubun]) // 코드구분
          + Format('%-9s', [SugaCode]) // 코드     an(9)
          + Format('%9s', [ilHoitu_D]) // 1회투약량 n(5.4)
          + Format('%2s', [iltu]) // 1일투여횟수  n(2)
          + Format('%3s', [chongtu]) // 총투약일수   n(3)
          + Format('%-1s', [' ']) //  본인부담율 구분코드
          );

        iOrder := iOrder + 1;
        next;
      end;
    end;
  end;
end;

procedure Tjumgum_f.WriteMyungSeSeo_Neyuk(varGubun, varJinday: string;
  illyun, varChubangNo: Integer);
var
  { 200405111100001E1                 MT008주민번호(첫6자리)/진료(조제)일수
    200405111100001E1                 MS00520050101/09301230
    200405111100001E1                 MX999명세서 특정내역
    200405111100001E2                1JS999준용명
    200405111100001E2                1JX999진료내역 특정내역
    200405111100001E2                3JT001a/b/c/
    200405111100001E32007100100001     1JX999기타내역
    200405111100001E32007100100001     2JX999기타내역
    200805111100001E42008010100001      CT001중복처방사유코드
  }
  iOrder: Integer;
  jinday: string;
  balsengDanwi: string;

  ChubangNo: string;
  JulNo: string;
  CodeGubun: string;
  neyuk:  string;
  i: Integer;
begin
  ChubangNo := '';
  if grdNeyuk.RowCount > 1 then
  begin
    for i := 1 to grdNeyuk.RowCount - 1 do
    begin
      balsengDanwi := grdNeyuk.cells[1, i];
      ChubangNo    := grdNeyuk.cells[2, i];
      JulNo        := grdNeyuk.cells[3, i];
      CodeGubun    := grdNeyuk.cells[4, i];
    //  neyuk        := copy(grdNeyuk.cells[5, i],0,699);
     // richedit1.Text :=  grdNeyuk.cells[5, i];
      grdNeyuk.CellToRich(5, i,richedit1 );

      neyuk        :=  grdNeyuk.RichToString(richedit1);  // copy(grdNeyuk.cells[5, i],0,699);
      neyuk        :=  richEdit1.text;//copy(neyuk,0,699);

      neyuk        :=  DeleteLineBreaks( copy( ansistring(neyuk),0,699) );

      WriteLn(F, ChungGuNo + formatFloat('00000', illyun)
        + varGubun  // 내역구분 'E'
        + Format('%-1s', [balsengDanwi])  // 발생단위  (1:명세서 2:진료내역 3:처방내역 줄번호 단위 4:처방내역단위)
        + Format('%-13s', [ChubangNo]) // 처방전교부번호
        + Format('%4s', [JulNo])  // 줄번호 1-9999  발생단위구분 1,4 -> space 2,3 -> 1-9999
        + Format('%-5s', [CodeGubun]) // 특정내역구분
        + AnsiStrings.Format('%-700S', [neyuk]) // 특정내역
        );


    end;
  end;
end;

procedure Tjumgum_f.makeMedLog;
var
   forminit : TiniFile;
   path:string;
   path_in, path_out : string;

   aMEDLOG : TextFile;
begin
       Path :=  'c:\hira\ddmd\conf\ddmd.properties';
       FormInit := TIniFile.Create(Path);
       path_in:=  FormInit.ReadString('settings', 'compatibility.dmd.dir', 'C:\hira\DDMD\sam\in');     //청구문서
       path_out:=  FormInit.ReadString('settings', 'compatibility.ntc.dir', 'C:\hira\DDMD\sam\out');   //통보문서

       FormInit.Free;

   try
    try
           //MEDLOG.ENC파일이 있으면 삭제한다.

         deletefiles( path_in +'\MEDLOG.ENC');

         Assignfile(aMEDLOG, path_in +  '\MEDLOG.ENC');
         Rewrite(aMEDLOG);

         WriteLn(aMEDLOG, '');
         WriteLn(aMEDLOG, '');
         WriteLn(aMEDLOG,  cbYear.text+'-'+cbMonth.text +'청구'+'['+ rgChungGubun.items[rgChungGubun.itemindex]    +']')  //' 2017-10청구[건강보험]');
    finally
         Closefile(aMEDLOG);
    end;
  except
    on E: Exception do
    begin
      Closefile(aMEDLOG);
      showmessage(E.Message + #10#13 + path_in +  '\MEDLOG.ENC' + ' 파일생성 ');
    end;
  end;


{

    sim_in = INIRead("settings", "compatibility.dmd.dir", "c:\hira\ddmd\conf\ddmd.properties")
    sim_out = INIRead("settings", "compatibility.ntc.dir", "c:\hira\ddmd\conf\ddmd.properties")


    MEDLOG.ENC
       10100061
       NULL
       2017-10청구[건강보험]


       'Open "c:\ktedi\tr\gen_in\MEDLOG.ENC" For Output As #5
        Open sim_in & "\MEDLOG.ENC" For Output As #5

        정보record.거래처ID = "101000" & 청구기관 & 실청구
        정보record.부서ID = "NULL"


        Select Case type보험청구
            Case 1
               If cbo생성구분.ListIndex = 0 Then
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 청구[전체]", 35)               '
               ElseIf cbo생성구분.ListIndex = 1 Then
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 청구[건강보험]", 35)
               Else
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 청구[의료급여]", 35)
               End If
            Case 2
               If cbo생성구분.ListIndex = 0 Then
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 보완청구[전체]", 35)
               ElseIf cbo생성구분.ListIndex = 1 Then
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 보완청구[건강보험]", 35)
               Else
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 보완청구[의료급여]", 35)
               End If
            Case 3
               If cbo생성구분.ListIndex = 0 Then
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 누락청구[전체]", 35)
               ElseIf cbo생성구분.ListIndex = 1 Then
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 누락청구[건강보험]", 35)
               Else
                  정보record.문서제목 = fn글자찾기23(청구년월 & " 누락청구[의료급여]", 35)
               End If
         End Select

        Print #5, 정보record.거래처ID
        Print #5, 정보record.부서ID
        Print #5, 정보record.문서제목
        Close #5

}

end;

procedure Tjumgum_f.btnChungGuDataCreateClick(Sender: TObject);
var
   i: integer;

begin

  // application.MessageBox()
       if application.MessageBox( PChar(   rgChungGubun.items[rgChungGubun.itemindex] +'가 맞습니까?'),
       '청구확인', MB_YESNO) = IDNO  then
       exit;

  try
      GroupBox5.enabled := false;
      btnSamCheck.enabled := false;
      //Sam파일 생성시 Medlog.ENC파일 생성하자.

      MakeMedLog;


      application.ProcessMessages;
      lblStat.caption:= '자료파일을 생성하는 중입니다.'+#10
                       +'잠시만 기다려 주세요...' ;





          //.GHP파일이 있으면 삭제한다.
      deletefiles( targetPath +'*.GHP');


      application.ProcessMessages;

      btnChungGuDataCreate.enabled := false;

            if cb3.Checked = false then
            begin

              if sumBohumGunsu > 0 then //보험건수가 > 0이면 진행
              begin
                    try
                      ChungGuNo_serial := LoadChungGuNo(cbYear.text, cbMonth.text);

                      ChungGuNo := cbYear.text + cbMonth.text + ChungGuNo_serial;
                      targetFile := ChungGuNo + '.GHP'; // 2012070001

                      MakeMyungSeFile_Bohum;

                      WriteChungGuSeo('보험');

                      WriteMyungSeSeo('보험');


                    finally
                      try
                      Closefile(F);
                      except

                      end;
                    end;

                    // DB에 파일을 저장하자...
                    SaveChungGuFiles(cbYear.text, cbMonth.text, ChungGuNo_serial, '1');
              end;


              if sumBohoGunsu > 0 then //보호건수가 > 0이면 진행
              begin
                    try
                     ChungGuNo_serial := LoadChungGuNo(cbYear.text, cbMonth.text);

                      ChungGuNo := cbYear.text + cbMonth.text + ChungGuNo_serial;
                      targetFile := ChungGuNo + '.GHP'; // 2012070001

                      MakeMyungSeFile_Boho;
                      WriteChungGuSeo('보호');
                      WriteMyungSeSeo('보호');
                    finally
                       try
                      Closefile(F);
                       except

                       end;
                    end;
                    // DB에 결과 파일을 저장하자...
                    SaveChungGuFiles(cbYear.text, cbMonth.text, ChungGuNo_serial, '2');
              end;
              //btnChungGuDataCreate.enabled := false;
            end
            else
            begin



              // 자보청구
                 //todo : 자보생성
                //1. 보험사로 그룹핑하자...--> listBox에 보험사 코드를 넣고..
                //2. listbox로 자보사코드를 참조하여 보험사별로 청구서파일을 만들고 명세서를 기입하자...

                   for I := 0 to listBox1.Count-1 do
                   begin
                       try

                          MakeMyungSeFile_Jabo(listBox1.items[i]);   //자보사 코드
                          WriteChungGuSeo_Jabo(listBox1.items[i]);   //자보사 코드
                          WriteMyungSeSeo_Jabo(listBox1.items[i]);   //자보사 코드

                       finally
                          Closefile(F);
                       end;
                   end;



            end;

                application.ProcessMessages;
                lblStat.caption:= '자료파일을 생성했습니다.'+#10
                                 +'[자료파일점검]버튼을 클릭하여 송신자료를 만드세요.' ;

                application.ProcessMessages;

                showmessage('SAM파일을 생성했습니다.');

    finally

                GroupBox5.enabled := true;
                btnSamCheck.enabled := true;

               // btnChungGuDataCreate.enabled := true;
                btnChungGuDataCreate.enabled := false;
    end;
end;

procedure Tjumgum_f.WriteChungGuSeo(varKind: string);
//label
//  reLoad;
var
  i: Integer;
  state: boolean;

  ChungVersion: string; // 청구서 서식버젼	an(3)
  MyungVersion: string; // 명세서 서식버젼	an(3)
  ChungNo: string; // 청구번호	an(10)
  SusikNo: string; // 서식번호	an(4)
//  YoyangKiho: string; // 요양기관(의료급여기관)기호	an(8)
//  chungGuName: string; // 청구인	an(20)
//  jaksungName: string; // 작성자성명	an(20)
//  jaksungJumin: string; // 작성자생년월일	an(13)

  SusinKigwan: string; // 수신기관	an(1)
  JongGubun: string; // 보험자 종별구분 (의료급여 진료구분)	an(1)
  ChungGubun: string; // 청구구분	an(1)
  ChungDanwi: string; // 청구단위구분	an(1)
  JinGubun: string; // 진료구분	an(1)
  JinBunya: string; // 진료분야구분	an(1)
  JinHyungTae: string; // 진료형태  an(1)
  JinYearMonth: string; // 진료년월	an(6)
  { Gunsu           :integer;// 건수	n(6)
    yoyangChong1    :integer;// 요양급여비용총액1	n(12)
    bonin           :integer;// 본인일부부담금	n(12)
    boninSanghan    :integer;// 본인부담상한액초과금	n(12)
    chung           :integer;// 청구액	n(12)
    jiwon           :integer;// 지원금	n(12)
    jangE           :integer;// 장애인의료비	n(12)
    yoyangChong2    :integer;// 요양급여비용총액2	n(12)
    chong           :integer;// 진료비총액	n(12)
    bohunChung      :integer;// 보훈청구액	n(12)
    hbyh            :integer;// 건강보험(의료급여)100/100본인부담금총액	n(12)
    bohunbonin      :integer;// 보훈 본인일부부담금	n(12)
    chaDeungJinilsu :double;// 차등수가   적용구분	진료(조제)일수	n(4.2)
    chaDeungDocNo   :double; // 차등수가   의(약)사수	n(2.2)
    chaDeungJisu    :Double;// 차등지수	n(1.7)
    chadeungChung   :integer;// 차등수가청구액		n(12)
  }
  Gunsu       : string; // 건수	n(6)
  yoyangChong1: string; // 요양급여비용총액1	n(12)
  bonin       : string; // 본인일부부담금	n(12)
  boninSanghan: string; // 본인부담상한액초과금	n(12)
  chung       : string; // 청구액	n(12)
  jiwon       : string; // 지원금	n(12)
  jange       : string; // 장애인의료비	n(12)
  yoyangChong2: string; // 요양급여비용총액2	n(12)
  chong       : string; // 진료비총액	n(12)
  bohunChung  : string; // 보훈청구액	n(12)
  hbyh        : string; // 건강보험(의료급여)100/100본인부담금총액	n(12)
  bohunbonin  : string; // 보훈 본인일부부담금	n(12)

  chaDeungJinilsu: string; // 차등수가   적용구분	진료(조제)일수	n(4.2)
  chaDeungDocNo: string; // 차등수가   의(약)사수	n(2.2)
  chaDeungJisu: string; // 차등지수	n(1.7)
  chadeungChung: string; // 차등수가청구액		n(12)

  chungDay: string; // 청구일자	an(8)
//  chungGuName: string; // 청구인	an(20)
// jaksungName: string; // 작성자성명	an(20)
//  jaksungJumin: string; // 작성자생년월일	an(13)
  DaehangKiho: string; // 대행청구단체기호	an(5)
  remark: string; // 참조란	an(1750)

  //100/100 미만 청구액
  hbyhmiman : string;
  hbyhmimanbonDam: string;
  hbyhmimanChung: string;
  hbyhmimanBohunChung: string;


begin

  ChungVersion := '090';
  MyungVersion := '090';






  SusinKigwan := '1'; // 건강보험심사평가원



  // ChungGubun := ' '; // space: 원청구 1:보완청구 2:추가청구 8: 삭제

  { 원청구
    보완청구
    누락청구
    추가청구
    분리청구
  }
  case rgChungGubun.ItemIndex of
    0:
      ChungGubun := ' ';  //원청구
    1:
      ChungGubun := '1';  //보완청구
    2:
      ChungGubun := '2'; // 추가청구
    3:
      ChungGubun := '3'; // 분리청구
  end;

  ChungDanwi := '0'; // 1~6:해당주단위(일자별) 0:월단위통합청구(일자별)

  JinGubun := '1'; // 1:의과DRG 2:치과 5:정신건강의학과 정액 7:보건 8:약국 9:한방


  //상급종합병원, 종합병원, 치과대학부속치과병원 및 한방병원의 요양급여비용명세서는 구분하여기재.
  JinBunya := ' '; // 1:내과, 2:외과 3:산,소아청소년과 4:안,이비인후과 5:피부,비뇨기과 6:치과 9:한의과


             if  cbGubunIn.checked   then   //입원
         begin
          //    sql.text := sql.text +  ' and (isInpat = ''1'' or isInpat = ''2'')' ;
             JinHyungTae := '1'; // 1의과입원 2의과외래 3 치과입원 4치과외래 A장기요양 입원
         end
         else
         begin  //외래

             JinHyungTae := '2'; // 1의과입원 2의과외래 3 치과입원 4치과외래 A장기요양 입원

         end;


  JinYearMonth := cbYear.text + cbMonth.text; // 입원의 경우 퇴원일이 속한 월(CCYYMM);

//  for i := 1 to grdMain.RowCount - 1 do
//  begin

//      AdvProgressBar1.Position := i;

//    if rgChungGubun.ItemIndex in [1,2,3] then //  보완, 추가, 분리
//    begin
//      grdMain.GetCheckBoxState(1, i, state);
//      if state = false then
//      begin
//     //   goto reLoad;
//     //   continue;
//      end;
//
//    end;

    if varKind = '보험' then
    begin
     // if grdMain.ints[32, i] in [1, 9, 10, 11] then
      // 건보 , 차상위1, 차상위2, 차상위 2장애
    //  begin
        SusikNo := 'H010'; // 요양급여   //H011:의료급여
        JongGubun := '4';
        // 7:보훈위탁진료기관, 보훈병원 //의료급여 1:1차진료 2:2차진료 9노:숙자및외국인근로자

        Gunsu := inttostr(sumBohumGunsu); // 명세서의 청구건수

        yoyangChong1 := inttostr(sumYoYangChong1);//sumBohumChong - sumBohumHbyHChong); // 요양급여비용총액1

        bonin := inttostr(sumBohumBonin - sumBohumHbyHBonin);
        boninSanghan := inttostr(sumBohumBoninSangHan);
        chung := inttostr(sumBohumChung - sumBohumHbyHChung);
        jiwon := inttostr(sumBohumJiwon);
        jange := inttostr(sumBohumjangE);

        yoyangChong2 := inttostr(sumYoYangChong1);//sumBohumChong - sumBohumHbyHChong); // 요양급여비용총액 2
        chong := inttostr(sumBohumjinChong);

        bohunChung := inttostr(sumBohumBohun);
        hbyh := inttostr(sumBohumHbyH);
        bohunbonin := '0';
        chaDeungJinilsu := formatFloat('0000',
          getJinryoilsu(cbYear.text + '-' + cbMonth.text + '-' + cbDay1.text,
          cbYear.text + '-' + cbMonth.text + '-' + cbDay2.text));
        chaDeungJinilsu := chaDeungJinilsu + '00';
        chaDeungDocNo := configvalue.varDocNo;

        chaDeungJisu := '10000000'; // 정수부1자리, 소수부7자리(총8자리)소수점은 미표기
        chadeungChung := chung; // 차등수가청구액=[청구액-(진찰료*(1-차등지수))]




        hbyhmiman            := inttostr(sumBohumHbyHChong);//'0';
        hbyhmimanbonDam      := inttostr(sumBohumHbyHBonin);//'0';
        hbyhmimanChung       := inttostr(sumBohumHbyHChung);//'0';
        hbyhmimanBohunChung  :='0';

     // end
     // else
     // begin
     //   //goto reLoad;
     //     continue;
     // end;

    end
    else if varKind = '보호' then
    begin

    //  if grdMain.ints[32, i] in [2, 3, 5, 6] then
    //  begin
        SusikNo := 'H011'; // 요양급여   //H011:의료급여
        JongGubun := '1';
        // 7:보훈위탁진료기관, 보훈병원 //의료급여 1:1차진료 2:2차진료 9노:숙자및외국인근로자

        Gunsu := inttostr(sumBohoGunsu); // 명세서의 청구건수
        yoyangChong1 := inttostr(sumYoYangChong1);//sumBohoChong - sumBohoHbyHChong); // 요양급여비용총액1
        bonin := inttostr(sumBohoBonin - sumBohoHbyHBonin);
        boninSanghan := inttostr(sumBohoBoninSangHan);
        chung := inttostr(sumBohoChung - sumBohoHbyHChung);
        jiwon := inttostr(sumBohoJiwon);
        jange := inttostr(sumBohojangE);
        yoyangChong2 := inttostr(sumYoYangChong1);//sumBohoChong - sumBohoHbyHChong); // 요양급여비용총액 2
        chong := inttostr(sumBohojinChong);
        bohunChung := inttostr(sumBohoBohun);
        hbyh := inttostr(sumBohoHbyH);
        bohunbonin := '0';
        chaDeungJinilsu := '0';
        chaDeungDocNo := '0';

        chaDeungJisu := '0'; // 정수부1자리, 소수부7자리(총8자리)소수점은 미표기
        chadeungChung := '0'; // 차등수가청구액=[청구액-(진찰료*(1-차등지수))]

          hbyhmiman          := inttostr(sumBohoHbyHChong);//'0';
          hbyhmimanbonDam    := inttostr(sumBohoHbyHBonin);//'0';
          hbyhmimanChung     := inttostr(sumBohoHbyHChung);//'0';
          hbyhmimanBohunChung:='0';


    //  end
    //  else
    //  begin
    //    //goto reLoad;
    //      continue;
    //  end;

    end;

 // reLoad:
//  end;

  chungDay := formatDatetime('YYYYMMDD', now);

  DaehangKiho := configvalue.varDaeheng;
  remark := '';


  WriteLn(F, ChungVersion
  + MyungVersion
  + ChungGuNo
  + AnsiStrings.Format('%-4s', [SusikNo])
    + AnsiStrings.Format('%-8s', [YoyangKiho])
    + AnsiStrings.Format('%-1s', [SusinKigwan])
    + AnsiStrings.Format('%-1s', [JongGubun]) // 30
    + AnsiStrings.Format('%-1s', [ChungGubun])
    + AnsiStrings.Format('%-1s', [ChungDanwi])
    + AnsiStrings.Format('%-1s', [JinGubun])
    + AnsiStrings.Format('%-1s', [JinBunya])
    + AnsiStrings.Format('%-1s', [JinHyungTae])
    + AnsiStrings.Format('%-6s', [JinYearMonth])
    + AnsiStrings.Format('%6s', [Gunsu])
    + AnsiStrings.Format('%12s', [yoyangChong1])
    + AnsiStrings.Format('%12s', [bonin])
    + AnsiStrings.Format('%12s',  [boninSanghan])
    + AnsiStrings.Format('%12s', [chung]) // 84
    + AnsiStrings.Format('%12s', [jiwon]) // 96
    + AnsiStrings.Format('%12s', [jange]) // 108
    + AnsiStrings.Format('%12s', [yoyangChong2]) // 120
    + AnsiStrings.Format('%12s', [bohunChung]) // 132
    + AnsiStrings.Format('%12s', [hbyh]) // 144
    + AnsiStrings.Format('%12s', [bohunbonin]) // 156
    + AnsiStrings.Format('%12s', [hbyhmiman]) // 168
    + AnsiStrings.Format('%12s', [hbyhmimanbonDam]) // 180
    + AnsiStrings.Format('%12s', [hbyhmimanChung]) // 192
    + AnsiStrings.Format('%12s', [hbyhmimanBohunChung]) // 204
    + AnsiStrings.Format('%6s', [chaDeungJinilsu]) // 216
    + AnsiStrings.Format('%4s', [chaDeungDocNo]) // 222
    + AnsiStrings.Format('%8s', [chaDeungJisu]) // 226
    + AnsiStrings.Format('%12s', [chadeungChung]) // 234
    + AnsiStrings.Format('%-8s', [chungDay]) // 246
    + AnsiStrings.Format('%-20s',[chungGuName]) // 254
    + AnsiStrings.Format('%-20s', [jaksungName]) // 274
    + AnsiStrings.Format('%-13s', [jaksungJumin]) // 294
    + AnsiStrings.Format('%-35s', [SeunginNo]) // 307
    + AnsiStrings.Format('%-5s', [DaehangKiho]) // 342
    + AnsiStrings.Format('%-1750s', [remark])); // 347

end;

function Tjumgum_f.getJinryoilsu(varDay1: string; varDay2: string): Integer;
var
   aDay: string;
   aCnt : integer;
   isHol : boolean;
begin    //차등진료일 = 진료일자중에서 공휴일과 토요일을 제외한다

  with dm_f.sqlTemp2 do
  begin
    close;
    sql.Clear;
    sql.Add(' select jin_day, count(jin_day) as jinCount from jinryo_p     ');
    sql.Add(' where jin_Day >= :jin_day1 and jin_day <= :jin_day2          ');
    sql.Add(' group by jin_day                                             ');
    sql.Add(' order by jin_day                                             ');
    paramByName('jin_day1').AsString := varDay1;
    paramByName('jin_day2').AsString := varDay2;
    open;
    first;
    aCnt := recordCount;
   //1. 전체 진료 일수를 구한 후에...
    while not eof do
    begin
           isHol := false;
          aDay :=   fieldByName('jin_day').asString;
          with dm_f.sqlTemp15 do
          begin
               Close;
               Sql.Clear;
               Sql.Add('select * from gonghyu where gh_day=:gh_day');
               ParamByName('gh_day').AsString := aDay;
               Open;
               if not isEmpty then
               begin
                   //2. 휴일이면 총진료일 수에서 하나 빼고.
                   aCnt := aCnt -1;
                   isHol := true;
               end;
           end;
           //휴일이 아니고 토요일이면 또하나 빼자.
            if   (DayOfWeek(strTodate(aDay)) = 7)  and  (isHol=false)  then
            begin
                aCnt := aCnt -1;
            end;

       next;
    end;
   // result := fieldByName('jinCount').AsInteger;
       if aCnt <= 0 then
      aCnt := 1;

    result := aCnt
  end;
end;

procedure Tjumgum_f.grdGroupCodeDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

     insertGridGroupSuga(grdGroupCode, 1, 2, 3, ARow);

end;

procedure Tjumgum_f.grdJx2ButtonClick(Sender: TObject; ACol, ARow: Integer);
var
    url : string;
begin
        url := 'https://www.druginfo.co.kr/search2/search.aspx?q='+
             grdJx2.Cells[19, Arow] ;

        case acol of
          1, 26 :
          begin


              ShellExecute(GetDesktopWindow, 'open', Pchar('IEXPLORE.EXE'),
              Pchar(url), nil, SW_SHOWNORMAL);


          end;
        end;
end;

procedure Tjumgum_f.grdJx2ClickCell(Sender: TObject; ARow, ACol: Integer);
var
  grdRect: Trect;

begin
  //그리드 헤더 선택 창 띄우기
  if (ARow = 0) and (ACol = 0) then
  begin

    grdRect := grdJx2.CellRect(ACol, ARow);

    gridColSelect(grdJx2, grdRect, clbJinryoHx);


  end

end;

procedure Tjumgum_f.grdJx2GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
      if grdJx2.Cells[0, ARow] = 'GR' then
        ABrush.Color := $00B6FAB4;
      /// / $008CBEEC;

      if (grdJx2.Cells[7, ARow] = '2.00') or
      (grdJx2.Cells[7, ARow] = '2')
       then // 비급여
      begin
        ABrush.Color := $00E1FFF0;
        /// / $008CBEEC;
      end;


      if (grdJx2.Cells[30, ARow] = 'D')  then //삭제
      begin

            AFont.Color := $00CFCFCF;
            AFont.Style := [fsStrikeOut]   ;
      end;

      if (grdJx2.Cells[30, ARow] = 'C')  then //청구에서 입렵
      begin

            AFont.Color := clWhite;
            ABrush.Color := $00C08000;
          //  AFont.Style := [fsStrikeOut]   ;
      end;


end;

procedure Tjumgum_f.grdJx2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   ARow, aCol, g , k: integer;

    i       : integer;
    grCap   : string;
    grCode  : string;
    grCode1 : string;
begin
   // VK_PRIOR	21	PAGE UP key
  // VK_NEXT	22	PAGE DOWN key
  // VK_END	23	END key
  // VK_HOME	24	HOME key
  // VK_LEFT	25	LEFT ARROW key
  // VK_UP	26	UP ARROW key
  // VK_RIGHT	27	RIGHT ARROW key
  // VK_DOWN	28	DOWN ARROW key

    ARow :=  grdJx2.Row;
    aCol :=  grdJx2.Col;




    case key of
           VK_ESCAPE:
           begin

               isJx2Delete := false;
                for i:= 0 to grdJx2.selectedRowcount -1 do
                begin

//                    grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';

                        if grdJx2.Cells[0, grdJx2.SelectedRow[i]] = 'GR' then
                        begin
                          // 그룹삭제 Tag
                          grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';

                          g := grdJx2.SelectedRow[i] +1;
                        //  DeleteJin(ARow);

                          grCode :=   grdJx2.Cells[31,  grdJx2.SelectedRow[i]];

                          while g <= grdJx2.RowCount - 1 do
                          begin
                             grCap   :=  grdJx2.Cells[0, g];
                             grCode1 :=  grdJx2.Cells[31, g];
                          //  if grCap = 'GR' then
                            if grCode <> grCode1 then
                            begin
                               Break;
                            end
                            else
                            begin
                               grdJx2.Cells[30, g] := '';
                            end;

                            g:= g+1;

                          end;
                        end
                        else
                        begin
                            grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';
                        end;

                 end;
                   grdJx2.Repaint;

                 //  JinryoBiSet;
           end;

           VK_DELETE://, VK_BACK : //Exit
           begin


             if isJx2Delete = false then
             begin
                 isJx2Delete := true;
                for i:= 0 to grdJx2.selectedRowcount -1 do
                begin

                     //  grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';

                        if grdJx2.Cells[0, grdJx2.SelectedRow[i]] = 'GR' then
                        begin
                          // 그룹삭제 Tag
                          grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';

                          g := grdJx2.SelectedRow[i] +1;
                        //  DeleteJin(ARow);
                          grCode :=   grdJx2.Cells[31,  grdJx2.SelectedRow[i]];

                          while g <= grdJx2.RowCount - 1 do
                          begin
                             grCode1 :=   grdJx2.Cells[31,  g];

                             grCap :=  grdJx2.Cells[0, g];
                           // if grCap = 'GR' then
                            if grCode <> grCode1 then
                            begin
                               Break;
                            end
                            else
                            begin
                               grdJx2.Cells[30, g] := 'D';
                            end;

                            g:= g+1;

                          end;
                        end
                        else
                        begin
                            grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';
                        end;





                end;
             end
             else
             begin
                isJx2Delete := false;
                for i:= 0 to grdJx2.selectedRowcount -1 do
                begin

//                    grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';

                        if grdJx2.Cells[0, grdJx2.SelectedRow[i]] = 'GR' then
                        begin
                          // 그룹삭제 Tag
                          grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';

                          g := grdJx2.SelectedRow[i] +1;
                        //  DeleteJin(ARow);
                          grCode :=   grdJx2.Cells[31,  grdJx2.SelectedRow[i]];

                          while g <= grdJx2.RowCount - 1 do
                          begin
                             grCap :=  grdJx2.Cells[0, g];
                             grCode1 :=   grdJx2.Cells[31,  g];
                           // if grCap = 'GR' then
                            if grCode1 <> grCode then
                            begin
                               Break;
                            end
                            else
                            begin
                               grdJx2.Cells[30, g] := '';
                            end;

                            g:= g+1;

                          end;
                        end
                        else
                        begin
                            grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';
                        end;

                 end;



             end;

                grdJx2.Repaint;

              //  JinryoBiSet;





//             if  grdJx2.SelectedRowCount  = 1 then
//             begin
//                if ((grdJx2.RowCount > 1) and (ARow >= 1)) then
//                begin
//
//                  if MessageDlg('<' + grdJx2.Cells[1, ARow] + '>' + '내역을 삭제하시겠습니까?',
//                    mtInformation, [mbYes, mbNo], 0) = mrYes then
//                  begin
//
//                    if grdJx2.Cells[0, ARow] = 'GR' then
//                    begin
//                      // 그룹삭제
//                      g := ARow;
//                      DeleteJin(ARow);
//                      while g <= grdJx2.RowCount - 1 do
//                      begin
//                        if grdJx2.Cells[0, g] = 'GR' then
//                        begin
//                          Break;
//                        end
//                        else
//                        begin
//                          DeleteJin(g);
//                        end;
//                      end;
//                    end
//                    else
//                    begin
//                        DeleteJin(ARow);
//                    end;
//
//                    varValueChanged := true;
//                  end;
//
//
//
//                 end;
//             end
//             else
//             if  grdJx2.SelectedRowCount  > 1 then
//             begin
//
//
//                  if MessageDlg('<' + grdJx2.Cells[1, ARow] + '> 등 '
//                      + inttoStr(grdJx2.SelectedRowCount)+ '개 내역 전부를 삭제하시겠습니까?',
//                    mtInformation, [mbYes, mbNo], 0) = mrYes then
//                  begin
//                        listbox1.Items.clear;
//
//                        for k:= grdJx2.RowCount-1 downto 1 do
//                        begin
//
//                           if grdJx2.RowSelect[k] = true then
//                           begin
//
//                              listbox1.Items.Add( grdJx2.Cells[18, k] );
//
//
//                           end;
//                        end;
//
//                        for k:= 0 to  listbox1.Items.count-1 do
//                        begin
//                              DeleteJinryo_s(listbox1.Items[k]);  //Jins_key
//
//                        end;
//
//                        grdJx2.RemoveSelectedRows;
//                        listbox1.Items.clear;
//                  end;
//             end;
//
//             JinryoBiSet;
           end;
     end;

end;

procedure Tjumgum_f.grdMainCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
  State: Boolean);
var
//      state :boolean;
      i: integer;
begin
    ReCalcTotal;
{
  // Summary
  sumBohumGunsu := 0;
  sumBohumChong := 0;
  sumBohumBonin := 0;
  sumBohumBoninSangHan := 0;
  sumBohumChung := 0;
  sumBohumJiwon := 0;
  sumBohumjangE := 0;
  sumBohumjinChong := 0;
  sumBohumBohun := 0;
  sumBohumHbyH := 0;

  sumBohoGunsu := 0;
  sumBohoChong := 0;
  sumBohoBonin := 0;
  sumBohoBoninSangHan := 0;
  sumBohoChung := 0;
  sumBohoJiwon := 0;
  sumBohojangE := 0;
  sumBohojinChong := 0;
  sumBohoBohun := 0;
  sumBohoHbyH := 0;

  sumjaboGunsu := 0;
  sumjaboChong := 0;
  sumjaboBonin := 0;
  sumjaboBoninSangHan := 0;
  sumjaboChung := 0;
  sumjaboJiwon := 0;
  sumjabojangE := 0;
  sumjabojinChong := 0;
  sumjaboBohun := 0;
  sumjaboHbyH := 0;

          //Summary초기화
        grdsummary.floats[1, 1] := 0;   //보험
        grdsummary.floats[2, 1] := 0;
        grdsummary.floats[3, 1] := 0;
        grdsummary.floats[4, 1] := 0;

        grdsummary.floats[1, 2] := 0;   //보호
        grdsummary.floats[2, 2] := 0;
        grdsummary.floats[3, 2] := 0;
        grdsummary.floats[4, 2] := 0;

        grdsummary.floats[1, 3] := 0;  //자보
        grdsummary.floats[2, 3] := 0;
        grdsummary.floats[3, 3] := 0;
        grdsummary.floats[4, 3] := 0;

        grdsummary.floats[1, 4] := 0;   //산재
        grdsummary.floats[2, 4] := 0;
        grdsummary.floats[3, 4] := 0;
        grdsummary.floats[4, 4] := 0;

        grdsummary.floats[1, 5] := 0;   //합계
        grdsummary.floats[2, 5] := 0;
        grdsummary.floats[3, 5] := 0;
        grdsummary.floats[4, 5] := 0;



      for I := 1 to grdMain.RowCount-1 do
      begin
            grdMain.GetCheckBoxState(1, i, state);
            if state = true then
            begin
                   totSummary(grdMain.Ints[32,i], i);
            end;

      end;}
end;
procedure Tjumgum_f.grdMainClickSort(Sender: TObject; ACol: Integer);
begin
  grdMain.autonumbercol(0);

end;

procedure Tjumgum_f.grdMainDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  if  aRow <= 0 then exit;

  case aCol of
        2:  //병록번호
        begin
          if LoadGogekData_chart(grdMain.cells[2, ARow], ProgressBar) = true then
          begin
//            main_f.Fieldset;
//
//            if assigned(Jinryo_f) then
//            begin
//              Jinryo_f.dMain.Date := strtodate(grdMain.cells[4, ARow]);
//              Jinryo_f.FieldSetJin(main_f.edtChart.text, grdMain.cells[4, ARow]);
//              Jinryo_f.SyncJa;
//            end;

          end
          else
          begin
//            main_f.fieldclear;

          end;

        end;
        9..11 ://피보험자 증번호 조합기호
        begin
              lblchart.caption  :=  grdMain.cells[2, ARow];
              lbljinday.caption :=  grdMain.cells[4, ARow];
              edtJungNo.Text    :=  grdMain.cells[10, ARow];
              edtgaip.Text      :=  grdMain.cells[9, ARow];
              edtGiho.Text      :=  grdMain.cells[11, ARow];

              edtJungNo2.Text   :=  grdMain.cells[10, ARow];
              edtgaip2.Text     :=  grdMain.cells[9, ARow];
              edtGiho2.Text     :=  grdMain.cells[11, ARow];

              pnlJagyuk.Visible := true;
        end;
  end;

end;

procedure Tjumgum_f.grdMainFilterDone(Sender: TObject);
begin
  grdMain.autonumbercol(0);
end;

procedure Tjumgum_f.grdsummaryGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin

  if (ACol in [1 .. 8]) and (ARow > 0) then
  begin
    HAlign := taRightJustify;
  end
  else
    HAlign := taCenter;

end;

procedure Tjumgum_f.grdsummaryGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  case ACol of
    1 .. 8:
      begin
        AStyle := ssFinancial;
      end;
  end;

end;

procedure Tjumgum_f.setCombo;
var
  i: Integer;
  lastDay: Integer;
begin

  for i := 2012 to 2030 do
  begin
    cbYear.Items.Add(inttostr(i));
  end;
  cbYear.ItemIndex := cbYear.Items.IndexOf(formatDatetime('YYYY', now));

  for i := 2012 to 2030 do
  begin
    cbYear1.Items.Add(inttostr(i));
  end;
  cbYear1.ItemIndex := cbYear1.Items.IndexOf(formatDatetime('YYYY', now));

  for i := 1 to 12 do
  begin
    cbMonth1.Items.Add(formatFloat('00', i));
  end;
  cbMonth1.ItemIndex := strtoint(formatDatetime('MM', now)) - 1;

  for i := 1 to 12 do
  begin
    cbMonth.Items.Add(formatFloat('00', i));
  end;
  cbMonth.ItemIndex := strtoint(formatDatetime('MM', now)) - 1;

  lastDay := CalEndDate(cbYear.text + '-' + cbMonth.text);

  LoadDays(lastDay);


   cbChungno.Items.clear;
    cbChungno.Items.Add('자동증가');
  for I := 1 to 99 do
  begin
       cbChungno.Items.Add(inttostr(i));
  end;


  
  lblTerm.Caption :=  cbYear.text +'년 '+  cbMonth.text +'월';


end;

procedure Tjumgum_f.cbMonthChange(Sender: TObject);
var
  i, lastDay: Integer;
begin


  lastDay := CalEndDate(cbYear.text + '-' + cbMonth.text);
  LoadDays(lastDay);

  lblTerm.Caption :=  cbYear.text +'년 '+  cbMonth.text +'월';


end;

procedure Tjumgum_f.edtChartKeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then
          btnLoadJinryoDataClick(nil);
end;

procedure Tjumgum_f.edtYoyangKihoExit(Sender: TObject);
begin
      saveChungGuInfo_maru;
end;

procedure Tjumgum_f.LoadDays(varLastday: Integer);
var
  i, lastDay: Integer;
begin
  cbDay1.Items.Clear;
  cbDay2.Items.Clear;
  for i := 1 to varLastday do
  begin

    cbDay1.Items.Add(formatFloat('00', i));
    cbDay2.Items.Add(formatFloat('00', i));
  end;

  cbDay1.ItemIndex := 0;
  cbDay2.ItemIndex := varLastday - 1;
end;

procedure Tjumgum_f.WriteChungGuSeo_Jabo(varJaboCode: string); //자보사코드
//label
//  reLoad;
var
  i: Integer;
  state: boolean;

  ChungVersion: string; // 청구서 서식버젼	an(3)
  MyungVersion: string; // 명세서 서식버젼	an(3)
  ChungNo: string; // 청구번호	an(10)
  SusikNo: string; // 서식번호	an(4)
//  YoyangKiho: string; // 요양기관(의료급여기관)기호	an(8)

  SusinKigwan: string; // 수신기관	an(1)
  JongGubun: string; // 보험자 종별구분 (의료급여 진료구분)	an(1)
  ChungGubun: string; // 청구구분	an(1)
  ChungDanwi: string; // 청구단위구분	an(1)
  JinGubun: string; // 진료구분	an(1)
  JinBunya: string; // 진료분야구분	an(1)
  JinHyungTae: string; // 진료형태  an(1)
  JinYearMonth: string; // 진료년월	an(6)
  { Gunsu           :integer;// 건수	n(6)
    yoyangChong1    :integer;// 요양급여비용총액1	n(12)
    bonin           :integer;// 본인일부부담금	n(12)
    boninSanghan    :integer;// 본인부담상한액초과금	n(12)
    chung           :integer;// 청구액	n(12)
    jiwon           :integer;// 지원금	n(12)
    jangE           :integer;// 장애인의료비	n(12)
    yoyangChong2    :integer;// 요양급여비용총액2	n(12)
    chong           :integer;// 진료비총액	n(12)
    bohunChung      :integer;// 보훈청구액	n(12)
    hbyh            :integer;// 건강보험(의료급여)100/100본인부담금총액	n(12)
    bohunbonin      :integer;// 보훈 본인일부부담금	n(12)
    chaDeungJinilsu :double;// 차등수가   적용구분	진료(조제)일수	n(4.2)
    chaDeungDocNo   :double; // 차등수가   의(약)사수	n(2.2)
    chaDeungJisu    :Double;// 차등지수	n(1.7)
    chadeungChung   :integer;// 차등수가청구액		n(12)
  }
  Gunsu: string; // 건수	n(6)
  yoyangChong1: string; // 요양급여비용총액1	n(12)
  bonin: string; // 본인일부부담금	n(12)
  boninSanghan: string; // 본인부담상한액초과금	n(12)
  chung: string; // 청구액	n(12)
  jiwon: string; // 지원금	n(12)
  jange: string; // 장애인의료비	n(12)
  yoyangChong2: string; // 요양급여비용총액2	n(12)
  chong: string; // 진료비총액	n(12)
  bohunChung: string; // 보훈청구액	n(12)
  hbyh: string; // 건강보험(의료급여)100/100본인부담금총액	n(12)
  bohunbonin: string; // 보훈 본인일부부담금	n(12)

  chaDeungJinilsu: string; // 차등수가   적용구분	진료(조제)일수	n(4.2)
  chaDeungDocNo: string; // 차등수가   의(약)사수	n(2.2)
  chaDeungJisu: string; // 차등지수	n(1.7)
  chadeungChung: string; // 차등수가청구액		n(12)

  chungDay: string; // 청구일자	an(8)
 // chungGuName: string; // 청구인	an(20)
 // jaksungName: string; // 작성자성명	an(20)
 // jaksungJumin: string; // 작성자생년월일	an(13)
 // SeunginNo: string; // 검사승인번호	an(35)
  DaehangKiho: string; // 대행청구단체기호	an(5)
  remark: string; // 참조란	an(1750)

begin

  ChungVersion := '020';
  MyungVersion := '020';



  bohumsaCode:= varJaboCode ;

  SusikNo := 'C010'; // 자보
  SusinKigwan := '1'; // 건강보험심사평가원



  // ChungGubun := ' '; // space: 원청구 1:보완청구 2:추가청구 8: 삭제

  { 원청구
    보완청구
    추가청구
  }
  case rgChungGubun.ItemIndex of
    0:
      ChungGubun := ' ';
    1:
      ChungGubun := '1'; // 보완청구
    2:
      ChungGubun := '2'; // 추가청구
    3:
      ChungGubun := '3'; // 분리청구
  end;

  ChungDanwi := '0'; // 1~6:해당주단위(일자별) 0:월단위통합청구(일자별)
  JinGubun := '2'; // 1:의과DRG 2:치과 5:정신건강의학과 정액 7:보건 8:약국 9:한방
  JinBunya := '6'; // 1:내과, 2:외과 3:산,소아청소년과 4:안,이비인후과 5:피부,비뇨기과 6:치과 9:한의과
  JinHyungTae := '4'; // 1의과입원 2의과외래 3 치과입원 4치과외래 A장기요양 입원
  JinYearMonth := cbYear.text + cbMonth.text; // 입원의 경우 퇴원일이 속한 월(CCYYMM);

  for i := 1 to grdMain.RowCount - 1 do
  begin
      if rgChungGubun.ItemIndex in [1,2,3] then // 보완, 추가청구 , 분리
      begin
        grdMain.GetCheckBoxState(1, i, state);
         if state = false then
         begin
         //  goto reLoad;
          continue;
         end;

      end;

      ChungVersion := '010';
      MyungVersion := '010';

      if (grdMain.ints[32, i] in [8])
         and (grdMain.cells[40, i] = varJaboCode) then
      begin
        JongGubun := '8';   // 8 자동차보험

        Gunsu := inttostr(sumJaboGunsu); // 명세서의 청구건수
        yoyangChong1 := inttostr(sumJaboChong); // 요양급여비용총액1

        //bonin := inttostr(sumJaboBonin);
        bonin :='0';

        boninSanghan := inttostr(sumJaboBoninSangHan);
        chung := inttostr(sumJaboChung);
        jiwon := inttostr(sumJaboJiwon);
        jange := inttostr(sumJabojangE);
        yoyangChong2 := inttostr(sumJaboChong); // 요양급여비용총액 2
        chong := inttostr(sumJabojinChong);
        bohunChung := inttostr(sumJaboBohun);
        hbyh := inttostr(sumJaboHbyH);
        bohunbonin := '0';
        chaDeungJinilsu := formatFloat('0000',
             getJinryoilsu(cbYear.text + '-' + cbMonth.text + '-' + cbDay1.text,
             cbYear.text + '-' + cbMonth.text + '-' + cbDay2.text));
        chaDeungJinilsu := chaDeungJinilsu + '00';
        chaDeungDocNo := configvalue.varDocNo;

        chaDeungJisu := '10000000'; // 정수부1자리, 소수부7자리(총8자리)소수점은 미표기
        chadeungChung := chung; // 차등수가청구액=[청구액-(진찰료*(1-차등지수))]

      end
      else
      begin
       // goto reLoad;
        continue;
      end;
 // reLoad:
  end;

  chungDay := formatDatetime('YYYYMMDD', now);

  DaehangKiho := configvalue.varDaeheng;
  remark := '';

  WriteLn(F, ChungVersion
    + MyungVersion
    + AnsiStrings.Format('%-2s', [''])//BohumSaCode
    + ChungGuNo
    + AnsiStrings.Format('%-4s', [SusikNo])
    + AnsiStrings.Format('%-8s', [YoyangKiho])
    + AnsiStrings.Format('%-1s', [SusinKigwan])
    + AnsiStrings.Format('%-1s', [JongGubun]) // 30
    + AnsiStrings.Format('%-1s', [ChungGubun])
    + AnsiStrings.Format('%-1s', [ChungDanwi])
    + AnsiStrings.Format('%-1s', [JinGubun])
    + AnsiStrings.Format('%-1s', [JinBunya])
    + AnsiStrings.Format('%-1s', [JinHyungTae])
    + AnsiStrings.Format('%-6s', [JinYearMonth])
    + AnsiStrings.Format('%6s',  [Gunsu])
    + AnsiStrings.Format('%12s', [yoyangChong2]) //50 진료비총액
    + AnsiStrings.Format('%12s', [bonin]) // 62  환자납부총액
    + AnsiStrings.Format('%12s', [yoyangChong2])//[chung]) // 74  청구액
    + AnsiStrings.Format('%-8s', [chungDay]) // 86
    + AnsiStrings.Format('%-20s', [chungGuName]) // 94
    + AnsiStrings.Format('%-20s', [jaksungName]) //114
    + AnsiStrings.Format('%-13s', [jaksungJumin]) // 134
    + AnsiStrings.Format('%-5s', [DaehangKiho]) // 147
    + AnsiStrings.Format('%-1750s', [remark])); // 152

end;

procedure Tjumgum_f.WriteMyungSeSeo_Jabo(varJaboCode: string );
//label
//  reLoad, isEof;
var
  i: Integer;

  varChungGubun: string;

  nChoJae: Integer;
  nAge: Integer;
  dWorkDate: TDateTime;
  jange: boolean;
  yongua: boolean;
  ilban: boolean;
  ifirst: boolean;
  jinilsu: string;


  gongsangGubun: string;
  // 0:무
  // 1:공상
  // 4: 보훈 국비환자(요양급여등)
  // 7:보훈국비환자(상이처 무자격자등)
  // 8: 군인가조계비역장군 등
  // 9: 군인 군무원의 군요양기관이용시
  // B: 보훈병원 국비일반
  // C: 차상위 희귀난치성질환자
  // D: 보훈병원 국비보험(급여)2차
  // E: 차상위 만성질환 18세미만 본인부담 경감
  // F: 차상위 장애인 만성질환 18세미만 본인부담 경감
  // G: 긴급복지의료지원 대상자
  // H: 희귀 난치성질환대상자
  varjungekGubun: string;

  varJiwonGeum: string;

  varJohapKiho, varBohoGubun: string;
  varSusikNo: string;

  varIlyun: Integer;
  varIlyun_boho: Integer;
  varIlyun_bohum: Integer;
  ChubangNo: string;

  state: boolean;
  varJaboJigubBojungNo:string;
  varJaboSagoJubsuNo:string;


  varJong: integer;
  varBohumsa:string;
begin

  varIlyun := 0;
  varIlyun_boho := 0;
  varIlyun_bohum := 0;

  ChubangNo := '';

  AdvProgressBar1.Min := 0;
  AdvProgressBar1.Max := grdMain.RowCount - 1;
  AdvProgressBar1.Position := 0;

  for i := 1 to grdMain.RowCount - 1 do
  begin

    if rgChungGubun.ItemIndex in [1,2,3] then
    begin
      grdMain.GetCheckBoxState(1, i, state);
      if state = false then
      begin
       // goto reLoad;
       continue;
      end;

    end;

    ChojaeJul := 0;
    SatGasanJul := 0;
    // 2. 진찰료코드 만들자
    { makejinchalRyoCode(
      nChoJae: Integer;
      nAge: Integer;
      dWorkDate: TDateTime;
      jange:boolean;
      yongua:boolean;
      ilban:boolean;
      ifirst:boolean }
    {
      1.건강보험
      2.의료급여1종
      3.의료급여2종
      4.일반
      5.의료급여4종
      6.의료급여8종
      7.산재
      8.자보
      9.차상위1종
      10.차상위2종
      11.차상위2종장애인
    }
       varJong:= grdMain.ints[32, i] ;
       varBohumsa:=grdMain.cells[40, i] ;

       if  not(grdMain.ints[32, i] in [8])    then
        // 일반, 산재, 자보, 건강보험, 차상위1종, 차상위2종, 차상위2종장애
       // goto reLoad;
       continue;

       if  (grdMain.cells[40, i] <> varjaboCode)  then
       continue;
        // goto reLoad;

      varSusikNo := 'C023';
 // C020 : 자동차보험 의과 입원 진료수가명세서
 // C120 : 자동차보험 의과 입원 진료수가명세서
 //        (요양병원 장기 환자)
 // C021 : 자동차보험 의과 외래 진료수가명세서
 // C022 : 자동차보험 치과 입원 진료수가명세서
 // C023 : 자동차보험 치과 외래 진료수가명세서


      varJohapKiho := grdMain.cells[11, i];
      case grdMain.ints[32, i] of
        2:
          varBohoGubun := '1'; // 1종
        3:
          varBohoGubun := '2'; // 2종
        5:
          varBohoGubun := '4'; // 행려
        6:
          varBohoGubun := '8'; // 2종대상자 장애인의 1차진료 6: 2종대상자 장애인의 2차진료
      end; // 9:노숙자 및  외국인 근로자

      varIlyun_boho := varIlyun_boho + 1;
      varIlyun := varIlyun_boho;



    grdNeyuk.RemoveRows(1, grdNeyuk.RowCount - 1); // 1. 특정내역을 모두 지우고...

    nChoJae := grdMain.ints[31, i];
    nAge := grdMain.ints[7, i];
    dWorkDate := strtodate(grdMain.cells[4, i]);

    gongsangGubun := grdMain.cells[21, i];

    if ( gongsangGubun = 'H') or ( gongsangGubun = 'G') then
      varJiwonGeum := grdMain.cells[16, i]
    else
      varJiwonGeum := '0';



 //  varJaboJigubBojungNo:= edtJaboJigubBojungNo.Text;// '201301440214179';
 //  varJaboSagoJubsuNo:=  edtJaboSagoJubsuNo.Text;// '20130504-00111-10-002';

    varJaboSagoJubsuNo:=   grdMain.cells[41, i]  ;
    varJaboJigubBojungNo:=  grdMain.cells[42, i]  ;


    if grdMain.ints[12, i] = 1 then
      jange := true
    else
      jange := false;


//    case grdMain.ints[28, i] of
//      1:
//        yongua := true;
//      2:
//        ilban := true;
//      3:
//        ifirst := true;
//    else
//      begin
//        yongua := false;
//        ilban := false;
//        ifirst := false;
//      end;
//    end;

    jinchalRyoCode := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate, jange,
    grdMain.ints[28, i]);//
 //     yongua, ilban, ifirst);

    // 토요가산코드 구하기
    jinchalRyoCode_gasan := '';
    if (DayOfWeek(dWorkDate) = 7) // 토요일만 계산
      and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 이후
      and (nChoJae <> 3) and (nChoJae <> 4) then // 초재가 심야가 아니면
    begin
      jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
        jange,
        grdMain.ints[28, i],//yongua, ilban, ifirst,
        true);

    end;

    { 1건강보험
      2의료급여1종
      3의료급여2종
      4일반
      5의료급여4종
      6의료급여8종
      7산재
      8자보
      9차상위1종
      10차상위2종
      11차상위2종장애인
    }
    // if  grdMain.ints[32, i] in [2,'3','5','6','9','10','11'] then
    // if grdMain.ints[32, i] in [2, 3, 5, 6, 9, 10, 11] then
    // varjungekGubun := '0'
    // else
    // varjungekGubun := '9';

    if grdMain.cells[30, i] <> '' then
      varjungekGubun := grdMain.cells[30, i]
    else
    begin
      varjungekGubun := '9';
    end;

    // jinilsu := '1';
    jinilsu := inttostr(loadJinilsu(grdMain.cells[2, i], grdMain.cells[4, i]));

    { 1:보완,2:추가,3:분리,8:삭제
      원청구
      보완청구
      누락청구
      추가청구
      분리청구
    }
    case rgChungGubun.ItemIndex of
      0:
        varChungGubun := ' ';  //원청구
      1:
        varChungGubun := '1';  //보완청구
      2:
        varChungGubun := '2';  //추가청구
      3:
        varChungGubun := '3';  //분리청구
    end;

    // 일반내역'A'
    WriteLn(F, ChungGuNo
      + formatFloat('00000', varIlyun) + 'A'
      // 내역구분 A 일반 B 상병 C 진료 D 처방 E 특정내역메모
      + varSusikNo // 서식번호

      + AnsiStrings.Format('%-8s', [edtYoyangKiho.Text]) // 기관기호
      + AnsiStrings.Format('%-1s', [varjungekGubun])
       // 1: 정액수가 적용   2: 행위별수가 적용(특정기간)
       //요양병원 장기환자 입원요양급여비용진료수가명세서의 경우 정액수가 적용과 행위별수가 적용(특정기간) 여부를 기재

      + AnsiStrings.Format('%-1s', [varChungGubun]) // 청구구분코드  1:보완,2:추가,3:분리,8:삭제
      + AnsiStrings.Format('%-7s', ['']) // 접수번호  당초 청구한 명세서 접수번호
      + AnsiStrings.Format('%-5s', ['']) // 명세서일련번호  당초 청구한 명세서 일련번호
      + AnsiStrings.Format('%-2s', ['']) // 사유코드         보완청구시 기청구서 명세서의 심사불능코드기재
      + AnsiStrings.Format('%-8s', ['']) // 최초입원개시일   입원요양급여비용 분리청구시기재 CCYYMMDD
      + AnsiStrings.Format('%-30s', [varJaboSagoJubsuNo]) // 사고접수번호
      + AnsiStrings.Format('%-17s', [varJaboJigubBojungNo]) // 지급보증번호
      + AnsiStrings.Format('%-20s', [grdMain.cells[3, i]]) // 수진자성명
      + AnsiStrings.Format('%-13s', [grdMain.cells[8, i]]) // 수진자주민번호 (-) 생략기재
      + AnsiStrings.Format('%3s', [jinilsu]) // 요양급여일수 , 처방내역의 일수를 따라간다.
      + AnsiStrings.Format('%3s', ['1']) // 입원일수
      + AnsiStrings.Format('%-2s', ['']) // 도착,입원경로(병원급이상)
      + AnsiStrings.Format('%-1s', ['1']) // 진료결과 1계속 2이송 3회송 4사망 9퇴원또는 외래종결
      + AnsiStrings.Format('%10s', ['0']) // 약제상한차액총액   사용유보(20120201~20130131)
      + AnsiStrings.Format('%10s', [inttostr(grdMain.ints[15, i] + grdMain.ints[18, i])]) // 진료비총액 (보험+비보험)
      + AnsiStrings.Format('%10s', [grdMain.cells[16, i]]) // 환자납부총액 (본인부담금)
      + AnsiStrings.Format('%10s', [inttostr(grdMain.ints[15, i] + grdMain.ints[18, i])])  //청구액 (보험+비보험)
      + AnsiStrings.Format('%-2s', [varJaboCode])
       );                                                          //[grdMain.cells[17, i]]

    // 특정내역 생성(보험용)
    // MT008  의사별 진료(조제)일수.  첫번째 명일련에만 기재한다.
    if varIlyun = 1 then
    begin
      BufferNeyuk(grdNeyuk, '1', '', '', 'MT008', varDrJumin + '/' + jinilsu);
      // MT008주민번호(첫6자리)/진료(조제)일수
    end;

    if grdMain.cells[19, i] <> '' then // 상해외인
      BufferNeyuk(grdNeyuk, '1', '', '', 'MT001', grdMain.cells[19, i]);

    if grdMain.cells[27, i] <> '' then // 급여환자 진료확인번호 13자리
      BufferNeyuk(grdNeyuk, '1', '', '', 'MT019', grdMain.cells[27, i]);

    if grdMain.cells[26, i] <> '' then // 급여환자 본인부담 구분
      BufferNeyuk(grdNeyuk, '1', '', '', 'MT018', grdMain.cells[26, i]);

    if grdMain.cells[14, i] <> '' then
    begin
      ChubangNo := formatDatetime('YYYYMMDD', strtodate(grdMain.cells[4, i])) +
        formatFloat('00000', grdMain.ints[14, i]);

      if grdMain.cells[35, i] <> '' then // 원외투약특정내역구분
        BufferNeyuk(grdNeyuk, '4', ChubangNo, '', grdMain.cells[35, i],
          grdMain.cells[36, i]);
    end;

          if (trim(grdMain.cells[37, i]) <> '') and    // 진료특정내역
              (grdMain.cells[61, i] = '1')  then  //특례적용
//      BufferNeyuk(grdNeyuk, '1', '', '', 'MT002',    grdMain.cells[37, i]);
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002',
                      trim( subStr( grdMain.cells[37, i], 1, '|') ) );


    // 자동차보험...

    // 상병내역'B'

    WriteMyungSeSeo_Sangbyubg('B',
      grdMain.cells[2, i],
      grdMain.cells[4, i],
      grdMain.cells[39, i], //면허번호 jinryo_p
      varIlyun,
      grdMain.cells[20, i]);  //산정특례번호

    // 진료내역'C'

    // 자동차보험...진찰료코드를 넣는다.
    // 틀니등 진찰료가 0 인것은 진찰료코드를 넣지 않는다.
    if grdMain.ints[34, i] <> 0 then // 진찰료(jubsuak)
    begin
      WriteMyungSeSeo_Chojae('C', grdMain.cells[1, i], grdMain.cells[4, i],
        varIlyun, grdMain.ints[31, i], grdMain.cells[13, i], grdMain.cells[39, i]); // 진찰료코드
      // jin_time
      if (jinchalRyoCode_gasan <> '') and (configvalue.varGubun <> '병원')   then
        WriteMyungSeSeo_SatGasan('C', grdMain.cells[2, i], grdMain.cells[4, i],
          varIlyun, grdMain.ints[31, i], grdMain.cells[13, i]); // 토요가산코드
    end;

    WriteMyungSeSeo_jinryo(true, 'C', grdMain.cells[2, i], grdMain.cells[4, i],
      varIlyun,
      grdMain.ints[31, i],
      grdMain.ints[32, i],  //종별코드
     '16',
      grdMain.ints[7, i],
             grdMain.cells[51, i],    //jubsu_id
             grdMain.cells[50, i],    //isInpat
             grdMain.cells[38, i],   //의사명
             grdMain.cells[39, i],  //면허번호
             true); // 진료내역 자보

    // 처방내역'D'
    WriteMyungSeSeo_Chubang('D', grdMain.cells[4, i], varIlyun,
      grdMain.ints[14, i]);

    // 특정내역'E'
    WriteMyungSeSeo_Neyuk('E', grdMain.cells[4, i], varIlyun, 0);

    AdvProgressBar1.Position := i;

//  reLoad:
  end;

end;





procedure Tjumgum_f.Button5Click(Sender: TObject);
begin
         if  (sender as Tbutton).Tag = 0 then
         begin
              (sender as Tbutton).Tag := 1;
             grdMain.CheckAll(1);
         end
             else
             begin

                grdMain.UnCheckAll(1);
               (sender as Tbutton).Tag := 0;
             end;
             ReCalcTotal;
end;
procedure Tjumgum_f.ReCalcTotal;
var
      state :boolean;
      i: integer;
begin

  // Summary
  sumBohumGunsu := 0;
  sumBohumChong := 0;
  sumBohumBonin := 0;
  sumBohumBoninSangHan := 0;
  sumBohumChung := 0;
  sumBohumJiwon := 0;
  sumBohumjangE := 0;
  sumBohumjinChong := 0;
  sumBohumBohun := 0;
  sumBohumHbyH := 0;

  sumBohoGunsu := 0;
  sumBohoChong := 0;
  sumBohoBonin := 0;
  sumBohoBoninSangHan := 0;
  sumBohoChung := 0;
  sumBohoJiwon := 0;
  sumBohojangE := 0;
  sumBohojinChong := 0;
  sumBohoBohun := 0;
  sumBohoHbyH := 0;

  sumjaboGunsu := 0;
  sumjaboChong := 0;
  sumjaboBonin := 0;
  sumjaboBoninSangHan := 0;
  sumjaboChung := 0;
  sumjaboJiwon := 0;
  sumjabojangE := 0;
  sumjabojinChong := 0;
  sumjaboBohun := 0;
  sumjaboHbyH := 0;


  sumBohumHbyHChong := 0;
  sumBohumHbyHChung := 0;
  sumBohumHbyHBonin := 0;

  sumYoYangChong1  := 0;

  sumBohoHbyHChong := 0;
  sumBohoHbyHChung := 0;
  sumBohoHbyHBonin := 0;


          //Summary초기화
        grdsummary.floats[1, 1] := 0;   //보험
        grdsummary.floats[2, 1] := 0;
        grdsummary.floats[3, 1] := 0;
        grdsummary.floats[4, 1] := 0;

        grdsummary.floats[1, 2] := 0;   //보호
        grdsummary.floats[2, 2] := 0;
        grdsummary.floats[3, 2] := 0;
        grdsummary.floats[4, 2] := 0;

        grdsummary.floats[1, 3] := 0;  //자보
        grdsummary.floats[2, 3] := 0;
        grdsummary.floats[3, 3] := 0;
        grdsummary.floats[4, 3] := 0;

        grdsummary.floats[1, 4] := 0;   //산재
        grdsummary.floats[2, 4] := 0;
        grdsummary.floats[3, 4] := 0;
        grdsummary.floats[4, 4] := 0;

        grdsummary.floats[1, 5] := 0;   //합계
        grdsummary.floats[2, 5] := 0;
        grdsummary.floats[3, 5] := 0;
        grdsummary.floats[4, 5] := 0;



      for i := 1 to grdMain.RowCount-1 do
      begin
            grdMain.GetCheckBoxState(1, i, state);
            if state = true then
            begin
                   totSummary(grdMain.Ints[32,i], i);
            end;

      end;
end;


procedure Tjumgum_f.btnSamCheckClick(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
      code: Integer;



    SEInfo: TShellExecuteInfo;
    ExitCode: DWORD;
    ExecuteFile, ParamString, StartInString: string;

begin


          if cbCheckSend.Checked = true then
          begin
                  //점검 후 바로 송신
                       if Application.MessageBox(
                    '[점검 후 바로 송신] 을 하게되면  '+#10
                  + '확인 과정 없이 실청구를 하게 됩니다. 점검을 마친 후 '+#10
                  + '공인인증서 비밀번호를 입력하고 확인하면 송신이 완료됩니다. '+#10
                   , '확인', MB_OKCANCEL) = 1 then
                  begin
                        strProgram := 'C:\hira\DDMD\bin\'+ 'examsnd.exe';

                        ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
                            nil, SW_SHOW);
                  end;
           end
           else
           begin
                {호출 모듈 Argument 리턴값 설명
                exam.exe (점검)
                examsnd.exe(점검 & 송싞)
                -
                0 정상
                1 실패(청구가능)
                -1 실패(청구불가)
                -2 실패(모듈업데이트)}

                      strProgram := 'C:\hira\DDMD\bin\'+ 'exam.exe';
                //     code :=  ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
                //          nil, SW_SHOW);
                //점검을 마칠때까지 기다리자...

                ExecuteFile := 'C:\hira\DDMD\bin\'+ 'exam.exe'; // 실행할 프로그램

              //  ExecuteFile :=   'C:\hira\DDMD\bin\'+ 'examsnd.exe';//(점검 & 송싞)


                ParamString :=  pChar(strName1) ; // 프로그램의 명령행 파라미터
                StartInString := 'c:\'; // 시작 위치
                FillChar(SEInfo, SizeOf(SEInfo), 0);
                SEInfo.cbSize := SizeOf(TShellExecuteInfo);

                with SEInfo do
                begin
                      fMask := SEE_MASK_NOCLOSEPROCESS;
                      Wnd := Application.Handle;
                      lpFile := PChar(ExecuteFile);
                      lpParameters := PChar(ParamString);
                      lpDirectory := PChar(StartInString);
                      nShow := SW_SHOWNORMAL;
                end;
                if ShellExecuteEx(@SEInfo) then
                begin
                    repeat
                        Application.ProcessMessages;
                        GetExitCodeProcess(SEInfo.hProcess, ExitCode);
                    until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
                   //      ShowMessage('프로그램이 종료되었습니다');
                end
                else
                      ShowMessage('프로그램을 실행할 수 없습니다');



             //아래는 실행 않된다.... else만 탄다....
          //      application.ProcessMessages;
                case code of
                0:  //정상
                        lblStat.caption:= '송신용 파일을 만들었습니다.'+#10
                                 +'오류가 없습니다. [송신]버튼을 클릭하여 송신을 완료하세요.' ;

                1:// 실패(청구가능)
                        lblStat.caption:= '송신용 파일을 만들었습니다.'+#10
                                 +'오류가 있지만  [송신]버튼을 클릭하여 송신 가능합니다.' ;
                -1:// 실패(청구불가)
                          lblStat.caption:= '송신용 파일을 만들었습니다.'+#10
                                 +'오류가 있습니다.오류를 확인하세요.' ;
                -2:// 실패(모듈업데이트)}
                        lblStat.caption:= '송신용 파일을 만들었습니다.'+#10
                                 +'오류가 있습니다.모듈업데이트가 필요합니다.' ;
                  else
                      lblStat.caption:= '송신용 파일을 만들었습니다.'+#10
                                 +'[송신]버튼을 클릭하여 송신 가능합니다.' ;
                end;
          //      application.ProcessMessages;
     end;

end;

procedure Tjumgum_f.btnSendClick(Sender: TObject); //청구
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin
      if cbPreExam.checked then
      begin
               if Application.MessageBox(
            '[사전점검송신(권장사항)] 이 선택되어 있습니다. '+#10
          + '선택하신 송신방식은 실청구가 아닙니다. '+#10
          + '사전점검 청구 1~2시간 후 요양기관포탈 빠른서비스 메뉴에서 ' +#10
          + '[청구오류] - [청구오류 사전점검]에서 청구결과를 확인하십시오. '+#10
          + '계속 진행하려면 [OK], 취소하려면 [Cancel]을 클릭하세요. ' +#10
          + '[사전점검송신(권장사항)]은 실청구가 아닙니다.' +#10
          + '청구 오류 확인 후 반드시 '+#10
          +' [사전점검송신(권장사항)] 을 해제 하신후 실청구 하십시오. '
           , '확인', MB_OKCANCEL) = 1 then
        begin
          strProgram := 'C:\hira\DDMD\bin\'+ 'preexam.exe';
          strName1 :='2017-08';
          ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
              nil, SW_SHOW);
        end;
      end
      else
      begin

           begin
                   //송신
                       if Application.MessageBox(
                    '[송신] 을 하게되면  '+#10
                  + '실청구를 하게 됩니다. 새로 열린 창에서 '+#10
                  + '[미송신]된 청구문서를 선택하고 [→청구]버튼을 클릭하여  ' +#10
                  + '공인인증서 비밀번호를 입력하고 확인하면 송신이 완료됩니다. '+#10
                   , '확인', MB_OKCANCEL) = 1 then
                  begin

                        strProgram := 'C:\hira\DDMD\bin\'+ 'dmdsndui.exe';
                        ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
                            nil, SW_SHOW);
                  end;


           end;
      end;


end;

procedure Tjumgum_f.Button7Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin


      strProgram := 'C:\hira\DDMD\bin\'+ 'examerr.exe';
      ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
          nil, SW_SHOW);


end;

procedure Tjumgum_f.Button8Click(Sender: TObject);
var
   jubsu_id : string;
   jin_Day  : string;
   docID    : string;
   TeakRyeCode : string;
   jin_skey  : string;
   su_Key    : string;
   chart:string;
   julNo : integer;
begin
      chart    :=   grdMain.Cells[2, grdMain.Row];
      jubsu_id :=  grdMain.Cells[51, grdMain.Row];
      jin_Day  :=  grdMain.Cells[4, grdMain.Row];
      docID    :=  grdMain.Cells[52, grdMain.Row];
    //  TeakRyeCode :='';// string;
      jin_skey    := grdJx2.Cells[18, grdJx2.Row];
      su_Key      := grdJx2.Cells[19, grdJx2.Row];
      julNo       :=   grdJx2.Row ;

      if jin_skey ='' then
      begin
         jin_skey:='0';
      end;


//    LoadInputTeakJung('',  grdJx2.Cells[19, grdJx2.Row] );
      LoadInputTeakJung(
               chart,
               jubsu_id, // ma_jubsu_id,         //  jubsu_id
               jin_Day,// substr(listBox2.Items[k], 1,'|'),                            //  jin_Day
               docID,// cbDoc.ColumnItems[cbDoc.itemindex, 4],                       //  docID
               TeakRyeCode,// substr(listBox2.Items[k], 4,'|') ,    //aNeedTeakRyeCode,      TeakRyeCode
               jin_skey,// substr(listBox2.Items[k], 2,'|') ,    //jin_skey               jin_skey
               su_Key,
               julNo);// substr(listBox2.Items[k], 3,'|') );    // suKey) ;             su_Key

end;

procedure Tjumgum_f.grdReportClickCell(Sender: TObject; ARow, ACol: Integer);
begin
       if aRow > 0 then
           fillJinryoData ( grdReport.Ints[ 7, aRow]   );
end;

procedure Tjumgum_f.grdReportClickSort(Sender: TObject; ACol: Integer);
begin
      grdReport.autonumberCol(0) ;
end;

procedure Tjumgum_f.grdReportDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

  if aRow <= 0 then
     Exit;


  if ACol = 2 then
  begin
    if LoadGogekData_chart(grdReport.cells[2, ARow], ProgressBar) = true then
    begin

//      if assigned(main_f) then
//      begin
//
//          isLoading := True;
//
//          main_f.Fieldset;
//
//      end;



//      if assigned(Jinryo_f) then
//      begin
//        Jinryo_f.dMain.Date := strtodate(grdReport.cells[4, ARow]);
//        Jinryo_f.FieldSetJin(
//             grdReport.cells[1, ARow],   //Chart
//             grdReport.cells[4, ARow]);  //Jin_day
//        Jinryo_f.SyncJa;
//      end;

    end
    else
    begin

//      if assigned(main_f) then
//      begin
//
//           main_f.fieldclear;
//
//      end;



    end;

  end;

end;








procedure Tjumgum_f.grdSangByungKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     case key of
          VK_BACK:
          begin
          end;

          VK_DELETE://, VK_BACK: //Exit

           begin

               if (grdSangByung.Row > 0) then
               begin

                  if  DeleteSangByung(grdSangByung.Row) = true then
                  begin
                      grdSangByung.RemoveRows(grdSangByung.Row ,1)   ;

                      grdSangByung.RowCount := 10;
                   //   grdSangByung.autonumberCol(0);
                  end;
               end;

           end;

     end;
end;
procedure Tjumgum_f.grdSugaDblClickCell(Sender: TObject; ARow, ACol: Integer);
var
   gubKind : string;
//   gubKind : integer;
   jin_Day : string;
begin



   if isNeyukLoad = true then
      jin_day := grdNeyuk.Cells[1, grdNeyuk.Row]
   else
      jin_day := FormatDateTime('YYYY-MM-DD' , DtDate.date);



  if ARow >= 1 then
  begin


    if cbJong.itemindex in [3,7] then  //일반이거나 자보는 비급이다.
       gubKind := '2'
    else
        gubKind := '0';

    // insertsugaOnce(grdSuga.Cells[1, aRow], 1, 1);//
    insertsugaOnce(grdJx2,
      (sender as TAdvStringgrid).Cells[1, ARow],
     jin_day,// FormatDateTime('YYYY-MM-DD' , jinryo_f.DaegiFrame_fr1.DtDate.date), //FormatDateTime('YYYY-MM-DD', dmain.Date), // jinDay,
      cbJong.itemindex, // jongbyul,
      LblAge.Caption, // age,
      false, // isYagan,
      grdJx2.RowCount, // -1,// 1,//nManRow,
      1,   // RowOrder//   nManStart);
      'C', //modiKind
      0,// aQty: Integer = 0;
      0, // aKind : integer = 0; //0: Su_key 로 1: User_key로
      gubKind,
      (sender as TAdvStringgrid).Cells[4, ARow]   ); //예외코드

    //JinryoBiSet;
  end;

end;

function Tjumgum_f.DeleteSangByung(aRow:integer): boolean;
begin
      result:=true;
       if Application.MessageBox(PChar('상병기록을 삭제 하시겠습니까?'),  '알림', MB_YESNO) = IDYES then
       begin
        try
          with Dm_f.sqlJinryo do
          begin
                close;
                SQL.Clear;
                SQL.Add('Delete From Jinryo_o');
                SQL.Add('Where id=:id   ');
                paramByName('id').asString   := grdSangByung.cells[18, aRow];
                execsql;
          end;

        //  grdSangByung.RemoveRows(ARow, 1);
        //  grdSangByung.RowCount := 10;
        //  grdSangByung.AutoNumberCol(0);
        except


          on E: Exception do
          begin

             Showmessage(E.Message + '상병삭제오류');
             result:=false;

          end;


        end;

       end
       else
        begin
           result:=false;
        end;
end;

procedure Tjumgum_f.grdMainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin


    halign := taCenter;
    case acol of
          15..18:
               begin
                    if arow > 0 then
                         halign := taRightJustify;
               end;
     end;
end;

procedure Tjumgum_f.grdMainGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin


   if (aRow > 0) and (trim(grdMain.cells[54, ARow]) <> '' )  then
   begin

      if grdMain.ints[54, ARow] = 0  then
        ABrush.Color := clWhite   //심사전
      else if grdMain.ints[54, ARow] = 4  then
        ABrush.Color := $00FFFF80   //보완
      else if grdMain.ints[54, ARow] = 5  then
        ABrush.Color := clPurple   //누락
       else if grdMain.ints[54, ARow] = 1  then
        ABrush.Color := clYellow   //심사완료
         else if grdMain.ints[54, ARow] = 3  then
           ABrush.Color := clGreen;   //심사제외
   end;
   if aCol = 0 then
       ABrush.Color := $00FB9B60;

end;

procedure Tjumgum_f.grdMainRowChanging(Sender: TObject; OldRow, NewRow: Integer;
  var Allow: Boolean);
  var
  sanTeakCode : string;
begin
       if NewRow > 0 then
       begin
            FillJinryoData(NewRow);

//               //진료내역불러오기
//               setJinryo_s(
//                   grdMain.Cells[51, NewRow],//jubsu_id
//                   grdJX2,
//                   grdMain.Cells[2, NewRow],
//                   '', //team
//                   '', //Doc_code
//                   grdMain.Cells[50, NewRow], //ToDo : 외래 입원 하자.
//                   grdMain.Cells[4, NewRow],
//                   '',
//                   1);
//               setJinryo_o(grdSangbyung,
//                   grdMain.Cells[2, NewRow],
//                   '',  //team
//                   '0', //isInPat
//                   grdMain.Cells[51, NewRow],
//                   sanTeakCode,
//                   grdMain.Cells[4, NewRow],
//                    '');
       end;

end;

procedure Tjumgum_f.Button9Click(Sender: TObject);
begin
        if openDialog1.Execute then
      AdvStringGrid1.LoadFromXLS(openDialog1.FileName);


end;

procedure Tjumgum_f.Button10Click(Sender: TObject);
var
    i : integer;
    j : integer;
begin
       for i:= 2 to  AdvStringGrid1.rowcount do
       begin

              j:=  AdvStringGrid1.ints[0, i] ;
              grdMain.AddCheckBox(1, j, true, true);
              grdMain.cells[45, j] :=   AdvStringGrid1.cells[0, i] ;
       end;
end;

procedure Tjumgum_f.Button11Click(Sender: TObject);
begin
//       AdvPanel6.Visible := false;
end;

procedure Tjumgum_f.Button12Click(Sender: TObject);
begin
     savedialog1.fileName :=
      '청구 내역'  +
       cbYear.text +
       cbMonth.text +
       cbDay1.Text +
       cbDay2.Text +'_'+
       formatDatetime('yyyymmddhhnnsszzz', now)+'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio2.XLSExport(savedialog1.filename);
     end;

end;


procedure Tjumgum_f.LoadDefaultValue;
var
  varcode: string;
  team_key: string;
begin

  with Dm_f.sqlwork do
  begin

    varcode := '002'; // 종별
    cbJong.Items.Clear;
    close;
    SQL.Clear;
    SQL.Add('select * from ma_basic');
    SQL.Add(' where Code like :Code and Code<> :code2');
    SQL.Add('order by Code');
    paramByName('Code').asString := varcode + '%';
    paramByName('Code2').asString := varcode + '000';
    open;
    First;
    while not eof do
    begin
      cbJong.Items.Add(fieldByname('disp').asString);
      next;
    end;

 end;

end;



procedure Tjumgum_f.FormCreate(Sender: TObject);
begin
      pnlTop1.Align := alClient;
      memChungGuMemo.Lines.Clear;


        initPanel(pnlTerm);
        initPanel(pnlTerm2);

        initAdvPanel( pnlSummary , dm_f.PictureContainer1);
        initAdvPanel( pnlMain , dm_f.PictureContainer1);
        initAdvPanel( pnlModSuga , dm_f.PictureContainer1);
        initAdvPanel( pnlSummary2 , dm_f.PictureContainer1);
        initAdvPanel( pnlDoctorsNote , dm_f.PictureContainer1);
        initAdvPanel( pnlChungMemo , dm_f.PictureContainer1);
        initAdvPanel( pnlTx , dm_f.PictureContainer1);
        initAdvPanel( pnlTeakJung , dm_f.PictureContainer1);
        initAdvPanel( pnlSangByung , dm_f.PictureContainer1);
        initAdvPanel( pnlErrorLog , dm_f.PictureContainer1);
        initAdvPanel( pnlButton , dm_f.PictureContainer1);
        initAdvPanel( pnlPrice , dm_f.PictureContainer1);
        initAdvPanel( pnlHospInfo , dm_f.PictureContainer1);


        initAdvGrid(grdsummary);
        initAdvGrid(grdMain);
        initAdvGrid(grdReport);
        initAdvGrid(grdCost);
        initAdvGrid(grdjx2);
        initAdvGrid(grdNeyuk);
        initAdvGrid(grdSangByung);

      pgInfo.ActivePageIndex :=0;
      //pgReport.ActivePageIndex :=0;
      grdMain.rowcount:= 1;
      grdReport.rowcount:= 1;
      lblStat.Align := alClient;

      edtGroupOrderValue.text := '';
      edtSearchSuga.text := '';
      edtSearchDrug.text := '';
      edtFindGroupCode.text := '';
      dtDate.Date := now;

      pgFavorite.activepage := TabSheet1;

      LoadDefaultValue;

      lblStat.caption:= '①청구 기간 선택 하고,'+#10
                       +'②청구 종류 선택 후'+#10
                       +'③[조회/점검] 버튼 클릭하세요.';

      CreateTable_chungGu;

         if trim(configvalue.varYoyang) =  '' then
         begin
              pnlJuminCheck.Visible := true;
              pnlJuminCheck.align   := alClient;
              lblJuminCheck.align   := alClient;
              lblJuminCheck.Caption := '요양기관기호를'+#10+ '환경설정에서 입력하세요.';

         end;

         if trim(configvalue.varChungname) =  '' then
         begin
              pnlJuminCheck.Visible := true;
              pnlJuminCheck.align   := alClient;
              lblJuminCheck.align   := alClient;
              lblJuminCheck.Caption := '청구 작성자(원장) 성명을'+#10+ '환경설정에서 입력하세요.';

         end;


         //주민번호가 정확한지 확인하여 정확하지 않은 경우 왼쪽 위 lblJuminCheck에 뿌려주자,


         if chkJumin(configvalue.varChungJumin) = false then
         begin
              pnlJuminCheck.Visible := true;
              pnlJuminCheck.align   := alClient;
              lblJuminCheck.align   := alClient;
              lblJuminCheck.Caption := configvalue.varChungname +'님의'+#10+ '주민번호를 환경설정에서 입력하세요.';
         end;

      AlterTable;
end;




function Tjumgum_f.jongbyulToInt(jongbyul:string) : integer;
var
    i, jong : integer;
begin
    result:= 0;
    for i:= 0 to 11 do
    begin
        if jongKind[i] =   jongbyul then// grdMain.Cells[6, aRow]   then
        begin
            result := i;
            break;
        end;
    end;
end;
procedure Tjumgum_f.grdMainClickCell(Sender: TObject; ARow, ACol: Integer);
begin

    fillJinryoData(ARow);

end;

procedure Tjumgum_f.LoadCC(chart:string);//; treatRoom:string;
     //  doc_code:string; jin_day: string; isInPat:string);
var
  Temp: string;
  varLength: Integer;
  varRichText: TRichEdit;
  dap: array [1 .. 100] of string;
  varRgTag: Integer;
  BStream: TStream;
  i: Integer;
  varChart: string;
  tempText: string;
  ccDate : string;
begin

  varChart := chart; // ma_chart;
  edtCC.lines.Clear;

  edtCC.Text:='';
  lblTreatRoom.Caption:= '';


  memDrsNote.text := '';
  memDrsNote.Lines.Clear;
//  ccDate := tcCCDate.Tabs.Strings[tcCCDate.TabIndex];

  lblPiDate.Caption := jin_day; // tcCCDate.Tabs.Strings[tcCCDate.TabIndex];
  with Dm_f.SqlTemp13 do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select * from hxCC');
    SQL.Add('Where  CCchart= :CCChart ');


//      SQL.Add('Where ccDate=:ccDate and CCchart= :CCChart ');
//      sql.Add('and ccTeam= :ccTeam ');
//      sql.Add('and doc_code=:doc_Code ');
//      sql.Add('and isInPat=:isInpat');
      SQL.Add('order by ccDate desc');
//      paramByName('ccDate').asString   := FormatDateTime('YYYY-MM-DD', dtDate.Date);
//      paramByName('ccTeam').asString   := treatRoom;
//      paramByName('doc_code').asString := doc_code;
      paramByName('CCChart').asString  := Chart;
//      paramByName('isInPat').AsString  := isInPat;

    open;
    if not isEmpty then
    begin

     while not eof do
     begin


      BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
      edtCC.lines.loadfromStream(BStream)  ;
      BStream.Free;

      //memDrsNote.Lines.add( edtCC.Lines.Text) ;
      //'RichEdit line insertion error' 라는 에러는, 리치에디트에 문자열을 집어넣었는데 결과를 보니 제대로 안들어갔을 경우 발생합니다.
      //내용중에 ¶가 들어가있으면 richedit insertion error라는 메세지가 뜨네요...
      //¶라고 말씀하신 것은 라인피드(\n)였던가 캐리지리턴(\r)이던가 그렇습니다.
      //AdjustLineBreaks함수는 문자열 내에 포함된 \n을 \r\n으로 바꾸어줍니다.

      memDrsNote.lines.add(AdjustLineBreaks(fieldByname('ccDate').asString))  ;
      memDrsNote.lines.add(AdjustLineBreaks(fieldByname('ccMemo').asString)) ;
      lblTreatRoom.Caption :=  FieldByName('CCTeam').asString ;

      next;
     end;

    end
    else
    begin

      lblTreatRoom.Caption :=  '';
      memDrsNote.clear;
//      if configvalue.varDoctorsNoteAutoInput = '1' then
//      begin
//
//          edtCC.text := 'Subjective : ' + #10 + 'Objective : ' + #10 +
//            'Assessment : ' + #10 + 'Plan : '  ;
//
//          memDrsNote.lines.Add(  'Subjective : ');
//          memDrsNote.lines.Add(  'Objective : ');
//          memDrsNote.lines.Add(  'Assessment : ');
//          memDrsNote.lines.Add(  'Plan : ');
//      end;

    end;
  end;
  edtCC.SelStart := 0;
  memDrsNote.SelStart := 0;
  // edtCC.SetFocus;
end;




procedure Tjumgum_f.fillJinryoData(aRow: integer;isView : boolean = true);
var
    i, jong : integer;
    nChoJae: Integer;
    nAge: Integer;
    dWorkDate: TDateTime;
    jange: boolean;
    yongua: boolean;
    ilban: boolean;
    ifirst: boolean;
    jinilsu: string;
    nDanga : integer;

    ChubangNo : string;
    varIlyun : integer;

  sanTeakCode : string;
  juSangRow   : integer;
  neyuk : string;
begin
          {SetJinryo_s(aGrid:TadvStringGrid; sChart,
                sTeam: string;  isInPat:string;
                sJin_day:string=''; sJin_day2:string='');

           SetJinryo_O(aGrid:TadvStringGrid; sChart,
                sTeam: string;  isInPat:string;
                sJin_day:string=''; sJin_day2:string='');                     }

       if aRow > 0 then
       begin



                  i:=   ARow;//grdMain.Row;

                  varIlyun := i;

                  nChoJae := grdMain.ints[31, i];
                  nAge        := grdMain.ints[7, i];

                  cbJong.ItemIndex := cbJong.Items.IndexOf( grdMain.cells[6, i]);

                  lblAge.Caption :=   grdMain.cells[7, i];


                  dWorkDate   := strtodate(grdMain.cells[4, i]);

                  dtDate.Date := dWorkDate;

                  jin_day     := grdMain.cells[4, i];
                  ma_Jubsu_Id := grdMain.cells[51, i];
                  doc_code    := grdMain.cells[52, i];;//cbDoc.ColumnItems[cbDoc.itemindex, 4]; //saID
                  treatRoom   := grdMain.cells[53, i];;//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0]; //saTeam
                  varChartno  := grdMain.cells[2, i];



                  if grdMain.ints[12, i] = 1 then
                    jange := true
                  else
                    jange := false;

                  case grdMain.ints[28, i] of
                    1:
                      yongUa := true;
                    2:
                      ilban := true;
                    3:
                      ifirst := true;
                  else
                    begin
                      yongua := false;
                      ilban := false;
                      ifirst := false;
                    end;
                  end;

         //Dr's Note  가져오기

             LoadCC(grdMain.cells[2, i]);

         //----------------------------------------------------------------------------------
         //특정내역 넣기 Start
                memChungGuMemo.Lines.Clear;
//                memChungGuMemo.text :=
//                     StringReplace(grdMain.Cells[23, i], #13#10, '', [rfReplaceAll]);

                grdMain.CellToRich(23, i, memChungGuMemo );



             //   memChungGuMemo.Lines.Add(grdMain.cells[23, i]);
            //   memChungGuMemo.Lines.Add(AdjustLineBreaks(grdMain.StrippedCells[23, i]));

   //    memDrsNote.lines.add(AdjustLineBreaks(fieldByname('ccDate').asString))  ;
   //   memDrsNote.lines.add(AdjustLineBreaks(fieldByname('ccMemo').asString)) ;


                grdNeyuk.RemoveRows(1, grdNeyuk.RowCount - 1); // 1. 특정내역을 모두 지우고...



//                  if varIlyun = 1 then
//                  begin
//
//                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT008',   wonjangJinryoIlsu  )  ;
//                    // MT008주민번호(첫6자리)/진료(조제)일수     //641117/22/820207/22/810804/22
//                  end;

                  if trim(grdMain.cells[19, i]) <> '' then // 상해외인
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT001', grdMain.cells[19, i]);


                  if trim(grdMain.cells[27, i]) <> '' then // 급여환자 진료확인번호 13자리
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT019', grdMain.cells[27, i]);


                  if trim(grdMain.cells[26, i]) <> '' then // 급여환자 본인부담 구분
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT018', grdMain.cells[26, i]);

                  if trim(grdMain.cells[14, i]) <> '' then
                  begin
                    ChubangNo := formatDatetime('YYYYMMDD', strtodate(grdMain.cells[4, i])) +
                      formatFloat('00000', grdMain.ints[14, i]);

                    if trim(grdMain.cells[35, i]) <> '' then // 원외투약특정내역구분
                      BufferNeyuk(grdNeyuk, '4', ChubangNo, '', grdMain.cells[35, i],
                        grdMain.cells[36, i]);
                  end;

              if (trim(grdMain.cells[37, i]) <> '') and    // 진료특정내역
              (grdMain.cells[61, i] = '1')  then  //특례적용
                                      BufferNeyuk(grdNeyuk, '1', '', '', 'MT002',
                      trim( subStr( grdMain.cells[37, i], 1, '|') ) );

//                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', grdMain.cells[37, i]);

                 if  cbGubunIn.checked   then   //입원
                 begin
                     //입원시간 퇴원시간
                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS005',
                           grdMain.cells[59, i]
                           +'/'
                          + grdMain.cells[60, i]);  //입원시간 / 퇴원시간



                 end;


//                  if trim(grdMain.cells[23, i]) <> '' then // 심사참고사항
//                  begin
//                                                       //ToDO: CR LF제거 해야 줄바꿈이 안일어난다.
//                    BufferNeyuk(grdNeyuk, '1', '', '', 'MX999',  DeleteLineBreaks(grdMain.Cells[23, i]) );
//                  end;

                neyuk :='';
                grdMain.CellToRich(23, i,richedit1 );

                neyuk        :=  grdMain.RichToString(richedit1);  // copy(grdNeyuk.cells[5, i],0,699);
                neyuk        :=  richEdit1.text;//copy(neyuk,0,699);

                neyuk        :=  DeleteLineBreaks( copy( ansistring(neyuk),0,699) );


                //  if trim(grdMain.cells[23, i]) <> '' then // 심사참고사항
                 if trim( neyuk  ) <> '' then // 심사참고사항
                  begin
                                                       //ToDO: CR LF제거 해야 줄바꿈이 안일어난다.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MX999', neyuk);// DeleteLineBreaks(grdMain.Cells[23, i]) );
                  end;


                 if grdMain.cells[47, i] <> '0'   then // 임플란트 틀니 구분(isAI)시 일반진료(0)가 아닌경우
                 begin

                      if trim(grdMain.cells[43, i]) <> '' then // 임플란트등록번호 1
                      begin
                           BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[43, i]);
                      end;



                      if trim(grdMain.cells[44, i]) <> '' then // 임플란트등록번호 2
                      begin
                           BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[44, i]);
                      end;
                 end;


                      if (trim(grdMain.cells[20, i]) <> '') and  // 산정특례코드
                             (trim(grdMain.cells[61, i]) ='1') then   //산정특례적용
                      begin
                         //  BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[20, i]);
                          BufferNeyuk(grdNeyuk, '1', '', '', 'MT014',
                              trim(substr(grdMain.cells[20, i], 1, '|'))   );

                      end;


                  if grdMain.cells[49, i] ='1' then // 임산부
                  begin
                                                       //ToDO: CR LF제거 해야 줄바꿈이 안일어난다.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'F015');// DeleteLineBreaks(grdMain.Cells[49, i]) );
                  end;

                    //      cells[28, r] := fieldByName('gub_gu').AsString;
                    // 영유아검진당일 // gub_gu 영유아일반검진 영유아=1, 일반=2, 생애최초=3
//                  if (grdMain.cells[28, i] ='1') or // 영유아일반검진
//                   (grdMain.cells[28, i] ='2') or // 일반건강검진
//                   (grdMain.cells[28, i] ='3') // 생애최초
//                   then
//                  begin
//                                                       //ToDO: CR LF제거 해야 줄바꿈이 안일어난다.
//                    BufferNeyuk(grdNeyuk, '1', '', '', 'JT018',  DeleteLineBreaks(grdMain.Cells[28, i]) );
//                  end;


                  loadTjungHx( grdneyuk,
                        varChartNo, jin_day, ma_Jubsu_Id, 1); //기존내역 지우지말고 DB에서 불러오기


        //  특정내역 end
        //------------------------------------------------------------------------------------------



//               //ToDo : 진찰료 코드 넣기
                jinchalRyoCode :=
                      MakeJinchalRyoCode(
                      nChoJae,
                      nAge,
                      dWorkDate,
                      jange,
                      grdMain.ints[28, i]) ;
//                      yongua,
//                      ilban,
//                      ifirst);


                    grdJX2.RemoveRows(1, grdJX2.RowCount-1 );
//
//                    nDanga := getSugaGeum(jinchalRyoCode, // varCode:string;
//                       grdMain.cells[4, i],  // jinday:string;
//                       0); // kind:string);
//
//                    grdJX2.AddRow;
//
//                    grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '진찰료';
//
//                    grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode);
//                    grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
//                    grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
//                    grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
//                    grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
//                    grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
//                    grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//급여구분
//                    grdJX2.Cells[8, grdJX2.RowCount - 1]     := '';//FieldByName('Modality').AsString;
//                    grdJX2.Cells[9, grdJX2.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
//                    grdJX2.Cells[10, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu1').AsString;
//                    grdJX2.Cells[11, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
//                    grdJX2.Cells[12, grdJX2.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
//                    grdJX2.Cells[13, grdJX2.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
//                    grdJX2.Cells[14, grdJX2.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
//                    grdJX2.Cells[15, grdJX2.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
//                    grdJX2.Cells[17, grdJX2.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
//                    grdJX2.Cells[18, grdJX2.RowCount -1]     := '';//FieldByName('jins_key').AsString;
//                    grdJX2.Cells[19, grdJX2.RowCount - 1]    := jinchalRyoCode;
//                    grdJX2.Cells[20, grdJX2.RowCount - 1]    := getSugaName(jinchalRyoCode);//FieldByName('Su_kor_name').AsString;
//                    grdJX2.Cells[21, grdJX2.RowCount - 1]    := '';//FieldByName('gasan').AsString;
//                    grdJX2.Cells[22, grdJX2.RowCount - 1]    := grdMain.cells[4,  i];//FieldByName('jin_day').AsString;
//                    grdJX2.Cells[23, grdJX2.RowCount - 1]    := grdMain.cells[13, i];//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
//                    grdJX2.Cells[24, grdJX2.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
//                    grdJX2.Cells[25, grdJX2.RowCount - 1]    := '';//FieldByName('except_code').AsString;
//                    grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //금액 = 단가 * 수량* 일수
//
//
//
//
//                 // 토요가산코드 구하기
//                  jinchalRyoCode_gasan := '';
//                  if (DayOfWeek(dWorkDate) = 7) // 토요일만 계산
//                    and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 이후
//                    and (nChoJae <> 3) and (nChoJae <> 4) then // 초재가 심야가 아니면
//                  begin
//
//                    jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
//                      jange, yongua, ilban, ifirst, true);
//
//
//                     nDanga := getSugaGeum(jinchalRyoCode_gasan, // varCode:string;
//                       grdMain.cells[4, i],  // jinday:string;
//                       0); // kind:string);
//
//                    grdJX2.AddRow;
//
//                    grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '진찰료';
//
//                    grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode_gasan);
//                    grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
//                    grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
//                    grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
//                    grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
//                    grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
//                    grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//급여구분
//                    grdJX2.Cells[8, grdJX2.RowCount - 1]     := '';//FieldByName('Modality').AsString;
//                    grdJX2.Cells[9, grdJX2.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
//                    grdJX2.Cells[10, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu1').AsString;
//                    grdJX2.Cells[11, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
//                    grdJX2.Cells[12, grdJX2.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
//                    grdJX2.Cells[13, grdJX2.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
//                    grdJX2.Cells[14, grdJX2.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
//                    grdJX2.Cells[15, grdJX2.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
//                    grdJX2.Cells[17, grdJX2.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
//                    grdJX2.Cells[18, grdJX2.RowCount -1]     := '';//FieldByName('jins_key').AsString;
//                    grdJX2.Cells[19, grdJX2.RowCount - 1]    := jinchalRyoCode_gasan;
//                    grdJX2.Cells[20, grdJX2.RowCount - 1]    := getSugaName(jinchalRyoCode_gasan);//FieldByName('Su_kor_name').AsString;
//                    grdJX2.Cells[21, grdJX2.RowCount - 1]    := '';//FieldByName('gasan').AsString;
//                    grdJX2.Cells[22, grdJX2.RowCount - 1]    := grdMain.cells[4,  i];//FieldByName('jin_day').AsString;
//                    grdJX2.Cells[23, grdJX2.RowCount - 1]    := grdMain.cells[13, i];//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
//                    grdJX2.Cells[24, grdJX2.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
//                    grdJX2.Cells[25, grdJX2.RowCount - 1]    := '';//FieldByName('except_code').AsString;
//                    grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //금액 = 단가 * 수량* 일수
//
//                  end;
//



               //진료내역불러오기
               setJinryo_s(
                   grdMain.Cells[51, aRow],  //jubsu_id
                  grdJX2,        //aGrid
                 grdMain.Cells[2, aRow],  //sChart
                 '',                      //sTeam
                 '',
                 grdMain.Cells[50, aRow], //isInPat
                 grdMain.Cells[4, aRow],  //sJin_day
                 '',                      //sJin_day2
                 1  );                   //isChungGu


               setJinryo_o(grdSangbyung,   //aGrid
                  grdMain.Cells[2, aRow],  //sChart
                  '',                      //sTeam
                  grdMain.Cells[50, aRow], //isInPat
                    grdMain.Cells[51, aRow],
                  sanTeakCode,
                  juSangRow,              //주상병 Row
                  grdMain.Cells[4, aRow],  //sJin_day
                  '');                     //sJin_day2



        if isView=true then
        begin

              WriteMyungSeSeo_jinryo(false,
                  'C',
                  grdMain.cells[2, aRow],
                  grdMain.cells[4, aRow],
                  varIlyun,
                  grdMain.ints[31, aRow],    //초재코드
                  grdMain.ints[32, aRow],  //종별코드
                   '16',
                  grdMain.ints[7, aRow],          //나이
                  grdMain.cells[51, aRow],    //jubsu_id
                  grdMain.cells[50, aRow],    //isInpat
                  grdMain.cells[38, aRow],   //의사명
                  grdMain.cells[39, aRow],  //면허번호
                  false, false, '');  // 진료내역

        end;

//               if useWonNaeTuYak = true then
//                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS002', inttostr(iChongTu));
//                    // 원내투약일수(주사제)



                lblchart.caption  :=  grdMain.cells[2, ARow];
                lbljinday.caption :=  grdMain.cells[4, ARow];


                lblMyungSeSeoNo.Caption :=  '명세서번호 :'  + grdMain.cells[45, i];
                lblName.Caption         :=  '성명       :'  + grdMain.cells[3, i];
                lblKiho.Caption         :=  '사업장번호 :'  + grdMain.cells[11, i];
                lblKNumber.Caption      :=  '증번호     :'  + grdMain.cells[10, i];


                //ToDo : 주상병  Row를 찾아라.
                lblSangName.Caption     :=  '주상병     :'  + grdSangbyung.cells[6, juSangRow]
                                                             +'['+
                                                            grdSangbyung.cells[10, juSangRow]+']';






                //ToDO : grdCost 에 모든것을 집어넣자.
                CalcSum(grdJx2,
                   grdCost,
                   grdMain.Cells[2, aRow],
                   configvalue.varGubun,
                   grdMain.Cells[4, aRow], //   FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
                   0,
                   grdMain.Cells[7, aRow],  //nai
                   grdMain.Cells[50, aRow], //isInPat
                   false,
                   grdMain.Cells[36, aRow],  // 의약분업예외
                   true);



       end;
end;

procedure Tjumgum_f.Button13Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin


      strProgram := 'C:\hira\DDMD\bin\'+ 'config.exe';
      ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
          nil, SW_SHOW);

end;
procedure Tjumgum_f.Button14Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin


      strProgram := 'C:\hira\DDMD\bin\'+ 'log.exe';
      ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
          nil, SW_SHOW);

end;

procedure Tjumgum_f.Button15Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin


      strProgram := 'C:\hira\DDMD\bin\'+ 'ntcgenui.exe';
      ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
          nil, SW_SHOW);

end;
procedure Tjumgum_f.Button16Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin


      strProgram := 'C:\hira\DDMD\bin\'+ 'ntcrcvui.exe';
      ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
          nil, SW_SHOW);

end;

procedure Tjumgum_f.Button18Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin

      strProgram := 'C:\hira\DDMD\bin\'+ 'rcvchk.exe';
      strName1:= edtYoyangKiho.text;
      ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
          nil, SW_SHOW);

end;

procedure Tjumgum_f.btnSaveClick(Sender: TObject);
var
  i: Integer;
  sPortion, sSang, sTx: string;
  LockStatResult : TLockStatResult;
  sanTeakCode : string;
//  jin_day: string;
  CertLoadDay:string;
  isInPat : string;


begin
//      doc_code  := '';//cbDoc.ColumnItems[cbDoc.itemindex, 4]; //saID
//      treatRoom := '';//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0]; //saTeam

//      SaveCC(
//            memo1,
//           ma_jubsu_id,
//           ma_Chart,
//           treatRoom,
//           doc_code,
//           jin_day,//FormatDateTime('YYYY-MM-DD', dmain.Date),
//           '0');//inttostr(cbIo.ItemIndex));

    try
          jin_day     :=   grdMain.cells[ 4,  grdMain.Row];
          ma_jubsu_id :=   grdMain.cells[ 51,  grdMain.Row];
          varChartno  :=   grdMain.cells[ 2,  grdMain.Row];
          treatRoom   :=   grdMain.cells[ 53,  grdMain.Row];
          doc_code    :=   grdMain.cells[ 52,  grdMain.Row];
          isInPat     :=   grdMain.cells[ 50,  grdMain.Row];
          // Jinryo_s  , Jinryo_o
          insertjin_s(
            ma_jubsu_id,
            strtoDate(jin_day),//dmain.Date,
            varChartno,
            treatRoom,   // cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0],
            doc_code, // cbDoc.ColumnItems[cbDoc.itemindex, 0],
            isInPat,//inttostr(cbIo.ItemIndex) , //0: 외래 1: 낮 2: 숙박 입원
            grdJx2
            ); // 1. 진료내역 저장   2. RIS저장 3. 옵티멈저장 BIT서버   121.166.70.201,51983  sa / bit



     //   grdMain.cells[23, grdMain.Row]  := memChungGumemo.Text;

         grdMain.RichToCell(23,grdMain.Row, memChungGumemo );


       showmessage('저장되었습니다.');
    except

    end;
end;

procedure Tjumgum_f.rgChungGubunClick(Sender: TObject);
begin
     case rgChungGubun.ItemIndex  of

          1,2 :
          begin
             pnlBowan.Visible := true;
             AdvPanel6.Visible := true;
          end;
          else
              pnlBowan.Visible :=false;

      end;
end;

procedure Tjumgum_f.rgKindClick(Sender: TObject);
begin
        case rgKind.itemindex of
             0:  groupBox10.visible:= false ;
             1:  groupBox10.visible:= true ;
        end;
end;

procedure Tjumgum_f.cbCheckSendClick(Sender: TObject);
begin



    if cbCheckSend.Checked = true then
    begin
       cbPreExam.Checked := false;
       btnSend.caption:='점검 후 즉시 송신' ;
    end
    else
    begin
        btnSend.caption:='송신';
    end;    

end;

procedure Tjumgum_f.pgInfoChange(Sender: TObject);
begin
     case pginfo.ActivePageIndex of
         0:
         begin
         end;
         1:
         begin
             btnChungGuDataCreate.Enabled := true;
         end;
     end;
end;


procedure Tjumgum_f.SetCheckArray;
begin
     setLength(checkArray, 4);
     checkArray[0] := cb1;
     checkArray[1] := cb2;
     checkArray[2] := cb3;
     checkArray[3] := cb4;

      checkArray[0].Tag := 1;
      checkArray[1].Tag := 2;
      checkArray[2].Tag := 4;
      checkArray[3].Tag := 8;

end;


procedure Tjumgum_f.Button6Click(Sender: TObject);
begin
     with Dm_f.sqlRegi do
     begin
       try
          close;
          SQL.Clear;
          SQL.Add('Update Jinryo_p Set');
          SQL.Add('  k_number=:k_number, piboname=:piboname, kiho=:kiho ');
          Sql.Add('Where chart=:chart and jin_day=:jin_day');

          ParamByName('chart').AsString    :=  lblChart.caption;
          ParamByName('jin_day').AsString  :=  lblJinday.caption;
          ParamByName('k_number').AsString :=  edtJungNo2.text; //k_number;
          ParamByName('piboname').AsString :=  edtgaip2.Text;// piboname;
          ParamByName('kiho').AsString     :=  edtGiho2.Text;//kiho;
          execsql;

           grdMain.cells[10, grdMain.Row]:=  edtJungNo2.Text ;
           grdMain.cells[9, grdMain.Row] :=  edtgaip2.Text   ;
           grdMain.cells[11, grdMain.Row]:=  edtGiho2.Text   ;

           showmessage('저장되었습니다.');
           pnlJagyuk.visible:=false;
       except
             showmessage('다시 저장하세요.');
       end;
     end;
end;




// 본인부담계산 ...............................................................

//function Tjumgum_f.CalcBonin(hkind:string;  // 병원, 의원, 종합병원
//                       varChong : double;
//                       boolWonwe: Boolean;
//                       varDate : string;  //YYYY-MM-DD
//                       varTime : string;  //hh:mm:ss
//                       varChojae : integer;
//                       varJongbeul : integer;
//                       varAge : integer;
//                       isSat:boolean;   //토요일여부 - 토요가산적용
//                       varbonDamCode:string;  //보험 본인부담코드
//                       varBonjun : string;
//                       varCT : integer; //CT금액
//                       varDenture : integer;  //틀니 금액
//                       artTeeth : boolean = false;       //틀니여부
//                       AfterArtTeeth : boolean = false;  //틀니수리여부
//                       implTeeth: boolean = false;       //임플란트여부
//                       anotherTeeth : boolean = false;   //다른 치료 여부
//                       nBoMan :integer=0; //의약품관리료
//                       varGongsang : boolean = false; //공상여부
//                       varjange : boolean = false; //장애여부
//                       varYongua: boolean = false; //영유아구분
//                       varGumjin: boolean = false; //건강검진
//                       varfirst: boolean  = false; //생애전환기검진
//                       varRestrict:boolean = false; //급여제한자여부
//                        varPregnan: boolean= false) //임신부
//                       : double;
//var
//     HandoAk: Integer;
//     BoninGu: Integer; //2007.7.1
//     jindate: string;
////     SatGasangeum:integer;
////     SatGasangeum2:integer;  //토요가산 청구금 50% , 0
//     varJinchalRyo,
//
//
//     varJangeGeum : integer;
//
//     varChong1 : double; //varChong + varJinchalRyo
//     varChung  : integer;
//begin
//
//     result:= 0;
//
//
//
//
//     calcSatGasanGeum(hkind , varDate, varTime, varChojae, varAge, isSat);
//
//     //원외처방전 있으면    원외처방전 없으면
//     if boolWonwe then
//          HandoAk := 15000
//     else
//          handoak := 17000;
//
//
//     if (varDate > '2007-07-31') then //2007.8.1
//          HandoAk := 15000;
//
//     BoninGu := 0;
//
//     if (varDate > '2007-06-30') then
//     begin
//
//          // 자보,산재 본인 부담 면제 처리 --------------
//           if (varJongbeul = 7) or (varJongbeul = 8) then
//           begin
//               BoninGu := 1;  //본인부담 면제
//           end
//           else
//
//
//          // 급여제한자 전액 본인 부담 처리 --------------
//           if (varJongbeul = 1) and (varRestrict  = true) then
//           begin
//               if (varDate >= '2014-07-01') then  //  자격제한 실행일 추가
//                  BoninGu := 2;  //전액 본인 부담
//           end
//           else
//           //----------------------------------------------------------
//
//
//
//       {   if (varBondamCode = 'M001') or (varBondamCode = 'M002') then
//          begin
//
//               if (configvalue.varYoyang = varSunkiho1) or
//                    (configvalue.varYoyang = varSunkiho2) then
//               begin
//                    BoninGu := 1;
//               end;
//          end;
//        }
//
//          if (varBondamCode = 'M003') or (varBondamCode = 'M004') or
//               (varBondamCode = 'M005') or (varBondamCode = 'M006') or
//               (varBondamCode = 'M007') or (varBondamCode = 'M008') or
//               (varBondamCode = 'M009') or (varBondamCode = 'M010') or
//               (varBondamCode = 'M011')  or
//                (varBondamCode = 'M015') or (varBondamCode = 'M016') then// 중증질환자 1종 추가
//          begin
//               BoninGu := 1;
//          end;
//
//          if (varBondamCode  = 'XXXX') or (varBonjun = '2') then
//          begin
//               BoninGu := 2;
//          end;
//
//     end;
//
//     //진찰료
//    // 2012.7.1 틀니만 했을땐 진찰료 산정안함
//
//
//     //  varjange2:= 0;
//     //  varyongua2:= 0;
//     //  varGumjin2:= 0;
//     //  varfirst2 := 0;
//
//
//  //     if varjange = true then
//  //     varjange2 := 1;
//  //
//  //    if  varyongua =true then
//  //     varyongua2 := 1;
//  //
//  //    if  varGumjin = true then
//  //     varGumjin2 := 1;
//  //
//  //     if varfirst = true then
//  //       varfirst2  := 1;
//
//
//
//    if varChojae = 13 then
//    begin
//         varJinchalRyo := 0;
//    end
//    else
//         if (anotherTeeth = False) and ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = True))  then
//         begin
//              varJinchalRyo := 0;
//         end //*****
//         else
//              if varChojae = 6 then //초진+심야재진
//              begin
//                   jinchalRyoCode := MakeJinchalRyoCode(varChoJae, varAge, strtodate(varDate), varjange,
//                                varyongua, varGumjin, varfirst);
//
//                   varJinchalRyo :=    GetJinchalRyo( jinchalRyoCode, varDate); //진찰료
//
//
//              end
//              else
//                   if varChojae = 7 then //재진+심야재진
//                   begin
//                        varJinchalRyo := GetJinchalRyo( jinchalRyoCode, varDate);
//                   end
//                   else
//                        if varChojae = 9 then //초진+재진
//                        begin
//                             varJinchalRyo := GetJinchalRyo( jinchalRyoCode, varDate);
//                        end
//                        else
//                             if varChojae = 10 then //재진2회
//                             begin
//                                  varJinchalRyo := GetJinchalRyo( jinchalRyoCode, varDate);
//                            end
//                         else
//                         if varChojae = 11 then //재진50%
//                         begin
//                                varJinchalRyo := GetJinchalRyo( jinchalRyoCode, varDate) div 2;// + GetJinchalRyo(2,  varAge, varDate);
//                         end
//                             else
//                                  if varChojae = 8 then //수납만함
//                                  begin
//                                       varJinchalRyo := 0;
//                                  end
//                                  else
//                                  begin
//
//                                       varJinchalRyo :=  GetJinchalRyo( jinchalRyoCode, varDate);
//                                  end;
//
//
//
//
//     //급여총진료비:= 진찰료뺀 총진료비 +진찰료
//     varChong1 :=
//          JulSa(varChong
//          + varJinchalRyo
//          + SatGasanGeum , 1) ;
//
//
//
//     // 보험본인부담액 계산
//     if hkind = '병원' then
//     begin // 치과병원
//
//          varJangeGeum := 0;
//          //2007.8.1
//          if BoninGu = 2 then
//          begin //보호1종 의뢰서없는경우 전액본인
//               result :=  varChong;
//          end
//          else
//               if (varDate > '2009-06-30')
//                   and (varJongbeul = 1)
//                    and (varAge < 6) then
//               begin
//                    result := 100 *  Floor((varChong * 0.28) / 100); //6세미만 28%
//               end
//               else
//                    if (varDate > '2007-07-31') and (varJongbeul = 1)
//                         and (varAge < 6) then
//                    begin
//                         result := 10 *  Floor((varChong * 0.28) / 10); //6세미만 28%
//                    end
//                    else
//                         if (varDate > '2009-06-30') and (varJongbeul = 1) then //보험
//                         begin
//
//                         //2012.7.1  틀니 보험은 50% 본인부담
//                              if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                              begin
//                                //   result :=
//                                //        1500
//                                //         + 100 * Floor((varDenture * 0.5) / 100);
//
//
//                                  if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                  begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                       result :=
//                                                1500 +
//                                                100 * Floor((varDenture * 0.3) / 100);
//                                  end
//                                  else
//                                  begin
//                                     //  result :=
//                                     //           1500 +
//                                     //           100 * Floor((varDenture * 0.5) / 100);
//
//
//                                       //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                      if    (vardate >= '2018-07-01') then
//                                      begin
//                                      result :=
//                                                1500 +
//                                                100 * Floor((varDenture * 0.3) / 100);
//
//
//                                      end
//                                      else
//                                      begin
//                                      result :=
//                                                1500 +
//                                                100 * Floor((varDenture * 0.5) / 100);
//
//                                      end;
//
//
//
//                                  end;
//
//
//
//
//
//
//
//                              end
//                              else
//                                   if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true) ) then
//                                   begin
//                                      //  result :=
//                                      //       100 * Floor((varDenture * 0.5) / 100);
//
//
//
//                                        if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                        begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                            result :=
//                                                      100 * Floor((varDenture * 0.3) / 100);
//                                        end
//                                        else
//                                        begin
//                                          //   result :=
//                                          //            100 * Floor((varDenture * 0.5) / 100);
//
//                                             //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                            if    (vardate >= '2018-07-01') then
//                                            begin
//                                                    result :=
//                                                      100 * Floor((varDenture * 0.3) / 100);
//
//
//                                            end
//                                            else
//                                            begin
//                                                    result :=
//                                                      100 * Floor((varDenture * 0.5) / 100);
//
//
//                                            end;
//
//
//
//                                        end;
//
//
//
//
//
//
//
//
//                                   end
//                                     else
//                                         if varPregnan = true then
//                                               //임신부 본인부담금
//                                              result := 100 *  Floor((varChong * 0.2) / 100)
//                                           else
//                                            {
//                                            10세인 박모군은 치과에서 충치 예방을 위해 어금니 2개에 치아 홈 메우기 시술을 받았다.
//                                            진료비용은 7만180원이 나왔다. 박군의 아버지는 이 가운데 30%인 2만1050원을 진료비로 냈다.
//                                            이번 대책이 적용되면 전체 진찰료의 30%, 치아 홈 메우기 비용의 10%인 9710원만 내면 된다.
//                                            18세 이하면 치아 홈 메우기 시술에 건강보험이 적용되는데 본인부담률이 10%로 완화돼 1만1340원(54%) 줄어든다.
//                                            }
//                                           //18세이하 실란트 적용 2017-10-01 이후
//                                           if  (Realgrid14.ints[2, 5] > 0 )
//                                                    and (varDate >= '2017-10-01') then // 실란트 뺀  종별가산 전 행위 + 재료비
//                                            begin
//
//                                                result :=  //보험 본인부담금
//                                                  ( 100 *  Floor(
//                                                  (( varJinchalRyo  +  Realgrid14.ints[2, 4]) * 0.4    //진찰료 + 실란트 아닌것 30%
//                                                  + ( Realgrid14.ints[2, 6] * 0.1)) / 100)); //실란트 10%
//                                                                         //실런트 종별가산 금액
//                                            end
//
//
//                                    else
//                                        result := 100 *  Floor((varChong * 0.4) / 100);
//
//                         end
//                         else
//                              if varJongbeul = 1 then //보험
//                              begin
//                                   result := 10 * Floor((varChong * 0.4) / 10);
//                              end
//                              else
//                                   if (varJongbeul = 9) then //치과병원 차상위 1종
//                                   begin
//                                  //      result := 0;
//                                            if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                            begin
//
//                                                if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                      result :=
//                                                          100 * Floor((varDenture * 0.05) / 100);
//                                                end
//                                                else
//                                                begin
//
//                                                //     result :=
//                                                //          100 * Floor((varDenture * 0.2) / 100);
//
//
//                                                       //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                      if    (vardate >= '2018-07-01') then
//                                                      begin
//                                                             result :=
//                                                          100 * Floor((varDenture * 0.10) / 100);
//
//                                                      end
//                                                      else
//                                                      begin
//                                                         result :=
//                                                               100 * Floor((varDenture * 0.2) / 100);
//                                                      end;
//
//
//
//                                                end;
//
//                                            end
//                                            else
//                                            begin
//                                                result := 0; //본인부담 0
//                                            end;
//
//
//
//
//                                   end
//                                   else
//                                        if (varJongbeul = 10) and (varDate > '2009-06-30') then //차상위2종
//                                        begin
//                                             result := 100 * Floor((varChong * 0.14) / 100);
//                                        end
//                                        else
//                                            //치과병원 차상위 2종
//                                           if (varJongbeul = 10) and (vardate > '2009-03-31') then {//차상위2종}
//                                                  begin
//                                                      // result := 0;
//                                                      // varJangeGeum := 100 * Floor((varChong * 0.14) / 100);
//
//                                                   //원외처방전 발행 유무에 따라 (처방전 없으면1500/있을땐 1000원만)
//                                                   //2012.7.1  틀니 차상위2종은 30% 본인부담
//                                                   if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                                   begin
//                                                        if boolWonwe then
//                                                        begin
//
//                                                          if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                          begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                 result :=
//                                                                  100 * Floor((varDenture * 0.15) / 100) +
//                                                                  1000 + (10 *
//                                                                  Floor(Round2(varCT * Round2(14 / 100,
//                                                                  -2), 0)
//                                                                  / 10));
//                                                          end
//                                                          else
//                                                          begin
//
//
//                                                            // result :=
//                                                            //      100 * Floor((varDenture * 0.3) / 100) +
//                                                            //      1000 + (10 *
//                                                           //       Floor(Round2(varCT * Round2(14 / 100,
//                                                            //      -2), 0)
//                                                            //      / 10));
//
//                                                              //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                              if    (vardate >= '2018-07-01') then
//                                                              begin
//                                                                    result :=
//                                                                              100 * Floor((varDenture * 0.2) / 100) +
//                                                                              1000 + (10 *
//                                                                              Floor(Round2(varCT * Round2(14 / 100,
//                                                                              -2), 0)
//                                                                              / 10));
//
//
//                                                              end
//                                                              else
//                                                              begin
//                                                                      result:=
//                                                                              100 * Floor((varDenture * 0.3) / 100) +
//                                                                              1000 + (10 *
//                                                                              Floor(Round2(varCT * Round2(14 / 100,
//                                                                              -2), 0)
//                                                                              / 10));
//                                                               end;
//
//
//
//                                                          end;
//                                                        end
//                                                        else
//                                                        begin
//
//                                                              if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                              begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                     result :=
//                                                                      100 * Floor((varDenture * 0.15) / 100) +
//                                                                      1500 + (10 *
//                                                                      Floor(Round2(varCT * Round2(14 / 100,
//                                                                      -2), 0)
//                                                                      / 10));
//                                                              end
//                                                              else
//                                                              begin
//
//                                                               //  result :=
//                                                               //       100 * Floor((varDenture * 0.3) / 100) +
//                                                               //       1500 + (10 *
//                                                               //       Floor(Round2(varCT * Round2(14 / 100,
//                                                               //       -2), 0)
//                                                               //       / 10));
//
//                                                          //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                if    (vardate >= '2018-07-01') then
//                                                                begin
//                                                                        result :=
//                                                                    100 * Floor((varDenture * 0.20) / 100) +
//                                                                    1500 + (10 *
//                                                                    Floor(Round2(varCT * Round2(14 / 100,
//                                                                    -2), 0)
//                                                                    / 10));
//                                                                end
//                                                                else
//                                                                begin
//                                                                       result :=
//                                                                                100 * Floor((varDenture * 0.3) / 100) +
//                                                                                1500 + (10 *
//                                                                                Floor(Round2(varCT * Round2(14 / 100,
//                                                                                -2), 0)
//                                                                                / 10));
//                                                                 end;
//
//
//
//                                                              end;
//                                                        end;
//                                                        if (nBoMan = 0) then
//                                                        begin
//                                                              if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                              begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                     result :=
//                                                                      100 * Floor((varDenture * 0.15) / 100) +
//                                                                      1000 + (10 *
//                                                                      Floor(Round2(varCT * Round2(14 / 100,
//                                                                      -2), 0)
//                                                                      / 10));
//                                                              end
//                                                              else
//                                                              begin
//
//
//
//                                                                 //    result :=
//                                                                  //        100 * Floor((varDenture * 0.3) / 100) +
//                                                                 //         1000 + (10 *
//                                                                 //         Floor(Round2(varCT * Round2(14 / 100,
//                                                                //          -2), 0) / 10));
//
//                                                                      //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//
//                                                                    if   (vardate >= '2018-07-01') then
//                                                                    begin
//                                                                      result :=
//                                                                            100 * Floor((varDenture * 0.2) / 100) +
//                                                                            1000 + (10 *
//                                                                            Floor(Round2(varCT * Round2(14 / 100,
//                                                                            -2), 0) / 10));
//                                                                    end
//                                                                    else
//                                                                    begin
//
//                                                                      result :=
//                                                                            100 * Floor((varDenture * 0.3) / 100) +
//                                                                            1000 + (10 *
//                                                                            Floor(Round2(varCT * Round2(14 / 100,
//                                                                            -2), 0) / 10));
//                                                                    end;
//
//
//
//                                                              end;
//                                                        end;
//                                                   end
//                                                   else
//                                                        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                        begin
//                                                              if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                              begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                   result :=
//                                                                        100 * Floor((varDenture * 0.15) / 100);
//                                                              end
//                                                              else
//                                                              begin
//
//                                                                 //  result :=
//                                                                //        100 * Floor((varDenture * 0.3) / 100);
//
//                                                          //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                              if   (vardate >= '2018-07-01') then
//                                                              begin
//                                                                  result :=
//                                                                  100 * Floor((varDenture * 0.2) / 100);
//
//                                                              end
//                                                              else
//                                                              begin
//
//                                                                  result :=
//                                                                  100 * Floor((varDenture * 0.3) / 100);
//
//                                                              end;
//
//
//                                                              end;
//                                                        end
//                                                        else
//                                                        begin
//                                                             if boolWonwe then
//                                                                  result := 1000 + (10 *
//                                                                       Floor(Round2(varCT * Round2(14 / 100,
//                                                                       -2), 0)
//                                                                       / 10))
//                                                             else
//                                                                  result := 1500 + (10 *
//                                                                       Floor(Round2(varCT * Round2(14 / 100,
//                                                                       -2), 0)
//                                                                       / 10));
//                                                            varJangeGeum := 0;
//                                                             // (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 1,000원
//                                                             if (nBoMan = 0) then
//                                                                  result := 1000 + (10 *
//                                                                       Floor(Round2(varCT * Round2(14 / 100,
//                                                                       -2), 0) / 10));
//                                                        end;
//                                                        //*****
//                                                  end
//
//                                                  else
//                                                       if (varJongbeul = 11) and (varDate > '2009-03-31') then //차상위2종장애인
//                                                       begin
//                                                        //    result := 0;
//                                                        //    varJangeGeum := 10 * Floor((varChong * 0.14) / 10);
//
//
//                                                      //원외처방전 발행 유무에 따라 (처방전 없으면750/있을땐 250원만)
//                                                        //2012.7.1  틀니 차상위2종장애인은 30% 본인부담
//                                                        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                                        begin
//
//                                                             if boolWonwe then
//                                                             begin
//
//                                                                    if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                    begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                         result :=
//                                                                           100 * Floor((varDenture * 0.15) / 100) +
//                                                                           250 + (10 *
//                                                                           Floor(Round2(varCT * Round2(14 / 100,
//                                                                           -2), 0) / 10));
//                                                                    end
//                                                                    else
//                                                                    begin
//
//
//                                                                         result :=
//                                                                           100 * Floor((varDenture * 0.3) / 100) +
//                                                                           250 + (10 *
//                                                                           Floor(Round2(varCT * Round2(14 / 100,
//                                                                           -2), 0) / 10));
//
//                                                                    end;
//                                                                    varJangeGeum := 750;
//                                                             end
//                                                             else
//                                                             begin
//                                                                    if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                    begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                       result :=
//                                                                       100 * Floor((varDenture * 0.15) / 100) +
//                                                                       750 + (10 *
//                                                                       Floor(Round2(varCT * Round2(14 / 100,
//                                                                       -2), 0) / 10));
//                                                                    end
//                                                                    else
//                                                                    begin
//                                                                     //  result :=
//                                                                     //  100 * Floor((varDenture * 0.3) / 100) +
//                                                                     //  750 + (10 *
//                                                                     //  Floor(Round2(varCT * Round2(14 / 100,
//                                                                     //  -2), 0) / 10));
//
//                                                                       //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                      if   (vardate >= '2018-07-01') then
//                                                                      begin
//                                                                          result :=
//                                                                             100 * Floor((varDenture * 0.2) / 100) +
//                                                                             250 + (10 *
//                                                                             Floor(Round2(varCT * Round2(14 / 100,
//                                                                             -2), 0) / 10));
//
//                                                                      end
//                                                                      else
//                                                                      begin
//
//                                                                          result :=
//                                                                             100 * Floor((varDenture * 0.3) / 100) +
//                                                                             250 + (10 *
//                                                                             Floor(Round2(varCT * Round2(14 / 100,
//                                                                             -2), 0) / 10));
//
//                                                                      end;
//
//
//
//
//                                                                    end;
//                                                                  varJangeGeum := 750;
//                                                             end;
//
//                                                             // (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 250원
//                                                             if (nBoMan = 0) then
//                                                             begin
//                                                                      if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                      begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                            result :=
//                                                                                 100 * Floor((varDenture * 0.15) / 100) +
//                                                                                 250 + (10 *
//                                                                                 Floor(Round2(varCT * Round2(14 / 100,
//                                                                                 -2), 0) / 10));
//                                                                      end
//                                                                      else
//                                                                      begin
//
//
//                                                                       //     result :=
//                                                                       //          100 * Floor((varDenture * 0.3) / 100) +
//                                                                       //          250 + (10 *
//                                                                       //          Floor(Round2(varCT * Round2(14 / 100,
//                                                                       //          -2), 0) / 10));
//
//
//                                                                         //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                        if   (vardate >= '2018-07-01') then
//                                                                        begin
//                                                                             result :=
//                                                                           100 * Floor((varDenture * 0.2) / 100) +
//                                                                           750 + (10 *
//                                                                           Floor(Round2(varCT * Round2(14 / 100,
//                                                                           -2), 0) / 10));
//
//                                                                        end
//                                                                        else
//                                                                        begin
//
//                                                                           result :=
//                                                                           100 * Floor((varDenture * 0.3) / 100) +
//                                                                           750 + (10 *
//                                                                           Floor(Round2(varCT * Round2(14 / 100,
//                                                                           -2), 0) / 10));
//
//                                                                        end;
//
//
//
//
//                                                                       end;
//
//                                                                       varJangeGeum := 750;
//                                                               end;
//
//                                                            end
//                                                            else   //차상위 임플, 틀니만
//                                                               if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                               begin
//
//                                                                      if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                      begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                             result :=
//                                                                         100 * Floor((varDenture * 0.15) / 100);
//                                                                      end
//                                                                      else
//                                                                      begin
//
//                                                                      //  result :=
//                                                                      //   100 * Floor((varDenture * 0.3) / 100);
//
//
//                                                                         //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                        if   (vardate >= '2018-07-01') then
//                                                                        begin
//                                                                           result := 100 * Floor((varDenture * 0.2) / 100);
//
//                                                                        end
//                                                                        else
//                                                                        begin
//
//                                                                           result :=100 * Floor((varDenture * 0.3) / 100);
//
//                                                                        end;
//
//
//
//
//
//                                                                      end;
//                                                               end
//                                                               else
//                                                               begin
//                                                                    if boolWonwe then
//                                                                    begin
//                                                                         result := 250 + (10 *
//                                                                              Floor(Round2(varCT * Round2(14 / 100,
//                                                                              -2), 0) / 10));
//                                                                         varJangeGeum := 750;
//                                                                    end
//                                                                    else
//                                                                    begin
//                                                                         result := 750 + (10 *
//                                                                              Floor(Round2(varCT * Round2(14 / 100,
//                                                                              -2), 0) / 10));
//                                                                         varJangeGeum := 750;
//                                                                    end;
//
//                                                                    // (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 250원
//                                                                    if (nBoMan = 0) then
//                                                                    begin
//                                                                         result := 250 + (10 *
//                                                                              Floor(Round2(varCT * Round2(14 / 100,
//                                                                              -2), 0) / 10));
//                                                                         varJangeGeum := 750;
//                                                                    end;
//                                                                    //*****
//                                                               end;
//                                                             end
//                                                             else
//                                                                  if (BoninGu = 1) and (varJongbeul = 2) then  ///+#+
//                                                                       {//보호1종 본인면제}
//                                                                  begin
//
//                                                                            //2012.7.1  틀니 보호1종은 20% 본인부담
//                                                                                 if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                                                 begin
//
//                                                                                    if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                                    begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                                         result :=
//                                                                                           100 * Floor((varDenture * 0.05) / 100) ;
//                                                                                    end
//                                                                                    else
//                                                                                    begin
//
//
//                                                                                    //  result :=
//                                                                                    //       100 * Floor((varDenture * 0.2) / 100);
//
//
//                                                                                   //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                      if   (vardate >= '2018-07-01') then
//                                                                                      begin
//                                                                                         result :=
//                                                                                         100 * Floor((varDenture * 0.1) / 100);
//
//                                                                                      end
//                                                                                      else
//                                                                                      begin
//                                                                                            result :=
//                                                                                           100 * Floor((varDenture * 0.2) / 100);
//
//                                                                                      end;
//
//
//
//
//                                                                                    end;
//
//                                                                                 end
//                                                                                 else
//                                                                                      result := 0;
//                                                                                 //*****
//
//
//
//                                                             end
//
//                                                            else
//                                                              if (BoninGu = 1) and (varJongbeul = 2) then
//                                                                  //보호1종 본인면제
//                                                            begin
//
//                                                                      //2012.7.1  틀니 보호1종은 20% 본인부담
//                                                                           if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                                                result :=
//                                                                                     100 * Floor((varDenture * 0.2) / 100)
//                                                                           else
//                                                                                result := 0;
//
//
//                                                            end
//                                                            else
//                                                                 if (varJongbeul = 2) and (varDate < '2007-07-01') then //보호1종
//                                                                 begin
//                                                                      result := 0;
//
//                                                                 end
//                                                                 else
//                                                                      if (varJongbeul = 3) and (varDate < '2007-07-01') then //보호2종
//                                                                      begin
//                                                                           result :=
//                                                                                JulSa(varChong * 0.2, 1)
//                                                                                + (10 * Floor(Round2(varCt * Round2(15 / 100,
//                                                                                -2), 0) / 10));
//                                                                      end
//                                                                      else
//                                                                           if (varJongbeul = 3) then //보호2종
//                                                                           begin
//
//
//                                                                                 if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                                                 begin
//                                                                                      //  result :=
//                                                                                      //      100 * Floor((varDenture * 0.3) / 100);
//
//
//                                                                                     if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                                      begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                                         result :=
//                                                                                            100 * Floor((varDenture * 0.15) / 100);
//                                                                                      end
//                                                                                      else
//                                                                                      begin
//
//                                                                                     //  result :=
//                                                                                      //      100 * Floor((varDenture * 0.3) / 100);
//
//                                                                                            //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                        if   (vardate >= '2018-07-01') then
//                                                                                        begin
//                                                                                            result :=
//                                                                                           100 * Floor((varDenture * 0.2) / 100);
//
//                                                                                        end
//                                                                                        else
//                                                                                        begin
//                                                                                       result :=
//                                                                                            100 * Floor((varDenture * 0.3) / 100);
//
//                                                                                        end;
//
//
//
//
//
//
//                                                                                      end;
//
//
//
//
//
//
//
//                                                                                end
//                                                                                else
//
//                                                                                            //18세이하 실란트 적용 2017-10-01 이후
//                                                                                       if  (Realgrid14.ints[2, 5] > 0 )
//                                                                                                and (varDate >= '2017-10-01') then // 실란트 뺀  종별가산 전 행위 + 재료비
//                                                                                        begin
//
//                                                                                            result :=  //보험 본인부담금
//                                                                                              ( 100 *  Floor(
//                                                                                              (( varJinchalRyo  +  Realgrid14.ints[2, 4]) * 0.4    //진찰료 + 실란트 아닌것 30%
//                                                                                              + ( Realgrid14.ints[2, 6] * 0.1)) / 100)); //실란트 10%
//                                                                                                                     //실런트 종별가산 금액
//                                                                                        end
//                                                                                       else
//
//
//                                                                                begin
//                                                                                       result :=
//                                                                                             JulSa(varChong * 0.15, 1);
//                                                                                end;
//
//
//
//                                                                           end
//                                                                           else
//                                                                                if varJongbeul = 2 then //보호1종
//                                                                                begin
//                                                                                     //원외처방전 발행 유무에 따라
//                                                                                     if boolWonwe then
//                                                                                          result := 1500 + (10 *
//                                                                                               Floor(Round2(varCt * Round2(5 / 100,
//                                                                                               -2), 0) / 10))
//                                                                                     else
//                                                                                          result := 2000 + (10 *
//                                                                                               Floor(Round2(varCt * Round2(5 / 100,
//                                                                                               -2), 0) / 10));
//                                                                                     //본담액(처방전 없으면2000/있을땐 1500원만)
//                                                                                     varJangeGeum := 0;
//
//                                                                                     // 2008.4.1 시행 (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 1,000원
//                                                                                     if (nBoMan = 0) and (varDate > '2008-03-31') then
//                                                                                          result := 1500 + (10 *
//                                                                                               Floor(Round2(varCt * Round2(15 / 100,
//                                                                                               -2), 0)
//                                                                                               / 10));
//
//
//                                                                                      //2012.7.1  틀니 보호1종은 20% 본인부담
//                                                                                    if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//
//                                                                                     begin
//                                                                                   //  result :=
//                                                                                    //      100 * Floor((varDenture * 0.2) / 100);
//
//
//                                                                                          if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                                          begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                                              result :=
//                                                                                                100 * Floor((varDenture * 0.05) / 100);
//                                                                                          end
//                                                                                          else
//                                                                                          begin
//                                                                                           //    result :=
//                                                                                            //        100 * Floor((varDenture * 0.2) / 100);
//                                                                                                   //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                                    if   (vardate >= '2018-07-01') then
//                                                                                                    begin
//                                                                                                        result :=
//                                                                                                    100 * Floor((varDenture * 0.1) / 100);
//
//                                                                                                    end
//                                                                                                    else
//                                                                                                    begin
//                                                                                                     result :=
//                                                                                                    100 * Floor((varDenture * 0.2) / 100);
//
//                                                                                                    end;
//
//
//
//                                                                                          end;
//                                                                                    end
//
//
//                                                                                end
//                                                                                else
//                                                                                     if varJongbeul = 5 then //보호4종
//                                                                                     begin
//                                                                                          result := 0;
//                                                                                     end
//                                                                                     else
//                                                                                          if varJongbeul = 6 then //보호8종
//                                                                                          begin
//                                                                                               result := 0;
//                                                                                          end
//                                                                                          else //일반
//                                                                                          begin
//
//
//                                                                                               result :=
//                                                                                                    varChong;
//
//
//                                                                                          end;
//
//
//     end
//     else
//          if hkind = '종합병원' then
//          begin //종합병원
//               varJangeGeum := 0;
//               if (varJongbeul = 1) and (varDate > '2009-06-30') then
//                    //보험
//               begin
//                    result := 100 *
//                         Floor((varChong * 0.5) /
//                         100);
//               end
//               else
//                    if varJongbeul = 1 then //보험
//                    begin
//                         result := 10 *
//                              Floor((varChong * 0.5) /
//                              10);
//                    end
//                    else
//                         if (varJongbeul = 10) and (varDate > '2009-06-30') then //차상위2종
//                         begin
//                              result := 100 *
//                                   Floor((varChong * 0.14) /
//                                   100);
//                         end
//                         else
//                              if (varJongbeul = 10) and (varDate > '2009-03-31') then //차상위2종
//                              begin
//                                   result := 10 *
//                                        Floor((varChong * 0.14) /
//                                        10);
//                              end
//                              else
//                                   if (varJongbeul = 11) and (varDate > '2009-06-30') then //차상위2종장애인
//                                   begin
//                                        result := 0;
//                                        varjangeGeum := 100 * Floor((varChong * 0.14) / 100);
//                                   end
//                                   else
//                                        if (varJongbeul = 11) and (varDate > '2009-03-31') then //차상위2종장애인
//                                        begin
//                                             result := 0;
//                                             varjangeGeum := 10 * Floor((varChong * 0.14) / 10);
//                                        end
//                                        else
//                                             if varJongbeul = 2 then //보호1종
//                                             begin
//                                                  result := 0;
//                                             end
//                                             else
//                                                  if varJongbeul = 3 then //보호2종
//                                                  begin
//                                                       result :=
//                                                            JulSa(varChong * 0.2, 1)
//                                                            + (10 * Floor(Round2(varCt * Round2(15 / 100,
//                                                            -2), 0) / 10));
//                                                  end
//                                                  else
//                                                       if varJongbeul = 5 then //보호4종
//                                                       begin
//                                                            result := 0;
//                                                       end
//                                                       else
//                                                            if varJongbeul = 6 then //보호8종
//                                                            begin
//                                                                 if boolWonwe then
//                                                                      result := 250
//                                                                 else
//                                                                      result := 750;
//                                                            end
//                                                            else //일반
//                                                            begin
//                                                                 result :=
//                                                                      varChong;
//                                                            end;
//          end
//          else
//          begin //의원급
//
//               varjangeGeum := 0;
//
//               if BoninGu = 2 then
//               begin
//                    result :=  varChong;
//               end
//               else
//                    if (varDate > '2007-07-31')
//                         and (varJongbeul = 1)
//                         and (varAge < 6) then
//                    begin
//                         result := 100 *
//                              Floor((varChong * 0.21) /
//                              100);
//                    end
//                    else
//                         if (varDate > '2007-07-31') and (varJongbeul = 1) then //보험
//                         begin
//
//                              //2012.7.1  틀니 보험은 50% 본인부담
//                              if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                              begin
//                               //    result :=
//                               //         1500 +
//                               //         100 * Floor((varDenture * 0.5) / 100);
//
//                                   if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                    begin
//
//                                       result :=
//                                           1500 +
//                                           100 * Floor((varDenture * 0.3) / 100);
//                                    end
//                                    else
//                                    begin
//                                    //  result :=
//                                    //       1500 +
//                                    //       100 * Floor((varDenture * 0.5) / 100);
//
//                                      //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                      if   (vardate >= '2018-07-01') then
//                                      begin
//                                          result :=
//                                            1500 +
//                                            100 * Floor((varDenture * 0.3) / 100);
//
//                                      end
//                                      else
//                                      begin
//                                             result :=
//                                                  1500 +
//                                                  100 * Floor((varDenture * 0.5) / 100);
//                                      end;
//
//
//
//                                    end;
//
//
//                              end
//                              else
//                                   if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                   begin
//                                        //result :=
//                                        //     100 * Floor((varDenture * 0.5) / 100);
//                                         if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                          begin
//
//                                              result :=
//                                                 100 * Floor((varDenture * 0.3) / 100);
//                                          end
//                                          else
//                                          begin
//                                           //   result :=
//                                            //     100 * Floor((varDenture * 0.5) / 100);
//
//
//                                              if  (vardate >= '2018-07-01')  then
//                                              begin
//                                                   result :=
//                                                         100 * Floor((varDenture * 0.3) / 100);
//                                              end
//                                              else
//                                              begin
//                                                   result :=
//                                                         100 * Floor((varDenture * 0.5) / 100);
//                                              end;
//
//
//
//
//                                         end;
//
//                                   end
//                                   else
//                                        if (varChong <= HandoAk) and
//                                             (varAge >= 65) then
//                                        begin
//                                             result := 1500;
//                                        end
//                                        else
//                                         if varPregnan = true then
//                                         begin
//                                            //임신부 본인부담금 경감 적용 ==========================
//                                            if varPregnan = true then
//                                             result := 100 *  Floor(  ((varChong  - satGasanGeum2) * 0.1)  / 100);
//
//                                             //   result :=    //임신부 본인부담금
//                                             //       100 * Floor(((Realgrid14.ints[1, 1]  - satGasanGeum2) * 0.1) / 100)
//
//                                         end
//                                           else
//
//                                           //18세이하 실란트 적용 2017-10-01 이후
//                                           if  (Realgrid14.ints[2, 5] > 0 )
//                                                    and (varDate >= '2017-10-01') then // 실란트 뺀  종별가산 전 행위 + 재료비
//                                            begin
//
//                                                result :=  //보험 본인부담금
//                                                  ( 100 *  Floor(
//                                                  (( varJinchalRyo  + satGasangeum  +  Realgrid14.ints[2, 4]) * 0.3    //진찰료 + 실란트 아닌것 30%
//                                                  + ( Realgrid14.ints[2, 6] * 0.1)) / 100)); //실란트 10%
//                                                                         //실런트 종별가산 금액
//                                            end
//
//
//                                        else
//                                        begin
//
//
//                                          //   result := 100 *  Floor(  ((varChong  - satGasanGeum2) * 0.3)  / 100);
//
//
//                                              if (varAge >= 65 ) and (varDate >= '2018-01-01' )then
//                                              begin
//                                                  if varChong <= 15000 then
//                                                      result := 1500
//                                                           else  if (varChong > 15000)  and (varChong <= 20000) then
//                                                              result :=  100 *  Floor(( (varChong  - satGasanGeum2) * 0.1) / 100)//10%
//
//                                                           else  if (varChong > 20000)  and (varChong <= 25000) then
//                                                              result :=  100 *  Floor(( (varChong  - satGasanGeum2) * 0.2) / 100) //20%
//
//                                                           else  if (varChong > 25000)   then
//                                                              result :=  100 *  Floor(( (varChong  - satGasanGeum2) * 0.3) / 100); //30%
//
//                                              end
//                                              else
//                                              begin
//                                                   result := 100 * Floor(((varChong  - satGasanGeum2) * 0.3) / 100);
//                                              end;
//
//
//
//
//                                        end;
//                              //*****
//                         end
//                         else
//                              if varJongbeul = 1 then //보험
//                              begin
//
//                                   if varChong > HandoAk then
//                                   begin
//                                        if varAge >= 65 then
//                                        begin
//                                            if varChong <= 15000 then
//                                                result := 1500
//                                                     else  if (varChong > 15000)  and (varChong <= 20000) then
//                                                        result :=  100 *  Floor(( (varChong  - satGasanGeum2) * 0.1) / 100)//10%
//
//                                                     else  if (varChong > 20000)  and (varChong <= 25000) then
//                                                        result :=  100 *  Floor(( (varChong  - satGasanGeum2) * 0.2) / 100) //20%
//
//                                                     else  if (varChong > 25000)   then
//                                                        result :=  100 *  Floor(( (varChong  - satGasanGeum2) * 0.3) / 100); //30%
//
//                                        end
//                                        else
//                                        begin
//                                             result := 10 * Floor(((varChong  - satGasanGeum2) * 0.3) / 10);
//                                        end;
//
//
//
//                                   end
//                                   else
//                                   begin
//                                        if varAge >= 65 then
//                                             result := 1500
//                                        else
//                                             result := 3500;
//                                   end;
//
//                              end
//                              else
//                                   if (varJongbeul = 9) then //차상위1종
//                                   begin
//
//                                        //2012.7.1  틀니 차상위1종은 20% 본인부담
//                                        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                        begin
//
//
//                                             if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                              begin
//
//                                                 result :=
//                                                      100 * Floor((varDenture * 0.05) / 100);
//
//                                              end
//                                              else
//                                              begin
//
//                                               //  result :=
//                                               //       100 * Floor((varDenture * 0.2) / 100);
//
//
//
//                                                //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                if   (vardate >= '2018-07-01') then
//                                                begin
//                                                    result :=
//
//                                                      100 * Floor((varDenture * 0.1) / 100);
//
//                                                end
//                                                else
//                                                begin
//
//                                                     result  :=
//                                                    100 * Floor((varDenture * 0.2) / 100);
//                                                end;
//
//
//                                              end;
//
//
//
//                                        end
//                                        else
//                                        begin
//                                             result := 0;
//                                        end;
//                                        //*****
//
//                                   end
//                                   else
//                                        if (varJongbeul = 10) and (varDate > '2009-03-31') then //차상위2종
//                                        begin
//                                             //원외처방전 발행 유무에 따라 (처방전 없으면1500/있을땐 1000원만)
//                                             //2012.7.1  틀니 차상위2종은 30% 본인부담
//                                             if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                             begin
//                                                  if boolWonwe then
//                                                  begin
//
//                                                      if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                      begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                           result :=
//                                                                100 * Floor((varDenture * 0.15) / 100) +
//                                                                1000 + (10 *
//                                                                Floor(Round2(varCt * Round2(14 / 100,
//                                                                -2), 0)
//                                                                / 10)) ;
//
//                                                       end
//                                                       else
//                                                       begin
//                                                        //   result :=
//                                                        //        100 * Floor((varDenture * 0.3) / 100) +
//                                                        //        1000 + (10 *
//                                                         //       Floor(Round2(varCt * Round2(14 / 100,
//                                                        //        -2), 0)
//                                                        //        / 10)) ;
//
//
//                                                                 //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                            if   (vardate >= '2018-07-01') then
//                                                            begin
//                                                                result :=
//                                                                  100 * Floor((varDenture * 0.2) / 100) +
//                                                                  1000 + (10 *
//                                                                  Floor(Round2(varCt * Round2(14 / 100,
//                                                                  -2), 0)
//                                                                  / 10));
//
//
//                                                            end
//                                                            else
//                                                            begin
//                                                                  result :=
//                                                                  100 * Floor((varDenture * 0.3) / 100) +
//                                                                  1000 + (10 *
//                                                                  Floor(Round2(varCt * Round2(14 / 100,
//                                                                  -2), 0)
//                                                                  / 10));
//
//                                                            end;
//
//
//
//
//                                                       end;
//
//                                                  end
//                                                  else
//                                                  begin
//                                                        if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                        begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                         result :=
//                                                            100 * Floor((varDenture * 0.15) / 100) +
//                                                            1500 + (10 *
//                                                            Floor(Round2(varCt * Round2(14 / 100,
//                                                            -2), 0)
//                                                            / 10));
//                                                        end
//                                                        else
//                                                        begin
//                                                         //result :=
//                                                         //   100 * Floor((varDenture * 0.3) / 100) +
//                                                         //   1500 + (10 *
//                                                         //   Floor(Round2(varCt * Round2(14 / 100,
//                                                        //    -2), 0)
//                                                        //    / 10));
//
//                                                             //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                            if   (vardate >= '2018-07-01') then
//                                                            begin
//
//                                                             result :=
//                                                                  100 * Floor((varDenture * 0.2) / 100) +
//                                                                  1500 + (10 *
//                                                                  Floor(Round2(varCt * Round2(14 / 100,
//                                                                  -2), 0)
//                                                                  / 10));
//
//                                                            end
//                                                            else
//                                                            begin
//
//                                                             result :=
//                                                                  100 * Floor((varDenture * 0.3) / 100) +
//                                                                  1500 + (10 *
//                                                                  Floor(Round2(varCt * Round2(14 / 100,
//                                                                  -2), 0)
//                                                                  / 10));
//
//                                                            end;
//
//
//
//                                                        end;
//
//                                                  end;
//                                                  if (nBoMan = 0) then
//                                                  begin
//                                                     if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                        begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                            result :=
//                                                                  100 * Floor((varDenture * 0.15) / 100) +
//                                                                  1000 + (10 *
//                                                                  Floor(Round2(varCt * Round2(14 / 100,
//                                                                  -2), 0) / 10));
//                                                       end
//                                                       else
//                                                       begin
//
//                                                           //  result :=
//                                                            //      100 * Floor((varDenture * 0.3) / 100) +
//                                                            //      1000 + (10 *
//                                                           //       Floor(Round2(varCt * Round2(14 / 100,
//                                                           //       -2), 0) / 10));
//
//
//                                                         //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                            if   (vardate >= '2018-07-01') then
//                                                            begin
//
//                                                                result :=
//                                                                100 * Floor((varDenture * 0.2) / 100) +
//                                                                1000 + (10 *
//                                                                Floor(Round2(varCt * Round2(14 / 100,
//                                                                -2), 0) / 10));
//
//                                                            end
//                                                            else
//                                                            begin
//
//                                                             result :=
//                                                                100 * Floor((varDenture * 0.3) / 100) +
//                                                                1000 + (10 *
//                                                                Floor(Round2(varCt * Round2(14 / 100,
//                                                                -2), 0) / 10));
//
//                                                            end;
//
//
//
//
//                                                       end;
//
//                                                  end;
//                                             end
//                                             else
//                                                  if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                  begin
//                                                        if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                        begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                             result :=
//                                                                100 * Floor((varDenture * 0.15) / 100);
//                                                        end
//                                                        else
//                                                        begin
//
//                                                            // result :=
//                                                            //    100 * Floor((varDenture * 0.3) / 100);
//
//
//                                                          //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                            if   (vardate >= '2018-07-01') then
//                                                            begin
//
//                                                                result :=
//                                                                  100 * Floor((varDenture * 0.2) / 100);
//
//
//                                                            end
//                                                            else
//                                                            begin
//
//                                                            result :=
//                                                                  100 * Floor((varDenture * 0.3) / 100);
//
//                                                            end;
//
//
//
//
//                                                        end;
//
//                                                  end
//                                                  else
//                                                  begin
//                                                       if boolWonwe then
//                                                            result := 1000 + (10 *
//                                                                 Floor(Round2(varCt * Round2(14 / 100,
//                                                                 -2), 0)
//                                                                 / 10))
//                                                       else
//                                                            result := 1500 + (10 *
//                                                                 Floor(Round2(varCt * Round2(14 / 100,
//                                                                 -2), 0)
//                                                                 / 10));
//                                                       varjangeGeum := 0;
//                                                       // (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 1,000원
//                                                       if (nBoMan = 0) then
//                                                            result := 1000 + (10 *
//                                                                 Floor(Round2(varCt * Round2(14 / 100,
//                                                                 -2), 0) / 10));
//                                                  end;
//                                             //*****
//
//                                        end
//                                        else
//                                             if (varJongbeul = 11) and (varDate > '2009-03-31') then //차상위2종장애인
//                                             begin
//                                                  //원외처방전 발행 유무에 따라 (처방전 없으면750/있을땐 250원만)
//                                                  //2012.7.1  틀니 차상위2종장애인은 30% 본인부담
//                                                  if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                                  begin
//
//                                                       if boolWonwe then
//                                                       begin
//                                                            if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                            begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                result :=
//                                                                     100 * Floor((varDenture * 0.15) / 100) +
//                                                                     250 + (10 *
//                                                                     Floor(Round2(varCt * Round2(14 / 100,
//                                                                     -2), 0) / 10));
//
//                                                            end
//                                                            else
//                                                            begin
//
//                                                                 // result :=
//                                                                //       100 * Floor((varDenture * 0.3) / 100) +
//                                                                 //      250 + (10 *
//                                                                 //      Floor(Round2(varCt * Round2(14 / 100,
//                                                                 //      -2), 0) / 10));
//
//
//                                                                 //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                if   (vardate >= '2018-07-01') then
//                                                                begin
//
//                                                                 result :=
//                                                                     100 * Floor((varDenture * 0.2) / 100) +
//                                                                     250 + (10 *
//                                                                     Floor(Round2(varCt * Round2(14 / 100,
//                                                                     -2), 0) / 10));
//                                                             //   wNumJang.Value := 750;
//
//
//                                                                end
//                                                                else
//                                                                begin
//
//                                                                result :=
//                                                                     100 * Floor((varDenture * 0.3) / 100) +
//                                                                     250 + (10 *
//                                                                     Floor(Round2(varCt * Round2(14 / 100,
//                                                                     -2), 0) / 10));
//                                                               // wNumJang.Value := 750;
//                                                                end;
//
//
//
//
//
//                                                            end;
//
//                                                            varjangeGeum := 750;
//
//
//
//
//                                                       end
//                                                       else
//                                                       begin
//
//                                                            if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                            begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                               result :=
//                                                                 100 * Floor((varDenture * 0.15) / 100) +
//                                                                 750 + (10 *
//                                                                 Floor(Round2(varCt * Round2(14 / 100,
//                                                                 -2), 0) / 10));
//
//                                                            end
//                                                            else
//                                                            begin
//                                                            //    result :=
//                                                            //     100 * Floor((varDenture * 0.3) / 100) +
//                                                             //    750 + (10 *
//                                                             //    Floor(Round2(varCt * Round2(14 / 100,
//                                                            //     -2), 0) / 10));
//
//
//                                                                 //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                if   (vardate >= '2018-07-01') then
//                                                                begin
//                                                                       result :=
//                                                                       100 * Floor((varDenture * 0.2) / 100) +
//                                                                       750 + (10 *
//                                                                       Floor(Round2(varCt * Round2(14 / 100,
//                                                                       -2), 0) / 10));
//
//                                                                end
//                                                                else
//                                                                begin
//
//                                                                result :=
//                                                                       100 * Floor((varDenture* 0.3) / 100) +
//                                                                       750 + (10 *
//                                                                       Floor(Round2(varCt * Round2(14 / 100,
//                                                                       -2), 0) / 10));
//
//                                                                end;
//
//                                                            end;
//
//                                                            varjangeGeum := 750;
//                                                       end;
//
//                                                       // (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 250원
//                                                       if (nBoMan = 0) then
//                                                       begin
//                                                            if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                            begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                                 result :=
//                                                                     100 * Floor((varDenture * 0.15) / 100) +
//                                                                     250 + (10 *
//                                                                     Floor(Round2(varCt * Round2(14 / 100,
//                                                                     -2), 0) / 10));
//                                                            end
//                                                            else
//                                                            begin
//                                                                 // result :=
//                                                                 //    100 * Floor((varDenture * 0.3) / 100) +
//                                                                 //    250 + (10 *
//                                                                 //    Floor(Round2(varCt * Round2(14 / 100,
//                                                                 //    -2), 0) / 10));
//
//                                                                 //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                if   (vardate >= '2018-07-01') then
//                                                                begin
//                                                                      result :=
//                                                                       100 * Floor((varDenture * 0.2) / 100) +
//                                                                       250 + (10 *
//                                                                       Floor(Round2(varCt * Round2(14 / 100,
//                                                                       -2), 0) / 10));
//
//
//                                                                end
//                                                                else
//                                                                begin
//
//                                                                 result :=
//                                                                       100 * Floor((varDenture * 0.3) / 100) +
//                                                                       250 + (10 *
//                                                                       Floor(Round2(varCt * Round2(14 / 100,
//                                                                       -2), 0) / 10));
//
//                                                                end;
//
//
//
//
//                                                            end;
//
//                                                            varjangeGeum := 750;
//                                                       end;
//
//                                                  end
//                                                  else
//                                                       if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                       begin  //차상위 2종장애
//
//
//                                                                if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                       result :=
//                                                                         100 * Floor((varDenture * 0.15) / 100);
//                                                                end
//                                                                else
//                                                                begin
//
//                                                                    //   result :=
//                                                                    //     100 * Floor((varDenture * 0.3) / 100);
//
//                                                                       //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                      if   (vardate >= '2018-07-01') then
//                                                                      begin
//                                                                         result :=
//                                                                               100 * Floor((varDenture * 0.2) / 100);
//
//
//                                                                      end
//                                                                      else
//                                                                      begin
//
//                                                                      result :=
//                                                                               100 * Floor((varDenture * 0.3) / 100);
//
//
//                                                                      end;
//
//
//
//                                                                end;
//
//
//
//
//
//                                                       end
//                                                       else
//                                                       begin
//                                                            if boolWonwe then
//                                                            begin
//
//
//
//                                                                 result := 250 + (10 *
//                                                                      Floor(Round2(varCt * Round2(14 / 100,
//                                                                      -2), 0) / 10));
//                                                                 varjangeGeum := 750;
//                                                            end
//                                                            else
//                                                            begin
//                                                                 result := 750 + (10 *
//                                                                      Floor(Round2(varCt * Round2(14 / 100,
//                                                                      -2), 0) / 10));
//                                                                 varjangeGeum := 750;
//                                                            end;
//
//                                                            // (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 250원
//                                                            if (nBoMan = 0) then
//                                                            begin
//                                                                 result := 250 + (10 *
//                                                                      Floor(Round2(varCt * Round2(14 / 100,
//                                                                      -2), 0) / 10));
//                                                                 varjangeGeum := 750;
//                                                            end;
//                                                            //*****
//                                                       end;
//
//                                             end
//                                             else                       //틀니
//                                                  if  (varChojae=13) and (varJongbeul = 2) then //보호1종
//                                                  begin
//                                                       //2012.7.1  틀니 보호1종은 20% 본인부담
//                                                       if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                       begin
//
//
//                                                                if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                                    result :=
//                                                                         10 * Floor((varDenture * 0.05) / 10)
//                                                                end
//                                                                else
//                                                                begin
//                                                                   // result :=
//                                                                   //      10 * Floor((varDenture * 0.2) / 10)
//
//
//
//                                                                   //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                      if   (vardate >= '2018-07-01') then
//                                                                      begin
//                                                                               //10원 미만 절사
//                                                                         // Realgrid14.Cells[1, 3].AsDouble :=
//                                                                         //      100 * Floor((GrdCost.ints[3, 2] * 0.1) / 100);
//                                                                         result :=
//                                                                           10*  Floor(( varDenture * 0.1  )/10);
//
//
//                                                                      end
//                                                                      else
//                                                                      begin
//
//                                                                               //10원 미만 절사
//                                                                         // Realgrid14.Cells[1, 3].AsDouble :=
//                                                                         //      100 * Floor((GrdCost.ints[3, 2] * 0.2) / 100);
//                                                                          result :=
//                                                                           10*  Floor(( varDenture * 0.2  )/10);
//
//
//
//                                                                      end;
//
//
//
//
//
//                                                                end;
//                                                       end
//                                                       else
//                                                       begin
//                                                            //result := 0;
//                                                       end;
//                                                       //*****
//                                                  end
//                                                  else
//                                                 if (BoninGu = 1) and (varJongbeul = 2) then //보호1종
//                                                  begin
//                                                       //2012.7.1  틀니 보호1종은 20% 본인부담
//                                                       if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                       begin
//
//                                                               if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                               begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                  result :=
//                                                                     10 * Floor((varDenture * 0.05) / 10) ;
//                                                               end
//                                                               else
//                                                               begin
//                                                             //  result :=
//                                                             //    10 * Floor((varDenture * 0.2) / 10);
//
//                                                                 //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                      if   (vardate >= '2018-07-01') then
//                                                                      begin
//                                                                       result :=
//                                                                         10 * Floor((varDenture * 0.1) / 10);
//
//
//
//                                                                      end
//                                                                      else
//                                                                      begin
//
//                                                                      result :=
//                                                                         10 * Floor((varDenture * 0.2) / 10);
//
//
//
//
//                                                                      end;
//
//
//
//
//                                                               end;
//
//
//
//                                                       end
//                                                       else
//                                                            result := 0;
//                                                       //*****
//                                                  end
//                                                  else
//                                                       if (varJongbeul = 2) and (varDate < '2007-07-01') then //보호1종
//                                                       begin
//                                                              //2012.7.1  틀니 보호1종은 20% 본인부담
//                                                               if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                               begin
//
//                                                                        if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                        begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                              result :=   10 * Floor((varDenture * 0.05) / 10);
//
//
//                                                                        end
//                                                                        else
//                                                                        begin
//
//
//                                                                          //    result :=   10 * Floor((varDenture * 0.2) / 10);
//
//
//                                                                                              //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                    if   (vardate >= '2018-07-01') then
//                                                                                    begin
//                                                                                        result := 10 * Floor((varDenture * 0.1) / 10);
//
//
//                                                                                    end
//                                                                                    else
//                                                                                    begin
//
//                                                                                       result := 10 * Floor((varDenture * 0.2) / 10);
//                                                                                   end;
//
//
//
//                                                                        end;
//
//                                                               end
//                                                               else
//                                                               begin
//
//                                                                    result := 0;
//                                                               end;
//
//                                                       end
//                                                       else
//                                                            if (varJongbeul = 3) or (varJongbeul = 2)   then //보호2종  , 보호1종
//                                                            begin
//                                                                 //원외처방전 발행 유무에 따라
//                                                                 //2012.7.1  틀니 보호2종은 30% 본인부담
//                                                                 if ((artTeeth = true)
//                                                                  or (AfterArtTeeth = true)
//                                                                   or (implTeeth =true))
//                                                                   and (anotherTeeth = true) then
//                                                                 begin
//
//                                                                      if boolWonwe then
//                                                                      begin
//
//                                                                         if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                            begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                                  if  (varJongbeul = 3) then
//                                                                                  begin
//                                                                                   result :=
//                                                                                      10 * Floor((varDenture * 0.15) / 10) +
//                                                                                      1000 + (10 *
//                                                                                      Floor(Round2(varCt * Round2(15 / 100,
//                                                                                      -2), 0)
//                                                                                      / 10))
//                                                                                  end
//                                                                                  else
//                                                                                  begin
//                                                                                       if (varJongbeul = 2)   then
//                                                                                         result :=
//                                                                                      10 * Floor((varDenture * 0.05) / 10) +
//                                                                                      1000 + (10 *
//                                                                                      Floor(Round2(varCt * Round2(15 / 100,
//                                                                                      -2), 0)
//                                                                                      / 10));
//                                                                                   end;
//                                                                            end
//                                                                            else
//                                                                            begin
//
//                                                                                   //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                     if   (vardate >= '2018-07-01') then
//                                                                                    begin
//
//                                                                                       if  (varJongbeul = 3) then //보호2종
//                                                                                              result :=
//                                                                                                  10 * Floor((varDenture * 0.2) / 10) +
//                                                                                                  1000 + (10 *
//                                                                                                  Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                  -2), 0)
//                                                                                                  / 10))
//                                                                                                  else if  (varJongbeul = 2) then //보호1종
//                                                                                                result:=   10 * Floor((varDenture * 0.1) / 10) +
//                                                                                                  1000 + (10 *
//                                                                                                  Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                  -2), 0)
//                                                                                                  / 10));
//                                                                                    end
//                                                                                    else
//                                                                                    begin
//                                                                                            if  (varJongbeul = 3) then
//                                                                                              result :=
//                                                                                                  10 * Floor((varDenture * 0.3) / 10) +
//                                                                                                  1000 + (10 *
//                                                                                                  Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                  -2), 0)
//                                                                                                  / 10))
//                                                                                                  else if  (varJongbeul = 2) then
//                                                                                                result:=   10 * Floor((varDenture * 0.2) / 10) +
//                                                                                                  1000 + (10 *
//                                                                                                  Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                  -2), 0)
//                                                                                                  / 10));
//
//                                                                                    end;
//                                                                            end;
//
//
//
//                                                                      end
//                                                                      else
//                                                                      begin
//
//                                                                          if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                          begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                                if  (varJongbeul = 3) then
//                                                                                begin
//                                                                                 result :=
//                                                                                      10 * Floor((varDenture * 0.15) / 10) +
//                                                                                      1500 + (10 *                   //ToDo : 1500->1000
//                                                                                      Floor(Round2(varCt * Round2(15 / 100,
//                                                                                      -2), 0)
//                                                                                      / 10))
//                                                                               end
//                                                                               else    if  (varJongbeul = 2) then
//                                                                               begin
//
//                                                                                           result :=
//                                                                                                10 * Floor((varDenture * 0.05) / 10) +
//                                                                                                1500 + (10 *        //ToDo : 1500->1000
//                                                                                                Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                -2), 0)
//                                                                                                / 10))
//
//                                                                                end;
//                                                                           end
//                                                                           else
//                                                                           begin
//
//                                                                                   //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                   if   (vardate >= '2018-07-01') then
//                                                                                   begin
//
//                                                                                             if  (varJongbeul = 3) then
//                                                                                             begin
//                                                                                                  result :=
//                                                                                                      10 * Floor((varDenture * 0.2) / 10) +
//                                                                                                      1500 + (10 *
//                                                                                                      Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                      -2), 0)
//                                                                                                      / 10))
//                                                                                              end
//                                                                                              else
//                                                                                              if  (varJongbeul = 2) then
//                                                                                              begin
//                                                                                                    result :=
//                                                                                                    10 * Floor((varDenture * 0.1) / 10) +
//                                                                                                    1500 + (10 *
//                                                                                                    Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                    -2), 0)
//                                                                                                    / 10));
//                                                                                              end;
//                                                                                   end
//                                                                                   else
//                                                                                   begin
//                                                                                         if  (varJongbeul = 3) then
//                                                                                         begin
//                                                                                              result :=
//                                                                                                  10 * Floor((varDenture * 0.3) / 10) +
//                                                                                                  1500 + (10 *
//                                                                                                  Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                  -2), 0)
//                                                                                                  / 10))
//                                                                                          end
//                                                                                          else
//                                                                                          if  (varJongbeul = 2) then
//                                                                                          begin
//                                                                                                result :=
//                                                                                                10 * Floor((varDenture * 0.2) / 10) +
//                                                                                                1500 + (10 *
//                                                                                                Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                -2), 0)
//                                                                                                / 10));
//                                                                                          end;
//                                                                                   end;
//                                                                           end;
//
//                                                                      end;
//
//                                                                      //본담액(처방전 없으면1500/있을땐 1000원만)
//                                                                      varjangeGeum := 0;
//                                                                      // 2008.4.1 시행 (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 1,000원
//                                                                      if (nBoMan = 0) and (varDate > '2008-03-31') then
//                                                                      begin
//
//                                                                          if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                          begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                                               if  (varJongbeul = 3) then
//                                                                            result :=
//                                                                                10 * Floor((varDenture * 0.15) / 10) +
//                                                                                1000 + (10 *
//                                                                                Floor(Round2(varCt * Round2(15 / 100,
//                                                                                -2), 0)
//                                                                                / 10))
//                                                                                else
//                                                                                  if  (varJongbeul = 2) then
//                                                                                 result :=
//                                                                                10 * Floor((varDenture * 0.05) / 10) +
//                                                                                1000 + (10 *
//                                                                                Floor(Round2(varCt * Round2(15 / 100,
//                                                                                -2), 0)
//                                                                                / 10));
//                                                                          end
//                                                                          else
//                                                                          begin
//
//                                                                                   //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                   if   (vardate >= '2018-07-01') then
//                                                                                   begin
//                                                                                     if  (varJongbeul = 3) then
//                                                                                     begin
//                                                                                        result :=
//                                                                                          10 * Floor((varDenture * 0.2) / 10) +
//                                                                                          1000 + (10 *
//                                                                                          Floor(Round2(varCt * Round2(15 / 100,
//                                                                                          -2), 0)
//                                                                                          / 10))
//                                                                                    end
//                                                                                    else
//                                                                                    if  (varJongbeul = 2) then
//                                                                                    begin
//                                                                                        result :=
//                                                                                          10 * Floor((varDenture * 0.1) / 10) +
//                                                                                          1000 + (10 *
//                                                                                          Floor(Round2(varCt * Round2(15 / 100,
//                                                                                          -2), 0)
//                                                                                          / 10));
//                                                                                    end;
//                                                                                  end
//                                                                                  else
//                                                                                  begin
//                                                                                     if  (varJongbeul = 3) then
//                                                                                     begin
//                                                                                        result :=
//                                                                                          10 * Floor((varDenture * 0.3) / 10) +
//                                                                                          1000 + (10 *
//                                                                                          Floor(Round2(varCt * Round2(15 / 100,
//                                                                                          -2), 0)
//                                                                                          / 10))
//                                                                                    end
//                                                                                    else
//                                                                                    if  (varJongbeul = 2) then
//                                                                                    begin
//                                                                                        result :=
//                                                                                          10 * Floor((varDenture * 0.2) / 10) +
//                                                                                          1000 + (10 *
//                                                                                          Floor(Round2(varCt * Round2(15 / 100,
//                                                                                          -2), 0)
//                                                                                          / 10));
//                                                                                    end;
//
//
//                                                                                  end;
//                                                                           end;
//                                                                      end;
//                                                                 end
//                                                                 else
//                                                                      if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                                      begin
//
//                                                                            if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                            begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                                  if  (varJongbeul = 3) then
//                                                                                    result :=
//                                                                                      10 * Floor((varDenture * 0.15) / 10)
//                                                                                      else
//                                                                                      if  (varJongbeul = 2) then
//                                                                                    result :=
//                                                                                      10 * Floor((varDenture * 0.05) / 10);
//
//                                                                            end
//                                                                            else
//                                                                            begin   //임플란트 보호2종 30%
//
//
//                                                                                   //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                   if   (vardate >= '2018-07-01') then
//                                                                                   begin
//
//                                                                                          if  (varJongbeul = 3) then
//                                                                                            result :=
//                                                                                            10 * Floor((varDenture * 0.2) / 10)
//                                                                                            else      //임플란트 보호1종 20%
//                                                                                             if  (varJongbeul = 2) then
//                                                                                              result :=
//                                                                                            10 * Floor((varDenture * 0.1) / 10)
//
//                                                                                    end
//                                                                                    else
//                                                                                    begin
//                                                                                             if  (varJongbeul = 3) then
//                                                                                            result :=
//                                                                                            10 * Floor((varDenture * 0.3) / 10)
//                                                                                            else      //임플란트 보호1종 20%
//                                                                                             if  (varJongbeul = 2) then
//                                                                                              result :=
//                                                                                            10 * Floor((varDenture * 0.2) / 10)
//
//
//
//
//
//                                                                                   end;
//
//                                                                            end;
//
//
//
//
//                                                                      end
//                                                                      else
//                                                                      begin
//
//                                                                           if boolWonwe then
//                                                                           begin
//                                                                                if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                                begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                                 result := 1000 + (10 *
//                                                                                     Floor(Round2(varCt * Round2(15 / 100,
//                                                                                     -2), 0)
//                                                                                     / 10));
//
//                                                                                end
//                                                                                else
//                                                                                begin
//                                                                                  result := 1000 + (10 *
//                                                                                     Floor(Round2(varCt * Round2(15 / 100,
//                                                                                     -2), 0)
//                                                                                     / 10));
//                                                                                end;
//
//                                                                           end
//                                                                           else
//                                                                           begin
//                                                                                result := 1500 + (10 *
//                                                                                     Floor(Round2(varCt * Round2(15 / 100,
//                                                                                     -2), 0)
//                                                                                     / 10));
//                                                                           end;
//                                                                           //본담액(처방전 없으면1500/있을땐 1000원만)
//                                                                           varjangeGeum := 0;
//                                                                           // 2008.4.1 시행 (처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 1,000원
//                                                                           if (nBoMan = 0) and (varDate > '2008-03-31') then
//                                                                                result := 1000 + (10 *
//                                                                                     Floor(Round2(varCt * Round2(15 / 100,
//                                                                                     -2), 0)
//                                                                                     / 10));
//                                                                      end;
//                                                                 //*****
//                                                            end
//                                                            else
//                                                                 if varJongbeul = 5 then //보호4종
//                                                                 begin
//                                                                      result := 0;
//                                                                 end
//                                                                 else
//                                                                      if varJongbeul = 6 then //보호8종
//                                                                      begin
//                                                                           //2012.7.1  틀니 보호8종은 30% 본인부담
//                                                                           if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                                                           begin
//
//                                                                                if (boolWonwe) or (nBoMan = 0) then
//                                                                                begin //(처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 1,000원
//
//                                                                                    if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                                    begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//
//                                                                                     result :=
//                                                                                          100 * Floor((varDenture * 0.15) / 100) +
//                                                                                          250;
//                                                                                    end
//                                                                                    else
//                                                                                    begin
//                                                                                     // result :=
//                                                                                      //    100 * Floor((varDenture * 0.3) / 100) +
//                                                                                      //    250;
//
//                                                                                   //2018-07-01 임플란트○ 건강보험-30%, 차상위1종-10%, 차상위2종-20%, 의료급여1종-10%, 의료급여2종-20%
//                                                                                   if   (vardate >= '2018-07-01') then
//                                                                                   begin
//                                                                                     result :=
//                                                                                          100 * Floor((varDenture * 0.2) / 100) +
//                                                                                          250;
//                                                                                   end
//                                                                                   else
//                                                                                   begin
//                                                                                    result :=
//                                                                                          100 * Floor((varDenture * 0.3) / 100) +
//                                                                                          250;
//
//                                                                                   end;
//
//
//                                                                                    end;
//
//
//
//
//
//
//                                                                                     varjangeGeum := 750;
//                                                                                end
//                                                                                else
//                                                                                begin
//
//                                                                                   if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                                    begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                                                       result :=
//                                                                                          100 * Floor((varDenture * 0.15) / 100) +
//                                                                                          750;
//
//                                                                                    end
//                                                                                    else
//                                                                                    begin
//                                                                                        if   (vardate >= '2018-07-01') then
//                                                                                        begin
//                                                                                          result :=
//                                                                                          100 * Floor((varDenture * 0.2) / 100) +
//                                                                                          750;
//                                                                                       end
//                                                                                       else
//                                                                                       begin
//                                                                                          result :=
//                                                                                             100 * Floor((varDenture * 0.3) / 100) +
//                                                                                              750;
//                                                                                      end;
//
//                                                                                    end;
//                                                                                     varjangeGeum := 750;
//                                                                                end;
//                                                                           end
//                                                                           else
//                                                                                if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                                                begin
//
//                                                                                  if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                                    begin  //틀니 본인부담 보험30% 차상위 C 5%  E, F 15%  보호1종 5% 보호2종 15%
//                                                                                     result :=
//                                                                                          100 * Floor((varDenture * 0.15) / 100);
//                                                                                    end
//                                                                                    else
//                                                                                    begin
//
//                                                                                        if   (vardate >= '2018-07-01') then
//                                                                                        begin
//                                                                                               result :=
//                                                                                              100 * Floor((varDenture * 0.2) / 100);
//                                                                                       end
//                                                                                        else
//                                                                                        begin
//                                                                                            result :=
//                                                                                              100 * Floor((varDenture * 0.3) / 100);
//                                                                                          end;
//                                                                                    end;
//                                                                                end
//                                                                                else
//                                                                                begin
//
//                                                                                     if (boolWonwe) or (nBoMan = 0) then
//                                                                                     begin //(처방전미발행시 약품사용없으면(리도카인,주사약도 포함) 1,000원
//                                                                                          result := 250;
//                                                                                          varjangeGeum := 750;
//                                                                                     end
//                                                                                     else
//                                                                                     begin
//                                                                                          result := 750;
//                                                                                          varjangeGeum := 750;
//                                                                                     end;
//                                                                                end;
//                                                                           //*****
//
//                                                                      end
//                                                                      else //일반
//                                                                      begin
//                                                                           result := varChong;
//                                                                      end;
//          end;
//
//     if varGongSang = true then //공상이면 본인부담 = 0
//          result := 0;
//
//     if varChong = 0 then //총진료비=0 이면 본인=0
//          result := 0;
//
//
//
//
//  {   //청구액 = 총진료 - 장애기금 - 본인부담 + 토요가산금
//      varChung :=
//           varChong
//             -  Round(varjangeGeum)
//             - result;  //본인부담금
//
//   }
//
//
//end;



procedure Tjumgum_f.calcSatGasanGeum(hkind:string; // 토요가산금 계산
                       varDate : string;  //YYYY-MM-DD
                       varTime : string;  //hh:mm:ss
                       varChojae : integer;
                       varAge : integer;
                       isSat:boolean);   //토요일여부 - 토요가산적용

begin
     if hkind = '병원' then
     begin
          isSat := false;
          isSat := false;
          SatGasangeum := 0;
          SatGasangeum2 := 0;
     end
     else
     begin

          //토요가산
         if DayOfWeek(strtodate(varDate)) = 7 then //토요일만 계산
         begin

              //     if  chbYagan.Checked  = false then
              //       cbSatMorningGasan.checked := true
              //     else
              //       cbSatMorningGasan.checked := false;


              if (varDate >= '2013-10-01' )   and
                (varDate <= '2014-09-30' )
              then
              begin


                  SatGasangeum := GetJinchalRyo_SatGasan(hKind,
                                            varChojae + 1,
                                            varAge,
                                            strtoDate(varDate),
                                            false,
                                            false,
                                            false,
                                            false,
                                             false );

                  SatGasangeum2 := SatGasangeum;

              end
              else

              //      if     ( varDate = now )   and   (  formatDateTime('hh:mm:ss', now ) <= '12:00:00') then
              //            if     varTime  <= '12:00:00' then
                     if     varTime  >= '00:00:00' then

                         isSat := true;


                    if    isSat = true then
                    begin
                         if (varDate >= '2014-10-01' )   and
                          (varDate <= '2015-09-30' )
                            then
                            begin
                                           SatGasangeum := GetJinchalRyo_SatGasan(hkind, varChojae + 1,
                                                    varAge, strtodate(varDate),
                                                    false,
                                            false,
                                            false,
                                            false,
                                             false);

                                           SatGasangeum2 := satGasangeum div 2;


                            end
                            else
                                 if (varDate >= '2015-10-01' )
                                 then
                                 begin
                                            SatGasangeum := GetJinchalRyo_SatGasan(hkind, varChojae+1,
                                                    varAge, strtodate(varDate),
                                                    false,
                                            false,
                                            false,
                                            false, false);

                                             SatGasangeum2 := 0;


                                 end;
                  end;
         end
         else
         begin
           isSat := false;
           SatGasangeum := 0;
           SatGasangeum2 := 0;
         end;
     end;
end;

function Tjumgum_f.GetJinchalRyo(varjinchalRyoCode: string;
  dWorkDate: string): Integer;
begin
  result := 0;
{  with dm_f.sqlTemp14 do
  begin
    close;
    sql.Clear;
    sql.Add('getsugabasic :su_key,:jin_day');
    paramByName('Su_Key').AsString := varjinchalRyoCode;
    paramByName('jin_day').AsString := dWorkDate;
    open;
    if not isEmpty then
    begin
      result := fieldByName('bo_dan').AsInteger;
    end;
  end;
        }
    with dm_f.sqlTemp14 do
     begin
         { Close;
          Sql.Clear;
          Sql.Add('select * from sugabasic where su_key= :su_key and su_apply =:jin_day');
          ParamByName('Su_Key').AsString := varjinchalRyoCode;
          //su_apply는 2013-01-01이란 기준일을 가지고 있다.
          //진찰료는 해마다 1월1일 결정된다.
          //기준일은 진료일 해의 1월1일이다.
          ParamByName('jin_day').AsString :=copy(dWorkDate,1,4)+ '-01-01' ;
          Open;
          if not isEmpty then
          begin
               Result := FieldByName('bo_dan').AsInteger;
          end
          else
          begin
        }      Close;
               Sql.Clear;
               Sql.Add('select top 1 * from suga_history where su_key= :su_key and  su_apply<=:jin_day order by su_apply desc ');
               ParamByName('Su_Key').AsString := varjinchalRyoCode;
               ParamByName('jin_day').AsString :=dWorkDate; //copy(dWorkDate,1,4)+ '-01-01';// FormatDateTime('YYYY-01-01',  dWorkDate);
               Open;
               if not isEmpty then
               begin
                    Result := FieldByName('bo_dan').AsInteger;
               end
               else
               begin
                    Result := 0;
               end;
         // end;
     end;





end;


function  Tjumgum_f.GetJinchalRyo_SatGasan(hKind:string;
     nChoJae: Integer;  //초재구분
     nAge: Integer;      //연령
     dWorkDate: TdateTime;   //진료일
     varJange :boolean ; //장애구분
     varGumjin : boolean; //일반검진
     varFirst : boolean; //생애전환기
     varYongUa : boolean;//영유아검진
     varYagan : boolean) : integer; //야간)

var
     Code, San1, San2, San3, codekibon: string;
begin

     if DayOfWeek(dWorkDate) <> 7 then //토요일만 계산
     begin
        result:=0;
        exit;
     end;

     if  dWorkDate < strtodate('2013-10-01') then //2013-10-01 이후
     begin
        result:=0;
        exit;
     end;

     if varYagan = true then
     begin
        result:=0;
        exit;
     end;


     if hKind = '병원' then
     begin
        //'AA109030' 토요가산 코드가 없다...
        result:=0;
        exit;
     end;

     San3 := '0';

     San1 := '0';

     // 보호8종이라고 무조건 장애가산을 하지 않는다.
     //(장애인수첩을 받은 정신지체,뇌성마비만 됨) 2011.2.1
     if varJange = true then
          San1 := '9'; //뇌성마비 장애인


     if nAge < 6 then
          San1 := '6'; // 소아가산

     San2 := '3'; // 토요가산


     if ((nChojae = 1) or (nChojae = 3)) then  //초진
     begin
          if hKind = '병원' then
               code := 'AA109'
          else
               if hKind = '종합병원' then
                    code := 'AA157'
               else
                    code := 'AA100';
     end
     else
          if ((nChojae = 2) or (nChojae = 4)) then  //재진
          begin
               if hKind = '병원' then
                    code := 'AA209'
               else
                    if hKind = '종합병원' then
                         code := 'AA257'
                    else
                         code := 'AA200';
          end;

     codekibon := code;
     Code := Code + San1 + San2 + San3;


     if Copy(code, 6, 3) = '000' then
          Code := Copy(Code, 1, 5);

     // San1 := '9'; //뇌성마비 장애인
     // San1 := '6'; // 소아가산
     // San2 := '1'; //심야가산
     // San2 := '5'; //공휴일가산
     //san1     san2      san3
     //0        0          0
     //9 장애   1 심야     2 영유아검진
     //6 소아   5 휴일     3 일반검진
     //                    4 생애전환기

     if (varYongUa ) and (San1 = '6') then //영유아 건강검진 당일 진찰
     begin
          san3 := '2';
          if (nChojae = 1) or (nChojae = 2) or (nChojae = 3) or (nChojae = 4) then
               Code := codekibon + San1 + San2 + San3; //602, 612, 652
     end
     else
          if varGumjin then //일반건강검진 당일 진찰
          begin
               san3 := '3';
               if (nChojae = 1) or (nChojae = 2) or (nChojae = 3) or (nChojae = 4) then
                    Code := codekibon + San1 + San2 + San3; //003, 013, 053; 903, 913, 953
          end
          else
               if varFirst then //생애전환기 건강검진 당일 진찰
               begin
                    san3 := '4';
                    if (nChojae = 1) or (nChojae = 2) or (nChojae = 3) or (nChojae = 4) then
                         Code := codekibon + San1 + San2 + San3; // 004, 014, 054; 904, 914, 954
               end;


           with dm_f.sqlTemp14 do
          begin
             { Close;
              Sql.Clear;
              Sql.Add('select * from sugabasic where su_key= :su_key ');
              ParamByName('Su_Key').AsString := Code;
              Open;
              if not isEmpty then
                 begin
                      Result :=  FieldByName('bo_dan').AsInteger;
                 end
                 else
                     Result := 0;  }


               Close;
               Sql.Clear;
               Sql.Add('select top 1 * from suga_history where su_key= :su_key and  su_apply<=:jin_day order by su_apply desc ');
               ParamByName('Su_Key').AsString :=Code;// varjinchalRyoCode;
               ParamByName('jin_day').AsString :=  FormatDateTime('YYYY-MM-DD',  dWorkDate);  //copy(dWorkDate,1,4)+ '-01-01';// FormatDateTime('YYYY-01-01',  dWorkDate);
               Open;
               if not isEmpty then
               begin
                    Result := FieldByName('bo_dan').AsInteger;
               end
               else
               begin
                    Result := 0;
               end;
          end;


end;


//function Tjumgum_f.MakeJinchalRyoCode(nChoJae: Integer; nAge: Integer;
//  dWorkDate: TDateTime; jange: boolean; yongua: boolean; ilban: boolean;
//  ifirst: boolean; isSat: boolean = false): string;
//var
//  Code, San1, San2, San3, codekibon: string;
//begin
//  result := 'AA154'; // 초진진찰료코드
//  San3 := '0';
//
//  San1 := '0';
//
//  // 보호8종은(장애인수첩을 받은 정신지체,뇌성마비만 됨) 2011.2.1
//
//  if jange = true then
//    San1 := '9'; // 뇌성마비 장애인
//  if nAge < 6 then
//    San1 := '6'; // 소아가산
//
//  if nChojae in [1,2,5,6]  then
//  begin
//    San2 := '0';
//  end
//  else
//  begin
//    San2 := '1'; // 심야가산
//  end;
//
//  if DayOfWeek(dWorkDate) = 1 then
//  begin
//    San2 := '5'; // 휴일가산
//  end
//  else
//  begin
//    with dm_f.sqlTemp14 do
//    begin
//      close;
//      sql.Clear;
//      sql.Add('select * from gonghyu where gh_day=:gh_day');
//      paramByName('gh_day').AsString := formatDatetime('yyyy-mm-dd', dWorkDate);
//      open;
//      First;
//      if not isEmpty then
//      begin
//        San2 := '5'; // 공휴일가산
//      end;
//    end;
//
//  end;
//
//  if isSat = true then // 토요가산
//    San2 := '3';
//
//  if nChojae in [1,3,7] then//if ((nChoJae = 1) or (nChoJae = 3)) then
//  begin
//    if configvalue.varGubun = '병원' then // 병원
//      Code := 'AA109'
//    else if configvalue.varGubun = '2' then
//      Code := 'AA157' // 종합전문요양기관
//    else
//      Code := 'AA154'; // 의원
// //     Code := 'AA100'; // 치과의원
//  end
//  else if  nChojae in [2,4,8]  then// ((nChoJae = 2) or (nChoJae = 4)) then
//  begin
//    if configvalue.varGubun = '병원' then   //'1'
//      Code := 'AA209'
//    else if configvalue.varGubun = '2' then
//      Code := 'AA257'
//    else
//      Code := 'AA254'; // 의원
// //     Code := 'AA100'; // 치과의원
////  end
////  else
////  begin
////    if configvalue.varGubun = '병원' then // 치과병원
////      Code := 'AA109'
////    else if configvalue.varGubun = '2' then
////      Code := 'AA157' // 종합전문요양기관
////    else
////      Code := 'AA100'; // 의원
//// //     Code := 'AA100'; // 치과의원
//
//  end
//  else
//  begin
//    result:='';
//  end;
//
//  codekibon := Code;
//
//  // ***********  2011.7   영유아 건강검진 당일
//  // ***********  2012.4   일반 건강검진 당일  , 생애전환기
//  // San1 := '9'; //뇌성마비 장애인
//  // San1 := '6'; // 소아가산
//  // San2 := '1'; //심야가산
//  // San2 := '5'; //공휴일가산
//  // san1     san2      san3
//  // 0        0          0
//  // 9 장애   1 심야     2 영유아검진
//  // 6 소아   5 휴일     3 일반검진
//  // 4 생애전환기
//  if (yongua = true) and (San1 = '6') then // 영유아 건강검진 당일 진찰
//    San3 := '2';
//  if ilban = true then // 일반건강검진 당일 진찰
//    San3 := '3';
//  if ifirst = true then // 생애전환기 건강검진 당일 진찰
//    San3 := '4';
//
//  if nChojae in[1,2,3,4,7,8] then     //초진, 재진, 심초, 심재, 초+심재, 재+심재
//      result := codekibon + San1 + San2 + San3; // 602, 612, 652
//
//  if copy(result, 6, 3) = '000' then
//      result := copy(result, 1, 5);
//
//end;




procedure Tjumgum_f.//LoadInputTeakJung(TeakRyeCode:string; su_Key: string);
               LoadInputTeakJung(
                           chart       :string;
                           jubsu_id    :string;
                           jin_Day    : string;
                           docID      :string;
                           TeakRyeCode:string;
                           jin_skey   :string;
                           su_Key     : string;
                           julNo      : integer);
begin
//              if not Assigned(InputTeakJung_f) then
//                InputTeakJung_f := TInputTeakJung_f.Create(application);
//
//              if not Assigned(InputTeakJung_f) then
//                InputTeakJung_f := TInputTeakJung_f.Create(application);
//
//                 if  copy(TeakRyeCode,1,1) <> 'J' then
//                 begin
//                     InputTeakJung_f.PageControl1.ActivePageIndex:= 0;
//                     InputTeakJung_f.LoadTJungCode(0);
//
//                 end
//                 else
//                 begin
//                     InputTeakJung_f.PageControl1.ActivePageIndex:= 1;
//                     InputTeakJung_f.LoadTJungCode(1);
//                 end;
//
//
//                 InputTeakJung_f.cbTJungNeyuk.ItemIndex :=
//                    InputTeakJung_f.cbTJungNeyuk.ComboItems.IndexInColumnOf(0, TeakRyeCode )  ;
//
//                 InputTeakJung_f.memNeyuk.Text  := '['+
//                  InputTeakJung_f.cbTjungNeyuk.ColumnItems[
//                   InputTeakJung_f.cbTjungNeyuk.ItemIndex, 0] +']'
//                   +  InputTeakJung_f.cbTjungNeyuk.ColumnItems[
//                    InputTeakJung_f.cbTjungNeyuk.ItemIndex, 1];
//
//                 InputTeakJung_f.memNeyukExample.Text  :=
//                    LoadExample_Teakrye(InputTeakJung_f.cbTjungNeyuk.ColumnItems[
//                   InputTeakJung_f.cbTjungNeyuk.ItemIndex, 0] );
//
//
//                InputTeakJung_f.lblSuKey.Caption := trim(su_Key);
//
//
//                InputTeakJung_f.Show;


              if not Assigned(InputTeakJung_f) then
                InputTeakJung_f := TInputTeakJung_f.Create(application);

                 if  copy(TeakRyeCode,1,1) <> 'J' then
                 begin
                     InputTeakJung_f.PageControl1.ActivePageIndex:= 0;
                     InputTeakJung_f.LoadTJungCode(0);

                 end
                 else
                 begin
                     InputTeakJung_f.PageControl1.ActivePageIndex:= 1;
                     InputTeakJung_f.LoadTJungCode(1);
                 end;


                 InputTeakJung_f.cbTJungNeyuk.ItemIndex :=
                    InputTeakJung_f.cbTJungNeyuk.ComboItems.IndexInColumnOf(0, TeakRyeCode )  ;

                 InputTeakJung_f.memNeyuk.Text  := '['+
                  InputTeakJung_f.cbTjungNeyuk.ColumnItems[
                   InputTeakJung_f.cbTjungNeyuk.ItemIndex, 0] +']'
                   +  InputTeakJung_f.cbTjungNeyuk.ColumnItems[
                    InputTeakJung_f.cbTjungNeyuk.ItemIndex, 1];

                InputTeakJung_f.memNeyukExample.Text  :=
                    LoadExample_Teakrye(InputTeakJung_f.cbTjungNeyuk.ColumnItems[
                   InputTeakJung_f.cbTjungNeyuk.ItemIndex, 0] );



                InputTeakJung_f.lblChart.Caption := trim(chart);

                InputTeakJung_f.lblSuKey.Caption := trim(su_Key);

                InputTeakJung_f.edtSugacode.text := trim(su_Key);
                InputTeakJung_f.edtcode.text := trim(TeakRyeCode);

                InputTeakJung_f.lblDocID.Caption :=  DocID;//
              //      jinryo_f.cbDoc.ColumnItems[jinryo_f.cbDoc.itemindex, 4]; //ID


                InputTeakJung_f.lblJinsKey.Caption := jin_skey;
                InputTeakJung_f.lblJubsuID.Caption := jubsu_id;
                InputTeakJung_f.lblJinDay.Caption  := jin_day;

                InputTeakJung_f.lblJulno.Caption  := inttostr(julNo);


                loadTjungHx(InputTeakJung_f.grdNeyuk,
                  trim(chart), jin_day, jubsu_id);

                InputTeakJung_f.Show;

end;



// jinryo_s 저장  ============================================================

procedure Tjumgum_f.insertjin_s(
  JubsuID : string;
  ADate: TDateTime; AChart: string; aTeam: string;
  aDoc: string; isInpat:string; aGrid: TAdvStringGrid; saveKind:integer = 1);// grdJx2   saveKind 0: save 1: 보류
//
var
  ARow: Integer;
  AG_Key: string;

  isNew: Boolean; // insert or update
  sId: string;

  sMemo: string;
  varCharts: string;
  varPortion: string;
  varPortion1: string;
  varPortion2: string;
  varPortion3: string;
  varPortion4: string;

  maxOrderNo: Integer;

  i: Integer;
  strOrKey: string;
  strTempKey: string;
  strDescript: string;
  FormInit: TIniFile;
  Path: string;

  CurrentFile, todayDate, varFirstD, varLastD: string;
  f: textfile;

  varP1, varP2, varP3, varP4, varSu_Key: string;
  varIorder: Integer;
  jinsKey: string;

//  risResult: TRisResult;

  nowTime: TDateTime;

  // orderinfo Save
  ikind: Integer;
  orderID: string;
  accessionID: string;
  jin_sid: string;
  chart: string;
  hname: string;
  ename: string;
  birth: string;
  gender: string;
  age: string;
  su_kor_name: string;
  su_eng_name: string;
  doctor: string;
  sector: string;
  order_day: string;
  order_time: string;
  su_key: string;
  jin_ilsu: string;
  reserve_time: string;
  emergency: string;
  sect: string;
  modality: string;
  studyID: string;
  referHospCode: string;

  ms: TMemorystream;

   docName : string;
//   doc_code, treatRoom: string;

   stat2: boolean;
   nRadioIdx : integer;

   WsuGu3: string;

   k : integer;
   teakjungCode: string;

   isWonwe : boolean;
begin



      isWonwe := false;

//      doc_code := '';//cbDoc.ColumnItems[cbDoc.itemindex, 4];
//      treatRoom := '';//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];




  // jinryo_s에 데이터 넣을 때 chart_s에 데이터 넣고
  // jinryo_s에 데이터 지울 때 chart_s에 데이터 지운다.
  // jinryo_o에서 치아번호를 가져가고 =>치아번호 컨버젼.
  // jinryo_s에서 치료내역을 가져간다.

  if (AChart <> '') then
  begin

    with Dm_f.sqlJinryo do
      try
        close;
        SQL.Clear;
        SQL.Add('select * from cMemo where jin_day=:jin_day');
        SQL.Add('and chart=:chart  and team=:team and isInpat=:isInpat');
        paramByName('jin_day').asString := FormatDateTime('YYYY-MM-DD', ADate);
        paramByName('chart').asString := AChart;
        paramByName('team').AsString := treatRoom;
        paramByName('isInpat').AsString := isInpat;
        open;
        First;
        if isEmpty then
        begin
          isNew := true;
          sMemo := '';
        end
        else
        begin
          isNew := false;
          sMemo := fieldByname('cMemo').asString;
        end;

        if memChungGuMemo.text <> '' then // 심사참고가 있는경우
        begin
          try
            ms := TMemorystream.Create;
            memChungGuMemo.Lines.SaveToStream(ms);
          //  memChungGuMemo.SaveToStream(ms);

            if isNew then
            begin
              SQL.Add(' insert into cMemo ( chart, jin_day, cmemo, team, isInPat) ' +
                '            values (:Chart,:Jin_day,:cmemo, :team, :isInPat)');
            end
            else
            begin
              SQL.Add(' update cMemo          '
                + '    set cmemo=:cmemo       '
                + '    where chart=:Chart     '
                + '    and jin_day=:Jin_day and team=:team and isInPat=:isInPat');
            end;
            paramByName('jin_day').asString :=
              FormatDateTime('YYYY-MM-DD', ADate);
            paramByName('Chart').asString := AChart;
            // ParamByName('cmemo').AsString :=  memChungGuMemo.text;
            paramByName('cmemo').LoadFromStream(ms, ftBlob);
            paramByName('team').AsString := treatRoom;
            paramByName('isInpat').AsString := isInpat;

            execsql;
          finally
            ms.Free;
          end;

        end
        else if (sMemo <> '') and (memChungGuMemo.text = '') then
        // 메모를 delete 로 지운경우
        begin

          SQL.Add(' delete from cMemo where Chart=:Chart and jin_day=:Jin_day  and team=:team and isInPat=:isInPat  ');
          paramByName('jin_day').asString :=
            FormatDateTime('YYYY-MM-DD', ADate);
          paramByName('Chart').asString := AChart;
          paramByName('team').asString  := treatRoom;
          paramByName('isInpat').AsString := isInpat;

          execsql;

        end;

      except
        on E: Exception do
        begin
          Showmessage(E.Message + '[cMemo_f : BitBtn1Click]');
        end;
      end;
  end;

  FormInit.Free;

  // jinryo_s , jinryo_o 를 저장한다

  // Jinryo_O 저장 시작
  for ARow := 1 to grdSangByung.RowCount - 1 do
  begin
    if grdSangByung.Cells[6, ARow] <> '' then // 상병코드가 있으면
    begin

       grdSangByung.GetCheckBoxState(0, ARow, stat2);

 //      nRadioIdx := 0;
     //  stat2:= grdSangByung.GetRadioIdx(0, ARow, nRadioIdx) ;
      stat2:= grdSangByung.IsRadioButtonChecked(0, ARow) ;
      with Dm_f.sqlJinryo do
      begin

        close;
        SQL.Clear;
        SQL.text := 'select id from jinryo_o' + #10#13 + 'where id = ' + '''' +
          grdSangByung.Cells[18, ARow] + '''';
        open;

        if isEmpty then
        begin // insert

          isNew := true;

        end
        else
        begin
          isNew := false;

        end;

        if isNew = true then
        begin
          close;
          SQL.Clear;
          SQL.Add('insert jinryo_o');
          SQL.Add('(chart,  jin_day, jin_order ,p1, p2, p3, p4,Jubsu_ID,');
          SQL.Add(' s_key1, s_key2, s_key3, kwamok, sang1, sang2, sang3, isInPat, ');
          SQL.Add(' Doc_code, myunhu, team, tjung, sDay, fDay, jusang) values');
          SQL.Add('(:chart,:jin_day,:jin_order,:p1,:p2,:p3,:p4,:Jubsu_ID,');
          SQL.Add(':s_key1,:s_key2,:s_key3,:kwamok,:sang1,:sang2,:sang3,:isInPat,');
          SQL.Add(':Doc_code, :myunhu, :team, :tjung, :sDay, :fDay, :jusang)');

        end
        else
        begin
          close;
          SQL.Clear;
          SQL.text := 'update jinryo_O  set                                      ' + #10#13 +
            'chart=:chart,jin_day=:jin_day,jin_order=:jin_order,  Jubsu_ID=:Jubsu_ID,         ' + #10#13 +
            'p1=:p1,p2=:p2,p3=:p3,p4=:p4, team=:team,  sDay=:sDay, fDay=:fDay,   ' + #10#13 +
            's_key1=:s_key1, myunhu=:myunhu, tjung=:tjung,   isInPat=:isInPat,   ' + #10#13 +
            's_key2 =:s_key2,s_key3=:s_key3, kwamok=:kwamok,sang1=:sang1,        ' + #10#13 +
            ' sang2=:sang2,sang3=:sang3,Doc_code=:Doc_code, jusang=:jusang       ' + #10#13 +
            'where id=:id';
          paramByName('id').asString := grdSangByung.Cells[18, ARow];

        end;

        paramByName('jubsu_id').asString := ma_jubsu_id;
        paramByName('chart').asString := AChart;
        paramByName('team').asString := aTeam;
        paramByName('isInpat').AsString := isInpat;

        paramByName('jin_day').asString := FormatDateTime('YYYY-MM-DD', ADate);
        paramByName('jin_order').asString := trim(grdSangByung.Cells[1, ARow]);
        paramByName('p1').asString := trim(grdSangByung.Cells[2, ARow]);
        paramByName('p2').asString := trim(grdSangByung.Cells[3, ARow]);
        paramByName('p3').asString := trim(grdSangByung.Cells[4, ARow]);
        paramByName('p4').asString := trim(grdSangByung.Cells[5, ARow]);
        paramByName('s_key1').asString := trim(grdSangByung.Cells[6, ARow]);
        paramByName('s_key2').asString := trim(grdSangByung.Cells[7, ARow]);
        paramByName('s_key3').asString := trim(grdSangByung.Cells[8, ARow]);
        paramByName('kwamok').asString := trim(grdSangByung.Cells[9, ARow]);
        paramByName('sang1').asString := trim(grdSangByung.Cells[10, ARow]);
        paramByName('sang2').asString := trim(grdSangByung.Cells[11, ARow]);
        paramByName('sang3').asString := trim(grdSangByung.Cells[12, ARow]);
        paramByName('Doc_code').asString := trim(grdSangByung.Cells[13, ARow]);
        paramByName('myunhu').asString := trim(grdSangByung.Cells[14, ARow]);
        paramByName('tjung').asString := trim(grdSangByung.Cells[15, ARow]);
        paramByName('sDay').asString := trim(grdSangByung.Cells[16, ARow]);
        paramByName('fDay').asString := trim(grdSangByung.Cells[17, ARow]);

        if stat2= true then
          paramByName('jusang').asString :=  '1'
        else
          paramByName('jusang').asString :=  '0' ;

        execsql;

        if isNew = true then
        begin
          close;
          SQL.Clear;
          SQL.text := ' select @@Identity as sid';
          open;

          sId := fieldByname('sid').asString;
          grdSangByung.Cells[18, ARow] := sId;
        end;

      end;
    end;
  end;

  // jinryo_s저장 시작
//      if copy(varSu_Key, 1, 1) <> 'A' then
//        continue;


  for ARow := 1 to aGrid.RowCount - 1 do
  begin // AGrid = grdJx2
//ToDO : 삭제하는 것은 jinryo_s ==> ModiKind에 'D'
//     if aGrid.Cells[30, ARow] ='D' then
//     begin
//
//    //  DeleteJinryo_s(grdJx2.Cells[18, ARow]);
//      with Dm_f.sqlwork do
//      begin
//        close;
//        SQL.Clear;
//        SQL.Add('delete from jinryo_s where jins_key=:jins_key');
//        paramByName('jins_key').asString := grdJx2.Cells[18, ARow];
//        execsql;
//      end;
//
//      continue;
//     end;

    varSu_Key      := aGrid.Cells[19, ARow];
  // if copy(varSu_Key, 1, 1) <> 'A' then
  // begin
    teakjungCode   := aGrid.Cells[28, ARow];



    WsuGu3 := aGrid.Cells[11, ARow] ;
    if    ((WsuGu3 = '09')     //내복
        or (WsuGu3 = '10'))  //외용
        and (aGrid.Cells[25, Arow] = '' )  then   //Su_GU3=09 조제약 그리고  예외코드 없으면
    begin
       isWonwe := true;
    end;
    //원외투약  조제약이 하나라도 있으면 처방전을 보이자.


    if aGrid.Cells[10, ARow] = '9' then
    begin // su_gu1 이 group
      AG_Key := aGrid.Cells[9, ARow]; // su_key
    end;

    jinsKey := aGrid.Cells[18, ARow];



    with Dm_f.sqlJinryo do
    begin

      close;
      SQL.Clear;
      SQL.text := 'select jins_key from jinryo_s' + #10#13 +
      // 'where jins_key = '+''''+ AGrid.Ints[16, ARow]+'''' ;
        'where jins_key = :jinsKey';
      paramByName('jinsKey').asString := jinsKey;
      open;

      if isEmpty then
      begin
        isNew := true;

      end
      else
      begin
        isNew := false;

      end;







      if isNew = true then
      begin // insert
        close;
        SQL.Clear;
        SQL.Add('insert into jinryo_s (chart,jin_day,Iorder,su_gu1,su_gu2,su_gu3,gub_gu, su_sobulRu,');
        SQL.Add('gasan, jin_soa,jin_simya,su_kor_name,su_key,jin_qty,jin_time, su_eng_Name, tjungcode, ');
        SQL.Add('jin_ilsu,jin_danga,dan_qty,g_check,group_key,sort_key, except_code, jubsu_id,');
        SQL.Add('div,Hwakin_key, modality, user_key, user_name, team, doc_code, isInPat, modiKind, isModChung)');
        SQL.Add(' values (:chart,:jin_day,:Iorder,:su_gu1,:su_gu2,:su_gu3,:gub_gu, :su_sobulru,');
        SQL.Add(':gasan, :jin_soa,:jin_simya,:su_kor_name,:su_key,:jin_qty,:jin_time, :su_eng_Name, :tjungcode,');
        SQL.Add(':jin_ilsu,:jin_danga,:dan_qty,:g_check,:group_key,:sort_key, :except_code,:jubsu_id,');
        SQL.Add(':div,:Hwakin_key, :modality, :user_key, :user_name, :team, :doc_code, :isInPat, :modiKind, :isModChung)');
      end
      else
      begin // Update

        close;
        SQL.Clear;
        SQL.text := 'update jinryo_s  set' + #10#13 +
          'chart= :chart,jin_day= :jin_day,Iorder= :Iorder,su_gu1= :su_gu1,su_gu2= :su_gu2,su_gu3= :su_gu3, gasan=:gasan, team=:team, doc_code=:doc_code, su_eng_Name=:su_eng_Name ,'
          + #10#13 +
          'jin_soa= :jin_soa,gub_gu=:gub_gu, jin_simya= :jin_simya,su_kor_name= :su_kor_name,su_key= :su_key, jin_time=:jin_time, isInPat=:isInPat,jubsu_id=:jubsu_id, isModChung=:isModChung,'
          + #10#13 +
          'jin_qty= :jin_qty,jin_ilsu= :jin_ilsu,jin_danga= :jin_danga,dan_qty= :dan_qty, user_key=:user_key, user_name=:user_name, except_code=:except_code, modiKind=:modiKind, '
          + #10#13 +
          'g_check= :g_check,group_key= :group_key,sort_key= :sort_key,div= :div,Hwakin_key= :Hwakin_key , modality=:modality, su_sobulru=:su_sobulru , tjungcode=:tjungcode'
          + #10#13 + ' where jins_key=:jins_key ';

        paramByName('jins_key').asString := jinsKey; // AGrid.Cells[18,ARow];

      end;

      paramByName('chart').asString := AChart;
      paramByName('jubsu_id').asString := ma_jubsu_id;
      // ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD', ADate) ;
      paramByName('jin_day').AsDateTime := strtodate(aGrid.Cells[22, ARow]);// ADate;
      paramByName('jin_time').AsDateTime := now;
      paramByName('Iorder').asString := aGrid.Cells[14, ARow];
      paramByName('su_kor_name').asString := aGrid.Cells[20, ARow];
      paramByName('su_key').asString := varSu_Key; // AGrid[7, ARow];

      paramByName('team').asString := aTeam;
      paramByName('doc_Code').asString := aDoc;
      // cbDoc.ColumnItems[cbDoc.itemindex, 0];

      paramByName('isInpat').AsString := isInpat;
      paramByName('isModChung').AsString := '1';



      paramByName('gub_gu').asString := aGrid.Cells[7, ARow];
      paramByName('gasan').asString := aGrid.Cells[21, ARow];
      paramByName('jin_danga').asString := aGrid.Cells[2, ARow];
      paramByName('jin_qty').asString := aGrid.Cells[3, ARow];

      if aGrid.Cells[11, ARow] = '09' then
      begin // su_gu3  내복
        paramByName('jin_ilsu').asString := aGrid.Cells[16, ARow];
        paramByName('div').asString := aGrid.Cells[4, ARow];
      end
      else
      begin
        paramByName('jin_ilsu').asString := aGrid.Cells[4, ARow];
        paramByName('div').asString := '1';
      end;

      paramByName('dan_qty').asString := aGrid.Cells[5, ARow];

      if aGrid.Cells[0, ARow] = '99' then // 퇴장방지
        paramByName('su_gu1').asString := '0'
      else
        paramByName('su_gu1').asString := aGrid.Cells[10, ARow];

      paramByName('su_gu3').asString := aGrid.Cells[11, ARow];
      paramByName('su_gu2').asString := aGrid.Cells[29, ARow];

      paramByName('jin_soa').asString := aGrid.Cells[12, ARow];
      paramByName('jin_simya').asString := aGrid.Cells[13, ARow];

      paramByName('Hwakin_key').asString := aGrid.Cells[17, ARow];

      paramByName('modality').asString := aGrid.Cells[8, ARow];

      paramByName('user_key').asString := aGrid.Cells[9, ARow];
      paramByName('user_name').asString := aGrid.Cells[1, ARow]; // 명칭

      if aGrid.Cells[10, ARow] = '9' then // Su_Gu1
      begin
        paramByName('g_check').asString := 'G';
        paramByName('group_key').asString := AG_Key;
      end
      else
      begin
        paramByName('g_check').asString := 'S';
        paramByName('group_key').asString := AG_Key;
      end;

      paramByName('sort_key').AsInteger   := ARow;
      paramByName('except_code').AsString := aGrid.Cells[25, ARow];
      paramByName('su_eng_Name').AsString := aGrid.Cells[24, ARow];
      paramByName('su_sobulru').AsString  := aGrid.Cells[27, ARow];
      paramByName('tjungcode').AsString   := aGrid.Cells[28, ARow];

//     if aGrid.Cells[30, ARow] ='D' then
//     begin

      paramByName('modiKind').AsString    := aGrid.Cells[30, ARow];

//     end;

      execsql;

      if isNew = true then
      begin
        close;
        SQL.Clear;
        SQL.text := ' select @@Identity as sid';
        open;

        sId := fieldByname('sid').asString;
        aGrid.Cells[18, ARow] := sId;
      end;

    end;



    nowTime := now;
  // end;
  end;



end;


// 처치버튼 풀어서 grid에 넣기 ................................................

procedure Tjumgum_f.InsertSugaCode(AGroupName,
   AGroupCode: string;
   nAdd: Integer;
   modiKind:string='C';
   aSutak:string='1');
const
  loadSugaList =
//    'select *,                                                                                                                                                     '
//    + #10 + '(select top 1 su_key from suga s where s.user_key= g.SugaCode  and (s.sugu1 <>''삭제'' or s.sugu1 is null )  order by s.su_apply desc ) as su_key,             '
//    + #10 + '(select top 1 su_gu3 from suga s where s.user_key= g.SugaCode  and (s.sugu1 <>''삭제'' or s.sugu1 is null )   order by s.su_apply desc ) as su_gu3,             '
//    + #10 + '(select top 1 su_gu2 from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_gu2,              '
//    + #10 + '(select top 1 su_danwi from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_danwi,          '
//    + #10 + '(select top 1 bo_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as bo_dan,              '
//    + #10 + '(select top 1 ja_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as ja_dan,              '
//    + #10 + '(select top 1 il_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as il_dan,              '
//    + #10 + '(select top 1 dan_qty from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as dan_qty,            '
//    + #10 + '(select top 1 su_gu1 from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_gu1,              '
//    + #10 + '(select top 1 su_soa from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_soa,              '
//    + #10 + '(select top 1 Su_kor_name from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as Su_kor_name,    '
//    + #10 + '(select top 1 Su_Eng_name from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as Su_eng_name,    '
//    + #10 + '(select top 1 su_yagan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_yagan,          '
//    + #10 + '(select top 1 need_chart_memo from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as need_chart_memo,          '
//    + #10 + '(select top 1 gasankind from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as gasankind,          '
//    + #10 + '(select top 1 sutakupche from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as sutakupche,          '
//    + #10 + '(select top 1 sutakgrade from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as sutakgrade,          '
//    + #10 + '(select top 1 gasan      from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as gasan,          '
//    + #10 + '(select top 1 su_extra   from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_extra,          '
//    + #10 + '(select top 1 su_sobulru   from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_sobulru,          '
//    + #10 + '(select top 1 modality from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as modality,          '
//    + #10 + '(select top 1 bo_dan from                                                                                                                                  '
//    + #10 + '      (select bo_dan,su_apply from suga where user_key=g.sugacode and (sugu1 <>''삭제'' or sugu1 is null )                                                      '
//    + #10 + '	      union all                                                                                                                                                '
//    + #10 + '         select bo_dan,su_apply from suga_history where user_key=g.sugacode ) m where   :jin_day >=m.su_apply                                                     '
//    + #10 + '           order by su_apply desc) as Bodan                                                                                                                           '
//    + #10 + ' from groupsuga g                                                                                                                                             '
//    + #10 + ' where groupcode = :Groupcode   and g.grpDgsYon = ''O''                                                                                                          '
//    + #10 + ' order by GroupLine                                                                                                                                            ';



    'select *,                                                                                                                                                     '
    + #10 + '(select top 1 su_key from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_key,             '
    + #10 + '(select top 1 su_gu3 from suga s where s.user_key= g.SugaCode     order by s.su_apply desc ) as su_gu3,             '
    + #10 + '(select top 1 su_gu2 from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_gu2,              '
    + #10 + '(select top 1 su_danwi from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_danwi,          '
    + #10 + '(select top 1 bo_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as bo_dan,              '
    + #10 + '(select top 1 ja_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as ja_dan,              '
    + #10 + '(select top 1 il_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as il_dan,              '
    + #10 + '(select top 1 dan_qty from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as dan_qty,            '
    + #10 + '(select top 1 su_gu1 from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_gu1,              '
    + #10 + '(select top 1 su_soa from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_soa,              '
    + #10 + '(select top 1 Su_kor_name from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as Su_kor_name,    '
    + #10 + '(select top 1 Su_Eng_name from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as Su_eng_name,    '
    + #10 + '(select top 1 su_yagan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_yagan,          '
    + #10 + '(select top 1 need_chart_memo from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as need_chart_memo,          '
    + #10 + '(select top 1 teakryecode from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as teakryecode,          '
    + #10 + '(select top 1 gasankind from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as gasankind,          '
    + #10 + '(select top 1 sutakupche from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as sutakupche,          '
    + #10 + '(select top 1 sutakgrade from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as sutakgrade,          '
    + #10 + '(select top 1 gasan      from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as gasan,          '
    + #10 + '(select top 1 su_extra   from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_extra,          '
    + #10 + '(select top 1 su_sobulru   from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_sobulru,          '
    + #10 + '(select top 1 modality from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as modality,          '
    + #10 + '(select top 1 bo_dan from                                                                                                                                  '
    + #10 + '      (select bo_dan,su_apply from suga where user_key=g.sugacode and (sugu1 <>''삭제'' or sugu1 is null )                                                      '
    + #10 + '	      union all                                                                                                                                                '
    + #10 + '         select bo_dan,su_apply from suga_history where user_key=g.sugacode ) m where   :jin_day >=m.su_apply                                                     '
    + #10 + '           order by su_apply desc) as Bodan                                                                                                                           '
    + #10 + ' from groupsuga g                                                                                                                                             '
    + #10 + ' where groupcode = :Groupcode   and g.grpDgsYon = ''O''                                                                                                          '
    + #10 + ' order by GroupLine                                                                                                                                            ';

var
  Ateeth: TTeeth;
//  sALMan: string; // 의약품관리료
  nDanga, nIOrder, i, SF, SR, SL, HF, HR, HL: Integer;
  rAdd, nQty, nMachui: double;
  suKey, Osang, Osangname, groupkindsel: string;


  ngrdJxRow : integer;

  sealantDay: string;
  // sugu1, sugu2, sugu3: string;
  nPrice: Integer;
  sugacode, suKorName, GroupName: string;
  isBigub: Boolean; // grpInsYon을 확인하여 0: 비급여 true 2: 급여 false
  groupModality: string;

  // 수탁관련
  gubKind: string; // 수탁가산코드 구해서 금액 구할때 급여 비급여 구분 0: 급여 2: 비급여
//  gubKind: Integer; // 수탁가산코드 구해서 금액 구할때 급여 비급여 구분 0: 급여 2: 비급여
  sutakSanCode: string; // 수탁가산코드
  gasankind: string;
  sutakupche: string;
  sutakgrade: string;

  grpInsYon: string; // 0:급여, 2:비급여

  tempQuery: TuniQuery;
  j: integer;

  sSutak: string ;
  isNeedMemo :boolean;
  aNeedTeakRyeCode : string;
  jin_day : string;

begin
  {
    일단은 날자 확인하고  마법사 있나보고
    1. 먼저 치아 갯수와 부위를 알아낸다.
    2. 치아개수와 상관없는 것은 투약이다    (09)
    3. 마취는 치아 부위에 따라 산정한다.재료는 행위수에 곱한다.

    4. 방사인지 선은 인접치아닌지 확인한다
    5. 의약품관리료는 무조건 1회만산정한다.
    6. 처방전료와 조제료는 처방일수로 산정한다.
    7. 마지막으로 산정기준별(악당c 31악당c3 근관당R 구강당M 치당 T 일당  Null) 산정하고
    --8. 재료는 단위로 산정한다.
    --9. 비보험인 경우는 다른 계산루틴을 돌린다.
    10. 그리고 warn DB를 참조해서 경고메시지를 날린다.
    --11. 상병을 알아서 돌리고 치아 부위도 기록하고, 진찰료를 산정한다.


    groupsuga에서 grpInsYon을 확인하여 0: 비급여 2: 급여를 입력한다. }

   if isNeyukLoad = true then
      jin_day := grdNeyuk.Cells[1, grdNeyuk.Row]
   else
      jin_day := FormatDateTime('YYYY-MM-DD', dtDate.date);


  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from groupcode where groupcode=:GrKey  ');
      paramByName('GrKey').asString := AGroupCode;
      open;
      First;
      if isEmpty then
      begin
        Showmessage(AGroupName + ' 그룹코드가 존재하지 않습니다. 확인하세요!!');
        exit;
      end
      else
      begin
        groupkindsel := fieldByname('groupkind1').asString;
        AGroupName := fieldByname('groupName').asString;
        groupModality := fieldByname('gr_alias').asString;
      end;
    end;


    // spSkinGroupBox3.Checked := False;

//    // 의약품관리료코드 확정
//    if (FormatDateTime('YYYY-MM-DD', dmain.Date) > '2011-12-31') and
//      (FormatDateTime('YYYY-MM-DD', dmain.Date) < '2012-04-01') and
//      (configvalue.varGubun = '병원') then // 병원급  방문당
//      sALMan := 'AL300'
//    else if (FormatDateTime('YYYY-MM-DD', dmain.Date) > '2011-12-31') and
//      (FormatDateTime('YYYY-MM-DD', dmain.Date) < '2012-04-01') then
//      sALMan := 'AL400' // 의원급 방문당
//    else if configvalue.varGubun = '병원' then
//      sALMan := 'AL701'
//    else
//      sALMan := 'AL801';

    // 나이가 없으면
    if LblAge.Caption = '' then
      LblAge.Caption := '20';

    // 병록번호/수진자 체크
//    if ft_ChartCHK then
//      exit;

    nIOrder := 1;

    isClear := true;
//    ListBoxSang.Clear;

    for i := 1 to grdJx2.RowCount - 1 do
    begin



      if ((grdJx2.Cells[0, i] = 'GR') and (grdJx2.Cells[1, i] = AGroupName) and
        (grdJx2.Cells[14, i] = inttostr(nIOrder + 1))) then
      begin

      end;
    end;

    if inputShortCut = false then
    begin
      grdJx2.AddRow;

    end;


    for j := 1 to grdJx2.ColCount-1 do
    begin

            grdJx2.CellProperties[j, grdJx2.RowCount -  1].ReadOnly := true;
    end;
//    grdJx2.Options:=  grdJx2.Options-[goEditing];


    grdJx2.CellProperties[3, grdJx2.RowCount -  1].ReadOnly := false;
    grdJx2.CellProperties[4, grdJx2.RowCount -  1].ReadOnly := false;
    grdJx2.CellProperties[5, grdJx2.RowCount -  1].ReadOnly := false;


    grdJx2.Cells[0, grdJx2.RowCount - 1] := 'GR';
    grdJx2.Cells[1, grdJx2.RowCount - 1] := AGroupName; // 명칭
    grdJx2.Cells[9, grdJx2.RowCount - 1] := AGroupCode; // GroupCode
    grdJx2.Cells[3, grdJx2.RowCount - 1] := '1'; // 수량
    grdJx2.Cells[4, grdJx2.RowCount - 1] := '1'; // 일수
    grdJx2.Cells[5, grdJx2.RowCount - 1] := '1'; // 횟수
    grdJx2.Cells[10, grdJx2.RowCount - 1] := '9'; // su_gu1
    grdJx2.Cells[14, grdJx2.RowCount - 1] := inttostr(nIOrder + 1); // IOrder
    grdJx2.Cells[8, grdJx2.RowCount - 1] := groupModality; // Modal

    grdJx2.Cells[22, grdJx2.RowCount - 1] := jin_day; // jin_day
    grdJx2.Cells[24, grdJx2.RowCount - 1] := AGroupName; // su_eng_Name

    // groupcode 에서 grdSangByung 에 상병과 과목을 집어 넣는다


//    with tempQuery do
//    begin
//        close;
//        SQL.Clear;
//        SQL.Add('select * from groupSuga where groupcode=:groupcode and GrpDgsYon=''I'' ');
//        paramByName('groupcode').asString := AGroupCode;
//        open;
//        First;
//        if not isEmpty then
//        begin
//
//
//           //상병을 넣자....
//
//           while not eof do
//           begin
//            nIorder := checkBlankRow(grdSangByung, 6);
//
//            if nIorder = 1 then
//                grdSangByung.AddRadioButton(0, nIorder , true )
//            else
//                grdSangByung.AddRadioButton(0, nIorder , false );
//
//         //   grdSangByung.AddRadioButton(0,nIOrder ,false);
//
//            grdSangByung.Cells[6, nIOrder]  :=  fieldByname('sugacode').asString;;
//            grdSangByung.Cells[10, nIOrder] :=  fieldByname('sugakorname').asString;;
//
////            grdSangByung.Cells[13, nIOrder] := cbDoc.ColumnItems[cbDoc.itemindex, 2];
////                // cmbDoctor.Text; //담당의
////            grdSangByung.Cells[14, nIOrder] := cbDoc.ColumnItems[cbDoc.itemindex, 3];
////                // 담당의 면허번호
//             nIorder := nIorder + 1;
//            next;
//           end;
//
//
//        end;
//
//
//
//        //CC를 넣자......
//        close;
//        SQL.Clear;
//        SQL.Add('select * from groupSuga where groupcode=:groupcode and GrpDgsYon=''S''  ');
//        SQL.Add('order by GroupLine');
//        paramByName('groupcode').asString := AGroupCode;
//        open;
//        First;
//        nIorder := 1;
//        if not isEmpty then
//        begin
//
//           // Osang := fieldByname('Sang1').asString;
//           while not eof do
//           begin
//
//            edtCC.Lines.Add(fieldByname('sugakorname').asString) ;
//            memo3.Lines.Add(fieldByname('sugakorname').asString) ;
//
//            next;
//           end;
//
//
//        end;
//
//    end;

    with tempQuery do
    begin

      close;
      SQL.Clear;
      // Sql.Add('select G.Groupcode,s.su_gu3,s.su_gu2,s.su_danwi,s.bo_dan,                                              ');
      // Sql.Add('(select top 1 bo_dan from                                                                              ');
      // Sql.Add('(select bo_dan,su_apply from suga where su_key=g.sugacode and (s.sugu1 <>''삭제'' or s.sugu1 is null )  union all             ');
      // Sql.Add(' select bo_dan,su_apply from suga_history where su_key=g.sugacode ) m where  :jin_day >=m.su_apply     ');
      // Sql.Add('order by su_apply desc) as Bodan,                                                                      ');
      // Sql.Add('s.ja_dan,s.il_dan,s.dan_qty,s.su_gu1,s.su_soa,s.su_yagan,S.Su_key,S.Su_kor_name,G.ilsu,G.qty,G.iltu    ');
      // Sql.Add('from groupsuga G, suga S where G.groupcode =:Groupcode and S.Su_key=G.Sugacode  and (s.sugu1 <>''삭제'' or s.sugu1 is null ) ');
      // Sql.Add('order by s.su_gu3 desc,   s.su_gu1 desc                                                                ');

      SQL.text := loadSugaList;

      paramByName('jin_day').asString := jin_day;// FormatDateTime('YYYY-MM-DD', dmain.Date);
      paramByName('Groupcode').asString := AGroupCode;

      open;
      First;

      if not isEmpty then
      begin

        // 여기서 각 그룹이 풀린다.
        while not eof do
        begin

          nDanga := 0; // nDanGa initial;
          sugacode := trim(fieldByname('sugacode').asString); // groupSuga

          suKey := trim(fieldByname('su_key').asString);
          suKorName := fieldByname('Su_kor_name').asString;

          // sukey := Trim(FieldByName('sugacode').AsString);
          if fieldByName('need_chart_memo').AsString ='1' then
              isNeedMemo := true
          else
              isNeedMemo:= false;

           aNeedTeakRyeCode := trim(fieldByName('teakryecode').AsString) ;

          if copy(sugacode, 1, 1) = '+' then
          begin
            // if Group then Goto insertSugaGroup


            // grdJx2.AddRow;
            // grdJx2.Cells[1, grdJx2.RowCount - 1] :=  sukey;

            //
            // 그룹 템프에다가 넣어두고
            // insertsugacode 다 한 후에
            // 그룹 템프를 한번 더 돌리자.
            GroupName := LoadGroupName(sugacode);
            lstGroupTemp.Items.Add(GroupName + '|' + sugacode + '|' +
              trim(fieldByname('sugacode').asString));
            next;
          end
          else
          begin



            //aSugu1 초기화
            aSugu1 := trim(fieldByname('su_gu1').asString);

            // if Trim(FieldByName('grpInsYon').AsString) = '0' then
            // aSugu1 := '2'
            // else  if Trim(FieldByName('grpInsYon').AsString) = '2' then
            // aSugu1 := '4'
            // else
            // Trim(FieldByName('su_gu1').AsString);

            aSugu2 := trim(fieldByname('su_gu2').asString);
            aSugu3 := trim(fieldByname('su_gu3').asString);

            if  aSugu3 <> '26' then
               suKey :=   makeGaSanCode( suKey,'');

            sSutak:= trim(fieldByname('su_gu2').asString);   //suga 테이블의 수탁검사여부=2

            grpInsYon := trim(fieldByname('grpInsYon').asString);

            if cbJong.itemindex = 3 then // 종별이 일반이면 모두 비급여
            begin
              grpInsYon := '2';
            end;

            if grpInsYon = '2' then
              isBigub := true
            else
              isBigub := false;

            case cbJong.itemindex of
              0, 1, 2, 4, 5, 8, 9, 10:
                begin // 진료일에 맞는 단가
                  if isBigub = true then
                    nDanga := fieldByname('il_dan').AsInteger
                  else
                    nDanga := fieldByname('Bodan').AsInteger;
                end;
              6:
                begin
                  nDanga := fieldByname('ja_dan').AsInteger;
                end;
              3, 7:
                begin
                  nDanga := fieldByname('il_dan').AsInteger;
                end;
            end;

                  if checkInt(trim(fieldByname('grpInsYon').asString)) = true
                  then
                    //gubKind := StrToInt(trim(fieldByname('grpInsYon').asString))
                    gubKind :=  trim(fieldByname('grpInsYon').asString)

                  else
                    gubKind := '0';

                 if cbJong.itemindex in [3,7] then  //일반이거나 자보는 비급이다.
                   gubKind := '2';

                  nDanga := getSugaGeum(suKey, // varCode:string;
                    FormatDateTime('YYYY-MM-DD',dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
                    // jinday:string;
                    gubKind); // kind:string);


         //   if nDanga = 0 then
         //   nDanga := fieldByname('il_dan').AsInteger;


            nQty := 1;




            ngrdJxRow :=  grdJx2.RowCount -  1;

            grdJx2.AddRow;

            ngrdJxRow :=  grdJx2.RowCount -  1;


             grdJx2.CellProperties[1, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[2, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[8, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[9, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[10, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[11, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[12, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[13, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[14, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[15, ngrdJxRow].ReadOnly := true;





            grdJx2.Cells[7, ngrdJxRow] := grpInsYon;
            // Trim(FieldByName('grpInsYon').AsString);

            case strCase(aSugu1, ['0', '1', '2', '3', '4', '5']) of
              1:
                grdJx2.Cells[0, ngrdJxRow] := '재료';
              2:
                grdJx2.Cells[0, ngrdJxRow] := '행위';
              3 .. 4:
                grdJx2.Cells[0, ngrdJxRow] := '비급';
              5:
                grdJx2.Cells[0, ngrdJxRow] := '100';
            end;

            grdJx2.Cells[19, ngrdJxRow] := suKey;
            grdJx2.Cells[20, ngrdJxRow] := suKorName;
            grdJx2.Cells[21, ngrdJxRow] := fieldByname('gasan').asString;

            grdJx2.Cells[1, ngrdJxRow] := fieldByname('sugaKorName')
              .asString; // GroupSuga - sugaKorName
            grdJx2.Cells[9, ngrdJxRow] := fieldByname('sugaCode')
              .asString; // GroupSuga - sugacode

            grdJx2.Cells[22, ngrdJxRow] :=  jin_day;// FormatDateTime('YYYY-MM-DD',dtDate.date); // jin_day
            grdJx2.Cells[24, ngrdJxRow] := fieldByname('Su_Eng_name').asString;
            grdJx2.Cells[25, ngrdJxRow] := fieldByname('Su_extra').asString;

            grdJx2.Cells[27, ngrdJxRow] := fieldByname('Su_sobulRu').asString;


            grdJx2.Cells[28, ngrdJxRow] := fieldByname('teakryecode').asString;

            grdJx2.Cells[29, ngrdJxRow] := fieldByname('Su_gu2').asString;
            grdJx2.Cells[30, ngrdJxRow] :=  modiKind;


            case strCase(aSugu3, ['09']) of    //약처방
              0:
                begin
                  grdJx2.Cells[3, ngrdJxRow]  :=   fieldByname('qty').asString; // 수량
                  grdJx2.Cells[4, ngrdJxRow]  :=   fieldByname('ilsu').asString;
                  grdJx2.Cells[14, ngrdJxRow] :=   fieldByname('iltu').asString

                end;
              else
              begin
                grdJx2.floats[3, ngrdJxRow] :=   nQty * fieldByname('qty').asfloat;

              //  if aSugu2 = '9' then // 수탁검사
                if aSugu3 = '26' then // 수탁검사
                begin
                  // Sutak_f :=  TSutak_f.Create(application);
                  // Sutak_f.Showmodal;
                  // Sutak_f.Free;
                  // Sutak_f := nil;

                  // 수탁검사일 경우 가산코드 san1, san2, san3 적용
                  // nDanga, su_key 다시 사정
                  // ------------------------------------------

                  gasankind  := fieldByname('gasankind').asString;
                  sutakupche := fieldByname('sutakupche').asString;
                  sutakgrade := fieldByname('sutakgrade').asString;

              //    if aSutak <> '2' then // 자체검사는 가산X
              //    begin

                   //산정코드 만들기;
                      sutakSanCode := makeSutakSanCode(suKey, gasanKind,
                      sutakupche, sutakgrade);

                      if aSutak <> '2' then // 자체검사는 1.1 X.
                          suKey := sutakSanCode; // copy(suKey,1,7)  + sutakSanCode;
              //    end;

                  if checkInt(trim(fieldByname('grpInsYon').asString)) = true
                  then
                   // gubKind := StrToInt(trim(fieldByname('grpInsYon').asString))
                    gubKind :=  trim(fieldByname('grpInsYon').asString)

                  else
                    gubKind := '0';

                  nDanga := getSugaGeum(suKey, // varCode:string;
                    FormatDateTime('YYYY-MM-DD',dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
                    // jinday:string;
                    gubKind); // kind:string);

                  // ------------------------------------------

                  grdJx2.Cells[19, ngrdJxRow] := suKey;

                  if aSutak <> '2' then // 자체검사는 1.1 X.
                  begin

                    grdJx2.floats[3, ngrdJxRow] :=
                      nQty * fieldByname('qty').asfloat * 1.1;

                  end;
                end;
              end;
            end;

//            case strCase(aSugu3, ['09']) of    //약처방
//              0:
//                begin
//                  if fieldByname('su_extra').asString = '' then
//                      nDanga:=0;
//                end;
//            end;

            grdJx2.ints[2, ngrdJxRow] := nDanga;
            grdJx2.Cells[4, ngrdJxRow] := '1'; // 일수
            if fieldByname('dan_qty').AsInteger > 0 then
                grdJx2.ints[5, ngrdJxRow] := fieldByname('dan_qty').AsInteger
            else
                grdJx2.ints[5, ngrdJxRow] := 1;


            grdJx2.Cells[10, ngrdJxRow] := aSugu1;
            // FieldByName('Su_gu1').AsString;
            grdJx2.Cells[11, ngrdJxRow] := aSugu3;
            grdJx2.Cells[27, ngrdJxRow] := fieldByname('Su_sobulRu').asString;
            grdJx2.Cells[28, ngrdJxRow] := aNeedTeakRyeCode;
            grdJx2.Cells[29, ngrdJxRow] := aSugu2;
            grdJx2.Cells[12, ngrdJxRow] := fieldByname('su_soa').asString;

            grdJx2.Cells[13, ngrdJxRow] := fieldByname('Su_yagan') .asString; // 야간 가산 되는 것=1

            grdJx2.ints[14, ngrdJxRow] := nIOrder + 1;


            // nPrice:=    Calckumak(jinryo_f.grdJx2,
            // FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),
            // jinryo_f.grdJx2.Rowcount - 1, True,
            // jinryo_f.lblAge.caption);

            nPrice := CalcKumak(
              grdJx2.Cells[19, ngrdJxRow], // suKey:string;
              nDanga, // 단가nDanga:integer ;
              grdJx2.floats[3, ngrdJxRow], // 수량nQty:integer ;
              grdJx2.ints[4, ngrdJxRow], // 일수nilsu:integer ;
              grdJx2.ints[5, ngrdJxRow], // 사용단위nDanQty:integer ;
              FormatDateTime('YYYY-MM-DD',dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
              grdJx2.Cells[12, ngrdJxRow], // soaGasan : string;
              grdJx2.Cells[13, ngrdJxRow], // simGasan : string;
              true,
              grdJx2.Cells[25, ngrdJxRow],   //약재중에서 예외코드가 없으면 0원이다.
              LblAge.Caption);





               grdJx2.ints[6, ngrdJxRow]  := nPrice;
               grdJx2.Cells[8, ngrdJxRow] :=  fieldByname('modality').asString;

               next;

          end;

        end;

        //JinryoBiSet;

        if isNeedmemo=true then
        begin
            showmessage('심사참고사항을 넣으세요.');
        end;




//        if trim(aNeedTeakRyeCode) <> ''  then
//        begin
//            // showmessage('심사참고사항을 넣으세요.');
//             LoadInputTeakJung(aNeedTeakRyeCode, suKey) ;
//
//
//        end;


      end
      else if groupkindsel >  '7' then  //ToDo : ?????
      begin

        //JinryoBiSet;

      end;

    end;

  finally
    //varValueChanged := true;
    tempQuery.Free;
  end;
end;

end.


