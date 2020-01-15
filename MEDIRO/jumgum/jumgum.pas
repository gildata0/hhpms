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
    iaOnly : boolean; //Ʋ��, ���ö�Ʈ �� �ִ� ��� true
    iaList : Tstringlist;
    iaArtTeethDanga: integer;
    iaImplantDanga: integer;
    iaExDanga : integer;
   // iaCount: integer; //UA, UB count
    iaKind : integer;
    cntImplant : integer;  //UB count
    cntArtTeeth : integer; //UA  count
    cntImplantRefair : integer; //���ö�Ʈ���� count
    cntArtRefair : integer; //��ġ���� count

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
    useWonNaeTuYak: boolean;   //MS002��
    iChongTu: Integer;            //MS002�� �� ������

    //maru�� dentro������ �ٸ��� �����;���.
    YoyangKiho: string; // �����(�Ƿ�޿����)��ȣ	an(8)
    chungGuName: String; // û����	an(20)
    jaksungName: String; // �ۼ��ڼ���	an(20)
    jaksungJumin: string; // �ۼ��ڻ������	an(13)
    SeunginNo: string; // �˻���ι�ȣ	an(35)


    jin_day : string;
    doc_code: string;
    treatRoom: string;
    varChartno : string;


    wonjangJinryoIlsu : string;



    varMT037: Integer; // MT037(MT037(������ Ʋ�� �� Ÿ �� ����) �ѹ��� ����)

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


    sumBohumGunsu: Integer; // ���� û���Ǽ��� �� (����)
    sumBohumChong: Integer; // �������޿�����Ѿ��� ��
    sumBohumBonin: Integer; // ���� �����Ϻκδ���� ��
    sumBohumBoninSangHan: Integer; // ���� ���κδ�����ʰ��ݾ��� ��
    sumBohumChung: Integer; // ���� û������ ��
    sumBohumJiwon: Integer; // ���� �������� ��
    sumBohumjangE: Integer; // �Ƿ�޿�2�� ����θ����� ������Ƿ������,
    // ���޿��� ��� ����������θ�����ȯ
    // 18���̸� ���κδ�氨����� ���޿��������� ��������������

    sumBohumjinChong   : Integer; // ���޿��������� ������Ѿ�
    sumBohumBohun      : Integer;    // ������Ź��������
    sumBohumHbyH       : Integer;     // �ǰ�����100/100 ������Ѿ�
    sumBohumHbyHunder  : Integer;    // �ǰ�����100/100 �̸� ������Ѿ�

          sumBohumHbyHChong : Integer;
          sumBohumHbyHChung : Integer;
          sumBohumHbyHBonin : Integer;

          sumYoyangChong1   : Integer;

    sumBohoGunsu       : Integer; // ���� û���Ǽ��� ��  (��ȣ)
    sumBohoChong       : Integer; // �������޿�����Ѿ��� ��
    sumBohoBonin       : Integer; // ���� �����Ϻκδ���� ��
    sumBohoBoninSangHan: Integer; // ���� ���κδ�����ʰ��ݾ��� ��
    sumBohoChung       : Integer; // ���� û������ ��
    sumBohoJiwon       : Integer; // ���� �������� ��
    sumBohojangE       : Integer; // �Ƿ�޿�2�� ����θ����� ������Ƿ������,
    // ���޿��� ��� ����������θ�����ȯ
    // 18���̸� ���κδ�氨����� ���޿��������� ��������������

    sumBohojinChong    : Integer;   // ��ȣ ���޿��������� ������Ѿ�
    sumBohoBohun       : Integer;      // ��ȣ ������Ź��������
    sumBohoHbyH        : Integer;       // ��ȣ 100/100 ���κδ���Ѿ�
    sumBohoHbyHUnder   : Integer;       // ��ȣ 100/100 �̸� ������Ѿ�

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
         teakryeNo : string;  //����Ư�ʹ�ȣ
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
    procedure MakeMyungSeFile_Bohum; // ����� .GHP���� ����
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
               {  iaOnly : boolean; //Ʋ��, ���ö�Ʈ �� �ִ� ��� true
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

//function CalcBonin(hkind:string;  // ����, �ǿ�, ���պ���
//                       varChong : double;
//                       boolWonwe: Boolean;
//                       varDate : string;  //YYYY-MM-DD
//                       varTime : string;  //hh:mm:ss
//                       varChojae : integer;
//                       varJongbeul : integer;
//                       varAge : integer;
//                       isSat:boolean;   //����Ͽ��� - ��䰡������
//                       varbonDamCode:string;  //���� ���κδ��ڵ�
//                       varBonjun : string;
//                       varCT : integer; //CT�ݾ�
//                       varDenture : integer;  //Ʋ�� �ݾ�
//                       artTeeth : boolean = false;       //Ʋ�Ͽ���
//                       AfterArtTeeth : boolean = false;  //Ʋ�ϼ�������
//                       implTeeth: boolean = false;       //���ö�Ʈ����
//                       anotherTeeth : boolean = false;   //�ٸ�ġ�� ġ�Ῡ��
//                       nBoMan :integer=0; //�Ǿ�ǰ������
//                       varGongsang : boolean = false; //���󿩺�
//                       varjange : boolean = false; //��ֿ���
//                       varYongua: boolean = false; //�����Ʊ���
//                       varGumjin: boolean = false; //�ǰ�����
//                       varfirst: boolean  = false; //������ȯ�����
//                       varRestrict:boolean = false; //�޿������ڿ���
//                       varPregnan: boolean= false)    //�ӽź�
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

    // ��ȣ�� .GHP���� ����
    { �߻��������� ,ó�����߱޹�ȣ �ٹ�ȣ Ư���������� Ư������ }

    { Private declarations }
  public
    { Public declarations }
  end;


const


  jongKind: array[0..10] of string =('����','��ȣ1��','��ȣ2��','�Ϲ�',
        '��ȣ4��','��ȣ8��','����','�ں�','������1��','������2��','������2�� �����');




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
               temp := temp + '!'; //���ö�Ʈ ����ġ��
            end
            else
            begin
                 temp := temp + '*';    //�Ϲݼ���ġ��
            end;



    end
    else
    if varteeth[i] in ['a' .. 'z', 'A' .. 'Z'] then
         temp := temp + '#'    //��ġ
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



  caption := '����û��';

  isJx2Delete := false;
     lblchart.caption  :=  '' ;
     lbljinday.caption :=  ''  ;


  if  pos('pms.cjedioeqnhkl.ap-northeast-2.rds.amazonaws.com',configValue.varDbIp) > 0 then
  begin
        btnSave.Enabled  := false;
        btnSave.Caption  :='�б�����' ;
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
    caption.text :=   '[û�� ��� ����]';
     //  '[û�� ��� ����] �ϴ������: ' + '      0' + '     ' + '�Ǵ������: ' + '      0' +
     // '     ' + '�δ������: ' + '       0';
    caption.TopIndent := 3;
  end;


  with grdMain do
  begin
      ColWidths[4] := 100;
  end;

  with grdsummary do
  begin
    RowCount := 6;
    cells[0, 1] := '���ΰǰ�����';
    cells[0, 2] := '�Ƿ�޿�';
    cells[0, 3] := '�ں�';
    cells[0, 4] := '����';
    cells[0, 5] := '�հ�';

  end;

  edtSimsaBulCode.Text :='';
  edtJubsuno.Text :='';
  lblAge.caption:='';

  loadHospitalInfo;  // �ʱⰪ �����ֹι�ȣ�� �ҷ�����

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
          //iaKind ���ö�Ʈ,  Ʋ�� ���� �и� ���
          //                       iaCnt
          //0. �⺻
          //1. ���ö�Ʈ�� �ִ°��   1
          //2. Ʋ�ϸ� �ִ°��       1
          //3. ���ö�Ʈ�� Ʋ��       2
          //4. ���ö�Ʈ�� Ÿ��     2
          //5. Ʋ�Ͽ� Ÿ��         2
          //6. ���ö�Ʈ��Ʋ�Ͽ� Ÿ��         3
          //7. Ʋ�Ͽ� Ʋ�ϼ���                 1
          //8. Ʋ�Ͽ� Ʋ�ϼ����� Ÿ��        2
          //9. Ʋ�ϼ���                        1
          //10. Ʋ�ϼ����� Ÿ��               2
          //11. Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3
          //12. Ʋ�Ͽ� Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3


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
        sql.Clear;                                        // su_gu3 = ''28'' ���ö�Ʈ ���� �� ���
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
        sDanga := fieldByName('sDanga').AsInteger;  //Ʋ�� �ܰ�
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
        sDanga := fieldByName('sDanga').AsInteger;   //���ö�Ʈ �ܰ�
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
        sql.Clear;   //�ϴ� ù��° iOrder�� ��������. 2~3�� �ϰ��� ? ����
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


        //ToDo: ���ö�Ʈ�� �Ǵ� Ʋ�ϸ� �ִٸ�...
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
                //���ö�Ʈ�� Ʋ�� �� �ִ��� ����.

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
          //iaKind ���ö�Ʈ,  Ʋ�� ���� �и� ���
          //                                iaCnt
          //0. �⺻
          //1. ���ö�Ʈ�� �ִ°��             1
          //2. Ʋ�ϸ� �ִ°��                 1
          //3. ���ö�Ʈ�� Ʋ��                 2
          //4. ���ö�Ʈ�� Ÿ��               2
          //5. Ʋ�Ͽ� Ÿ��                   2
          //6. ���ö�Ʈ��Ʋ�Ͽ� Ÿ��         3
          //7. Ʋ�Ͽ� Ʋ�ϼ���                 1
          //8. Ʋ�Ͽ� Ʋ�ϼ����� Ÿ��        2
          //9. Ʋ�ϼ���                        1
          //10. Ʋ�ϼ����� Ÿ��               2
          //11. Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��           3
          //12. Ʋ�Ͽ� Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3
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
    #10#13 + ' (select top 1 name from ma_gogek_basic where chart=p.chart) as ����, ' +
    #10#13 + ' (select top 1  jumin from ma_gogek_basic where chart=p.chart) as �ֹ�, ' +
    #10#13 + 'case when (piboname is null)  then   (select  top 1 piboname from view_gogek where chart=p.chart)  else piboname end as �Ǻ�, ' +
    #10#13 + 'case when (kiho is null)      then   (select  top 1 kiho from view_gogek where chart=p.chart) else kiho end as ���ձ�ȣ, ' +
    #10#13 + 'case when (k_number is null)  then   (select  top 1 k_number from view_gogek where chart=p.chart) else k_number end as ����ȣ, ' +
    #10#13 + ' (select  top 1 bontype from view_gogek where chart=p.chart) as ���㱸��, '
    + #10#13 + ' (select  top 1 special from view_gogek where chart=p.chart) as ��ֱ���, '
    + #10#13 + ' (select  top 1 jongbeul from view_gogek where chart=p.chart) as ����, '
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
    ' (select top 1 artTeeth1 from ma_gogek_basic where chart=p.chart) as Ʋ��1, ' +
    #10#13 + ' (select top 1 artTeeth2 from ma_gogek_basic where chart=p.chart) as Ʋ��2, '
    + #10#13 +
    ' (select top 1 implTeeth1 from ma_gogek_basic where chart=p.chart) as ����1, ' +
    #10#13 + ' (select top 1 implTeeth2 from ma_gogek_basic where chart=p.chart) as ����2, '
    + #10#13 + ' bonin, bonin1, jin_time, gongsang, sunapak, makam_chk, ' +
    #10#13 + ' bontype, HwakinNo, gub_gu , wein,  Tjung , KyulKwa , jungyul, jangegigeum, '
    + #10#13 +
    ' (SELECT top 1 cmemo FROM cmemo c where c.chart=p.chart and c.jin_day=p.jin_day and c.team=p.team) as �������, '
    + #10#13 +
    ' (SELECT top 1 seqno FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as ó���ȣ, '
    + #10#13 +
    ' (SELECT top 1 tjungCode FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as ����Ư������, '
    + #10#13 +
    ' (SELECT top 1 tjungneyuk FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as ����Ư������, '

    +  #10#13 + ' (select  top 1 teakRyeCode from ma_gogek_pibo where chart=p.chart and reg_day= p.jin_day ) as ����Ư�ʹ�ȣ, '
    +  #10#13 + ' (select  top 1 teakRye from ma_gogek_pibo where chart=p.chart and reg_day= p.jin_day ) as ����Ư�� '
    + #10#13 + ' FROM jinryo_p p' + #10#13 +
    ' WHERE (jin_day >= :jinday1 ) AND (jin_day <= :jinDay2)                    ' + #10#13 +
    ' and ((chojae <> ''0'')              ' + #10#13 +
//    ' and (chojae <> ''5'')               ' + #10#13 +  // �������� ����
    ' and ( (chojae <> ''9'')  )                                                ' + #10#13 + // ������ ó���ѳ�
//    ' and jongbeul  in (''1'',''2'',''3'',''5'',''6'', ''8'', ''9'', ''10'',''11'')   '  + #10#13 + // 4:�Ϲ��� ����
    ' or (makam_chk = ''9'' and sunapak > 0)                                    ' + #10#13 +
    ' or ((chojae = ''6'') and ((chong > 0) or (chung > 0 ))) )                 ';//   + #10#13 +

  // makam_chk
  // ����ġ��鼭 ������� =0, û���� <=0 �� ����    //ToDO : ���������� �� �Ȼ�����?


  selectData_jabo =
    'SELECT chart, jin_day, doc_code, team, jongbeul,simsa, nai, chojae, jubsuak, chong, chung, pregnan, sanjungTeakRye, isBohum100, ilyunNo, ' +
    #10#13 + '(select inpat_time from ma_jubsu where id=p.jubsu_id) as intime,             ' +
    #10#13 + '(select outpat_time from ma_jubsu where id=p.jubsu_id) as outtime ,           ' +
    #10#13 + ' (select name from ma_gogek_basic where chart=p.chart) as ����, ' +
    #10#13 + ' (select jumin from ma_gogek_basic where chart=p.chart) as �ֹ�, ' +
    #10#13 + ' (select piboname from view_gogek where chart=p.chart) as �Ǻ�, ' +
    #10#13 + ' (select kiho from view_gogek where chart=p.chart) as ���ձ�ȣ, ' +
    #10#13 + ' (select k_number from view_gogek where chart=p.chart) as ����ȣ, ' +
    #10#13 + ' (select bontype from view_gogek where chart=p.chart) as ���㱸��, ' +
//    #10#13 + ' (select bonsanjung from view_gogek where chart=p.chart) as ����Ư�ʹ�ȣ, '
    #10#13 + ' (select  top 1 teakRyeCode from view_gogek where chart=p.chart) as ����Ư�ʹ�ȣ, '  +
    #10#13 + ' (select  top 1 teakRye from view_gogek where chart=p.chart) as ����Ư��, '
    + #10#13 + ' (select special from view_gogek where chart=p.chart) as ��ֱ���, '
    + #10#13 + ' (select jongbeul from view_gogek where chart=p.chart) as ����, '
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
    ' (select artTeeth1 from ma_gogek_basic where chart=p.chart) as Ʋ��1, ' +
    #10#13 + ' (select artTeeth2 from ma_gogek_basic where chart=p.chart) as Ʋ��2, '

    + #10#13 +' (select top 1 implTeeth1 from ma_gogek_basic where chart=p.chart) as ����1, '
    + #10#13 + ' (select top 1 implTeeth2 from ma_gogek_basic where chart=p.chart) as ����2, '
    + #10#13 + ' bonin, bonin1, jin_time, gongsang, sunapak, makam_chk, '
    + #10#13 + ' bontype, HwakinNo, gub_gu , wein,  Tjung , KyulKwa , jungyul, jangegigeum, '
    + #10#13 +
    ' (SELECT top 1 cmemo FROM cmemo c where c.chart=p.chart and c.jin_day=p.jin_day) as �������, '
    + #10#13 +
    ' (SELECT top 1 seqno FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as ó���ȣ, '
    + #10#13 +
    ' (SELECT top 1 tjungCode FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as ����Ư������, '
    + #10#13 +
    ' (SELECT top 1 tjungneyuk FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as ����Ư������ '
    + #10#13 + ' FROM jinryo_p p' + #10#13 +
    ' WHERE (jin_day >= :jinday1 ) AND (jin_day <= :jinDay2)  ' + #10#13 +
    ' and ((chojae <> ''0'')                                       '  + #10#13 +
    ' and (chojae <> ''9'')                                        ' + #10#13 + // ������ ó���ѳ�
//    ' and jongbeul  in (''1'',''2'',''3'',''5'',''6'', ''8'', ''9'', ''10'',''11'')   ' + #10#13 + // 4:�Ϲ��� ����
    ' or (makam_chk = ''9'' and sunapak > 0)                       ' + #10#13 +
    ' or ((chojae = ''6'') and ((chong > 0) or (chung > 0 ))) )    ' ;
  // ����ġ��鼭 ������� =0, û���� <=0 �� ����    //ToDO : ���������� �� �Ȼ�����?



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


  varWonweNo : string; //����ó������ȣ
  varWonweTjung : string; //���� Ư������
  varWonweTjungGubun : string;// fieldByName('����Ư������').AsString;
   varImpleNo1,  varImpleNo2:string; //���ö�Ʈ��Ϲ�ȣ
   varArt1, varArt2 : string; // Ʋ�ϵ�Ϲ�ȣ
   varJubsuEk: integer; //������
   varIaOnly, iaOnly : boolean; //����Ʋ��, �ϳ��� �ִ°��

   i, k, iaCnt : integer;
   cntImplant : integer;
   cntArtTeeth : integer;
   iaArtTeethDanga : integer;
   iaImplantDanga : integer;
//   iaDanga : integer;
   iaLists : Tstrings;
   iaKind : integer;


  //���������.------
//  jinchalRyoCode : string;
  nChoJae: Integer;
  nAge: Integer;
  dWorkDate: TDateTime;
  jange: boolean;
  yongua: boolean;
  ilban: boolean;
  ifirst: boolean;
  jinilsu: string;
  //���������.------

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
  isAppluSanjung : boolean;   //����Ư������ = 1
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


          //�Ǻ�, ��ȣ, �ں�,  �������� Ȯ��
          kindTag := 0;

          for ci:= 0 to 3 do
          begin
             if checkArray[ci].Checked then
             begin
                 kindTag :=  kindTag +  checkArray[ci].Tag ;
             end;
          end;



          // ���᳻�� jinryo_p�� �о���鼭
          // 1. ��üũ
          // 2. ������ ����üũ
          // 3. �����ϼ�

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

          iaCnt :=0; // jinryo_s ���� �ִ� ���ö�Ʈ�� Ʋ�� �� (UA???, UB???)

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



            //Summary�ʱ�ȭ
          grdsummary.floats[1, 1] := 0;   //����
          grdsummary.floats[2, 1] := 0;
          grdsummary.floats[3, 1] := 0;
          grdsummary.floats[4, 1] := 0;

          grdsummary.floats[1, 2] := 0;   //��ȣ
          grdsummary.floats[2, 2] := 0;
          grdsummary.floats[3, 2] := 0;
          grdsummary.floats[4, 2] := 0;

          grdsummary.floats[1, 3] := 0;  //�ں�
          grdsummary.floats[2, 3] := 0;
          grdsummary.floats[3, 3] := 0;
          grdsummary.floats[4, 3] := 0;

          grdsummary.floats[1, 4] := 0;   //����
          grdsummary.floats[2, 4] := 0;
          grdsummary.floats[3, 4] := 0;
          grdsummary.floats[4, 4] := 0;

          grdsummary.floats[1, 5] := 0;   //�հ�
          grdsummary.floats[2, 5] := 0;
          grdsummary.floats[3, 5] := 0;
          grdsummary.floats[4, 5] := 0;


          k:=1;


     //--------------------------------------------------------------------------------------
     //ó���ϼ�, ���������ϼ� ������....
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
              // 1=���� 4=�Ϲ� 5=��ȣ4�� 6=��ȣ8��  7=���� 8=�ں�
              // 9=������1��, 10=������2��, 11=������2�������

//              sql.text := selectData;
//              if cb3.Checked = true then
//              begin
//                  sql.text := sql.text +  ' and (jongbeul = ''8'') ' ;
//
//              end;

{            if cb3.Checked = true then  //�ں�
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
                  //    ' and jongbeul  in (''1'',''2'',''3'',''5'',''6'', ''8'', ''9'', ''10'',''11'')   ' + #10#13 + // 4:�Ϲ��� ����
                        //Jongbeul ==4 : �Ϲ�
                   1:
                        begin
                          // showmessage('0'); //�Ǻ�
                              if trim(sqlCond) = '' then
                                   sqlCond  :=  '( jongbeul  in (''1'',''9'', ''10'',''11'') ) '
                               else
                                   sqlCond  := trim(sqlCond) + ' or ( jongbeul  in (''1'',''9'', ''10'',''11'') ) ';

                        end;
                   2:
                        begin
                         //  showmessage('1'); //�޿�
                              if trim(sqlCond) = '' then
                              sqlCond :=  '( jongbeul  in (''2'',''3'',''5'',''6'') ) '
                               else
                               sqlCond := trim(sqlCond) + ' or ( jongbeul  in (''2'',''3'',''5'',''6'') ) ';
                        end;
                   3:
                        begin
                         //  showmessage('2'); //�ں�
                              if trim(sqlCond) = '' then
                               sqlCond := '( jongbeul  in (''8'') ) '
                               else
                                sqlCond :=trim(sqlCond) + ' or ( jongbeul  in (''8'') ) ';
                        end;
                   4:
                        begin
                         //  showmessage('3'); //����
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


         //�ܷ�, �Կ�����
         if  cbGubunOut.checked   then
         begin
              sql.text := sql.text +  ' and isInpat = ''0'' ' ;
         end
         else
             if  cbGubunIn.checked   then
         begin
              sql.text := sql.text +  ' and (isInpat = ''1'' or isInpat = ''2'')' ;
         end ;

         //�ɻ�Ϸ� ����
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




        //�ϴ� �ǰ����迡 ���ؼ� �Կ��� 20%����
        if fieldByName('isInPat').AsInteger = 0 then
           BonRate := 0.3
           else  if fieldByName('isInPat').AsInteger = 1 then
            BonRate := 0.2
              else  if fieldByName('isInPat').AsInteger = 2 then
               BonRate := 0.2;


//             varIorder := ''; //jinryo_o [iOrder]
             varIaOnly := false;


            varJinday := fieldByName('jin_day').AsString;
            varName := fieldByName('����').AsString;
            varChart := fieldByName('chart').AsString;
            varWonweNo := fieldByName('ó���ȣ').AsString; // ����ó������ȣ
            varWonweTjung :=   fieldByName('����Ư������').AsString; // ����Ư������
            varWonweTjungGubun := fieldByName('����Ư������').AsString;
            varImpleNo1 := fieldByName('����1').AsString; // ���ö�Ʈ ��Ϲ�ȣ1
            varImpleNo2  :=fieldByName('����2').AsString; // ���ö�Ʈ ��Ϲ�ȣ2
            varArt1 := trim(fieldByName('Ʋ��1').AsString) ;//
            varArt2 := trim(fieldByName('Ʋ��2').AsString) ;//

            bondamCode:=  trim( fieldByName('bontype').AsString);

            aSanJungCode:= copy( trim(  fieldByName('����Ư��').AsString) ,1,4);

            if FieldByName('pregnan').AsString ='1' then
               isPregnan := true
            else
               isPregnan := false;

           if FieldByName('sanjungTeakRye').AsString ='1' then
               isAppluSanjung := true
            else
               isAppluSanjung := false;





            // ToDo:�������� ������ �ؾ��Ѵ�
            varJongbeul := fieldByName('jongbeul').AsInteger;
            // fieldByName('����').AsString;

            varChojae := fieldByName('chojae').AsInteger;
            varJumin := fieldByName('�ֹ�').AsString;
            varPiboName := fieldByName('�Ǻ�').AsString;


          //  varJubsuEk := fieldByName('jubsuak').AsInteger;
           //ToDo : ������ �ٽ� ��� 2017-10-03

             //�������ڵ� �����---------------------------------------------------------

                  yongua := false;
                  ilban := false;
                  ifirst := false;


              nAge := fieldByName('nai').Asinteger;//grdMain.ints[7, i];
              if   fieldByName('��ֱ���').AsString ='1' then
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
//            varJubsuEk :=  GetJinchalRyo( jinchalRyoCode, varJinday); //������

         //-------------------------------------------------------------------------
         //�����Ḧ �������.
              nJinchalRyo :=
                Jinchalryo_make(configvalue.varGubun,
                // '�ǿ�' ,  // ����, �ǿ�, ���պ���
                nSumBohumChong + nJinchalRyo, // nSumTotal,// nSumChong,// varChong ,
                 false, // checkInt(varWonweNo), // boolWonwe: Boolean;
                 varJinday,//FormatDateTime('YYYY-MM-DD', dmain.Date), // varJinday,  //YYYY-MM-DD
                 copy(fieldByName('jin_time').AsString,1,2)
                        +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                 varChojae - 1 ,
                 varJongbeul,
                 nAge,
                 DayOfWeek(strtodate(varJinday)) = 7, // ����Ͽ��� - ��䰡������
                 nGubGu,//iGumjin,// cbSanCode3.itemindex;
                // false,//Yongua,//�����Ʊ���
                // false,//ilban, //�ǰ�����
                // false,//ifirst,//������ȯ�����
                 bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                '', // varBonjun : string;
                0, // varCT : integer; //CT�ݾ�
                0, // iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                false, // iaOnly, //Ʋ�Ͽ���
                false, // Ʋ�ϼ�������
                false, // iaOnly, //���ö�Ʈ����
                false, // �ٸ� ġ�� ����
                nBoman, // �Ǿ�ǰ������
                false, // ���󿩺�
                false, // jange, //��ֿ���
                false, // �޿������ڿ���
                false); // isPregnan);  //�ӽſ���

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


        //toDo : ���ö�Ʈ Ʋ�� ���� �и��۾��� �ڷ� ����==========================
            //1. jinryo_p���� �׸��忡 �������.
            //2. jinryo_s�� ���� UA, UB�ڵ尡 �ִ� ���(su_gu3=28)�� ã�´�.
            //3. UA, UB�ڵ� ����(iaCnt)��ŭ for������ �����ش�.

       //    varIaValue := TiaValue.create(self);
           varIaValue := CheckIAvalue(varChart, varJinday);       //UA Ʋ�� UB���ö�Ʈ �� �и� �ؾ� �Ѵ�.

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

          //iaKind ���ö�Ʈ,  Ʋ�� ���� �и� ���
          //                                iaCnt
          //0. �⺻
          //1. ���ö�Ʈ�� �ִ°��             1
          //2. Ʋ�ϸ� �ִ°��                 1
          //3. ���ö�Ʈ�� Ʋ��                 2
          //4. ���ö�Ʈ�� Ÿ��               2
          //5. Ʋ�Ͽ� Ÿ��                   2
          //6. ���ö�Ʈ��Ʋ�Ͽ� Ÿ��         3
          //7. Ʋ�Ͽ� Ʋ�ϼ���                 1
          //8. Ʋ�Ͽ� Ʋ�ϼ����� Ÿ��        2
          //9. Ʋ�ϼ���                        1
          //10. Ʋ�ϼ����� Ÿ��               2
          //11. Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3
          //12. Ʋ�Ͽ� Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3



   {       if  ( iaDanga > 0 ) and  (iaOnly = false)  then  //���ö�Ʈ �Ǵ� Ʋ�Ͽ�  Ÿ�� ���� �������
          begin
             varIaOnly := true;
             iaCnt := 2;  // CheckIAvalue(varChart, varJinday).iaCount + 1


          end
          else
                if  (  iaDanga > 0 ) and  ( iaOnly = true)  then  //���ø� �ִ°��
                    begin
                       varIaOnly := false;
                       iaCnt := 1;
                       varJubsuEk:=0;
                    end
                    else  //���� ���� ���
                        begin
                          varIaOnly := false;
                          iaCnt := 1;
                        end;
 }


        //   if iaLists.Count > 0 then
        //   begin
        //      showmessage( iaLists.Strings[0]);
        //   end;
         //�����и��� �ڷ���� ��=============================================




         //   varChong := fieldByName('bonin').AsInteger  + fieldByName('chung').AsInteger;


            varBonin := fieldByName('bonin').AsInteger;
            varChung := fieldByName('chung').AsInteger;

            varBonin1 := fieldByName('bonin1').AsInteger;

          //   nChoJae := varChojae;//grdMain.ints[31, i];



            //�����ῡ ����� ����ݾ��� ���� ��� �Ѵ�.
            calcSatGasanGeum(configvalue.varGubun , varJinday,
              copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00',
              varChojae +1   , nAge, DayOfWeek( strtoDate(varJinday) ) = 7);




          //1.����� �ѱݾ��� �ٽ� �������...
          // �Ҿư����ڵ尡 2017.7.1�Ϻ��� ������� �ʾƾ� �ϴµ� ����Ǿ�
          //�����Ȱ�찡 �־ �ٽ� ���.
          // SetJinSO(varChart, varJinday, varJongbeul-1,  inttostr(nAge), false);
                        //���᳻���ҷ�����
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
               juSangRow,   //�ֻ� �ִ� Row
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
//                   jinryo_f.edit3.text );   // �Ǿ�о�����

               CalcSum(grdJx2,  //���᳻��
                  grdCost,      //�׸� ����
                  varChart ,
                  configvalue.varGubun,
                  varjinday,
                  varJongbeul - 1,//jinryo_f.cmbJongbeul.ValueIndex,
                  inttostr(nAge),//jinryo_f.lblAge.caption,
                  fieldByName('isInPat').AsString,  //isInPat
                  false,//jinryo_f.chbYagan.checked,
                  '',  // �Ǿ�о������ڵ�
                  true);// ToDO : û�����˿����� �ڵ����� ���� �ֻ�� �� ����

//     numchong.Text  := formatFloat('#,0' ,nSumBohumChong + nJinchalryo +nSumBigubChong); //nSumTotal + nJinchalryo);
//     numBonin.Text  := formatFloat('#,0' ,nSumBonin + nSumBigubChong);
//     numJinchal.Text  :=   FormatFloat('#,0',nJinchalryo);




            //2.SetJinSO���� ������� ���� + ���  �ݾ��� �ҷ��´�.
 //           nSumJin:= round(nSumBohumChong + nSumBigubChong);//(*   *)alGrid14.ints[2, 1];
            nSumJin:= round(nSumBohumChong );//(*   *)alGrid14.ints[2, 1];

            //3. ���� + ���  + ������ + ��������� �����
          //  varChong:= nJinchalRyo + SatGasangeum + nSumJin;
            varChong:=   nSumJin;

            //�Ѿ� 10���̸� ����
             // 10*  Floor(( varDenture * 0.1  )/10);
        //    varChong :=   ( Ceil(nJinchalRyo + SatGasangeum + nSumJin) div 10) *10;
            varChong :=   ( Ceil(  nSumJin) div 10) *10;

            varBonin :=  CalcBonin(
                     configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                     fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                     varChong ,
                     checkInt(varWonweNo), // boolWonwe: Boolean;
                     varJinday,  //YYYY-MM-DD
                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                     varChojae - 1 ,
                     varJongbeul,
                     nAge,
                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                     nGubGu, //��������
                     bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                     '',//varBonjun : string;
                     nCTMRI,//varCT : integer; //CT�ݾ�
                     0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                     0,  //100by30
                     0,  //100by50
                     0,  //100by80
                     0,  //100by90
                     isBohum100,
                     aSanJungCode,   //����Ư���ڵ�
                     isAppluSanjung,   //����Ư������ ����
                     isJiwon,   //����Ư�������� ���� H
                     iaOnly, //Ʋ�Ͽ���
                     false,  //Ʋ�ϼ�������
                     iaOnly, //���ö�Ʈ����
                     false, //�ٸ� ġ�� ����
                     nBoman,     //�Ǿ�ǰ������
                     false, //���󿩺�
                     jange, //��ֿ���
//                     Yongua,//�����Ʊ���
//                     ilban, //�ǰ�����
//                     ifirst,//������ȯ�����
                     false,//�޿������ڿ���
                     isPregnan);  //�ӽſ���

                varChung := varChong -  round( varBonin);






          //iaKind ���ö�Ʈ,  Ʋ�� ���� �и� ���
          //                                iaCnt
          //0. �⺻
          //1. ���ö�Ʈ�� �ִ°��             1
          //2. Ʋ�ϸ� �ִ°��                 1
          //3. ���ö�Ʈ�� Ʋ��                 2
          //4. ���ö�Ʈ�� Ÿ��               2
          //5. Ʋ�Ͽ� Ÿ��                   2
          //6. ���ö�Ʈ��Ʋ�Ͽ� Ÿ��         3
          //7. Ʋ�Ͽ� Ʋ�ϼ���                 1
          //8. Ʋ�Ͽ� Ʋ�ϼ����� Ÿ��        2
          //9. Ʋ�ϼ���                        1
          //10. Ʋ�ϼ����� Ÿ��               2
          //11. Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3
          //12. Ʋ�Ͽ� Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3

                    case iaKind of

                      //iaKind ���ö�Ʈ,  Ʋ�� ���� �и� ���
                      //                                  iaCnt
                      0://. �⺻
                        begin
                           varIaOnly := false;
                           iaCnt := 1;
                        end;
                      1, 2://. Ʋ�ϸ�, ���ö�Ʈ�� �ִ°��  1
                        begin
                            iaCnt := 1;
                        end;
                      3://. ���ö�Ʈ�� Ʋ��                 2
                        begin
                           iaCnt := 2;
                        end;
                      4://. ���ö�Ʈ�� Ÿ��               2
                        begin
                           iaCnt := 2;
                        end;
                      5://. Ʋ�Ͽ� Ÿ��                   2
                        begin
                           iaCnt := 2;
                        end;
                      6://. ���ö�Ʈ��Ʋ�Ͽ� Ÿ��         3
                        begin
                           iaCnt := 3;
                        end;

                      7://. Ʋ�Ͽ� Ʋ�ϼ���                 1     //===>2
                       begin
                           iaCnt := 1;
                        end;
                      8://. Ʋ�Ͽ� Ʋ�ϼ����� Ÿ��        2     //===>5
                       begin
                           iaCnt := 2;
                        end;
                      9://. Ʋ�ϼ���                        1     //===>2
                       begin
                           iaCnt := 1;
                        end;
                      10://. Ʋ�ϼ����� Ÿ��               2    //===>5
                       begin
                           iaCnt := 2;
                        end;
                      11://. Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3    //===>6
                       begin
                           iaCnt := 3;
                        end;
                      12://.Ʋ�Ͽ� Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��  3 //===>6
                       begin
                           iaCnt := 3;
                        end;

                    end;



         cells[47, r] := '0' ; //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)


          for i:= 0 to iaCnt - 1   do  //iaCnt�� �⺻������ 1�̰� �Ϲ����Ḧ ���� ����.
          begin
                 case i of
                  0: //�Ϲ������̰ų� ����, Ʋ���̰ų�.
                        begin

                        if iaKind in [4,5,6,  8, 10, 11, 12]  then  //�Ϲ����� ����
                        begin
                           //Ÿ�� ������ �Ϲ������ ����
                           //�������ڵ� ---------------------------------------------------------
                            nChoJae := varChojae;//grdMain.ints[31, i];
                            nAge := fieldByName('nai').Asinteger;//grdMain.ints[7, i];
                            dWorkDate := strtodate(varJinday);//  strtodate(grdMain.cells[4, i]);


                            varChojae := 2; //��������,,,

                            jinchalRyoCode := MakeJinchalRyoCode(nChoJae,
                                nAge,
                                dWorkDate,
                                jange,
                                nGubGu );
//                                yongua,
//                                ilban,
//                                ifirst);
                             //�������ڵ� ---------------------------------------------------------


                            varJubsuEk :=  GetJinchalRyo( jinchalRyoCode, varJinday); //������

                            varChong := varChong - (iaImplantDanga + iaArtTeethDanga) ;// +  varJubsuEk  ;



                            varBonin :=
                                 CalcBonin(
                                   configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                   fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                   varChong ,
                                   checkInt(varWonweNo), // boolWonwe: Boolean;
                                   varJinday,  //YYYY-MM-DD
                                   copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                   varChojae - 1 ,
                                   varJongbeul,
                                   nAge,
                                   DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                   0, //��������
                                   bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                   '',//varBonjun : string;
                                   nCTMRI,//varCT : integer; //CT�ݾ�
                                   0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                   0,//100by30
                                   0,//100by50
                                   0,//100by80
                                   0,//100by90
                                    isBohum100,
                                   '',   //����Ư���ڵ�
                                   false,   //����Ư������ ����
                                   isJiwon,   //����Ư�������� ���� H
                                   false, //Ʋ�Ͽ���
                                   false, //Ʋ�ϼ�������
                                   false, //���ö�Ʈ����
                                   false, //�ٸ� ġ�� ����
                                   nBoman,     //�Ǿ�ǰ������
                                   false, //���󿩺�
                                   jange, //��ֿ���
              //                     Yongua,//�����Ʊ���
              //                     ilban, //�ǰ�����
              //                     ifirst,//������ȯ�����
                                   false,//�޿������ڿ���
                                   isPregnan);  //�ӽſ���

//                               CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     0,//varDenture : integer;  //Ʋ�� �ݾ�
//                                     false, //Ʋ�Ͽ���
//                                     false, //Ʋ�ϼ�������
//                                     false, //���ö�Ʈ����
//                                     false, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���

                          //    varBonin := varBonin -  (100 * Floor((iaDanga * 0.5) / 100))  +  varJubsuEk  ;
                              varChung := varChong -  round( varBonin);

                              cells[47, r] := '0' ; //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)

                        end
                        else  //�Ϲ����� �ƴϸ� Ʋ��, �ƴϸ� ���ö�Ʈ
                        if iaKind in [1]  then //���ö�Ʈ��  ����
                        begin
                             //���ö�Ʈ �� �ִ� ���

                             // addrow; //0�϶��� �ʿ����.

                              varJubsuEk := 0; //������

                              varChong :=  iaImplantDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;


                             varBonin :=
                              CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                          isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         false, //Ʋ�Ͽ���
                                         false, //Ʋ�ϼ�������
                                         true, //���ö�Ʈ����
                                         false, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���


//                                CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ�� , ��Ǯ�ݾ�
//                                     false, //Ʋ�Ͽ���
//                                     false, //Ʋ�ϼ�������
//                                     true, //���ö�Ʈ����
//                                     false, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���

                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] := '1' ;  //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)

                        end
                        else
                        if iaKind in [2, 7, 9]  then //Ʋ��
                            // 2 Ʋ�ϸ� 7Ʋ�Ͽ� Ʋ������
                            // 9 Ʋ�ϼ���
                        begin

                            //  Ʋ���� �ִ� ���

                              //addrow;////0�϶��� �ʿ����.

                              varJubsuEk := 0; //������

                              if iaKind = 9 then
                             begin
                              //3. ���� + ���  + ������ + ��������� �����
                              //Ʋ�ϼ����� ���� ���� ��������� �ٿ���...

                              varChong :=    iaArtTeethDanga;

                              varBonin :=

                                     CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                          isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         false, //Ʋ�Ͽ���
                                         true, //Ʋ�ϼ�������
                                         false, //���ö�Ʈ����
                                         false, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���

//                                 CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ�� �ݾ�
//                                     false, //Ʋ�Ͽ���
//                                     true, //Ʋ�ϼ�������
//                                     false, //���ö�Ʈ����
//                                     false, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���
                             end
                             else
                             begin
                              varChong :=    iaArtTeethDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;

                              varBonin :=
                                      CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                          0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                           isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         true, //Ʋ�Ͽ���
                                         false, //Ʋ�ϼ�������
                                         false, //���ö�Ʈ����
                                         false, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���


//                                  CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ�� �ݾ�
//                                     true, //Ʋ�Ͽ���
//                                     false, //Ʋ�ϼ�������
//                                     false, //���ö�Ʈ����
//                                     false, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���
                             end;






                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] := '2' ; //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)


                        end
                          else
                          if iaKind in [3]  then //���ö�Ʈ�� Ʋ�� �� �Բ� ������ ù��° ���ö�Ʈ
                          begin

                               //addrow; //0�϶��� �ʿ����.

                              varJubsuEk := 0; //������

                              varChong   :=  iaImplantDanga  ;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;



                               varBonin :=
                                    CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                          isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         false, //Ʋ�Ͽ���
                                         false, //Ʋ�ϼ�������
                                         true, //���ö�Ʈ����
                                         false, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���
//                                  CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ��, ��Ǯ �ݾ�
//                                     false, //Ʋ�Ͽ���
//                                     false, //Ʋ�ϼ�������
//                                     true, //���ö�Ʈ����
//                                     false, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���

                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] :=  '1' ; //isAI //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)


                           end;


                        end;
                       1 :
                       begin
                        if iaKind in [6, 11, 12]  then //Ʋ��  + ���ö�Ʈ + �Ϲ�����  �� Ʋ��
                        begin
                              addrow;//

                              varJubsuEk := 0; //������

                              varChong :=    iaArtTeethDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;



                              varBonin :=
                                  CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                          0,//100/30
                                          0,//100/50
                                          0,//100/80
                                         0,//100/90
                                           isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         false, //Ʋ�Ͽ���
                                         true, //Ʋ�ϼ�������
                                         false, //���ö�Ʈ����
                                         false, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���

//                                 CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ�� �ݾ�
//                                     false, //Ʋ�Ͽ���
//                                     true, //Ʋ�ϼ�������
//                                     false, //���ö�Ʈ����
//                                     false, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���

                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] := '2' ; //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)


                        end
                        else



                              if iaKind in [5, 8, 10]  then //Ʋ��  + �Ϲ�����
                              begin
                                    addrow;//

                                    varJubsuEk := 0; //������

                                    varChong :=    iaArtTeethDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;



                              varBonin :=
                                   CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                          0,//100/30
                                          0,//100/50
                                          0,//100/80
                                         0,//100/90
                                           isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         true, //Ʋ�Ͽ���
                                         false, //Ʋ�ϼ�������
                                         false, //���ö�Ʈ����
                                         true, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���

//                                 CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ�� �ݾ�
//                                     true, //Ʋ�Ͽ���
//                                     false, //Ʋ�ϼ�������
//                                     false, //���ö�Ʈ����
//                                     true, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���

                                    varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                                    varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                                    cells[47, r] := '2' ; //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)


                              end
                              else

                              if iaKind in [4]  then //���ö�Ʈ��  ������ ���ö�Ʈ
                              begin
                                   //���ö�Ʈ+ �Ϲ����� ��  �ִ� ���

                                    addrow;

                                    varJubsuEk := 0; //������

                                    varChong :=  iaImplantDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;



                               varBonin :=
                               CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                          isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         false, //Ʋ�Ͽ���
                                         false, //Ʋ�ϼ�������
                                         true, //���ö�Ʈ����
                                         true, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���

//                                  CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ��,����Ǯ �ݾ�
//                                     false, //Ʋ�Ͽ���
//                                     false, //Ʋ�ϼ�������
//                                     true, //���ö�Ʈ����
//                                     true, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���

                                    varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                                    varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                                    cells[47, r] := '1' ;  //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)

                                  end
                                  else
                                    if iaKind in [3]  then //���ö�Ʈ�� Ʋ�� �� �Բ� ������ �ι�° Ʋ��
                                    begin

                                        addrow; //�� ���� �߰��Ͽ� ������ ���� �� ��������.

                                        varJubsuEk := 0; //������

                                        varChong   :=   iaArtTeethDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;


                               varBonin :=

                               CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                           0,//100/30
                                           0,//100/50
                                           0,//100/80
                                         0,//100/90
                                            isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         true, //Ʋ�Ͽ���
                                         false, //Ʋ�ϼ�������
                                         false, //���ö�Ʈ����
                                         false, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���
//                                 CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                    bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ�� �ݾ�
//                                     true, //Ʋ�Ͽ���
//                                     false, //Ʋ�ϼ�������
//                                     false, //���ö�Ʈ����
//                                     false, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���

                                        varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                                        varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                                        cells[47, r] := '2' ; //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)


                                     end;


                         end;
                       2 :
                       begin
                        if iaKind in [6, 11, 12]  then //Ʋ��  + ���ö�Ʈ + �Ϲ�����  �� ���ö�Ʈ
                        begin
                              addrow;//

                              varJubsuEk := 0; //������

                              varChong :=    iaImplantDanga;  //iaDanga;//0;//fieldByName('bonin').AsInteger + fieldByName('chung').AsInteger;


                              varBonin :=
                              CalcBonin(
                                         configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
                                         fieldByName('isInPat').AsInteger ,//0,//0 :�ܷ�, 1: �Կ�
                                         varChong ,
                                         checkInt(varWonweNo), // boolWonwe: Boolean;
                                         varJinday,  //YYYY-MM-DD
                                         copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
                                         varChojae - 1 ,
                                         varJongbeul,
                                         nAge,
                                         DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
                                         0, //��������
                                         bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
                                         '',//varBonjun : string;
                                         nCTMRI,//varCT : integer; //CT�ݾ�
                                         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
                                         0,//100/30
                                         0,//100/50
                                         0,//100/80
                                         0,//100/90
                                           isBohum100,
                                         '',   //����Ư���ڵ�
                                         false,   //����Ư������ ����
                                         isJiwon,   //����Ư�������� ���� H
                                         false, //Ʋ�Ͽ���
                                         false, //Ʋ�ϼ�������
                                         true, //���ö�Ʈ����
                                         true, //�ٸ� ġ�� ����
                                         nBoman,     //�Ǿ�ǰ������
                                         false, //���󿩺�
                                         jange, //��ֿ���
                    //                     Yongua,//�����Ʊ���
                    //                     ilban, //�ǰ�����
                    //                     ifirst,//������ȯ�����
                                         false,//�޿������ڿ���
                                         isPregnan);  //�ӽſ���
//                               CalcBonin(configvalue.varGubun, //'�ǿ�' ,  // ����, �ǿ�, ���պ���
//                                     varChong ,
//                                     checkInt(varWonweNo), // boolWonwe: Boolean;
//                                     varJinday,  //YYYY-MM-DD
//                                     copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//                                     nChoJae,
//                                     varJongbeul,
//                                     nAge,
//                                     DayOfWeek( strtoDate(varJinday) ) = 7,    //����Ͽ��� - ��䰡������
//                                     bonDamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//                                     '',//varBonjun : string;
//                                     0,//varCT : integer; //CT�ݾ�
//                                     varChong,//varDenture : integer;  //Ʋ�� �ݾ�
//                                     false, //Ʋ�Ͽ���
//                                     false, //Ʋ�ϼ�������
//                                     true, //���ö�Ʈ����
//                                     true, //�ٸ� ġ�� ����
//                                     nBoman,     //�Ǿ�ǰ������
//                                     false, //���󿩺�
//                                     jange, //��ֿ���
//                                     Yongua,//�����Ʊ���
//                                     ilban, //�ǰ�����
//                                     ifirst,//������ȯ�����
//                                     false,//�޿������ڿ���
//                                     isPregnan);//�ӽſ���

                              varChung := varChong -  round(varBonin) ;//0;//fieldByName('chung').AsInteger;
                              varBonin1 := 0;//fieldByName('bonin1').AsInteger;

                              cells[47, r] := '1' ; //���ö�Ʈ(1) Ʋ��(2)  �Ϲ�(0)
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
//                cells[5, r] := '����';
//              2:
//                cells[5, r] := '����';
//              3:
//                cells[5, r] := '�ɾ�����';
//              4:
//                cells[5, r] := '�ɾ�����';
//              5:
//                cells[5, r] := '������';
//              6:
//                cells[5, r] := 'Ʋ��';
//              7:
//                cells[5, r] := '����+�ɾ�����';
//              8:
//                cells[5, r] := '����+�ɾ�����';
//            end;

            // 1=���� 2=��ȣ1�� 3=��ȣ2�� 4=�Ϲ� 5=��ȣ4�� 6=��ȣ8��  7=���� 8=�ں�
            // 9=������1��, 10=������2��, 11=������2�������
//            case varJongbeul of
//              1:  cells[6, r] := '����'            ;
//              2:  cells[6, r] := '��ȣ1��'         ;
//              3:  cells[6, r] := '��ȣ2��'         ;
//              4:  cells[6, r] := '�Ϲ�'            ;
//              5:  cells[6, r] := '��ȣ4��'         ;
//              6:  cells[6, r] := '��ȣ8��'         ;
//              7:  cells[6, r] := '����'            ;
//              8:  cells[6, r] := '�ں�'            ;
//              9:  cells[6, r] := '������1��'       ;
//              10: cells[6, r] := '������2��'       ;
//              11: cells[6, r] := '������2�� �����';
//            end;

            cells[7, r] := fieldByName('nai').AsString;

            cells[8, r] := varJumin; // �ֹι�ȣ
            cells[9, r] := varPiboName; // �Ǻ�����
            cells[10, r] := fieldByName('����ȣ').AsString; // ����ȣ
            cells[11, r] := fieldByName('���ձ�ȣ').AsString; // ���ձ�ȣ
            cells[12, r] := fieldByName('��ֱ���').AsString; // ���

            cells[13, r] := fieldByName('jin_time').AsString;
            cells[14, r] := varWonweNo;


            if varJongbeul  in [8] then // �ڵ�������
            begin
                 ints[15, r] := fieldByName('bonin').AsInteger
                       + fieldByName('chung').AsInteger; //�ѱݾ�
                        //fieldByName('chong').Asinteger - fieldByName('bonin1').Asinteger ;
                 ints[16, r] := 0;//fieldByName('bonin').AsString;  //���κδ��
                 ints[17, r] := fieldByName('bonin').Asinteger
                     + fieldByName('chung').Asinteger;  //û���ݾ�
                 ints[18, r] := fieldByName('bonin1').Asinteger; //����

            end
            else
            begin             //10���̸� ���� ���� ���� �ְ�,
                 ints[15, r] := nSumJin;//varChong;//fieldByName('bonin').AsInteger  + fieldByName('chung').AsInteger ;//fieldByName('chong').Asinteger;

                 ints[16, r] := round(varBonin);//fieldByName('bonin').AsInteger;
                 ints[17, r] := varChung;//fieldByName('chung').AsInteger;


                 ints[18, r] := varBonin1;//fieldByName('bonin1').AsInteger;

            end;





            if fieldByName('����Ư�ʹ�ȣ').AsString <> '' then
              cells[20, r] := fieldByName('����Ư�ʹ�ȣ').AsString; // gogek_view
            // else
            // cells[20, r] := fieldByName('Tjung').AsString; // jinryo_p

            cells[21, r] := fieldByName('gongsang').AsString;

            if (fieldByName('kyulkwa').AsString = '') or
              (fieldByName('kyulkwa').AsString = '0') then
              cells[22, r] := '1'
            else
              cells[22, r] := fieldByName('kyulkwa').AsString;

        //    aChamgo:=   fieldByName('�������').AsString; // �������


          //  richedit1.Lines.Text :=  AdjustLineBreaks( fieldByName('�������').AsString);

             richedit1.Clear;

//             richedit1.text := StringReplace( fieldByName('�������').AsString,
//             #13#10, '', [rfReplaceAll]);
             richedit1.text :=  fieldByName('�������').AsString;
             RichToCell(23, r, richedit1);
           //   BStream := CreateBlobStream(fieldByname('�������'), bmRead);
           //   richedit1.lines.loadfromStream(BStream)  ;
           //   BStream.Free;
          //  richedit1.PlainText := true;

          //  aChamgo:= richedit1.Text;

          //  cells[23, r] :=AdjustLineBreaks(  aChamgo);
         //   cells[23, r] :=  aChamgo;

         // RichToCell(gridDescription, grdProgress.Row, richedit1);



            cells[24, r] := ''; // ����
            cells[25, r] := ''; // ���Ϸ�
        //    if fieldByName('���㱸��').AsString <> '' then
        //      cells[26, r] := fieldByName('���㱸��').AsString // view_gogek���� �°�..
        //    else
              cells[26, r] :=   bondamCode;// fieldByName('bontype').AsString; // jinryo_p���� �°�..

            varHwakinNo := fieldByName('HwakinNo').AsString;
            // ����Ȯ�ι�ȣ 38510294201206230908625 �������ȣ(8)+�⵵(CC)+Ȯ�ι�ȣ

            if Length(varHwakinNo) > 13 then
              varHwakinNo := copy(varHwakinNo, Length(varHwakinNo) - 12, 13);

            cells[27, r] := varHwakinNo; // Ȯ�ι�ȣ

            cells[28, r] := fieldByName('gub_gu').AsString;
            // �����ư������� // gub_gu �������Ϲݰ��� ������=1, �Ϲ�=2, ��������=3

            if varArt1 <> '' then  //fieldByName('Ʋ��1').AsString
            begin
                cells[29, r] := varArt1;// fieldByName('Ʋ��1').AsString; // Ʋ�ϵ�Ϲ�ȣ



                if (varArt1 <> '') and (varArt2 <> '') then  //fieldByName('Ʋ��2').AsString
                    cells[29, r] := varArt1 + '/' +    varArt2; // Ʋ�ϵ�Ϲ�ȣ

            end
            else
            begin
              if varArt2 <> '' then
                cells[29, r] := varArt2; // Ʋ�ϵ�Ϲ�ȣ

            end;


            ints[31, r] := varChojae;
            ints[32, r] := varJongbeul;

            ints[34, r] := varJubsuEk; // ������



             cells[19, r] := fieldByName('wein').AsString;
             cells[30, r] := fieldByName('jungyul').AsString; // ������������
             ints[33, r] := fieldByName('jangegigeum').AsInteger; // ��ֱ��

             cells[35, r] := varWonweTjung;  // ����Ư������
             cells[36, r] := varWonweTjungGubun;// ����Ư������

          //   cells[37, r] := fieldByName('Tjung').AsString; // ����_p Ư������
             cells[37, r] := fieldByName('����Ư��').AsString;  //ma_gogek_pibo TeakryeCode
             cells[38, r] := fieldByName('DrName').AsString; // ����Ǹ�

             cells[39, r] := fieldByName('MyunhuNo').AsString; // �����ȣ

             cells[40, r] := fieldByName('car_code').AsString; // ������ڵ�
             cells[41, r] := fieldByName('car_jubsu').AsString; // ������ȣ
             cells[42, r] := fieldByName('car_jigub').AsString; // ���޺����ȣ
             cells[43, r] := varImpleNo1;//fieldByName('����1').AsString; // ���ö�Ʈ ��Ϲ�ȣ1
             cells[44, r] := varImpleNo2;//fieldByName('����2').AsString; // ���ö�Ʈ ��Ϲ�ȣ2


             //ToDO : �����ߴ� ���Ϸù�ȣ�� DB���� ��������.
             if  fieldByName('ilyunNo').AsString <> ''then

                  Cells[45,r]  :=  formatFloat('00000',fieldByName('ilyunNo').AsInteger) //���Ϸù�ȣ - ����û���� �����Է�
             else
                  Cells[45,r]  := '';

             cells[50, r] := fieldByName('isInPat').AsString; // �Կ� 0:�ܷ� 1:�����Կ� 2:������
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

           //10���̸� ����
           // round(10 * floor( nSum80Chong /10));

             //100/100�̸� �Ѿ�
              ints[55, r] :=  round(nSum80Chong + nSum90Chong); // nSum80Chong;
             //100/100�̸� �����
              ints[56, r] :=  round(nSum80Bonin + nSum90Bonin);// nSum80Bonin;// 10 * Floor(((  nSum100by80Hang + nSum100by80Jae) * 0.8) / 10);
             //100/100�̸� û����
              ints[57, r] :=  round(nSum80Chung + nSum90Chung);//nSum80Chung;//   ints[55, r]-  ints[56, r] ;


          //    result := 100 * Floor(((varChong - nSum100by80Hang - nSum100by80Jae ) * bonRate) / 100);

              ints[58, r] := round( nSumBohumHangTot);


             cells[59, r] := formatDatetime('yyyymmddhhnn',  fieldByName('intime').AsDatetime); // �Կ��ð�

             cells[60, r] := formatDatetime('yyyymmddhhnn',  fieldByName('outtime').AsDatetime); // ������ð�

             cells[61, r] := fieldByName('sanjungTeakRye').AsString;



             //listbox1�� ����� �ڵ带 �������. �ߺ��� ���ؼ�.
              if trim(fieldByName('car_code').AsString) <> '' then
                   listBox1.items.add( fieldByName('car_code').AsString);








        // Summary Start==================================================

          varJong:=  grdMain.ints[32, r];

          TotSummary(varJong, r);

        // Summary End ===================================================


            // ����üũ start==================================================

            // ������ üũ
            if r > 1 then
            begin
              if (cells[3, r - 1] = varChart)
              // and
              // (cells[4, r - 1] = '1')
              // ToDo : ���������ϰ� ������ ���� �����̳� �����̳�?
                and ((fieldByName('chojae').AsString = '1') or
                (fieldByName('chojae').AsString = '3')) then
              begin
                ReportWrite(
                   varName,
                   varChart,
                   '����������',
                   varJinday,
                   varJumin,
                   fieldByName('jubsu_id').AsString
                   , r );
              end;

            end;

            // �� üũ
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

            // ��ȣ������ι�ȣ üũ
            if (varJongbeul in [2, 3, 5, 6]) and (varHwakinNo = '') then
            begin
              ReportWrite(varName, varChart, '��ȣ����Ȯ�ι�ȣ Ȯ��',varJinday ,
              varJumin,
              fieldByName('jubsu_id').AsString
              ,r,'','','',
              cells[14, r - 1],
              '1',
              '0' );
            end;

            // �ֹι�ȣ üũ
            if chkJumin(  deldash(cells[8, r])) = false then    //ToDo : ����� �����Ѱ� ������ �߳�
            begin
                  ReportWrite(varName, varChart, '�ֹι�ȣ Ȯ��(' + varJumin + ')',varJinday,
                  varJumin,
                  fieldByName('jubsu_id').AsString
                  ,  r  );
            end;

            //�����ȣ üũ
             if trim( cells[39, r]) ='' then
             begin
               ReportWrite(varName, varChart, '�����ȣ Ȯ��',varJinday,
               varJumin,
               fieldByName('jubsu_id').AsString
               ,r  );
             end;

        //���᳻��üũ
//        if grdJx2.RowCount <= 1 then
//        begin
//           ReportWrite(varName, varChart, '���᳻�� Ȯ��',varJinday,
//           varJumin,
//           fieldByName('jubsu_id').AsString,
//           r  );
//        end;

            // �ڰݹ�Ȯ��
            if (cells[5, r] <> '������') and
                 (trim(varPiboName) = '') then
            begin
              ReportWrite(varName
                         , varChart
                         , '�����ڰ� Ȯ��'
                         ,varJinday
                         ,varJumin
                         ,fieldByName('jubsu_id').AsString
                         ,r );
            end;
            // end ����üũ==================================================




             //---------------------------------------------------------------------
             //start �������ڵ带 jinryo_s�� ����.
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
                    grdJx_jinchal.Cells[0, grdJx_jinchal.RowCount -  1] :=  '������';
                    grdJx_jinchal.Cells[1, grdJx_jinchal.RowCount - 1]     := getSugaName(jinchalRyoCode);
                    grdJx_jinchal.ints[2, grdJx_jinchal.RowCount - 1]      := nDanga;
                    grdJx_jinchal.Cells[3, grdJx_jinchal.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
                    grdJx_jinchal.Cells[4, grdJx_jinchal.RowCount - 1]     := '1';//FieldByName('div').AsString;
                    grdJx_jinchal.Cells[16, grdJx_jinchal.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
                    grdJx_jinchal.ints[5, grdJx_jinchal.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
                    grdJx_jinchal.ints[7, grdJx_jinchal.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//�޿�����
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
                    grdJx_jinchal.ints[6, grdJx_jinchal.RowCount - 1]      :=  nDanga;        //�ݾ� = �ܰ� * ����* �ϼ�
//

    //                 // ��䰡���ڵ� ���ϱ�
                      jinchalRyoCode_gasan := '';

                      if (DayOfWeek(dWorkDate) = 7) // ����ϸ� ���
                        and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 ����
                        and (nChoJae <> 3) and (nChoJae <> 4) then // ���簡 �ɾ߰� �ƴϸ�
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

                        grdJx_jinchal.Cells[0, grdJx_jinchal.RowCount -  1] :=  '������';

                        grdJx_jinchal.Cells[1, grdJx_jinchal.RowCount - 1]     := getSugaName(jinchalRyoCode_gasan);
                        grdJx_jinchal.ints[2, grdJx_jinchal.RowCount - 1]      := nDanga;
                        grdJx_jinchal.Cells[3, grdJx_jinchal.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
                        grdJx_jinchal.Cells[4, grdJx_jinchal.RowCount - 1]     := '1';//FieldByName('div').AsString;
                        grdJx_jinchal.Cells[16, grdJx_jinchal.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
                        grdJx_jinchal.ints[5, grdJx_jinchal.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
                        grdJx_jinchal.ints[7, grdJx_jinchal.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//�޿�����
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
                        grdJx_jinchal.ints[6, grdJx_jinchal.RowCount - 1]      :=  nDanga;        //�ݾ� = �ܰ� * ����* �ϼ�

                      end; //����� �̸�...��.

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
                      '0',//inttostr(cbIo.ItemIndex) , //0: �ܷ� 1: �� 2: ���� �Կ�
                      grdJx_jinchal
                      ); // 1. ���᳻�� ����   2. RIS���� 3. ��Ƽ������ BIT����   121.166.70.201,51983  sa / bit
                  end;
               end;

              //�������ڵ� ���� ��.---------------------------------------------------------

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

        if cb3.checked then   //�ں�
           reSummary_jabo;

       application.ProcessMessages;
       pgInfo.ActivePageIndex := 1;


    end
    else
    begin
      showmessage('���᳻���� �����ϴ�.');
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
        // �Ǻ� , ������1, ������2, ������ 2���
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

          //ToDO: 10������ �ذ�� - ������ ������ �ѱݾ׿��� ������ ������ 100/100�̸� �ݾ� �� ���� ������ ���� ������.
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

          // �Ǽ�, �������, ���κδ�, û����, ����û����
          grdsummary.floats[1, 1] := sumBohumGunsu;
          grdsummary.floats[2, 1] := sumBohumChong;
          grdsummary.floats[3, 1] := sumBohumBonin;
          grdsummary.floats[4, 1] := sumBohumChung;

        end
        else if varJong  in [2, 3, 5, 6] then // ��ȣ
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

          //ToDO: 10������ �ذ�� - ������ ������ �ѱݾ׿��� ������ ������ 100/100�̸� �ݾ� �� ���� ������ ���� ������.
          sumYoYangChong1   := sumYoYangChong1
                                + round(10 * floor( (grdMain.ints[15, aRow]        //�����ѱݾ�
                                                   - grdMain.ints[55, aRow])/10)); //100/100�̸� �Ѿ�


          grdsummary.floats[1, 2] := sumBohoGunsu;
          grdsummary.floats[2, 2] := sumBohoChong;
          grdsummary.floats[3, 2] := sumBohoBonin;
          grdsummary.floats[4, 2] := sumBohoChung;
        end
        else if varJong  in [8] then // �ڵ�������
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

          // �Ǽ�, �������, ���κδ�, û����, ����û����
          grdsummary.floats[1, 3] := sumJaboGunsu;
          grdsummary.floats[2, 3] := sumJaboChong;
          grdsummary.floats[3, 3] := sumJaboBonin;
          grdsummary.floats[4, 3] :=  sumJaboChung;
        end
        else if varJong  in [7] then // ����
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

          // �Ǽ�, �������, ���κδ�, û����, ����û����
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
    // �Ǻ� , ������1, ������2, ������ 2���
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

      // �Ǽ�, �������, ���κδ�, û����, ����û����
      grdsummary.floats[1, 1] := sumBohumGunsu;
      grdsummary.floats[2, 1] := sumBohumChong;
      grdsummary.floats[3, 1] := sumBohumBonin;
      grdsummary.floats[4, 1] := sumBohumChung;

    end
    else    if grdMain.ints[32, r] in [8] then  //�ں�

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

      // �Ǽ�, �������, ���κδ�, û����, ����û����
      grdsummary.floats[1, 3] := sumBohumGunsu;
      grdsummary.floats[2, 3] := sumBohumChong;
      grdsummary.floats[3, 3] := sumBohumBonin;
      grdsummary.floats[4, 3] := sumBohumChung;

    end

    else if grdMain.ints[32, r] in [2, 3, 5, 6] then // ��ȣ
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

      // �Ǽ�, �������, ���κδ�, û����, ����û����
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
    cells[8,  RowCount - 1] := bondamCode; //���㱸��
    cells[9,  RowCount - 1] := WonWeNo; //ó������ȣ
    cells[10,  RowCount - 1] := WonWeIlu; //ó���ϼ�
    cells[11, RowCount - 1] := bonDamEk; //�����
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
         result := '���� ����';
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
            result := '�ֻ󺴾���';
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
                result := '����'
              end;
            end;
          end;
        end;

        next;
      end;
    end
    else
    begin
         result := '�� �󺴾���';
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

 //cbMaru.Checked���ο� ������� ���ο� ���� �޶����� ���� ������ �ٽ��ѹ� �ҷ�����.
 try
       btnLoadJinryoData.enabled:=false;


       LoadHospitalInfo;


       application.ProcessMessages;
       lblStat.caption:= '��ȸ/������ ���� ���Դϴ�.'+#10+
                        '��ø� ��ٷ� �ּ���...';

       application.ProcessMessages;


       LoadJinryoData;


       btnChungGuDataCreate.enabled := true;


       loadBohumsaList;


       grdMain.CheckAll(1);


       //ReCalcTotal;

       application.ProcessMessages;
       lblStat.caption:= '��ȸ/������ ���ƽ��ϴ�.'+#10+
                         '<û�� ����>�� ������ �� '+#10+
                         '[�ڷ����ϻ���]�� Ŭ�� �ϼ���.';


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
//      cbDoc.ColumnItems[cbDoc.itemindex, 2]; // cmbDoctor.Text; //�����
//    grdSangByung.Cells[14, ARow] := // grdSangbyung.RowCount - 1] :=
//      cbDoc.ColumnItems[cbDoc.itemindex, 3]; // ����� �����ȣ
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


       //  YoyangKiho := configvalue.varYoyang;  // �����(�Ƿ�޿����)��ȣ	an(8)
         edtYoyangKiho.Text:=configvalue.varYoyang;  // �����(�Ƿ�޿����)��ȣ	an(8)
         YoyangKiho := edtYoyangKiho.Text;  // �����(�Ƿ�޿����)��ȣ	an(8)

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
            chungGuName := '�������';   // û����	an(20)
            jaksungName := '�������';   // �ۼ��ڼ���	an(20)
            SeunginNo := 'B02TEMP20131016103102740000001'
         end
         else
         begin
          //  chungGuName := configvalue.varChungname;  // û����	an(20)
          //  jaksungName := configvalue.varChungname; // �ۼ��ڼ���	an(20)

         //   SeunginNo := configvalue.varChungNo;

         //   if trim(SeunginNo) =''  then  // B01004492018101608074024320180
               SeunginNo  := 'B01004492019101607232054320194';// 'B02011932013102407303025220135';


            edtwonjangname.Text:=configvalue.varChungname;  // û����	an(20)
            chungGuName := edtwonjangname.Text;   // û����	an(20)
            jaksungName := edtwonjangname.Text;   // �ۼ��ڼ���	an(20)


         end;

             edtJumin.Text:= deldash(configvalue.varChungJumin);  // �ۼ��ڻ������	an(13)
             jaksungJumin := edtJumin.Text; // �ۼ��ڻ������	an(13)





end;

procedure Tjumgum_f.saveChungGuInfo_maru;
var
   forminit : TiniFile;
   path:string;
begin
//        Path := GetConfigDir + 'db.ini';
//        FormInit := TIniFile.Create(Path);
//        FormInit.WriteString('û������', 'yoyangkiho', edtYoyangKiho.Text);
//        FormInit.WriteString('û������', 'wonjangname', edtwonjangname.Text);
//        FormInit.WriteString('û������', 'jumin', edtJumin.Text);
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
      showmessage(E.Message + #10#13 + targetPath + targetFile + ' ���ϻ��� ');
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
      showmessage(E.Message + targetPath + targetFile + ' ���ϻ��� ');
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
      showmessage(E.Message + #10#13 + targetPath + targetFile + ' ���ϻ��� ');
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


              grdMain.cells[9, FindRow]  :=    ma_piboName; //�Ǻ�����
              grdMain.cells[10, FindRow] :=   ma_k_number; //����ȣ



             saveGogekpibo(ma_piboid,
                grdReport.cells[2, grdReport.row], //Chart
                ma_Paname, // ma_PiboName,
                ma_K_Number,
                ma_jongbeul, // ����
                '', // �������ȣ
                '', // ���ּ�
                ma_Kiho, // ���ձ�ȣ
                '', // ����ȭ��ȣ
                ma_apply_Day, // ������ ������
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
                ma_special, // jange //Y : ��ֿ� N: ����ֿ�
                ma_RestrictCd, // restricted //�޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"
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
    //simsa 0, '', : ���� ����   1: �Ϸ�  3: ����   4: ���� 5: ����
   nRow  := grdMain.row;
   simsaValue :=  (sender as TmenuItem).tag;
   jubsuId := grdMain.cells[51, nRow];
    //update_Jinryo_p_HwakinNo
   if  update_Jinryo_p_simsa(jubsuid, inttostr(simsaValue))= true
    then
   begin
       grdMain.ints[54, nRow] := simsaValue;
//       case simsaValue of
//         0:   showmessage('�ʱ�ȭ �Ǿ����ϴ�.');
//         1:   showmessage('�ɻ�Ϸ� �Ǿ����ϴ�.');
//         3:   showmessage('�ɻ����� �Ǿ����ϴ�.');
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

//     grdneyuk.Cells[1,  grdneyuk.row]:=  refTyp;   //�߻�����
//     grdneyuk.Cells[2,  grdneyuk.row]:=  edtSugaCode.text;
//     grdneyuk.Cells[3,  grdneyuk.row]:=   lblJinSkey.caption ;    //�ٹ�ȣ
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
    cells[8,  RowCount - 1] := bondamCode; //���㱸��
    cells[9,  RowCount - 1] := WonWeNo; //ó������ȣ
    cells[10,  RowCount - 1] := WonWeIlu; //ó���ϼ�
    cells[11, RowCount - 1] := bonDamEk; //�����
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
          Showmessage('���� ���κδ� ������̹Ƿ� �����Ƿڰ� �ʿ�����ϴ�.');
          exit;
     end;

     if trim(aSangKey1) ='' then//Jinryo_f.RealGrid2.Cells[5, 0].AsString = '' then
     begin
          Showmessage('�ֻ󺴱�ȣ�� �����Ǿ����ϴ�. Ȯ���ϼ���.');
          exit;
     end;

     sSangkiho := trim(aSangKey1);//Trim(Jinryo_f.RealGrid2.Cells[5, 0].AsString);


     if trim(aWonweNo ) <> '' then //.Edit7.Text <> '' then  // ó�������ι�ȣ
          sYoungNo :=aWonweNo;//  deldash(lblSunapDay.caption) +// FormatDateTime('yyyymmdd', Jinryo_f.dMain.Date) +
            //   Formatfloat('00000', StrToInt(trim( lblWonweNo.Caption ) ));


     if trim(aWonweIlsu)  <> '' then    // ó���ϼ�
          sNaewon := trim(aWonweIlsu) ;

     sYN := 'N';

     if sYoungNo <> '' then
          sYN := 'Y';

     hkind:='M3';

     strJuminNo     := aJumin;// ma_jumin;  //���������� ���� �ȵ���.
     strPaitName    := aName;//ma_paName;  //���������� ���� �ȵ���.
     strkiho        := configvalue.varYoyang;
     clientInfo     := '127.0.0.1';
     strJumin2      := configvalue.varJumin;
     varJagyukID    := configvalue.varJagyukID;
     varJagyukPass  := configvalue.varJagyukPass;
     sDate          := aJinDay;//delSlash( delDash(grdReport.cells[4, grdReport.row]));//formatDatetime('YYYMMDD', now);

     //
     varPath := extractFilePath(paramstr(0)) + 'auto.exe';
     varParam1 := '��������';
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
          '2', //��������
          '1', //��(��)�� �ϼ�
          '0', //sNaewon, //�����ϼ�
          aBondamEk, //���� �Ϻ� �δ��
          aChungGuEk, //�ǰ���Ȱ ������ û����
          '0', //����δ��
          sSangkiho, //�ֻ󺴺з���ȣ(�౹��������-�����ȣ)
          sDate, //��������
          '', //ó���� ���� ��� ��ȣ(�౹)  - ���� �̱���
          sYoungNo, //ó���� ���� ���ι�ȣ
          sBonin, //���κδ㿩��
          '',
          clientInfo, //Client IP
          strJumin2, //�����ֹι�ȣ
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
              showmessage('�������� ����Ȯ�� ó�� �ϼ���.')
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
  // 0:��
  // 1:����
  // 4: ���� ����ȯ��(���޿���)
  // 7:���Ʊ���ȯ��(����ó ���ڰ��ڵ�)
  // 8: ���ΰ�������屺 ��
  // 9: ���� �������� ��������̿��
  // B: ���ƺ��� �����Ϲ�
  // C: ������ ��ͳ�ġ����ȯ��
  // D: ���ƺ��� ������(�޿�)2��
  // E: ������ ������ȯ 18���̸� ���κδ� �氨
  // F: ������ ����� ������ȯ 18���̸� ���κδ� �氨
  // G: ��޺����Ƿ����� �����
  // H: ��� ��ġ����ȯ�����
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
  iOrder : integer; //jinryo_s �� jin_order

//  wonjangJinryoIlsu : string;   ���������� �Ű��.
  w: integer;
  chaDeungJinilsu : string;

  sujinJumin : string;  //����û���� ��û�� �ֹι�ȣ �䱸������ �޶��...


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

                  //���� �ۼ�
                  {0��û��
                   1 ����û��
                   2 �߰�û��
                   3 �и�û��
                    }


                  grdMain.GetCheckBoxState(1, i, state);
                  if state = false then
                  begin
 //                   goto reLoad;
                   application.ProcessMessages;
                   AdvProgressBar1.Position := i;
                   continue;
                end;

{0. ��û��
1. ����û��
2. �߰�û��
3. �и�û��
}                case    rgChungGubun.ItemIndex of

                  1: //1. ����û��
                  begin
                          if trim(edtJubsuNo.text) ='' then
                          begin
                            showmessage('���� ������ȣ�� �Է��ϼ���.');
                            edtJubsuNo.SetFocus;
                             btnChungGuDataCreate.enabled := true;

                            Closefile(F);

                            Deletefile(targetPath + targetFile);

                            break;
                          end;

                          if trim(edtSimsaBulCode.Text) ='' then
                          begin
                            showmessage('�ɻ�Ҵ��ڵ带 �Է��ϼ���.');
                             btnChungGuDataCreate.enabled := true;
                            edtSimsaBulCode.SetFocus;
                            Closefile(F);
                            Deletefile(targetPath + targetFile);
                             break;
                          end;

                          if trim(grdMain.cells[45, i]) ='' then
                          begin
                            showmessage(inttostr(i)+ '���� �� ���������� ���Ϸù�ȣ�� �Է��ϼ���.');

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

                  2: //2. �߰�û��
                  begin
                          if trim(edtJubsuNo.text) ='' then
                          begin
                            showmessage('���� ������ȣ�� �Է��ϼ���.');
                            edtJubsuNo.SetFocus;
                             btnChungGuDataCreate.enabled := true;

                            Closefile(F);

                            Deletefile(targetPath + targetFile);

                            break;
                          end;



                          if trim(grdMain.cells[45, i]) ='' then
                          begin
                            showmessage(inttostr(i)+ '���� �� ���������� ���Ϸù�ȣ�� �Է��ϼ���.');

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
                  // 2. �������ڵ� ������
                  { makejinchalRyoCode(
                    nChoJae: Integer;
                    nAge: Integer;
                    dWorkDate: TDateTime;
                    jange:boolean;
                    yongua:boolean;
                    ilban:boolean;
                    ifirst:boolean }
                  {
                    1.�ǰ�����
                    2.�Ƿ�޿�1��
                    3.�Ƿ�޿�2��
                    4.�Ϲ�
                    5.�Ƿ�޿�4��
                    6.�Ƿ�޿�8��
                    7.����
                    8.�ں�
                    9.������1��
                    10.������2��
                    11.������2�������
                  }
                  if varKind = '����' then
                  begin

                    if ( grdMain.ints[32, i] in [4, 7, 8, 2, 3, 5, 6] )
                        // �Ϲ�, ����, �ں�, �Ƿ�޿�1�� ,�Ƿ�޿�2�� ,�Ƿ�޿�4��, �Ƿ�޿�8��
                         or (grdMain.cells[3, i] = '' )   //���� ����
                         or (grdMain.cells[8, i] = '')  then   //�ֹι�ȣ ������
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
                  else if varKind = '��ȣ' then
                  begin
                    if (grdMain.ints[32, i] in [4, 7, 8, 1, 9, 10, 11] )
                     // �Ϲ�, ����, �ں�, �ǰ�����, ������1��, ������2��, ������2�����
                    or (grdMain.cells[3, i] = '' )     //���� ����
                     or (grdMain.cells[8, i] = '')  then   //�ֹι�ȣ ������
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
                        varBohoGubun := '1'; // 1��
                      3:
                        varBohoGubun := '2'; // 2��
                      5:
                        varBohoGubun := '4'; // ���
                      6:
                        varBohoGubun := '8'; // 2������� ������� 1������ 6: 2������� ������� 2������
                    end; // 9:����� ��  �ܱ��� �ٷ���

                    varIlyun_boho := varIlyun_boho + 1;

                    varIlyun := varIlyun_boho;



                    jubsuId := grdMain.cells[51, i];

                    updateIlyunNo(jubsuId, inttostr(varIlyun)) ;
                  end;




                  grdNeyuk.RemoveRows(1, grdNeyuk.RowCount - 1); // 1. Ư�������� ��� �����...

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

                  // ��䰡���ڵ� ���ϱ�
                  jinchalRyoCode_gasan := '';
                  if (DayOfWeek(dWorkDate) = 7) // ����ϸ� ���
                    and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 ����
                    and (nChoJae <> 3) and (nChoJae <> 4) then // ���簡 �ɾ߰� �ƴϸ�
                  begin
                    jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
                      jange,
                       //  yongua, ilban, ifirst,
                      grdMain.ints[28, i],
                      true);

                  end;

                  { 1�ǰ�����
                    2�Ƿ�޿�1��
                    3�Ƿ�޿�2��
                    4�Ϲ�
                    5�Ƿ�޿�4��
                    6�Ƿ�޿�8��
                    7����
                    8�ں�
                    9������1��
                    10������2��
                    11������2�������
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

                  { 1:����,2:�߰�,3:�и�,8:����
                    ��û��
                    1����û��
                    ����û��
                    2�߰�û��
                    3�и�û��
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



                  if  rgChungGubun.ItemIndex=  1  then     //: //1. ����û��
                  begin
                     if checkbox2.Checked = false then
                        sujinJumin := AnsiStrings.Format('%-11s', [copy(grdMain.cells[8, i], 1 ,11)])  // �������ֹι�ȣ (-) ��������
                     else
                        sujinJumin :=  AnsiStrings.Format('%-13s', [grdMain.cells[8, i]]); // �������ֹι�ȣ (-) ��������
                  end
                  else
                     sujinJumin :=  AnsiStrings.Format('%-13s', [grdMain.cells[8, i]]); // �������ֹι�ȣ (-) ��������


                   nSum1 :=   round(10 * floor( (grdMain.ints[15, i] )/10)) ;
                   nSum2 :=   round(10 * floor( (grdMain.ints[55, i] )/10)) ;
               //    nTot1 :=   nSum1 -  nSum2;


                   nTot1 :=  round(10 * floor( (grdMain.ints[58, i] )/10)) ;
                   totYoyang1:=  nTot1;
                     //  round(10 * floor( (grdMain.ints[15, i] - grdMain.ints[55, i] )/10))  ;

                  // �Ϲݳ���'A'
                  WriteLn(F, ChungGuNo + formatFloat('00000', varIlyun) + 'A'
                    // �������� A �Ϲ� B �� C ���� D ó�� E Ư�������޸�
                    + varSusikNo // ���Ĺ�ȣ  H022:ġ�����޿��Կ� H023:ġ�����޿��ܷ�
                    // H032:ġ���Ƿ�޿��Կ� H033:ġ���Ƿ�޿� �ܷ�
                    + AnsiStrings.Format('%-8s', [edtYoyangKiho.Text]) // �����ȣ
                    + AnsiStrings.Format('%-11s', [varJohapKiho])  // [grdMain.cells[10, i] // ������ȣ(������) ���ձ�ȣ
                    + AnsiStrings.Format('%-1s', [varBohoGubun]) // AnsiStrings.Format('%-1s', ['']) // �Ƿ�޿� ��������
                    + AnsiStrings.Format('%-1s', [gongsangGubun]) // ���󱸺� 0�� 1���� ..�� ���� ���Ǽ� ����.
                    + AnsiStrings.Format('%-1s', [varjungekGubun]) // ����0  ����9
                    + AnsiStrings.Format('%-1s', [varChungGubun]) // û�������ڵ�  1:����,2:�߰�,3:�и�,8:����
                    + AnsiStrings.Format('%-7s', [varJubsuNo]) //    varJubsuNo    ������ȣ  ���� û���� ���� ������ȣ
                    + AnsiStrings.Format('%-5s', [varMyungIlyun]) // varMyungIlyun �����Ϸù�ȣ  ���� û���� ���� �Ϸù�ȣ
                    + AnsiStrings.Format('%-2s', [varSayuCode]) //   varSayuCode   �����ڵ� ����û���� ��û���� ������ �ɻ�Ҵ��ڵ����
                    + AnsiStrings.Format('%-8s', ['']) // �����Կ�������   �Կ����޿���� �и�û���� ���� CCYYMMDD
                    + AnsiStrings.Format('%-20s', [unicodeString(grdMain.cells[9, i])]) // ������(������)����
                    + AnsiStrings.Format('%-20s', [grdMain.cells[10, i]]) // ����ȣ(����ü���ȣ)
                    + AnsiStrings.Format('%-20s', [grdMain.cells[3, i]]) // �����ڼ���
                    + sujinJumin //AnsiStrings.Format('%-13', [sujinJumin])
                    + Format('%3s', [jinilsu]) // ���޿��ϼ� , ó�泻���� �ϼ��� ���󰣴�.
                    + Format('%3s', ['1']) // �Կ��ϼ�
                    + AnsiStrings.Format('%-31s', ['']) // ����(�� �������׸�)
                    + AnsiStrings.Format('%-2s', ['']) // ����,�Կ����(�������̻�)
                    + Format('%-1s', ['1']) // ������ 1��� 2�̼� 3ȸ�� 4��� 9����Ǵ� �ܷ�����
                    + Format('%10s', [ inttostr( totYoyang1 )]) // ���޿�����Ѿ�1
             //       + Format('%10s', [ inttostr(round(10 * floor(grdMain.ints[16, i]/10)) - round(10 * floor(grdMain.ints[56, i]/10)))]) // �����Ϻκδ��
                      + Format('%10s', [ inttostr(round(10 * floor((grdMain.ints[16, i]- grdMain.ints[56, i])  /10)) )]) //- round(10 * floor(grdMain.ints[56, i]/10)))]) // �����Ϻκδ��
                    + Format('%10s', ['0']) // ���κδ���Ѿ��ʰ���
             //       + Format('%10s', [ inttostr(round(10 * floor(grdMain.ints[17, i]/10))- round(10 * floor(grdMain.ints[57, i]/10)))]) // û����
                      + Format('%10s', [ inttostr(round(10 * floor((grdMain.ints[17, i]- grdMain.ints[57, i])  /10)) )]) //- round(10 * floor(grdMain.ints[57, i]/10)))]) // û����
                    + Format('%10s', [varJiwonGeum]) // ������
                    + Format('%10s', [grdMain.cells[33, i]]) // ������Ƿ��
                    + Format('%10s', ['0']) // ��ұ�
                    + Format('%10s', [ inttostr( totYoyang1 )])// [inttostr( round(10 * floor( (grdMain.ints[15, i]  )/10))
                                          //    - round(10 * floor( (grdMain.ints[55, i]  )/10))   )]) // ���޿����2, ������Ѿ�
                    + Format('%10s', ['0']) // ����û����
                    + Format('%-10s', ['']) // ����
                    + Format('%-10s', ['']) // ����
                    + Format('%10s', ['0']) // �ǰ�����(�Ƿ�޿�) 100/100 ���κδ���Ѿ�
                    + Format('%10s', ['0']) // �����Ϻκδ��
                    + Format('%10s', [inttostr(round(10 * floor(grdMain.ints[55, i]/10)) )  ]) // 100/100 �̸� �Ѿ�
                    + Format('%10s', [inttostr(round(10 * floor(grdMain.ints[56, i]/10)) ) ]) //grdMain.cells[56, i]]) // 100/100 �̸� �����Ϻ� �δ�� 10�� �̸� ����
                    + Format('%10s', [inttostr(round(10 * floor(grdMain.ints[57, i]/10)) ) ])// 100/100 �̸� û����
                    + Format('%10s', ['0']) // 100/100 �̸� ���� û����
                    );

                  // Ư������ ����(�����)
                  // MT008  �ǻ纰 ����(����)�ϼ�.  ù��° ���Ϸÿ��� �����Ѵ�.


//                  if varIlyun = 1 then
//                  begin
//                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT008',   wonjangJinryoIlsu  )  ;
//                    // MT008�ֹι�ȣ(ù6�ڸ�)/����(����)�ϼ�     //641117/22/820207/22/810804/22
//                  end;

                  if grdMain.cells[19, i] <> '' then // ���ؿ���
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT001', grdMain.cells[19, i]);




                  if grdMain.cells[27, i] <> '' then // �޿�ȯ�� ����Ȯ�ι�ȣ 13�ڸ�
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT019', grdMain.cells[27, i]);



                  if grdMain.cells[26, i] <> '' then // �޿�ȯ�� ���κδ� ����
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT018', grdMain.cells[26, i]);

                  if grdMain.cells[14, i] <> '' then
                  begin
                    ChubangNo := formatDatetime('YYYYMMDD', strtodate(grdMain.cells[4, i])) +
                      formatFloat('00000', grdMain.ints[14, i]);

                    if grdMain.cells[35, i] <> '' then // ��������Ư����������
                      BufferNeyuk(grdNeyuk, '4', ChubangNo, '', grdMain.cells[35, i],
                        grdMain.cells[36, i]);
                  end;

                    if (trim(grdMain.cells[37, i]) <> '') and    // ����Ư������
                              (grdMain.cells[61, i] = '1')  then  //Ư������
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002',
                      trim( subStr( grdMain.cells[37, i], 1, '|') ) );


                 if  cbGubunIn.checked   then   //�Կ�
                 begin
                     //�Կ��ð� ����ð�
                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS005',
                           trim( grdMain.cells[59, i]  )
                           +'/'
                           + trim( grdMain.cells[60, i]  ));  //�Կ��ð� / ����ð�



                 end;

//                if  (nChoJae = 3) or (nChoJae = 4)  then//�ɾ� ����
//                begin
//                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS011',
//                           trim( grdMain.cells[59, i]  )
//                           +'/'
//                           + trim( grdMain.cells[60, i]  ));  //�Կ��ð� / ����ð�
//
//                end;


                neyuk :='';
                grdMain.CellToRich(23, i,richedit1 );

                neyuk        :=  grdMain.RichToString(richedit1);  // copy(grdNeyuk.cells[5, i],0,699);
                neyuk        :=  richEdit1.text;//copy(neyuk,0,699);

                neyuk        :=  DeleteLineBreaks( copy( ansistring(neyuk),0,699) );


                //  if trim(grdMain.cells[23, i]) <> '' then // �ɻ��������
                 if trim( neyuk  ) <> '' then // �ɻ��������
                  begin
                                                       //ToDO: CR LF���� �ؾ� �ٹٲ��� ���Ͼ��.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MX999', neyuk);// DeleteLineBreaks(grdMain.Cells[23, i]) );
                  end;


                 if grdMain.cells[47, i] <> '0'   then // ���ö�Ʈ Ʋ�� ����(isAI)�� �Ϲ�����(0)�� �ƴѰ��
                 begin

                      if grdMain.cells[43, i] <> '' then // ���ö�Ʈ��Ϲ�ȣ 1
                      begin
                           BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[43, i]);
                      end;



                      if grdMain.cells[44, i] <> '' then // ���ö�Ʈ��Ϲ�ȣ 2
                      begin
                           BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[44, i]);
                      end;
                 end;


                  if grdMain.cells[49, i] ='1' then // �ӻ��
                  begin
                                                       //ToDO: CR LF���� �ؾ� �ٹٲ��� ���Ͼ��.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'F015');// DeleteLineBreaks(grdMain.Cells[49, i]) );
                  end;


                  if (grdMain.cells[28, i] ='1') or // �������Ϲݰ���
                   (grdMain.cells[28, i] ='2') or // �Ϲݰǰ�����
                   (grdMain.cells[28, i] ='3') // ��������
                   then
                  begin
                                                       //ToDO: CR LF���� �ؾ� �ٹٲ��� ���Ͼ��.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'JT018',  DeleteLineBreaks(grdMain.Cells[28, i]) );
                  end;

                  loadTjungHx( grdneyuk,
                        grdMain.cells[2, i],
                        grdMain.cells[4, i],
                        grdMain.cells[51, i], 1); //�������� ���������� DB���� �ҷ�����

           //      cells[28, r] := fieldByName('gub_gu').AsString;
            // �����ư������� // gub_gu �������Ϲݰ��� ������=1, �Ϲ�=2, ��������=3





                  // �󺴳���'B'

                 if ( trim(grdMain.cells[43, i]) <> '') or
               (trim(grdMain.cells[44, i]) <> '' ) then
                   isImplant:=true
               else
                    isImplant:=false;




               if  grdMain.cells[47, i] ='1' then   // WriteMyungSeSeo_Sangbyubg���� ġ���� ����� ����...
               begin
                 isImplant := true;
               end
               else
               begin
                 isImplant := false;
               end;

          //[grdMain.cells[48, i]]
          //0. �⺻
          //1. ���ö�Ʈ�� �ִ°��             1
          //2. Ʋ�ϸ� �ִ°��                 1
          //3. ���ö�Ʈ�� Ʋ��                 2
          //4. ���ö�Ʈ�� Ÿ��               2
          //5. Ʋ�Ͽ� Ÿ��                   2
          //6. ���ö�Ʈ��Ʋ�Ͽ� Ÿ��         3
          //7. Ʋ�Ͽ� Ʋ�ϼ���                 1
          //8. Ʋ�Ͽ� Ʋ�ϼ����� Ÿ��        2
          //9. Ʋ�ϼ���                        1
          //10. Ʋ�ϼ����� Ÿ��               2
          //11. Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��           3
          //12. Ʋ�Ͽ� Ʋ�ϼ����� ���ö�Ʈ�� Ÿ��    3



                  WriteMyungSeSeo_Sangbyubg('B',
                        grdMain.cells[2, i],
                        grdMain.cells[4, i],
                        grdMain.cells[39, i], //�⺻ �����ȣ jinryo_p
                        varIlyun,
                        grdMain.cells[20, i],
                        isImplant,
                        grdMain.cells[47, i],  //1: implant 2: Ʋ�� 0:������
                        grdMain.cells[46, i],  //jinryo_o [iorder]
                        grdMain.ints[48, i]); //Ʋ�� ���� ����







                  // ���᳻��'C'

                  // jinruo_s set
                   fillJinryoData(i, false);

                  // �������ڵ带 �ִ´�.
                  // Ʋ�ϵ� �����ᰡ 0 �ΰ��� �������ڵ带 ���� �ʴ´�.

                  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  //�������ڵ� �ִ� ���
                  //1. GrdJx2�� ���� �ʰ� .GHP���Ͽ� �ٷ� �о�ֱ�  --- ���� ���
//                  if grdMain.ints[34, i] <> 0 then // ������(jubsuak)
//                  begin
//                    WriteMyungSeSeo_Chojae(  // ������ �����ڵ� �ֱ�
//                        'C',
//                        grdMain.cells[1, i], //chart
//                        grdMain.cells[4, i], //jin_day
//                        varIlyun,            //�Ϸù�ȣ
//                        grdMain.ints[31, i], //����
//                        grdMain.cells[13, i],//jin_time
//                        grdMain.cells[39, i]);//�����ȣ
//                    // jin_time
//
//                    if (jinchalRyoCode_gasan <> '')
//                       and (configvalue.varGubun <> '����') then
//                          WriteMyungSeSeo_SatGasan(
//                               'C',
//                               grdMain.cells[2, i],
//                               grdMain.cells[4, i],
//                               varIlyun,
//                               grdMain.ints[31, i],
//                               grdMain.cells[13, i]); // ��䰡���ڵ�
//                  end;

                  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  //�������ڵ� �ִ� ���
                  //2. GrdJx2�� �־� ���� GrdJx2���� ������  �ҷ��� ���� �����  ���






                  //���ö�Ʈ,Ʋ�ϴ� ���᳻���� �и��ؾ��Ѵ�.    1:���ö�Ʈ, 2:Ʋ��

                      if  grdMain.cells[47, i] ='0' then   // ���ö�Ʈ, Ʋ�� �и��Ȱ��� �Ϲ�ġ��
                           WriteMyungSeSeo_jinryo(
                            true,
                           'C',
                              grdMain.cells[2, i],
                              grdMain.cells[4, i],
                              varIlyun,
                              grdMain.ints[31, i],  //�����ڵ�
                              grdMain.ints[32, i],  //�����ڵ�
                              '16',
                              grdMain.ints[7, i],          //����
                               grdMain.cells[51, i],    //jubsu_id
                               grdMain.cells[50, i],    //isInpat
                                grdMain.cells[38, i],   //�ǻ��
                                 grdMain.cells[39, i],  //�����ȣ
                               false, false, '0')  // �Ϲ� ���᳻��

                          else
                            if  grdMain.cells[47, i] ='1' then   // ���ö�Ʈ, Ʋ�� �и��Ȱ� ��  ���ö�Ʈ
                                     WriteMyungSeSeo_jinryo(true, 'C',
                                     grdMain.cells[2, i], //chart
                                     grdMain.cells[4, i], //jinDay
                                        varIlyun,        //illyun
                                        grdMain.ints[31, i],   //�����ڵ�
                                        grdMain.ints[32, i],  //�����ڵ�
                                        '16',
                                        grdMain.ints[7, i] ,   //����
                                      grdMain.cells[51, i],    //jubsu_id
                                      grdMain.cells[50, i],    //isInpat
                                      grdMain.cells[38, i],   //�ǻ��
                                      grdMain.cells[39, i],  //�����ȣ

                                        false,                 //jabo
                                        false,   // ���ö�Ʈ ���᳻��
                                        '1' )    //iaValue


                                else
                                if  grdMain.cells[47, i] ='2' then   // ���ö�Ʈ, Ʋ�� �и��Ȱ� �� Ʋ��
                                     WriteMyungSeSeo_jinryo(true, 'C', grdMain.cells[2, i], grdMain.cells[4, i],
                                        varIlyun, grdMain.ints[31, i], //�����ڵ�
                                        grdMain.ints[32, i],  //�����ڵ�
                                        '16',
                                        grdMain.ints[7, i],        //����
                                grdMain.cells[51, i],    //jubsu_id
                               grdMain.cells[50, i],    //isInpat
                                grdMain.cells[38, i],   //�ǻ��
                                 grdMain.cells[39, i],  //�����ȣ


                                         false, false, '2')  // Ʋ�����᳻��


                                else
                                begin

                                   WriteMyungSeSeo_jinryo(
                                   true,
                                   'C',
                                   grdMain.cells[2, i],
                                   grdMain.cells[4, i],
                                   varIlyun,
                                   grdMain.ints[31, i],    //�����ڵ�
                                   grdMain.ints[32, i],  //�����ڵ�
                                   '16',
                                   grdMain.ints[7, i],          //����
                                   grdMain.cells[51, i],    //jubsu_id
                                   grdMain.cells[50, i],    //isInpat
                                   grdMain.cells[38, i],   //�ǻ��
                                   grdMain.cells[39, i],  //�����ȣ

                                            false, false, '');  // ���᳻��

                                end;



//                 if useWonNaeTuYak = true then
//                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS002', inttostr(iChongTu));
//                    // ���������ϼ�(�ֻ���)


                  // ó�泻��'D'
                  WriteMyungSeSeo_Chubang('D', grdMain.cells[4, i], varIlyun,  grdMain.ints[14, i]);

                  // Ư������'E'
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
//     grdneyuk.Cells[1,  grdneyuk.rowcount-1]:=  refTyp;   //�߻�����
//     grdneyuk.Cells[2,  grdneyuk.rowcount-1]:=  edtSugaCode.text;
//     grdneyuk.Cells[3,  grdneyuk.rowcount-1]:=   lblJinSkey.caption ;    //�ٹ�ȣ
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
            aGrid.Cells[col3, ARow]);      //aSutak  0:�Ϲ� 1: ��Ź�˻� 2: ��ü�˻�

  // GroupCode su_gu2 = 2 ��ü�˻�  aGrid.Cells[3, ARow]

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
//   combobox1.items =����
//����
//��ȣ
//�ں�

          //�Ǻ�, ��ȣ, �ں�,  �������� Ȯ��
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

   loadMyungSe( formatFloat('#', kindTag3),//inttostr(comboBox1.ItemIndex),  //1: ����, 2:��ȣ 3:�ں�
         cbYear1.Text,
         cbMonth1.Text,
         cbMyungNo.Text);
        // formatFloat('0000',cbChungno.ItemIndex) );

end;

procedure Tjumgum_f.Button31Click(Sender: TObject);
begin
            if  trim(edtBeforeCode.Text) ='' then
            begin
              showmessage('���� �� �ڵ带 �Է��ϼ���.');
              edtBeforeCode.SetFocus;
              exit;
            end;

            if  trim(edtAfterCode.Text) ='' then
            begin
              showmessage('���� �� �ڵ带 �Է��ϼ���.');
              edtAfterCode.SetFocus;
              exit;
            end;



           if MessageDlg('�����Ͻ� �ڷ�'+'['+edtBeforeCode.Text+']'+'�� ������ �ϰ� �����մϱ�?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
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
                          1:  // �Ⱓõü
                            begin
                               sql.Add('and (jin_day >=:jin_day1 and jin_day <=:jin_day2) ');

                               paramByname('jin_day1').AsString   := formatDatetime('YYYY-MM-DD', dtStart.date);// lblJubsuId.caption;
                               paramByname('jin_day2').AsString   :=  formatDatetime('YYYY-MM-DD',dtFinish.date);//ma_Jubsu_Id;// lblJubsuId.caption;
                            end;
                          0:  //���⸸ ����
                            begin

                              sql.Add('and jubsu_id=:jubsu_id');
                               paramByname('jubsu_id').AsString   := ma_Jubsu_Id;// lblJubsuId.caption;
                            end;
                          end;


                      execsql;

                   end;
                    showmessage('�ϰ� ����Ǿ����ϴ�.');

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

//   loadMyungSe( inttostr(comboBox1.ItemIndex),  //1: ����, 2:��ȣ 3:�ں�
//         cbYear.Text,
//         cbMonth.Text,
//          comboBox2.Text);


    LoadMyungseList( cbYear1.Text,
         cbMonth1.Text) ;
//   combobox1.items =����
//����
//��ȣ
//�ں�

//   loadMyungSe( inttostr(comboBox1.ItemIndex),  //1: ����, 2:��ȣ 3:�ں�
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
//   combobox1.items =����
//����
//��ȣ
//�ں�

          //�Ǻ�, ��ȣ, �ں�,  �������� Ȯ��
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

      // implant_info���� ���ö�Ʈ�� �� ġ�������� �ִ�. ���ڴ� ó�� ����� ��¥.
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
      //�迭�� �־����...

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


        //Ʋ�� ���ö�Ʈ ���� û���� ��쿡  jin_order�� �����ؼ� ���� �����;� �Ѵ�.
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
//                   paramByName('jin_order').AsString := '0'; //��Ÿ�� ��쿡�� �� ó�� order�� ��������.
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

          sangBeongGubun := ''; //�ֻ��� �ϳ��� ���� �������� �λ�...
                                //������ ����? �Ŀ� ������ �Է��� �� �ֵ��� ����.

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


            //���ö�Ʈ, Ʋ���� ���� �ٸ� ���� �ִ� ���
            //���ö�Ʈ�� K081 Ʋ�ϸ� Z463�� ���Ƿ� �ִ´�.
            if   iaValue ='1' then
            begin
                  s_key[0] := 'K081';
                  s_key[1] := '';
                  s_key[2] := '';

                    //���ö�Ʈ, Ʋ���� ���� �ٸ� ���� �ִ� ��� MT037 �� M�� �ִ´�.
                    varMT037 := varMT037 + 1;
            end;

            if   iaValue ='2' then
            begin

                //  s_key[0] := 'Z463';
                //  s_key[0] := 'K081';
               if isArtRefair in [9, 10] then //Ʋ�� ����
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

            teeth1 := fieldByName('p1').AsString; // ���
            teeth2 := fieldByName('p2').AsString; // �»�
            teeth3 := fieldByName('p4').AsString; // ����
            teeth4 := fieldByName('p3').AsString; // ����



          //���⼭ ���ö�Ʈ ġ�Ƹ� ã�Ƴ��� 0���� ������.

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






            if cbChungGuMethod.ItemIndex = 0 then // �����û��
            begin
              teeth1 := TeethConvert_SimPyungWon(teeth1); // ���
              teeth2 := TeethConvert_SimPyungWon(teeth2); // �»�
              teeth3 := TeethConvert_SimPyungWon(teeth3); // ����
              teeth4 := TeethConvert_SimPyungWon(teeth4); // ����



            end
            else if cbChungGuMethod.ItemIndex = 1 then // EDIû��
            begin
              teeth1 := TeethConvert_EDI(teeth1); // ���
              teeth2 := TeethConvert_EDI(teeth2); // �»�
              teeth3 := TeethConvert_EDI(teeth3); // ����
              teeth4 := TeethConvert_EDI(teeth4); // ����
            end;





         //    teakRyeNo := trim(loadTeakRyeNo(varChart)) ;
             artteethUpper := trim(loadTeuleeRegiNo(varChart).upper);
             artteethLower := trim(loadTeuleeRegiNo(varChart).lower);



           if teakRyeNo <> '' then

              BufferNeyuk(grdNeyuk, '1', '', '', 'MT014',
              trim(substr(teakRyeNo, 1, '|'))   );

           for i := 0 to 2 do  //�� ������ŭ ������ �����ȴ�.
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
                        // �����ȣ
                        //ToDo : �󺴿� ��ϵ� �����ȣ������ �������µ�...jinryo_p����� ��ü...���� 2017-10-18 �繮ġ�� ���� �������
                       //    if fieldByName('myunhu').AsString <> '' then
                       //    begin
                       //      myunhuNo := fieldByName('myunhu').AsString ;
                       //      varDrMyunHu2 := myunhuNo;
                       //
                       //    end
                       //    else
                           begin

                         //    myunhuNo := varDrMyunHu; //�⺻ ��ϵ� �����ȣ
                             myunhuNo :=  aMyunHu;
                             varDrMyunHu2 :='';
                           end;

                           myunhuKind := '1'; // 2:ġ���ǻ�    1:�ǻ�
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

                // Ư�ʵ�Ϲ�ȣ�� �ְ� ������ ���̸�...
                // ����Ư�ʹ�ȣ ���� Ȯ��
                { //�����Է½� Ư���ڵ� �Է��Ͽ� �ҷ����� ������ ����
                  if teakRyeNo <> '' then
                  begin
                  // ���ڵ�� Ư����ȣ�� Ư�������� �ҷ�����. MT002
                  if (s_key[i] = 'Q754') then
                  begin
                  BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'V182');
                  end;

                  if (s_key[i] = 'M350') then
                  begin
                  BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'V139');
                  end;

                  // ��� ��ȯ���� ���� 5�Ⱓ ���� ������ ���Ḧ ���� ���
                  // ������ Ư����ȣ �ο�
                  if (s_key[i] = 'D102') or (s_key[i] = 'C031') then
                  begin
                  BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'V193');
                  end;


                  end;
                }


                // MT037 �ѹ��� �ֱ� (������ Ʋ�� �� Ÿ �� ����) �ѹ��� ����)


                //Ʋ�� ��Ϲ�ȣ ����
                //����ΰ��  artteethUpper
                if (artTeethUpper <> '')
                      and ( cntUpper > 0 ) then
                  //   and (teeth1 + teeth2 = '0**************0') then  //����� ���õ� ���
                begin
                  if (s_key[i] = 'Z463') or (s_key[i] = 'K081') then
                        BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', artTeethUpper)
                  else
                  begin

               //     if varMT037 = 0 then
              //        BufferNeyuk(grdNeyuk, '1', '', '', 'MT037', 'M');


                  end;
                end;




                //�Ͼ��ΰ��  artteethLower
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


                //Ÿ�� ����� ���ÿ� ������ö�Ʈ ��� ����� 'M' ����
                if varMT037 > 0 then
                      BufferNeyuk(grdNeyuk, '1', '', '', 'MT037', 'M');



            if cb3.checked  =  false then

                WriteLn(F, ChungGuNo + formatFloat('00000', illyun)
                  + varGubun
                  + AnsiStrings.Format('%-1s', [sangBeongGubun]) // �󺴺з�����,  1 �ֻ� 2 �λ� 3 �����Ȼ�
                  + AnsiStrings.Format('%-6s', [s_key[i]])
                  + AnsiStrings.Format('%-2s', [kwamok])
                  + AnsiStrings.Format('%-2s', ['']) // ���� ������������
                  + AnsiStrings.Format('%-8s', [jinday])
                  + AnsiStrings.Format('%-1s', [myunhuKind])  // 1:�ǻ� 2:ġ���ǻ�
                  + AnsiStrings.Format('%-10s', [myunhuNo])
                  + AnsiStrings.Format('%-8s', [teeth1])
                  + AnsiStrings.Format('%-8s', [teeth2])
                  + AnsiStrings.Format('%-8s', [teeth3])
                  + AnsiStrings.Format('%-8s', [teeth4]))

            else

                  WriteLn(F, ChungGuNo
                  + formatFloat('00000', illyun)
                  + varGubun
                  + Format('%-1s', [sangBeongGubun]) // �󺴺з�����,  1 �ֻ� 2 �λ� 3 �����Ȼ�
                  + Format('%-6s', [s_key[i]])
                  + Format('%-2s', [kwamok]) +
                  Format('%-2s', ['']) // ���� ������������
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
  isSugaDanga : boolean; //������ true ���� false
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



    if iaValue ='1' then     // ���ö�Ʈ, Ʋ�� �и��Ȱ� ��  ���ö�Ʈ
    begin
       // and (su_gu1 <> ''1'' )
        sql.text :=  sql.text +   ' and (su_key like ''UB%''    or  su_gu3 = ''28'' )  and  not ( su_key like ''UA%''  or su_key like ''U15%'')   ';  //
    end
    else

    if iaValue ='2' then     // ���ö�Ʈ, Ʋ�� �и��Ȱ� ��  Ʋ��
    begin
       // and (su_gu1 <> ''1'' )
        sql.text :=  sql.text +   ' and (  su_key like ''UA%''  or su_key like ''U15%''   )    ';    //
    end
    else
    if iaValue ='0' then    // ���ö�Ʈ, Ʋ�� �и��Ȱ� ��  �Ϲ�ġ��
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

        if newDanga=0 then // �ܰ��� 0�ΰ��� ����.
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

        if (fieldByName('jin_simya').AsString = '1') and (su_gu3 <> 9) // ����
          and (su_gu3 <> 41) then // �Ǿ�ǰ������
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
        begin // �Ҿư����̸�  30% (8���̸�), 10%(��缱)

             varsoa := true;
              {
                if ( (Age >= 0) and  (Age < 8))   then
                begin
                     { if (su_gu3 = 31) then
                      begin // ��缱
                         if  ( varjinday < '2017-07-01') then   //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
                            varsoa := true;
                          // gasan := gasan + 0.1;
                      end
                            else
                                if (su_gu3 = 39) or // ��缱 ct
                                        (su_gu3 = 40) then // ��缱 MRI
                                begin
                                  //gasan := gasan + 0.15;
                                   if  ( varjinday < '2017-07-01') then   //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
                                     varsoa := true;
                                end
                                    else
                                    if (su_gu3 = 19) then // ����
                                    begin
                                      //gasan := gasan + 0.3;
                                       if  ( varjinday < '2017-07-01') then   //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
                                         varsoa := true;
                                    end
                                        else
                                            begin
                                             // gasan := gasan + 0.3; // ������
                                             varsoa := true;
                                            end;
                   }

                {    varsoa := true;

                   if su_gu3 in [31, 39, 40]  then
                   begin
                       if  ( varjinday >= '2017-07-01') then
                        varsoa := false ;

                   end;

                   //�Ҿ� �����ΰ�� 6���̸��� ����
                   if su_gu3 in [19]  then
                   begin
                        if (Age >= 6) then
                        begin

                          varsoa := false;

                        end;

                   end;
                end;

                // ���ΰ���(su_soa=8) : ���뿡�� 30%
                if (Age >= 70) then
                begin
                  if su_gu3 = 19 then // ����
                  varsoa := true;
                   // gasan := gasan + 0.3;
                end;
                }
        end;


        varSimyaTime := deldash(varJinday) + fieldByName('jin_time').AsString;

        if ((su_gu1 in [2]) and (su_gu3 in [23 .. 25, 31, 55])  )
           or (su_gu1 in [6])  //���� �ؿ����
           or (su_gu2 in [2])  //�ؿ����
           then
        begin
//          teeth1 := fieldByName('p1').AsString; // ���
//          teeth2 := fieldByName('p2').AsString; // �»�
//          teeth3 := fieldByName('p4').AsString; // ����
//          teeth4 := fieldByName('p3').AsString; // ����
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



//          if cbChungGuMethod.ItemIndex = 0 then // �����û��
//          begin
//            teeth1 := TeethConvert_SimPyungWon(teeth1); // ���
//            teeth2 := TeethConvert_SimPyungWon(teeth2); // �»�
//            teeth3 := TeethConvert_SimPyungWon(teeth3); // ����
//            teeth4 := TeethConvert_SimPyungWon(teeth4); // ����
//          end
//          else if cbChungGuMethod.ItemIndex = 1 then // EDIû��
//          begin
//            teeth1 := TeethConvert_EDI(teeth1); // ���
//            teeth2 := TeethConvert_EDI(teeth2); // �»�
//            teeth3 := TeethConvert_EDI(teeth3); // ����
//            teeth4 := TeethConvert_EDI(teeth4); // ����
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
          9: // ����
            HangNo := '03';
          12, 13, 14, 17, 18: // 12���ϱ����� �ֻ�  13 ���Ƴ��ֻ�  14:���׳� �ֻ�
            begin
              HangNo := '04';
            end;
          19: // ����
            HangNo := '05';
          23 .. 25: // ���� óġ�� ����
            HangNo := '08';

          32: // ġ�����
            HangNo := '08';

          26, 29, 30: // �˻�     //26 : ��Ź 29,30 : ��ü
            HangNo := '09';
          31: // X-ray
            begin
              HangNo := '10';
            end;
          39: // CT   Ư�����
            begin
              HangNo := '12'; // 'S ' Ư����� (12)     L :�����(11) T:Ư�����(13)
            end; // U:�ǰ�����100/100  (14)  V ���Ƶ�(15) w��޿�(16)
          40: // MRI
            begin
              HangNo := '12'; // 'S '
            end;
          41: // �Ǿ�ǰ������
            begin
              HangNo := '01'; // ������
            end;
          42: // ������
            begin
              HangNo := '09'; // �˻��
            end;

        else
          begin
            HangNo := '01'; // ������
            // �Ǿ�ǰ�������  ������� ����

          end;
        end;

        case strtoint(HangNo) of
          1: // ������
            begin
              case varChojae of
                1, 3:
                  MokNo := '01'; // ����
                2, 4:
                  MokNo := '02'; // ����
              else
                MokNo := '03'; // ���޹� ȸ�۷� ��
              end;

              if su_gu3 = 41 then // �Ǿ�ǰ�������
              begin
                MokNo := '03';
              end;

            end;
          2: // �Կ���
            begin

            end;
          3: // �����
            begin
              MokNo := '01'; // ������ 02:�ܿ�� 03:ó���� 99: ��Ÿ
            end;
          4: // �ֻ��
            begin
              MokNo := '01';
              // 01:�ֻ�
              // 02:��Ÿ
            end;
          5: // �����
            begin
              MokNo := '01';
              // 01:����
            end;
          6: // ���п����
            begin
              MokNo := '01';
            end;
          7: // ���ſ����
            begin
              MokNo := '01';
            end;
          8: // óġ�� ������
            begin
              // 01:óġ�� ����
              // 02:ġ�� ������ �����׸�
              // 03:ĳ��Ʈ
              // 99:ġ�� ��Ÿ
              MokNo := '02';
              case su_gu3 of
                32:  //ġ�����
                  MokNo := '01';
                else
                  MokNo := '01';
              end;


            end;
          9: // �˻��
            begin
              // 01;��ü�˻�
              // 02:��Ź�˻�

            //  MokNo := '02';
            //  if copy(su_key, 1, 3) = 'C42' then
            //    MokNo := '01';
              case su_gu3 of
                29, 30, 42: //29,30 : ��ü   42: ������
                  MokNo := '01'; //01;��ü�˻�
                26: //��Ź
                  MokNo := '02';  //02:��Ź�˻�
              end;

            end;
          10: // �������� �� ��缱ġ��
            begin
              // 01:����
              // 02:ġ��
              MokNo := '01';

            end;
          11: // �����
            begin
              HangNo := 'L ';
            end;
          12: // Ư�����
            BEGIN
              HangNo := 'S ';
              case su_gu3 of
                39:
                  MokNo := '01'; // CT
                40:
                  MokNo := '02'; // MRI
              end;
            END;
          13: // Ư�����
            begin
              HangNo := 'T ';
              MokNo := '01';
            end;
          14: // �ǰ�����100/100 ��
            begin
              HangNo := 'U ';
              MokNo := '01';
            end;
          15: // ���Ƶ� 100/100���κδ�
            begin
              HangNo := 'V ';
              MokNo := '01';
            end;

          16: // ���Ƶ� 100/100���κδ�
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

        // 100/100�� su_gu1=5�̴�...
        // ���⼭ U���� �ִ´�
        // �ǰ�����(�Ƿ�޿�) 100����100���κδ� ���� U�װ� �� �ż� (2012.4.1 û���к���)
        // * U�� 01��:�Ǿ�ǰ  02��:ġ�����  03��:��������
        if su_gu1 = 5 then
        begin
          HangNo := 'U ';
          MokNo := '01';
        end;





        case su_gu2 of
          0,1, 9:
            begin
              CodeGubun := '1'; // ����(��밡ġ����ǥ������ �� �ڵ�

            end;
          2:
            CodeGubun := '2'; // �ؿ����
          3:
            CodeGubun := '3'; // ��������
          4:
            CodeGubun := '4'; // �����, �������ü����(����)��
          7:
            CodeGubun := '7'; // ���������(2000.12.31.����������ش�)
          8:
            begin
               if copy(su_key,1,1)='U'  then
                 CodeGubun := '1'
               else
                 CodeGubun := '8'; // ġ�����
            end
        //    CodeGubun := '1'; // ġ�����
        end;


        //���翡��...
        if su_gu1 = 6 then
        begin
           CodeGubun := '2'; // �ؿ����
        end;

       if ( copy(Su_key,1,3) = 'J50') and (su_gu3=23) then  // �ܷ�ȯ�� ����������������-������
            CodeGubun := '1';




        // ������ �Է½ÿ���  �����ʵ忡  �ֹ�/����/���� ���� �Է��Ѵ�.
        // Ư�������� ������ ������ ����� �Ѵ�.
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
              myunhuKind := '1' // �����ǻ�
            else
              myunhuKind :=   '1'; //�ǻ� (�������������� ������ ġ���ǻ�)
            // myunhuKind := '2'; // ġ���ǻ� (�������������� ������ ġ���ǻ�)




        // ����, ����, ��ȸ��
        { ���� : *1�� �ǽ�Ƚ��(�Ҽ� ��°�ڸ����� �������Ͽ� �Ҽ� ��°�ڸ����� ����)��
          ����(�Ǿ�ǰ�� ���� 1�� ����Ƚ���� ����)
          * ��Ź�˻��� ��� 1.1 ����(��Ź����,���溴������,�ü� ���� �����̿� �����
          �ǽ�(��Ź)�� ����� ���� �������� �����Ͽ� ����
          * ������ 5�ڸ�, �Ҽ��� 2�ڸ�(��7�ڸ�), �Ҽ��� ��ǥ��
          ��)   1 -> ��_ _ _ _100��
          1.6 -> ��_ _ _ _160��
        }
        { ���� :
          ��Ź����� ��� ��Ź�� ����(�˻�)�� ������ �ѽǽ�Ƚ��
          (1�� ����(�˻�)�ǽ�Ƚ��X�� �ǽ��ϼ�)����
          ��) 2 -> ��_ _2��
        }
        { ��ȸ�� :
          *1ȸ ���෮(�Ҽ� �ټ�°�ڸ����� �������Ͽ� �Ҽ� ��°�ڸ����� ����)�� ����
          (�Ǿ�ǰ�� ��츸 �ش�)
          *������ 5�ڸ�, �Ҽ��� 4�ڸ�(��9�ڸ�),�Ҽ��� ��ǥ��
          ��)12.56?��_ _ _ 125600��
        }
        { �ݾ� :
          �ܰ���1ȸ ���෮��1�� ������(����(�ǽ�)Ƚ��)���� �����ϼ�(�ǽ�Ƚ��)��
          ����� �� ���̸��� 4��5���Ͽ� ����
        }



        // ���� ���

       { if (fieldByName('jin_qty').AsFloat <> 0) and
          (fieldByName('dan_qty').AsInteger <> 0) then

          iltu := (round2((fieldByName('jin_qty').AsFloat /
            fieldByName('dan_qty').AsInteger) * 100, 0)) / 100
          // (round2((fieldByName('jin_qty').AsFloat ) * 100, 0)) / 100
          // 1��������, ����(�ǽ�)Ƚ�� n(5.2) �Ҽ���°�ڸ����� ������
        else
          iltu := 1;
        }

      //  iltu := fieldByName('jin_ilsu').AsInteger;




        iltu := fieldByName('jin_qty').AsFloat;//fieldByName('jin_qty').AsInteger;

        if su_gu2 = 8 then
        begin

            //���� - ��ῡ ���ؼ��� ������ ����. 2018-06-19

            if copy(su_key,1,3) = 'L72'  then
            begin
             iltu := (round2(  (fieldByName('jin_qty').AsFloat /
                                fieldByName('dan_qty').AsInteger) * 100, 0)) / 100 ;

            end;
        end;


        iltu_D := formatFloat('0.00', iltu);
        iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);





        // ����
        if su_gu3 = 9 then // �����
        begin

          chongtu := fieldByName('div').AsString; // �������ϼ�

          if iChongTu < fieldByName('div').AsInteger then
            iChongTu := fieldByName('div').AsInteger;

        end
        else
        begin
          chongtu := '1';

          // Ư�����������  �������ϼ�
          if iChongTu < fieldByName('jin_qty').AsInteger then
            iChongTu := fieldByName('jin_qty').AsInteger;

        end;

        // ��ȸ��  =>�Ǿ�ǰ�ΰ�츸 n(5.4) ��12.56=>___125600
        if su_gu3 = 9 then // �����
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

        { if su_gu3 = 9 then // �����
          begin

          // ���� ���

          if (fieldByName('jin_qty').AsFloat <> 0) and
          (fieldByName('dan_qty').AsInteger <> 0) then

          iltu :=
          (round2((fieldByName('jin_qty').AsFloat / fieldByName('dan_qty')
          .AsInteger) * 100, 0)) / 100
          // 1��������, ����(�ǽ�)Ƚ�� n(5.2) �Ҽ���°�ڸ����� ������
          else
          iltu := 1;

          iltu_D := formatFloat('0.00', iltu);
          iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);

          chongtu := fieldByName('div').AsString; // �������ϼ�
          if iChongTu < fieldByName('div').AsInteger then
          iChongTu := fieldByName('div').AsInteger;

          // ilHoitu := stringreplace(formatfloat('#.0000',
          // fieldByName('div').AsInteger), '.', '', [rfReplaceAll]);
          // // '10000'; //div  1ȸ���෮ => �Ǿ�ǰ�ΰ�츸 n(5.4) ��12.56=>___125600
          if fieldByName('jin_qty').AsFloat > 0 then
          ilHoitu := stringreplace(formatFloat('#.0000',
          fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll])
          else
          ilHoitu := '0' + stringreplace(formatFloat('#.0000',
          fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll]);



          end
          else
          begin
          //����, ����, ��ȸ��

          iltu :=
          (round2(  fieldByName('jin_ilsu').AsInteger  * 100, 0)) / 100;

          iltu_D := formatFloat('0.00', iltu);
          iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);


          ChongTu := fieldByName('jin_qty').AsString;

          ilHoitu := stringreplace(formatFloat('#.0000',
          fieldByName('dan_qty').AsFloat), '.', '', [rfReplaceAll])

          end;
        }

        // ���⼭ �����ڵ带 �ٽñ��Ѵ�.
        // ����, �Ҿ�, �߰� ���� �ڵ� �߰�
        sanCode := loadGasanCode(varJinday, su_key, su_gu2, su_gu3, varChojae, age, varsoa);

        if  (copy(su_key, 1, 2) = 'aa')  and (sanCode <> '') then //������ �߰�����
        begin
          SugaCode := su_key + sanCode;
          if copy(sanCode, 2, 1) = '1' then
            BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // �߰� ����

        end
        else
          SugaCode := su_key;

        // SugaCode�� �ٲ�� ���⼭ �ܰ��� �ٽñ��Ѵ�.
        if SugaCode <> su_key then
        //  Danga := stringreplace(formatFloat('#.00',
        //        calcKumak_jumgum(age, varJinday,  su_key, 1, 1, 1, 1, fieldByName('jin_danga').AsInteger,
        //           fieldByName('su_gu1').AsString, fieldByName('su_gu3').AsString,
         //         varsoa, varSimya, fieldByName('su_gu3').AsString, true, varjabo)), '.', '',
         //      [rfReplaceAll]);

          //�������� ����� ������ �ܰ� 10�� �̸� ������
          Danga := stringreplace(formatFloat('#.00',
                calcKumak_jumgum(age, varJinday,  su_key, 1, 1, 1, 1, newDanga,
                   fieldByName('su_gu1').AsString, fieldByName('su_gu3').AsString,
                  varsoa, varSimya, fieldByName('su_gu3').AsString, true, true, varjabo)), '.', '',
               [rfReplaceAll]);

 
        //���� * �ܰ� 1���̸� ������
        // �ݾװ�� jin_danga * jin_qty * div
        kumak := calcKumak_jumgum(age,        //�ݾװ��
             varJinday,
             su_key,
             fieldByName('jin_qty').AsFloat,
             fieldByName('dan_qty').AsInteger,
             fieldByName('jin_ilsu').AsInteger,
             fieldByName('div').AsInteger,
             newDanga,//fieldByName('jin_danga').AsInteger,  //ToDO: jinryo_s�� �ܰ��� ����� �ȵ�� �ִ� ��찡 �ִ�.
             fieldByName('su_gu1').AsString,
             fieldByName('su_gu3').AsString,
             varSoa,
             varSimya,
             fieldByName('su_gu3').AsString,
             true,  //�Ұ���
             false, //  false: �ݾ� = �ܰ� * ����*�ϼ�
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


        // Ư������ ���
        // sugu3 09 �Ǿ�ǰ
        // sugu3 41 �Ǿ�ǰ������

        // ���� �ٹ�ȣ ���°� ���� ������.


      {09 ����
      10 �ܿ���
      12 �ֻ� ���Ϻ극������100�и��׶�(���꿡������)
      13 ������ �̿��Ĺ̷�300�ֻ��(�̿��Ĺ̵�)_(30.62g/50mL)
      14 �߿�5%����������Ŀ���1000�и�����
      19 ����
      50 ��Ÿ}

        case su_gu3 of
          9, 10: // �Ǿ�ǰ , ���ϱ����� �ֻ�
            if trim(except_code) <> '' then
              BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', except_code); // �Ǿ�о����ܱ���

          19: // �Ǿ�ǰ , ����
            // if trim(except_code) <>'' then
            if su_gu1 = 1 then
            begin
              BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', '55');
              // except_code);  //�Ǿ�о����ܱ���
              useWonNaeTuYak := true;

            end;
          12, 13, 14: // �Ǿ�ǰ , ���ϱ����� �ֻ�
            begin


              if trim(except_code) <> '' then
              begin
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', except_code); // �Ǿ�о����ܱ���

                useWonNaeTuYak := true;
              end;

            end;
          41: // �Ǿ�ǰ ������  AL803
            begin
              if su_gu1 = 1 then // �Ǿູ��������� 2�̴�..
              begin
                if strtoint(copy(su_key, 5, 1)) <> 0 then
                  iChongTu := strtoint(copy(su_key, 5, 1));

                if useWonNaeTuYak = True then
                begin
                  // 1=���� 2=��ȣ1�� 3=��ȣ2�� 4=�Ϲ� 5=��ȣ4�� 6=��ȣ8��  7=���� 8=�ں�
                  // 9=������1��, 10=������2��, 11=������2�������


                  // �Ƿ�޿�1�� �Ƿ�޿�2�� ������1�� ������2�� ������2�����
                  // MT020(�Ƿ�޿����ޱ��ڿ����������� ����Ƚ��)

                  if fieldByName('jongbeul').AsInteger in [2, 3, 5, 6, 9, 10, 11]
                  then
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT020', '01') // ��������Ƚ��
                  else
                  begin
                    // ���������ϼ�(�汸,�ܿ�)
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MS001', inttostr(iChongTu));
                  end;

                end;

                useWonNaeTuYak := true;
              end;
            end;

        end;

        if su_key = '642101070' then  //�˸��ֿ�����Ź��(�˸�����Ʈ)
          BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT017', 'E');

        // showmessage(inttostr(su_gu1));

        // ������  ToDO : ������ 2�� �̻��ϰ�츸 ����. Ÿ�δ븮����� ���?
//        case fieldByName('chojae').AsInteger of
//          7, 8, 10, 11: // ����+����, ����+���� , ����+���� , ����+����
//            begin
//
//              // Jinryo_o���� �ΰ� �̻��� ������ ������ �� �־�� �Ѵ�.
//              for i := 0 to 1 do
//              begin
//                varJinChalRyoNeyuk := fieldByName('kwamok').AsString +
//                  '/' + jinday;
//                varJinChalRyoNeyuk := varJinChalRyoNeyuk + '/' +
//                  fieldByName('kwamok').AsString + '/' + jinday;
//              end;
//              BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT002', varJinChalRyoNeyuk);
//              // ������ �ΰ� �̻��϶�
//            end;
//        end;

        // ��Ź�˻�.
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

        if su_key = 'C5911' then // �غκ��������˻�(���˹� ��������)
          BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT001', 'EO7/'); // Ȯ���ڵ�

        if su_key = 'L7990' then // ���������� �ʺ���
          BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS001', myunhuJuminNo + '/' + myunhuNo +
            '/' + docName); // �����������

        if varSimya = true then
          BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // �߰� ����


         if CodeGubun = '2'  then //�ؿ����
          begin

               BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS009', fieldByName('su_kor_name').AsString  );
               sugacode  :=  'JJJJJJ';

             iltu_D := formatFloat('0.00', 1.15);
             iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);
          end;




         if (su_key = 'UB111') //���ö�Ʈ 1�ܰ�
            or (su_key = 'UB121') //2�ܰ�
            or (su_key = 'UB131') //3�ܰ�
            or (su_key = 'UB112') //���ö�Ʈ 1�ܰ� (����)
            or (su_key = 'UB122') //2�ܰ�  (����)
            or (su_key = 'UB132') //3�ܰ�   (����)
          then
          begin
                 //  if  varImplantCnt > 1 then  then

             //      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'MT037', 'M');


          end;





       if cb3.checked = false then
       WriteLn(F,
                 ChungGuNo
               + formatFloat('00000', illyun)
               + varGubun // �������� 'C'  ���᳻��
               + Format('%-2s', [HangNo]) // �׹�ȣ
               + Format('%-2s', [MokNo]) // ���ȣ
               + Format('%4s', [JulNo]) // �ٹ�ȣ
               + Format('%-1s', [CodeGubun]) // �ڵ屸��
               + Format('%-9s', [SugaCode])
               + Format('%10s', [Danga]) // 8.2     �ܰ�
               + Format('%7s', [iltu_D]) // 5.2  ����
               + Format('%3s', [chongtu]) // ����
               + Format('%9s', [ilHoitu]) // 5.4  //��ȸ��
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
          else       //�ڵ�������
             WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun
               // �������� 'C'  ���᳻��
               + Format('%-2s', [HangNo]) // �׹�ȣ
               + Format('%-2s', [MokNo]) // ���ȣ
               + Format('%4s', [JulNo]) // �ٹ�ȣ
               + Format('%-1s', [CodeGubun]) // �ڵ屸��
               + Format('%-9s', [SugaCode])
               + Format('%10s', [Danga]) // 8.2     �ܰ�
               + Format('%7s', [iltu_D]) // 5.2  ����
               + Format('%3s', [chongtu]) // ����
               + Format('%9s', [ilHoitu]) // 5.4  //��ȸ��
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
  isSugaDanga : boolean; //������ true ���� false
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

              if newDanga=0 then // �ܰ��� 0�ΰ��� ����.
              begin
                next;
                continue;
              end;

              if ((su_gu3 = 9)       // ����ó���̸� �ǳʶپ�
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
                 and ((su_gu3 = 9)       // ����ó���̸�
                   or (su_gu3 = 10)) // ����
                  and (su_gu3 <> 41) then // �Ǿ�ǰ������
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
              begin // �Ҿư����̸�  30% (8���̸�), 10%(��缱)

                   varsoa := true;
                    {
                      if ( (Age >= 0) and  (Age < 8))   then
                      begin
                           { if (su_gu3 = 31) then
                            begin // ��缱
                               if  ( varjinday < '2017-07-01') then   //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
                                  varsoa := true;
                                // gasan := gasan + 0.1;
                            end
                                  else
                                      if (su_gu3 = 39) or // ��缱 ct
                                              (su_gu3 = 40) then // ��缱 MRI
                                      begin
                                        //gasan := gasan + 0.15;
                                         if  ( varjinday < '2017-07-01') then   //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
                                           varsoa := true;
                                      end
                                          else
                                          if (su_gu3 = 19) then // ����
                                          begin
                                            //gasan := gasan + 0.3;
                                             if  ( varjinday < '2017-07-01') then   //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
                                               varsoa := true;
                                          end
                                              else
                                                  begin
                                                   // gasan := gasan + 0.3; // ������
                                                   varsoa := true;
                                                  end;
                         }

                      {    varsoa := true;

                         if su_gu3 in [31, 39, 40]  then
                         begin
                             if  ( varjinday >= '2017-07-01') then
                              varsoa := false ;

                         end;

                         //�Ҿ� �����ΰ�� 6���̸��� ����
                         if su_gu3 in [19]  then
                         begin
                              if (Age >= 6) then
                              begin

                                varsoa := false;

                              end;

                         end;
                      end;

                      // ���ΰ���(su_soa=8) : ���뿡�� 30%
                      if (Age >= 70) then
                      begin
                        if su_gu3 = 19 then // ����
                        varsoa := true;
                         // gasan := gasan + 0.3;
                      end;
                      }
              end;


              varSimyaTime := deldash(varJinday) + delColone( copy(cells[23, i],1,5));// fieldByName('jin_time').AsString;

              if ((su_gu1 in [2]) and (su_gu3 in [23 .. 25, 31, 55])  )
                 or (su_gu1 in [6])  //���� �ؿ����
                 or (su_gu2 in [2])  //�ؿ����
                 then
              begin
      //          teeth1 := fieldByName('p1').AsString; // ���
      //          teeth2 := fieldByName('p2').AsString; // �»�
      //          teeth3 := fieldByName('p4').AsString; // ����
      //          teeth4 := fieldByName('p3').AsString; // ����
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



      //          if cbChungGuMethod.ItemIndex = 0 then // �����û��
      //          begin
      //            teeth1 := TeethConvert_SimPyungWon(teeth1); // ���
      //            teeth2 := TeethConvert_SimPyungWon(teeth2); // �»�
      //            teeth3 := TeethConvert_SimPyungWon(teeth3); // ����
      //            teeth4 := TeethConvert_SimPyungWon(teeth4); // ����
      //          end
      //          else if cbChungGuMethod.ItemIndex = 1 then // EDIû��
      //          begin
      //            teeth1 := TeethConvert_EDI(teeth1); // ���
      //            teeth2 := TeethConvert_EDI(teeth2); // �»�
      //            teeth3 := TeethConvert_EDI(teeth3); // ����
      //            teeth4 := TeethConvert_EDI(teeth4); // ����
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
                9: // ����
                  HangNo := '03';
                12, 13, 17, 18: // 12���ϱ����� �ֻ�  13 ���Ƴ��ֻ�
                  begin
                    HangNo := '04';
                  end;
                19: // ����
                  HangNo := '05';
                23 .. 25: // ���� óġ�� ����
                  HangNo := '08';

                32: // ġ�����
                  HangNo := '08';

                26, 29, 30: // �˻�     //26 : ��Ź 29,30 : ��ü
                  HangNo := '09';
                31: // X-ray
                  begin
                    HangNo := '10';
                  end;
                39: // CT   Ư�����
                  begin
                    HangNo := '12'; // 'S ' Ư����� (12)     L :�����(11) T:Ư�����(13)
                  end; // U:�ǰ�����100/100  (14)  V ���Ƶ�(15) w��޿�(16)
                40: // MRI
                  begin
                    HangNo := '12'; // 'S '
                  end;
                41: // �Ǿ�ǰ������
                  begin
                    HangNo := '01'; // ������
                  end;
                42: // ������
                  begin
                    HangNo := '09'; // �˻��
                  end;

              else
                begin
                  HangNo := '01'; // ������
                  // �Ǿ�ǰ�������  ������� ����

                end;
              end;

              case strtoint(HangNo) of
                1: // ������
                  begin
                    case varChojae of
                      1, 3:
                        MokNo := '01'; // ����
                      2, 4:
                        MokNo := '02'; // ����
                    else
                      MokNo := '03'; // ���޹� ȸ�۷� ��
                    end;

                    if su_gu3 = 41 then // �Ǿ�ǰ�������
                    begin
                      MokNo := '03';
                    end;

                  end;
                2: // �Կ���
                  begin

                  end;
                3: // �����
                  begin
                    MokNo := '01'; // ������ 02:�ܿ�� 03:ó���� 99: ��Ÿ
                  end;
                4: // �ֻ��
                  begin
                    MokNo := '01';
                    // 01:�ֻ�
                    // 02:��Ÿ
                  end;
                5: // �����
                  begin
                    MokNo := '01';
                    // 01:����
                  end;
                6: // ���п����
                  begin
                    MokNo := '01';
                  end;
                7: // ���ſ����
                  begin
                    MokNo := '01';
                  end;
                8: // óġ�� ������
                  begin
                    // 01:óġ�� ����
                    // 02:ġ�� ������ �����׸�
                    // 03:ĳ��Ʈ
                    // 99:ġ�� ��Ÿ
                    MokNo := '02';
                    case su_gu3 of
                      32:  //ġ�����
                        MokNo := '01';
                      else
                        MokNo := '01';
                    end;


                  end;
                9: // �˻��
                  begin
                    // 01;��ü�˻�
                    // 02:��Ź�˻�

                  //  MokNo := '02';
                  //  if copy(su_key, 1, 3) = 'C42' then
                  //    MokNo := '01';
                    case su_gu3 of
                      29, 30, 42: //29,30 : ��ü   42: ������
                        MokNo := '01'; //01;��ü�˻�
                      26: //��Ź
                        MokNo := '02';  //02:��Ź�˻�
                    end;

                  end;
                10: // �������� �� ��缱ġ��
                  begin
                    // 01:����
                    // 02:ġ��
                    MokNo := '01';

                  end;
                11: // �����
                  begin
                    HangNo := 'L ';
                  end;
                12: // Ư�����
                  BEGIN
                    HangNo := 'S ';
                    case su_gu3 of
                      39:
                        MokNo := '01'; // CT
                      40:
                        MokNo := '02'; // MRI
                    end;
                  END;
                13: // Ư�����
                  begin
                    HangNo := 'T ';
                    MokNo := '01';
                  end;
                14: // �ǰ�����100/100 ��
                  begin
                    HangNo := 'U ';
                    MokNo := '01';
                  end;
                15: // ���Ƶ� 100/100���κδ�
                  begin
                    HangNo := 'V ';
                    MokNo := '01';
                  end;

                16: // ���Ƶ� 100/100���κδ�
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

              // 100/100�� su_gu1=5�̴�...
              // ���⼭ U���� �ִ´�
              // �ǰ�����(�Ƿ�޿�) 100����100���κδ� ���� U�װ� �� �ż� (2012.4.1 û���к���)
              // * U�� 01��:�Ǿ�ǰ  02��:ġ�����  03��:��������
              if su_gu1 = 5 then
              begin
                HangNo := 'U ';
                MokNo := '01';
              end;



             //su_gu1 ==> 1, 2  �϶� su_gu2 ==B

              case su_gu2 of
                0,1, 9:
                  begin
                    CodeGubun := '1'; // ����(��밡ġ����ǥ������ �� �ڵ�

                  end;
                2:
                  CodeGubun := '2'; // �ؿ����
                3:
                  CodeGubun := '3'; // ��������
                4:
                  CodeGubun := '4'; // �����, �������ü����(����)��
                7:
                  CodeGubun := '7'; // ���������(2000.12.31.����������ش�)

                8, 99, 98:  //8: ��� 99:B 80/100
                  begin
                     if copy(su_key,1,1)='U'  then
                       CodeGubun := '1'
                     else
                     if su_Gu1=1 then  //���
                       CodeGubun := '8'  // ġ�����
                        else
                          if su_Gu1=2 then //����
                           CodeGubun := '1' ;
                  end
              //    CodeGubun := '1'; // ġ�����
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

               //���翡��...
              if su_gu1 = 6 then
              begin
                 CodeGubun := '2'; // �ؿ����
              end;

             if ( copy(Su_key,1,3) = 'J50')
                 and (su_gu3=23)
                 and  (su_gu2 <> 8) then  // �ܷ�ȯ�� ����������������-������
                  CodeGubun := '1';




              // ������ �Է½ÿ���  �����ʵ忡  �ֹ�/����/���� ���� �Է��Ѵ�.
              // Ư�������� ������ ������ ����� �Ѵ�.
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
      //              myunhuKind := '1' // �����ǻ�
      //            else
      //              myunhuKind :=   '1'; //�ǻ� (�������������� ������ ġ���ǻ�)
                  // myunhuKind := '2'; // ġ���ǻ� (�������������� ������ ġ���ǻ�)

                myunhuNo := myunHu;
                myunhuKind := '1';

              // ����, ����, ��ȸ��
              { ���� : *1�� �ǽ�Ƚ��(�Ҽ� ��°�ڸ����� �������Ͽ� �Ҽ� ��°�ڸ����� ����)��
                ����(�Ǿ�ǰ�� ���� 1�� ����Ƚ���� ����)
                * ��Ź�˻��� ��� 1.1 ����(��Ź����,���溴������,�ü� ���� �����̿� �����
                �ǽ�(��Ź)�� ����� ���� �������� �����Ͽ� ����
                * ������ 5�ڸ�, �Ҽ��� 2�ڸ�(��7�ڸ�), �Ҽ��� ��ǥ��
                ��)   1 -> ��_ _ _ _100��
                1.6 -> ��_ _ _ _160��
              }
              { ���� :
                ��Ź����� ��� ��Ź�� ����(�˻�)�� ������ �ѽǽ�Ƚ��
                (1�� ����(�˻�)�ǽ�Ƚ��X�� �ǽ��ϼ�)����
                ��) 2 -> ��_ _2��
              }
              { ��ȸ�� :
                *1ȸ ���෮(�Ҽ� �ټ�°�ڸ����� �������Ͽ� �Ҽ� ��°�ڸ����� ����)�� ����
                (�Ǿ�ǰ�� ��츸 �ش�)
                *������ 5�ڸ�, �Ҽ��� 4�ڸ�(��9�ڸ�),�Ҽ��� ��ǥ��
                ��)12.56?��_ _ _ 125600��
              }
              { �ݾ� :
                �ܰ���1ȸ ���෮��1�� ������(����(�ǽ�)Ƚ��)���� �����ϼ�(�ǽ�Ƚ��)��
                ����� �� ���̸��� 4��5���Ͽ� ����
              }



              // ���� ���

             { if (fieldByName('jin_qty').AsFloat <> 0) and
                (fieldByName('dan_qty').AsInteger <> 0) then

                iltu := (round2((fieldByName('jin_qty').AsFloat /
                  fieldByName('dan_qty').AsInteger) * 100, 0)) / 100
                // (round2((fieldByName('jin_qty').AsFloat ) * 100, 0)) / 100
                // 1��������, ����(�ǽ�)Ƚ�� n(5.2) �Ҽ���°�ڸ����� ������
              else
                iltu := 1;
              }

            //  iltu := fieldByName('jin_ilsu').AsInteger;




              iltu := floats[3, i];//fieldByName('jin_qty').AsFloat;//fieldByName('jin_qty').AsInteger;

              if su_gu2 = 8 then
              begin

                  //���� - ��ῡ ���ؼ��� ������ ����. 2018-06-19

                  if copy(su_key,1,3) = 'L72'  then
                  begin
                   iltu := (round2( (floats[3, i]/ // (fieldByName('jin_qty').AsFloat /
                                       ints[4, i] )//fieldByName('dan_qty').AsInteger)
                                       * 100, 0)) / 100 ;

                  end;
              end;


              iltu_D := formatFloat('0.00', iltu);
              iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);





              // ����
              if su_gu3 in [9..13] then // �����
              begin

                chongtu :=  cells[5, i]; //fieldByName('div').AsString; // �������ϼ�

                if iChongTu <  ints[5, i] then//fieldByName('div').AsInteger then
                  iChongTu :=  ints[5, i] ; //fieldByName('div').AsInteger;

              end
              else
              begin
                chongtu := '1';

                // Ư�����������  �������ϼ�
                if iChongTu < ints[3, i] then //fieldByName('jin_qty').AsInteger then
                  iChongTu := ints[3, i] ;//fieldByName('jin_qty').AsInteger;

              end;

              // ��ȸ��  =>�Ǿ�ǰ�ΰ�츸 n(5.4) ��12.56=>___125600
              if su_gu3 in [9..13] then // �����
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

              //ToDO :���� ���� Ƚ�� ����....

              ilHoitu := '10000';
              { if su_gu3 = 9 then // �����
                begin

                // ���� ���

                if (fieldByName('jin_qty').AsFloat <> 0) and
                (fieldByName('dan_qty').AsInteger <> 0) then

                iltu :=
                (round2((fieldByName('jin_qty').AsFloat / fieldByName('dan_qty')
                .AsInteger) * 100, 0)) / 100
                // 1��������, ����(�ǽ�)Ƚ�� n(5.2) �Ҽ���°�ڸ����� ������
                else
                iltu := 1;

                iltu_D := formatFloat('0.00', iltu);
                iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);

                chongtu := fieldByName('div').AsString; // �������ϼ�
                if iChongTu < fieldByName('div').AsInteger then
                iChongTu := fieldByName('div').AsInteger;

                // ilHoitu := stringreplace(formatfloat('#.0000',
                // fieldByName('div').AsInteger), '.', '', [rfReplaceAll]);
                // // '10000'; //div  1ȸ���෮ => �Ǿ�ǰ�ΰ�츸 n(5.4) ��12.56=>___125600
                if fieldByName('jin_qty').AsFloat > 0 then
                ilHoitu := stringreplace(formatFloat('#.0000',
                fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll])
                else
                ilHoitu := '0' + stringreplace(formatFloat('#.0000',
                fieldByName('jin_qty').AsFloat), '.', '', [rfReplaceAll]);



                end
                else
                begin
                //����, ����, ��ȸ��

                iltu :=
                (round2(  fieldByName('jin_ilsu').AsInteger  * 100, 0)) / 100;

                iltu_D := formatFloat('0.00', iltu);
                iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);


                ChongTu := fieldByName('jin_qty').AsString;

                ilHoitu := stringreplace(formatFloat('#.0000',
                fieldByName('dan_qty').AsFloat), '.', '', [rfReplaceAll])

                end;
              }
              //ToDO: ���� �ڵ�� ����ǿ��� ������ �Ѵ�.
              //������ LA322, LA321 �� ���� ���� �ٴ´�.

              // ���⼭ �����ڵ带 �ٽñ��Ѵ�.
              // ����, �Ҿ�, �߰� ���� �ڵ� �߰�



              sanCode := loadGasanCode(varJinday, su_key,
                      su_gu2, su_gu3,
                      varChojae, age,
                      varsoa);

             if  (copy(su_key, 1, 2) = 'aa')  and (sanCode <> '') then //������ �߰�����
              begin
              //  SugaCode := su_key + sanCode;
                if copy(sanCode, 2, 1) = '1' then
                  BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // �߰� ����

              end;

              // AA154010
//              if copy(su_key, 7, 1) ='1'  then
//                    BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // �߰� ����


      //        else
                SugaCode := su_key;
      //
      //
      //
      //
      //
      //        // SugaCode�� �ٲ�� ���⼭ �ܰ��� �ٽñ��Ѵ�.
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

                //�������� ����� ������ �ܰ� 10�� �̸� ������
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


              //���� * �ܰ� 1���̸� ������
              // �ݾװ�� jin_danga * jin_qty * div
      //        kumak := calcKumak_jumgum(age,        //�ݾװ��
      //             varJinday,
      //             su_key,
      //             fieldByName('jin_qty').AsFloat,
      //             fieldByName('dan_qty').AsInteger,
      //             fieldByName('jin_ilsu').AsInteger,
      //             fieldByName('div').AsInteger,
      //             newDanga,//fieldByName('jin_danga').AsInteger,  //ToDO: jinryo_s�� �ܰ��� ����� �ȵ�� �ִ� ��찡 �ִ�.
      //             fieldByName('su_gu1').AsString,
      //             fieldByName('su_gu3').AsString,
      //             varSoa,
      //             varSimya,
      //             fieldByName('su_gu3').AsString,
      //             true,  //�Ұ���
      //             false, //  false: �ݾ� = �ܰ� * ����*�ϼ�
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


              // Ư������ ���
              // sugu3 09 �Ǿ�ǰ
              // sugu3 41 �Ǿ�ǰ������

              // ���� �ٹ�ȣ ���°� ���� ������.

              {09 ����
              10 �ܿ���
              12 �ֻ� ���Ϻ극������100�и��׶�(���꿡������)
              13 ������ �̿��Ĺ̷�300�ֻ��(�̿��Ĺ̵�)_(30.62g/50mL)
              14 �߿�5%����������Ŀ���1000�и�����
              19 ����
              50 ��Ÿ}

              case su_gu3 of
                9, 10: // �Ǿ�ǰ , ���ϱ����� �ֻ�
                  if trim(except_code) <> '' then
                    BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', except_code); // �Ǿ�о����ܱ���

                19: // �Ǿ�ǰ , ����
                  // if trim(except_code) <>'' then
                  if su_gu1 = 1 then
                  begin
                    BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', '55');
                    // except_code);  //�Ǿ�о����ܱ���
                    useWonNaeTuYak := true;

                  end;
                12, 13, 14: // �Ǿ�ǰ , ���ϱ����� �ֻ�
                  begin


                    if trim(except_code) <> '' then
                    begin
                      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS002', except_code); // �Ǿ�о����ܱ���

                      useWonNaeTuYak := true;

                    end;


                  end;
                41: // �Ǿ�ǰ ������  AL803
                  begin
                    if su_gu1 = 1 then // �Ǿູ��������� 2�̴�..
                    begin
                      if strtoint(copy(su_key, 5, 1)) <> 0 then
                        iChongTu := strtoint(copy(su_key, 5, 1));

                      if useWonNaeTuYak = True then
                      begin
                        // 1=���� 2=��ȣ1�� 3=��ȣ2�� 4=�Ϲ� 5=��ȣ4�� 6=��ȣ8��  7=���� 8=�ں�
                        // 9=������1��, 10=������2��, 11=������2�������


                        // �Ƿ�޿�1�� �Ƿ�޿�2�� ������1�� ������2�� ������2�����
                        // MT020(�Ƿ�޿����ޱ��ڿ����������� ����Ƚ��)

                      //  if fieldByName('jongbeul').AsInteger in [2, 3, 5, 6, 9, 10, 11]
                          if  jongbeul  in [2, 3, 5, 6, 9, 10, 11]
                        then
                          BufferNeyuk(grdNeyuk, '1', '', '', 'MT020', '01') // ��������Ƚ��
                        else
                        begin
                          // ���������ϼ�(�汸,�ܿ�)
                          BufferNeyuk(grdNeyuk, '1', '', '', 'MS001', inttostr(iChongTu));
                        end;

                      end;

                      useWonNaeTuYak := true;
                    end;
                  end;

              end;

              if su_key = '642101070' then  //�˸��ֿ�����Ź��(�˸�����Ʈ)
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT017', 'E');

              // showmessage(inttostr(su_gu1));

              // ������
              case varChojae of//fieldByName('chojae').AsInteger of
                7, 8, 10, 11: // ����+����, ����+���� , ����+���� , ����+����
                  begin

                    // Jinryo_o���� �ΰ� �̻��� ������ ������ �� �־�� �Ѵ�.
                    for j := 0 to 1 do
                    begin
                      varJinChalRyoNeyuk := kwamok+  //fieldByName('kwamok').AsString +
                        '/' + jinday;
                      varJinChalRyoNeyuk := varJinChalRyoNeyuk + '/' +
                        kwamok+  //fieldByName('kwamok').AsString +
                        '/' + jinday;
                    end;
                    BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT002', varJinChalRyoNeyuk);
                    // ������ �ΰ� �̻��϶�
                  end;
              end;

              // ��Ź�˻�.
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

              //��Ź Ư������ ����.
            //  �̿� ���� �������ȣ 41341473
            //  ��ȭ ���� �������ȣ 12302694 �Դϴ�.

              if checkbox3.Checked=true then
              begin
                  if su_gu3= 26 then
                  begin
                   //  41341473/20190708      c5602008, c5623008

                      if    (upperCase(su_key) = 'C5602008'  )
                          or  (upperCase(su_key) = 'C5623008'  )
                          or  (upperCase(su_key) = 'c5620008'  )
                          or  (upperCase(su_key) = 'C567300F'  )  then //��ȭ ����
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

              if su_key = 'C5911' then // �غκ��������˻�(���˹� ��������)
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JT001', 'EO7/'); // Ȯ���ڵ�

              if su_key = 'L7990' then // ���������� �ʺ���
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS001', myunhuJuminNo + '/' + myunhuNo +
                  '/' + docName); // �����������

              if varSimya = true then
                BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', varSimyaTime); // �߰� ����


               if CodeGubun = '2'  then //�ؿ����
                begin

                     BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS009', cells[1, i]);//fieldByName('su_kor_name').AsString  );
                     sugacode  :=  'JJJJJJ';

                   iltu_D := formatFloat('0.00', 1.15);
                   iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);
                end;




               if (su_key = 'UB111') //���ö�Ʈ 1�ܰ�
                  or (su_key = 'UB121') //2�ܰ�
                  or (su_key = 'UB131') //3�ܰ�
                  or (su_key = 'UB112') //���ö�Ʈ 1�ܰ� (����)
                  or (su_key = 'UB122') //2�ܰ�  (����)
                  or (su_key = 'UB132') //3�ܰ�   (����)
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
                     + varGubun // �������� 'C'  ���᳻��
                     + Format('%-2s', [HangNo]) // �׹�ȣ
                     + Format('%-2s', [MokNo]) // ���ȣ
                     + Format('%4s', [JulNo]) // �ٹ�ȣ
                     + Format('%-1s', [CodeGubun]) // �ڵ屸��
                     + Format('%-9s', [SugaCode])
                     + Format('%10s', [Danga]) // 8.2     �ܰ�
                     + Format('%7s', [iltu_D]) // 5.2  ����
                     + Format('%3s', [chongtu]) // ����
                     + Format('%9s', [ilHoitu]) // 5.4  //��ȸ��
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
                else       //�ڵ�������
                   WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun
                     // �������� 'C'  ���᳻��
                     + Format('%-2s', [HangNo]) // �׹�ȣ
                     + Format('%-2s', [MokNo]) // ���ȣ
                     + Format('%4s', [JulNo]) // �ٹ�ȣ
                     + Format('%-1s', [CodeGubun]) // �ڵ屸��
                     + Format('%-9s', [SugaCode])
                     + Format('%10s', [Danga]) // 8.2     �ܰ�
                     + Format('%7s', [iltu_D]) // 5.2  ����
                     + Format('%3s', [chongtu]) // ����
                     + Format('%9s', [ilHoitu]) // 5.4  //��ȸ��
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

  HangNo := '01'; // ������

  
  case varChojae of
    1, 3, 7: // ����, ����
      MokNo := '01'; // ����
    2, 4, 8: // ����, ����
      MokNo := '02'; // ����
    else
       MokNo := '01';  //���ö�Ʈ�� ��� �ȵ����� ��찡 ����.
  end;

  JulNo := inttostr(iOrder);
  CodeGubun := '1';
  { 1	����(��밡ġ����ǥ�����ϵ��ڵ�)
    2	�ؿ����
    3	��������
    4	�����,����� ��ü ����(����)��
    7	�� �������(2000.12.31���� ����� �ش�)
    8	ġ�����
  }
  SugaCode := su_key;

  if varMyunHu <> ''  then
      myunhuNo := varMyunHu   //jinryo_p���� ��������
  else
      myunhuNo := varDrMyunHu;  //������ ��ǥ �����ȣ


 { if varDrMyunHu2 <> ''  then
      myunhuNo := varDrMyunHu2
  else
      myunhuNo := varDrMyunHu;
  }

  myunhuKind := '1'; //�ǻ� 2:ġ���ǻ�

  Danga := formatFloat('0.00', GetJinchalRyo(SugaCode, varJinday));
  Danga := stringreplace(Danga, '.', '', [rfReplaceAll]);

  iltu := 1;
  iltu_D := formatFloat('0.00', iltu);
  iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);

  chongtu := '1'; // �������ϼ�

  ilHoitu := '10000'; // div  1ȸ���෮ => �Ǿ�ǰ�ΰ�츸 n(5.4) ��12.56=>___125600

  kumak := GetJinchalRyo(SugaCode, varJinday);

  sangHanga := '0';
  drugSangHanGa := '0';
  changeDay := '';

  {
    1.����
    2.����
    3.�ɾ�����
    4.�ɾ�����
    5.������(�Ϲ�)
    6.Ʋ��ġ��
    7.����+�ɾ�����
    8.����+�ɾ�����
    9--------------
    10.����+����
    11.����2ȸ
  }

  case varChojae of
    3, 4, 7, 8: // ����, ���� ��+����, ��+����
      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', jinday + varJinTime); // �߰� ����
  end;

  if cb3.checked = false then

      WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun // �������� 'C'
        + Format('%-2s', [HangNo]) // �׹�ȣ
        + Format('%-2s', [MokNo]) // ���ȣ
        + Format('%4s', [JulNo]) // �ٹ�ȣ
        + Format('%-1s', [CodeGubun]) // �ڵ屸��
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
        + varGubun // �������� 'C'
        + Format('%-2s', [HangNo]) // �׹�ȣ
        + Format('%-2s', [MokNo]) // ���ȣ
        + Format('%4s', [JulNo]) // �ٹ�ȣ
        + Format('%-1s', [CodeGubun]) // �ڵ屸��
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

  HangNo := '01'; // ������

  case varChojae of
    1, 3: // ����, ����
      MokNo := '01'; // ����
    2, 4: // ����, ����
      MokNo := '02'; // ����
  end;

  JulNo := inttostr(iOrder);
  CodeGubun := '1';
  { 1	����(��밡ġ����ǥ�����ϵ��ڵ�)
    2	�ؿ����
    3	��������
    4	�����,����� ��ü ����(����)��
    7	�� �������(2000.12.31���� ����� �ش�)
    8	ġ�����
  }
  SugaCode := su_key;

  myunhuNo := varDrMyunHu;
  myunhuKind := '1'; //�ǻ�  2:ġ���ǻ�

  Danga := formatFloat('0.00', GetJinchalRyo(SugaCode, varJinday));
  Danga := stringreplace(Danga, '.', '', [rfReplaceAll]);

  iltu := 1;
  iltu_D := formatFloat('0.00', iltu);
  iltu_D := stringreplace(iltu_D, '.', '', [rfReplaceAll]);

  chongtu := '1'; // �������ϼ�

  ilHoitu := '10000'; // div  1ȸ���෮ => �Ǿ�ǰ�ΰ�츸 n(5.4) ��12.56=>___125600

  kumak := GetJinchalRyo(SugaCode, varJinday);

  sangHanga := '0';
  drugSangHanGa := '0';
  changeDay := '';

  {
    1.����
    2.����
    3.�ɾ�����
    4.�ɾ�����
    5.������(�Ϲ�)
    6.Ʋ��ġ��
    7.����+�ɾ�����
    8.����+�ɾ�����
    9--------------
    10.����+����
    11.����2ȸ
  }

  case varChojae of
    3, 4: // ����, ����
      BufferNeyuk(grdNeyuk, '2', '', JulNo, 'JS010', jinday + varJinTime); // �߰� ����
  end;

  WriteLn(F, ChungGuNo + formatFloat('00000', illyun) + varGubun // �������� 'C'
    + Format('%-2s', [HangNo]) // �׹�ȣ
    + Format('%-2s', [MokNo]) // ���ȣ
    + Format('%4s', [JulNo]) // �ٹ�ȣ
    + Format('%-1s', [CodeGubun]) // �ڵ屸��
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
    paramByName('seqno').AsInteger := varChubangNo; // ó������ȣ�� ��������...
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

        CodeGubun := '3'; // 3:�������� 4:���� �������� 5. ���������� �Ϲݸ�
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

        iltu := copy(fieldByName('div').AsString,1,2);  //toDo: n(2) ���ڸ��� ����� ...���޵�, �� 100�� �Է�����?

        chongtu := fieldByName('jin_ilsu').AsString;

        if SugaCode = '643302280' then // 100/100������ �ϳ�...
          ishundred := true
        else
          ishundred := false;

        if ishundred = true then // todo : ������ 100/100�����ΰ�?
          BufferNeyuk(grdNeyuk, '3', ChubangNo, JulNo, 'JT999', 'Y');


        // if ���Է��Ǿ�ǰ ��� ó�����  then

        // BufferNeyuk(grdNeyuk, '3', ChubangNo, JulNo, 'JT010', 'B/');
        // ó���� ����� ���� �Է�...
        if fieldByName('tjungCode').AsString = 'MT999' then // 100/100���� ó�泻��
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
          // �������� 'D'
          + Format('%-13s', [ChubangNo]) // ó�������ι�ȣ
          + Format('%3s', [chubangilsu]) // ó���ϼ�
          + Format('%2s', ['0']) // �ݺ�����ȸ�� n(2) - �������
          + Format('%4s', [JulNo]) // �ٹ�ȣ 1-9999
          + Format('%-1s', [CodeGubun]) // �ڵ屸��
          + Format('%-9s', [SugaCode]) // �ڵ�     an(9)
          + Format('%9s', [ilHoitu_D]) // 1ȸ���෮ n(5.4)
          + Format('%2s', [iltu]) // 1������Ƚ��  n(2)
          + Format('%3s', [chongtu]) // �������ϼ�   n(3)
          + Format('%-1s', [' ']) //  ���κδ��� �����ڵ�
          )
         else
                  WriteLn(F, ChungGuNo + formatFloat('00000', illyun)
                  + varGubun
          // �������� 'D'
          + Format('%-13s', [ChubangNo]) // ó�������ι�ȣ
          + Format('%3s', [chubangilsu]) // ó���ϼ�
          + Format('%4s', [JulNo]) // �ٹ�ȣ 1-9999
          + Format('%-1s', [CodeGubun]) // �ڵ屸��
          + Format('%-9s', [SugaCode]) // �ڵ�     an(9)
          + Format('%9s', [ilHoitu_D]) // 1ȸ���෮ n(5.4)
          + Format('%2s', [iltu]) // 1������Ƚ��  n(2)
          + Format('%3s', [chongtu]) // �������ϼ�   n(3)
          + Format('%-1s', [' ']) //  ���κδ��� �����ڵ�
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
  { 200405111100001E1                 MT008�ֹι�ȣ(ù6�ڸ�)/����(����)�ϼ�
    200405111100001E1                 MS00520050101/09301230
    200405111100001E1                 MX999���� Ư������
    200405111100001E2                1JS999�ؿ��
    200405111100001E2                1JX999���᳻�� Ư������
    200405111100001E2                3JT001a/b/c/
    200405111100001E32007100100001     1JX999��Ÿ����
    200405111100001E32007100100001     2JX999��Ÿ����
    200805111100001E42008010100001      CT001�ߺ�ó������ڵ�
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
        + varGubun  // �������� 'E'
        + Format('%-1s', [balsengDanwi])  // �߻�����  (1:���� 2:���᳻�� 3:ó�泻�� �ٹ�ȣ ���� 4:ó�泻������)
        + Format('%-13s', [ChubangNo]) // ó�������ι�ȣ
        + Format('%4s', [JulNo])  // �ٹ�ȣ 1-9999  �߻��������� 1,4 -> space 2,3 -> 1-9999
        + Format('%-5s', [CodeGubun]) // Ư����������
        + AnsiStrings.Format('%-700S', [neyuk]) // Ư������
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
       path_in:=  FormInit.ReadString('settings', 'compatibility.dmd.dir', 'C:\hira\DDMD\sam\in');     //û������
       path_out:=  FormInit.ReadString('settings', 'compatibility.ntc.dir', 'C:\hira\DDMD\sam\out');   //�뺸����

       FormInit.Free;

   try
    try
           //MEDLOG.ENC������ ������ �����Ѵ�.

         deletefiles( path_in +'\MEDLOG.ENC');

         Assignfile(aMEDLOG, path_in +  '\MEDLOG.ENC');
         Rewrite(aMEDLOG);

         WriteLn(aMEDLOG, '');
         WriteLn(aMEDLOG, '');
         WriteLn(aMEDLOG,  cbYear.text+'-'+cbMonth.text +'û��'+'['+ rgChungGubun.items[rgChungGubun.itemindex]    +']')  //' 2017-10û��[�ǰ�����]');
    finally
         Closefile(aMEDLOG);
    end;
  except
    on E: Exception do
    begin
      Closefile(aMEDLOG);
      showmessage(E.Message + #10#13 + path_in +  '\MEDLOG.ENC' + ' ���ϻ��� ');
    end;
  end;


{

    sim_in = INIRead("settings", "compatibility.dmd.dir", "c:\hira\ddmd\conf\ddmd.properties")
    sim_out = INIRead("settings", "compatibility.ntc.dir", "c:\hira\ddmd\conf\ddmd.properties")


    MEDLOG.ENC
       10100061
       NULL
       2017-10û��[�ǰ�����]


       'Open "c:\ktedi\tr\gen_in\MEDLOG.ENC" For Output As #5
        Open sim_in & "\MEDLOG.ENC" For Output As #5

        ����record.�ŷ�óID = "101000" & û����� & ��û��
        ����record.�μ�ID = "NULL"


        Select Case type����û��
            Case 1
               If cbo��������.ListIndex = 0 Then
                  ����record.�������� = fn����ã��23(û����� & " û��[��ü]", 35)               '
               ElseIf cbo��������.ListIndex = 1 Then
                  ����record.�������� = fn����ã��23(û����� & " û��[�ǰ�����]", 35)
               Else
                  ����record.�������� = fn����ã��23(û����� & " û��[�Ƿ�޿�]", 35)
               End If
            Case 2
               If cbo��������.ListIndex = 0 Then
                  ����record.�������� = fn����ã��23(û����� & " ����û��[��ü]", 35)
               ElseIf cbo��������.ListIndex = 1 Then
                  ����record.�������� = fn����ã��23(û����� & " ����û��[�ǰ�����]", 35)
               Else
                  ����record.�������� = fn����ã��23(û����� & " ����û��[�Ƿ�޿�]", 35)
               End If
            Case 3
               If cbo��������.ListIndex = 0 Then
                  ����record.�������� = fn����ã��23(û����� & " ����û��[��ü]", 35)
               ElseIf cbo��������.ListIndex = 1 Then
                  ����record.�������� = fn����ã��23(û����� & " ����û��[�ǰ�����]", 35)
               Else
                  ����record.�������� = fn����ã��23(û����� & " ����û��[�Ƿ�޿�]", 35)
               End If
         End Select

        Print #5, ����record.�ŷ�óID
        Print #5, ����record.�μ�ID
        Print #5, ����record.��������
        Close #5

}

end;

procedure Tjumgum_f.btnChungGuDataCreateClick(Sender: TObject);
var
   i: integer;

begin

  // application.MessageBox()
       if application.MessageBox( PChar(   rgChungGubun.items[rgChungGubun.itemindex] +'�� �½��ϱ�?'),
       'û��Ȯ��', MB_YESNO) = IDNO  then
       exit;

  try
      GroupBox5.enabled := false;
      btnSamCheck.enabled := false;
      //Sam���� ������ Medlog.ENC���� ��������.

      MakeMedLog;


      application.ProcessMessages;
      lblStat.caption:= '�ڷ������� �����ϴ� ���Դϴ�.'+#10
                       +'��ø� ��ٷ� �ּ���...' ;





          //.GHP������ ������ �����Ѵ�.
      deletefiles( targetPath +'*.GHP');


      application.ProcessMessages;

      btnChungGuDataCreate.enabled := false;

            if cb3.Checked = false then
            begin

              if sumBohumGunsu > 0 then //����Ǽ��� > 0�̸� ����
              begin
                    try
                      ChungGuNo_serial := LoadChungGuNo(cbYear.text, cbMonth.text);

                      ChungGuNo := cbYear.text + cbMonth.text + ChungGuNo_serial;
                      targetFile := ChungGuNo + '.GHP'; // 2012070001

                      MakeMyungSeFile_Bohum;

                      WriteChungGuSeo('����');

                      WriteMyungSeSeo('����');


                    finally
                      try
                      Closefile(F);
                      except

                      end;
                    end;

                    // DB�� ������ ��������...
                    SaveChungGuFiles(cbYear.text, cbMonth.text, ChungGuNo_serial, '1');
              end;


              if sumBohoGunsu > 0 then //��ȣ�Ǽ��� > 0�̸� ����
              begin
                    try
                     ChungGuNo_serial := LoadChungGuNo(cbYear.text, cbMonth.text);

                      ChungGuNo := cbYear.text + cbMonth.text + ChungGuNo_serial;
                      targetFile := ChungGuNo + '.GHP'; // 2012070001

                      MakeMyungSeFile_Boho;
                      WriteChungGuSeo('��ȣ');
                      WriteMyungSeSeo('��ȣ');
                    finally
                       try
                      Closefile(F);
                       except

                       end;
                    end;
                    // DB�� ��� ������ ��������...
                    SaveChungGuFiles(cbYear.text, cbMonth.text, ChungGuNo_serial, '2');
              end;
              //btnChungGuDataCreate.enabled := false;
            end
            else
            begin



              // �ں�û��
                 //todo : �ں�����
                //1. ������ �׷�������...--> listBox�� ����� �ڵ带 �ְ�..
                //2. listbox�� �ں����ڵ带 �����Ͽ� ����纰�� û���������� ����� ������ ��������...

                   for I := 0 to listBox1.Count-1 do
                   begin
                       try

                          MakeMyungSeFile_Jabo(listBox1.items[i]);   //�ں��� �ڵ�
                          WriteChungGuSeo_Jabo(listBox1.items[i]);   //�ں��� �ڵ�
                          WriteMyungSeSeo_Jabo(listBox1.items[i]);   //�ں��� �ڵ�

                       finally
                          Closefile(F);
                       end;
                   end;



            end;

                application.ProcessMessages;
                lblStat.caption:= '�ڷ������� �����߽��ϴ�.'+#10
                                 +'[�ڷ���������]��ư�� Ŭ���Ͽ� �۽��ڷḦ ���弼��.' ;

                application.ProcessMessages;

                showmessage('SAM������ �����߽��ϴ�.');

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

  ChungVersion: string; // û���� ���Ĺ���	an(3)
  MyungVersion: string; // ���� ���Ĺ���	an(3)
  ChungNo: string; // û����ȣ	an(10)
  SusikNo: string; // ���Ĺ�ȣ	an(4)
//  YoyangKiho: string; // �����(�Ƿ�޿����)��ȣ	an(8)
//  chungGuName: string; // û����	an(20)
//  jaksungName: string; // �ۼ��ڼ���	an(20)
//  jaksungJumin: string; // �ۼ��ڻ������	an(13)

  SusinKigwan: string; // ���ű��	an(1)
  JongGubun: string; // ������ �������� (�Ƿ�޿� ���ᱸ��)	an(1)
  ChungGubun: string; // û������	an(1)
  ChungDanwi: string; // û����������	an(1)
  JinGubun: string; // ���ᱸ��	an(1)
  JinBunya: string; // ����о߱���	an(1)
  JinHyungTae: string; // ��������  an(1)
  JinYearMonth: string; // ������	an(6)
  { Gunsu           :integer;// �Ǽ�	n(6)
    yoyangChong1    :integer;// ���޿�����Ѿ�1	n(12)
    bonin           :integer;// �����Ϻκδ��	n(12)
    boninSanghan    :integer;// ���κδ���Ѿ��ʰ���	n(12)
    chung           :integer;// û����	n(12)
    jiwon           :integer;// ������	n(12)
    jangE           :integer;// ������Ƿ��	n(12)
    yoyangChong2    :integer;// ���޿�����Ѿ�2	n(12)
    chong           :integer;// ������Ѿ�	n(12)
    bohunChung      :integer;// ����û����	n(12)
    hbyh            :integer;// �ǰ�����(�Ƿ�޿�)100/100���κδ���Ѿ�	n(12)
    bohunbonin      :integer;// ���� �����Ϻκδ��	n(12)
    chaDeungJinilsu :double;// �������   ���뱸��	����(����)�ϼ�	n(4.2)
    chaDeungDocNo   :double; // �������   ��(��)���	n(2.2)
    chaDeungJisu    :Double;// ��������	n(1.7)
    chadeungChung   :integer;// �������û����		n(12)
  }
  Gunsu       : string; // �Ǽ�	n(6)
  yoyangChong1: string; // ���޿�����Ѿ�1	n(12)
  bonin       : string; // �����Ϻκδ��	n(12)
  boninSanghan: string; // ���κδ���Ѿ��ʰ���	n(12)
  chung       : string; // û����	n(12)
  jiwon       : string; // ������	n(12)
  jange       : string; // ������Ƿ��	n(12)
  yoyangChong2: string; // ���޿�����Ѿ�2	n(12)
  chong       : string; // ������Ѿ�	n(12)
  bohunChung  : string; // ����û����	n(12)
  hbyh        : string; // �ǰ�����(�Ƿ�޿�)100/100���κδ���Ѿ�	n(12)
  bohunbonin  : string; // ���� �����Ϻκδ��	n(12)

  chaDeungJinilsu: string; // �������   ���뱸��	����(����)�ϼ�	n(4.2)
  chaDeungDocNo: string; // �������   ��(��)���	n(2.2)
  chaDeungJisu: string; // ��������	n(1.7)
  chadeungChung: string; // �������û����		n(12)

  chungDay: string; // û������	an(8)
//  chungGuName: string; // û����	an(20)
// jaksungName: string; // �ۼ��ڼ���	an(20)
//  jaksungJumin: string; // �ۼ��ڻ������	an(13)
  DaehangKiho: string; // ����û����ü��ȣ	an(5)
  remark: string; // ������	an(1750)

  //100/100 �̸� û����
  hbyhmiman : string;
  hbyhmimanbonDam: string;
  hbyhmimanChung: string;
  hbyhmimanBohunChung: string;


begin

  ChungVersion := '090';
  MyungVersion := '090';






  SusinKigwan := '1'; // �ǰ�����ɻ��򰡿�



  // ChungGubun := ' '; // space: ��û�� 1:����û�� 2:�߰�û�� 8: ����

  { ��û��
    ����û��
    ����û��
    �߰�û��
    �и�û��
  }
  case rgChungGubun.ItemIndex of
    0:
      ChungGubun := ' ';  //��û��
    1:
      ChungGubun := '1';  //����û��
    2:
      ChungGubun := '2'; // �߰�û��
    3:
      ChungGubun := '3'; // �и�û��
  end;

  ChungDanwi := '0'; // 1~6:�ش��ִ���(���ں�) 0:����������û��(���ں�)

  JinGubun := '1'; // 1:�ǰ�DRG 2:ġ�� 5:���Űǰ����а� ���� 7:���� 8:�౹ 9:�ѹ�


  //������պ���, ���պ���, ġ�����кμ�ġ������ �� �ѹ溴���� ���޿��������� �����Ͽ�����.
  JinBunya := ' '; // 1:����, 2:�ܰ� 3:��,�Ҿ�û�ҳ�� 4:��,�̺����İ� 5:�Ǻ�,�񴢱�� 6:ġ�� 9:���ǰ�


             if  cbGubunIn.checked   then   //�Կ�
         begin
          //    sql.text := sql.text +  ' and (isInpat = ''1'' or isInpat = ''2'')' ;
             JinHyungTae := '1'; // 1�ǰ��Կ� 2�ǰ��ܷ� 3 ġ���Կ� 4ġ���ܷ� A����� �Կ�
         end
         else
         begin  //�ܷ�

             JinHyungTae := '2'; // 1�ǰ��Կ� 2�ǰ��ܷ� 3 ġ���Կ� 4ġ���ܷ� A����� �Կ�

         end;


  JinYearMonth := cbYear.text + cbMonth.text; // �Կ��� ��� ������� ���� ��(CCYYMM);

//  for i := 1 to grdMain.RowCount - 1 do
//  begin

//      AdvProgressBar1.Position := i;

//    if rgChungGubun.ItemIndex in [1,2,3] then //  ����, �߰�, �и�
//    begin
//      grdMain.GetCheckBoxState(1, i, state);
//      if state = false then
//      begin
//     //   goto reLoad;
//     //   continue;
//      end;
//
//    end;

    if varKind = '����' then
    begin
     // if grdMain.ints[32, i] in [1, 9, 10, 11] then
      // �Ǻ� , ������1, ������2, ������ 2���
    //  begin
        SusikNo := 'H010'; // ���޿�   //H011:�Ƿ�޿�
        JongGubun := '4';
        // 7:������Ź������, ���ƺ��� //�Ƿ�޿� 1:1������ 2:2������ 9��:���ڹ׿ܱ��αٷ���

        Gunsu := inttostr(sumBohumGunsu); // ������ û���Ǽ�

        yoyangChong1 := inttostr(sumYoYangChong1);//sumBohumChong - sumBohumHbyHChong); // ���޿�����Ѿ�1

        bonin := inttostr(sumBohumBonin - sumBohumHbyHBonin);
        boninSanghan := inttostr(sumBohumBoninSangHan);
        chung := inttostr(sumBohumChung - sumBohumHbyHChung);
        jiwon := inttostr(sumBohumJiwon);
        jange := inttostr(sumBohumjangE);

        yoyangChong2 := inttostr(sumYoYangChong1);//sumBohumChong - sumBohumHbyHChong); // ���޿�����Ѿ� 2
        chong := inttostr(sumBohumjinChong);

        bohunChung := inttostr(sumBohumBohun);
        hbyh := inttostr(sumBohumHbyH);
        bohunbonin := '0';
        chaDeungJinilsu := formatFloat('0000',
          getJinryoilsu(cbYear.text + '-' + cbMonth.text + '-' + cbDay1.text,
          cbYear.text + '-' + cbMonth.text + '-' + cbDay2.text));
        chaDeungJinilsu := chaDeungJinilsu + '00';
        chaDeungDocNo := configvalue.varDocNo;

        chaDeungJisu := '10000000'; // ������1�ڸ�, �Ҽ���7�ڸ�(��8�ڸ�)�Ҽ����� ��ǥ��
        chadeungChung := chung; // �������û����=[û����-(������*(1-��������))]




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
    else if varKind = '��ȣ' then
    begin

    //  if grdMain.ints[32, i] in [2, 3, 5, 6] then
    //  begin
        SusikNo := 'H011'; // ���޿�   //H011:�Ƿ�޿�
        JongGubun := '1';
        // 7:������Ź������, ���ƺ��� //�Ƿ�޿� 1:1������ 2:2������ 9��:���ڹ׿ܱ��αٷ���

        Gunsu := inttostr(sumBohoGunsu); // ������ û���Ǽ�
        yoyangChong1 := inttostr(sumYoYangChong1);//sumBohoChong - sumBohoHbyHChong); // ���޿�����Ѿ�1
        bonin := inttostr(sumBohoBonin - sumBohoHbyHBonin);
        boninSanghan := inttostr(sumBohoBoninSangHan);
        chung := inttostr(sumBohoChung - sumBohoHbyHChung);
        jiwon := inttostr(sumBohoJiwon);
        jange := inttostr(sumBohojangE);
        yoyangChong2 := inttostr(sumYoYangChong1);//sumBohoChong - sumBohoHbyHChong); // ���޿�����Ѿ� 2
        chong := inttostr(sumBohojinChong);
        bohunChung := inttostr(sumBohoBohun);
        hbyh := inttostr(sumBohoHbyH);
        bohunbonin := '0';
        chaDeungJinilsu := '0';
        chaDeungDocNo := '0';

        chaDeungJisu := '0'; // ������1�ڸ�, �Ҽ���7�ڸ�(��8�ڸ�)�Ҽ����� ��ǥ��
        chadeungChung := '0'; // �������û����=[û����-(������*(1-��������))]

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
begin    //���������� = ���������߿��� �����ϰ� ������� �����Ѵ�

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
   //1. ��ü ���� �ϼ��� ���� �Ŀ�...
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
                   //2. �����̸� �������� ������ �ϳ� ����.
                   aCnt := aCnt -1;
                   isHol := true;
               end;
           end;
           //������ �ƴϰ� ������̸� ���ϳ� ����.
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
  //�׸��� ��� ���� â ����
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
       then // ��޿�
      begin
        ABrush.Color := $00E1FFF0;
        /// / $008CBEEC;
      end;


      if (grdJx2.Cells[30, ARow] = 'D')  then //����
      begin

            AFont.Color := $00CFCFCF;
            AFont.Style := [fsStrikeOut]   ;
      end;

      if (grdJx2.Cells[30, ARow] = 'C')  then //û������ �Է�
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
                          // �׷���� Tag
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
                          // �׷���� Tag
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
                          // �׷���� Tag
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
//                  if MessageDlg('<' + grdJx2.Cells[1, ARow] + '>' + '������ �����Ͻðڽ��ϱ�?',
//                    mtInformation, [mbYes, mbNo], 0) = mrYes then
//                  begin
//
//                    if grdJx2.Cells[0, ARow] = 'GR' then
//                    begin
//                      // �׷����
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
//                  if MessageDlg('<' + grdJx2.Cells[1, ARow] + '> �� '
//                      + inttoStr(grdJx2.SelectedRowCount)+ '�� ���� ���θ� �����Ͻðڽ��ϱ�?',
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

          //Summary�ʱ�ȭ
        grdsummary.floats[1, 1] := 0;   //����
        grdsummary.floats[2, 1] := 0;
        grdsummary.floats[3, 1] := 0;
        grdsummary.floats[4, 1] := 0;

        grdsummary.floats[1, 2] := 0;   //��ȣ
        grdsummary.floats[2, 2] := 0;
        grdsummary.floats[3, 2] := 0;
        grdsummary.floats[4, 2] := 0;

        grdsummary.floats[1, 3] := 0;  //�ں�
        grdsummary.floats[2, 3] := 0;
        grdsummary.floats[3, 3] := 0;
        grdsummary.floats[4, 3] := 0;

        grdsummary.floats[1, 4] := 0;   //����
        grdsummary.floats[2, 4] := 0;
        grdsummary.floats[3, 4] := 0;
        grdsummary.floats[4, 4] := 0;

        grdsummary.floats[1, 5] := 0;   //�հ�
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
        2:  //���Ϲ�ȣ
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
        9..11 ://�Ǻ����� ����ȣ ���ձ�ȣ
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
    cbChungno.Items.Add('�ڵ�����');
  for I := 1 to 99 do
  begin
       cbChungno.Items.Add(inttostr(i));
  end;


  
  lblTerm.Caption :=  cbYear.text +'�� '+  cbMonth.text +'��';


end;

procedure Tjumgum_f.cbMonthChange(Sender: TObject);
var
  i, lastDay: Integer;
begin


  lastDay := CalEndDate(cbYear.text + '-' + cbMonth.text);
  LoadDays(lastDay);

  lblTerm.Caption :=  cbYear.text +'�� '+  cbMonth.text +'��';


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

procedure Tjumgum_f.WriteChungGuSeo_Jabo(varJaboCode: string); //�ں����ڵ�
//label
//  reLoad;
var
  i: Integer;
  state: boolean;

  ChungVersion: string; // û���� ���Ĺ���	an(3)
  MyungVersion: string; // ���� ���Ĺ���	an(3)
  ChungNo: string; // û����ȣ	an(10)
  SusikNo: string; // ���Ĺ�ȣ	an(4)
//  YoyangKiho: string; // �����(�Ƿ�޿����)��ȣ	an(8)

  SusinKigwan: string; // ���ű��	an(1)
  JongGubun: string; // ������ �������� (�Ƿ�޿� ���ᱸ��)	an(1)
  ChungGubun: string; // û������	an(1)
  ChungDanwi: string; // û����������	an(1)
  JinGubun: string; // ���ᱸ��	an(1)
  JinBunya: string; // ����о߱���	an(1)
  JinHyungTae: string; // ��������  an(1)
  JinYearMonth: string; // ������	an(6)
  { Gunsu           :integer;// �Ǽ�	n(6)
    yoyangChong1    :integer;// ���޿�����Ѿ�1	n(12)
    bonin           :integer;// �����Ϻκδ��	n(12)
    boninSanghan    :integer;// ���κδ���Ѿ��ʰ���	n(12)
    chung           :integer;// û����	n(12)
    jiwon           :integer;// ������	n(12)
    jangE           :integer;// ������Ƿ��	n(12)
    yoyangChong2    :integer;// ���޿�����Ѿ�2	n(12)
    chong           :integer;// ������Ѿ�	n(12)
    bohunChung      :integer;// ����û����	n(12)
    hbyh            :integer;// �ǰ�����(�Ƿ�޿�)100/100���κδ���Ѿ�	n(12)
    bohunbonin      :integer;// ���� �����Ϻκδ��	n(12)
    chaDeungJinilsu :double;// �������   ���뱸��	����(����)�ϼ�	n(4.2)
    chaDeungDocNo   :double; // �������   ��(��)���	n(2.2)
    chaDeungJisu    :Double;// ��������	n(1.7)
    chadeungChung   :integer;// �������û����		n(12)
  }
  Gunsu: string; // �Ǽ�	n(6)
  yoyangChong1: string; // ���޿�����Ѿ�1	n(12)
  bonin: string; // �����Ϻκδ��	n(12)
  boninSanghan: string; // ���κδ���Ѿ��ʰ���	n(12)
  chung: string; // û����	n(12)
  jiwon: string; // ������	n(12)
  jange: string; // ������Ƿ��	n(12)
  yoyangChong2: string; // ���޿�����Ѿ�2	n(12)
  chong: string; // ������Ѿ�	n(12)
  bohunChung: string; // ����û����	n(12)
  hbyh: string; // �ǰ�����(�Ƿ�޿�)100/100���κδ���Ѿ�	n(12)
  bohunbonin: string; // ���� �����Ϻκδ��	n(12)

  chaDeungJinilsu: string; // �������   ���뱸��	����(����)�ϼ�	n(4.2)
  chaDeungDocNo: string; // �������   ��(��)���	n(2.2)
  chaDeungJisu: string; // ��������	n(1.7)
  chadeungChung: string; // �������û����		n(12)

  chungDay: string; // û������	an(8)
 // chungGuName: string; // û����	an(20)
 // jaksungName: string; // �ۼ��ڼ���	an(20)
 // jaksungJumin: string; // �ۼ��ڻ������	an(13)
 // SeunginNo: string; // �˻���ι�ȣ	an(35)
  DaehangKiho: string; // ����û����ü��ȣ	an(5)
  remark: string; // ������	an(1750)

begin

  ChungVersion := '020';
  MyungVersion := '020';



  bohumsaCode:= varJaboCode ;

  SusikNo := 'C010'; // �ں�
  SusinKigwan := '1'; // �ǰ�����ɻ��򰡿�



  // ChungGubun := ' '; // space: ��û�� 1:����û�� 2:�߰�û�� 8: ����

  { ��û��
    ����û��
    �߰�û��
  }
  case rgChungGubun.ItemIndex of
    0:
      ChungGubun := ' ';
    1:
      ChungGubun := '1'; // ����û��
    2:
      ChungGubun := '2'; // �߰�û��
    3:
      ChungGubun := '3'; // �и�û��
  end;

  ChungDanwi := '0'; // 1~6:�ش��ִ���(���ں�) 0:����������û��(���ں�)
  JinGubun := '2'; // 1:�ǰ�DRG 2:ġ�� 5:���Űǰ����а� ���� 7:���� 8:�౹ 9:�ѹ�
  JinBunya := '6'; // 1:����, 2:�ܰ� 3:��,�Ҿ�û�ҳ�� 4:��,�̺����İ� 5:�Ǻ�,�񴢱�� 6:ġ�� 9:���ǰ�
  JinHyungTae := '4'; // 1�ǰ��Կ� 2�ǰ��ܷ� 3 ġ���Կ� 4ġ���ܷ� A����� �Կ�
  JinYearMonth := cbYear.text + cbMonth.text; // �Կ��� ��� ������� ���� ��(CCYYMM);

  for i := 1 to grdMain.RowCount - 1 do
  begin
      if rgChungGubun.ItemIndex in [1,2,3] then // ����, �߰�û�� , �и�
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
        JongGubun := '8';   // 8 �ڵ�������

        Gunsu := inttostr(sumJaboGunsu); // ������ û���Ǽ�
        yoyangChong1 := inttostr(sumJaboChong); // ���޿�����Ѿ�1

        //bonin := inttostr(sumJaboBonin);
        bonin :='0';

        boninSanghan := inttostr(sumJaboBoninSangHan);
        chung := inttostr(sumJaboChung);
        jiwon := inttostr(sumJaboJiwon);
        jange := inttostr(sumJabojangE);
        yoyangChong2 := inttostr(sumJaboChong); // ���޿�����Ѿ� 2
        chong := inttostr(sumJabojinChong);
        bohunChung := inttostr(sumJaboBohun);
        hbyh := inttostr(sumJaboHbyH);
        bohunbonin := '0';
        chaDeungJinilsu := formatFloat('0000',
             getJinryoilsu(cbYear.text + '-' + cbMonth.text + '-' + cbDay1.text,
             cbYear.text + '-' + cbMonth.text + '-' + cbDay2.text));
        chaDeungJinilsu := chaDeungJinilsu + '00';
        chaDeungDocNo := configvalue.varDocNo;

        chaDeungJisu := '10000000'; // ������1�ڸ�, �Ҽ���7�ڸ�(��8�ڸ�)�Ҽ����� ��ǥ��
        chadeungChung := chung; // �������û����=[û����-(������*(1-��������))]

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
    + AnsiStrings.Format('%12s', [yoyangChong2]) //50 ������Ѿ�
    + AnsiStrings.Format('%12s', [bonin]) // 62  ȯ�ڳ����Ѿ�
    + AnsiStrings.Format('%12s', [yoyangChong2])//[chung]) // 74  û����
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
  // 0:��
  // 1:����
  // 4: ���� ����ȯ��(���޿���)
  // 7:���Ʊ���ȯ��(����ó ���ڰ��ڵ�)
  // 8: ���ΰ�������屺 ��
  // 9: ���� �������� ��������̿��
  // B: ���ƺ��� �����Ϲ�
  // C: ������ ��ͳ�ġ����ȯ��
  // D: ���ƺ��� ������(�޿�)2��
  // E: ������ ������ȯ 18���̸� ���κδ� �氨
  // F: ������ ����� ������ȯ 18���̸� ���κδ� �氨
  // G: ��޺����Ƿ����� �����
  // H: ��� ��ġ����ȯ�����
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
    // 2. �������ڵ� ������
    { makejinchalRyoCode(
      nChoJae: Integer;
      nAge: Integer;
      dWorkDate: TDateTime;
      jange:boolean;
      yongua:boolean;
      ilban:boolean;
      ifirst:boolean }
    {
      1.�ǰ�����
      2.�Ƿ�޿�1��
      3.�Ƿ�޿�2��
      4.�Ϲ�
      5.�Ƿ�޿�4��
      6.�Ƿ�޿�8��
      7.����
      8.�ں�
      9.������1��
      10.������2��
      11.������2�������
    }
       varJong:= grdMain.ints[32, i] ;
       varBohumsa:=grdMain.cells[40, i] ;

       if  not(grdMain.ints[32, i] in [8])    then
        // �Ϲ�, ����, �ں�, �ǰ�����, ������1��, ������2��, ������2�����
       // goto reLoad;
       continue;

       if  (grdMain.cells[40, i] <> varjaboCode)  then
       continue;
        // goto reLoad;

      varSusikNo := 'C023';
 // C020 : �ڵ������� �ǰ� �Կ� �����������
 // C120 : �ڵ������� �ǰ� �Կ� �����������
 //        (��纴�� ��� ȯ��)
 // C021 : �ڵ������� �ǰ� �ܷ� �����������
 // C022 : �ڵ������� ġ�� �Կ� �����������
 // C023 : �ڵ������� ġ�� �ܷ� �����������


      varJohapKiho := grdMain.cells[11, i];
      case grdMain.ints[32, i] of
        2:
          varBohoGubun := '1'; // 1��
        3:
          varBohoGubun := '2'; // 2��
        5:
          varBohoGubun := '4'; // ���
        6:
          varBohoGubun := '8'; // 2������� ������� 1������ 6: 2������� ������� 2������
      end; // 9:����� ��  �ܱ��� �ٷ���

      varIlyun_boho := varIlyun_boho + 1;
      varIlyun := varIlyun_boho;



    grdNeyuk.RemoveRows(1, grdNeyuk.RowCount - 1); // 1. Ư�������� ��� �����...

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

    // ��䰡���ڵ� ���ϱ�
    jinchalRyoCode_gasan := '';
    if (DayOfWeek(dWorkDate) = 7) // ����ϸ� ���
      and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 ����
      and (nChoJae <> 3) and (nChoJae <> 4) then // ���簡 �ɾ߰� �ƴϸ�
    begin
      jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
        jange,
        grdMain.ints[28, i],//yongua, ilban, ifirst,
        true);

    end;

    { 1�ǰ�����
      2�Ƿ�޿�1��
      3�Ƿ�޿�2��
      4�Ϲ�
      5�Ƿ�޿�4��
      6�Ƿ�޿�8��
      7����
      8�ں�
      9������1��
      10������2��
      11������2�������
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

    { 1:����,2:�߰�,3:�и�,8:����
      ��û��
      ����û��
      ����û��
      �߰�û��
      �и�û��
    }
    case rgChungGubun.ItemIndex of
      0:
        varChungGubun := ' ';  //��û��
      1:
        varChungGubun := '1';  //����û��
      2:
        varChungGubun := '2';  //�߰�û��
      3:
        varChungGubun := '3';  //�и�û��
    end;

    // �Ϲݳ���'A'
    WriteLn(F, ChungGuNo
      + formatFloat('00000', varIlyun) + 'A'
      // �������� A �Ϲ� B �� C ���� D ó�� E Ư�������޸�
      + varSusikNo // ���Ĺ�ȣ

      + AnsiStrings.Format('%-8s', [edtYoyangKiho.Text]) // �����ȣ
      + AnsiStrings.Format('%-1s', [varjungekGubun])
       // 1: ���׼��� ����   2: ���������� ����(Ư���Ⱓ)
       //��纴�� ���ȯ�� �Կ����޿����������������� ��� ���׼��� ����� ���������� ����(Ư���Ⱓ) ���θ� ����

      + AnsiStrings.Format('%-1s', [varChungGubun]) // û�������ڵ�  1:����,2:�߰�,3:�и�,8:����
      + AnsiStrings.Format('%-7s', ['']) // ������ȣ  ���� û���� ���� ������ȣ
      + AnsiStrings.Format('%-5s', ['']) // �����Ϸù�ȣ  ���� û���� ���� �Ϸù�ȣ
      + AnsiStrings.Format('%-2s', ['']) // �����ڵ�         ����û���� ��û���� ������ �ɻ�Ҵ��ڵ����
      + AnsiStrings.Format('%-8s', ['']) // �����Կ�������   �Կ����޿���� �и�û���ñ��� CCYYMMDD
      + AnsiStrings.Format('%-30s', [varJaboSagoJubsuNo]) // ���������ȣ
      + AnsiStrings.Format('%-17s', [varJaboJigubBojungNo]) // ���޺�����ȣ
      + AnsiStrings.Format('%-20s', [grdMain.cells[3, i]]) // �����ڼ���
      + AnsiStrings.Format('%-13s', [grdMain.cells[8, i]]) // �������ֹι�ȣ (-) ��������
      + AnsiStrings.Format('%3s', [jinilsu]) // ���޿��ϼ� , ó�泻���� �ϼ��� ���󰣴�.
      + AnsiStrings.Format('%3s', ['1']) // �Կ��ϼ�
      + AnsiStrings.Format('%-2s', ['']) // ����,�Կ����(�������̻�)
      + AnsiStrings.Format('%-1s', ['1']) // ������ 1��� 2�̼� 3ȸ�� 4��� 9����Ǵ� �ܷ�����
      + AnsiStrings.Format('%10s', ['0']) // �������������Ѿ�   �������(20120201~20130131)
      + AnsiStrings.Format('%10s', [inttostr(grdMain.ints[15, i] + grdMain.ints[18, i])]) // ������Ѿ� (����+����)
      + AnsiStrings.Format('%10s', [grdMain.cells[16, i]]) // ȯ�ڳ����Ѿ� (���κδ��)
      + AnsiStrings.Format('%10s', [inttostr(grdMain.ints[15, i] + grdMain.ints[18, i])])  //û���� (����+����)
      + AnsiStrings.Format('%-2s', [varJaboCode])
       );                                                          //[grdMain.cells[17, i]]

    // Ư������ ����(�����)
    // MT008  �ǻ纰 ����(����)�ϼ�.  ù��° ���Ϸÿ��� �����Ѵ�.
    if varIlyun = 1 then
    begin
      BufferNeyuk(grdNeyuk, '1', '', '', 'MT008', varDrJumin + '/' + jinilsu);
      // MT008�ֹι�ȣ(ù6�ڸ�)/����(����)�ϼ�
    end;

    if grdMain.cells[19, i] <> '' then // ���ؿ���
      BufferNeyuk(grdNeyuk, '1', '', '', 'MT001', grdMain.cells[19, i]);

    if grdMain.cells[27, i] <> '' then // �޿�ȯ�� ����Ȯ�ι�ȣ 13�ڸ�
      BufferNeyuk(grdNeyuk, '1', '', '', 'MT019', grdMain.cells[27, i]);

    if grdMain.cells[26, i] <> '' then // �޿�ȯ�� ���κδ� ����
      BufferNeyuk(grdNeyuk, '1', '', '', 'MT018', grdMain.cells[26, i]);

    if grdMain.cells[14, i] <> '' then
    begin
      ChubangNo := formatDatetime('YYYYMMDD', strtodate(grdMain.cells[4, i])) +
        formatFloat('00000', grdMain.ints[14, i]);

      if grdMain.cells[35, i] <> '' then // ��������Ư����������
        BufferNeyuk(grdNeyuk, '4', ChubangNo, '', grdMain.cells[35, i],
          grdMain.cells[36, i]);
    end;

          if (trim(grdMain.cells[37, i]) <> '') and    // ����Ư������
              (grdMain.cells[61, i] = '1')  then  //Ư������
//      BufferNeyuk(grdNeyuk, '1', '', '', 'MT002',    grdMain.cells[37, i]);
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002',
                      trim( subStr( grdMain.cells[37, i], 1, '|') ) );


    // �ڵ�������...

    // �󺴳���'B'

    WriteMyungSeSeo_Sangbyubg('B',
      grdMain.cells[2, i],
      grdMain.cells[4, i],
      grdMain.cells[39, i], //�����ȣ jinryo_p
      varIlyun,
      grdMain.cells[20, i]);  //����Ư�ʹ�ȣ

    // ���᳻��'C'

    // �ڵ�������...�������ڵ带 �ִ´�.
    // Ʋ�ϵ� �����ᰡ 0 �ΰ��� �������ڵ带 ���� �ʴ´�.
    if grdMain.ints[34, i] <> 0 then // ������(jubsuak)
    begin
      WriteMyungSeSeo_Chojae('C', grdMain.cells[1, i], grdMain.cells[4, i],
        varIlyun, grdMain.ints[31, i], grdMain.cells[13, i], grdMain.cells[39, i]); // �������ڵ�
      // jin_time
      if (jinchalRyoCode_gasan <> '') and (configvalue.varGubun <> '����')   then
        WriteMyungSeSeo_SatGasan('C', grdMain.cells[2, i], grdMain.cells[4, i],
          varIlyun, grdMain.ints[31, i], grdMain.cells[13, i]); // ��䰡���ڵ�
    end;

    WriteMyungSeSeo_jinryo(true, 'C', grdMain.cells[2, i], grdMain.cells[4, i],
      varIlyun,
      grdMain.ints[31, i],
      grdMain.ints[32, i],  //�����ڵ�
     '16',
      grdMain.ints[7, i],
             grdMain.cells[51, i],    //jubsu_id
             grdMain.cells[50, i],    //isInpat
             grdMain.cells[38, i],   //�ǻ��
             grdMain.cells[39, i],  //�����ȣ
             true); // ���᳻�� �ں�

    // ó�泻��'D'
    WriteMyungSeSeo_Chubang('D', grdMain.cells[4, i], varIlyun,
      grdMain.ints[14, i]);

    // Ư������'E'
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


          //Summary�ʱ�ȭ
        grdsummary.floats[1, 1] := 0;   //����
        grdsummary.floats[2, 1] := 0;
        grdsummary.floats[3, 1] := 0;
        grdsummary.floats[4, 1] := 0;

        grdsummary.floats[1, 2] := 0;   //��ȣ
        grdsummary.floats[2, 2] := 0;
        grdsummary.floats[3, 2] := 0;
        grdsummary.floats[4, 2] := 0;

        grdsummary.floats[1, 3] := 0;  //�ں�
        grdsummary.floats[2, 3] := 0;
        grdsummary.floats[3, 3] := 0;
        grdsummary.floats[4, 3] := 0;

        grdsummary.floats[1, 4] := 0;   //����
        grdsummary.floats[2, 4] := 0;
        grdsummary.floats[3, 4] := 0;
        grdsummary.floats[4, 4] := 0;

        grdsummary.floats[1, 5] := 0;   //�հ�
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
                  //���� �� �ٷ� �۽�
                       if Application.MessageBox(
                    '[���� �� �ٷ� �۽�] �� �ϰԵǸ�  '+#10
                  + 'Ȯ�� ���� ���� ��û���� �ϰ� �˴ϴ�. ������ ��ģ �� '+#10
                  + '���������� ��й�ȣ�� �Է��ϰ� Ȯ���ϸ� �۽��� �Ϸ�˴ϴ�. '+#10
                   , 'Ȯ��', MB_OKCANCEL) = 1 then
                  begin
                        strProgram := 'C:\hira\DDMD\bin\'+ 'examsnd.exe';

                        ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
                            nil, SW_SHOW);
                  end;
           end
           else
           begin
                {ȣ�� ��� Argument ���ϰ� ����
                exam.exe (����)
                examsnd.exe(���� & �ۚ�)
                -
                0 ����
                1 ����(û������)
                -1 ����(û���Ұ�)
                -2 ����(��������Ʈ)}

                      strProgram := 'C:\hira\DDMD\bin\'+ 'exam.exe';
                //     code :=  ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
                //          nil, SW_SHOW);
                //������ ��ĥ������ ��ٸ���...

                ExecuteFile := 'C:\hira\DDMD\bin\'+ 'exam.exe'; // ������ ���α׷�

              //  ExecuteFile :=   'C:\hira\DDMD\bin\'+ 'examsnd.exe';//(���� & �ۚ�)


                ParamString :=  pChar(strName1) ; // ���α׷��� ����� �Ķ����
                StartInString := 'c:\'; // ���� ��ġ
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
                   //      ShowMessage('���α׷��� ����Ǿ����ϴ�');
                end
                else
                      ShowMessage('���α׷��� ������ �� �����ϴ�');



             //�Ʒ��� ���� �ʵȴ�.... else�� ź��....
          //      application.ProcessMessages;
                case code of
                0:  //����
                        lblStat.caption:= '�۽ſ� ������ ��������ϴ�.'+#10
                                 +'������ �����ϴ�. [�۽�]��ư�� Ŭ���Ͽ� �۽��� �Ϸ��ϼ���.' ;

                1:// ����(û������)
                        lblStat.caption:= '�۽ſ� ������ ��������ϴ�.'+#10
                                 +'������ ������  [�۽�]��ư�� Ŭ���Ͽ� �۽� �����մϴ�.' ;
                -1:// ����(û���Ұ�)
                          lblStat.caption:= '�۽ſ� ������ ��������ϴ�.'+#10
                                 +'������ �ֽ��ϴ�.������ Ȯ���ϼ���.' ;
                -2:// ����(��������Ʈ)}
                        lblStat.caption:= '�۽ſ� ������ ��������ϴ�.'+#10
                                 +'������ �ֽ��ϴ�.��������Ʈ�� �ʿ��մϴ�.' ;
                  else
                      lblStat.caption:= '�۽ſ� ������ ��������ϴ�.'+#10
                                 +'[�۽�]��ư�� Ŭ���Ͽ� �۽� �����մϴ�.' ;
                end;
          //      application.ProcessMessages;
     end;

end;

procedure Tjumgum_f.btnSendClick(Sender: TObject); //û��
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin
      if cbPreExam.checked then
      begin
               if Application.MessageBox(
            '[�������˼۽�(�������)] �� ���õǾ� �ֽ��ϴ�. '+#10
          + '�����Ͻ� �۽Ź���� ��û���� �ƴմϴ�. '+#10
          + '�������� û�� 1~2�ð� �� �������Ż �������� �޴����� ' +#10
          + '[û������] - [û������ ��������]���� û������� Ȯ���Ͻʽÿ�. '+#10
          + '��� �����Ϸ��� [OK], ����Ϸ��� [Cancel]�� Ŭ���ϼ���. ' +#10
          + '[�������˼۽�(�������)]�� ��û���� �ƴմϴ�.' +#10
          + 'û�� ���� Ȯ�� �� �ݵ�� '+#10
          +' [�������˼۽�(�������)] �� ���� �Ͻ��� ��û�� �Ͻʽÿ�. '
           , 'Ȯ��', MB_OKCANCEL) = 1 then
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
                   //�۽�
                       if Application.MessageBox(
                    '[�۽�] �� �ϰԵǸ�  '+#10
                  + '��û���� �ϰ� �˴ϴ�. ���� ���� â���� '+#10
                  + '[�̼۽�]�� û�������� �����ϰ� [��û��]��ư�� Ŭ���Ͽ�  ' +#10
                  + '���������� ��й�ȣ�� �Է��ϰ� Ȯ���ϸ� �۽��� �Ϸ�˴ϴ�. '+#10
                   , 'Ȯ��', MB_OKCANCEL) = 1 then
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


    if cbJong.itemindex in [3,7] then  //�Ϲ��̰ų� �ں��� ����̴�.
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
      0, // aKind : integer = 0; //0: Su_key �� 1: User_key��
      gubKind,
      (sender as TAdvStringgrid).Cells[4, ARow]   ); //�����ڵ�

    //JinryoBiSet;
  end;

end;

function Tjumgum_f.DeleteSangByung(aRow:integer): boolean;
begin
      result:=true;
       if Application.MessageBox(PChar('�󺴱���� ���� �Ͻðڽ��ϱ�?'),  '�˸�', MB_YESNO) = IDYES then
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

             Showmessage(E.Message + '�󺴻�������');
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
        ABrush.Color := clWhite   //�ɻ���
      else if grdMain.ints[54, ARow] = 4  then
        ABrush.Color := $00FFFF80   //����
      else if grdMain.ints[54, ARow] = 5  then
        ABrush.Color := clPurple   //����
       else if grdMain.ints[54, ARow] = 1  then
        ABrush.Color := clYellow   //�ɻ�Ϸ�
         else if grdMain.ints[54, ARow] = 3  then
           ABrush.Color := clGreen;   //�ɻ�����
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

//               //���᳻���ҷ�����
//               setJinryo_s(
//                   grdMain.Cells[51, NewRow],//jubsu_id
//                   grdJX2,
//                   grdMain.Cells[2, NewRow],
//                   '', //team
//                   '', //Doc_code
//                   grdMain.Cells[50, NewRow], //ToDo : �ܷ� �Կ� ����.
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
      'û�� ����'  +
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

    varcode := '002'; // ����
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

      lblStat.caption:= '��û�� �Ⱓ ���� �ϰ�,'+#10
                       +'��û�� ���� ���� ��'+#10
                       +'��[��ȸ/����] ��ư Ŭ���ϼ���.';

      CreateTable_chungGu;

         if trim(configvalue.varYoyang) =  '' then
         begin
              pnlJuminCheck.Visible := true;
              pnlJuminCheck.align   := alClient;
              lblJuminCheck.align   := alClient;
              lblJuminCheck.Caption := '�������ȣ��'+#10+ 'ȯ�漳������ �Է��ϼ���.';

         end;

         if trim(configvalue.varChungname) =  '' then
         begin
              pnlJuminCheck.Visible := true;
              pnlJuminCheck.align   := alClient;
              lblJuminCheck.align   := alClient;
              lblJuminCheck.Caption := 'û�� �ۼ���(����) ������'+#10+ 'ȯ�漳������ �Է��ϼ���.';

         end;


         //�ֹι�ȣ�� ��Ȯ���� Ȯ���Ͽ� ��Ȯ���� ���� ��� ���� �� lblJuminCheck�� �ѷ�����,


         if chkJumin(configvalue.varChungJumin) = false then
         begin
              pnlJuminCheck.Visible := true;
              pnlJuminCheck.align   := alClient;
              lblJuminCheck.align   := alClient;
              lblJuminCheck.Caption := configvalue.varChungname +'����'+#10+ '�ֹι�ȣ�� ȯ�漳������ �Է��ϼ���.';
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
      //'RichEdit line insertion error' ��� ������, ��ġ����Ʈ�� ���ڿ��� ����־��µ� ����� ���� ����� �ȵ��� ��� �߻��մϴ�.
      //�����߿� �Ұ� �������� richedit insertion error��� �޼����� �߳׿�...
      //�Ҷ�� �����Ͻ� ���� �����ǵ�(\n)������ ĳ��������(\r)�̴��� �׷����ϴ�.
      //AdjustLineBreaks�Լ��� ���ڿ� ���� ���Ե� \n�� \r\n���� �ٲپ��ݴϴ�.

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

         //Dr's Note  ��������

             LoadCC(grdMain.cells[2, i]);

         //----------------------------------------------------------------------------------
         //Ư������ �ֱ� Start
                memChungGuMemo.Lines.Clear;
//                memChungGuMemo.text :=
//                     StringReplace(grdMain.Cells[23, i], #13#10, '', [rfReplaceAll]);

                grdMain.CellToRich(23, i, memChungGuMemo );



             //   memChungGuMemo.Lines.Add(grdMain.cells[23, i]);
            //   memChungGuMemo.Lines.Add(AdjustLineBreaks(grdMain.StrippedCells[23, i]));

   //    memDrsNote.lines.add(AdjustLineBreaks(fieldByname('ccDate').asString))  ;
   //   memDrsNote.lines.add(AdjustLineBreaks(fieldByname('ccMemo').asString)) ;


                grdNeyuk.RemoveRows(1, grdNeyuk.RowCount - 1); // 1. Ư�������� ��� �����...



//                  if varIlyun = 1 then
//                  begin
//
//                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT008',   wonjangJinryoIlsu  )  ;
//                    // MT008�ֹι�ȣ(ù6�ڸ�)/����(����)�ϼ�     //641117/22/820207/22/810804/22
//                  end;

                  if trim(grdMain.cells[19, i]) <> '' then // ���ؿ���
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT001', grdMain.cells[19, i]);


                  if trim(grdMain.cells[27, i]) <> '' then // �޿�ȯ�� ����Ȯ�ι�ȣ 13�ڸ�
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT019', grdMain.cells[27, i]);


                  if trim(grdMain.cells[26, i]) <> '' then // �޿�ȯ�� ���κδ� ����
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT018', grdMain.cells[26, i]);

                  if trim(grdMain.cells[14, i]) <> '' then
                  begin
                    ChubangNo := formatDatetime('YYYYMMDD', strtodate(grdMain.cells[4, i])) +
                      formatFloat('00000', grdMain.ints[14, i]);

                    if trim(grdMain.cells[35, i]) <> '' then // ��������Ư����������
                      BufferNeyuk(grdNeyuk, '4', ChubangNo, '', grdMain.cells[35, i],
                        grdMain.cells[36, i]);
                  end;

              if (trim(grdMain.cells[37, i]) <> '') and    // ����Ư������
              (grdMain.cells[61, i] = '1')  then  //Ư������
                                      BufferNeyuk(grdNeyuk, '1', '', '', 'MT002',
                      trim( subStr( grdMain.cells[37, i], 1, '|') ) );

//                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', grdMain.cells[37, i]);

                 if  cbGubunIn.checked   then   //�Կ�
                 begin
                     //�Կ��ð� ����ð�
                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS005',
                           grdMain.cells[59, i]
                           +'/'
                          + grdMain.cells[60, i]);  //�Կ��ð� / ����ð�



                 end;


//                  if trim(grdMain.cells[23, i]) <> '' then // �ɻ��������
//                  begin
//                                                       //ToDO: CR LF���� �ؾ� �ٹٲ��� ���Ͼ��.
//                    BufferNeyuk(grdNeyuk, '1', '', '', 'MX999',  DeleteLineBreaks(grdMain.Cells[23, i]) );
//                  end;

                neyuk :='';
                grdMain.CellToRich(23, i,richedit1 );

                neyuk        :=  grdMain.RichToString(richedit1);  // copy(grdNeyuk.cells[5, i],0,699);
                neyuk        :=  richEdit1.text;//copy(neyuk,0,699);

                neyuk        :=  DeleteLineBreaks( copy( ansistring(neyuk),0,699) );


                //  if trim(grdMain.cells[23, i]) <> '' then // �ɻ��������
                 if trim( neyuk  ) <> '' then // �ɻ��������
                  begin
                                                       //ToDO: CR LF���� �ؾ� �ٹٲ��� ���Ͼ��.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MX999', neyuk);// DeleteLineBreaks(grdMain.Cells[23, i]) );
                  end;


                 if grdMain.cells[47, i] <> '0'   then // ���ö�Ʈ Ʋ�� ����(isAI)�� �Ϲ�����(0)�� �ƴѰ��
                 begin

                      if trim(grdMain.cells[43, i]) <> '' then // ���ö�Ʈ��Ϲ�ȣ 1
                      begin
                           BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[43, i]);
                      end;



                      if trim(grdMain.cells[44, i]) <> '' then // ���ö�Ʈ��Ϲ�ȣ 2
                      begin
                           BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[44, i]);
                      end;
                 end;


                      if (trim(grdMain.cells[20, i]) <> '') and  // ����Ư���ڵ�
                             (trim(grdMain.cells[61, i]) ='1') then   //����Ư������
                      begin
                         //  BufferNeyuk(grdNeyuk, '1', '', '', 'MT014', grdMain.cells[20, i]);
                          BufferNeyuk(grdNeyuk, '1', '', '', 'MT014',
                              trim(substr(grdMain.cells[20, i], 1, '|'))   );

                      end;


                  if grdMain.cells[49, i] ='1' then // �ӻ��
                  begin
                                                       //ToDO: CR LF���� �ؾ� �ٹٲ��� ���Ͼ��.
                    BufferNeyuk(grdNeyuk, '1', '', '', 'MT002', 'F015');// DeleteLineBreaks(grdMain.Cells[49, i]) );
                  end;

                    //      cells[28, r] := fieldByName('gub_gu').AsString;
                    // �����ư������� // gub_gu �������Ϲݰ��� ������=1, �Ϲ�=2, ��������=3
//                  if (grdMain.cells[28, i] ='1') or // �������Ϲݰ���
//                   (grdMain.cells[28, i] ='2') or // �Ϲݰǰ�����
//                   (grdMain.cells[28, i] ='3') // ��������
//                   then
//                  begin
//                                                       //ToDO: CR LF���� �ؾ� �ٹٲ��� ���Ͼ��.
//                    BufferNeyuk(grdNeyuk, '1', '', '', 'JT018',  DeleteLineBreaks(grdMain.Cells[28, i]) );
//                  end;


                  loadTjungHx( grdneyuk,
                        varChartNo, jin_day, ma_Jubsu_Id, 1); //�������� ���������� DB���� �ҷ�����


        //  Ư������ end
        //------------------------------------------------------------------------------------------



//               //ToDo : ������ �ڵ� �ֱ�
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
//                    grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '������';
//
//                    grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode);
//                    grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
//                    grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
//                    grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
//                    grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
//                    grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
//                    grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//�޿�����
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
//                    grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //�ݾ� = �ܰ� * ����* �ϼ�
//
//
//
//
//                 // ��䰡���ڵ� ���ϱ�
//                  jinchalRyoCode_gasan := '';
//                  if (DayOfWeek(dWorkDate) = 7) // ����ϸ� ���
//                    and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 ����
//                    and (nChoJae <> 3) and (nChoJae <> 4) then // ���簡 �ɾ߰� �ƴϸ�
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
//                    grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '������';
//
//                    grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode_gasan);
//                    grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
//                    grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
//                    grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
//                    grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
//                    grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
//                    grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//�޿�����
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
//                    grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //�ݾ� = �ܰ� * ����* �ϼ�
//
//                  end;
//



               //���᳻���ҷ�����
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
                  juSangRow,              //�ֻ� Row
                  grdMain.Cells[4, aRow],  //sJin_day
                  '');                     //sJin_day2



        if isView=true then
        begin

              WriteMyungSeSeo_jinryo(false,
                  'C',
                  grdMain.cells[2, aRow],
                  grdMain.cells[4, aRow],
                  varIlyun,
                  grdMain.ints[31, aRow],    //�����ڵ�
                  grdMain.ints[32, aRow],  //�����ڵ�
                   '16',
                  grdMain.ints[7, aRow],          //����
                  grdMain.cells[51, aRow],    //jubsu_id
                  grdMain.cells[50, aRow],    //isInpat
                  grdMain.cells[38, aRow],   //�ǻ��
                  grdMain.cells[39, aRow],  //�����ȣ
                  false, false, '');  // ���᳻��

        end;

//               if useWonNaeTuYak = true then
//                      BufferNeyuk(grdNeyuk, '1', '', '', 'MS002', inttostr(iChongTu));
//                    // ���������ϼ�(�ֻ���)



                lblchart.caption  :=  grdMain.cells[2, ARow];
                lbljinday.caption :=  grdMain.cells[4, ARow];


                lblMyungSeSeoNo.Caption :=  '������ȣ :'  + grdMain.cells[45, i];
                lblName.Caption         :=  '����       :'  + grdMain.cells[3, i];
                lblKiho.Caption         :=  '������ȣ :'  + grdMain.cells[11, i];
                lblKNumber.Caption      :=  '����ȣ     :'  + grdMain.cells[10, i];


                //ToDo : �ֻ�  Row�� ã�ƶ�.
                lblSangName.Caption     :=  '�ֻ�     :'  + grdSangbyung.cells[6, juSangRow]
                                                             +'['+
                                                            grdSangbyung.cells[10, juSangRow]+']';






                //ToDO : grdCost �� ������ �������.
                CalcSum(grdJx2,
                   grdCost,
                   grdMain.Cells[2, aRow],
                   configvalue.varGubun,
                   grdMain.Cells[4, aRow], //   FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
                   0,
                   grdMain.Cells[7, aRow],  //nai
                   grdMain.Cells[50, aRow], //isInPat
                   false,
                   grdMain.Cells[36, aRow],  // �Ǿ�о�����
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
            isInPat,//inttostr(cbIo.ItemIndex) , //0: �ܷ� 1: �� 2: ���� �Կ�
            grdJx2
            ); // 1. ���᳻�� ����   2. RIS���� 3. ��Ƽ������ BIT����   121.166.70.201,51983  sa / bit



     //   grdMain.cells[23, grdMain.Row]  := memChungGumemo.Text;

         grdMain.RichToCell(23,grdMain.Row, memChungGumemo );


       showmessage('����Ǿ����ϴ�.');
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
       btnSend.caption:='���� �� ��� �۽�' ;
    end
    else
    begin
        btnSend.caption:='�۽�';
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

           showmessage('����Ǿ����ϴ�.');
           pnlJagyuk.visible:=false;
       except
             showmessage('�ٽ� �����ϼ���.');
       end;
     end;
end;




// ���κδ��� ...............................................................

//function Tjumgum_f.CalcBonin(hkind:string;  // ����, �ǿ�, ���պ���
//                       varChong : double;
//                       boolWonwe: Boolean;
//                       varDate : string;  //YYYY-MM-DD
//                       varTime : string;  //hh:mm:ss
//                       varChojae : integer;
//                       varJongbeul : integer;
//                       varAge : integer;
//                       isSat:boolean;   //����Ͽ��� - ��䰡������
//                       varbonDamCode:string;  //���� ���κδ��ڵ�
//                       varBonjun : string;
//                       varCT : integer; //CT�ݾ�
//                       varDenture : integer;  //Ʋ�� �ݾ�
//                       artTeeth : boolean = false;       //Ʋ�Ͽ���
//                       AfterArtTeeth : boolean = false;  //Ʋ�ϼ�������
//                       implTeeth: boolean = false;       //���ö�Ʈ����
//                       anotherTeeth : boolean = false;   //�ٸ� ġ�� ����
//                       nBoMan :integer=0; //�Ǿ�ǰ������
//                       varGongsang : boolean = false; //���󿩺�
//                       varjange : boolean = false; //��ֿ���
//                       varYongua: boolean = false; //�����Ʊ���
//                       varGumjin: boolean = false; //�ǰ�����
//                       varfirst: boolean  = false; //������ȯ�����
//                       varRestrict:boolean = false; //�޿������ڿ���
//                        varPregnan: boolean= false) //�ӽź�
//                       : double;
//var
//     HandoAk: Integer;
//     BoninGu: Integer; //2007.7.1
//     jindate: string;
////     SatGasangeum:integer;
////     SatGasangeum2:integer;  //��䰡�� û���� 50% , 0
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
//     //����ó���� ������    ����ó���� ������
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
//          // �ں�,���� ���� �δ� ���� ó�� --------------
//           if (varJongbeul = 7) or (varJongbeul = 8) then
//           begin
//               BoninGu := 1;  //���κδ� ����
//           end
//           else
//
//
//          // �޿������� ���� ���� �δ� ó�� --------------
//           if (varJongbeul = 1) and (varRestrict  = true) then
//           begin
//               if (varDate >= '2014-07-01') then  //  �ڰ����� ������ �߰�
//                  BoninGu := 2;  //���� ���� �δ�
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
//                (varBondamCode = 'M015') or (varBondamCode = 'M016') then// ������ȯ�� 1�� �߰�
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
//     //������
//    // 2012.7.1 Ʋ�ϸ� ������ ������ ��������
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
//              if varChojae = 6 then //����+�ɾ�����
//              begin
//                   jinchalRyoCode := MakeJinchalRyoCode(varChoJae, varAge, strtodate(varDate), varjange,
//                                varyongua, varGumjin, varfirst);
//
//                   varJinchalRyo :=    GetJinchalRyo( jinchalRyoCode, varDate); //������
//
//
//              end
//              else
//                   if varChojae = 7 then //����+�ɾ�����
//                   begin
//                        varJinchalRyo := GetJinchalRyo( jinchalRyoCode, varDate);
//                   end
//                   else
//                        if varChojae = 9 then //����+����
//                        begin
//                             varJinchalRyo := GetJinchalRyo( jinchalRyoCode, varDate);
//                        end
//                        else
//                             if varChojae = 10 then //����2ȸ
//                             begin
//                                  varJinchalRyo := GetJinchalRyo( jinchalRyoCode, varDate);
//                            end
//                         else
//                         if varChojae = 11 then //����50%
//                         begin
//                                varJinchalRyo := GetJinchalRyo( jinchalRyoCode, varDate) div 2;// + GetJinchalRyo(2,  varAge, varDate);
//                         end
//                             else
//                                  if varChojae = 8 then //��������
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
//     //�޿��������:= �����ừ ������� +������
//     varChong1 :=
//          JulSa(varChong
//          + varJinchalRyo
//          + SatGasanGeum , 1) ;
//
//
//
//     // ���躻�κδ�� ���
//     if hkind = '����' then
//     begin // ġ������
//
//          varJangeGeum := 0;
//          //2007.8.1
//          if BoninGu = 2 then
//          begin //��ȣ1�� �Ƿڼ����°�� ���׺���
//               result :=  varChong;
//          end
//          else
//               if (varDate > '2009-06-30')
//                   and (varJongbeul = 1)
//                    and (varAge < 6) then
//               begin
//                    result := 100 *  Floor((varChong * 0.28) / 100); //6���̸� 28%
//               end
//               else
//                    if (varDate > '2007-07-31') and (varJongbeul = 1)
//                         and (varAge < 6) then
//                    begin
//                         result := 10 *  Floor((varChong * 0.28) / 10); //6���̸� 28%
//                    end
//                    else
//                         if (varDate > '2009-06-30') and (varJongbeul = 1) then //����
//                         begin
//
//                         //2012.7.1  Ʋ�� ������ 50% ���κδ�
//                              if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                              begin
//                                //   result :=
//                                //        1500
//                                //         + 100 * Floor((varDenture * 0.5) / 100);
//
//
//                                  if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                  begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                       //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                        begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
//                                            result :=
//                                                      100 * Floor((varDenture * 0.3) / 100);
//                                        end
//                                        else
//                                        begin
//                                          //   result :=
//                                          //            100 * Floor((varDenture * 0.5) / 100);
//
//                                             //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                               //�ӽź� ���κδ��
//                                              result := 100 *  Floor((varChong * 0.2) / 100)
//                                           else
//                                            {
//                                            10���� �ڸ��� ġ������ ��ġ ������ ���� ��ݴ� 2���� ġ�� Ȩ �޿�� �ü��� �޾Ҵ�.
//                                            �������� 7��180���� ���Դ�. �ڱ��� �ƹ����� �� ��� 30%�� 2��1050���� ������ �´�.
//                                            �̹� ��å�� ����Ǹ� ��ü �������� 30%, ġ�� Ȩ �޿�� ����� 10%�� 9710���� ���� �ȴ�.
//                                            18�� ���ϸ� ġ�� Ȩ �޿�� �ü��� �ǰ������� ����Ǵµ� ���κδ���� 10%�� ��ȭ�� 1��1340��(54%) �پ���.
//                                            }
//                                           //18������ �Ƕ�Ʈ ���� 2017-10-01 ����
//                                           if  (Realgrid14.ints[2, 5] > 0 )
//                                                    and (varDate >= '2017-10-01') then // �Ƕ�Ʈ ��  �������� �� ���� + ����
//                                            begin
//
//                                                result :=  //���� ���κδ��
//                                                  ( 100 *  Floor(
//                                                  (( varJinchalRyo  +  Realgrid14.ints[2, 4]) * 0.4    //������ + �Ƕ�Ʈ �ƴѰ� 30%
//                                                  + ( Realgrid14.ints[2, 6] * 0.1)) / 100)); //�Ƕ�Ʈ 10%
//                                                                         //�Ƿ�Ʈ �������� �ݾ�
//                                            end
//
//
//                                    else
//                                        result := 100 *  Floor((varChong * 0.4) / 100);
//
//                         end
//                         else
//                              if varJongbeul = 1 then //����
//                              begin
//                                   result := 10 * Floor((varChong * 0.4) / 10);
//                              end
//                              else
//                                   if (varJongbeul = 9) then //ġ������ ������ 1��
//                                   begin
//                                  //      result := 0;
//                                            if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                            begin
//
//                                                if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                       //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                result := 0; //���κδ� 0
//                                            end;
//
//
//
//
//                                   end
//                                   else
//                                        if (varJongbeul = 10) and (varDate > '2009-06-30') then //������2��
//                                        begin
//                                             result := 100 * Floor((varChong * 0.14) / 100);
//                                        end
//                                        else
//                                            //ġ������ ������ 2��
//                                           if (varJongbeul = 10) and (vardate > '2009-03-31') then {//������2��}
//                                                  begin
//                                                      // result := 0;
//                                                      // varJangeGeum := 100 * Floor((varChong * 0.14) / 100);
//
//                                                   //����ó���� ���� ������ ���� (ó���� ������1500/������ 1000����)
//                                                   //2012.7.1  Ʋ�� ������2���� 30% ���κδ�
//                                                   if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                                   begin
//                                                        if boolWonwe then
//                                                        begin
//
//                                                          if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                          begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                              //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                              begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                          //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                              begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                      //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                              begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                          //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                             // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
//                                                             if (nBoMan = 0) then
//                                                                  result := 1000 + (10 *
//                                                                       Floor(Round2(varCT * Round2(14 / 100,
//                                                                       -2), 0) / 10));
//                                                        end;
//                                                        //*****
//                                                  end
//
//                                                  else
//                                                       if (varJongbeul = 11) and (varDate > '2009-03-31') then //������2�������
//                                                       begin
//                                                        //    result := 0;
//                                                        //    varJangeGeum := 10 * Floor((varChong * 0.14) / 10);
//
//
//                                                      //����ó���� ���� ������ ���� (ó���� ������750/������ 250����)
//                                                        //2012.7.1  Ʋ�� ������2��������� 30% ���κδ�
//                                                        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                                        begin
//
//                                                             if boolWonwe then
//                                                             begin
//
//                                                                    if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                    begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                    begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                       //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                             // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 250��
//                                                             if (nBoMan = 0) then
//                                                             begin
//                                                                      if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                      begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                         //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                            else   //������ ����, Ʋ�ϸ�
//                                                               if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                               begin
//
//                                                                      if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                      begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                         //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                                    // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 250��
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
//                                                                       {//��ȣ1�� ���θ���}
//                                                                  begin
//
//                                                                            //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
//                                                                                 if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                                                 begin
//
//                                                                                    if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                                    begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                   //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                                  //��ȣ1�� ���θ���
//                                                            begin
//
//                                                                      //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
//                                                                           if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                                                result :=
//                                                                                     100 * Floor((varDenture * 0.2) / 100)
//                                                                           else
//                                                                                result := 0;
//
//
//                                                            end
//                                                            else
//                                                                 if (varJongbeul = 2) and (varDate < '2007-07-01') then //��ȣ1��
//                                                                 begin
//                                                                      result := 0;
//
//                                                                 end
//                                                                 else
//                                                                      if (varJongbeul = 3) and (varDate < '2007-07-01') then //��ȣ2��
//                                                                      begin
//                                                                           result :=
//                                                                                JulSa(varChong * 0.2, 1)
//                                                                                + (10 * Floor(Round2(varCt * Round2(15 / 100,
//                                                                                -2), 0) / 10));
//                                                                      end
//                                                                      else
//                                                                           if (varJongbeul = 3) then //��ȣ2��
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
//                                                                                      begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                            //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                                                            //18������ �Ƕ�Ʈ ���� 2017-10-01 ����
//                                                                                       if  (Realgrid14.ints[2, 5] > 0 )
//                                                                                                and (varDate >= '2017-10-01') then // �Ƕ�Ʈ ��  �������� �� ���� + ����
//                                                                                        begin
//
//                                                                                            result :=  //���� ���κδ��
//                                                                                              ( 100 *  Floor(
//                                                                                              (( varJinchalRyo  +  Realgrid14.ints[2, 4]) * 0.4    //������ + �Ƕ�Ʈ �ƴѰ� 30%
//                                                                                              + ( Realgrid14.ints[2, 6] * 0.1)) / 100)); //�Ƕ�Ʈ 10%
//                                                                                                                     //�Ƿ�Ʈ �������� �ݾ�
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
//                                                                                if varJongbeul = 2 then //��ȣ1��
//                                                                                begin
//                                                                                     //����ó���� ���� ������ ����
//                                                                                     if boolWonwe then
//                                                                                          result := 1500 + (10 *
//                                                                                               Floor(Round2(varCt * Round2(5 / 100,
//                                                                                               -2), 0) / 10))
//                                                                                     else
//                                                                                          result := 2000 + (10 *
//                                                                                               Floor(Round2(varCt * Round2(5 / 100,
//                                                                                               -2), 0) / 10));
//                                                                                     //�����(ó���� ������2000/������ 1500����)
//                                                                                     varJangeGeum := 0;
//
//                                                                                     // 2008.4.1 ���� (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
//                                                                                     if (nBoMan = 0) and (varDate > '2008-03-31') then
//                                                                                          result := 1500 + (10 *
//                                                                                               Floor(Round2(varCt * Round2(15 / 100,
//                                                                                               -2), 0)
//                                                                                               / 10));
//
//
//                                                                                      //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
//                                                                                    if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//
//                                                                                     begin
//                                                                                   //  result :=
//                                                                                    //      100 * Floor((varDenture * 0.2) / 100);
//
//
//                                                                                          if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (vardate >= '2017-11-01') then
//                                                                                          begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
//
//                                                                                              result :=
//                                                                                                100 * Floor((varDenture * 0.05) / 100);
//                                                                                          end
//                                                                                          else
//                                                                                          begin
//                                                                                           //    result :=
//                                                                                            //        100 * Floor((varDenture * 0.2) / 100);
//                                                                                                   //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                                                     if varJongbeul = 5 then //��ȣ4��
//                                                                                     begin
//                                                                                          result := 0;
//                                                                                     end
//                                                                                     else
//                                                                                          if varJongbeul = 6 then //��ȣ8��
//                                                                                          begin
//                                                                                               result := 0;
//                                                                                          end
//                                                                                          else //�Ϲ�
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
//          if hkind = '���պ���' then
//          begin //���պ���
//               varJangeGeum := 0;
//               if (varJongbeul = 1) and (varDate > '2009-06-30') then
//                    //����
//               begin
//                    result := 100 *
//                         Floor((varChong * 0.5) /
//                         100);
//               end
//               else
//                    if varJongbeul = 1 then //����
//                    begin
//                         result := 10 *
//                              Floor((varChong * 0.5) /
//                              10);
//                    end
//                    else
//                         if (varJongbeul = 10) and (varDate > '2009-06-30') then //������2��
//                         begin
//                              result := 100 *
//                                   Floor((varChong * 0.14) /
//                                   100);
//                         end
//                         else
//                              if (varJongbeul = 10) and (varDate > '2009-03-31') then //������2��
//                              begin
//                                   result := 10 *
//                                        Floor((varChong * 0.14) /
//                                        10);
//                              end
//                              else
//                                   if (varJongbeul = 11) and (varDate > '2009-06-30') then //������2�������
//                                   begin
//                                        result := 0;
//                                        varjangeGeum := 100 * Floor((varChong * 0.14) / 100);
//                                   end
//                                   else
//                                        if (varJongbeul = 11) and (varDate > '2009-03-31') then //������2�������
//                                        begin
//                                             result := 0;
//                                             varjangeGeum := 10 * Floor((varChong * 0.14) / 10);
//                                        end
//                                        else
//                                             if varJongbeul = 2 then //��ȣ1��
//                                             begin
//                                                  result := 0;
//                                             end
//                                             else
//                                                  if varJongbeul = 3 then //��ȣ2��
//                                                  begin
//                                                       result :=
//                                                            JulSa(varChong * 0.2, 1)
//                                                            + (10 * Floor(Round2(varCt * Round2(15 / 100,
//                                                            -2), 0) / 10));
//                                                  end
//                                                  else
//                                                       if varJongbeul = 5 then //��ȣ4��
//                                                       begin
//                                                            result := 0;
//                                                       end
//                                                       else
//                                                            if varJongbeul = 6 then //��ȣ8��
//                                                            begin
//                                                                 if boolWonwe then
//                                                                      result := 250
//                                                                 else
//                                                                      result := 750;
//                                                            end
//                                                            else //�Ϲ�
//                                                            begin
//                                                                 result :=
//                                                                      varChong;
//                                                            end;
//          end
//          else
//          begin //�ǿ���
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
//                         if (varDate > '2007-07-31') and (varJongbeul = 1) then //����
//                         begin
//
//                              //2012.7.1  Ʋ�� ������ 50% ���κδ�
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
//                                      //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                            //�ӽź� ���κδ�� �氨 ���� ==========================
//                                            if varPregnan = true then
//                                             result := 100 *  Floor(  ((varChong  - satGasanGeum2) * 0.1)  / 100);
//
//                                             //   result :=    //�ӽź� ���κδ��
//                                             //       100 * Floor(((Realgrid14.ints[1, 1]  - satGasanGeum2) * 0.1) / 100)
//
//                                         end
//                                           else
//
//                                           //18������ �Ƕ�Ʈ ���� 2017-10-01 ����
//                                           if  (Realgrid14.ints[2, 5] > 0 )
//                                                    and (varDate >= '2017-10-01') then // �Ƕ�Ʈ ��  �������� �� ���� + ����
//                                            begin
//
//                                                result :=  //���� ���κδ��
//                                                  ( 100 *  Floor(
//                                                  (( varJinchalRyo  + satGasangeum  +  Realgrid14.ints[2, 4]) * 0.3    //������ + �Ƕ�Ʈ �ƴѰ� 30%
//                                                  + ( Realgrid14.ints[2, 6] * 0.1)) / 100)); //�Ƕ�Ʈ 10%
//                                                                         //�Ƿ�Ʈ �������� �ݾ�
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
//                              if varJongbeul = 1 then //����
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
//                                   if (varJongbeul = 9) then //������1��
//                                   begin
//
//                                        //2012.7.1  Ʋ�� ������1���� 20% ���κδ�
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
//                                                //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                        if (varJongbeul = 10) and (varDate > '2009-03-31') then //������2��
//                                        begin
//                                             //����ó���� ���� ������ ���� (ó���� ������1500/������ 1000����)
//                                             //2012.7.1  Ʋ�� ������2���� 30% ���κδ�
//                                             if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                             begin
//                                                  if boolWonwe then
//                                                  begin
//
//                                                      if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                      begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                 //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                        begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                             //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                        begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                         //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                        begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                          //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                       // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
//                                                       if (nBoMan = 0) then
//                                                            result := 1000 + (10 *
//                                                                 Floor(Round2(varCt * Round2(14 / 100,
//                                                                 -2), 0) / 10));
//                                                  end;
//                                             //*****
//
//                                        end
//                                        else
//                                             if (varJongbeul = 11) and (varDate > '2009-03-31') then //������2�������
//                                             begin
//                                                  //����ó���� ���� ������ ���� (ó���� ������750/������ 250����)
//                                                  //2012.7.1  Ʋ�� ������2��������� 30% ���κδ�
//                                                  if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                                  begin
//
//                                                       if boolWonwe then
//                                                       begin
//                                                            if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                            begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                 //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                            begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                 //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                       // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 250��
//                                                       if (nBoMan = 0) then
//                                                       begin
//                                                            if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                            begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                 //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                       begin  //������ 2�����
//
//
//                                                                if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                       //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                            // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 250��
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
//                                             else                       //Ʋ��
//                                                  if  (varChojae=13) and (varJongbeul = 2) then //��ȣ1��
//                                                  begin
//                                                       //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
//                                                       if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                       begin
//
//
//                                                                if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                   //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
//                                                                      if   (vardate >= '2018-07-01') then
//                                                                      begin
//                                                                               //10�� �̸� ����
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
//                                                                               //10�� �̸� ����
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
//                                                 if (BoninGu = 1) and (varJongbeul = 2) then //��ȣ1��
//                                                  begin
//                                                       //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
//                                                       if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                       begin
//
//                                                               if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                               begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
//
//                                                                  result :=
//                                                                     10 * Floor((varDenture * 0.05) / 10) ;
//                                                               end
//                                                               else
//                                                               begin
//                                                             //  result :=
//                                                             //    10 * Floor((varDenture * 0.2) / 10);
//
//                                                                 //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                       if (varJongbeul = 2) and (varDate < '2007-07-01') then //��ȣ1��
//                                                       begin
//                                                              //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
//                                                               if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) then
//                                                               begin
//
//                                                                        if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                        begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                              //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                            if (varJongbeul = 3) or (varJongbeul = 2)   then //��ȣ2��  , ��ȣ1��
//                                                            begin
//                                                                 //����ó���� ���� ������ ����
//                                                                 //2012.7.1  Ʋ�� ��ȣ2���� 30% ���κδ�
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
//                                                                            begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                   //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
//                                                                                     if   (vardate >= '2018-07-01') then
//                                                                                    begin
//
//                                                                                       if  (varJongbeul = 3) then //��ȣ2��
//                                                                                              result :=
//                                                                                                  10 * Floor((varDenture * 0.2) / 10) +
//                                                                                                  1000 + (10 *
//                                                                                                  Floor(Round2(varCt * Round2(15 / 100,
//                                                                                                  -2), 0)
//                                                                                                  / 10))
//                                                                                                  else if  (varJongbeul = 2) then //��ȣ1��
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
//                                                                          begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                   //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                                      //�����(ó���� ������1500/������ 1000����)
//                                                                      varjangeGeum := 0;
//                                                                      // 2008.4.1 ���� (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
//                                                                      if (nBoMan = 0) and (varDate > '2008-03-31') then
//                                                                      begin
//
//                                                                          if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                          begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                   //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                                            begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                            begin   //���ö�Ʈ ��ȣ2�� 30%
//
//
//                                                                                   //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
//                                                                                   if   (vardate >= '2018-07-01') then
//                                                                                   begin
//
//                                                                                          if  (varJongbeul = 3) then
//                                                                                            result :=
//                                                                                            10 * Floor((varDenture * 0.2) / 10)
//                                                                                            else      //���ö�Ʈ ��ȣ1�� 20%
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
//                                                                                            else      //���ö�Ʈ ��ȣ1�� 20%
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
//                                                                                begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                           //�����(ó���� ������1500/������ 1000����)
//                                                                           varjangeGeum := 0;
//                                                                           // 2008.4.1 ���� (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
//                                                                           if (nBoMan = 0) and (varDate > '2008-03-31') then
//                                                                                result := 1000 + (10 *
//                                                                                     Floor(Round2(varCt * Round2(15 / 100,
//                                                                                     -2), 0)
//                                                                                     / 10));
//                                                                      end;
//                                                                 //*****
//                                                            end
//                                                            else
//                                                                 if varJongbeul = 5 then //��ȣ4��
//                                                                 begin
//                                                                      result := 0;
//                                                                 end
//                                                                 else
//                                                                      if varJongbeul = 6 then //��ȣ8��
//                                                                      begin
//                                                                           //2012.7.1  Ʋ�� ��ȣ8���� 30% ���κδ�
//                                                                           if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =true)) and (anotherTeeth = true) then
//                                                                           begin
//
//                                                                                if (boolWonwe) or (nBoMan = 0) then
//                                                                                begin //(ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
//
//                                                                                    if  ((artTeeth = true) or (AfterArtTeeth = true)) and  (varDate >= '2017-11-01') then
//                                                                                    begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                   //2018-07-01 ���ö�Ʈ�� �ǰ�����-30%, ������1��-10%, ������2��-20%, �Ƿ�޿�1��-10%, �Ƿ�޿�2��-20%
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
//                                                                                    begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                    begin  //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
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
//                                                                                     begin //(ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
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
//                                                                      else //�Ϲ�
//                                                                      begin
//                                                                           result := varChong;
//                                                                      end;
//          end;
//
//     if varGongSang = true then //�����̸� ���κδ� = 0
//          result := 0;
//
//     if varChong = 0 then //�������=0 �̸� ����=0
//          result := 0;
//
//
//
//
//  {   //û���� = ������ - ��ֱ�� - ���κδ� + ��䰡���
//      varChung :=
//           varChong
//             -  Round(varjangeGeum)
//             - result;  //���κδ��
//
//   }
//
//
//end;



procedure Tjumgum_f.calcSatGasanGeum(hkind:string; // ��䰡��� ���
                       varDate : string;  //YYYY-MM-DD
                       varTime : string;  //hh:mm:ss
                       varChojae : integer;
                       varAge : integer;
                       isSat:boolean);   //����Ͽ��� - ��䰡������

begin
     if hkind = '����' then
     begin
          isSat := false;
          isSat := false;
          SatGasangeum := 0;
          SatGasangeum2 := 0;
     end
     else
     begin

          //��䰡��
         if DayOfWeek(strtodate(varDate)) = 7 then //����ϸ� ���
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
          //su_apply�� 2013-01-01�̶� �������� ������ �ִ�.
          //������� �ظ��� 1��1�� �����ȴ�.
          //�������� ������ ���� 1��1���̴�.
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
     nChoJae: Integer;  //���籸��
     nAge: Integer;      //����
     dWorkDate: TdateTime;   //������
     varJange :boolean ; //��ֱ���
     varGumjin : boolean; //�Ϲݰ���
     varFirst : boolean; //������ȯ��
     varYongUa : boolean;//�����ư���
     varYagan : boolean) : integer; //�߰�)

var
     Code, San1, San2, San3, codekibon: string;
begin

     if DayOfWeek(dWorkDate) <> 7 then //����ϸ� ���
     begin
        result:=0;
        exit;
     end;

     if  dWorkDate < strtodate('2013-10-01') then //2013-10-01 ����
     begin
        result:=0;
        exit;
     end;

     if varYagan = true then
     begin
        result:=0;
        exit;
     end;


     if hKind = '����' then
     begin
        //'AA109030' ��䰡�� �ڵ尡 ����...
        result:=0;
        exit;
     end;

     San3 := '0';

     San1 := '0';

     // ��ȣ8���̶�� ������ ��ְ����� ���� �ʴ´�.
     //(����μ�ø�� ���� ������ü,�������� ��) 2011.2.1
     if varJange = true then
          San1 := '9'; //�������� �����


     if nAge < 6 then
          San1 := '6'; // �Ҿư���

     San2 := '3'; // ��䰡��


     if ((nChojae = 1) or (nChojae = 3)) then  //����
     begin
          if hKind = '����' then
               code := 'AA109'
          else
               if hKind = '���պ���' then
                    code := 'AA157'
               else
                    code := 'AA100';
     end
     else
          if ((nChojae = 2) or (nChojae = 4)) then  //����
          begin
               if hKind = '����' then
                    code := 'AA209'
               else
                    if hKind = '���պ���' then
                         code := 'AA257'
                    else
                         code := 'AA200';
          end;

     codekibon := code;
     Code := Code + San1 + San2 + San3;


     if Copy(code, 6, 3) = '000' then
          Code := Copy(Code, 1, 5);

     // San1 := '9'; //�������� �����
     // San1 := '6'; // �Ҿư���
     // San2 := '1'; //�ɾ߰���
     // San2 := '5'; //�����ϰ���
     //san1     san2      san3
     //0        0          0
     //9 ���   1 �ɾ�     2 �����ư���
     //6 �Ҿ�   5 ����     3 �Ϲݰ���
     //                    4 ������ȯ��

     if (varYongUa ) and (San1 = '6') then //������ �ǰ����� ���� ����
     begin
          san3 := '2';
          if (nChojae = 1) or (nChojae = 2) or (nChojae = 3) or (nChojae = 4) then
               Code := codekibon + San1 + San2 + San3; //602, 612, 652
     end
     else
          if varGumjin then //�Ϲݰǰ����� ���� ����
          begin
               san3 := '3';
               if (nChojae = 1) or (nChojae = 2) or (nChojae = 3) or (nChojae = 4) then
                    Code := codekibon + San1 + San2 + San3; //003, 013, 053; 903, 913, 953
          end
          else
               if varFirst then //������ȯ�� �ǰ����� ���� ����
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
//  result := 'AA154'; // �����������ڵ�
//  San3 := '0';
//
//  San1 := '0';
//
//  // ��ȣ8����(����μ�ø�� ���� ������ü,�������� ��) 2011.2.1
//
//  if jange = true then
//    San1 := '9'; // �������� �����
//  if nAge < 6 then
//    San1 := '6'; // �Ҿư���
//
//  if nChojae in [1,2,5,6]  then
//  begin
//    San2 := '0';
//  end
//  else
//  begin
//    San2 := '1'; // �ɾ߰���
//  end;
//
//  if DayOfWeek(dWorkDate) = 1 then
//  begin
//    San2 := '5'; // ���ϰ���
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
//        San2 := '5'; // �����ϰ���
//      end;
//    end;
//
//  end;
//
//  if isSat = true then // ��䰡��
//    San2 := '3';
//
//  if nChojae in [1,3,7] then//if ((nChoJae = 1) or (nChoJae = 3)) then
//  begin
//    if configvalue.varGubun = '����' then // ����
//      Code := 'AA109'
//    else if configvalue.varGubun = '2' then
//      Code := 'AA157' // �������������
//    else
//      Code := 'AA154'; // �ǿ�
// //     Code := 'AA100'; // ġ���ǿ�
//  end
//  else if  nChojae in [2,4,8]  then// ((nChoJae = 2) or (nChoJae = 4)) then
//  begin
//    if configvalue.varGubun = '����' then   //'1'
//      Code := 'AA209'
//    else if configvalue.varGubun = '2' then
//      Code := 'AA257'
//    else
//      Code := 'AA254'; // �ǿ�
// //     Code := 'AA100'; // ġ���ǿ�
////  end
////  else
////  begin
////    if configvalue.varGubun = '����' then // ġ������
////      Code := 'AA109'
////    else if configvalue.varGubun = '2' then
////      Code := 'AA157' // �������������
////    else
////      Code := 'AA100'; // �ǿ�
//// //     Code := 'AA100'; // ġ���ǿ�
//
//  end
//  else
//  begin
//    result:='';
//  end;
//
//  codekibon := Code;
//
//  // ***********  2011.7   ������ �ǰ����� ����
//  // ***********  2012.4   �Ϲ� �ǰ����� ����  , ������ȯ��
//  // San1 := '9'; //�������� �����
//  // San1 := '6'; // �Ҿư���
//  // San2 := '1'; //�ɾ߰���
//  // San2 := '5'; //�����ϰ���
//  // san1     san2      san3
//  // 0        0          0
//  // 9 ���   1 �ɾ�     2 �����ư���
//  // 6 �Ҿ�   5 ����     3 �Ϲݰ���
//  // 4 ������ȯ��
//  if (yongua = true) and (San1 = '6') then // ������ �ǰ����� ���� ����
//    San3 := '2';
//  if ilban = true then // �Ϲݰǰ����� ���� ����
//    San3 := '3';
//  if ifirst = true then // ������ȯ�� �ǰ����� ���� ����
//    San3 := '4';
//
//  if nChojae in[1,2,3,4,7,8] then     //����, ����, ����, ����, ��+����, ��+����
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



// jinryo_s ����  ============================================================

procedure Tjumgum_f.insertjin_s(
  JubsuID : string;
  ADate: TDateTime; AChart: string; aTeam: string;
  aDoc: string; isInpat:string; aGrid: TAdvStringGrid; saveKind:integer = 1);// grdJx2   saveKind 0: save 1: ����
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




  // jinryo_s�� ������ ���� �� chart_s�� ������ �ְ�
  // jinryo_s�� ������ ���� �� chart_s�� ������ �����.
  // jinryo_o���� ġ�ƹ�ȣ�� �������� =>ġ�ƹ�ȣ ������.
  // jinryo_s���� ġ�᳻���� ��������.

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

        if memChungGuMemo.text <> '' then // �ɻ����� �ִ°��
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
        // �޸� delete �� ������
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

  // jinryo_s , jinryo_o �� �����Ѵ�

  // Jinryo_O ���� ����
  for ARow := 1 to grdSangByung.RowCount - 1 do
  begin
    if grdSangByung.Cells[6, ARow] <> '' then // ���ڵ尡 ������
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

  // jinryo_s���� ����
//      if copy(varSu_Key, 1, 1) <> 'A' then
//        continue;


  for ARow := 1 to aGrid.RowCount - 1 do
  begin // AGrid = grdJx2
//ToDO : �����ϴ� ���� jinryo_s ==> ModiKind�� 'D'
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
    if    ((WsuGu3 = '09')     //����
        or (WsuGu3 = '10'))  //�ܿ�
        and (aGrid.Cells[25, Arow] = '' )  then   //Su_GU3=09 ������ �׸���  �����ڵ� ������
    begin
       isWonwe := true;
    end;
    //��������  �������� �ϳ��� ������ ó������ ������.


    if aGrid.Cells[10, ARow] = '9' then
    begin // su_gu1 �� group
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
      begin // su_gu3  ����
        paramByName('jin_ilsu').asString := aGrid.Cells[16, ARow];
        paramByName('div').asString := aGrid.Cells[4, ARow];
      end
      else
      begin
        paramByName('jin_ilsu').asString := aGrid.Cells[4, ARow];
        paramByName('div').asString := '1';
      end;

      paramByName('dan_qty').asString := aGrid.Cells[5, ARow];

      if aGrid.Cells[0, ARow] = '99' then // �������
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
      paramByName('user_name').asString := aGrid.Cells[1, ARow]; // ��Ī

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


// óġ��ư Ǯ� grid�� �ֱ� ................................................

procedure Tjumgum_f.InsertSugaCode(AGroupName,
   AGroupCode: string;
   nAdd: Integer;
   modiKind:string='C';
   aSutak:string='1');
const
  loadSugaList =
//    'select *,                                                                                                                                                     '
//    + #10 + '(select top 1 su_key from suga s where s.user_key= g.SugaCode  and (s.sugu1 <>''����'' or s.sugu1 is null )  order by s.su_apply desc ) as su_key,             '
//    + #10 + '(select top 1 su_gu3 from suga s where s.user_key= g.SugaCode  and (s.sugu1 <>''����'' or s.sugu1 is null )   order by s.su_apply desc ) as su_gu3,             '
//    + #10 + '(select top 1 su_gu2 from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_gu2,              '
//    + #10 + '(select top 1 su_danwi from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_danwi,          '
//    + #10 + '(select top 1 bo_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as bo_dan,              '
//    + #10 + '(select top 1 ja_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as ja_dan,              '
//    + #10 + '(select top 1 il_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as il_dan,              '
//    + #10 + '(select top 1 dan_qty from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as dan_qty,            '
//    + #10 + '(select top 1 su_gu1 from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_gu1,              '
//    + #10 + '(select top 1 su_soa from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_soa,              '
//    + #10 + '(select top 1 Su_kor_name from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as Su_kor_name,    '
//    + #10 + '(select top 1 Su_Eng_name from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as Su_eng_name,    '
//    + #10 + '(select top 1 su_yagan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_yagan,          '
//    + #10 + '(select top 1 need_chart_memo from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as need_chart_memo,          '
//    + #10 + '(select top 1 gasankind from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as gasankind,          '
//    + #10 + '(select top 1 sutakupche from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as sutakupche,          '
//    + #10 + '(select top 1 sutakgrade from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as sutakgrade,          '
//    + #10 + '(select top 1 gasan      from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as gasan,          '
//    + #10 + '(select top 1 su_extra   from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_extra,          '
//    + #10 + '(select top 1 su_sobulru   from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_sobulru,          '
//    + #10 + '(select top 1 modality from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as modality,          '
//    + #10 + '(select top 1 bo_dan from                                                                                                                                  '
//    + #10 + '      (select bo_dan,su_apply from suga where user_key=g.sugacode and (sugu1 <>''����'' or sugu1 is null )                                                      '
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
    + #10 + '      (select bo_dan,su_apply from suga where user_key=g.sugacode and (sugu1 <>''����'' or sugu1 is null )                                                      '
    + #10 + '	      union all                                                                                                                                                '
    + #10 + '         select bo_dan,su_apply from suga_history where user_key=g.sugacode ) m where   :jin_day >=m.su_apply                                                     '
    + #10 + '           order by su_apply desc) as Bodan                                                                                                                           '
    + #10 + ' from groupsuga g                                                                                                                                             '
    + #10 + ' where groupcode = :Groupcode   and g.grpDgsYon = ''O''                                                                                                          '
    + #10 + ' order by GroupLine                                                                                                                                            ';

var
  Ateeth: TTeeth;
//  sALMan: string; // �Ǿ�ǰ������
  nDanga, nIOrder, i, SF, SR, SL, HF, HR, HL: Integer;
  rAdd, nQty, nMachui: double;
  suKey, Osang, Osangname, groupkindsel: string;


  ngrdJxRow : integer;

  sealantDay: string;
  // sugu1, sugu2, sugu3: string;
  nPrice: Integer;
  sugacode, suKorName, GroupName: string;
  isBigub: Boolean; // grpInsYon�� Ȯ���Ͽ� 0: ��޿� true 2: �޿� false
  groupModality: string;

  // ��Ź����
  gubKind: string; // ��Ź�����ڵ� ���ؼ� �ݾ� ���Ҷ� �޿� ��޿� ���� 0: �޿� 2: ��޿�
//  gubKind: Integer; // ��Ź�����ڵ� ���ؼ� �ݾ� ���Ҷ� �޿� ��޿� ���� 0: �޿� 2: ��޿�
  sutakSanCode: string; // ��Ź�����ڵ�
  gasankind: string;
  sutakupche: string;
  sutakgrade: string;

  grpInsYon: string; // 0:�޿�, 2:��޿�

  tempQuery: TuniQuery;
  j: integer;

  sSutak: string ;
  isNeedMemo :boolean;
  aNeedTeakRyeCode : string;
  jin_day : string;

begin
  {
    �ϴ��� ���� Ȯ���ϰ�  ������ �ֳ�����
    1. ���� ġ�� ������ ������ �˾Ƴ���.
    2. ġ�ư����� ������� ���� �����̴�    (09)
    3. ����� ġ�� ������ ���� �����Ѵ�.���� �������� ���Ѵ�.

    4. ������� ���� ����ġ�ƴ��� Ȯ���Ѵ�
    5. �Ǿ�ǰ������� ������ 1ȸ�������Ѵ�.
    6. ó������� ������� ó���ϼ��� �����Ѵ�.
    7. ���������� �������غ�(�Ǵ�c 31�Ǵ�c3 �ٰ���R ������M ġ�� T �ϴ�  Null) �����ϰ�
    --8. ���� ������ �����Ѵ�.
    --9. ������ ���� �ٸ� ����ƾ�� ������.
    10. �׸��� warn DB�� �����ؼ� ���޽����� ������.
    --11. ���� �˾Ƽ� ������ ġ�� ������ ����ϰ�, �����Ḧ �����Ѵ�.


    groupsuga���� grpInsYon�� Ȯ���Ͽ� 0: ��޿� 2: �޿��� �Է��Ѵ�. }

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
        Showmessage(AGroupName + ' �׷��ڵ尡 �������� �ʽ��ϴ�. Ȯ���ϼ���!!');
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

//    // �Ǿ�ǰ�������ڵ� Ȯ��
//    if (FormatDateTime('YYYY-MM-DD', dmain.Date) > '2011-12-31') and
//      (FormatDateTime('YYYY-MM-DD', dmain.Date) < '2012-04-01') and
//      (configvalue.varGubun = '����') then // ������  �湮��
//      sALMan := 'AL300'
//    else if (FormatDateTime('YYYY-MM-DD', dmain.Date) > '2011-12-31') and
//      (FormatDateTime('YYYY-MM-DD', dmain.Date) < '2012-04-01') then
//      sALMan := 'AL400' // �ǿ��� �湮��
//    else if configvalue.varGubun = '����' then
//      sALMan := 'AL701'
//    else
//      sALMan := 'AL801';

    // ���̰� ������
    if LblAge.Caption = '' then
      LblAge.Caption := '20';

    // ���Ϲ�ȣ/������ üũ
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
    grdJx2.Cells[1, grdJx2.RowCount - 1] := AGroupName; // ��Ī
    grdJx2.Cells[9, grdJx2.RowCount - 1] := AGroupCode; // GroupCode
    grdJx2.Cells[3, grdJx2.RowCount - 1] := '1'; // ����
    grdJx2.Cells[4, grdJx2.RowCount - 1] := '1'; // �ϼ�
    grdJx2.Cells[5, grdJx2.RowCount - 1] := '1'; // Ƚ��
    grdJx2.Cells[10, grdJx2.RowCount - 1] := '9'; // su_gu1
    grdJx2.Cells[14, grdJx2.RowCount - 1] := inttostr(nIOrder + 1); // IOrder
    grdJx2.Cells[8, grdJx2.RowCount - 1] := groupModality; // Modal

    grdJx2.Cells[22, grdJx2.RowCount - 1] := jin_day; // jin_day
    grdJx2.Cells[24, grdJx2.RowCount - 1] := AGroupName; // su_eng_Name

    // groupcode ���� grdSangByung �� �󺴰� ������ ���� �ִ´�


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
//           //���� ����....
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
////                // cmbDoctor.Text; //�����
////            grdSangByung.Cells[14, nIOrder] := cbDoc.ColumnItems[cbDoc.itemindex, 3];
////                // ����� �����ȣ
//             nIorder := nIorder + 1;
//            next;
//           end;
//
//
//        end;
//
//
//
//        //CC�� ����......
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
      // Sql.Add('(select bo_dan,su_apply from suga where su_key=g.sugacode and (s.sugu1 <>''����'' or s.sugu1 is null )  union all             ');
      // Sql.Add(' select bo_dan,su_apply from suga_history where su_key=g.sugacode ) m where  :jin_day >=m.su_apply     ');
      // Sql.Add('order by su_apply desc) as Bodan,                                                                      ');
      // Sql.Add('s.ja_dan,s.il_dan,s.dan_qty,s.su_gu1,s.su_soa,s.su_yagan,S.Su_key,S.Su_kor_name,G.ilsu,G.qty,G.iltu    ');
      // Sql.Add('from groupsuga G, suga S where G.groupcode =:Groupcode and S.Su_key=G.Sugacode  and (s.sugu1 <>''����'' or s.sugu1 is null ) ');
      // Sql.Add('order by s.su_gu3 desc,   s.su_gu1 desc                                                                ');

      SQL.text := loadSugaList;

      paramByName('jin_day').asString := jin_day;// FormatDateTime('YYYY-MM-DD', dmain.Date);
      paramByName('Groupcode').asString := AGroupCode;

      open;
      First;

      if not isEmpty then
      begin

        // ���⼭ �� �׷��� Ǯ����.
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
            // �׷� �������ٰ� �־�ΰ�
            // insertsugacode �� �� �Ŀ�
            // �׷� ������ �ѹ� �� ������.
            GroupName := LoadGroupName(sugacode);
            lstGroupTemp.Items.Add(GroupName + '|' + sugacode + '|' +
              trim(fieldByname('sugacode').asString));
            next;
          end
          else
          begin



            //aSugu1 �ʱ�ȭ
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

            sSutak:= trim(fieldByname('su_gu2').asString);   //suga ���̺��� ��Ź�˻翩��=2

            grpInsYon := trim(fieldByname('grpInsYon').asString);

            if cbJong.itemindex = 3 then // ������ �Ϲ��̸� ��� ��޿�
            begin
              grpInsYon := '2';
            end;

            if grpInsYon = '2' then
              isBigub := true
            else
              isBigub := false;

            case cbJong.itemindex of
              0, 1, 2, 4, 5, 8, 9, 10:
                begin // �����Ͽ� �´� �ܰ�
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

                 if cbJong.itemindex in [3,7] then  //�Ϲ��̰ų� �ں��� ����̴�.
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
                grdJx2.Cells[0, ngrdJxRow] := '���';
              2:
                grdJx2.Cells[0, ngrdJxRow] := '����';
              3 .. 4:
                grdJx2.Cells[0, ngrdJxRow] := '���';
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


            case strCase(aSugu3, ['09']) of    //��ó��
              0:
                begin
                  grdJx2.Cells[3, ngrdJxRow]  :=   fieldByname('qty').asString; // ����
                  grdJx2.Cells[4, ngrdJxRow]  :=   fieldByname('ilsu').asString;
                  grdJx2.Cells[14, ngrdJxRow] :=   fieldByname('iltu').asString

                end;
              else
              begin
                grdJx2.floats[3, ngrdJxRow] :=   nQty * fieldByname('qty').asfloat;

              //  if aSugu2 = '9' then // ��Ź�˻�
                if aSugu3 = '26' then // ��Ź�˻�
                begin
                  // Sutak_f :=  TSutak_f.Create(application);
                  // Sutak_f.Showmodal;
                  // Sutak_f.Free;
                  // Sutak_f := nil;

                  // ��Ź�˻��� ��� �����ڵ� san1, san2, san3 ����
                  // nDanga, su_key �ٽ� ����
                  // ------------------------------------------

                  gasankind  := fieldByname('gasankind').asString;
                  sutakupche := fieldByname('sutakupche').asString;
                  sutakgrade := fieldByname('sutakgrade').asString;

              //    if aSutak <> '2' then // ��ü�˻�� ����X
              //    begin

                   //�����ڵ� �����;
                      sutakSanCode := makeSutakSanCode(suKey, gasanKind,
                      sutakupche, sutakgrade);

                      if aSutak <> '2' then // ��ü�˻�� 1.1 X.
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

                  if aSutak <> '2' then // ��ü�˻�� 1.1 X.
                  begin

                    grdJx2.floats[3, ngrdJxRow] :=
                      nQty * fieldByname('qty').asfloat * 1.1;

                  end;
                end;
              end;
            end;

//            case strCase(aSugu3, ['09']) of    //��ó��
//              0:
//                begin
//                  if fieldByname('su_extra').asString = '' then
//                      nDanga:=0;
//                end;
//            end;

            grdJx2.ints[2, ngrdJxRow] := nDanga;
            grdJx2.Cells[4, ngrdJxRow] := '1'; // �ϼ�
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

            grdJx2.Cells[13, ngrdJxRow] := fieldByname('Su_yagan') .asString; // �߰� ���� �Ǵ� ��=1

            grdJx2.ints[14, ngrdJxRow] := nIOrder + 1;


            // nPrice:=    Calckumak(jinryo_f.grdJx2,
            // FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),
            // jinryo_f.grdJx2.Rowcount - 1, True,
            // jinryo_f.lblAge.caption);

            nPrice := CalcKumak(
              grdJx2.Cells[19, ngrdJxRow], // suKey:string;
              nDanga, // �ܰ�nDanga:integer ;
              grdJx2.floats[3, ngrdJxRow], // ����nQty:integer ;
              grdJx2.ints[4, ngrdJxRow], // �ϼ�nilsu:integer ;
              grdJx2.ints[5, ngrdJxRow], // ������nDanQty:integer ;
              FormatDateTime('YYYY-MM-DD',dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
              grdJx2.Cells[12, ngrdJxRow], // soaGasan : string;
              grdJx2.Cells[13, ngrdJxRow], // simGasan : string;
              true,
              grdJx2.Cells[25, ngrdJxRow],   //�����߿��� �����ڵ尡 ������ 0���̴�.
              LblAge.Caption);





               grdJx2.ints[6, ngrdJxRow]  := nPrice;
               grdJx2.Cells[8, ngrdJxRow] :=  fieldByname('modality').asString;

               next;

          end;

        end;

        //JinryoBiSet;

        if isNeedmemo=true then
        begin
            showmessage('�ɻ���������� ��������.');
        end;




//        if trim(aNeedTeakRyeCode) <> ''  then
//        begin
//            // showmessage('�ɻ���������� ��������.');
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


