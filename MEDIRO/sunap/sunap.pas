unit sunap;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     strUtils,
     Dialogs,   StdCtrls, Mask, Math,
     ExtCtrls,   OleCtrls,
     IniFiles, Buttons, ComCtrls,  frxClass, frxExportPDF,
     AdvCombo, EllipsLabel, AdvPanel,
     AdvEdit, AdvGlowButton, PlannerCal, Grids, AdvObj, BaseGrid, AdvGrid,
     FormSize, ColCombo, AdvSplitter, AdvSmoothStatusIndicator,

       uni, db,

      AdvSpin, Menus,
     ShellApi, AdvUtil, Vcl.CheckLst, frxExportBaseDialog;

type
     TsP = packed record
          sP1: string;
          sP2: string;
          sP3: string;
          sP4: string;
     end;

type
     TMyArray = array[0..250] of char;

type
     Tsunap_f = class(TForm)
    spSkinPanel1: TPanel;
          edtSunapDay: TMaskEdit;
          Shape14: TShape;
    edtMisu: TAdvEdit;
          Shape61: TShape;
          cbAuto: TCheckBox;
          cmbCard: TComboBox;
          edtMonth: TEdit;
          Image2: TImage;
          frxPDFExport: TfrxPDFExport;
    wNumEdit7: TAdvEdit;
          Label3: TLabel;
    edtboninJIn: TAdvEdit;
          Panel1: TPanel;
          Shape47: TShape;
          Shape18: TShape;
          Shape19: TShape;
    edtChong: TAdvEdit;
    lblTx: TButton;
          Button3: TButton;
          GroupBox1: TGroupBox;
          memChamgo2: TMemo;
          GroupBox2: TGroupBox;
          SpeedButton1: TSpeedButton;
          SpeedButton2: TSpeedButton;
          SpeedButton3: TSpeedButton;
          cbRecall: TMemo;
          Button1: TButton;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          edtRecallDay: TMaskEdit;
          edtRecallTime: TEdit;
          edtRecall: TMemo;
          TabSheet2: TTabSheet;
          memJin: TMemo;
          edtTeam: TEdit;
          cbkind: TAdvComboBox;
          edtTongDay: TMaskEdit;
          Panel2: TPanel;
    lblHyunreceipt: TButton;
          lblin: TLabel;
          FormSize1: TFormSize;
          pnlTong: TAdvPanel;
          AdvPanel1: TAdvPanel;
    spSkinButton10: TButton;
    spSkinButton11: TButton;
    PnlSunapDtx: TAdvPanel;
    AdvPanel4: TAdvPanel;
    Button6: TButton;
    Button7: TButton;
    grdSunapDtx: TAdvStringGrid;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    PlannerCalendar1: TPlannerCalendar;
    AdvPanelStyler1: TAdvPanelStyler;
    pnlSunapInfo: TPanel;
    AdvSplitter1: TAdvSplitter;
    AdvSplitter2: TAdvSplitter;
    pnlSunapPlan: TAdvPanel;
    lblPlan: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    memPlanMemo: TMemo;
    edtMonthGeumek: TAdvEdit;
    edtMonthly: TAdvEdit;
    edtOrthoMonth: TAdvEdit;
    grdplan: TAdvStringGrid;
    pnlSunapChamgo: TAdvPanel;
    Label7: TLabel;
    grdSunapChamgo: TAdvStringGrid;
    Button5: TButton;
    edtSunapEndDay: TAdvEdit;
    pnlSunapList: TAdvPanel;
    lblSum: TLabel;
    lblJan: TLabel;
    lblGam: TLabel;
    spSkinButton5: TButton;
    CheckBox1: TCheckBox;
    cbTeam2: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    grdmain: TAdvStringGrid;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    pnlSunapDtx_day: TAdvPanel;
    AdvPanel5: TAdvPanel;
    Button18: TButton;
    grdSunapDtx_day: TAdvStringGrid;
    Button17: TButton;
    cbChoice: TCheckBox;
    btnDeleteChecked: TButton;
    Label9: TLabel;
    lblBunnap: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    spSkinStdLabel4: TLabel;
    spSkinStdLabel2: TLabel;
    spSkinStdLabel6: TLabel;
    spSkinStdLabel1: TLabel;
    spSkinStdLabel3: TLabel;
    lblPlanKind: TLabel;
    lblMisuGeum: TLabel;
    cbHyungeum: TRadioButton;
    cbMisuSunap: TRadioButton;
    cbReceipt: TRadioButton;
    cbPreview: TRadioButton;
    spSkinCheckRadioBox1: TRadioButton;
    wLabel6: TLabel;
    wLabel15: TLabel;
    wLabel81: TLabel;
    wLabel2: TLabel;
    wLabel12: TLabel;
    wLabel13: TLabel;
    wLabel14: TLabel;
    wNumLabel1: TLabel;
    wNumys: TLabel;
    wNumChong: TLabel;
    edtBohumChongMisu: TLabel;
    grdtong: TAdvStringGrid;
    dtRecall: TDateTimePicker;
    Panel6: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Shape7: TShape;
    lblYungsu: TLabel;
    lblSujin: TLabel;
    edtName: TEdit;
    spSkinPanel2: TPanel;
    pic1: TImage;
    spSkinPanel3: TPanel;
    pic2: TImage;
    pnlCost: TAdvPanel;
    grdcost2: TAdvStringGrid;
    AdvPanel3: TAdvPanel;
    grdSunap: TAdvStringGrid;
    Splitter1: TSplitter;
    grdJx2: TAdvStringGrid;
    clbJinryoHx: TCheckListBox;
    Button20: TButton;
    edtSumBonin: TAdvEdit;
    edtSumGongdan: TAdvEdit;
    edtSumJunek: TAdvEdit;
    edtSumBigub: TAdvEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edtHyunReceipt: TAdvEdit;
    lblHyunYoung: TButton;
    lblTonHyunYpung: TButton;
    edtTongReceipt: TAdvEdit;
    Button4: TButton;
    edtTong2: TAdvEdit;
    pnlLeft: TAdvPanel;
    Shape1: TShape;
    lblSunapDay: TLabel;
    Shape10: TShape;
    lblSunap: TLabel;
    wLabel21: TLabel;
    wLabel22: TLabel;
    lblChart: TLabel;
    lblDOc: TLabel;
    Label23: TLabel;
    wLabel11: TLabel;
    btnSave: TButton;
    gbSunapchamgo: TGroupBox;
    btnHwanbul: TButton;
    btnReceipt: TButton;
    btnClose: TButton;
    cbdangmisu: TCheckBox;
    cbSkind: TAdvComboBox;
    edtChong1: TAdvEdit;
    cbSunapGubunHangMok: TComboBox;
    pnlCard: TAdvPanel;
    AdvPanel2: TAdvPanel;
    btnCardConfirm: TButton;
    btnCardCancel: TButton;
    Button16: TButton;
    grdCard: TAdvStringGrid;
    Panel5: TPanel;
    wLabel23: TLabel;
    spSkinCheckRadioBox2: TRadioButton;
    spSkinCheckRadioBox3: TRadioButton;
    edtPrevSunap: TAdvEdit;
    pnlHwanbul: TAdvPanel;
    spSkinPanel4: TPanel;
    wLabel18: TLabel;
    wLabel19: TLabel;
    wLabel20: TLabel;
    edtsayu: TAdvEdit;
    edthwanbul: TAdvEdit;
    cbHwanbulKind: TComboBox;
    btnHwanBulSave: TButton;
    btnCancelhwanBul: TButton;
    btnEndAccount: TButton;
    btnEndAccountCancel: TButton;
    cbHygine: TComboBox;
    sbGroup: TGroupBox;
    scGroup: TScrollBox;
    btnCalendar: TAdvGlowButton;
    btnSaveNprint: TButton;
    pnlBoho: TAdvPanel;
    Label8: TLabel;
    Panel7: TPanel;
    Label11: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lblJanaek: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    Label19: TLabel;
    lblsKey: TLabel;
    Label21: TLabel;
    lblWonweNo: TLabel;
    Label10: TLabel;
    edtSunkiho: TEdit;
    edtSukum: TAdvEdit;
    wNumEdit13: TAdvEdit;
    JBonComboEdit: TComboBox;
    Btn_3: TButton;
    Panel8: TPanel;
    Label12: TLabel;
    Label16: TLabel;
    Shape13: TShape;
    Label17: TLabel;
    Label18: TLabel;
    Shape15: TShape;
    memResult: TMemo;
    edtHwakinNo: TEdit;
    edtJan: TAdvEdit;
    btn_5: TButton;
    JBonJunEdit: TEdit;
    JBonTypeEdit: TEdit;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
    Panel9: TPanel;
    Label5: TLabel;
    lblBohum: TLabel;
    wLabel8: TLabel;
    wLabel9: TLabel;
    wLabel7: TLabel;
    wLabel10: TLabel;
    lblsunsu: TLabel;
    wLabel5: TLabel;
    wLabel16: TLabel;
    cbbohum: TCheckBox;
    edtEtc: TAdvEdit;
    edtbonin1: TAdvEdit;
    edtBugaSe: TAdvEdit;
    edtChong2: TAdvEdit;
    edtChung: TAdvEdit;
    edtBohum: TAdvEdit;
    edtSunapChongEk: TAdvEdit;
    edtilbanChongMisu: TAdvEdit;
    edtYul: TAdvEdit;
    edtiCard: TAdvEdit;
    edtiHyun: TAdvEdit;
    Button21: TButton;
    Button22: TButton;
    Button24: TButton;
    edtiDc: TAdvEdit;
    Button23: TButton;
    edtiTong: TAdvEdit;
    edtCard: TAdvEdit;
    edtHyun: TAdvEdit;
    edtTong: TAdvEdit;
    lblHyunGeum: TButton;
    btnCard: TButton;
    lblTong: TButton;
    edtSunap: TAdvEdit;
    edtDangMisu: TAdvEdit;
    btnTodaymisu: TButton;
    btnGammyun: TButton;
    edtGammyun: TAdvEdit;
    frxReport: TfrxReport;
    CheckBox2: TCheckBox;
    AdvPanel6: TAdvPanel;
    AdvStringGrid1: TAdvStringGrid;
    pnlDr: TAdvPanel;
    edtDr: TRichEdit;
    Button25: TButton;
    EllipsLabel1: TLabel;
    EllipsLabel2: TLabel;
    lblJubsuID: TLabel;
    btnReqCert: TButton;
    lblWonweilsu: TLabel;
    pnlPrintMemo: TAdvPanel;
    edtMemoEtc: TRichEdit;
    Button19: TButton;
    memChamgo: TMemo;
    lblJinDay1: TLabel;
    lblJinDay2: TLabel;
    lblJongbeul: TLabel;
    lblKind: TLabel;
    AdvPanel8: TAdvPanel;
    btnModMagam: TButton;
    edtBunnap: TAdvSpinEdit;
    cbBunNap: TCheckBox;
    Button15: TButton;
    cbNoSunapDaegi: TCheckBox;
    cbMod: TCheckBox;
    cbSunapOnly: TCheckBox;
    cbDuplaicate: TCheckBox;
    cbTeam: TComboBox;
    btnSignList: TButton;
    btnSign: TButton;
    cbin: TCheckBox;
    memChamgoH1: TMemo;
    btnDel: TButton;
    edtJinryoPid: TEdit;
    btnSunapNeyuk: TButton;
    wLabel4: TLabel;
    wLabel1: TLabel;
    Panel10: TPanel;
    edtChong12: TLabel;
    edtChong21: TLabel;
    edtChung1: TLabel;
    edtSunapChongEk1: TLabel;
    edtilbanChongMisu1: TLabel;
    edtBohum1: TLabel;
    edtSunap1: TLabel;
    bocheulkyo: TAdvEdit;
    kitakyo: TAdvEdit;
    cbAutoHyunreceipt: TCheckBox;
    pnlHyunYoung: TAdvPanel;
    Panel4: TPanel;
    rbGongje: TRadioButton;
    rbJichul: TRadioButton;
    rbJajin: TRadioButton;
    pnlHyunCert: TPanel;
    lblNum: TLabel;
    lblCertNo: TLabel;
    edtcertNo: TAdvEdit;
    edtAdmitNo: TAdvEdit;
    Panel3: TPanel;
    rbBalgeup: TRadioButton;
    rbMibalgeup: TRadioButton;
    btnCardCert: TButton;
    Button2: TButton;
    btnHyunCert: TButton;
    lblTong2: TButton;
    btnMf: TButton;
    Memo1: TMemo;
    cbCertKind: TComboBox;
    Button26: TButton;
    lblTjung: TLabel;
    lblTjungCode: TLabel;

          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnCardClick(Sender: TObject);
          procedure lblTongClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure lblYungsuDblClick(Sender: TObject);
          procedure edtBochulKeyPress(Sender: TObject; var Key: Char);
          procedure lblSunapClick(Sender: TObject);
          procedure edtSunapDayKeyPress(Sender: TObject; var Key: Char);
          procedure lblBohumClick(Sender: TObject);
          procedure lblTxClick(Sender: TObject);
          procedure lblHyunGeumClick(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
          procedure SpeedButton3Click(Sender: TObject);
          procedure cbTeamChange(Sender: TObject);
          procedure btnSunapNeyukClick(Sender: TObject);
          procedure Button3Click(Sender: TObject);

          procedure cbdangmisuClick(Sender: TObject);
          procedure edtDangMisuKeyPress(Sender: TObject; var Key: Char);
          procedure edtCardExit(Sender: TObject);
          procedure hyunsum;
          procedure gridsum;

          procedure edtCardClick(Sender: TObject);
          procedure edtHyunReceiptExit(Sender: TObject);
          procedure edtCardChange(Sender: TObject);
          procedure edtHyunChange(Sender: TObject);
          procedure edtTongChange(Sender: TObject);
          procedure edtbonin1Exit(Sender: TObject);
          procedure edtSunapChongEkKeyPress(Sender: TObject; var Key: Char);
          procedure btnHwanbulClick(Sender: TObject);
          procedure btnCardConfirmClick(Sender: TObject);
          procedure edtHyunReceiptChange(Sender: TObject);
          procedure edtbonin1Change(Sender: TObject);
          procedure cbkindChange(Sender: TObject);
          procedure btnReceiptClick(Sender: TObject);
          procedure btnGammyunClick(Sender: TObject);
          procedure btnTodaymisuClick(Sender: TObject);
          procedure btnCloseClick(Sender: TObject);
          procedure btnCardCancelClick(Sender: TObject);
          procedure edtTongDayClick(Sender: TObject);
          procedure edtcertNoChange(Sender: TObject);
          procedure rbJajinClick(Sender: TObject);
          procedure memChamgoChange(Sender: TObject);
          procedure rbBalgeupClick(Sender: TObject);
          procedure rbMibalgeupClick(Sender: TObject);
          procedure lblTong2Click(Sender: TObject);
          procedure btnCancelhwanBulClick(Sender: TObject);
          procedure btnHwanBulSaveClick(Sender: TObject);
          procedure edtsayuChange(Sender: TObject);
          procedure rbGongjeClick(Sender: TObject);
          procedure btnCardCertClick(Sender: TObject);
          procedure btnHyunCertClick(Sender: TObject);
          procedure edtCardKeyPress(Sender: TObject; var Key: Char);
          procedure edtHyunReceiptKeyPress(Sender: TObject; var Key: Char);
          procedure btnCalendarClick(Sender: TObject);
          procedure lblHyunYoungClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnSignClick(Sender: TObject);
          procedure btnSignListClick(Sender: TObject);
          procedure Button2Click(Sender: TObject);
          procedure spSkinButton11Click(Sender: TObject);
          procedure spSkinButton10Click(Sender: TObject);
          procedure CheckBox1Click(Sender: TObject);
    procedure cbTeamCloseUp(Sender: TObject);
    procedure cbTeam2Change(Sender: TObject);
    procedure cbDocChange(Sender: TObject);
    procedure cbDocCloseUp(Sender: TObject);
    procedure cbDuplaicateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdSunapChamgoResize(Sender: TObject);
    procedure grdplanGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdplanGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdplanGetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: String);
    procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdmainClickSort(Sender: TObject; ACol: Integer);
    procedure grdmainClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdmainGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdmainGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdSunapChamgoGetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Button5Click(Sender: TObject);
    procedure grdSunapDtxGetFloatFormat(Sender: TObject; ACol,
      ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
    procedure grdSunapDtxGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure grdplanDblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure grdSunapDtxGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdSunapDtxGetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure Button8Click(Sender: TObject);
    procedure PlannerCalendar1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure memChamgoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnModMagamClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure grdmainButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure AdvSplitter1DblClick(Sender: TObject);
    procedure AdvSplitter2DblClick(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure grdplanGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure grdCardGetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure grdCardComboCloseUp(Sender: TObject; ARow,
      ACol: Integer);
    procedure grdCardClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure grdCardRowChanging(Sender: TObject; OldRow,
      NewRow: Integer; var Allow: Boolean);
    procedure grdCardGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdCardGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure cbChoiceClick(Sender: TObject);
    procedure btnDeleteCheckedClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lblTonHyunYpungClick(Sender: TObject);
    procedure edtHyunClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure pnlLeftDblClick(Sender: TObject);
    procedure btnSaveNprintClick(Sender: TObject);
    procedure grdSunapGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Button20Click(Sender: TObject);
    procedure grdJx2ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdSunapGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure edtSunapChange(Sender: TObject);
    procedure edtiCardKeyPress(Sender: TObject; var Key: Char);
    procedure edtYulKeyPress(Sender: TObject; var Key: Char);
    procedure edtiCardChange(Sender: TObject);
    procedure edtiHyunChange(Sender: TObject);
    procedure edtiDcChange(Sender: TObject);
    procedure btnReqCertClick(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure cbCertKindChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbAutoHyunreceiptClick(Sender: TObject);

          //  procedure frxReportAfterPrintReport(Sender: TObject);


    protected

     //    procedure CreateParams(var Params: TCreateParams); override;

     private
          { Private declarations }
          Ibwon : boolean;
          sSunapKind : integer;
          varJinryohangMok: array of string;
          enableBtn: boolean;
          varCardek, varsunapek: double;
          varTongek: double;

          varloadOption, varloadOption2: integer;
          signPath: string;
          varsunapbiboek: integer; //비보험 제외 항목
          varCombo: boolean; //팀콤보박스에서 수납을 로드하는지를 확인한다.
          varloadchek: string; //수납 리스트 유무 채크     있으면 1  없으면 0

          varSelectedBarcode: string;
          varJeryoGa: double;
          cmdchk: string;
          chkBunNapButton: integer;
          isMagamTemp:boolean;


          varCardH1, varhyunH1, varHyunreceiptH1, varTongH1, varTongHyunreceiptH1, varTong2H1, varSunapH1 : double;

          StringList1 : TStringList;


          procedure ComboSet;

          procedure LoadDataToBmp(varImage: TImage; varData: string);
          procedure SaveToBmpData(varDay: string; varChart: string;
               varKind: string; varJikCode: string; varSignData: string);
          procedure LoadToBmpData(varSignData: string; varKind: string;
               varPic:
               TImage);
          {procedure miniPrint; }

          procedure SunapKindSave;
          procedure SunapKindLoad;
          procedure txLoad(chartNo: string);
          procedure MakeImage(Flag: string; sName: string);
          function makesP(flag: string): TsP;
          function ChrToNum(f1: string): string;
          function NumToChr(f1: string): string;
          function chrToInt(f1: string): Integer;
//          procedure ChangeStatus2;
          procedure SunapBiboSave;
          procedure setHwanBul;
          procedure SunapBiboMisuSave;
          function RecallCodeSet: string;
          procedure YRecallSave;
          procedure PrintReceiptQrp;

          procedure Recalc(nAge, nJongbeul: Integer; jin_day, chart:
               string);
          function CalcKumak5(AQuery: TuniQuery; nAge, nJongbeul: Integer;
               boolGasan:
               Boolean): Integer;

          procedure miniPrint;
          procedure sunapSeperateSave(varBohyun: double = 0; varBoCard:
               double = 0;
               varBoYoungsu: double = 0;
               varilhyun: double = 0; varilCard: double = 0; varilYoungsu:
               double = 0;
               varetcHyun: double = 0; varetcCard: double = 0;
               varEtcYoungsu: double =
               0);
          procedure MisuekSave;
          procedure tongPlansave(varname, varNumber, varTongday,
               varHyunreceipt: string; varGeumek: double);
          procedure btnSet(varStat: integer);
          procedure tongPlanupdate(varname, varNumber, varTongday,
               varHyunreceipt: string; varGeumek: double);
          procedure setHyunyoung(varStat: integer);
          procedure loadLasttongPlan;
          procedure CertCard;
          procedure certHyun;
          procedure sunapSave;
          procedure sunapSaveHwanbul;
          procedure sebusunapCalc(varchart: string);
          procedure LoadPlanList(varChart: string);
          procedure DeleteSunap;
          procedure JinryoPtoSunap;
          procedure UpdateSunapDB(varDay, varChart, varjinryopid: string;
               varChong, varChung, varBonin: integer);
          procedure PrintReceiptFrx(bPreview:boolean);
          procedure InitFastReport();
          procedure DataToPrintForm(varDate,  varDate2, sYoungNo: string);
          procedure lineSunapLoad(varRow: integer);
          procedure LoadChargeKind;
          procedure LoadPlanChamgo(varChart: string);
          procedure updateSunapyoungsuno(youngsu_num: string);
    procedure hwanbulSave;
    function SetSunapValue: double;
    procedure LoadDoc;
    procedure DisplayJinryoHangMok(groupRemark: string);
    procedure LoadJinryohangMok(scrollbox: TScrollBox);
    procedure SaveJinryoHangmok(varChart: string);
    procedure LoadJinryoHangMokData(varChart: string; varDay:string; varDoc:string;
      scrollbox: TScrollBox);
    procedure UpdateSums;
    procedure ChamgoLoad;
    procedure saveSunapDtx;
    function LoadSunapDtx(varSunapId: integer;
      varJin_day: string): integer;
    procedure  updateMagamStat(varSunapID:string; varMagam:string);
    procedure PrintToSrp770II;
    procedure LoadSunapGubunHangmok;
    procedure FirstDataPrint;
    function loadSunapChamgo(chartno, sunapDay: string): string;
    procedure sunapMisuInit(varchart, varDate:string);
    function LoadMisuInitStat(varchart: string): string;
    function DeleteSunapDtx(varJin_day: string): boolean;
    procedure LoadSunapDtx_day(varChart: string);

    procedure DeleteSunapLines(varChart:string; varID:string; varteam:string; varSunapDay:string; varMagam:string);
    procedure grdCardClear;
    procedure bunnapSave(nCount:integer=1) ;
    function loadBunnapCount(varChart: string): string;
    procedure loadBunnapInfo(varChart, varDay: string);
    procedure saveNapBuGeumek(varchart: string; napBuGeumEk: integer);
    procedure editColorInit;
    procedure DeleteSunapSign;
    function checkMagam(varDate: string): boolean;
    procedure Printeceipt(bPreview:boolean);
    procedure SetGridTitle;
    procedure Recalc3(nAge, nJongbeul: Integer; jin_day, chart: string; isInpat : boolean=false);
    procedure sunaspSaveAll(isClose :boolean);
    procedure UpdateSumCalc;
    procedure LoadSunapMemo(varChart: string; jin_day: Tdate);

     public
          { Public declarations }

          isLoading : boolean; //이미 수납한 내역을 불러오는 중인가?
          monStat : boolean;
          isinbohum: boolean;

          isMagam:boolean;


          varPlanid, varSunapID: string;
          procedure sunapLoad(chartNo: string; sunapDay: string; sunapTeam:
               string;
               sunapTeamName: string; loadKind: string = ''; varSid: string
               = '');

          procedure FieldClear;
          procedure fieldclear2;
          //  function chongMisuCalc(chartNo: string): double;
          function BohumMisuCalc(chartNo: string): double;
          function ilbanMisuCalc(chartNo: string): double;
          function ilbanMisuCalc2(chartNo: string): double;

          procedure SunaponlyShow(varDate:string);

       //   procedure  SetJinSO(sChart, sJin_day: string; sJin_day2:string='');
          procedure BohoCertSet(WonweNo, wonweIlsu, sKey, hwakinNo : string);
     end;


       TKovan_Send_Serial_VB  = function (
                                   POS_Serial_Port_Num  :Integer;
                                   amount               :Pansichar;
                                   halbu                :Pansichar;
                                   gubun                :Integer;
                                   org_auth_date        :Pansichar;
                                   org_auth_no          :Pansichar;
                                   Recv_LED_Code        :Pansichar;
                                   Recv_Amount_Num      :Pansichar;
                                   Recv_Tax_Num         :Pansichar;
                                   Recv_Auth_Num        :Pansichar;
                                   Recv_Gamaengjeom_Num :Pansichar;
                                   Recv_Issuer_Code     :Pansichar;
                                   Recv_Issuer_Name     :Pansichar;
                                   Recv_Purchase_Code   :Pansichar;
                                   Recv_Purchase_Name   :Pansichar) : Integer; stdcall;

var
     sunap_f: Tsunap_f;
  //   arraySugu3: array[0..19] of integer = (1, 2, 3, 12, 13, 19,23, 30, 31, 32, 33,34,35,36, 39, 40,41, 42, 43, 47);
     Kovan_Send_Serial_VB : TKovan_Send_Serial_VB ;

     DLLHandle : Integer;

implementation
uses uConfig, uDm, uFunctions, uWebservice, uFormInit,
     uJinryoCalc , uGogekData, uGogekData_find,
     uPromiseData,  passInput, saveChamgo,
     uMain;//,
   //  sunapList,  sebusunap, sunapsebulist,
   //  youngsuprt,
   // ;

const
     SQL_SELECT_DATA_FIND_RECALL = 'SELECT RCChart,RCname,RCDATE,RCTime,RcTEL'
          +
          #13#10 +
          'FROM  yRECALL ' + #13#10 +
          'where RCDATE = :RCDATE' + #13#10 +
          'order by RCNAME                                        ';

     SQL_SELECT_YRECALL =
          'SELECT *' + #13#10 +
          'FROM YRecall' + #13#10 +
          'where RCDATE = :RCDATE' + #13#10 +
          'order by RcDate         ';
     SQL_SELECT_YRECALLFIND =
          'SELECT *' + #13#10 +
          'FROM YRecall' + #13#10 +
          'Where RcName like :RcName and (RcDate >= :RcDate1 and RcDate <= :RcDate2)' + #13#10
          +
          'order by RcDate         ';
     SQL_SELECT_YRECALLFIND_CBEx =
          'SELECT *' + #13#10 +
          'FROM YRecall' + #13#10 +
          'Where RcName like :RcName and RcCheck=:RcCheck' + #13#10 +
          'order by RcDate         ';

     SQL_DELETE_YRECALL =
          'DELETE' + #13#10 +
          'FROM YRecall' + #13#10 +
          'Where RCCode=:RcCode         ';
     SQL_INSERT_YRECALL =
          'INSERT INTO YRecall       ' + #13#10 +
          '(                         ' + #13#10 +
          'RcCode,                   ' + #13#10 +
          'RcDate,                   ' + #13#10 +
          'RcTime,                   ' + #13#10 +
          'RcRegDate,                ' + #13#10 +
          'RcDamDang,                ' + #13#10 +
          'RcChart,                  ' + #13#10 +
          'RcName,                   ' + #13#10 +
          'RcTel,                    ' + #13#10 +
          'RcRemark,                 ' + #13#10 +
          'RcCheck,                  ' + #13#10 +
          'RcCheckDay,               ' + #13#10 +
          'RcBigo                    ' + #13#10 +
          ') Values                  ' + #13#10 +
          '(                         ' + #13#10 +
          ':RcCode,                  ' + #13#10 +
          ':RcDate,                  ' + #13#10 +
          ':RcTime,                  ' + #13#10 +
          ':RcRegDate,               ' + #13#10 +
          ':RcDamDang,               ' + #13#10 +
          ':RcChart,                 ' + #13#10 +
          ':RcName,                  ' + #13#10 +
          ':RcTel,                   ' + #13#10 +
          ':RcRemark,                ' + #13#10 +
          ':RcCheck,                 ' + #13#10 +
          ':RcCheckDay,              ' + #13#10 +
          ':RcBigo)                  ';

     SQL_UPDATE_YRecall =
          'UPDATE YRecall SET            ' + #13#10 +
          'RcCode      =:RcCode ,        ' + #13#10 +
          'RcDate      =:RcDate ,        ' + #13#10 +
          'RcTime      =:RcTime ,        ' + #13#10 +
          'RcRegDate   =:RcRegDate ,     ' + #13#10 +
          'RcDamDang   =:RcDamDang ,     ' + #13#10 +
          'RcChart     =:RcChart ,       ' + #13#10 +
          'RcName      =:RcName ,        ' + #13#10 +
          'RcTel       =:RcTel ,         ' + #13#10 +
          'RcRemark    =:RcRemark ,      ' + #13#10 +
          'RcCheck     =:RcCheck ,       ' + #13#10 +
          'RcCheckDay  =:RcCheckDay ,    ' + #13#10 +
          'RcBigo      =:RcBigo          ' + #13#10 +
          'WHERE RCcode=:RCCode          ';

{$R *.dfm}

function returnStr(aValue1:string ;  aValue2 : string = ''): string;
begin

  if checkInt(  delcomma(aValue1) ) = false then
    aValue1 := '0';
  if checkInt( delcomma(aValue2)) = false then
    aValue2 := '0';

  result:=  inttostr(   strtoint( delcomma(aValue1)) + strtoint( delcomma(aValue2))   );

end;



procedure Tsunap_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin

     action := caFree;
end;

procedure Tsunap_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     if cbAutoHyunReceipt.checked=true then
         FormInit.WriteInteger('BASEINFO', 'AutoHyunReceipt', 1 )
     else
               FormInit.WriteInteger('BASEINFO', 'AutoHyunReceipt', 0 );
     FormInit.Free;

     configValue.LoadGlobalData_ini;
end;

procedure Tsunap_f.FormDestroy(Sender: TObject);
begin
     sunap_f := nil;
end;

procedure Tsunap_f.btnClsClick(Sender: TObject);
begin
     close;
end;



procedure Tsunap_f.FormShow(Sender: TObject);
begin

//     if (assigned(Jinryo_f) = true) then
//          lblSunapDay.caption := formatDateTime('YYYY-MM-DD', jinryo_f.dmain.date) //수납일자
//     else
//     lblSunapDay.caption := formatDateTime('YYYY-MM-DD', now);

     pnlhyunCert.caption:='';
     pnlhyunYoung.visible:= false;

     if configValue.varAutoHyunReceipt ='1' then
         cbAutoHyunreceipt.Checked := true
     else
         cbAutoHyunreceipt.Checked := false;

     ma_sunapDate :=    lblSunapDay.caption ;

     SunaponlyShow(lblSunapDay.caption);

   nJinchalRyo :=
     Jinchalryo_make(
         configvalue.varGubun, //'의원' ,  // 병원, 의원, 종합병원
         nSumBohumChong + nJinchalryo, // nSumTotal,// nSumChong,// varChong ,
         false,// checkInt(varWonweNo), // boolWonwe: Boolean;
         ma_sunapDate,//varJinday,  //YYYY-MM-DD
         '',//edtSimTime.text, //copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
         ma_sunapChoje ,   //cbChoje.ItemIndex, //varChojae - 1 ,
         ma_sunapJong +1 , //cbJong.ItemIndex + 1, //varJongbeul,
         strToInt(juminToNai(ma_jumin)),// nAge,
         DayOfWeek( strtodate(ma_sunapDate) ) = 7,          //  dMain.Date ) = 7,    //토요일여부 - 토요가산적용
         ma_sunapGumjin,
         '',//bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
         '',//varBonjun : string;
         0,//varCT : integer; //CT금액
         0,//iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
         false,//iaOnly, //틀니여부
         false, //틀니수리여부
         false, //iaOnly, //임플란트여부
         false, //다른 치료 여부
         nBoman,   //의약품관리료
         false, //공상여부
         false, //jange, //장애여부
//         false,//Yongua,//영유아구분
//         false,//ilban, //건강검진
//         false,//ifirst,//생애전환기검진
         false,//급여제한자여부
         false);//isPregnan);  //임신여부

      calcSatGasanGeum(
          configvalue.varGubun,
          ma_sunapDate, // FormatDateTime('YYYY-MM-DD', dmain.Date),
          '',//edtSimTime.text,
          ma_sunapChoje,//cbChoje.itemindex,
          StrToInt(jumintoNai(ma_jumin)),
          DayOfWeek(strtodate(ma_sunapDate)) = 7);


      nJinchalRyo :=  nJinchalRyo +  SatGasangeum2;


      Recalc3( strtoint(jumintoNai(ma_jumin)),   //StrToInt(jinryo_f.LblAge.Caption),
         ma_sunapJong ,//jinryo_f.cmbJongbeul.itemIndex + 1,
         ma_sunapDate,//lblSunapDay.caption,
         ma_chart,
         ma_InOut);

        // ma_sunapGumjin;

          LoadSunapMemo(ma_chart, strtodate( ma_sunapDate));



      if  ma_jongbeul =''   then
      begin

      end;

//     if (jinryo_f.cmbJongbeul.ValueIndex = 0) or     //1,2,4,5,6,7
//          (jinryo_f.cmbJongbeul.ValueIndex = 3) or
//          (jinryo_f.cmbJongbeul.ValueIndex = 8) or
//          (jinryo_f.cmbJongbeul.ValueIndex = 9) or
//          (jinryo_f.cmbJongbeul.ValueIndex = 10) then //보호일때만
//     begin
//          pnlBoho.Visible := false;
//          //  SetBounds(30, 170, 932, 430);
//          spskinpanel1.width:=465;//
//          width :=  900 ;//480;
//          height := 570;
//     end
//     else
//     begin
//          //  pnlBoho.Top := gbSunapChamgo.Top;
//          //  pnlBoho.Left := gbSunapChamgo.Left;
//          spskinpanel1.width:=700;//
//          width := 900+230;//710;
//          height := 570;
//          pnlBoho.Visible := true;
//     end;

end;



procedure Tsunap_f.SunapOnlyShow(varDate : string);
var
     varPnlTop, varHcTop: integer;

     sSaNo: string;

      FormInit: Tinifile;
     varZeroShow:string;
     varMisuInitDate : string;
begin
      FormInit := Tinifile.Create(ExtractFilePath(ParamStr(0)) + 'db.INI');
      varZeroShow   := FormInit.ReadString('기타정보', 'SUNAPZeroView', '') ;
      if  varZeroShow  ='1' then
         checkBox1.Checked :=true
      else
         checkBox1.Checked :=false;

     FormInit.Free;
     //   height := 463;
     //   width := 900;

     FieldClear;

     cbBunnap.checked:=false;
     edtBunnap.value:=  1 ;

     chkBunNapButton := 0;
     pnlSunapList.align := alClient;
     pnlSunapPlan.Caption.Height:=25;
     pnlSunapList.Caption.Height:=25;
     pnlSunapChamgo.Caption.Height:=25;
     grdMain.align := alClient;


//     grdMain.HideColumn(2);
//     grdMain.HideColumn(3);
//     grdMain.HideColumn(25);
   //  grdMain.HideColumn(26); //담당의
//     grdMain.HideColumn(27);

     grdMain.ColWidths[2]:=0;
     grdMain.ColWidths[3]:=0;
     grdMain.ColWidths[25]:=0;
   //  grdMain.HideColumn(26); //담당의
     grdMain.ColWidths[27]:=0;

     grdSunapChamgo.ColWidths[3]:=0;

     PlannerCalendar1.visible := false;
     Plannercalendar1.date := now;

     signPath := ExtractFilePath(ParamStr(0)) + 'signdata\';

     if not DirectoryExists(signPath) then
          if not CreateDir(signPath) then
               raise Exception.Create('Cannot create ' + signpath);
     caption := ma_PaName + '(' + ma_chart + ')님의 진료비 수납';

     dtRecall.Date := now;
     varcombo := false;
     varsunapbiboek := 0; //비보험 제외 항목

   //  gridset(grdBibo);
   //  gridset(grdTong);
   //  gridset(grdCard);

//     comboset; //콤보에 기본사항 불러오기
     LoadChargeKind;
     LoadSunapGubunHangmok;

     sebusunapCalc(ma_chart);

     sunapLoad(ma_chart,
          varDate,
         '1',// inttostr(main_f.cbDoc.ItemIndex + 1),
         ma_docCode);// main_f.cbDoc.Text);

     LoadPlanChamgo(ma_chart);

     varloadchek := '0'; //onchange 이벤트 건너뛰기

     LoadPlanList(ma_chart);

     varMisuInitDate := LoadMisuInitStat(ma_chart);

       //이날 마감되었는지 확인해서 마감이면 저장버튼 비활성
//      btnSave.Enabled := true;

      if checkMagam( varDate) = true then
      begin

          btnSave.Enabled := false;
      end;


 { if dm_f.configvalue.varUseDocSunap ='1' then //원장코드로 조회하는 옵션 선택시
   begin
        cbDoc.Visible:=true;
        lblDoc.Visible:=true;
     end
     else
     begin
        cbDoc.Visible:=false;
        lblDoc.Visible:=false;


     end;
     }
end;

function Tsunap_f.checkMagam(varDate:string) : boolean;
begin
     result := false;

    with dm_f.sqlWork do
    begin
        close;
        sql.Clear;
        sql.Text := ' select count(magam) as cntMagam  from ma_sunap' +#10+
                    ' where sDay= :sDay  and magam =''1'' '  ;
        ParamByName('sDay').asString := varDate;

        open;

       if fieldByName('cntMagam').AsInteger > 0 then
       begin
              result := true;
       end;

    end;
end;


//* 초기화 ---------------------------------------------------------------------

procedure Tsunap_f.FieldClear;
begin

     caption:='진료비 수납' ;
     varSunapId:='';
     btnModMagam.Visible := false;

     

     edtChong2 .FloatValue := 0;
     edtchung.FloatValue := 0;
     edtBohum.FloatValue := 0;
     cbin.Checked := false;

     edtHwanBul.FloatValue := 0;

     //수납
     edtbonin1.FloatValue := 0;
     edtEtc.FloatValue := 0;

     edtSunapChongEk.FloatValue := 0;
     edtCard.FloatValue := 0;
     edtHyun.FloatValue := 0;
     edtHyunReceipt.FloatValue := 0;
     edtTongReceipt.FloatValue := 0;
     edtTong.FloatValue := 0;
     edtTong2.FloatValue := 0;
     edtsunap.FloatValue := 0;
     edtGammyun.FloatValue := 0;
     edtDangMisu.FloatValue := 0;
     edtPrevSunap.FloatValue := 0;



     varCardH1:= 0;
     varhyunH1:= 0;
     varHyunreceiptH1:= 0;
     varTongH1:= 0;
     varTongHyunreceiptH1 := 0;
     varTong2H1:= 0;
     varSunapH1 := 0;





     cbbohum.Checked := false;
     cbdangmisu.Checked := false;


     cbSunapOnly.checked := false;

     cbBunnap.checked := false;

     edtname.text := '';
     cbRecall.Text := '';
     memChamgo.text := '';
     memChamgoH1.text := '';
     memChamgo2.text := '';
     memJin.Text := '';
     edtMonth.text := '';

     edtcertNo.text := '';
     edtAdmitNo.text := '';

     memPlanmemo.text := '';

     rbMibalgeup.checked := true;
     rbbalgeup.checked := false;
     rbGongje.checked := true;
     rbjichul.checked := false;
     rbjajin.checked := false;

     pic1.Picture := nil;
     pic2.Picture := nil;

     if varcombo = false then
          cbTeam.clear;

     grdTong.Clear;

 //    grdCard.clear; //
      grdCard.RemoveRows(1,  grdCard.RowCount-1);
     cbPreview.Checked := true;
     cbHyungeum.Checked := false;

   //   edtSunapEndDay.text:='';

{      grdPlan.rowcount := 1;
      grdMain.rowcount := 1;
      edtilbanChongMisu.FloatValue:=0;
      lblJan.Caption := '0';
      lblGam.Caption := '0';
      lblSum.Caption := '0';
      lblPlan.Caption := '0';
      edtMonthly.text := '0';
      edtMonthGeumek.floatValue := 0;
      edtOrthoMonth.floatValue := 0;
}


     // 자격관리
  //   wNumEdit13.text := '0'; //2007.7.1   본인일부부담금
  //   edtSukum.text := '0'; //2007.7.1     유지청구액
     wNumEdit13.intValue := 0; //2007.7.1   본인일부부담금
     edtSukum.intValue := 0; //2007.7.1     유지청구액
     edtHwakinNo.Text := ''; //2007.7.1   진료확인번호
     memResult.Clear; //2007.7.1           결과메세지
     lblsKey.Caption := '';
     lblWonweNo.Caption := '';
     lblJanaek.Caption := '0';
     JBonComboEdit.Text := '';
     edtJan.intvalue := 0;
     edtSunkiho.Text := '';

//      pnlFinal.Visible := false ;
      pnlSunapList.Caption.Visible := true;
      sSunapKind:=4; //현금
end;


procedure Tsunap_f.fieldclear2;
begin

{     edtChong2.FloatValue := 0;
     edtchung.FloatValue := 0;
     edtBohum.FloatValue := 0;
     cbin.Checked := false;

     edtHwanBul.FloatValue := 0;
     edtbonin1.FloatValue := 0;
     edtetc.FloatValue := 0;
     cbbohum.Checked := false;
     cbdangmisu.Checked := false;

     edtname.text := '';
     cbRecall.Text := '';
     memChamgo.text := '';
     memChamgo2.text := '';
     memJin.Text := '';
     edtMonth.text := '';
     pic1.Picture := nil;
     pic2.Picture := nil;
     memPlanmemo.text := '';

     //if varcombo = false then
     //     cbTeam.clear;

     grdTong.Clear;
     grdCard.Clear; //RemoveRows(1, grdCard.RowCount-1);

     cbPreview.Checked := true;
     cbHyungeum.Checked := false;
}
     varSunapID:='';

     edtChong2.FloatValue := 0;
     edtchung.FloatValue := 0;
     edtBohum.FloatValue := 0;
     cbin.Checked := false;

     edtHwanBul.FloatValue := 0;
     //수납
     edtbonin1.FloatValue := 0;
     edtEtc.FloatValue := 0;

     edtSunapChongEk.FloatValue := 0;
     edtCard.FloatValue := 0;
     edtHyun.FloatValue := 0;
     edtHyunReceipt.FloatValue := 0;
     edtTongReceipt.FloatValue := 0;
     edtTong.FloatValue := 0;
     edtTong2.FloatValue := 0;
     edtsunap.FloatValue := 0;
     edtGammyun.FloatValue := 0;
     edtDangMisu.FloatValue := 0;


     varCardH1:= 0;
     varhyunH1:= 0;
     varHyunreceiptH1:= 0;
     varTongH1:= 0;
     varTongHyunreceiptH1 := 0;
     varTong2H1:= 0;
     varSunapH1 := 0;


     cbbohum.Checked := false;
     cbdangmisu.Checked := false;

     cbSunapOnly.checked := false;
     cbBunnap.checked := false;


     edtname.text := '';
     cbRecall.Text := '';
     memChamgo.text := '';
     memChamgoH1.text := '';
     memChamgo2.text := '';
     memJin.Text := '';
     edtMonth.text := '';

     edtcertNo.text := '';
     edtAdmitNo.text := '';

     memPlanmemo.text := '';

     rbMibalgeup.checked := true;
     rbbalgeup.checked := false;
     rbGongje.checked := true;
     rbjichul.checked := false;
     rbjajin.checked := false;

     pic1.Picture := nil;
     pic2.Picture := nil;

//     if varcombo = false then
//          cbTeam.clear;

     grdTong.Clear;

   //  grdCard.clear; //
     grdCard.RemoveRows(1,  grdCard.RowCount-1);

     cbPreview.Checked := true;
     cbHyungeum.Checked := false;

 //    edtSunapEndDay.text:='';

{      grdPlan.rowcount := 1;
      grdMain.rowcount := 1;
      edtilbanChongMisu.FloatValue:=0;
      lblJan.Caption := '0';
      lblGam.Caption := '0';
      lblSum.Caption := '0';
      lblPlan.Caption := '0';
      edtMonthly.text := '0';
      edtMonthGeumek.floatValue := 0;
      edtOrthoMonth.floatValue := 0;
}
      
      //pnlFinal.Visible := false ;
      pnlSunapList.Caption.Visible := true;

      sSunapKind:= 4; //현금
end;

//* (3) 수납데이타 가져오기  ----------------------------------------------------

procedure Tsunap_f.sunapLoad(chartNo: string; sunapDay: string; sunapTeam:
     string; sunapTeamName: string; loadKind: string = ''; varSid: string =
     '');
var
     youngsu, varTeam, Vsunapteam, sunapid: string;
     insFlag: boolean;
     i: Integer;
     varMisu: double;
     varQuery:string;
begin

     varQuery := LoadSunapDataQuery;

     varloadchek := '0'; //환자가 있는지 없는지 채크
     varSunapID := '';
     lblSunapDay.caption := sunapDay; //formatDateTime('YYYY-MM-DD', now);


     //수납을 처음 불러올때 무조건 isMagam=false다.
     isMagam:=false;
     isMagamTemp:=false;


     if ChartNo = '' then
     begin
          exit;
     end;

     if sunapTeamName = '' then
          varteam := '1'
     else
          varteam := sunapTeamName;

     edtname.text := ma_paName;

     // 우선 기존 ma_sunap 을  jinryo_pid 를 넣은걸로 업데이트
     // 기존 다모음에서 넘어온  경우 bo iBohumEk 에 수납액이 들어있다.

     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          Sql.Add('select * from ma_sunap');

          if loadkind = '' then
          begin
               Sql.Add('where chart = :chart');
               Sql.Add(' and sDay = :sDay');
               Sql.Add(' and team=:team'); // and jinryo_pid is null');
               paramByname('chart').asString := chartNo;
               paramByname('sDay').asString := sunapDay;
               paramByname('team').asString := varteam;
          end
          else
          begin
               Sql.Add('where s_id=:s_id');
               paramByname('s_id').asString := varsID;

          end;


               if varviewAll <> true then
               begin
                    if varQuery <> '' then
                         sql.Add('and  (' + varQuery + ' or skind is null )' );

               end;


          open;
          if isEmpty then
          begin
               insFlag := false;
          end
          else
          begin
               sunapid := FieldByName('s_id').AsString;
               edtJinryoPid.Text := ma_jinryo_pid;// FieldByName('jinryo_pid').AsString;

               insFlag := true;
          end;
     end;

     if insflag then
     begin

          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               Sql.Add('update  ma_sunap  set ');
               Sql.Add('jinryo_pid = :jinryo_pid ');
               Sql.Add('where s_id = :s_id');
               //Sql.Add('where chart = :chart');
               //Sql.Add(' and sDay = :sDay');
               //Sql.Add(' and team=:team ');
               //paramByname('chart').asString := ma_chart;
               //paramByname('sDay').asString := JinDate;
               //paramByname('team').asString := PTeam;
               paramByname('jinryo_pid').asString := edtJinryoPid.Text;
               paramByname('s_id').asString := sunapid;
               execsql;
          end;

     end;
     // 업데이트 끝

     with dm_f.SqlWork do
     begin

          {  //ma_tpcharge를 검색해서 계획총비용에 보험비용이 포함되었는지 확인해서 체크박스 찍어주기
            Close;
            Sql.Clear;
            Sql.Add('select isbohum from ma_tpcharge');
            Sql.Add(' where chart=:chart and chart_id=:chart_id');
            ParamByName('chart').AsString := chartNo;
            ParamByName('chart_id').AsString := varplanid;
            Open;
            First;
            if not isEmpty then
            begin
                   if fieldByName('isbohum').AsString = '1' then
                   begin
                          cbKind.itemindex := 1; // cbin.checked := true
                          cbin.checked := false;
                          cbin.Visible := false;
                          lblin.Visible := false;
                   end
                   else
                   begin
                          cbKind.itemindex := 0;
                          cbin.checked := false;
                          cbin.Visible := false;
                          lblin.Visible := false;
                   end;
                   isinbohum := cbin.Checked;

                   //      pnlbohum.Visible:= not cbin.Checked;
            end
            else
            begin
                   cbKind.itemindex := 0;

                   cbin.checked := false;
                   cbin.Visible := false;
                   lblin.Visible := false;
                   isinbohum := cbin.Checked;

            end;
           }
      //    cbKind.itemindex := jinryo_f.cbbohum.ItemIndex;

          //수납 내역 로드
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sunap');

          if loadkind = '' then
          begin
               Sql.Add('where chart = :chart');
               Sql.Add(' and sDay = :sDay');
               Sql.Add(' and team=:team '); //and jinryo_pid is null');
               paramByname('chart').asString := chartNo;
               paramByname('sDay').asString := sunapDay;
               paramByname('team').asString := varteam;
          end
          else
          begin
               Sql.Add('where s_id=:s_id');
               paramByname('s_id').asString := varsID;

          end;


               if varviewAll <> true then
               begin
                    if varQuery <> '' then
                         sql.Add('and  (' + varQuery + ' or skind is null )' );

               end;



          Sql.Add('order by sday desc');

          Open;
          First;
          if not isEmpty then
          begin

               if fieldByName('magam').AsString = '1' then
               begin
                      isMagam := true;
               end
               else
                  if fieldByName('magam').AsString = '2' then
                  begin
                         isMagamTemp := true;
                  end;


               varSunapID := trim(fieldByName('s_id').AsString);
               varloadchek := '1';
               edtHwanBul.FloatValue := fieldByName('HwanbulEk').AsFloat;

               edtChong1.FloatValue := fieldByName('bonin1').AsFloat +
                    fieldByName('chong').AsInteger;
               edtChong2.FloatValue := fieldByName('chong').AsFloat;
               edtChung.FloatValue := fieldByName('chung').AsInteger;

               edtBohum.FloatValue := fieldByName('Bohum').AsInteger; //보험본인
               edtbonin1.FloatValue := fieldByName('bonin1').AsFloat;
               //비보험본인
               edtEtc.FloatValue := fieldByName('etc').AsFloat; //기타물품구매


               edtSunapChongEk.FloatValue := edtBohum.FloatValue + edtbonin1.FloatValue +
                    edtEtc.FloatValue;


               //받을금액
               edtCard.FloatValue := fieldByName('card').AsInteger; //카드액
               edtHyun.FloatValue := fieldByName('hyun').AsInteger;
               //    fieldByName('hyunReceipt').AsInteger;
            //현금액 +현금영수증
               edtHyunReceipt.FloatValue :=
                    fieldByName('hyunReceipt').AsInteger;
               edtTongReceipt.FloatValue :=
                    fieldByName('hyunReceipt_tong').AsInteger;
               //현금영수증액
               edtTong.FloatValue := fieldByName('tong').AsInteger; //무통장액
               edtTong2.FloatValue := fieldByName('tong2').AsInteger; //무통장액
               edtSunap.FloatValue := fieldByName('sunapEk').AsInteger; //수납액
               edtGammyun.FloatValue := fieldByName('GammyunEk').AsFloat;
               //감면액
               edtDangMisu.FloatValue := fieldByName('MisuEk').AsFloat +
                    fieldByName('iBohumEk').AsFloat; //당일미수액
               //edtDangMisu.FloatValue := fieldByName('MisuEk').AsFloat;     //2007.11.5 당일미수액(기존 다모음에서 넘어온  경우  iBohumEk 에 수납액이 들어있다.
               //edtDangMisu.FloatValue := fieldByName('iBohumEk').AsFloat; //위와 같긴 하나...Misuek은 일반 미수금을 적음.그래서 설치 이전일자의의 iBohumek을 0으로 만든후 Sync
            //   edtTongDay.text := fieldByName('date').AsString;
               memjin.text := fieldByName('tx').AsString;
               memChamgo.text := fieldByName('Chamgo').AsString;
               youngSu := fieldByName('youngsuJa').AsString;
               varteam := fieldByName('team').AsString;

               if (varteam <> edtTeam.Text) and (edtTeam.Text <> '') then
                    varteam := edtTeam.Text;

         //팀을 바꾸면
         //Todo :  edtSunapChongEk이 나와야 된다...(보험금액합계)
               if varCombo = true then
               begin
                    edtSunapChongEk.FloatValue :=
                         edtbonin1.FloatValue;

               end;



               {//리콜 부분 로드
               edtRecallDay.text := fieldByName('recallDay').AsString;
               edtRecallTime.text := fieldByName('recallTime').AsString;
               edtRecall.text := fieldByName('recallRemark').AsString;}

               // 사인패드
               if checkInt(youngSu) then
                    cbHygine.itemIndex := strToInt(youngSu)
               else
                    cbHygine.itemIndex := -1;

               if checkInt(varteam) then
               begin
                    if varcombo = false then
                    begin
                        // cbTeam.itemindex := strToInt(varteam) - 1;

                         cbdoc.ItemIndex := cbDoc.ComboItems.IndexOf(fieldByName('doc').asString).y;

                    end
                    else
                    begin

                    end;
               end
               else
               begin
                  //  cbTeam.itemindex := 0;
                   //  cbdoc.ItemIndex := 0;
                   //   cbdoc.ItemIndex :=cbDoc.ComboItems.IndexOf( main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex,2]).y;
                    cbdoc.ItemIndex :=cbDoc.ComboItems.IndexOf( ma_docName ).y;
               end;

               edtcertno.text := fieldByName('hyuncertno').AsString;
               edtadmitno.text := fieldByName('admitno').AsString;

               if (fieldByName('usebohum').AsString = '1') then
                    // or  (fieldByName('usebohum').AsString = '')
                    cbin.checked := true
               else
                    cbin.checked := false;

               if fieldByName('hyunyoungsu').AsString = '1' then
                    rbbalgeup.checked := true // cbin.checked := true
               else
                    rbmibalgeup.checked := true;

               if fieldByName('admitkind').AsString = '0' then
                    rbgongje.checked := true;
               if fieldByName('admitkind').AsString = '1' then
                    rbjichul.checked := true;
               if fieldByName('admitkind').AsString = '2' then
                    rbjajin.checked := true;

               cbSkind.text := fieldByName('skind').AsString;

               cbSunapGubunHangMok.text := fieldByName('sGubun').AsString;

                 if fieldByName('isSunapOnly').AsString = '1' then
                    cbSunapOnly.checked := true
                   else
                    cbSunapOnly.checked := false;



               btnSet(0);
               //    btnsave.Caption := '수납수정';
          end
          else
          begin //수납내역없으면
               fieldclear2;

               if checkInt(varteam) = true then
               begin
                    if varcombo = false then
                    begin
                       // cbTeam.itemindex := strToInt(varteam) - 1;
                         //   cbdoc.ItemIndex :=0;// cbDoc.ComboItems.IndexOf(fieldByName('doc').asString).y;
                        //  cbdoc.ItemIndex :=cbDoc.ComboItems.IndexOf( main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex,2]).y;
                         cbdoc.ItemIndex :=cbDoc.ComboItems.IndexOf( ma_docName ).y;

                    end
                    else
                    begin

                    end;
               end
               else
               begin
                   // cbTeam.itemindex := 0;
                   // cbdoc.ItemIndex :=0;
                    //   cbdoc.ItemIndex :=cbDoc.ComboItems.IndexOf( main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex,2]).y;
                         cbdoc.ItemIndex :=cbDoc.ComboItems.IndexOf( ma_docName ).y;
                 end;

               // todo:20100801 ha 내가 막아놓음.-<수납에 있는 bonin1을 못가져옴,
               //    edtBonin1.FloatValue := round(Realgrid14.Cells[1, 4].AsFloat); //bonin1         (본인비급여) //ha0920
               edtSunapChongEk.FloatValue := edtbohum.FloatValue + edtetc.FloatValue +
                    edtbonin1.FloatValue;

               btnSet(1);
               //btnsave.Caption := '수납등록';

               //btnSave.enabled := true;

          end;

          {//교정 월비 로드
          Close;
          Sql.Clear;
          Sql.Add('Select *  from sunapMf');
          Sql.Add('where chart=:chart and ');
          Sql.Add('sunapDay =:sunapDay');
          paramByName('chart').asString := ma_chart;
          ParamByName('sunapDay').AsString := lblSunapDay.caption;
          Open;
          First;
          if not isEmpty then
          begin
               edtMonth.Text := fieldByName('Bigo').AsString;
          end; }

          //총 치료계획 비용 로드
          Close;
          Sql.Clear;
          Sql.Add('select sum(bohum) as Sbohum, sum(Kamak) as SKamak, ');
          Sql.Add('sum(subtotal) as sSubtotal, sum(hyun) as shyun,');
          Sql.Add(' sum(card) as sCard, sum(etc) as sEtc from ma_tpcharge');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          First;
          if not isEmpty then
          begin
               edtChong.FloatValue := FieldByName('sSubTotal').AsInteger;
          end;

          //치료계획 참고사항 불러오자...하.2008.10.11
          //치료 계획 부문 별 비용 로드
          Close;
          Sql.Clear;
          Sql.Add('select jin_day,remark from ma_tpcharge');
          Sql.Add(' where chart=:chart');
          Sql.Add('group by jin_day, remark');
          ParamByName('chart').AsString := chartNo;
          Open;
          First;
          if not isEmpty then
          begin
               {edtHyun2.FloatValue := fieldByName('hyun').AsInteger;
               edtCard2.FloatValue := fieldByName('card').AsInteger;
               edtEtc.FloatValue := fieldByName('etc').AsInteger;
               edtBochul2.FloatValue := fieldByName('Bochul').AsInteger;
               edtGyoJung2.FloatValue := fieldByName('Gyojung').AsInteger;
               edtImp2.FloatValue := fieldByName('Imp').AsInteger;
               edtMf2.FloatValue := fieldByName('mf').AsInteger;
               }//일단 치료계획시 입력한 비용을 보여주지말고... 참고사항은 보여주자.하.2008.10.11
               while not eof do
               begin
                    memChamgo2.Lines.Add(fieldByName('jin_day').AsString
                         + ':' +
                         fieldByName('Remark').AsString);
                    next;
               end;
          end;
          //      if jinryo_f.cbJindan.items.count > 0 then
          //             varPlanid :=
          //                    jinryo_f.cbjindan.ColumnItems[jinryo_f.cbjindan.itemindex,
          //                    2];

                //예약 내역 로드
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_promise');
          Sql.Add(' where chart=:chart');
          Sql.Add(' and JubsuDay=:JubsuDay');
          ParamByName('chart').AsString := chartNo;
          ParamByName('JubsuDay').AsString := sunapDay;
          Open;
          First;
          if not isEmpty then
          begin
               edtrecallday.text := fieldByName('pDay').AsString;
               edtrecallTime.text := fieldByName('pTime').AsString;
               edtRecall.text := fieldByName('Remark').AsString;
          end;

          //비보험치료비 내역 로드



          //이미 납부한 금액 불러오기


          Close;
          Sql.Clear;
          Sql.Add('Select sum(geumek) as napbuGeumEk from ma_sunap_napbu');
          Sql.Add('where chart=:chart ');

          paramByName('chart').asString := ma_chart;
          open;
          edtPrevSunap.IntValue  := FieldByName('napbuGeumEk').AsInteger;






     end;
     //미수금 로드
 //    edtMisu.FloatValue := chongMisuCalc(ma_chart); //총미수액

     varMisu := chongMisuCalc(ma_chart, varviewAll); //
     edtilBanChongMisu.FloatValue := abs(varMisu);

     if varMisu < 0 then
     begin
          //lblSunsu.caption := '선수납금액';
          edtilBanChongMisu.font.color := clBlue;
     end
     else
     begin
          //lblSunsu.caption := '미수납금액';
          edtilBanChongMisu.font.color := clRed;

     end;

     //   edtBohumChongMisu.FloatValue:= BohumMisuCalc(ma_chart);
     //   edtilBanChongMisu.FloatValue := ilbanMisuCalc(ma_chart);

        //카드, 무통장 내역 가져오기
     SunapKindLoad;


     //데일리 참고사항 가져오기
     ChamgoLoad;


//     chartCount.caption := inttostr(main_f.LoadScanChartCount(ma_chart));

     lblBunnap.caption :=loadBunnapCount( ma_chart);


     //분납정보
     loadBunnapInfo(ma_chart,sunapDay);
     //서명 데이터 로드
    // LoadToBmpData('signdata1', '1', pic1);
    // LoadToBmpData('signdata2', '2', pic2);

end;

//*콤보에 기본사항 불러오기 ----------------------------------------------------


procedure Tsunap_f.LoadDoc;
begin
          with cbDoc do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;
          with dm_f.SqlWork do
          begin
          Close;
          Sql.Clear;
         // Sql.Add('select * from ma_Sawon_basic   ');
         // Sql.Add('where sajikgub = ''1'' and sateam=:team and nouse <> ''1'' ');


          Sql.Add(' select saName, team_name, team_color, saBun  from  ma_sawon_basic s join ma_team t on s.sateam = t.team_name  ');
          Sql.Add(' where saJikGub= ''1'' and noUse <>''1'' ');
          Sql.Add(' order by jubsu_order, sabun ');
        //  paramByName('team').asString := inttostr(varTeam);
          Open;
          first;
          while not eof do
          begin
                with cbDoc do
                begin
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Style := [fsBold];
                         end;
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                         end;
                         with Columns.Add do
                         begin
                              Width := 100;
                         end;

                         with ComboItems.Add do
                         begin
                            //  Strings.Add(FieldByName('team_name').AsString);
                            //  Strings.Add(FieldByName('team_color').AsString);
                            //  Strings.Add(FieldByName('team_doctor1').AsString);
                            Strings.Add(FieldByName('team_name').AsString);
                            Strings.Add(FieldByName('team_color').AsString);
                            Strings.Add(FieldByName('saName').AsString);

                         end;

                end;

               next;
          end;
          end;
          CbDoc.itemIndex := 0;
end;


procedure Tsunap_f.ComboSet;
var
    team_key : string;
begin

     //* 팀 불러오기
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select Team_doctor1 from ma_team');
          Sql.Add(' order by team_name');
          Open;
          First;
          cbTeam.items.Clear;
          cbTeam2.items.Clear;
          cbTeam2.items.add('전체');

          if not isEmpty then
          begin
               while not eof do
               begin
                    cbTeam.items.Add(FieldByName('Team_doctor1').AsString);
                    cbTeam2.items.Add(FieldByName('Team_doctor1').AsString);
                    next;
               end;
          end;
          cbTeam2.itemindex := 0;


          with cbTreatRoom do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;

          Close;
          Sql.Clear;
          Sql.text :=
               'Select * from ma_basic                                   ' + #13#10 +
               'where  (code like  ''093%'') and (code <> ''09300'')     ' + #13#10 +
               'and inuse <>  ''0'' and (remark = ''TREAT'' or remark = ''MED'')   ' + #13#10 +
               'order by val,code                                        ';
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin

                 with cbTreatRoom do
                    begin
                         with Columns.Add do
                         begin
                              Width := 100;
                              Font.Style := [fsBold];
                               Font.Name:= '맑은 고딕';
                               Font.Size := 10;
                         end;
                         with Columns.Add do
                         begin
                              Width := 100;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                               Font.Name:= '맑은 고딕';
                               Font.Size := 10;
                         end;
                         with Columns.Add do
                         begin
                              Width := 100;
                               Font.Name:= '맑은 고딕';
                               Font.Size := 10;
                         end;

                         with ComboItems.Add do
                         begin

                            Strings.Add(trim(FieldByName('val').AsString));     //Code
                            Strings.Add(trim(FieldByName('remark').AsString));  //code?
                            Strings.Add(trim(FieldByName('disp').AsString));

                         end;
                    end;

                    next;
               end;
               cbTreatRoom.ItemIndex := 0;
          end
          else
          begin
             //  cbTreatRoom.items.add('데스크');
             //  cbTreatRoom.ItemIndex := 0;
          end;



     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
     LoadDoclist(cbDoc, team_key);



//          LoadDoc;

          close;
          sql.clear;
          sql.add('select i.team, i.doc from  ma_jubsu i join ma_team t on i.team=t.team_name');
          sql.add('where i.chart=:chart and i.jin_day=:jin_day');
          parambyname('chart').asstring := ma_chart;
          parambyname('jin_day').asstring := formatdatetime('YYYY-MM-DD',now);
          open;
          if not isempty then //오늘 접수된게 있으면 접수에서 꺼내고
          begin
             //  cbTeam.itemindex :=   strtoint(fieldbyname('team').asstring) - 1;
              cbdoc.ItemIndex := cbDoc.ComboItems.IndexOf(fieldByName('doc').asString).y;

          end
          else
          begin
          //    cbdoc.ItemIndex :=cbDoc.ComboItems.IndexOf( main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex,2]).y;

                 cbdoc.ItemIndex :=cbDoc.ComboItems.IndexOf( ma_docName ).y;

          end;

          //* 팀에맞는 원장을  불러온다

          {with cbDoc do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;

          Close;
          Sql.Clear;
          cbHygine.FloatValues.Clear;
          Sql.Add('select * from ma_Sawon_basic   ');
          Sql.Add('where sajikgub = ''1'' and sateam=''1'' and nouse <> ''1'' ');
          Sql.Add(' order by sabun asc');
          Open;
          first;
          while not eof do
          begin
                     with cbDoc do
                    begin
                         with Columns.Add do
                         begin
                              Width := 200;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                         end;
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                         end;

                         with ComboItems.Add do
                         begin
                              Strings.Add(FieldByName('Saname').AsString);
                              Strings.Add(FieldByName('saBun').AsString);
                             end;
                    end;

               next;
          end;
          CbDoc.itemIndex := 0;
          }


          Close;
          Sql.Clear;
          Sql.Add('select * from ma_team');
          Sql.Add('order by team_name');
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin

                    next;
               end;
          end
          else
          begin
               //               ComboBox1.Items.Add(dm_f.Chief);
               //               grdPlan.Columns[11].FloatValues.add(dm_f.Chief);
          end;














          //* 콤보에 영수인을 불러온다
          cbHygine.items.Clear;
          Close;
          Sql.Clear;

          Sql.Add('select saname from ma_Sawon_basic');
          Sql.Add(' where  sajikGub <> ''1'' and nouse <> ''1'' ');
          Sql.Add(' order by jubsu_order, saBun');
          Open;
          first;
          while not eof do
          begin
               CbHygine.items.Add(FieldByName('SaName').AsString);
               next;
          end;
          cbHygine.itemIndex := cbhygine.items.IndexOf(V_Username);








          //* 카드 코드

          Close;
          Sql.Clear;
     //     grdCard.Columns[0].Values.Clear;
          Sql.Add('select * from ma_basic_Card');
          Sql.Add(' order by CardCode');
          Open;
          first;
          while not eof do
          begin
              StringList1.Add(FieldByName('CardName').AsString);
       //       grdCard.Columns[0].Values.add(FieldByName('CardName').AsString);
               //               grdCard.Columns[3].Values.add(FieldByName('yoyul').AsString);
               next;
          end;

     end;
end;

procedure Tsunap_f.hyunsum;
begin
     //1 이면 저장된 리스트가 있고 없으면 "0"
     if varloadchek <> '1' then
     begin
          {  edthyun.FloatValue := (edtbohum.FloatValue + edtbonin1.FloatValue +
                   edtEtc.FloatValue)
                   -
                   (edtcard.FloatValue + edttong.FloatValue +
                   edtHyunReceipt.FloatValue) -
                   (edtGammyun.FloatValue
                   +
                   edtDangMisu.FloatValue);
            edtSunapChongEk.FloatValue := edtbohum.FloatValue + edtbonin1.FloatValue;
           }
        //  edthyun.FloatValue := 0;
          edtSunapChongEk.FloatValue := edtbohum.FloatValue + edtetc.FloatValue +
               edtbonin1.FloatValue;

     end
     else
     begin
          //edthyun.FloatValue := 0;
          edtSunapChongEk.FloatValue := edtbohum.FloatValue + edtetc.FloatValue +
               edtbonin1.FloatValue;

     end;

     varloadchek := '0';
end;
//* 카드 나 무통장 수납:카드종류, 은행종류 입력  -------------------------------

procedure Tsunap_f.btnCardClick(Sender: TObject);
begin
     //     if btnCard.enabled=false then
     //     exit;
  //   if enableBtn= false then
  //   exit;

//     varCardek := edtCard.FloatValue;
//     varSunapEk := edtSunap.FloatValue;
//     if edtCard.FloatValue = 0 then
//     begin
//          edtCard.FloatValue := edtSunapChongek.FloatValue;
//          edtSunap.FloatValue := edtSunapChongek.FloatValue;
//     end;
//


     if btnCard.Tag = 0 then
     begin
          btnCard.Tag := 1;
          edtCard.FloatValue := edtsunapchongek.FloatValue
               -   ( edtHyun.FloatValue
                 + edttong.FloatValue
                 + edttong2.FloatValue
                 + edttongReceipt.FloatValue
                 + edtHyunReceipt.FloatValue
                 + edtGammyun.FloatValue ) ;

     end
     else
     begin
          btnCard.Tag := 0;
          edtCard.FloatValue := 0;
     end;




     //  SunapKindView(pnlCard, btnCard, grdCard);
//     pnlCard.top := btnCard.top + btnCard.height;
//     pnlCard.left := btnCard.left;
//     pnlCard.visible := not pnlCard.visible;
//
//     SunapKindLoad;

     editColorInit;

end;
//*

{procedure Tsunap_f.lblTongClick(Sender: TObject);
const
       sql_ma_sunap_tongplan = 'select * from  ma_sunap_tongplan' + #10#13 +
              'where jinryo_pid=:jinryo_pid';
var
       varHyun: string;
begin
       if enableBtn= false then
       exit;
       tongplan_f := Ttongplan_f.Create(application);

       with dm_f.sqlWork do
       begin

              Close;
              SQL.Clear;
              Sql.Text := sql_ma_sunap_tongplan;
              paramByname('jinryo_pid').asString := edtJinryoPid.Text;
              open;
              if not isEmpty then
              begin

                     tongplan_f.edtTongday.Text := edtTongday.Text;
                     tongplan_f.edtName.text := fieldbyname('ibName').asString;
                     tongplan_f.edtNumber.text :=
                            fieldbyname('ibNumber').asString;
                     tongplan_f.edtGeumek.FloatValue :=
                            fieldbyname('geumek').asFloat;
                     if fieldbyname('Hyunreceipt').asString = '1' then
                            tongplan_f.cbHyunreceipt.checked := true
                     else
                            tongplan_f.cbHyunreceipt.checked := false;

                     tongplan_f.edtibGeumek.FloatValue :=
                            fieldbyname('ibgeumek').asFloat;
                     tongplan_f.edtibdate.text :=
                            fieldbyname('ibdate').asString;

              end
              else
              begin

                     tongplan_f.edtTongday.Text := edtTongday.Text;
                     tongplan_f.edtName.text := '';
                     tongplan_f.edtNumber.text := '';
                     tongplan_f.edtGeumek.FloatValue := 0;
                     tongplan_f.cbHyunreceipt.checked := false;
                     tongplan_f.edtibGeumek.FloatValue := 0;
                     tongplan_f.edtibdate.text := '';

              end;
       end;
       if tongplan_f.Showmodal = mrOk then
       begin
              edtTongday.Text := tongplan_f.edtTongday.Text;
              if tongplan_f.cbHyunreceipt.checked = true then
                     varhyun := '1'
              else
                     varhyun := '0';
              tongPlansave(tongplan_f.edtName.text,
                     tongplan_f.edtNumber.text,
                     tongplan_f.edtTongday.Text,
                     varHyun,
                     tongplan_f.edtGeumek.FloatValue);
       end;

       //     SunapKindView(pnlTong, lblTong, grdTong);
end;
}

procedure Tsunap_f.lblTongClick(Sender: TObject); //by son
const
     sql_ma_sunap_tongplan = 'select * from  ma_sunap_tongplan' + #10#13 +
          'where jinryo_pid=:jinryo_pid';
var
     varHyun: string;
begin
     //if enableBtn= false then
     //exit;
//     tongplan_f := Ttongplan_f.Create(application);
//     tongplan_f.Caption := ma_paName + '(' + ma_chart +
//          ')님 통장입금 약속';
//
//     with dm_f.sqlWork do
//     begin
//
//          Close;
//          SQL.Clear;
//          Sql.Text := sql_ma_sunap_tongplan;
//          paramByname('jinryo_pid').asString := edtJinryoPid.Text;
//          open;
//          if not isEmpty then
//          begin
//
//               tongplan_f.edtTongday.Text := edtTongday.Text;
//               tongplan_f.edtName.text := fieldbyname('ibName').asString;
//               tongplan_f.edtNumber.text :=
//                    fieldbyname('ibNumber').asString;
//               tongplan_f.edtGeumek.FloatValue :=
//                    fieldbyname('geumek').asFloat;
//               if fieldbyname('Hyunreceipt').asString = '1' then
//                    tongplan_f.rbBalgeup.checked := true
//               else
//                    tongplan_f.rbmiBalgeup.checked := true;
//
//               tongplan_f.edtcertno.text :=
//                    fieldByName('hyuncertno').AsString;
//               tongplan_f.edtadmitno.text :=
//                    fieldByName('admitno').AsString;
//               if fieldByName('admitkind').AsString = '0' then
//                    tongplan_f.rbgongje.checked := true;
//               if fieldByName('admitkind').AsString = '1' then
//                    tongplan_f.rbjichul.checked := true;
//               if fieldByName('admitkind').AsString = '2' then
//                    tongplan_f.rbjajin.checked := true;
//
//          end
//          else
//          begin
//
//               tongplan_f.edtTongday.Text := formatdateTime('YYYY-MM-DD',
//                    now);
//               tongplan_f.edtName.text := ma_paName;
//               tongplan_f.edtNumber.text := '';
//               tongplan_f.edtGeumek.FloatValue := 0;
//               tongplan_f.rbBalgeup.checked := false;
//               tongplan_f.rbMiBalgeup.checked := true;
//
//               tongplan_f.edtcertno.text := '';
//               tongplan_f.edtadmitno.text := '';
//               tongplan_f.rbgongje.checked := true;
//               tongplan_f.rbjichul.checked := false;
//               tongplan_f.rbjajin.checked := false;
//               tongplan_f.btnOk.Enabled := false;
//          end;
//     end;
//
//     //       loadLasttongPlan;
//
//     if tongplan_f.Showmodal = mrOk then
//     begin
//          edtTongday.Text := tongplan_f.edtTongday.Text;
//          if tongplan_f.rbBalgeup.checked = true then
//               varhyun := '1'
//          else
//               varhyun := '0';
//          tongPlansave(tongplan_f.edtName.text,
//               tongplan_f.edtNumber.text,
//               tongplan_f.edtTongday.Text,
//               varHyun,
//               tongplan_f.edtGeumek.FloatValue);
//     end;

     //     SunapKindView(pnlTong, lblTong, grdTong);
end;

procedure Tsunap_f.loadLasttongPlan;
const
     sql_ma_sunap_tongplan =
          'select top 1 * from  ma_sunap_tongplan' + #10#13
          + 'where chart=:chart' + #10#13
          + 'order by date desc';
begin

//     with dm_f.sqlWork do
//     begin
//
//          Close;
//          SQL.Clear;
//          Sql.Text := sql_ma_sunap_tongplan;
//          paramByName('chart').AsString := ma_chart;
//          open;
//          if not isEmpty then
//          begin
//
//               tongplan_f.edtTongday.Text := fieldbyname('date').asString;
//               tongplan_f.edtName.text := fieldbyname('ibName').asString;
//               tongplan_f.edtNumber.text :=
//                    fieldbyname('ibNumber').asString;
//               tongplan_f.edtGeumek.FloatValue :=
//                    fieldbyname('geumek').asFloat;
//               if fieldbyname('Hyunreceipt').asString = '1' then
//                    tongplan_f.rbBalgeup.checked := true
//               else
//                    tongplan_f.rbBalgeup.checked := false;
//
//               tongplan_f.edtcertno.text :=
//                    fieldByName('hyuncertno').AsString;
//               tongplan_f.edtadmitno.text :=
//                    fieldByName('admitno').AsString;
//               if fieldByName('admitkind').AsString = '0' then
//                    tongplan_f.rbgongje.checked := true;
//               if fieldByName('admitkind').AsString = '1' then
//                    tongplan_f.rbjichul.checked := true;
//               if fieldByName('admitkind').AsString = '2' then
//                    tongplan_f.rbjajin.checked := true;
//          end
//          else
//          begin
//               tongplan_f.edtTongday.Text := edtTongday.Text;
//               tongplan_f.edtName.text := ma_paName;
//               tongplan_f.edtNumber.text := '';
//               tongplan_f.edtGeumek.FloatValue := 0;
//               tongplan_f.rbBalgeup.checked := false;
//               tongplan_f.rbMiBalgeup.checked := true;
//
//               tongplan_f.edtcertno.text := '';
//               tongplan_f.edtadmitno.text := '';
//               tongplan_f.rbgongje.checked := false;
//               tongplan_f.rbjichul.checked := false;
//               tongplan_f.rbjajin.checked := true;
//          end;
//
//     end;

end;

procedure Tsunap_f.tongPlansave(varname, varNumber, varTongday,
     varHyunreceipt:
     string; varGeumek: double);
const
     sql_ma_sunap_tongplan = 'INSERT INTO [ma_sunap_tongplan]'
          +
          #10#13 +
          '         ([chart]                                                 ' + #10#13
          +
          '         ,[date]                                                  ' + #10#13
          +
          '         ,[jinryo_pid]                                            ' + #10#13
          +
          '         ,[ibname]                                                ' + #10#13
          +
          '         ,[ibnumber]                                              ' + #10#13
          +
          '         ,[geumek]                                                ' + #10#13
          +
          '         ,[hyunreceipt]                                           ' + #10#13
          +
          '         ,[hyuncertno]                                           ' + #10#13
          +
          '         ,[admitno]                                           ' + #10#13
          +
          '         ,[admitkind]                                           ' + #10#13
          +
          '         ,[regday])                                               ' + #10#13
          +
          '   VALUES                                                         ' + #10#13
          +
          '         (:chart                                      ' + #10#13
          +
          '         ,:date                                       ' + #10#13
          +
          '         ,:jinryo_pid                                 ' + #10#13
          +
          '         ,:ibname                                      ' + #10#13
          +
          '         ,:ibnumber                                    ' + #10#13
          +
          '         ,:geumek                                          ' + #10#13
          +
          '         ,:hyunreceipt                                  ' + #10#13
          +
          '         ,:hyuncertno                                           ' + #10#13
          +
          '         ,:admitno                                           ' + #10#13
          +
          '         ,:admitkind                                           ' + #10#13
          +
          '         ,:regday )                                    ';
begin

//     with dm_f.sqlWork do
//     begin
//
//          Close;
//          SQL.Clear;
//          Sql.Add('delete from ma_sunap_tongplan');
//          Sql.Add('where jinryo_pid = :jinryo_pid');
//          paramByname('jinryo_pid').asString := edtJinryoPid.Text;
//          ExecSQL;
//
//          Close;
//          SQL.Clear;
//          Sql.text := sql_ma_sunap_tongplan;
//
//          paramByname('chart').asString := ma_chart;
//          paramByname('date').asString := varTongDay;
//          paramByname('jinryo_pid').asString := edtJinryoPid.Text;
//          paramByname('ibname').asString := varname;
//          paramByname('ibnumber').asString := varnumber;
//          paramByname('geumek').asFloat := vargeumek;
//          paramByname('hyunreceipt').asString := varHyunreceipt;
//          paramByname('regday').asString := lblSunapDay.caption;
//
//          paramByname('admitno').asstring := tongPlan_f.edtadmitno.text;
//          paramByname('hyuncertno').asstring :=
//               tongPlan_f.edtcertno.text;
//          if tongPlan_f.rbgongje.checked = true then
//               paramByname('admitkind').asString := '0';
//          if tongPlan_f.rbjichul.checked = true then
//               paramByname('admitkind').asString := '1';
//          if tongPlan_f.rbjajin.checked = true then
//               paramByname('admitkind').asString := '2';
//
//          ExecSQL;
//     end;

end;
//*

//* 수납저장 -------------------------------------------------------------------

procedure Tsunap_f.btnSaveClick(Sender: TObject);
begin
    // if edtHwanBul.FloatValue > 0 then
   //     HwanBulsave
   //  else



     sunaspSaveAll(true);



end;

procedure Tsunap_f.sunaspSaveAll(isClose :boolean);
begin

     try


           if edtiCard.FloatValue > 0  then
              edtCard.FloatValue :=  edtiCard.FloatValue;

           if edtiHyun.FloatValue > 0  then
              edtHyun.FloatValue :=  edtiHyun.FloatValue;

           if edtiTong.FloatValue > 0  then
              edtTong.FloatValue :=  edtiTong.FloatValue;


           sunapSave;


           SaveJinryoHangmok(ma_chart);

           saveSunapDtx;

           saveNapBuGeumek(ma_chart, trunc(edtPrevSunap.intValue)  );

           sebusunapCalc(ma_chart);



           if isMagamTemp = true then //임시로 마감을 해제한 경우 내용을 수정 한 후 다시 마감상태로 만들어 놓아야 한다.
           begin
                 updateMagamStat(varSunapID,'1');
                 grdMain.Cells[29, grdMain.Row] := '1'; //   lineSunapLoad(grdMain.Row)를 적용 하기 위함.
                 btnModMagam.visible:= false;
           end;



              BunnapSave(edtBunnap.value) ;

//             if grdMain.Row > 0 then
//                 lineSunapLoad(grdMain.Row);

//         //수납저장 상태로 변경---------------------------------------------
//          ChangeStatus2('3',  cbDoc.ColumnItems[cbDoc.itemindex, 0]  );




         //아래코드는 수납창을 잠시 안보이게 함.
       //    showmessage('저장되었습니다.');


           //대기표 갱신
            main_f. DaegiFrame_fr1.daegiselect(main_f. DaegiFrame_fr1.tsmain.TabIndex);

           if isClose=true then
           begin


               close;
           end;

     except

        //    showmessage('저장실패.');
         MessageBoxA(sunap_f.handle,'수납저장에 오류가 있습니다.','알림',   + mb_Ok +MB_TOPMOST + MB_ICONHAND);



     end;
end;

procedure Tsunap_f.sunapSave;
var
     modFlag, insFlag: boolean;
     i: word;
     mResponse: Integer;
     iResult: integer;
     FormInit: Tinifile;
     varPrinter: string;
     varMisu: double;
     varHwanBulek:string;

     varSID:string;
begin
     FormInit := Tinifile.Create(ExtractFilePath(ParamStr(0)) + 'db.INI');
     varPrinter := FormInit.ReadString('기타정보', 'PRINTERTYPE', '');
     FormInit.Free;

     if trim(ma_chart) = '' then
          exit;

     if cbDoc.itemindex <0 then
     begin
           showmessage('담당의를 선택하세요.');
           cbDoc.setfocus;
     end;

     with dm_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          Sql.Add('select * from ma_sunap');
          //  Sql.Add('where s_id = :s_id');
          //  Sql.Add('where jinryo_pid = :jinryo_pid');

          if (varSunapID <> '0') and  (varSunapID <> '') then
          begin
             Sql.Add('where s_id = :s_id');
              paramByname('s_Id').asString := varSunapID;
          end
          else
          begin
               Sql.Add('where chart = :chart');
               Sql.Add(' and sDay = :sDay');
               Sql.Add(' and team=:team');
               paramByname('chart').asString :=   ma_chart;
               paramByname('sDay').asString  :=   lblSunapDay.caption;
               paramByname('team').asString  :=   cbDoc.ColumnItems[cbDoc.itemindex, 0];
                             // cbTeam.itemindex + 1;
//          end;

//         if configvalue.varUseDocSunap ='1' then //원장코드로 조회하는 옵션 선택시
//          begin
               Sql.Add(' and doc = :doc');
               paramByname('doc').asString   := cbDoc.ColumnItems[cbDoc.itemindex, 2];
//          end;
          end;

          //paramByname('jinryo_pid').asString := edtJinryoPid.text;
         // paramByname('s_id').asString := varSunapID;
          open;
          if isEmpty then
          begin
               insFlag := true;
               ModFlag := false;
          end
          else
          begin
              varHwanBulek := fieldbyname('hwanbulek').AsString;
              if (varSunapID ='') and (varHwanBulek  <> '')  and (varHwanBulek <> '0') then
              begin
                  insFlag := true;
                  ModFlag := false;
              end
              else
              begin
                 varSunapID :=  fieldbyname('s_ID').asString;
                 insFlag := false;
                 modFlag := true;
             end;
          end;
     end;

    if  cbDuplaicate.Checked = true then
    begin
           insFlag := true;
           ModFlag := false;

    end;

    if cbMod.Checked   then
    begin
           insFlag := false;
           modFlag := true;
    end;



     if insflag then
     begin
          with dm_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               Sql.Add('insert into ma_sunap');
               Sql.Add('(chart, sDay,tx,totalCharge,sunapEk,hyun, tong2,');
               Sql.Add('card,  supyo,tong,team,bochul,gyojung, doc, doc_code, sGubun,kamak, ');
               Sql.Add('imp,   mf,bohum, etc, janek,recallDay,recallTime, bugase,  isSunaponly,  ');
               Sql.Add('recallRemark, sign,chamgo,youngSu,gammyunEk, hwanBulEk,MisuEk, usebohum, admitno ,hyuncertno, admitkind, sKind,   ');
               Sql.Add('hyunYoungsu,  YoungsuJa, sTime,HyunReceipt,HyunReceipt_tong, iBohumEk, ietcEk, iilbanEk,bonin1, chong, chung, bonin, jinryo_pid, chojae)  values');
               Sql.Add('(:chart, :sDay,:tx,:totalCharge,:sunapEk,:hyun,:tong2,');
               Sql.Add(':card,  :supyo, :tong,:team,:bochul,:gyojung, :doc, :doc_code, :sGubun,:kamak, ');
               Sql.Add(':imp,   :mf,:bohum, :etc, :janek,:recallDay,:recallTime, :bugase ,  :isSunaponly, ');
               Sql.Add(':recallRemark, :sign,:chamgo,:youngSu,:gammyunEk, :hwanBulEk, :MisuEk,  :usebohum, :admitno ,:hyuncertno, :admitkind, :sKind, ');
               Sql.Add(':hyunYoungsu,  :YoungsuJa , :sTime, :HyunReceipt,:HyunReceipt_tong, :iBohumEk, :ietcEk, :iilbanEk,:bonin1, :chong, :chung, :bonin, :jinryo_pid, :chojae) ');
               paramByname('chart').asString := ma_chart;
               paramByname('sDay').asString := lblSunapDay.caption;
               paramByname('sTime').asDateTime := now;
               paramByname('jinryo_pid').asString := edtJinryoPid.Text;

               if cbdangmisu.Checked = true then //미수수납인경우
               begin
                    paramByname('tx').asString := '미수수납';
                    paramByname('janek').asfloat := 0;

                    if cbbohum.Checked = true then
                    begin
                         paramByname('iBohumEk').asFloat :=
                              edtDangMisu.FloatValue; //보험미수액
                         paramByname('misuEk').asfloat := 0;
                    end
                    else
                    begin
                         paramByname('misuEk').asfloat :=
                              edtDangMisu.FloatValue; //일반미수액
                         paramByname('iBohumEk').asFloat := 0;
                    end;

                    paramByname('kamak').asfloat := edtgammyun.FloatValue;

                    paramByname('totalCharge').asfloat :=
                         edtChong.FloatValue;
                    paramByname('sunapEk').asfloat := edtSunap.FloatValue;

                    paramByname('hyun').asfloat :=
                         edtHyun.FloatValue; // - edtHyunReceipt.FloatValue;
                    paramByname('HyunReceipt').asfloat :=
                         edtHyunReceipt.FloatValue;
                    paramByname('HyunReceipt_tong').asfloat :=
                         edtTongReceipt.FloatValue;

                    paramByname('tong').asfloat := edttong.FloatValue;

                    paramByname('tong2').asfloat := edttong2.FloatValue;

                    paramByname('card').asfloat := edtCard.FloatValue;
                    paramByname('supyo').asfloat := 0;
                    paramByname('team').asinteger := strtoint( cbDoc.ColumnItems[cbDoc.itemindex, 0]);
                    // cbTeam.itemindex + 1;

                    paramByname('doc').asString := cbDoc.ColumnItems[cbDoc.itemindex, 2];
                    paramByname('doc_code').asString := cbDoc.ColumnItems[cbDoc.itemindex, 0];





                    paramByname('sKind').asString := cbsKind.text;

                    paramByname('sGubun').asString := cbSunapGubunHangMok.text;

                    paramByname('bochul').asfloat := 0; //none
                    paramByname('gyojung').asfloat := 0; //none
                    paramByname('imp').asfloat := 0; //none
                    paramByname('mf').asfloat := 0; //none

                    paramByname('Etc').asfloat := edtEtc.FloatValue;

                    paramByname('bohum').asfloat := edtbohum.FloatValue;
                    paramByname('chong').asfloat := edtChong2.FloatValue;
                    paramByname('chung').asfloat := edtChung.FloatValue;

                    paramByname('bugase').asfloat := edtbugase.FloatValue;

                    paramByname('recallDay').asString := ''; //none
                    paramByname('recallTime').asString := ''; //none
                    paramByname('recallRemark').asString := ''; //none

                    paramByname('sign').asString := '';
                    paramByname('chamgo').asString := memChamgo.text;
                    paramByname('youngSu').asString := '';
                    paramByname('GammyunEk').asfloat :=   edtGammyun.FloatValue;
                    paramByname('hwanBulEk').asfloat := 0; // edtHwanBul.FloatValue;

                    paramByname('admitno').asstring := edtadmitno.text;
                    paramByname('hyuncertno').asstring :=
                         edtcertno.text;
                    if rbbalgeup.checked = true then
                         paramByname('hyunYoungsu').asString := '1'
                    else
                         paramByname('hyunYoungsu').asString := '0';
                    if rbgongje.checked = true then
                         paramByname('admitkind').asString := '0';
                    if rbjichul.checked = true then
                         paramByname('admitkind').asString := '1';
                    if rbjajin.checked = true then
                         paramByname('admitkind').asString := '2';

                    paramByname('YoungsuJa').asInteger :=
                         cbHygine.itemIndex;

                    paramByname('ietcEk').asFloat   := 0; //none
                    paramByname('iilbanEk').asFloat :=  edtbonin1.FloatValue;
                    //none
                    parambyname('bonin1').AsFloat   :=  edtbonin1.FloatValue;
                    paramByname('bonin').asfloat    :=  edtbohum.FloatValue;
                    paramByname('chojae').asinteger :=  ma_SunapChoje;//main_f.CbChoje.itemindex + 1;
                    if cbin.checked = true then
                         paramByname('usebohum').asString := '1'
                    else
                         paramByname('usebohum').asString := '0';


                    if cbSunapOnly.checked then
                         paramByname('isSunapOnly').asString := '1'
                    else
                         paramByname('isSunapOnly').asString := '0';

               end
               else //미수수납이 아닌 경우
               begin
                    paramByname('tx').asString := memJin.text;
                    paramByname('janek').asfloat := edtmisu.FloatValue;

                    if cbbohum.Checked = true then
                    begin
                         paramByname('iBohumEk').asFloat :=
                              edtDangMisu.FloatValue; //보험미수액
                         paramByname('misuEk').asfloat := 0;
                    end
                    else
                    begin
                         paramByname('misuEk').asfloat :=
                              edtDangMisu.FloatValue; //일반미수액
                         paramByname('iBohumEk').asFloat := 0;
                    end;

                    paramByname('kamak').asfloat := edtgammyun.FloatValue;
                    paramByname('totalCharge').asfloat :=
                         edtChong.FloatValue;
                    paramByname('sunapEk').asfloat := edtSunap.FloatValue;
                    paramByname('hyun').asfloat := edtHyun.FloatValue;
                    // - edtHyunReceipt.FloatValue;
                    paramByname('card').asfloat := edtCard.FloatValue;
                    paramByname('supyo').asfloat := 0;


                    paramByname('tong').asfloat := edttong.FloatValue;
                    paramByname('tong2').asfloat := edttong2.FloatValue;


                    paramByname('team').asString := ma_treatRoom;// cbDoc.ColumnItems[cbDoc.itemindex, 0] ;
                    // cbTeam.itemindex + 1;



                    paramByname('bochul').asfloat := 0; //none


                    paramByname('doc').asString      :=      ma_docName;//cbDoc.ColumnItems[cbDoc.itemindex, 2];
                    paramByname('doc_code').asString :=      ma_doccode;//cbDoc.ColumnItems[cbDoc.itemindex, 0];



                    paramByname('gyojung').asfloat := 0; //none
                    paramByname('imp').asfloat := 0; //none
                    paramByname('mf').asfloat := 0; //none

                    paramByname('Etc').asfloat := edtEtc.FloatValue;
                    paramByname('bohum').asfloat := edtbohum.FloatValue;
                    paramByname('chong').asfloat := edtChong2.FloatValue;
                    paramByname('chung').asfloat := edtChung.FloatValue;


                    paramByname('bugase').asfloat := edtbugase.FloatValue;

                    paramByname('sKind').asString := cbsKind.text;

                    paramByname('recallDay').asString := ''; //none
                    paramByname('recallTime').asString := ''; //none
                    paramByname('recallRemark').asString := ''; //none

                    paramByname('sign').asString := '';
                    paramByname('chamgo').asString := memChamgo.text;
                    paramByname('youngSu').asString := '';
                    paramByname('GammyunEk').asfloat :=  edtGammyun.FloatValue;
                    paramByname('hwanBulEk').asfloat := 0;//    edtHwanBul.FloatValue;
                    paramByname('hyuncertno').asstring :=
                         edtcertno.text;
                    paramByname('admitno').asstring := edtadmitno.text;

                    if rbBalgeup.Checked = true then
                         paramByname('hyunYoungsu').asString := '1'
                    else
                         paramByname('hyunYoungsu').asString := '0';

                    if rbgongje.checked = true then
                         paramByname('admitkind').asString := '0';
                    if rbjichul.checked = true then
                         paramByname('admitkind').asString := '1';
                    if rbjajin.checked = true then
                         paramByname('admitkind').asString := '2';

                    paramByname('YoungsuJa').asInteger :=
                         cbHygine.itemIndex;
                    paramByname('HyunReceipt').asfloat :=
                         edtHyunReceipt.FloatValue;
                    paramByname('HyunReceipt_tong').asfloat :=
                         edtTongReceipt.FloatValue;

                    paramByname('ietcEk').asFloat := 0; //none
                    paramByname('iilbanEk').asFloat := edtbonin1.FloatValue;
                    //none
                    parambyname('bonin1').AsFloat := edtbonin1.FloatValue;
                    paramByname('bonin').asfloat := edtbohum.FloatValue;
                    paramByname('chojae').asinteger := ma_sunapChoje; // main_f.CbChoje.itemindex + 1;
                    if cbin.checked = true then
                         paramByname('usebohum').asString := '1'
                    else
                         paramByname('usebohum').asString := '0';

                    if cbSunapOnly.checked then
                         paramByname('isSunapOnly').asString := '1'
                    else
                         paramByname('isSunapOnly').asString := '0';

                    paramByname('sGubun').asString := cbSunapGubunHangmok.text;

               end;

               execsql;

               sql.text:=' select @@Identity as sid';
               open;

             //  varSID:=fieldbyname('sID').asString;
               varSunapID :=  fieldbyname('sID').asString;


               insFlag := false;
          end;
     end
     else
          if modFlag = true then
          begin
               with dm_f.SqlWork do
               begin
                    Close;
                    SQL.Clear;
                    Sql.Add('update  ma_sunap  set');
                    Sql.Add('tx = :tx, kamak=:kamak, ');
                    Sql.Add('totalCharge = :totalCharge,  sunapEk = :sunapEk, sGubun=:sGubun, ');
                    Sql.Add('hyun = :hyun,  card = :card, supyo = :supyo, doc=:doc, doc_code=:doc_code, tong2=:tong2, bugase=:bugase, ');
                    Sql.Add('tong = :tong,  bochul = :bochul, iBohumEk=:iBohumEk, iEtcEk=:iEtcEk, iilbanEk=:iilbanEk,bonin1=:bonin1,  ');
                    Sql.Add('gyojung = :gyojung, imp = :imp, mf = :mf, bohum=:bohum, etc=:etc,  chong=:chong, chung=:chung,   sKind=:sKind,');
                    Sql.Add('janek = :janek, recallDay = :recallDay,   gammyunEk=:gammyunEk, hwanbulEk=:hwanBulEk,  MisuEk=:Misuek,    ');
                    Sql.Add('recallTime = :recallTime, recallRemark = :recallRemark, team=:team, isSunaponly=:isSunapOnly, ');
                    Sql.Add('sign = :sign,  chamgo = :chamgo,  youngSu = :youngSu, usebohum=:usebohum,admitno=:admitNo ,hyuncertno=:hyuncertno, admitkind=:admitkind, ');
                    Sql.Add('hyunYoungsu = :hyunYoungsu, YoungsuJa = :YoungsuJa , sTime=:sTime, HyunReceipt=:HyunReceipt,   HyunReceipt_tong=:HyunReceipt_tong    ');

                    if (varSunapID <> '0') and  (varSunapID <> '') then
                    begin


                          Sql.Add('where s_id = :s_id');
                          paramByname('s_id').asString := varSunapId;
                    end
                    else
                    begin
                          Sql.Add('where chart = :chart and sDay = :sDay and team = :team');
                          paramByname('chart').asString := ma_chart;
                          paramByname('sDay').asString := lblSunapDay.caption;
                          paramByname('team').asinteger := strtoint( cbDoc.ColumnItems[cbDoc.itemindex, 0]);
                          //cbTeam.itemindex + 1;


                    end;
                       //  paramByname('jinryo_pid').asString := edtJinryoPid.Text;

                    if cbdangmisu.Checked = true then //미수수납인경우
                    begin
                         paramByname('tx').asString := '미수수납';
                         paramByname('janek').asfloat := 0;

                         if cbbohum.Checked = true then
                         begin
                              paramByname('iBohumEk').asFloat :=
                                   edtDangMisu.FloatValue; //보험미수액
                              paramByname('misuEk').asfloat := 0;
                         end
                         else
                         begin
                              paramByname('misuek').asfloat :=
                                   edtDangMisu.FloatValue; //일반미수액
                              paramByname('iBohumEk').asFloat := 0;
                         end;


                         paramByname('kamak').asfloat := edtgammyun.FloatValue;

                         paramByname('tx').asString := memJin.text;
                         paramByname('janek').asfloat := edtmisu.FloatValue;

                         paramByname('sTime').asDateTime := now;
                         paramByname('totalCharge').asfloat :=
                              edtChong.FloatValue;
                         paramByname('sunapEk').asfloat := edtSunap.FloatValue;
                         paramByname('hyun').asfloat := edtHyun.FloatValue;
                         // -  edtHyunReceipt.FloatValue;
                         paramByname('card').asfloat := edtCard.FloatValue;
                         paramByname('supyo').asfloat := 0;
                         paramByname('tong').asfloat := edttong.FloatValue;
                         paramByname('tong2').asfloat := edttong2.FloatValue;
                         paramByname('team').asinteger := strtoint( cbDoc.ColumnItems[cbDoc.itemindex, 0]);
                         // cbTeam.itemindex +  1;

                         paramByname('doc').asString := cbDoc.ColumnItems[cbDoc.itemindex, 2];
                         paramByname('doc_code').asString := cbDoc.ColumnItems[cbDoc.itemindex, 0];

                         paramByname('sKind').asString := cbsKind.text;
                         paramByname('sGubun').asString := cbSunapGubunHangmok.text;

                         paramByname('bochul').asfloat := 0; //none
                         paramByname('gyojung').asfloat := 0; //none
                         paramByname('imp').asfloat := 0; //none
                         paramByname('mf').asfloat := 0; //none

                         paramByname('Etc').asfloat := edtEtc.FloatValue;

                         paramByname('bohum').asfloat := edtbohum.FloatValue;
                         paramByname('chong').asfloat := edtChong1.FloatValue;


                         paramByname('bugase').asfloat := edtbugase.FloatValue;

                         paramByname('chung').asfloat := edtChung.FloatValue;

                         paramByname('recallDay').asString := ''; //none
                         paramByname('recallTime').asString := ''; //none
                         paramByname('recallRemark').asString := ''; //none

                         paramByname('sign').asString := '';
                         paramByname('chamgo').asString := memChamgo.text;
                         paramByname('youngSu').asString := '';
                         paramByname('GammyunEk').asfloat :=  edtGammyun.FloatValue;


                         paramByname('hwanBulEk').asfloat := edtHwanBul.FloatValue;

                         paramByname('hyuncertno').asstring :=  edtcertno.text;
                         paramByname('admitno').asstring := edtadmitno.text;

                         if rbBalgeup.Checked = true then
                              paramByname('hyunYoungsu').asString := '1'
                         else
                              paramByname('hyunYoungsu').asString := '0';

                         if rbgongje.checked = true then
                              paramByname('admitkind').asString := '0';
                         if rbjichul.checked = true then
                              paramByname('admitkind').asString := '1';
                         if rbjajin.checked = true then
                              paramByname('admitkind').asString := '2';

                         paramByname('YoungsuJa').asInteger :=
                              cbHygine.itemIndex;
                         paramByname('HyunReceipt').asfloat :=
                              edtHyunReceipt.FloatValue;
                         paramByname('HyunReceipt_tong').asfloat :=
                              edtTongReceipt.FloatValue;

                         paramByname('ietcEk').asFloat := 0; //none
                         paramByname('iilbanEk').asFloat := edtbonin1.FloatValue;
                         //none
                         parambyname('bonin1').AsFloat := edtbonin1.FloatValue;

                         if cbin.checked = true then
                              paramByname('usebohum').asString := '1'
                         else
                              paramByname('usebohum').asString := '0';

                         if cbSunapOnly.checked then
                              paramByname('isSunapOnly').asString := '1'
                         else
                              paramByname('isSunapOnly').asString := '0';

                    end
                    else //미수수납이 아닌 경우
                    begin
                         if cbbohum.Checked = true then
                         begin
                              paramByname('iBohumEk').asFloat :=
                                   edtDangMisu.FloatValue; //보험미수액
                              paramByname('misuEk').asfloat := 0;
                         end
                         else
                         begin
                              paramByname('misuek').asfloat :=
                                   edtDangMisu.FloatValue; //일반미수액
                              paramByname('iBohumEk').asFloat := 0;
                         end;

                         paramByname('kamak').asfloat := edtgammyun.FloatValue;

                         paramByname('tx').asString := memJin.text;
                         paramByname('janek').asfloat := edtmisu.FloatValue;

                         paramByname('sTime').asDateTime := now;
                         paramByname('totalCharge').asfloat :=
                              edtChong.FloatValue;
                         paramByname('sunapEk').asfloat := edtSunap.FloatValue;
                         paramByname('hyun').asfloat := edtHyun.FloatValue;
                         // - edtHyunReceipt.FloatValue;
                         paramByname('card').asfloat := edtCard.FloatValue;
                         paramByname('supyo').asfloat := 0;
                         paramByname('tong').asfloat := edttong.FloatValue;
                        paramByname('tong2').asfloat  := edttong2.FloatValue;
                         paramByname('team').asString :=   cbDoc.ColumnItems[cbDoc.itemindex, 0];
                         // cbTeam.itemindex +   1;

                         paramByname('doc').asString := cbDoc.ColumnItems[cbDoc.itemindex, 2];
                         paramByname('doc_code').asString := cbDoc.ColumnItems[cbDoc.itemindex, 0];

                         paramByname('sKind').asString := cbsKind.text;

                         paramByname('sGubun').asString := cbSunapGubunHangmok.text;

                         paramByname('bochul').asfloat := 0; //none
                         paramByname('gyojung').asfloat := 0; //none
                         paramByname('imp').asfloat := 0; //none
                         paramByname('mf').asfloat := 0; //none

                         paramByname('Etc').asfloat := edtEtc.FloatValue;
                         paramByname('bohum').asfloat := edtbohum.FloatValue;

                         paramByname('chong').asfloat := edtChong2.FloatValue;
                         //edtChong1.FloatValue;



                         paramByname('bugase').asfloat := edtbugase.FloatValue;

                         paramByname('chung').asfloat := edtChung.FloatValue;
                         paramByname('recallDay').asString := ''; //none
                         paramByname('recallTime').asString := ''; //none
                         paramByname('recallRemark').asString := ''; //none

                         paramByname('sign').asString := '';
                         paramByname('chamgo').asString := memChamgo.text;
                         paramByname('youngSu').asString := '';
                         paramByname('GammyunEk').asfloat :=
                              edtGammyun.FloatValue;
                         paramByname('hwanBulEk').asfloat :=  edtHwanBul.FloatValue;

                         paramByname('hyuncertno').asstring :=
                              edtcertno.text;

                         paramByname('admitno').asstring := edtadmitno.text;

                         if rbBalgeup.checked = true then
                              paramByname('hyunYoungsu').asString := '1'
                         else
                              paramByname('hyunYoungsu').asString := '0';

                         if rbgongje.checked = true then
                              paramByname('admitkind').asString := '0';
                         if rbjichul.checked = true then
                              paramByname('admitkind').asString := '1';
                         if rbjajin.checked = true then
                              paramByname('admitkind').asString := '2';

                         paramByname('YoungsuJa').asInteger :=
                              cbHygine.itemIndex;
                         paramByname('HyunReceipt').asfloat :=
                              edtHyunReceipt.FloatValue;
                         paramByname('HyunReceipt_tong').asfloat :=
                              edtTongReceipt.FloatValue;

                         paramByname('ietcEk').asFloat := 0; //none
                         paramByname('iilbanEk').asFloat := edtbonin1.FloatValue;
                         //none
                         parambyname('bonin1').AsFloat := edtbonin1.FloatValue;

                         if cbin.checked = true then
                              paramByname('usebohum').asString := '1'
                         else
                              paramByname('usebohum').asString := '0';

                         if cbSunapOnly.checked then
                              paramByname('isSunapOnly').asString := '1'
                         else
                              paramByname('isSunapOnly').asString := '0';
                    end;

                    execsql;
             //      sql.text:=' select @@Identity as sid';
             //      open;

                 //  varSID:=fieldbyname('sID').asString;
             //      varSunapID :=  fieldbyname('sID').asString;


                    modFlag := false;
               end;
          end;

     // jinryo_p에 데이터 써주기... 진료
     with dm_f.sqlwork do
     begin
          close;
          sql.clear;
          sql.add('update jinryo_p set');
          sql.add(' bonin=:bonin,bonin1=:bonin1, sunap=:sunap,');
          sql.add('HwakinNo=:HwakinNo,bontype=:bontype,');
          sql.add('Yujikum=:Yujikum, cash=:cash, card=:card, tong=:tong, Jojaein=:Jojaein,');
          sql.add(' sunapak=:sunapak, kamak=:kamak, misugeum=:misugeum, chong=:chong ');
          sql.add('where jinryo_pid=:jinryo_pid');
          //sql.add('where chart=:chart and jin_day=:jin_day');

          parambyname('jinryo_pid').AsString := ma_jinryo_pid;//edtJinryoPid.text;

          //parambyname('chart').AsString := ma_chart;
          //parambyname('jin_day').AsString := lblSunapDay.caption;
          parambyname('sunapak').asfloat := edtSunap.FloatValue;
          parambyname('bonin').asfloat := edtbohum.FloatValue;
          parambyname('bonin1').asfloat := edtbonin1.FloatValue;
          parambyname('kamak').asfloat := edtgammyun.FloatValue;
          paramByname('cash').asfloat := edtHyun.FloatValue;    // - edtHyunReceipt.FloatValue;

          paramByname('card').asfloat := edtCard.FloatValue;
          paramByname('tong').asfloat := edttong.FloatValue+ edtTong2.FloatValue;
          paramByname('Jojaein').asfloat := edtHyunReceipt.FloatValue;
          paramByname('misugeum').asfloat := edtDangMisu.FloatValue;
          paramByname('chong').asfloat :=edtChong2.FloatValue;// edtChong1.FloatValue;

          ParamByName('HwakinNo').AsString := edtHwakinNo.text;//''; //2007.7.1

          ParamByName('Yujikum').AsString :=    IntToStr(Round(0));
          //2007.7.1
          ParamByName('bontype').AsString := '';
          ParamByName('sunap').AsString := '1';   //0 수납대기 1:수납됨  2: 수납대기 취소
          //2007.7.1

          execsql;

     end;
     //카드,무통장 내역 저장
     SunapKindSave;
     //비보험내역 항목별 저장
     SunapBiboSave;


     //
     SunapBiboMisuSave;
     //싸인 저장
  //   SaveToBmpData(lblSunapDay.caption, ma_chart, '1',
 //         cbHygine.text,
 //         signPath + 'signdata1.dat');
 //    SaveToBmpData(lblSunapDay.caption, ma_chart, '2',
//          cbHygine.text,
//          signPath + 'signdata2.dat');

     //미수금 꺼내오기
     varMisu := chongMisuCalc(ma_chart, varviewAll); //
     edtilBanChongMisu.FloatValue := abs(varMisu);

     if varMisu < 0 then
     begin
          //lblSunsu.caption := '선수납금액';
          edtilBanChongMisu.font.color := clBlue;
     end
     else
     begin
          //lblSunsu.caption := '미수납금액';
          edtilBanChongMisu.font.color := clRed;

     end;


//    if cbNoSunapdaegi.checked=false then
     //대기상태였다면 수납 상태로 변경
     ChangeStatus2( strToDate(lblSunapDay.Caption),
          lblJubsuID.Caption,
          lblChart.Caption,
          '3',
           cbDoc.ColumnItems[cbDoc.itemindex, 0] ,       //진료실
           cbDoc.ColumnItems[cbDoc.itemindex, 4]    );  //담당의 Code

     {cbMisusunap.checked := false;}
     varsunapbiboek := 0;

     //영수증발행
     if cbReceipt.Checked then
     begin
          mResponse :=
               Application.MessageBox('수납되었습니다.영수증을 출력할까요?',
               '수납확인', MB_YESNOCANCEL);
          if mResponse = 6 then //YES
          begin
               // PrintReceiptQrp;
               // PrintReceiptFrx;
               // PrintToSrp770II;

               if varPrinter = 'SRP770II' then
               begin
                     PrintToSrp770II;
               end
               else
                    if varPrinter = 'miniPrint' then
                    begin
                         miniPrint;
                    end
                    else
                    begin
                         //  PrintReceiptFrx;
                    end;

               //바로 닫히지 말고 확인후 닫게 하라...  Close;
          end
          else
               if mResponse = 7 then //NO
               begin
                    //바로 닫히지 말고 확인후 닫게 하라...  Close;
               end;
     end
     else
     begin
          //바로 닫히지 말고 확인후 닫게 하라...       Close;
     end;

     if ma_chart <> '' then
     begin

          // todo: 수납후 SMS 전송
          {  if (main_f.ASUNAP = 0) and (main_f.SendBoHoSms = true) then
            begin
                 iResult := Application.MessageBox(pchar('[' + ma_paName + ']' + '님 보호자께, ' + #10#13 +
                      '[귀가안내]' + main_f.ASunapRemark + #10#13 +
                      'SMS메시지 전송하십니까?'), 'SMS전송 확인', MB_YESNO);
                 if iResult = 6 then
                 begin
                      main_f.SendMessage_Yeyak(main_f.gogekpTel, ma_paName, ma_chart, '[귀가안내]' + main_f.ASunapRemark);
                 end;

            end;
          }
     end;

     //    close;
         //btnSet(0);

end;

procedure Tsunap_f.btnSet(varStat: integer);
begin
     case varstat of
          0:
               begin
                    btnsave.enabled := not isMagam;
                    btnHwanbul.enabled := not isMagam;
                    btnDel.enabled := not isMagam;
                    btnSign.enabled := not isMagam;
                    cbMod.enabled := not isMagam;

                    enableBtn := true; //false;
                    {btnCard.enabled := false;
                    lblhyungeum.enabled := false;
                    lbltong2.enabled := false;
                    lbltong.enabled := false;
                    btnGammyun.enabled := false;
                    btnTodaymisu.enabled := false;
                     }
               end;
          1:
               begin
                    btnsave.enabled := not isMagam;
                    btnHwanbul.enabled := not isMagam;
                    btnDel.enabled := not isMagam;
                    btnSign.enabled := not isMagam;
                    cbMod.enabled := not isMagam;


                    enableBtn := true;
                    {btnCard.enabled := true;
                    lblhyungeum.enabled := true;
                    lbltong2.enabled := true;
                    lbltong.enabled := true;
                    btnGammyun.enabled := true;

                    btnTodaymisu.enabled := true;
                    }
               end;
     end;

end;

////* 대기상태였다면 수납 상태로 변경---------------------------------------------
//
//procedure Tsunap_f.ChangeStatus2;
//var
//     varTag: string;
//     varprIdn: string;
//     varPrTeam: string;
//begin
//
//     varTag := inttostr(3); //수납으로 변경
//
//     varprIdn := ma_Pridn;//main_f.varPidn2;
//     //    showmessage( varprIdn);
//     if ChangeStatus(ma_paName,
//          ma_sunapDate, //formatdatetime('yyyy-mm-dd', main_f.dtDate.date),
//          cbDoc.ColumnItems[cbDoc.itemindex, 0], // inttostr(cbTeam.itemindex + 1),
//          ma_chart,
//          '', varTag) = true then
//     begin
//         if configvalue.varSunapFinish ='1' then //당일 다중 수납이 선택되어있으면...
//        //       Promise_UpdatePos_withCharPday (ma_chart, formatdatetime('yyyy-mm-dd', main_f.dtDate.date), vartag)
//               Promise_UpdatePos_withCharPday (ma_chart, ma_sunapDate, vartag)
//         else
//         begin
//               if varPridn <> '' then
//                     Promise_UpdatePos(strtoint(varPridn), vartag);
//         end;
//
//     end;
//
//     {   with DM_f.SqlWork do
//        begin
//             Close;
//             Sql.Clear;
//             Sql.Add('update  ma_jubsu set');
//             Sql.Add('gubun=:gubun,');
//             Sql.Add(' sunaptime=:jinstime');
//             Sql.Add('where chart=:Chart and jin_day=:jin_day');
//             ParamByName('Gubun').AsString := '3';
//             ParamByName('Jin_Day').AsString := lblSunapDay.caption;
//             ParamByName('JinsTime').asDateTime := now;
//             ParamByName('Chart').AsString := ma_chart;
//             execSql;
//        end;
//        }
//        //Todo : 대기환자 리프래쉬
//   //  main_f.btnRefreshClick(self);
//
//end;

//* 비보험내역 항목별 저장 -----------------------------------------------------

procedure Tsunap_f.SunapBiboSave;
var
     modFlag, insFlag: boolean;
     i: integer;
begin
     if trim(ma_chart) = '' then
          exit;
     with dm_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          Sql.Add('delete from ma_sunap_bibo');
          Sql.Add('where sunapid = :sunapid ');
      //    Sql.Add('where chart = :chart and sunapDate = :sunapDate');
      //    Sql.Add(' and team=:team');
      //    ParamByName('team').AsString := cbDoc.ColumnItems[cbDoc.itemindex, 0] ;//inttostr(cbTeam.itemindex + 1);
      //    paramByname('chart').asString := ma_chart;
      //    paramByname('sunapDate').asString := lblSunapDay.caption;
            paramByname('sunapid').asString := varsunapid;
          ExecSql;
     end;

//     with dm_f.SqlWork do
//     begin
//          for i := 0 to grdBibo.Rowcount - 1 do
//          begin
//               if grdBibo.cells[1, i].asFloat <> 0 then
//               begin
//                    Close;
//                    SQL.Clear;
//                    Sql.Add('insert into ma_sunap_bibo');
//                    Sql.Add('(chart, sunapDate,sunapTime,hangmok,geumek, bigo, team,bibocheck,hangcode,kw_code, sunapid) values');
//                    Sql.Add('(:chart, :sunapDate,:sunapTime,:hangmok,:geumek, :bigo, :team,:bibocheck,:hangcode,:kw_code, :sunapid)');
//                    paramByname('chart').asString :=
//                         ma_chart;
//                    paramByname('sunapDate').asString :=
//                         lblSunapDay.caption;
//                    paramByname('sunapTime').asDateTime := now;
//                    paramByname('hangmok').asString := grdBibo.cells[0,
//                         i].asString;
//                    paramByname('geumek').asfloat := grdBibo.cells[1,
//                         i].asFloat;
//                    paramByname('bigo').asString := grdBibo.cells[2,
//                         i].asString;
//                    paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ;//inttostr(cbTeam.itemindex + 1);
//                    if grdBibo.cells[0, i].asString = '보철' then
//                         parambyname('hangcode').AsInteger := 47
//                    else
//                    begin
//                         if grdBibo.cells[0, i].asString = '교정' then
//                              parambyname('hangcode').AsInteger := 48
//                         else
//                              if grdBibo.cells[0, i].asString =
//                                   '임플란트' then
//                                   parambyname('hangcode').AsInteger := 49
//                              else
//                                   parambyname('hangcode').AsInteger :=
//                                        50;
//                    end;
//                    parambyname('kw_code').asstring := '1';
//                    if grdbibo.Cells[3, i].AsBoolean = true then
//                         parambyname('bibocheck').AsString := '1'
//                    else
//                         parambyname('bibocheck').AsString := '0';
//
//
//                    parambyname('sunapid').AsString := varSunapId;
//
//                    execsql;
//               end;
//          end;
//     end;

end;

//*

procedure Tsunap_f.SunapBiboMisuSave;
var
     modFlag, insFlag: boolean;
     i: integer;
begin

end;

//* 카드, 무통장 입금내역 저장 ----------------------------------

procedure Tsunap_f.SunapKindSave;
var
     i: integer;
     varCardYoule: string;
begin
     try
          with dm_f.sqlWork do
          begin

               Close;
               SQL.Clear;
               Sql.Add('delete from sunapTong');
               Sql.Add('where chart=:chart and TongDate=:Tongdate');
               paramByname('chart').asString := ma_chart;
               paramByname('TongDate').asString := lblSunapDay.caption;
               ExecSQL;
               for i := 0 to grdTong.RowCount - 1 do
               begin
                    Close;
                    SQL.Clear;
                    Sql.Add('insert into sunapTong');
                    Sql.Add('(chart, TongDate, TongJa, TongKind, tongEk) values');
                    Sql.Add('(:chart, :TongDate, :TongJa, :TongKind, :tongEk)');
                    paramByname('chart').asString :=
                         ma_chart;
                    paramByname('tongDate').asString :=
                         lblSunapDay.caption;
                    paramByname('tongKind').asString := grdTong.Cells[0,  i] ;
                    paramByname('tongEk').asString := grdTong.Cells[1, i] ;
                    paramByname('tongJa').asString := grdTong.Cells[2, i] ;
                    ExecSQL;
               end;



               //1. sunapcard의 sunapid값이 있는지 확인한다.
               //2. 있으면 sunapid값으로 지우고 없으면 기존방식  chart and CardDate  and team 으로 지우자.
               Close;
               SQL.Clear;

               Sql.Add('select *  from sunapcard');
               Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
               paramByname('chart').asString := ma_chart;
               paramByname('CardDate').asString := lblSunapDay.caption;
               paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ;
               open;
               if (fieldbyname('sunapid').asString <> '')
                  and ( fieldbyname('sunapid').asString <> '0') then
               begin
                     Close;
                     SQL.Clear;

                     Sql.Add('delete from sunapcard');
                     Sql.Add('where sunapid=:sunapid');
                     paramByname('sunapid').asString := varSunapId;
                     ExecSQL;


               end
               else
               begin
                     Close;
                     SQL.Clear;

                     Sql.Add('delete from sunapcard');
                     Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
                     paramByname('chart').asString := ma_chart;
                     paramByname('CardDate').asString := lblSunapDay.caption;
                     paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ; //inttostr(cbTeam.itemindex + 1);
                     ExecSQL;

               end;


               for i := 1 to grdCard.RowCount - 1 do
               begin
                    if (grdCard.Cells[2, i] <> '0') and
                         (trim(grdCard.Cells[2, i] ) <> '') then
                    begin
                         varCardYoule := floattostr(getCardYoyul(grdCard.Cells[1, i] ) * 0.01);

                         Close;
                         SQL.Clear;
                         Sql.Add('insert into sunapcard');
                         Sql.Add('(chart, cardDate, cardEk, cardKind, cardMonth, cardYoyul, team, sunapid) values');
                         Sql.Add('(:chart, :cardDate, :cardEk, :cardKind, :cardMonth,:cardYoyul, :team, :sunapid)');
                         paramByname('sunapid').asString := varSunapId;
                         paramByname('chart').asString := ma_chart;
                         paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ;//inttostr(cbTeam.itemindex + 1);
                         paramByname('cardDate').asString := lblSunapDay.caption;
                         paramByname('cardKind').asString := grdCard.Cells[1, i];
                         paramByname('cardEk').asFloat := grdCard.Floats[2, i] ;
                         paramByname('cardMonth').asString := grdCard.Cells[3, i] ;
                         paramByname('cardYoyul').asString := varCardYoule; //grdCard.Cells[3, i].asString ; //varCardYoule; //
                         ExecSQL;
                    end;
               end;

          end;

     except
          on E: Exception do
          begin
               ShowMessage(E.Message + ' [수납 종류 저장오류]');
          end;
     end;
end;

//*  카드, 무통장 내역 가져오기 ------------------------------------------------

procedure Tsunap_f.SunapKindLoad;
var
   varSid : string;
begin
     with dm_f.sqlWork do
     begin

          {// 수표
          Close;
          SQL.Clear;
          Sql.Add('select * from sunapSp');
          Sql.Add('where chart=:chart and spDate=:spdate');
          paramByname('chart').asString := ma_chart;
          paramByname('spDate').asString := lblSunapDay.caption;
          open;
          first;
          grdSp.Clear;
          while not eof do
          begin
               grdSp.addRow;
               grdSp.Cells[0, grdSp.Rowcount - 1].AsString := FieldByname('spNo').asString;
               grdSp.Cells[1, grdSp.Rowcount - 1].AsString := FieldByname('spEk').asString;
               grdSp.Cells[2, grdSp.Rowcount - 1].AsString := FieldByname('spBank').asString;
               grdSp.Cells[3, grdSp.Rowcount - 1].AsString := FieldByname('spSu').asString;
               next;
          end;
          grdSp.CalcFooters; }

          {Close;
          SQL.Clear;
          Sql.Add('select * from sunapTong');
          Sql.Add('where chart=:chart and TongDate=:Tongdate');
          paramByname('chart').asString := ma_chart;
          paramByname('TongDate').asString := lblSunapDay.caption;
          open;
          first;
          grdTong.clear;
          while not eof do
          begin
                 grdTong.addRow;
                 grdTong.Cells[0, grdTong.Rowcount - 1].AsString :=
                        FieldByname('tongKind').asString;
                 grdTong.Cells[1, grdTong.Rowcount - 1].AsString :=
                        FieldByname('tongEk').asString;
                 grdTong.Cells[2, grdTong.Rowcount - 1].AsString :=
                        FieldByname('tongJa').asString;
                 next;
          end;

          grdTong.CalcFooters;
          }

          Close;
          SQL.Clear;
          Sql.Add('select *  from sunapcard');
          Sql.Add('where chart=:chart and CardDate=:Carddate and team=:team');
          paramByname('chart').asString := ma_chart;
          paramByname('CardDate').asString := lblSunapDay.caption;
          paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ;
          open;

          varSId := fieldbyname('sunapid').asString ;
          if (trim(varSId) <> '' )
          and  (trim( varSId) <> '0') then
          begin
                 Close;
                 SQL.Clear;
                 Sql.Add('select *  from sunapcard');
                 Sql.Add('where sunapid=:sunapid');
                 paramByname('sunapid').asString := varSId;
          end
          else
          begin

                Close;
                SQL.Clear;
                Sql.Add('select *  from sunapcard');
                Sql.Add('where chart=:chart and CardDate=:Carddate and team=:team');
                paramByname('chart').asString := ma_chart;
                paramByname('CardDate').asString := lblSunapDay.caption;
                paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ;//inttostr(cbTeam.itemindex + 1);
          end;
          open;
          first;

       //   grdCard.clear;
          if not isEmpty then
          begin
               grdCard.RemoveRows(1,  grdCard.RowCount-1);

                while not eof do
                begin
                     grdCard.addRow;
                     grdCard.Cells[1, grdCard.Rowcount - 1] := FieldByname('cardKind').asString;
                     grdCard.floats[2, grdCard.Rowcount - 1] := FieldByname('cardEk').asFloat;
                     grdCard.Cells[3, grdCard.Rowcount - 1] := FieldByname('cardMonth').asString;
                     grdCard.Cells[4, grdCard.Rowcount - 1] := FieldByname('cardYoyul').asString;
                     next;
                end;

          end
          else
          begin
           grdCard.RowCount:=2;
          end;




     end;
end;


procedure Tsunap_f.ChamgoLoad;
begin

     if configvalue.varSunapComment ='1' then
     begin
           with dm_f.sqlWork do
           begin
                grdSunapChamgo.RowCount:=1;
                Close;
                SQL.Clear;

                Sql.Add('select srchart, convert(varchar(10),srdate,121) as sDay , srmemo as chamgo from hxsremark ');
                sql.add('where srchart=:chart ');
                Sql.Add('order by convert(varchar(10),srdate,121) desc ');
                paramByname('chart').asString := ma_chart;
                open;
                first;
                if not isEmpty then
                begin
                        while not eof do
                        begin

                                  grdSunapChamgo.addRow;
                               //   grdSunapChamgo.Cells[1, grdSunapChamgo.Rowcount - 1]  := FieldByname('sDay').asString;
                               //   grdSunapChamgo.Cells[2, grdSunapChamgo.Rowcount - 1]  := FieldByname('chamgo').asString;
                                  grdSunapChamgo.Cells[1, grdSunapChamgo.Rowcount - 1]  := FieldByname('sDay').asString;
                                  grdSunapChamgo.Cells[2, grdSunapChamgo.Rowcount - 1]  := FieldByname('chamgo').asString;
                                //  grdSunapChamgo.Cells[3, grdSunapChamgo.Rowcount - 1]  := FieldByname('s_id').asString;

                             next;
                        end;
                       grdSunapChamgo.AutoNumberCol(0);
                       grdSunapChamgo.AutoSizeCol(0);
                       grdSunapChamgo.AutoSizeRows(false);
                end;
           end;
     end
     else
     begin
           with dm_f.sqlWork do
           begin
                grdSunapChamgo.RowCount:=1;
                Close;
                SQL.Clear;

                Sql.Add('select chart, convert(varchar(10),jin_day,121) as sday , descript as chamgo from hxsunap ');
                sql.add('where chart=:chart ');
                Sql.Add('order by convert(varchar(10),jin_day,121) desc ');
                paramByname('chart').asString := ma_chart;
                open;
                first;
                if not isEmpty then
                begin
                        while not eof do
                        begin

                                  grdSunapChamgo.addRow;
                               //   grdSunapChamgo.Cells[1, grdSunapChamgo.Rowcount - 1]  := FieldByname('sDay').asString;
                               //   grdSunapChamgo.Cells[2, grdSunapChamgo.Rowcount - 1]  := FieldByname('chamgo').asString;
                                  grdSunapChamgo.Cells[1, grdSunapChamgo.Rowcount - 1]  := FieldByname('sDay').asString;
                                  grdSunapChamgo.Cells[2, grdSunapChamgo.Rowcount - 1]  := FieldByname('chamgo').asString;
                                //  grdSunapChamgo.Cells[3, grdSunapChamgo.Rowcount - 1]  := FieldByname('s_id').asString;

                             next;
                        end;
                       grdSunapChamgo.AutoNumberCol(0);
                       grdSunapChamgo.AutoSizeCol(0);
                       grdSunapChamgo.AutoSizeRows(false);
                end;
           end;
     end;
end;

procedure Tsunap_f.MisuekSave; //받은 돈으로 보험비용을 상쇄시킨다.
const

     sql_ma_sunap_sugeum = ' INSERT INTO  [ma_sunap_sugeum]  ' +
          #10#13 +
          '          ([chart]                                                ' + #10#13
          +
          '          ,[date]                                                 ' + #10#13
          +
          '          ,[keumek]                                               ' + #10#13
          +
          '          ,[hyun]                                               ' + #10#13
          +
          '          ,[card]                                               ' + #10#13
          +
          '          ,[young]                                               ' + #10#13
          +
          '          ,[tong]                                               ' + #10#13
          +
          '          ,[kind]                                                 ' + #10#13
          +
          '          ,[cnt]                                                  ' + #10#13
          +
          '          ,[jinryo_pid])                                           ' + #10#13
          +
          '    VALUES                                                        ' + #10#13
          +
          '          (:chart                                      ' + #10#13
          +
          '          ,:date                                       ' + #10#13
          +
          '          ,:keumek                                         ' + #10#13
          +
          '          ,:hyun                                         ' + #10#13
          +
          '          ,:card                                         ' + #10#13
          +
          '          ,:young                                         ' + #10#13
          +
          '          ,:tong                                         ' + #10#13
          +
          '          ,:kind                                       ' + #10#13
          +
          '          ,:cnt                                         ' + #10#13
          +
          '          ,:jinryo_pid )                                   ';

var

     i: integer;
     varKind: string;
     varHyun, varcard, varTong, varYoungsu, varGeumek: double;
     varTothyun, vartotcard, vartotyoungsu: double;
     varBohumek: double;
begin

     with dm_f.sqlWork do
     begin

          Close;
          SQL.Clear;
          Sql.Add('select sum(hyun) as tothyun, sum(card) as totcard, sum(young) as totyoung from ma_sunap_sugeum');
          Sql.Add('where chart = :chart');
          paramByname('chart').asString := ma_chart;
          open;
          if not isEmpty then
          begin
               varTothyun := fieldbyName('tothyun').asInteger;
               vartotcard := fieldbyName('totCard').asInteger;
               vartotyoungsu := fieldbyName('totYoung').asInteger;

          end
          else
          begin
               varTothyun := 0;
               vartotcard := 0;
               vartotyoungsu := 0;
          end;
     end;

     with dm_f.sqlTemp do
     begin

          Close;
          SQL.Clear;
          Sql.Add('select * from ma_sunap_sugeum');
          Sql.Add('where chart=:chart and tong < 0 ');
          paramByname('chart').asString := ma_chart;
          open;
          if not isEmpty then
          begin
               while not eof do
               begin

                    varBohumek := fieldByName('tong').asFloat * (-1);
                    //원래 (-) 다...

                    varGeumek := varBohumek;
                    varKind := 'c';

                    if varTotCard >= varBohumek then
                    begin

                         varHyun := 0;
                         varCard := varBohumek * (-1);
                         varYoungsu := 0;
                         varTong := varBohumek;
                         sunapSeperateSave(0, varBohumek);

                    end
                    else
                         if varTotYoungsu >= varBohumek then
                         begin

                              varHyun := 0;
                              varCard := 0;
                              varYoungsu := varBohumek * (-1);
                              varTong := varBohumek;
                              sunapSeperateSave(0, 0, varBohumek);

                         end
                         else
                              if varTotHyun >= varBohumek then
                              begin

                                   varHyun := varBohumek * (-1);
                                   varCard := 0;
                                   varYoungsu := 0;
                                   varTong := varBohumek;
                                   sunapSeperateSave(varBohumek);

                              end
                              else
                              begin
                                   exit;
                                   // varTong:=  varBohumek *(-1);  //현금도 카드도 영수증도 아닌경우

                              end;

                    try
                         with dm_f.sqlWork do
                         begin

                              Close;
                              SQL.Clear;
                              Sql.text := sql_ma_sunap_sugeum;

                              paramByname('chart').asString :=
                                   ma_chart;
                              paramByname('Date').asString :=
                                   lblSunapDay.caption;
                              paramByname('keumek').asfloat :=
                                   varGeumek;
                              paramByname('hyun').AsFloat :=
                                   varHyun;
                              paramByname('card').asfloat :=
                                   varCard;
                              paramByname('young').asfloat :=
                                   varYoungsu;
                              paramByname('tong').asfloat :=
                                   varTong;
                              paramByname('kind').asString :=
                                   varkind;
                              paramByname('cnt').asString := '';
                              paramByname('jinryo_pid').asString :=
                                   edtJinryoPid.Text;
                              ExecSQL;
                         end;
                    except
                         on E: Exception do
                         begin
                              ShowMessage(E.Message +
                                   ' [수납 종류 저장오류]');
                         end;
                    end;

                    next;
               end;

          end;
     end;

end;

procedure Tsunap_f.sunapSeperateSave(varBohyun: double = 0; varBoCard: double
     =
     0; varBoYoungsu: double = 0;
     varilhyun: double = 0; varilCard: double = 0; varilYoungsu: double = 0;
     varetcHyun: double = 0; varetcCard: double = 0; varEtcYoungsu: double =
     0);
const
     sql_ma_sunap_kind = '          INSERT INTO  [ma_sunap_kind]              '
          + #10#13 +
          '          ([chart]                                                ' + #10#13
          +
          '          ,[date]                                                 ' + #10#13
          +
          '          ,[bo_card]                                              ' + #10#13
          +
          '          ,[bo_hyun]                                              ' + #10#13
          +
          '          ,[bo_young]                                             ' + #10#13
          +
          '          ,[il_card]                                              ' + #10#13
          +
          '          ,[il_hyun]                                              ' + #10#13
          +
          '          ,[il_young]                                             ' + #10#13
          +
          '          ,[etc_card]                                             ' + #10#13
          +
          '          ,[etc_hyun]                                             ' + #10#13
          +
          '          ,[etc_young]                                            ' + #10#13
          +
          '          ,[jinryo_pid])                                           ' + #10#13
          +
          '    VALUES                                                        ' + #10#13
          +
          '          (:chart                                     ' + #10#13
          +
          '          ,:date                                      ' + #10#13
          +
          '          ,:bo_card                                       ' + #10#13
          +
          '          ,:bo_hyun                                         ' + #10#13
          +
          '          ,:bo_young                                       ' + #10#13
          +
          '          ,:il_card                                      ' + #10#13
          +
          '          ,:il_hyun                                         ' + #10#13
          +
          '          ,:il_young                                        ' + #10#13
          +
          '          ,:etc_card                                       ' + #10#13
          +
          '          ,:etc_hyun                                      ' + #10#13
          +
          '          ,:etc_young                                       ' + #10#13
          +
          '          ,:jinryo_pid )                                  ';
var
     i: integer;
     varHyun, varcard, varYoungsu, varGeumek: double;
     varTothyun, vartotcard, vartotyoungsu: double;
begin
     try
          with dm_f.sqlWork do
          begin

               Close;
               SQL.Clear;
               Sql.Add('delete from ma_sunap_kind');
               Sql.Add('where jinryo_pid = :jinryo_pid');
               paramByname('jinryo_pid').asString := edtJinryoPid.Text;
               ExecSQL;

               Close;
               SQL.Clear;
               Sql.text := sql_ma_sunap_kind;

               paramByname('chart').asString := ma_chart;
               paramByname('Date').asString := lblSunapDay.caption;

               paramByname('bo_card').asfloat := varBoCard;
               paramByname('bo_Hyun').AsFloat := varBoHyun;
               paramByname('bo_young').asfloat := varBoyoungsu;

               paramByname('il_card').asfloat := varilcard;
               paramByname('il_Hyun').AsFloat := varilHyun;
               paramByname('il_young').asfloat := varilYoungsu;

               paramByname('etc_card').asfloat := varetcCard;
               paramByname('etc_Hyun').AsFloat := varetcHyun;
               paramByname('etc_young').asfloat := varetcYoungsu;

               paramByname('jinryo_pid').asString := edtJinryoPid.Text;
               ExecSQL;
          end;
     except
          on E: Exception do
          begin
               ShowMessage(E.Message + ' [수납 종류 저장오류]');
          end;
     end;

end;
//* 미수금 로드 (다시 구상할것)-------------------------------------------------
{
function Tsunap_f.chongMisuCalc(chartNo: string): double;
var
     planChong, sunapMisuChong, SunapBohumChong,
          SunapBohumMisuChong,
          MisuChong, sunapChong, BohumChong, bibochong, etcChong: integer;
begin
     with dm_f.SqlWork do
     begin
          //비급여진료 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(Bonin1) as biboChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               biboChong := FieldByName('biboChong').AsInteger;
          end
          else
          begin

               biboChong := 0;
          end;

          //급여진료 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(Bohum) as bohumChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          Sql.Add(' and usebohum <> ''1'' ');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               bohumChong := FieldByName('bohumChong').AsInteger;
          end
          else
          begin
               bohumChong := 0;
          end;

          //기타 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(etc) as etcChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               etcChong := FieldByName('etcChong').AsInteger;
          end
          else
          begin

               etcChong := 0;
          end;

          Close;
          Sql.Clear;
          Sql.Add('select SUM(sunapek + Gammyunek) as SunapChong from ma_sunap');
          Sql.Add(' where chart=:chart ');

          {if isinBohum = true then //보험금액 포함이면...
          begin
                 Sql.Add(' and sday >= :sDay');
                 ParamByName('sDay').AsString :=
                        jinryo_f.cbjindan.ColumnItems[jinryo_f.cbjindan.itemindex,
                        1];
          end;
          }
 {         ParamByName('chart').AsString := chartNo;

          Open;

          if not isEmpty then
          begin
               SunapChong := FieldByName('SunapChong').AsInteger;
          end
          else
          begin

               SunapChong := 0;

          end;

          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add('sum(subtotal) as sSubtotal');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart');
          // and chart_id=:chart_id');
          ParamByName('chart').AsString := chartNo;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not isEmpty then
          begin
               PlanChong := FieldByName('sSubTotal').AsInteger;
          end
          else
          begin
               PlanChong := 0;
          end;

          close;
          sql.Clear;
          sql.Add('select sum(misuek) as misuek from ma_sunap');
          sql.add('where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               misuChong := FieldByName('misuek').AsInteger;
          end
          else
          begin
               misuChong := 0;
          end;

     end;

     result := planChong + biboChong + etcChong + bohumChong - SunapChong +    misuChong;

     //  if misuChong = 0 then
     //       result := 0;

end;
  }
//* 금액칸 keypress  -----------------------------------------------------------

procedure Tsunap_f.edtBochulKeyPress(Sender: TObject; var Key: Char);
begin

     if Key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
     end;

end;

procedure Tsunap_f.edtDangMisuKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          btnSaveclick(self);
     end;
end;
//* 금액칸 클릭  ---------------------------------------------------------------

procedure Tsunap_f.edtCardClick(Sender: TObject);
begin
     (sender as TadvEdit).SelectAll;
end;

//* 카드금액 입력 --------------------------------------------------------------

procedure Tsunap_f.edtCardExit(Sender: TObject);
begin
     {
            if (edtSunapChongEk.FloatValue > 0) and (edtCard.FloatValue < edtSunapChongEk.FloatValue)
                   then
            begin
                   if edtCard.FloatValue > 0 then
                   begin
                          edtHyun.FloatValue := edtSunapChongEk.FloatValue - edtCard.FloatValue -
                                 edtGammyun.FloatValue;
                          //2009.9.28
                   end;
                   //감액 = 받을금액 - 수납금액
                   //  edtGammyun.FloatValue := edtSunapChongEk.FloatValue - edtSunap.FloatValue - edtDangMisu.FloatValue;
            end;

            //수납금액=카드+현금+현금영수증+무통장
            edtSunap.FloatValue := edtCard.FloatValue + edtHyun.FloatValue + edtHyunReceipt.FloatValue +
                   edtTong.FloatValue;
     }

     //ToDo : 클릭  분납버튼 눌러서 금액 입력하면 그 창으로 값이 들어가도록 하자.
     editColorInit;
//    (sender as TadvEdit).color := clWhite;
     chkBunNapButton := (sender as TadvEdit).tag;

end;
procedure Tsunap_f.editColorInit;
begin

     edtCard.color        :=      $00FFFFC8 ;
     edtHyun.color        :=      $00FFFFC8 ;
     edtHyunReceipt.color :=      $00FFFFC8 ;
     edtTong.color        :=      $00FFFFC8 ;
     edtTong2.color       :=      $00FFFFC8 ;
     edtTongReceipt.color :=      $00FFFFC8 ;

end;

procedure Tsunap_f.edtCardChange(Sender: TObject);
begin
     {
          if (edtSunapChongEk.FloatValue > 0) and (edtCard.FloatValue < edtSunapChongEk.FloatValue)
                 then
                 //받을금액이 있으면
          begin
                 if edtSunapChongEk.FloatValue >= edtcard.FloatValue then
                        edthyun.FloatValue := edtSunapChongEk.FloatValue - edtcard.FloatValue;
                 //현금= 받을금액 - 카드금액
          end;
      }
          //수납금액=카드+현금+현금영수증+무통장
  //   edtsunap.FloatValue := edthyun.FloatValue + edtcard.FloatValue + edttong.FloatValue + edttongReceipt.FloatValue + edtHyunReceipt.FloatValue;
 if isLoading=false then
     edtSunap.FloatValue := SetSunapValue;

    // edtgammyun.FloatValue := 0;
    // edtdangmisu.FloatValue := 0;
     btnSet(1);

     //  btnSave.enabled := true;
     //  btnsave.Caption := '수납등록';

end;

//* 현금금액 입력 --------------------------------------------------------------

procedure Tsunap_f.edtHyunChange(Sender: TObject);
begin

     btnSet(1);
    // edtsunap.FloatValue := edtcard.FloatValue + edttong.FloatValue + edttongReceipt.FloatValue + edthyun.FloatValue + edtHyunReceipt.FloatValue;
    if isLoading=false then
         edtSunap.FloatValue := SetSunapValue;

     //btnSave.enabled := true;
     //btnsave.Caption := '수납등록';

end;

//* 현금영수증 -----------------------------------------------------------------

procedure Tsunap_f.edtHyunReceiptExit(Sender: TObject);
begin
     //
end;
//* 무통장  --------------------------------------------------------------------

procedure Tsunap_f.edtTongChange(Sender: TObject);
begin
   //  edtsunap.FloatValue := edthyun.FloatValue + edtcard.FloatValue + edttong.FloatValue + edttongReceipt.FloatValue +  edtHyunReceipt.FloatValue;


    if isLoading=false then
     edtSunap.FloatValue := SetSunapValue;

     btnset(1);
end;

//* 수납일자라벨 클릭

procedure Tsunap_f.lblSunapClick(Sender: TObject);
begin
     sunapLoad(ma_chart, lblSunapDay.caption,
         // intToStr(cbTeam.itemindex + 1)
          cbDoc.ColumnItems[cbDoc.itemindex, 0]   , cbTeam.Text);

end;
//* 수납일자

procedure Tsunap_f.edtSunapDayKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          varcombo := true;
          fieldclear;
          sunapLoad(ma_chart, lblSunapDay.caption,
              // intToStr(cbTeam.itemindex + 1)
              cbDoc.ColumnItems[cbDoc.itemindex, 0]  , cbTeam.Text);

          hyunsum;

          SelectNext(Sender as TWinControl, True, True);
          key := #0;
     end;

end;

//* 보험본인 라벨 클릭

procedure Tsunap_f.lblBohumClick(Sender: TObject);
begin
     //       BohumekLoad;
end;

//* 오늘챠팅내역 ---------------------------------------------------------------

procedure Tsunap_f.lblTxClick(Sender: TObject);
begin
     txLoad(ma_chart);
end;
//*

procedure Tsunap_f.txLoad(chartNo: string);
var
     tFilename, memoryDay, memoryDayPlan, memoryHygine, memoryDoctor,
          memoryCouncil: string;
     varModTeeth0, varModTeeth1, varModTeeth2, varModTeeth3, varModTeeth4:
     string;
     imgCnt: integer;
begin
     //    tx_f := Ttx_f.Create(application);
     //    tx_f.grdTx.Clear;
    {     with dm_f.SqlWork do
         begin
              Close;
              Sql.Clear;
              Sql.Add('select * from chart_s');
              Sql.Add(' where chart=:chart');
              Sql.Add(' and code=''Tx.'' ');
              Sql.Add(' by jin_Day desc,nOrd asc');
              ParamByName('chart').AsString := jinryo_f.DchartNoEdit.Text;
              Open;
              First;
              tx_f.grdTx.Clear;
              if not isEmpty then
              begin
                   while not eof do
                   begin
                        tx_f.grdTx.AddRow;
                        tx_f.grdTx.Cells[0, tx_f.grdTx.RowCount - 1].AsString := FieldByName('jin_Day').AsString;
                        tx_f.grdTx.Cells[1, tx_f.grdTx.RowCount - 1].AsString := FieldByName('portion').AsString;
                        tx_f.grdTx.Cells[2, tx_f.grdTx.RowCount - 1].AsString := FieldByName('descript').AsString;
                        tx_f.grdTx.Cells[3, tx_f.grdTx.RowCount - 1].AsString := FieldByName('doctor').AsString;
                        tx_f.grdTx.Cells[4, tx_f.grdTx.RowCount - 1].AsString := FieldByName('Hygine').AsString;
                        Next;
                   end;
              end;
         end;
    }

     {    if jinryo_f.varFilter = true then
         begin
              tx_f.grdtx.Columns.Items[8].Visible := true;
         end
         else
         begin
              tx_f.grdtx.Columns.Items[8].Visible := false;
         end;

         with dm_f.SqlWork, tx_f.grdTx do
         begin
              Close;
              Sql.Clear;
              Sql.Add('Select * from chart_s');
              Sql.Add('Where Chart=:Chart ');
              if jinryo_f.varFilter = false then
                   Sql.Add(' and (fil <> ''1'' or fil is null)');
              Sql.Add('order by jin_day DESC, nOrd ASC');
              ParamByName('Chart').AsString := ChartNo;
              Open;
              First;
              if not IsEmpty then
              begin
                   imgCnt := 0;
                   while not eof do
                   begin

                        if FieldByName('portion').AsString <> '' then
                        begin
                             tFileName := 'APP' + IntToStr(imgCnt + 1);
                             MakeImage(FieldByName('portion').AsString, tFileName);
                             imgCnt := imgCnt + 1;
                        end;

                        AddRow;
                        if (fieldByName('jin_day').AsString <> memoryDay) then
                        begin
                             Cells[0, RowCount - 1].AsString := FieldByName('jin_day').AsString;
                        end;
                        Cells[1, RowCount - 1].AsString := FieldByName('portion').AsString;
                        Cells[2, RowCount - 1].AsString := FieldByName('descript').AsString;
                        Cells[3, RowCount - 1].AsString := FieldByName('price').AsString;
                        Cells[7, RowCount - 1].AsString := tFilename;

                        if FieldByName('fil').AsString = '1' then
                             Cells[8, RowCount - 1].AsBoolean := true
                        else
                             Cells[8, RowCount - 1].AsBoolean := false;

                        if (fieldByName('jin_day').AsString <> memoryDay) or
                             (fieldByName('hygine').AsString <> memoryHygine) then
                        begin
                             Cells[5, RowCount - 1].AsString := FieldByName('Hygine').AsString;
                        end;

                        if (fieldByName('jin_day').AsString <> memoryDay) or
                             (fieldByName('Doctor').AsString <> memoryDoctor) then
                        begin
                             Cells[4, RowCount - 1].AsString := FieldByName('Doctor').AsString;
                        end;

                        if (fieldByName('jin_day').AsString <> memoryDay) then
                        begin
                             with dm_f.SqlTemp do
                             begin
                                  Close;
                                  Sql.Clear;
                                  Sql.Add('Select yDay, yTime, yDamTeam, yRemark from yeyak');
                                  Sql.Add('Where YChartNo=:YChartNo and yjubsuDay=:yJubsuDay');
                                  if jinryo_f.varFilter = false then
                                       Sql.Add(' and (fil <> ''1'' or fil is null)');
                                  ParamByName('YChartNo').AsString := ChartNo;
                                  ParamByName('YJubsuDay').AsString := Cells[0, RowCount - 1].AsString;

                                  Open;
                                  if not isEmpty then
                                       Cells[6, RowCount - 1].AsString :=
                                            FieldByName('Yday').AsString + '/'
                                            + FieldByName('YTime').AsString + '   '
                                            + FieldByName('YdamTeam').AsString + '/'
                                            + FieldByName('YRemark').AsString
                                  else
                                       Cells[6, RowCount - 1].AsString := '';

                             end;
                        end;

                        tFileName := '';

        //chart_p의 Remark를 가져온다.
                        if fieldByName('jin_day').AsString <> memoryDay then
                        begin
                             with dm_f.Sqltemp, tx_f.grdTx do
                             begin
                                  Close;
                                  Sql.Clear;
                                  Sql.Add('Select * from chart_p');
                                  Sql.Add('Where Chart=:Chart and jin_day=:jin_day');
                                  if jinryo_f.varFilter = false then
                                       Sql.Add(' and (fil <> ''1'' or fil is null)');

                                  ParamByName('Chart').AsString := ChartNo;
                                  ParamByName('jin_Day').AsString := dm_f.sqlWork.FieldByName('jin_day').AsString;
                                  Open;
                                  First;
                                  if not IsEmpty then
                                  begin
                                       if trim(FieldByName('Remark').AsString) <> '' then
                                       begin
                                            while not eof do
                                            begin
                                                 AddRow;
                                                 Cells[2, RowCount - 1].AsString := '※Remark▶' + FieldByName('Remark').AsString;
                                                 next;
                                            end;
                                       end;
                                  end;
                             end; //Chart_p의 Remark를 가져온다.
                        end;
                        MemoryDay := fieldbyName('jin_day').AsString;
                        MemoryHygine := fieldByname('Hygine').AsString;
                        MemoryDoctor := fieldByname('Doctor').AsString;

                        next;
                   end;
              end
              else
              begin
                   with dm_f.Sqltemp, tx_f.grdTx do
                   begin
                        Close;
                        Sql.Clear;
                        Sql.Add('SELECT   * FROM      chart_p');
                        Sql.Add('WHERE not(jin_day IN (SELECT  jin_day FROM chart_s where chart=:chart))');
                        Sql.Add(' AND (chart = :chart)');
                        ParamByName('Chart').AsString := ChartNo;
                        Open;
                        First;
                        if not IsEmpty then
                        begin
                             if trim(FieldByName('Remark').AsString) <> '' then
                             begin
                                  while not eof do
                                  begin
                                       AddRow;
                                       Cells[0, RowCount - 1].AsString := FieldByName('jin_day').AsString;
                                       Cells[2, RowCount - 1].AsString := '※Remark▶' + FieldByName('Remark').AsString;
                                       next;
                                  end;
                             end;
                        end;
                   end; //Chart_p의 Remark를 가져온다.
              end;
         end;

         Tx_f.Show;
      }
end;
//*

procedure Tsunap_f.MakeImage(Flag: string; sName: string);
var
     SS: TSp;
begin
     if Flag <> '' then
     begin
          if not DirectoryExists('c:\teethTemp') then
               if not CreateDir('c:\teethTemp') then
                    raise Exception.Create('Cannot create ' +
                         'c:\teethTemp');
          SS := makesP(Flag);
          Image2.Canvas.Font.Size := 4;

          Image2.Canvas.TextOut(0, -1, SS.sP1);
          Image2.Canvas.TextOut(51, -1, SS.sP2);
          Image2.Canvas.TextOut(0, 12, SS.sP4);
          Image2.Canvas.TextOut(51, 12, SS.sP3);
          Image2.Canvas.MoveTo(0, 11);
          Image2.Canvas.LineTo(100, 11);
          Image2.Canvas.MoveTo(50, -1);
          Image2.Canvas.LineTo(50, 25);
          Image2.Picture.SavetoFile('c:\teethTemp\' + sName + '.bmp');
          Image2.picture := nil;

     end;
end;
//*

function Tsunap_f.makesP(flag: string): TsP;
var
     p: string;
     i: Integer;
begin
     if ((flag = 'All Teeth') or (flag = 'U/L') or (flag = '상/하악')) then
     begin
          Result.sp1 := '_7654321';
          Result.sp2 := '1234567_';
          Result.sp3 := '1234567_';
          Result.sp4 := '_7654321';
     end
     else
          if flag = 'All Milk Teeth' then
          begin
               Result.sp1 := '___EDCBA';
               Result.sp2 := 'ABCDE___';
               Result.sp3 := 'ABCDE___';
               Result.sp4 := '___EDCBA';
          end
          else
               if ((flag = '11-17,21-27') or (flag = 'U') or (flag = '상악')) then
               begin
                    Result.sp1 := '_7654321';
                    Result.sp2 := '1234567_';
                    Result.sp3 := '________';
                    Result.sp4 := '________';
               end

               else
                    if flag = 'UA' then
                    begin
                         Result.sp1 := '_____321';
                         Result.sp2 := '123_____';
                         Result.sp3 := '________';
                         Result.sp4 := '________';
                    end
                    else
                         if flag = 'LA' then
                         begin
                              Result.sp4 := '_____321';
                              Result.sp3 := '123_____';
                              Result.sp1 := '________';
                              Result.sp2 := '________';
                         end
                         else
                              if flag = 'UL' then
                              begin
                                   Result.sp1 := '________';
                                   Result.sp2 := '1234567_';
                                   Result.sp3 := '________';
                                   Result.sp4 := '________';
                              end
                              else
                                   if flag = 'UR' then
                                   begin
                                        Result.sp1 := '1234567_';
                                        Result.sp2 := '________';
                                        Result.sp3 := '________';
                                        Result.sp4 := '________';
                                   end
                                   else
                                        if flag = 'LR' then
                                        begin
                                             Result.sp4 := '1234567_';
                                             Result.sp2 := '________';
                                             Result.sp3 := '________';
                                             Result.sp1 := '________';
                                        end
                                        else
                                             if flag = 'LL' then
                                             begin
                                                  Result.sp3 := '1234567_';
                                                  Result.sp2 := '________';
                                                  Result.sp1 := '________';
                                                  Result.sp4 := '________';
                                             end

                                             else
                                                  if ((flag = '31-37,41-47') or (flag = 'L')) then
                                                  begin
                                                       Result.sp1 := '________';
                                                       Result.sp2 := '________';
                                                       Result.sp3 := '1234567_';
                                                       Result.sp4 := '_7654321';
                                                  end
                                                  else
                                                       if flag = '51-55,61-65' then
                                                       begin
                                                            Result.sp1 := '___EDCBA';
                                                            Result.sp2 := 'ABCDE___';
                                                            Result.sp3 := '________';
                                                            Result.sp4 := '________';
                                                       end
                                                       else
                                                            if flag = '71-75,81-85' then
                                                            begin
                                                                 Result.sp1 := '________';
                                                                 Result.sp2 := '________';
                                                                 Result.sp3 := 'ABCDE___';
                                                                 Result.sp4 := '___EDCBA';
                                                            end
                                                            else
                                                                 if flag = '' then
                                                                 begin
                                                                      Result.sp1 := '________';
                                                                      Result.sp2 := '________';
                                                                      Result.sp3 := '________';
                                                                      Result.sp4 := '________';
                                                                 end
                                                                 else
                                                                 begin
                                                                      Result.sp1 := '________';
                                                                      Result.sp2 := '________';
                                                                      Result.sp3 := '________';
                                                                      Result.sp4 := '________';
                                                                      p := '';
                                                                      for i := 1 to length(trim(flag)) do
                                                                      begin
                                                                           if Copy(flag, i, 1) = '#' then
                                                                           begin
                                                                                //                    if (p <> '') and (checkInt(P)) then
                                                                                if checkInt(P) then
                                                                                begin
                                                                                     case StrToInt(copy(p, 1, 1)) of
                                                                                          1:
                                                                                               Result.sP1 :=
                                                                                                    Trim(Copy(Result.sP1, 1,
                                                                                                    8 -
                                                                                                    StrToInt(copy(p, 2, 1)))
                                                                                                    + copy(p, 2, 1)
                                                                                                    + Copy(Result.sP1, 10 -
                                                                                                    StrToInt(copy(p, 2, 1)),
                                                                                                    8));
                                                                                          2:
                                                                                               Result.sP2 :=
                                                                                                    Trim(Copy(Result.sP2, 1,
                                                                                                    StrToInt(copy(p, 2, 1))
                                                                                                    - 1)
                                                                                                    + copy(p, 2, 1)
                                                                                                    + Copy(Result.sP2,
                                                                                                    StrToInt(copy(p, 2, 1))
                                                                                                    + 1, 8));
                                                                                          3:
                                                                                               Result.sP3 :=
                                                                                                    Trim(Copy(Result.sP3, 1,
                                                                                                    StrToInt(copy(p, 2, 1))
                                                                                                    - 1)
                                                                                                    + copy(p, 2, 1)
                                                                                                    + Copy(Result.sP3,
                                                                                                    StrToInt(copy(p, 2, 1))
                                                                                                    + 1, 8));
                                                                                          4:
                                                                                               Result.sP4 :=
                                                                                                    Trim(Copy(Result.sP4, 1,
                                                                                                    8 -
                                                                                                    StrToInt(copy(p, 2, 1)))
                                                                                                    + copy(p, 2, 1)
                                                                                                    + Copy(Result.sP4, 10 -
                                                                                                    StrToInt(copy(p, 2, 1)),
                                                                                                    8));
                                                                                          5:
                                                                                               Result.sP1 :=
                                                                                                    Trim(Copy(Result.sP1, 1,
                                                                                                    8 -
                                                                                                    StrToInt(copy(p, 2, 1)))
                                                                                                    + NumToChr(copy(p, 2, 1))
                                                                                                    + Copy(Result.sP1, 10 -
                                                                                                    StrToInt(copy(p, 2, 1)),
                                                                                                    8));
                                                                                          6:
                                                                                               Result.sP2 :=
                                                                                                    Trim(Copy(Result.sP2, 1,
                                                                                                    StrToInt(copy(p, 2, 1))
                                                                                                    - 1)
                                                                                                    + NumToChr(copy(p, 2, 1))
                                                                                                    + Copy(Result.sP2,
                                                                                                    StrToInt(copy(p, 2, 1))
                                                                                                    + 1, 8));
                                                                                          7:
                                                                                               Result.sP3 :=
                                                                                                    Trim(Copy(Result.sP3, 1,
                                                                                                    StrToInt(copy(p, 2, 1))
                                                                                                    - 1)
                                                                                                    + NumToChr(copy(p, 2, 1))
                                                                                                    + Copy(Result.sP3,
                                                                                                    StrToInt(copy(p, 2, 1))
                                                                                                    + 1, 8));
                                                                                          8:

                                                                                               Result.sP4 :=
                                                                                                    Trim(Copy(Result.sP4, 1,
                                                                                                    8 -
                                                                                                    StrToInt(copy(p, 2, 1)))
                                                                                                    + NumToChr(copy(p, 2, 1))
                                                                                                    + Copy(Result.sP4, 10 -
                                                                                                    StrToInt(copy(p, 2, 1)),
                                                                                                    8));
                                                                                     end;
                                                                                     p := '';
                                                                                end;
                                                                           end
                                                                           else
                                                                           begin
                                                                                if Copy(flag, i, 1) <> ',' then
                                                                                begin
                                                                                     p := p + Copy(flag, i, 1);
                                                                                end;
                                                                           end;
                                                                      end;
                                                                      if checkInt(P) then
                                                                      begin
                                                                           case StrToInt(copy(p, 1, 1)) of
                                                                                1:
                                                                                     Result.sP1 := Trim(Copy(Result.sP1, 1, 8 -
                                                                                          StrToInt(copy(p, 2, 1)))
                                                                                          + copy(p, 2, 1)
                                                                                          + Copy(Result.sP1, 10 -
                                                                                          StrToInt(copy(p, 2, 1)), 8));
                                                                                2:
                                                                                     Result.sP2 := Trim(Copy(Result.sP2, 1,
                                                                                          StrToInt(copy(p, 2, 1)) - 1)
                                                                                          + copy(p, 2, 1)
                                                                                          + Copy(Result.sP2, StrToInt(copy(p, 2,
                                                                                          1)) + 1, 8));
                                                                                3:
                                                                                     Result.sP3 := Trim(Copy(Result.sP3, 1,
                                                                                          StrToInt(copy(p, 2, 1)) - 1)
                                                                                          + copy(p, 2, 1)
                                                                                          + Copy(Result.sP3, StrToInt(copy(p, 2,
                                                                                          1)) + 1, 8));
                                                                                4:
                                                                                     Result.sP4 := Trim(Copy(Result.sP4, 1, 8 -
                                                                                          StrToInt(copy(p, 2, 1)))
                                                                                          + copy(p, 2, 1)
                                                                                          + Copy(Result.sP4, 10 -
                                                                                          StrToInt(copy(p, 2, 1)), 8));
                                                                                5:
                                                                                     Result.sP1 := Trim(Copy(Result.sP1, 1, 8 -
                                                                                          StrToInt(copy(p, 2, 1)))
                                                                                          + NumToChr(copy(p, 2, 1))
                                                                                          + Copy(Result.sP1, 10 -
                                                                                          StrToInt(copy(p, 2, 1)), 8));
                                                                                6:
                                                                                     Result.sP2 := Trim(Copy(Result.sP2, 1,
                                                                                          StrToInt(copy(p, 2, 1)) - 1)
                                                                                          + NumToChr(copy(p, 2, 1))
                                                                                          + Copy(Result.sP2, StrToInt(copy(p, 2,
                                                                                          1)) + 1, 8));
                                                                                7:
                                                                                     Result.sP3 := Trim(Copy(Result.sP3, 1,
                                                                                          StrToInt(copy(p, 2, 1)) - 1)
                                                                                          + NumToChr(copy(p, 2, 1))
                                                                                          + Copy(Result.sP3, StrToInt(copy(p, 2,
                                                                                          1)) + 1, 8));
                                                                                8:
                                                                                     Result.sP4 := Trim(Copy(Result.sP4, 1, 8 -
                                                                                          StrToInt(copy(p, 2, 1)))
                                                                                          + NumToChr(copy(p, 2, 1))
                                                                                          + Copy(Result.sP4, 10 -
                                                                                          StrToInt(copy(p, 2, 1)), 8));
                                                                           end;
                                                                      end;
                                                                 end;
end;
//*

function Tsunap_f.ChrToNum(f1: string): string;
begin
     if f1 = 'A' then
          Result := '1'
     else
          if f1 = 'B' then
               Result := '2'
          else
               if f1 = 'C' then
                    Result := '3'
               else
                    if f1 = 'D' then
                         Result := '4'
                    else
                         if f1 = 'E' then
                              Result := '5';
end;
//*

function Tsunap_f.NumToChr(f1: string): string;
begin
     if f1 = '1' then
          Result := 'A'
     else
          if f1 = '2' then
               Result := 'B'
          else
               if f1 = '3' then
                    Result := 'C'
               else
                    if f1 = '4' then
                         Result := 'D'
                    else
                         if f1 = '5' then
                              Result := 'E';
end;
//*

function Tsunap_f.chrToInt(f1: string): Integer;
begin
     Result := 0;
     if f1 = 'A' then
          Result := 1
     else
          if f1 = 'B' then
               Result := 2
          else
               if f1 = 'C' then
                    Result := 3
               else
                    if f1 = 'D' then
                         Result := 4
                    else
                         if f1 = 'E' then
                              Result := 5;

end;

procedure Tsunap_f.gridsum;
var
     i: integer;
     varBugase : double;
begin

     wNumEdit7.FloatValue := 0;
     varBugase := 0;


//     for i := 0 to grdBibo.Rowcount - 1 do
//     begin
//          wNumEdit7.FloatValue := wNumEdit7.FloatValue + grdbibo.Cells[1, i].AsFloat;
//          //sunapbibo의 합
//     end;


//     for i := 0 to grdBibo.Rowcount - 1 do
//     begin
//         if   grdBibo.cells[5, i].asString = 'V' then
//         varBugase := varBugase + grdbibo.Cells[1, i].AsFloat / 11;
//          //부가세의 합
//     end;
       edtBugase.FloatValue := varBugase;


     edtbonin1.FloatValue := edtboninJIn.FloatValue + wNumEdit7.FloatValue;
     edtChong1.FloatValue := edtChong2.FloatValue + edtbonin1.FloatValue;
     edtSunapChongEk.FloatValue := edtbonin1.FloatValue + edtbohum.FloatValue;

     //if  edtbonin1.FloatValue <>  wNumEdit7.FloatValue then
     //    edtbonin1.FloatValue := wNumEdit7.FloatValue ;

     //edtmf.FloatValue := grdbibo.Cells[1, 3].AsFloat;
  //   edthyun.FloatValue := (edtbonin1.FloatValue + edtbohum.FloatValue + edtEtc.FloatValue) -
  //          (edtcard.FloatValue + edttong.FloatValue) - edtGammyun.FloatValue; //2009.9.28
  //   edtsunap.FloatValue := edtSunapChongEk.FloatValue;

end;
//*

procedure Tsunap_f.lblHyunGeumClick(Sender: TObject);
begin
//     if enableBtn = false then
//          exit;
     {       //       edtHyunReceipt.SetFocus;
       //    if    edtHyun.FloatValue =0 then
       //    begin
         //   edtHyun.FloatValue := (edtbohum.FloatValue + edtbonin1.FloatValue)-(edtcard.FloatValue+edtHyunReceipt.FloatValue);
            edtHyunReceipt.FloatValue := 0;
            edtHyun.FloatValue := (edtbohum.FloatValue + edtbonin1.FloatValue) - edtcard.FloatValue;

            //edtCard.FloatValue := 0;
            //    end;
            }
     if lblhyungeum.Tag = 0 then
     begin
          lblhyungeum.Tag := 1;
          edtHyun.FloatValue := edtsunapchongek.FloatValue
               -   ( edtcard.FloatValue
                 + edttong.FloatValue
                 + edttong2.FloatValue
                 + edttongReceipt.FloatValue
                 + edtHyunReceipt.FloatValue
                 + edtGammyun.FloatValue ) ;

     end
     else
     begin
          lblhyungeum.Tag := 0;
          edtHyun.FloatValue := 0;
     end;
end;

procedure Tsunap_f.setHwanBul;
begin
     pnlHwanBul.Left := 240;
     pnlHwanBul.top := 230;
     pnlHwanBul.visible := not pnlHwanBul.visible;
     if pnlHwanBul.visible then
     begin
          edtsayu.SetFocus;
     end;
end;

// 리콜저장 --------------------------------------------------------------------
//*

procedure Tsunap_f.Button1Click(Sender: TObject);
begin
     YRecallSave;
end;
//* YRecall저장

procedure Tsunap_f.YRecallSave;
var
     nRow: integer;
     maxRCode: string;
begin

     with Dm_f.SqlWork do
     begin

          Close;
          Sql.Clear;
          Sql.Add('Select Rccode from YRecall');
          Sql.Add('Where RcCode=:RcCode');
          ParamByName('RcCode').AsString := RecallCodeSet;
          Open;
          if not IsEmpty then
          try
               with Dm_f.SqlWork do
               begin
                    SQL.Text := SQL_UPDATE_YRECALL;
                    ParamByName('RcCode').AsString :=
                         RecallCodeSet;
                    ParamByName('RcDate').AsString :=
                         formatDatetime('YYYY-MM-DD',
                         DtRecall.date);
                    ParamByName('RcTime').AsString := '00' + ':'
                         +
                         '00';
                    ParamByName('RcRegDate').AsString :=
                         FormatDateTime('YYYY-MM-DD',
                         Now);
                    ParamByName('RcDamDang').AsString := '';
                    ParamByName('RcChart').AsString :=
                         ma_chart;
                    ParamByName('RcName').AsString :=
                         ma_paName;
                    ParamByName('RcTel').AsString := ma_c_Phone;//// main_f.edtCphone.text;
                    ParamByName('RcRemark').AsString :=
                         cbRecall.Text;
                    ParamByName('RcCheck').AsBoolean := false;
                    ParamByName('RcCheckDay').AsString := '';
                    ParamByName('RcBigo').AsString := '';
                    ExecSQL;
                    ShowMessage('리콜저장 되었습니다.');
               end;
          except
               on E: Exception do
               begin
                    ShowMessage(E.Message +
                         ' [YRecall저장오류]');
               end;
          end
          else
          try
               with Dm_f.SqlWork do
               begin
                    SQL.Text := SQL_INSERT_YRECALL;
                    ParamByName('RcCode').AsString :=
                         RecallCodeSet;
                    ParamByName('RcDate').AsString :=
                         formatDatetime('YYYY-MM-DD',
                         DtRecall.date);
                    ParamByName('RcTime').AsString := '00' + ':'
                         +
                         '00';
                    ParamByName('RcRegDate').AsString :=
                         FormatDateTime('YYYY-MM-DD',
                         Now);
                    ParamByName('RcDamDang').AsString := '';
                    ParamByName('RcChart').AsString :=
                         ma_chart;
                    ParamByName('RcName').AsString :=
                         ma_paName;
                    ParamByName('RcTel').AsString := ma_c_Phone;//  main_f.edtCphone.text;
                    ParamByName('RcRemark').AsString :=
                         cbRecall.Text;
                    ParamByName('RcCheck').AsBoolean := false;
                    ParamByName('RcCheckDay').AsString := '';
                    ParamByName('RcBigo').AsString := '';
                    ExecSQL;
                    ShowMessage('리콜저장 되었습니다.');
               end;
          except
               on E: Exception do
               begin
                    ShowMessage(E.Message +
                         ' [YRecall저장오류]');
               end;
          end;
     end;
end;
//*

function Tsunap_f.RecallCodeSet: string;
begin
     with Dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select Max(RCcode) As MaxRcCode from YRecall');
          Open;
          if FieldByName('MaxRcCode').AsString <> '' then
               result := formatFloat('00000000',
                    FieldByName('MaxRcCode').AsInteger + 1)
          else
               result := '00000001';

     end;

end;
//*

procedure Tsunap_f.SpeedButton1Click(Sender: TObject);
begin
     dtRecall.Date := now + 30;
end;
//*

procedure Tsunap_f.SpeedButton2Click(Sender: TObject);
begin
     dtRecall.Date := now + 90;
end;
//*

procedure Tsunap_f.SpeedButton3Click(Sender: TObject);
begin
     dtRecall.Date := now + 180;
end;

//* 영수증발행  ----------------------------------------------------------------

procedure Tsunap_f.PrintReceiptQrp;
var
     sYoungNo: string;
     i: Integer;
     yagan, gonghyu: string;
     VarSNo, VarJuso, VarSangho, VarName, VarDate: string;
     sDate, eDate, tDate: string;
begin

     {     if ((jinryo_f.CmbChojae.itemIndex = 2) or (jinryo_f.CmbChojae.itemIndex = 3)) then
          begin
               yagan := '0'; //야간공휴:아마 낮에만 보여지니가 공휴만 활성화 시키다...
               gonghyu := '1';
          end;
          VarSNo := dm_f.SaNo;
          VarJuso := dm_f.Address;
          VarSangho := dm_f.name;
          VarName := dm_f.Chief;
          VarDate := FormatDateTime('YYYY', now) + '년 ' +
               FormatDateTime('MM', now) + '월 ' +
               FormatDateTime('DD', now) + '일';

          if ma_chart <> '' then
          begin
               for i := 0 to 8 do
               begin
                    GrdCost2.Cells[1, i].AsString := '0';
                    GrdCost2.Cells[2, i].AsString := '0';
                    GrdCost2.Cells[3, i].AsString := '0';
                    GrdCost2.Cells[4, i].AsString := '0';
                    GrdCost2.Cells[5, i].AsString := '0';
               end;
               Recalc(StrToInt(jinryo_f.LblAge.Caption), jinryo_f.cmbJongbeul.itemIndex + 1, lblSunapDay.caption, ma_chart);
               sYoungNo := '';
               with dm_f.SqlWork do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('select jin_day,youngsu_num from jinryo_p where chart=:chart and jin_day=:jin_Day and jin_gu=''0'' and chojae<>''9'' and chojae<>''0'' ');
                    ParamByName('chart').AsString := ma_chart;
                    ParamByName('jin_day').AsString := lblSunapDay.caption;
                    Open;
                    First;
                    if not isEmpty then
                    begin
                         if FieldByName('youngsu_num').AsInteger > 0 then
                         begin
                              sYoungNo := FormatDateTime('yyyymmdd', jinryo_f.dMain.Date) + '-' + Formatfloat('000', FieldByName('youngsu_num').AsInteger);
                         end
                         else
                         begin
                              sYoungNo := jinryo_f.MakeNewYoungsu(jinryo_f.dMain.Date);
                         end;
                    end
                    else
                    begin
                         sYoungNo := jinryo_f.MakeNewYoungsu(jinryo_f.dMain.Date);
                    end;
               end;

               sDate := FormatDateTime('YYMMDD', jinryo_f.dMain.Date);
               eDate := FormatDateTime('YYMMDD', jinryo_f.dMain.Date);
               tDate := FormatDateTime('YY-MM-DD', jinryo_f.dMain.Date);

               youngsuPrt_f := TyoungsuPrt_f.Create(application);
               //왼쪽
               youngsuPrt_f.QRLabel9.Caption := ma_chart; //차트번호
               youngsuPrt_f.QRLabel10.Caption := ma_paName; //수진자
               youngsuPrt_f.QRLabel11.Caption := tDate; //진료일자

               if ((jinryo_f.CmbChojae.itemIndex = 2) or (jinryo_f.CmbChojae.itemIndex = 3)) then youngsuPrt_f.QRLabel12.Caption := '■야간' //야간공휴
               else youngsuPrt_f.QRLabel12.Caption := '';

               youngsuPrt_f.QRLabel50.Caption := formatFloat('###,##0', wNumlabel1.FloatValue); //진찰료

               youngsuPrt_f.QRLabel218.Caption := formatFloat('#,0', Realgrid14.Cells[1, 1].AsInteger); //급여계
               youngsuPrt_f.QRLabel237.Caption := formatFloat('#,0', Realgrid14.Cells[1, 3].AsInteger); //급여본담
               youngsuPrt_f.QRLabel238.Caption := formatFloat('#,0', Realgrid14.Cells[1, 2].AsInteger); //급여청구

               youngsuPrt_f.QRLabel219.Caption := formatFloat('#,0', Realgrid14.Cells[1, 4].AsInteger); //비급여계
               youngsuPrt_f.QRLabel239.Caption := formatFloat('#,0', 0); //비급여계

               youngsuPrt_f.QRLabel43.Caption := formatFloat('#,0', Realgrid14.Cells[1, 0].AsInteger); //by Ha.+ edtBohum.FloatValue); //+ Realgrid14.Cells[1, 4].AsInteger); //총액
               youngsuPrt_f.QRLabel47.Caption := formatFloat('#,0', Realgrid14.Cells[1, 5].AsInteger); //+ Realgrid14.Cells[1, 4].AsInteger); //본담총액
               youngsuPrt_f.QRLabel49.Caption := formatFloat('#,0', edtSunap.FloatValue); //수납액

               //급여
               youngsuPrt_f.QRLabel53.Caption := formatFloat('#,0', GrdCost2.cells[1, 0].AsInteger + GrdCost2.cells[2, 0].AsInteger); //투약
               youngsuPrt_f.QRLabel55.Caption := formatFloat('#,0', GrdCost2.cells[1, 1].AsInteger + GrdCost2.cells[2, 1].AsInteger); //마취료
               youngsuPrt_f.QRLabel56.Caption := formatFloat('#,0', GrdCost2.cells[1, 3].AsInteger); //처치수술
               youngsuPrt_f.QRLabel57.Caption := formatFloat('#,0', GrdCost2.cells[1, 4].AsInteger + GrdCost2.cells[2, 4].AsInteger); //검사
               youngsuPrt_f.QRLabel58.Caption := formatFloat('#,0', GrdCost2.cells[1, 5].AsInteger + GrdCost2.cells[2, 5].AsInteger); //방사선
               youngsuPrt_f.QRLabel59.Caption := formatFloat('#,0', GrdCost2.cells[2, 3].AsInteger); //재료대
               youngsuPrt_f.QRLabel201.Caption := formatFloat('#,0', GrdCost2.cells[1, 7].AsInteger + GrdCost2.cells[2, 7].AsInteger); //기타
               youngsuPrt_f.QRLabel21.Caption := formatFloat('#,0', GrdCost2.cells[1, 8].AsInteger); //CT
               //비급여
               youngsuPrt_f.QRLabel184.Caption := formatFloat('#,0', GrdCost2.cells[3, 0].AsInteger + RealGrid3.cells[1, 0].AsInteger); //투약
               youngsuPrt_f.QRLabel186.Caption := formatFloat('#,0', GrdCost2.cells[3, 1].AsInteger + RealGrid3.cells[1, 1].AsInteger); //마취료
               youngsuPrt_f.QRLabel187.Caption := formatFloat('#,0', GrdCost2.cells[3, 3].AsInteger + RealGrid3.cells[1, 3].AsInteger); //처치수술
               youngsuPrt_f.QRLabel188.Caption := formatFloat('#,0', GrdCost2.cells[3, 4].AsInteger + RealGrid3.cells[1, 4].AsInteger); //검사료
               youngsuPrt_f.QRLabel189.Caption := formatFloat('#,0', GrdCost2.cells[3, 5].AsInteger + RealGrid3.cells[1, 5].AsInteger); //방사선
               youngsuPrt_f.QRLabel214.Caption := formatFloat('#,0', GrdCost2.cells[5, 6].AsInteger + RealGrid3.cells[1, 6].AsInteger); //보철교정
               youngsuPrt_f.QRLabel190.Caption := formatFloat('#,0', GrdCost2.cells[4, 6].AsInteger + GrdCost2.cells[0, 6].AsInteger + GrdCost2.cells[1, 6].AsInteger + GrdCost2.cells[2, 6].AsInteger + GrdCost2.cells[4, 3].AsInteger + GrdCost2.cells[4, 4].AsInteger + GrdCost2.cells[4, 5].AsInteger + GrdCost2.cells[4, 7].AsInteger); //재료대
               youngsuPrt_f.QRLabel209.Caption := formatFloat('#,0', RealGrid3.cells[1, 7].AsInteger); //기타
               youngsuPrt_f.QRLabel51.Caption := formatFloat('#,0', GrdCost2.cells[5, 8].AsInteger); //CT

               youngsuPrt_f.QRLabel22.Caption := sYoungNo;

               //오른쪽
               youngsuPrt_f.QRLabel69.Caption := ma_chart; //차트번호
               youngsuPrt_f.QRLabel70.Caption := ma_paName; //수진자
               youngsuPrt_f.QRLabel71.Caption := tDate; //진료일자
               if ((jinryo_f.CmbChojae.itemIndex = 2) or (jinryo_f.CmbChojae.itemIndex = 3)) then youngsuPrt_f.QRLabel72.Caption := '■야간' //야간공휴
               else youngsuPrt_f.QRLabel72.Caption := '';

               youngsuPrt_f.QRLabel110.Caption := formatFloat('###,##0', wNumlabel1.FloatValue); //진찰료

               youngsuPrt_f.QRLabel158.Caption := formatFloat('#,0', Realgrid14.Cells[1, 1].AsInteger); //급여계
               youngsuPrt_f.QRLabel177.Caption := formatFloat('#,0', Realgrid14.Cells[1, 3].AsInteger); //급여본담
               youngsuPrt_f.QRLabel178.Caption := formatFloat('#,0', Realgrid14.Cells[1, 2].AsInteger); //급여청구

               youngsuPrt_f.QRLabel159.Caption := formatFloat('#,0', Realgrid14.Cells[1, 4].AsInteger); //비급여계
               youngsuPrt_f.QRLabel179.Caption := formatFloat('#,0', 0); //비급여계

               youngsuPrt_f.QRLabel106.Caption := formatFloat('#,0', Realgrid14.Cells[1, 0].AsInteger); //by Ha.+ + edtBohum.FloatValue); //+ Realgrid14.Cells[1, 4].AsInteger); //총액
               youngsuPrt_f.QRLabel107.Caption := formatFloat('#,0', Realgrid14.Cells[1, 5].AsInteger); //+ Realgrid14.Cells[1, 4].AsInteger); //본담총액

               youngsuPrt_f.QRLabel109.Caption := formatFloat('#,0', edtSunap.FloatValue); //수납액
               //급여
               youngsuPrt_f.QRLabel113.Caption := formatFloat('#,0', GrdCost2.cells[1, 0].AsInteger); //투약
               youngsuPrt_f.QRLabel115.Caption := formatFloat('#,0', GrdCost2.cells[1, 1].AsInteger); //마취료
               youngsuPrt_f.QRLabel116.Caption := formatFloat('#,0', GrdCost2.cells[1, 3].AsInteger); //처치수술
               youngsuPrt_f.QRLabel117.Caption := formatFloat('#,0', GrdCost2.cells[1, 4].AsInteger); //검사
               youngsuPrt_f.QRLabel118.Caption := formatFloat('#,0', GrdCost2.cells[1, 5].AsInteger); //방사선
               youngsuPrt_f.QRLabel119.Caption := formatFloat('#,0', GrdCost2.cells[2, 0].AsInteger + GrdCost2.cells[2, 1].AsInteger + GrdCost2.cells[2, 3].AsInteger + GrdCost2.cells[2, 4].AsInteger + GrdCost2.cells[2, 5].AsInteger + GrdCost2.cells[2, 7].AsInteger); //재료대
               youngsuPrt_f.QRLabel141.Caption := formatFloat('#,0', GrdCost2.cells[1, 7].AsInteger); //기타
               youngsuPrt_f.QRLabel52.Caption := formatFloat('#,0', GrdCost2.cells[1, 8].AsInteger); //CT
               //비급여
               youngsuPrt_f.QRLabel124.Caption := formatFloat('#,0', GrdCost2.cells[3, 0].AsInteger + RealGrid3.cells[1, 0].AsInteger); //투약
               youngsuPrt_f.QRLabel126.Caption := formatFloat('#,0', GrdCost2.cells[3, 1].AsInteger + RealGrid3.cells[1, 1].AsInteger); //마취료
               youngsuPrt_f.QRLabel127.Caption := formatFloat('#,0', GrdCost2.cells[3, 3].AsInteger + RealGrid3.cells[1, 3].AsInteger); //처치수술
               youngsuPrt_f.QRLabel128.Caption := formatFloat('#,0', GrdCost2.cells[3, 4].AsInteger + RealGrid3.cells[1, 4].AsInteger); //검사료
               youngsuPrt_f.QRLabel129.Caption := formatFloat('#,0', GrdCost2.cells[3, 5].AsInteger + RealGrid3.cells[1, 4].AsInteger); //방사선
               youngsuPrt_f.QRLabel154.Caption := formatFloat('#,0', GrdCost2.cells[5, 6].AsInteger + RealGrid3.cells[1, 6].AsInteger); //보철교정
               youngsuPrt_f.QRLabel130.Caption := formatFloat('#,0', GrdCost2.cells[4, 6].AsInteger + GrdCost2.cells[0, 6].AsInteger + GrdCost2.cells[1, 6].AsInteger + GrdCost2.cells[2, 6].AsInteger + GrdCost2.cells[4, 3].AsInteger + GrdCost2.cells[4, 4].AsInteger + GrdCost2.cells[4, 5].AsInteger + GrdCost2.cells[4, 7].AsInteger); //재료대
               youngsuPrt_f.QRLabel149.Caption := formatFloat('#,0', RealGrid3.cells[1, 7].AsInteger); //기타
               youngsuPrt_f.QRLabel79.Caption := formatFloat('#,0', GrdCost2.cells[5, 8].AsInteger); //CT

               youngsuPrt_f.QRLabel82.Caption := sYoungNo;

               youngsuPrt_f.QRLabel80.caption := '';
               youngsuPrt_f.QRLabel81.caption := '';
               youngsuPrt_f.QRLabel111.caption := '';
               youngsuPrt_f.QRLabel112.caption := '';
               youngsuPrt_f.QLblHyun1.caption := '';
               youngsuPrt_f.QLblJumin1.caption := '';
               youngsuPrt_f.QLblAuthNo1.caption := '';
               youngsuPrt_f.QLblHyun2.caption := '';
               youngsuPrt_f.QLblJumin2.caption := '';
               youngsuPrt_f.QLblAuthNo2.caption := '';

               if cbPreview.Checked then
                    youngsuPrt_f.QuickRep1.Preview
               else youngsuPrt_f.QuickRep1.Print;

               youngsuPrt_f.Free;
               youngsuPrt_f := nil;
          end;   }
end;
//*

procedure Tsunap_f.Recalc(nAge, nJongbeul: Integer; jin_day, chart: string);
var
     i, nKumak, nDanga: Integer;
     suKorName, suKey, suGu1, suGu3 : string;

      soaGasan, simGasan: string;

      nQty  , nilsu, nDanQty: integer;

      gub_gu : string;
begin
       GrdCost2.cells[0, 1]   := '주사';
       GrdCost2.cells[0, 2]   := '마취';
       GrdCost2.cells[0, 3]   := '20';
       GrdCost2.cells[0, 4]   := '처치 수술';
       GrdCost2.cells[0, 5]   := '검사';
       GrdCost2.cells[0, 6]   := '방사선';
       GrdCost2.cells[0, 7]   := '보철 교정';  //'초음파유도료';//
       GrdCost2.cells[0, 8]   := 'CT진단료';
       GrdCost2.cells[0, 9]   := 'MRI진단료';
       GrdCost2.cells[0, 10]  := '없음';
       GrdCost2.cells[0, 11]  := '기타';
     with dm_f.SqlTemp do
     begin

          Close;
          Sql.Clear;
          Sql.Add('select * from jinryo_s where jubsu_id=:jubsu_id and chart=:Chart and jin_day=:Jin_day');
          ParamByName('jubsu_id').AsString := lblJubsuId.Caption;
          ParamByName('Jin_day').AsString := jin_day;
          ParamByName('chart').AsString := chart;
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin

                     suKorName := FieldByName('su_kor_name').AsString ;
                     suKey     := FieldByName('su_Key').AsString ;
                     suGu1  :=   FieldByName('su_gu1').AsString ;
                     suGu3  :=   FieldByName('su_gu3').AsString;

                     gub_gu   :=   FieldByName('gub_gu').asString;

                     nQty     :=   FieldByName('jin_qty').AsInteger;


                    if suGu3 = '09' then
                    begin // su_gu3  내복
                      nilsu      :=   FieldByName('div').AsInteger;
                    end
                    else
                    begin
                        nilsu    :=   FieldByName('jin_ilsu').AsInteger;

                    end;


                     nDanQty    :=   FieldByName('dan_qty').AsInteger;

                     soaGasan  :=   FieldByName('jin_soa').AsString;
                     simGasan  :=   FieldByName('jin_simya').AsString;

                   // nAge:=   jumintoNai(ma_jumin); ;

                    nKumak := CalcKumak5(dm_f.SqlTemp, nAge, nJongbeul,   True);

                  //  nQty    := aGrid.floats[3, i];  // 용량
                  //  nilsu   := aGrid.ints[4, i];    // 총투
                  //  nDanQty := aGrid.ints[5, i];    // 일수
                  //
                  //
                  //
                  //  soaGasan := aGrid.Cells[12, i];
                  //  simGasan := aGrid.Cells[13, i];



                  //  nAge:=   jumintoNai(ma_jumin); ;

//                    nDanga := getSugaGeum(suKey, // varCode:string;
//                            jin_day ,        // jinday:string;
//                            gub_gu  );       //
//
//
//                    nKumak := CalcKumak(suKey, // :string;
//                            nDanga, // :integer ;
//                            nQty, // :integer ;
//                            nilsu, // :integer ;
//                            nDanQty, // :integer ;
//                            jin_day,
//                            soaGasan, // : string;
//                            simGasan, // : string;
//                            true,
//                           inttostr( nAge));



                    //행위별 그리드로 채워 넣기
                    if (FieldByName('su_gu3').AsString <> '') then
                    begin
                         case FieldByName('su_gu3').AsInteger of
                              12..18:  //주사
                                   begin


//suGu1
{1급여재료
2급여행위
3비급여재료
4비급여행위
5100/100
6비급여보훈재료
7비급여보훈행위
}


//suGu2
{1행위료
3약품
8치료재료
9수탁검사
}

//sugu3
{투약(내복약) '09';  0301
투약(외용약)  '10';  0302
주사          '12..18';  04
마취          '19';
처치          '23';
수술          '25';
검사          '30';
방사선        '31';
CT  진단료    '39';
MRI 진단료    '40';
초음파 진단료 '42';
초음파유도료  '43';
기타          '47';
보철          '48';
교정          '49';
임플란트      '28';

MRI 진단료
초음파  진단료
CT  진단료
}


                                        if
                                             FieldByName('su_gu1').AsString = '1' then     //1급여재료
                                             GrdCost2.ints[2, 1]  :=  GrdCost2.ints[2,  1] + nKumak
                                        else
                                             if
                                                  FieldByName('su_gu1').AsString = '3' then  //3비급여재료
                                                  GrdCost2.ints[4, 1] := GrdCost2.ints[4, 1] + nKumak
                                             else
                                                  if
                                                       FieldByName('su_gu1').AsString = '2' then     //2급여행위
                                                       GrdCost2.ints[1, 1] :=  GrdCost2.ints[1, 1] + nKumak
                                                  else
                                                       if
                                                            FieldByName('su_gu1').AsString = '4' then//4비급여행위
                                                            GrdCost2.ints[3,  1] := GrdCost2.ints[3,  1] + nKumak;

                                        GrdCost2.ints[5, 1] :=  GrdCost2.ints[5,  1]  + nKumak;   //합계
                                   end;
                              19:  // 마취
                                   begin


                                        if
                                             FieldByName('su_gu1').AsString = '1' then
                                             GrdCost2.ints[2,  2] := GrdCost2.ints[2, 2] + nKumak
                                        else
                                             if
                                                  FieldByName('su_gu1').AsString = '3' then
                                                  GrdCost2.ints[4, 2] :=  GrdCost2.ints[4,  2] + nKumak
                                             else
                                                  if
                                                       FieldByName('su_gu1').AsString = '2' then
                                                       GrdCost2.ints[1,  2] := GrdCost2.ints[1, 2] + nKumak
                                                  else
                                                       if
                                                            FieldByName('su_gu1').AsString = '4' then
                                                            GrdCost2.ints[3, 2] :=  GrdCost2.ints[3,  2] + nKumak;
                                        GrdCost2.ints[5,  2] :=  GrdCost2.ints[5,  2] + nKumak;
                                   end;

                              20:
                                   begin

                                        if
                                             FieldByName('su_gu1').AsString = '1' then
                                             GrdCost2.ints[2,
                                                  3] :=
                                                  GrdCost2.ints[2,
                                                  3] + nKumak
                                        else
                                             if
                                                  FieldByName('su_gu1').AsString = '3' then
                                                  GrdCost2.ints[4,
                                                       3] :=
                                                       GrdCost2.ints[4,
                                                       3] + nKumak
                                             else
                                                  if
                                                       FieldByName('su_gu1').AsString = '2' then
                                                       GrdCost2.ints[1,
                                                            3] :=
                                                            GrdCost2.ints[1,
                                                            3] + nKumak
                                                  else
                                                       if
                                                            FieldByName('su_gu1').AsString = '4' then
                                                            GrdCost2.ints[3,
                                                                 3] :=
                                                                 GrdCost2.ints[3,
                                                                 3] + nKumak;
                                        GrdCost2.ints[5,
                                             3] :=
                                             GrdCost2.ints[5,
                                             3]
                                             + nKumak;
                                   end;

                              23, 25:  //처치 수술
                                   begin
                                        if
                                             FieldByName('su_gu1').AsString = '1' then
                                             GrdCost2.ints[2,
                                                  4] :=
                                                  GrdCost2.ints[2,
                                                  4] + nKumak
                                        else
                                             if
                                                  FieldByName('su_gu1').AsString = '3' then
                                                  GrdCost2.ints[4,
                                                       4] :=
                                                       GrdCost2.ints[4,
                                                       4] + nKumak
                                             else
                                                  if
                                                       FieldByName('su_gu1').AsString = '2' then
                                                       GrdCost2.ints[1,
                                                            4] :=
                                                            GrdCost2.ints[1,
                                                            4] + nKumak
                                                  else
                                                       if
                                                            FieldByName('su_gu1').AsString = '4' then
                                                            GrdCost2.ints[3,
                                                                 4] :=
                                                                 GrdCost2.ints[3,
                                                                 4] + nKumak;
                                        GrdCost2.ints[5,
                                             4] :=
                                             GrdCost2.ints[5,
                                             4]
                                             + nKumak;
                                   end;

                              29, 30://검사
                                   begin


                                        if
                                             FieldByName('su_gu1').AsString = '1' then
                                             GrdCost2.ints[2,
                                                  5] :=
                                                  GrdCost2.ints[2,
                                                  5] + nKumak
                                        else
                                             if
                                                  FieldByName('su_gu1').AsString = '3' then
                                                  GrdCost2.ints[4,
                                                       5] :=
                                                       GrdCost2.ints[4,
                                                       5] + nKumak
                                             else
                                                  if
                                                       FieldByName('su_gu1').AsString = '2' then
                                                       GrdCost2.ints[1,
                                                            5] :=
                                                            GrdCost2.ints[1,
                                                            5] + nKumak
                                                  else
                                                       if
                                                            FieldByName('su_gu1').AsString = '4' then
                                                            GrdCost2.ints[3,
                                                                 5] :=
                                                                 GrdCost2.ints[3,
                                                                 5] + nKumak;
                                        GrdCost2.ints[5,
                                             5] :=
                                             GrdCost2.ints[5,
                                             5]
                                             + nKumak;
                                   end;

                              31..34:  //방사선
                                   begin

                                        if
                                             FieldByName('su_gu1').AsString = '1' then
                                             GrdCost2.ints[2,
                                                  6] :=
                                                  GrdCost2.ints[2,
                                                  6] + nKumak
                                        else
                                             if
                                                  FieldByName('su_gu1').AsString = '3' then
                                                  GrdCost2.ints[4,
                                                       6] :=
                                                       GrdCost2.ints[4,
                                                       6] + nKumak
                                             else
                                                  if
                                                       FieldByName('su_gu1').AsString = '2' then
                                                       GrdCost2.ints[1,
                                                            6] :=
                                                            GrdCost2.ints[1,
                                                            6] + nKumak
                                                  else
                                                       if
                                                            FieldByName('su_gu1').AsString = '4' then
                                                            GrdCost2.ints[3,
                                                                 6] :=
                                                                 GrdCost2.ints[3,
                                                                 6] + nKumak;
                                        GrdCost2.ints[5,
                                             6] :=
                                             GrdCost2.ints[5,
                                             6]
                                             + nKumak;
                                   end;
                              39:     //CT촬영
                                   begin

                                        if  FieldByName('su_gu1').AsString = '1' then             //급여행위
                                         begin
                                             GrdCost2.ints[2,  8]  :=  GrdCost2.ints[2, 8] + nKumak ;
                                             grdSunap.ints[3,  19] :=  GrdCost2.ints[3, 19] + nKumak ;
                                         end
                                         else
                                             if  FieldByName('su_gu1').AsString = '3' then
                                             begin
                                                  GrdCost2.ints[4, 8] := GrdCost2.ints[4, 8] + nKumak ;
                                             end
                                             else
                                                  if  FieldByName('su_gu1').AsString = '2' then  //비급여 행위
                                                  begin
                                                       GrdCost2.ints[1, 8] := GrdCost2.ints[1,  8] + nKumak;
                                                  end
                                                  else
                                                       if  FieldByName('su_gu1').AsString = '4' then
                                                       begin
                                                            GrdCost2.ints[3,  8] :=  GrdCost2.ints[3,  8] + nKumak;
                                                       end;

                                        GrdCost2.ints[5, 8] :=  GrdCost2.ints[5,  8]  + nKumak;//합계
                                   end;
                              40:     //MRI
                                   begin

                                        if
                                             FieldByName('su_gu1').AsString = '1' then
                                             GrdCost2.ints[2,
                                                  9] :=
                                                  GrdCost2.ints[2,
                                                  9] + nKumak
                                        else
                                             if
                                                  FieldByName('su_gu1').AsString = '3' then
                                                  GrdCost2.ints[4,
                                                       9] :=
                                                       GrdCost2.ints[4,
                                                       9] + nKumak
                                             else
                                                  if
                                                       FieldByName('su_gu1').AsString = '2' then
                                                       GrdCost2.ints[1,
                                                            9] :=
                                                            GrdCost2.ints[1,
                                                            9] + nKumak
                                                  else
                                                       if
                                                            FieldByName('su_gu1').AsString = '4' then
                                                            GrdCost2.ints[3,
                                                                 9] :=
                                                                 GrdCost2.ints[3,
                                                                 9] + nKumak;
                                        GrdCost2.ints[5,
                                             9] :=
                                             GrdCost2.ints[5,
                                             9]
                                             + nKumak;
                                   end;
                              45..49:  //기타 보철 교정
                                   begin
                                        if
                                             FieldByName('su_gu1').AsString = '1' then
                                             GrdCost2.ints[2,
                                                  7] :=
                                                  GrdCost2.ints[2,
                                                  7] + nKumak
                                        else
                                             if
                                                  FieldByName('su_gu1').AsString = '3' then
                                                  GrdCost2.ints[4,
                                                       7] :=
                                                       GrdCost2.ints[4,
                                                       7] + nKumak
                                             else
                                                  if
                                                       FieldByName('su_gu1').AsString = '2' then
                                                       GrdCost2.ints[1,
                                                            7] :=
                                                            GrdCost2.ints[1,
                                                            7] + nKumak
                                                  else
                                                       if
                                                            FieldByName('su_gu1').AsString = '4' then
                                                            GrdCost2.ints[3,
                                                                 7] :=
                                                                 GrdCost2.ints[3,
                                                                 7] + nKumak;
                                        GrdCost2.ints[5,
                                             7] :=
                                             GrdCost2.ints[5,
                                             7]
                                             + nKumak;
                                   end;
                           else


                              if FieldByName('su_gu1').AsString = '1' then
                                   GrdCost2.ints[2, 10]
                                        := GrdCost2.ints[2,
                                        10] +
                                        nKumak
                              else
                              begin
                                   if FieldByName('su_gu1').AsString
                                        = '3' then
                                        GrdCost2.ints[4, 10]
                                             := GrdCost2.ints[4,
                                             10] +
                                             nKumak
                                   else
                                        if FieldByName('su_gu1').AsString
                                             = '2' then
                                             GrdCost2.ints[1, 10]
                                                  := GrdCost2.ints[1,
                                                  10] +
                                                  nKumak
                                        else
                                             if FieldByName('su_gu1').AsString
                                                  = '4' then
                                                  GrdCost2.ints[3, 10]
                                                       := GrdCost2.ints[3,
                                                       10] +
                                                       nKumak;
                                 GrdCost2.ints[5, 10] :=
                                      GrdCost2.ints[5, 10]
                                      +
                                      nKumak;
                              end;
                         end;
                    end
                    else
                    begin
                         if FieldByName('su_gu1').AsString = '1' then
                              GrdCost2.ints[2, 11] :=
                                   GrdCost2.ints[2, 11]
                                   +
                                   nKumak
                         else
                              if FieldByName('su_gu1').AsString = '3' then
                                   GrdCost2.ints[4, 11] :=
                                        GrdCost2.ints[4, 11]
                                        +
                                        nKumak
                              else
                                   if FieldByName('su_gu1').AsString = '2' then
                                        GrdCost2.ints[1, 11] :=
                                             GrdCost2.ints[1, 11]
                                             +
                                             nKumak
                                   else
                                        if FieldByName('su_gu1').AsString = '4' then
                                             GrdCost2.ints[3, 11] :=
                                                  GrdCost2.ints[3, 11]
                                                  +
                                                  nKumak;
                         GrdCost2.ints[5, 11] :=
                              GrdCost2.ints[5, 1] +
                              nKumak;
                    end;

                    Next;
               end;
          end;

     end;

end;




procedure Tsunap_f.Recalc3(nAge, nJongbeul: Integer; jin_day, chart: string; isInpat : boolean=false);  //영수증에 찍자

var
     i, nKumak: Integer;
     iRow : integer;
     suGu3, suGu1 : integer;
     suGu2 :string;
     biRow : integer;
     arraySugu3: array[0..50] of integer;
  //   gub_gu : string;

     iGubBon, iGubChung, iBigub : array of double;

     nDanga: Integer;
     suKorName, suKey : string;

      soaGasan, simGasan: string;

      nQty  , nilsu, nDanQty : integer;

      gub_gu : string;

      nCt : integer;

      team : string; //'NHIC' 는 자기부담금 100으로 잡어...

       fBudamYul : double;

       sanjungArray05: TArray<string>;
       sanjungArray10: TArray<string>;
       sanjungArray20: TArray<string>;

       applySanjung : boolean;
       sanjungCode  : string;


begin
    if   sunap_f.lblTjung.caption    ='1' then
    begin
      applySanjung := true;     //산정특례 여부
      sanjungCode :=   sunap_f.lblTjungCode.caption ;  //산정특례코드
    end
    else
    begin
      applySanjung := false;
      sanjungCode  := '' ;

    end;

    case nJongbeul of
     0:  // 건보
     begin
        if isInPat = false then
        begin
             fBudamYul := 0.3;   //외래

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
        begin
             fBudamYul := 0.2;  // 입원


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





        end;
     end;
    end;




 //suGu1
{1급여재료
2급여행위
3비급여재료
4비급여행위
5100/100
6비급여보훈재료
7비급여보훈행위
}


//suGu2
{1행위료
3약품
8치료재료
9수탁검사
}

//sugu3
{투약(내복약) '09';  0301
투약(외용약)  '10';  0302
주사          '12..18';  04
마취          '19';
처치          '23';
수술          '25';
검사          '30';
방사선        '31';
CT  진단료    '39';
MRI 진단료    '40';
초음파 진단료 '41';
보철          '48';
교정          '49';
임플란트      '28';
기타          '50';

MRI 진단료
초음파  진단료
CT  진단료
}
{        items.Clear;
        items.AddObject('투약(내복약)', TObject(9)) ;
        items.AddObject('투약(외용약)', TObject(10)) ;
        items.AddObject('피하근육내주사', TObject(12)) ;
        items.AddObject('정맥내주사', TObject(13)) ;
        items.AddObject('수액제내주사', TObject(14)) ;
        items.AddObject('향정앤마약', TObject(16)) ;
        items.AddObject('마취', TObject(19)) ;
        items.AddObject('처치', TObject(23)) ;
        items.AddObject('수술', TObject(25)) ;
        items.AddObject('수탁검사', TObject(26)) ;
        items.AddObject('임플란트(급여)', TObject(28)) ;
        items.AddObject('자체검사', TObject(29)) ;
        items.AddObject('자체검사', TObject(30)) ;
        items.AddObject('방사선', TObject(31)) ;
        items.AddObject('치료재료', TObject(32)) ;
        items.AddObject('CT촬영', TObject(39)) ;
        items.AddObject('MRI', TObject(40)) ;
        items.AddObject('응급 및 회송', TObject(41)) ;
        items.AddObject('초음파', TObject(42)) ;
        items.AddObject('기타', TObject(50)) ;
        items.AddObject('보철', TObject(47)) ;
        items.AddObject('교정', TObject(48)) ;
        items.AddObject('임플란트(비급여)', TObject(49)) ;}

      setLength( iGubBon  ,30);
      setLength( iGubChung,30);
      setLength( iBigub   ,30);

      arraySugu3[1]    :=    0; //진찰료
      arraySugu3[2]    :=    1; //입원료
      arraySugu3[3]    :=    2; //식대
     // arraySugu3[3]    :=    4;

      arraySugu3[4]   :=    21;
      arraySugu3[5]   :=    21;
      arraySugu3[6]   :=    21;
      arraySugu3[7]   :=    21;
      arraySugu3[8]   :=    21;
      arraySugu3[9]   :=    21;
      arraySugu3[10]   :=    21;
      arraySugu3[11]   :=    21;
      arraySugu3[15]   :=    21;
      arraySugu3[16]   :=    21;
      arraySugu3[17]   :=    21;
      arraySugu3[18]   :=    21;

      arraySugu3[20]   :=    21;
      arraySugu3[21]   :=    21;
      arraySugu3[22]   :=    21;
      arraySugu3[24]   :=    21;
      arraySugu3[25]   :=    21;
      arraySugu3[26]   :=    9;  //수탁검사
      arraySugu3[27]   :=    21;
      arraySugu3[28]   :=    21;
      arraySugu3[29]   :=    9;   //자체검사
      arraySugu3[33]   :=    21;
      arraySugu3[37]   :=    21;
      arraySugu3[38]   :=    21;
      arraySugu3[44]   :=    21;
      arraySugu3[45]   :=    21;
      arraySugu3[46]   :=    21;

      arraySugu3[12]   :=    5;  //주사행위;
      arraySugu3[13]   :=    6;  //주사약품
      arraySugu3[14]   :=    6;  //주사약품
      arraySugu3[19]   :=    7; //마취료
      arraySugu3[23]   :=    8;  //처치및 수술
      arraySugu3[30]   :=    9; //검사료
      arraySugu3[31]   :=    10; //영상진단료
    //  arraySugu3[31]   :=    11; //방사선치료
      arraySugu3[32]   :=    12;//치료재료
      arraySugu3[34]   :=    13;
      arraySugu3[35]   :=    14;
      arraySugu3[36]   :=    15;
      arraySugu3[39]   :=    16; //CT
      arraySugu3[40]   :=    17; //MR
      arraySugu3[41]   :=    18; //PET
      arraySugu3[42]   :=    19; //초음파 진단
      arraySugu3[43]   :=    19; //초음파유도
      arraySugu3[47]   :=    21; //기타
      arraySugu3[48]   :=    21;
      arraySugu3[49]   :=    21;
      arraySugu3[50]   :=    21;

              for irow:= 0  to 29 do
              begin

                     iGubBon[irow]   := 0;
                     iGubChung[iRow] := 0;
                     iBigub[iRow]    := 0;

              end;


     case nJongbeul of
        3:   grdSunap.floats[6, 3] := nJinchalRyo   ;  //일반
        0:  //보험
          begin

             if ma_isbohum100 = '1' then
             begin

                  grdSunap.floats[6, 3] := nJinchalRyo

             end
             else
             begin
                  grdSunap.floats[3, 3] := round(nJinchalRyo * fBudamyul) ;   //진찰료 본인부담금
                  grdSunap.floats[4, 3] := round(nJinchalRyo * 1-fBudamyul);   //진찰료 공단부담금

             end;

          end;
        1: //보호1종
          begin
             if isInpat=false then
             begin

                  //본담액(처방전 없으면1500/있을땐 1000원만)
                   //진찰료
                  grdSunap.floats[3, 3] :=1500;// round(nJinchalRyo * 0.3) ;   //진찰료 본인부담금
                  grdSunap.floats[4, 3] :=  nJinchalRyo -1000 ;   //진찰료 공단부담금

             end
             else
             begin
                  //입원료
                  grdSunap.floats[3, 4] := 0 ;  //진찰료 본인부담금
                  grdSunap.floats[4, 4] :=  nJinchalRyo   ;  //진찰료 공단부담금

             end;
          end;
        2: //보호2종
          begin
             if isInpat=false then
             begin
                  //본담액(처방전 없으면1500/있을땐 1000원만)
                 //진찰료
                  grdSunap.floats[3, 3] := 1500;// round(nJinchalRyo * 0.3) ;   //진찰료 본인부담금
                  grdSunap.floats[4, 3] :=  nJinchalRyo -1000 ;   //진찰료 공단부담금

             end
             else
             begin
                  //입원료
                  grdSunap.floats[3, 4] :=  round(nJinchalRyo * 0.1) ;  //진찰료 본인부담금
                  grdSunap.floats[4, 4] :=  round(nJinchalRyo * 0.9) ;   //진찰료 공단부담금

             end;
          end;
     end;



     advstringGrid1.RemoveRows(1, advstringGrid1.RowCount - 1);

     with dm_f.SqlTemp do
     begin

          Close;
          Sql.Clear;
          Sql.Add('select * from jinryo_s where jubsu_id=:jubsu_id ');
          Sql.Add('and  chart=:Chart  and g_check <> ''G'' ');
        if isInpat = false then
        begin
          Sql.Add(' and jin_day=:Jin_day                   ');
          ParamByName('Jin_day').AsString := jin_day;
         end;
          ParamByName('jubsu_id').AsString := lblJubsuID.Caption;
          ParamByName('chart').AsString := chart;
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin

                     team := fieldByName('team').asString;

                     gub_gu   :=   FieldByName('gub_gu').asString;


                    if checkInt(FieldByName('su_gu3').AsString) = true then
                      suGu3 :=  FieldByName('su_gu3').AsInteger
                    else
                      suGu3 := 50;  //기타


                    if checkInt(FieldByName('su_gu1').AsString) = true then
                      suGu1 :=  FieldByName('su_gu1').AsInteger
                    else
                      suGu1 := 2;  //비급여 행위

                    //su_gu2

                    suGu2:=  FieldByName('su_gu2').AsString  ;



                    //case gub_gu of
                     case StrCase(gub_gu, ['0', '2', '9', 'B'])
                    of

                    1 :   //비급여라면...
                     begin
                          if suGu1 =1 then   //급여 재료
                             suGu1 := 3      //비급 재료
                             else  if suGu1 =2 then  //급여 행위
                              suGu1 := 4 ;   //비급행위
                     end;
                     0:   //급여라면...
                     begin
                          if suGu1 = 3 then   //비급 재료
                             suGu1 := 1       //급여 재료
                             else  if suGu1 =4 then   //비급 행위
                              suGu1 := 2 ;    //급여 행위
                     end;
                    end;

//
//                    //가산(행위, 소아 등 ) 금액 구하기
                    nKumak := CalcKumak5(dm_f.SqlTemp, nAge, nJongbeul,   True);


                     suKorName := FieldByName('su_kor_name').AsString ;
                     suKey     := FieldByName('su_Key').AsString ;
                   //  suGu1     :=   FieldByName('su_gu1').AsString ;
                   //  suGu3     :=   FieldByName('su_gu3').AsString;


                     nQty     :=   FieldByName('jin_qty').AsInteger;


                    if suGu3 = 9 then
                    begin // su_gu3  내복
                      nilsu      :=   FieldByName('div').AsInteger;
                    end
                    else
                    begin
                        nilsu    :=   FieldByName('jin_ilsu').AsInteger;

                    end;


                    if SuGu3 in [39, 40] then
                    begin
                        nCT:=  nCT +  nKumak;

                    end;

                     nDanQty    :=   FieldByName('dan_qty').AsInteger;

                     soaGasan  :=   FieldByName('jin_soa').AsString;
                     simGasan  :=   FieldByName('jin_simya').AsString;


                  //  nAge:=   jumintoNai(ma_jumin); ;

                    aSugu1:= inttostr(sugu1);// formatFloat('00', sugu1);
                   // aSugu2:= formatFloat('00', sugu2);
                    aSugu3:= inttostr(sugu3);//formatFloat('00', sugu3);


//                    nDanga := getSugaGeum(suKey, // varCode:string;
//                            jin_day ,        // jinday:string;
//                            gub_gu  );       //
//
//
//                    nKumak := CalcKumak(suKey, // :string;
//                            nDanga, // :integer ;
//                            nQty, // :integer ;
//                            nilsu, // :integer ;
//                            nDanQty, // :integer ;
//                            jin_day,
//                            soaGasan, // : string;
//                            simGasan, // : string;
//                            true,
//                           inttostr( nAge));

                   //1:진찰료

                  //   arraySugu3[suGu3]

                 //     arraySugu3: array[0..19] of integer = (1, 2, 3, 12, 13, 19,23, 30, 31, 32, 33,34,35,36, 39, 40,41, 42, 43, 47);


                      iRow := arraySugu3[suGu3] + 3;


                  //    if iRow <> biRow then
                  //   begin
                      iGubBon[iRow]    := 0;
                      iGubChung[iRow]  := 0;
                      iBigub[iRow]     := 0;
                     //  grdSunap.floats[6, iRow] := 0;
                  //    end;

                     if ma_isBohum100 ='1'then
                     begin
                          iBigub[iRow] :=    nKumak ;
                          grdSunap.floats[6, iRow] := grdSunap.floats[6, iRow] + iBigub[iRow] ;
                     end
                        else
                           if  suGu1 in [1, 2] then    //  급여 행위/재료
                           begin
                             //  grdSunap.floats[3, iRow] :=  grdSunap.ints[3, iRow] + trunc(nKumak * 0.3) ;
                             //  grdSunap.floats[4, iRow] :=  grdSunap.ints[4, iRow] + trunc(nKumak * 0.7) ;

                              //100 * Floor((nKumak * 0.3) / 100);
                              //
                           //    iGubBon[iRow]    :=  100 * Floor((nKumak * 0.3) / 100); //trunc(nKumak * 0.3) ;

                              if (suGu2 = 'B') and (gub_gu = '9') then   //100:80
                              begin

                                    iGubBon[iRow]    :=  nKumak * 0.8 ;   // 100/80

                              end
                              else
                              if (suGu2 = 'E') and (gub_gu = 'B') then   //100:90
                              begin

                                    iGubBon[iRow]    :=  nKumak * 0.9 ;   // 100/90

                              end
                              else
                              begin
                                  case nJongbeul of
                                     0:  // 건보
                                     begin

                                            iGubBon[iRow]    :=  nKumak * fBudamYul;//0.2;  // 입원

                                     end;
                                     1: //보호1종
                                     begin
                                        if isInPat = false then
                                            iGubBon[iRow]    :=  nKumak * 0   //외래
                                        else
                                            iGubBon[iRow]    :=  nKumak * 0;  // 입원

                                            if iRow in [19] then  //CT
                                            begin
                                                iGubBon[iRow]    :=  nCT * 0.05   //외래
                                            end;

                                     end;
                                     2: //보호2종
                                     begin
                                        if isInPat = false then
                                            iGubBon[iRow]    :=  nKumak * 0   //외래
                                        else
                                            iGubBon[iRow]    :=  nKumak * 0.1;  // 입원

                                     end;
                                     3:
                                     begin

                                     end;


                                  end;


                              end;

                               if team <> 'NHIC' then
                                    iGubChung[iRow]  := nKumak - iGubBon[iRow]  //iGubChung  + trunc(nKumak * 0.7) ;
                                 else
                                 begin
                                    iGubBon[iRow]    :=   0;
                                    iGubChung[iRow]  :=   0;
                                 end;


                               grdSunap.floats[3, iRow] :=  grdSunap.floats[3, iRow] + iGubBon[iRow] ;
                               grdSunap.floats[4, iRow] :=  grdSunap.floats[4, iRow] + iGubChung[iRow] ;

                           end
                           else  if  suGu1 in [3, 4] then    //비급여행위 재료
                               begin

                                 //  grdSunap.floats[6, iRow] := grdSunap.ints[6, iRow]  + nKumak ;

                                   iBigub[iRow] :=    nKumak ;
                                   grdSunap.floats[6, iRow] := grdSunap.floats[6, iRow] + iBigub[iRow] ;
                               end;



                          if team = 'NHIC' then  //공단은 비급여로 뽑자.
                          begin

                                    iBigub[iRow]             :=    nKumak ;
                                    grdSunap.floats[6, iRow] := grdSunap.floats[6, iRow] + iBigub[iRow] ;

                          end;



                    advstringGrid1.AddRow;
                    advstringGrid1.Cells[1, advstringGrid1.RowCount - 1] := FieldByName('su_key').AsString;
                    advstringGrid1.Cells[2, advstringGrid1.RowCount - 1] := FieldByName('su_kor_name').AsString;
                    advstringGrid1.Cells[3, advstringGrid1.RowCount - 1] := inttostr(nKumak);
                    advstringGrid1.Cells[4, advstringGrid1.RowCount - 1] := inttostr(sugu1);
                    advstringGrid1.Cells[5, advstringGrid1.RowCount - 1] := inttostr(sugu3);
                    advstringGrid1.Cells[6, advstringGrid1.RowCount - 1] := formatFloat('#,0',iBigub[iRow]);
                    advstringGrid1.Cells[7, advstringGrid1.RowCount - 1] := formatFloat('#,0',iGubBon[iRow]);
                    advstringGrid1.Cells[8, advstringGrid1.RowCount - 1] := formatFloat('#,0',iGubChung[iRow]);

                   {su_key
                   su_kor_name
                   Kumak
                   su_gu1
                   bigub
                   bon
                   chung}

                    biRow := iRow;
                    Next;
               end;
          end;

     end;
     UpdateSumCalc;
end;


procedure  TSunap_f.UpdateSumCalc;
var
     i: Integer;
begin

    edtSumBonin.floatValue     :=  grdSunap.ColumnSum(3, 3, grdSunap.RowCount-1);
    edtSumGongdan.floatValue   :=  grdSunap.ColumnSum(4, 3, grdSunap.RowCount-1);
    edtSumJunek.floatValue     :=  grdSunap.ColumnSum(5, 3, grdSunap.RowCount-1);
    edtSumBigub.floatValue     :=  grdSunap.ColumnSum(6, 3, grdSunap.RowCount-1);



end;


function Tsunap_f.CalcKumak5(AQuery: TuniQuery; nAge, nJongbeul: Integer;
     boolGasan: Boolean): Integer;
var
     Gasan, JongGasan: Single;
     nKumak: Single;
     gub_gu : string;
     suGu1  : integer;
     nDanga : integer;
     fQty   : double;
     nilsu  : integer;
begin

     with aQuery do
     begin
          result := 0;

          if boolGasan then
          begin
                gub_gu   :=  FieldByName('gub_gu').AsString ;
                if checkInt( FieldByName('su_gu1').AsString) =true then

                suGu1    :=  FieldByName('su_gu1').AsInteger
                else
                suGu1 :=3;

                    if gub_gu='2' then
                     begin
                          if suGu1 =1 then
                             suGu1 := 3
                             else  if suGu1 =2 then
                              suGu1 := 4 ;
                     end;


               if suGu1 =2 then //(FieldByName('su_gu1').AsString = '2') then
               begin
                    // 급여행위면
                    // gansan : 가산율(종별가산, 소아가산, 심야가산)

                    //  방사선 동일부위 : 2회째부터 5회까지 50%, 6회이상은 5회분
                    // 치근활택술 : 동일부위 2화째부터 50%만 산정
                    gasan := 1;

                    if FieldByName('jin_soa').AsString <> '' then
                    begin

                         if FieldByName('jin_soa').AsString = '8' then
                         begin
                              // 소아가산(su_soa=8) : 30% (8세미만), 10%(방사선)
                              if ((nAge >= 0) and (nAge < 8)) then
                              begin
                                   if
                                        FieldByName('su_gu3').AsString =
                                        '31' then //방사선
                                        gasan := gasan + 0.1
                                   else
                                        gasan := gasan + 0.3;
                                   //나머지
                              end;
                              // 노인가산(su_soa=8) : 마취에서 30%
                              if (nAge >= 70) then
                              begin
                                   if
                                        FieldByName('su_gu3').AsString =
                                        '19' then //마취
                                        gasan := gasan + 0.3;
                              end;
                         end;
                    end;

                    // 심야가산(su_yagan:1) : 마취(50%), 행위(50%)
                    if FieldByName('jin_simya').AsString <> '' then
                    begin
                         if FieldByName('jin_simya').AsString = '1' then
                         begin
                              gasan := gasan + 0.5;
                         end;
                    end;

                    //가산율 곱해서 10원미만에서 4사5입

                   nDanga := FieldByName('jin_danga').AsInteger ;

                   fQty   :=      FieldByName('jin_qty').AsFloat;
                   nilsu  :=      FieldByName('jin_ilsu').AsInteger ;


                    nKumak := Round2( nDanga  // FieldByName('jin_danga').AsInteger
                         *
                         fQty * //FieldByName('jin_qty').AsFloat *
                         nilsu * //FieldByName('jin_ilsu').AsInteger *
                         gasan, 1);

                    // 종별가산 : 병원-보험 20%, 보호 15% / 의원-보험 15%, 보호 11%
                    if configvalue.varGubun = '병원' then
                    begin
                         if nJongbeul = 0 then
                         begin
                              JongGasan := 1.2;
                         end
                         else
                              if ((nJongbeul = 1)
                                  or (nJongbeul = 2)) then
                              begin
                                   JongGasan := 1.15;
                              end
                              else
                              begin
                                   JongGasan := 1;
                              end;
                    end
                    else
                    begin
                         if nJongbeul = 0 then  //   건강보험
                         begin

                            if  FieldByName('su_gu3').AsString <>   '26' then
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
                    end;

                    //원미만에서 4사5입

                    Result := Round(Round2(nKumak * (round2(jonggasan *
                         100, 0) / 100), 0));
               end
               else
                  // if ((FieldByName('su_gu1').AsString = '1') or
                  //       (FieldByName('su_gu1').AsString = '3')) then
                   if suGu1 in [1,3] then     //재료면

                    begin

                         if ((FieldByName('dan_qty').AsString = '') or
                              (FieldByName('dan_qty').AsString = '0')) then
                         begin
                              //  Round(단가 * 수량 * 일수) ;
                              Result :=
                                   Round(FieldByName('jin_danga').AsInteger *
                                   FieldByName('jin_qty').AsFloat *
                                   FieldByName('jin_ilsu').AsInteger);
                         end
                         else
                         begin
                              //  Round(단가 * RoundTo(((수량 * 일수) / 사용단위),-2)) ;
                              Result :=
                                   Round(Round2(FieldByName('jin_danga').AsInteger *
                                   Round2(((FieldByName('jin_qty').AsFloat
                                   *
                                   FieldByName('jin_ilsu').AsInteger) /
                                   FieldByName('dan_qty').AsInteger),
                                   -2), 0));

                         end;
                    end
                    else
                    begin
                         //비급여 행위면
                         Result := Round(FieldByName('jin_danga').AsInteger *
                              FieldByName('jin_qty').AsFloat *
                              FieldByName('jin_ilsu').AsInteger);
                    end;
          end
          else
          begin
               Result := Round(FieldByName('jin_danga').AsInteger *
                    FieldByName('jin_qty').AsFloat *
                    FieldByName('jin_ilsu').AsInteger);
          end;
     end;

end;


procedure Tsunap_f.cbTeamChange(Sender: TObject);
begin
     varCombo := false;
end;
//* 수납내역

procedure Tsunap_f.btnSunapNeyukClick(Sender: TObject);
begin

     cmdchk := '1';
     {    if not assigned(sunapList_f) then
        begin
             sunapList_f := TsunapList_f.Create(application);
             sunapList_f.Show;
        end
        else
        begin
             sunapList_f.Show;
        end;

     if not assigned(sebusunap_f) then
     begin
            sebusunap_f := Tsebusunap_f.Create(application);
            sebusunap_f.Show;
     end
     else
     begin
            sebusunap_f.Show;
     end;  }
//     if not assigned(sunapsebulist_f) then
//     begin
//          sunapsebulist_f := Tsunapsebulist_f.Create(application);
//          sunapsebulist_f.sebusunapCalc(ma_chart);
//          sunapsebulist_f.caption := ma_paName + '(' +
//               ma_chart + ')' + '님의 수납내역';
//          sunapsebulist_f.Show;
//     end
//     else
//     begin
//          sunapsebulist_f.sebusunapCalc(ma_chart);
//          sunapsebulist_f.Show;
//     end;

     cmdchk := '0';

end;
//* 치료계획 자세히 ------------------------------------------------------------

procedure Tsunap_f.Button3Click(Sender: TObject);
begin
     //Todo : 치료계획 보기

   {
     if not assigned(txPlan_f) then
       begin
            txPlan_f := TtxPlan_f.Create(Application);
            txPlan_f.ShowModal;
       end
       else
       begin
            txPlan_f.ShowModal;
       end;
       }
end;
//*

procedure Tsunap_f.cbdangmisuClick(Sender: TObject);
begin
end;

//* 영수인 불러오기  -----------------------------------------------------------

procedure Tsunap_f.lblYungsuDblClick(Sender: TObject);
var
     path: string;
     varPort: string;
     FormInit: TIniFile;
     varSignKind: smallint;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varPort := FormInit.ReadString('SIGNPAD', 'PORT', '1');
     FormInit.Free;

     varSignKind := 1; //1:HSB 0:SERIAL
     //Todo : Sign Control
     {
        if (Sender as Tspskinlabel).caption = '영수인' then
        begin
             main_f.ESignCtl1.PortNo := strToInt(varPort);
             main_f.ESignCtl1.InitMSG := '[ENTER] 저장 [ESC] 취소 [C] 다시';
             main_f.ESignCtl1.LogFileName := 'signdata1';
             main_f.ESignCtl1.LogPathName := signPath;
             main_f.ESignCtl1.RunSignPad(varSignKind);

             LoadDataToBmp(Pic1, 'signdata1');
        end
        else
        begin
             main_f.ESignCtl1.PortNo := strToInt(varPort);
             main_f.ESignCtl1.InitMSG := '[ENTER] 저장 [ESC] 취소 [C] 다시';
             main_f.ESignCtl1.LogFileName := 'signdata2';
             main_f.ESignCtl1.LogPathName := signPath;
             main_f.ESignCtl1.RunSignPad(varSignKind);

             LoadDataToBmp(Pic2, 'signdata2');
        end;
        }
end;
//*

procedure Tsunap_f.LoadDataToBmp(varImage: TImage; varData: string);
var
     varSignData, sFileName, DATFile, sSize: string;
     sDatSize: longInt;

     f: file of Byte;
begin
     if FileExists(signPath + vardata + '.dat') then
     begin
          try
               AssignFile(f, signPath + vardata + '.dat');
               Reset(f);
               sFileName := signPath + varData;
               DATFile := sFileName + '.dat';
               sDatSize := filesize(f);
               sSize := intToStr(sDatSize);
               fnDllMakeBmp(DATFile, sSize, '250', '100', '3', sFileName +
                    '.BMP');
               varImage.Picture.LoadFromFile(signPath + varData + '.bmp');
          finally
               CloseFile(f);
          end;
     end;
end;
//*

procedure Tsunap_f.SaveToBmpData(varDay: string; varChart: string;
     varKind: string; varJikCode: string; varSignData: string);
begin
//
//     with dm_f.SqlTemp do
//     begin
//          Close;
//          SQL.Clear;
//          Sql.Add('select * from signData');
//          Sql.Add('where signDay=:signDay and chart=:chart and  kind=:kind and jikCode=:jikCode');
//          paramByName('signDay').asString := varDay;
//          paramByName('chart').asString := varChart;
//          paramByName('kind').asString := varKind;
//          paramByName('jikCode').asString := varJikCode;
//          open;
//          if isEmpty then
//          begin
//               with dm_f.SqlWork do
//               begin
//                    Close;
//                    SQL.Clear;
//                    Sql.Add('insert into signData');
//                    Sql.Add('(signDay, chart, kind, jikCode, signData) values');
//                    Sql.Add('(:signDay, :chart, :kind, :jikCode, :signData)');
//                    paramByName('signDay').asString := varDay;
//                    paramByName('chart').asString := varChart;
//                    paramByName('kind').asString := varKind;
//                    paramByName('jikCode').asString := varJikCode;
//                    if FileExists(varSignData) then
//                    begin
//                         paramByName('signData').LoadFromFile(varSignData, ftBlob);
//                    end
//                    else
//                    begin
//                         paramByName('signData').AsBlob := '';
//                    end;
//                    execSql;
//               end;
//          end
//          else
//          begin
//               with dm_f.SqlWork do
//               begin
//                    Close;
//                    SQL.Clear;
//                    Sql.Add('update signData set');
//                    Sql.Add(' signData=:signData');
//                    Sql.Add('where signDay=:signDay and chart=:chart and  kind=:kind and jikCode=:jikCode');
//                    paramByName('signDay').asString := varDay;
//                    paramByName('chart').asString := varChart;
//                    paramByName('kind').asString := varKind;
//                    paramByName('jikCode').asString := varJikCode;
//                    if FileExists(varSignData) then
//                    begin
//                         paramByName('signData').LoadFromFile(varSignData, ftBlob);
//                    end
//                    else
//                    begin
//                         paramByName('signData').asBlob := '';
//                    end;
//                    execSql;
//               end;
//          end;
//     end;
end;
//*

procedure Tsunap_f.LoadToBmpData(varSignData: string; varKind: string;
     varPic:
     TImage);
var
     aString: TStringList;
     MemSize: Integer;
     BStream: TStream;
     A: string;
     Buffer: array of Byte;
     i: integer;

begin

     if FileExists(signPath + varSignData + '.dat') then
          deleteFile(signPath + varSignData + '.dat');
     if FileExists(signPath + varSignData + '.bmp') then
          deleteFile(signPath + varSignData + '.bmp');

     with dm_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          Sql.Add('select * from signData');
          Sql.Add('where signDay=:signDay and chart=:chart and ');
          Sql.Add('kind=:kind and jikCode=:jikCode');
          paramByName('signDay').asString := lblSunapDay.caption;
          paramByName('chart').asString := ma_chart;
          paramByName('kind').asString := varKind;
          paramByName('jikCode').asString := cbHygine.text;
          open;
          if not isEmpty then
          begin
               //                  showmessage(trim(FieldByName('signData').AsString));
               if trim(FieldByName('signData').AsString) <> '' then
               begin
                    try
                         BStream :=
                              CreateBlobStream(FieldByName('signData'),
                              bmRead);
                         MemSize := BStream.Size;
                         SetLength(Buffer, MemSize);
                         Inc(MemSize);
                         BStream.Read(Pointer(Buffer)^, MemSize);
                         for i := 0 to Memsize - 1 do
                         begin
                              A := A + Char(Buffer[i]);
                         end;

                         try
                              aString := TStringList.Create;
                              aString.Add(A);
                              aString.SaveToFile(signPath +
                                   varSignData + '.dat');
                         finally
                              aString.Free;
                         end;

                    finally
                         BStream.Free;

                    end;
                    LoadDataToBmp(varPic, varSignData);
               end;
          end;

     end;
end;

function Tsunap_f.ilbanMisuCalc(chartNo: string): double;
var
     planChong, sunapilBanChong, sunapilBanChong2,
          sunapMisuChong, SunapBohumChong,
          SunapBohumMisuChong, sunapilbanmisu: integer;
begin
     with dm_f.SqlWork do
     begin

          Close;
          Sql.Clear;
          Sql.Add('select SUM(Bonin1) as SunapMisuChong from ma_sunap');
          //받을돈
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               SunapMisuChong := FieldByName('SunapMisuChong').AsInteger;
          end
          else
          begin

               SunapMisuChong := 0;

          end;

          //일반수납금액총액을 SUnap에서 계산하면 안됨. 입력 자체가 안됨....그렇다 치고
          //일반 수납 금액 총액은 sunapBibo에서 계산 하자...2008.01.11 하.
         {
         Close;
         Sql.Clear;
         Sql.Add('select SUM(sunapEk - bohum - iEtcEk - mf) as SunapChong, Sum(sunapEk) as sumsunapek, Sum(bohum) as sumbohum, sum(iEtcEk) as sumietcek,sum(mf) as summf from ma_sunap');
        // Sql.Add('select SUM(sunapEk -bonin - iEtcEk - mf) as SunapChong from ma_sunap');
         Sql.Add(' where chart=:chart');
         ParamByName('chart').AsString := chartNo;
         Open;
         if not isEmpty then
         begin
           showmessage('수납액:'+inttostr(FieldByName('sumSunapek').AsInteger));
           showmessage('보험액:'+inttostr(FieldByName('sumbohum').AsInteger));
           showmessage('기타액:'+inttostr(FieldByName('sumietcek').AsInteger));
           showmessage('교정액:'+inttostr(FieldByName('summf').AsInteger));

              SunapilBanChong := FieldByName('SunapChong').AsInteger;
         end
         else
         begin
              SunapilBanChong := 0;
         end;
         }
         {
         Close;
         Sql.Clear;
         // jinryo_p3 hangwi code
         // 17:비급여주사       ,19:비급여마취료
         // 20:비급여이학(물리치료),  23:비급여처치수술
         // 29:비급여검사료        ,  31:비급여방사선
         // 39:비급여CT            ,  40:비급여MRI
         // 47:보철                ,  48:교정
         // 49:임플란트            ,  50:기타 ( M/F 포함)
         Sql.Add('select SUM(geumek) as SunapChong from ma_sunap_bibo');
         Sql.Add(' where chart=:chart                               ');
         sql.add(' and hangmok <> ''mf''  and hangmok <> ''일반''   ');
         sql.add(' and hangmok <> ''17''  and hangmok <> ''20''     ');
         sql.add(' and hangmok <> ''23''  and hangmok <> ''29''     ');
         sql.Add(' and hangmok <> ''31''  and hangmok <> ''39''     ');
         sql.add(' and hangmok <> ''40''  and hangmok <> ''50''     ');
         sql.add(' and bibocheck <> ''1''     ');
         //Sql.Add(' where chart=:chart ');
         ParamByName('chart').AsString := chartNo;
         Open;
         if not isEmpty then
         begin
              SunapilBanChong := FieldByName('SunapChong').AsInteger;
         end
         else
         begin
              SunapilBanChong := 0;
         end;
         }
          Close;
          Sql.Clear;
          Sql.Add('select SUM(sunapek + Gammyunek-bohum) as SunapChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               SunapilBanChong := FieldByName('SunapChong').AsInteger;
          end
          else
          begin

               SunapilBanChong := 0;

          end;
          Close;
          Sql.Clear;
          Sql.Add('select SUM(sunapek + Gammyunek) as SunapChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               SunapilBanChong2 := FieldByName('SunapChong').AsInteger;
          end
          else
          begin

               SunapilBanChong2 := 0;

          end;

          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add('sum(subtotal) as sSubtotal');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart and chart_id=:chart_id');
          ParamByName('chart').AsString := chartNo;
          ParamByName('chart_id').AsString := varplanid;





          Open;
          if not isEmpty then
          begin
               PlanChong := FieldByName('sSubTotal').AsInteger;
          end
          else
          begin
               PlanChong := 0;
          end;
          close;
          sql.Clear;
          sql.Add('select sum(misuek) as ilbanmisuek from ma_sunap');
          sql.add('where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               sunapilbanmisu := FieldByName('ilbanmisuek').AsInteger;
          end
          else
          begin
               sunapilbanmisu := 0;
          end;

     end;
     if isinBohum = true then //보험금액이 총금액에 포함되었을때.
     begin
          //수납할 총금액은 치료계획금액 + 받을금액
          if planChong > 0 then
          begin
               result := (planChong - sunapilBanChong2 + sunapilbanmisu);
               result := result - edtbohum.FloatValue;
          end
          else
          begin

               result := SunapMisuChong - sunapilBanChong;

          end;
     end
     else
     begin
          if planChong > 0 then
          begin
               result := (planChong - sunapilBanChong + sunapilbanmisu);
          end
          else
          begin

               result := SunapMisuChong - sunapilBanChong;

          end;
     end;
     if result < 0 then
          result := 0;
end;

function Tsunap_f.ilbanMisuCalc2(chartNo: string): double;
var
     planChong, sunapilBanChong, sunapMisuChong, SunapBohumChong,
          SunapBohumMisuChong, sunapilbanmisu: integer;
begin
     with dm_f.SqlWork do
     begin

          Close;
          Sql.Clear;
          Sql.Add('select SUM(iilbanEk) as SunapMisuChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               SunapMisuChong := FieldByName('SunapMisuChong').AsInteger;
          end
          else
          begin

               SunapMisuChong := 0;

          end;

          {  Close;
            Sql.Clear;
            Sql.Add('select SUM(sunapEk - bohum - iEtcEk - mf) as SunapChong from ma_sunap');
            Sql.Add(' where chart=:chart');
            ParamByName('chart').AsString := chartNo;
            Open;
            if not isEmpty then
            begin
                 SunapilBanChong := FieldByName('SunapChong').AsInteger;
            end
            else
            begin
                 SunapilBanChong := 0;
            end;
           }
          Close;
          Sql.Clear;
          // jinryo_p3 hangwi code
          // 17:비급여주사       ,19:비급여마취료
          // 20:비급여이학(물리치료),  23:비급여처치수술
          // 29:비급여검사료        ,  31:비급여방사선
          // 39:비급여CT            ,  40:비급여MRI
          // 47:보철                ,  48:교정
          // 49:임플란트            ,  50:기타 ( M/F 포함)
          Sql.Add('select SUM(geumek) as SunapChong from ma_sunap_bibo');
          Sql.Add(' where chart=:chart                               ');
          sql.add(' and hangmok <> ''mf''  and hangmok <> ''일반''   ');
          sql.add(' and hangmok <> ''17''  and hangmok <> ''20''     ');
          sql.add(' and hangmok <> ''23''  and hangmok <> ''29''     ');
          sql.Add(' and hangmok <> ''31''  and hangmok <> ''39''     ');
          sql.add(' and hangmok <> ''40''  and hangmok <> ''50''     ');
          sql.add(' and bibocheck <> ''1''     ');
          //Sql.Add(' where chart=:chart ');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               SunapilBanChong := FieldByName('SunapChong').AsInteger;
          end
          else
          begin
               SunapilBanChong := 0;
          end;

          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add('sum(subtotal) as sSubtotal');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               PlanChong := FieldByName('sSubTotal').AsInteger;
          end
          else
          begin
               PlanChong := 0;
          end;
          close;
          sql.Clear;
          sql.Add('select sum(misuek) as ilbanmisuek from ma_sunap');
          sql.add('where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               sunapilbanmisu := FieldByName('ilbanmisuek').AsInteger;
          end
          else
          begin
               sunapilbanmisu := 0;
          end;

     end;
     //수납할 총금액은 치료계획금액 + 받을금액

     if planChong > 0 then
     begin
          result := (planChong - sunapilBanChong + sunapilbanmisu);
     end
     else
     begin

          result := sunapMisuChong - sunapilBanChong;

     end;

end;

//*

function Tsunap_f.BohumMisuCalc(chartNo: string): double;
var
     planChong, sunapilBanChong, sunapMisuChong, SunapBohumChong,
          SunapBohumMisuChong: integer;
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select SUM(bohum) as SunapMisuChong from ma_sunap');
          Sql.Add(' where chart=:chart and tx <> ''미수수납''       ');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               SunapBohumMisuChong :=
                    FieldByName('SunapMisuChong').AsInteger;
          end
          else
          begin

               SunapBohumMisuChong := 0;

          end;

          Close;
          Sql.Clear;
          Sql.Add('select SUM(boHum) as BohumSunapChong from ma_sunap');
          //   Sql.Add('select SUM(ibohumek) as BohumSunapChong from ma_sunap');

          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               sunapBohumChong :=
                    FieldByName('BohumSunapChong').AsInteger;
          end
          else
          begin

               sunapBohumChong := 0;

          end;

     end;

     //수납할 총금액은 치료계획금액 + 받을금액
     result := (SunapBohumMisuChong) - (SunapBohumChong);

     if result < 0 then
          result := 0;

end;

procedure Tsunap_f.miniPrint;
var
     F: TextFile;
     a, b, c, d, e, g, h, j: string;
     varName, varTel, varWonjang, varSaup, varJuso, varEtc: string;
     varChong, varHyun, varCard: string;
     varDay, varChart, varHwanName: string;
     varName2, varTel2, varWonjang2, varSaup2, varJuso2: string;
     varPrt: boolean;
     varbochul, varGyojung, varImp, varmf, variletc: double;
     //varbochul, varGyojung, varImp, varmf,  variletc: string;
begin
//
//     varBochul := grdBibo.Cells[1, grdBibo.Find(0, '보철')].AsFloat;
//     varGyojung := grdBibo.Cells[1, grdBibo.Find(0, '교정')].AsFloat;
//     varImp := grdBibo.Cells[1, grdBibo.Find(0, '임플란트')].AsFloat;
//     varmf := grdBibo.Cells[1, grdBibo.Find(0, 'mf')].AsFloat;
//     variletc := grdBibo.Cells[1, grdBibo.Find(0, '기타')].AsFloat;
//
     with DM_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ReceiptMessage');
          open;
          //   ShowMessage('1');
          if not isEmpty then
          begin
               varEtc := fieldbyName('rMessage').AsString;
          end;
          // ShowMessage('2');

     end;

     varName2 := configvalue.varSaupname; // 상호명
     varWonjang2 := configvalue.varDaepyo; // 대표원장 이름 QuotedStr
     varSaup2 := configvalue.varSaupNo; // 사업자등록번호
     varJuso2 := configvalue.varAdd1 + ' ' + configvalue.varAdd2;
     // 사업장 소재지
     varTel2 := configvalue.varTel1;

     //ShowMessage('5');

     varChart := Format('%-20S', ['챠트번호']) + Format('%-2S', [' : ']) +
          ma_chart;
     varHwanName := Format('%-20S', ['환자성명']) + Format('%-2S', [' : ']) +
          ma_paName;
     varName := varname2;
     varTel := Format('%-10S', ['전화']) + Format('%-2S', [' : ']) + varTel2;
     varSaup := Format('%-10S', ['사업자번호']) + Format('%-2S', [' : ']) +
          varSaup2;
     varJuso := Format('%-10S', ['주소']) + Format('%-2S', [' : ']) +
          varJuso2;
     varWonjang := Format('%-10S', ['대표원장']) + Format('%-2S', [' : ']) +
          varWonjang2;
     varDay := formatDateTime('YYMMDDhhmmss', now);
     // ShowMessage('6');
     a := Format('%-20S', ['영수일자']) + Format('%-2S', [' : ']) +
          lblSunapDay.caption;
     h := Format('%-20S', ['영수인']) + Format('%-2S', [' : ']) +
          cbHygine.text;
     b := Format('%-20S', ['보철']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', varBochul) + ' 원';
     c := Format('%-20S', ['교정']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', varGyojung) + ' 원';

     d := Format('%-20S', ['임플란트']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', varImp) + ' 원';
     //displaywon(format('%15.0f', [varImp]))
     e := Format('%-20S', ['교정월비']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', varMf) + ' 원'
          + '(' + edtMonth.text + '월분)';
     g := Format('%-20S', ['보험']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', edtBohum.FloatValue) + ' 원';
     j := Format('%-20S', ['기타']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', variletc) + ' 원';
     varHyun := Format('%-20S', ['현금']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', edtHyun.FloatValue +
          edtTong.FloatValue+edtTong2.FloatValue)
          + ' 원';
     varCard := Format('%-20S', ['카드']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', edtCard.FloatValue) + ' 원';
     varChong := Format('%-20S', ['합계']) + Format('%-2S', [' : ']) +
          formatFloat('#,0', edtSunap.FloatValue) + ' 원';
     //   ShowMessage('7');
     try
          Assignfile(F, 'LPT1');
          //       ShowMessage('8');
          Rewrite(F);
          //     ShowMessage('9');
          varPrt := true;
     except
          on E: Exception do
          begin
               Closefile(F);
               //           ShowMessage('10');
               varPrt := false;
               //           ShowMessage('11');
               ShowMessage(E.Message + ' [수납 인쇄 오류]');
          end;
     end;
     if varPrt = true then
     begin
          //        ShowMessage('12');
          WriteLn(F, #27 + 'E' + #50); //barcode height
          //showmessage('121');
          WriteLn(F, varname);
          //showmessage('122');
          WriteLn(F, varJuso);
          //showmessage('123');
          WriteLn(F, varTel);
          //showmessage('124');
          WriteLn(F, varSaup);
          //showmessage('125');
          WriteLn(F, varWonjang);
          //showmessage('126');
          WriteLn(F, varEtc);
          //showmessage('127');
          WriteLn(F, '------------------------------------------');
          //showmessage('128');
          WriteLn(F, '#진료비 청구 내역');
          //showmessage('129');
          WriteLn(F, '------------------------------------------');
          //showmessage('1201');
          WriteLn(F, b);
          //showmessage('1202');
          WriteLn(F, c);
          //showmessage('1203');
          WriteLn(F, d);
          //showmessage('1204');
          WriteLn(F, e);
          //showmessage('1205');
          WriteLn(F, g);
          //showmessage('1206');
          WriteLn(F, j);
          //showmessage('1207');
          WriteLn(F, '------------------------------------------');
          //showmessage('1208');
          WriteLn(F, varchong);
          //showmessage('1209');
          WriteLn(F, '------------------------------------------');
          //showmessage('1210');
          WriteLn(F, '#진료비 수납 내역');
          //showmessage('1211');
          WriteLn(F, '------------------------------------------');
          //showmessage('1212');
          WriteLn(F, varHyun);
          //showmessage('1213');
          WriteLn(F, varcard);
          //        //showmessage('1214');
          WriteLn(F, '------------------------------------------');
          //        //showmessage('1215');
          WriteLn(F, varChart);
          //        //showmessage('1216');
          WriteLn(F, varHwanName);
          //       ShowMessage('1217');
          WriteLn(F, a);
          //       ShowMessage('1218');
          WriteLn(F, h);
          //        ShowMessage('1219');
          WriteLn(F, #29 + 'h' + #50); //barcode height
          //        ShowMessage('1220');
          WriteLn(F, #29 + 'w' + #100); //barcode width
          //        ShowMessage('1221');
          WriteLn(F, #29 + 'k' + '4' + varDay); //barcode
          //        ShowMessage('1222');
          WriteLn(F, '------------------------------------------');
          //        ShowMessage('1223');
          WriteLn(F, #13); //라인피드
          //        ShowMessage('1224');
          WriteLn(F, #13); //라인피드
          //       ShowMessage('1225');
          WriteLn(F, #13); //라인피드
          //      ShowMessage('1226');
          Write(F, #29 + 'V' + #1); //컷트
          //      ShowMessage('1227');
          Closefile(F);
     end;
end;

procedure Tsunap_f.edtbonin1Exit(Sender: TObject);
begin
     edtSunapChongEk.FloatValue := edtbonin1.FloatValue + edtbohum.FloatValue + edtEtc.FloatValue;

end;

procedure Tsunap_f.edtSunapChange(Sender: TObject);
begin
     btnSet(1);
    if isLoading  =  false then
     edtDangMisu.FloatValue :=
          edtSunapChongEk.FloatValue
           - edtSunap.FloatValue
           - edtGammyun.FloatValue ;
end;

procedure Tsunap_f.edtSunapChongEkKeyPress(Sender: TObject; var Key: Char);
begin
     edtCard.setfocus;
end;

procedure Tsunap_f.btnHwanbulClick(Sender: TObject);
begin
     setHwanBul;

end;

procedure Tsunap_f.btnCardConfirmClick(Sender: TObject);
var
     varGuemek : double;
begin
     // SunapKindView(pnlCard, btnCard, grdCard);

      varGuemek  :=  grdCard.ColumnSum(2, 1, grdCard.rowCount-1);
     if  varGuemek > 0 then
        edtCard.FloatValue := varGuemek ;

     pnlCard.visible := not pnlCard.visible;

end;

procedure Tsunap_f.edtHyunReceiptChange(Sender: TObject);
begin
     //      edtsunap.FloatValue := edthyun.FloatValue + edtcard.FloatValue +  edttong.FloatValue;
     btnSet(1);
   //  edtsunap.FloatValue := edtcard.FloatValue + edttong.FloatValue + edthyun.FloatValue +  edtHyunReceipt.FloatValue + edtTongReceipt.FloatValue;
 //    edtSunap.FloatValue := SetSunapValue;

     //btnSave.enabled := true;
     //btnsave.Caption := '수납등록';

end;

procedure Tsunap_f.edtbonin1Change(Sender: TObject);
begin
     btnSet(1);

     //btnSave.enabled := true;
     //btnsave.Caption := '수납등록';

end;

procedure Tsunap_f.cbkindChange(Sender: TObject);
begin

     btnSet(1);

     //btnSave.enabled := true;
     //btnsave.Caption := '수납등록`';

end;

procedure Tsunap_f.btnReceiptClick(Sender: TObject);
begin

     Printeceipt(checkbox2.Checked);

end;
procedure Tsunap_f.btnReqCertClick(Sender: TObject);
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
begin
 try
    LoadWebserviceDLL;



//     if (ma_jongbyul = 0) or
//          (jinryo_f.cmbJongbeul.ValueIndex =
//          3) then
//     begin
//          Showmessage('본작업은 의료보호 환자만 해당됩니다.');
//          exit;
//     end;

     if (JBonJunEdit.Text = '2') then
     begin
          Showmessage('전액 본인부담 대상자이므로 승인의뢰가 필요없습니다.');
          exit;
     end;

     if trim(lblSkey.caption) ='' then//Jinryo_f.RealGrid2.Cells[5, 0].AsString = '' then
     begin
          Showmessage('주상병기호가 누락되었습니다. 확인하세요.');
          exit;
     end;

     sSangkiho := trim(lblSkey.caption);//Trim(Jinryo_f.RealGrid2.Cells[5, 0].AsString);


     if trim( lblWonweNo.Caption ) <> '' then //.Edit7.Text <> '' then  // 처방전교부번호
          sYoungNo :=deldash(lblSunapDay.caption) +// FormatDateTime('yyyymmdd', Jinryo_f.dMain.Date) +
               Formatfloat('00000', StrToInt(trim( lblWonweNo.Caption ) ));
//
//
     if trim(lblWonweilsu.Caption)  <> '' then    // 처방일수
          sNaewon := trim(lblWonweilsu.Caption) ;

     sYN := 'N';

     if sYoungNo <> '' then
          sYN := 'Y';

     hkind:='M3';

     strJuminNo     := ma_jumin;  //저장전에는 값이 안들어간다.
     strPaitName    := ma_paName;  //저장전에는 값이 안들어간다.
     strkiho        := configvalue.varYoyang;
     clientInfo     := '127.0.0.1';
     strJumin2      := configvalue.varJumin;
     varJagyukID    := configvalue.varJagyukID;
     varJagyukPass  := configvalue.varJagyukPass;
     sDate          := delDash(lblSunapDay.caption);//formatDatetime('YYYMMDD', now);


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
           wNumEdit13.text, //본인 일부 부담금
           edtSukum.text, //건강생활 유지비 청구액
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
                   edtHwakinNo.Text := nhicInfo[5];
                   memResult.Text   := nhicInfo[13];
                   if edtHwakinNo.Text <> '' then
                    begin
                         with dm_f.sqlwork do
                         begin
                              close;
                              sql.clear;
                              sql.add('update jinryo_p set');
                              sql.add('HwakinNo=:HwakinNo ');
                              sql.add('where jinryo_pid=:jinryo_pid');
                              parambyname('jinryo_pid').AsString := '';

                              ParamByName('HwakinNo').AsString :=
                                    edtHwakinNo.Text ;

                              execsql;
                         end;
                    end;

          end;

   finally

        FreeLibrary(Hwebservice);

  end;
end;

procedure Tsunap_f.Printeceipt(bPreview:boolean);
var
     varPrinter: string;
     FormInit: Tinifile;
begin
     FormInit := Tinifile.Create(ExtractFilePath(ParamStr(0)) + 'db.INI');
     varPrinter := FormInit.ReadString('기타정보', 'PRINTER_TYPE', '');
     FormInit.Free;
     // PrintReceiptQrp;
     // PrintReceiptFrx;
     // PrintToSrp770II;


     Ibwon:=  ma_InOut ;


     if varPrinter = 'SRP770II' then
     begin
            PrintToSrp770II;
     end
     else
          if varPrinter = 'miniPrint' then
          begin
               miniPrint;
          end
     else
          if varPrinter = 'FirstData' then
          begin
                FirstDataPrint;
          end
          else
          begin
               PrintReceiptFrx(bPreview);
          end;

end;

procedure Tsunap_f.btnGammyunClick(Sender: TObject);
begin
     if enableBtn = false then
          exit;

     if edtGammyun.Tag = 0 then
     begin
          edtGammyun.Tag := 1;
          if edtSunapChongek.FloatValue > edtSunap.FloatValue then
               edtGammyun.FloatValue := edtSunapChongek.FloatValue - edtSunap.FloatValue;

     end
     else
     begin
          edtGammyun.Tag := 0;
          edtGammyun.FloatValue := 0;
     end;

end;

procedure Tsunap_f.btnTodaymisuClick(Sender: TObject);
begin
     if enableBtn = false then
          exit;

     if edtDangMisu.Tag = 0 then
     begin
          edtDangMisu.Tag := 1;
          if edtSunapChongek.FloatValue > (edtSunap.FloatValue + edtGammyun.FloatValue) then
               edtDangMisu.FloatValue := edtSunapChongek.FloatValue - edtSunap.FloatValue
                    -
                    edtGammyun.FloatValue;

     end
     else
     begin
          edtDangMisu.Tag := 0;
          edtDangMisu.FloatValue := 0;
     end;

end;

procedure Tsunap_f.btnCloseClick(Sender: TObject);
begin
     close;
end;

procedure Tsunap_f.btnCardCancelClick(Sender: TObject);
begin
     pnlCard.Visible := false;
     edtcard.FloatValue := varCardek;
     edtsunap.FloatValue := varSunapEk;
end;

procedure Tsunap_f.edtTongDayClick(Sender: TObject);
begin
     btnset(1);
end;

procedure Tsunap_f.edtYulKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   begin

          edtiDc.FloatValue :=    edtSumBigub.FloatValue * edtYul.FloatValue / 100;
             //  edtSunapChongEk.FloatValue  * edtYul.FloatValue / 100;

           if   (sender as TAdvEdit).FloatValue = 0  then
           begin
               // edtHyun.FloatValue  := 0;
               // edtSunap.FloatValue := 0;
           end
           else
           begin


               edtGammyun.FloatValue     :=   edtiDC.FloatValue ;


           end;

            edtiDC.FloatValue := 0;
            edtiTong.FloatValue := 0;
            edtiHyun.FloatValue := 0;
            edtiCard.FloatValue :=  edtSunapChongEk.FloatValue
                -  edtSunap.FloatValue - edtGammyun.FloatValue ;




        edtSunap.FloatValue    := SetSunapValue;



        edtdangmisu.FloatValue := edtSunapChongEk.FloatValue
                - edtSunap.FloatValue
                - edtGammyun.FloatValue ;



//        if edtSunapChongEk.FloatValue  - edtiDc.FloatValue  > 0 then
//              edtSunap.FloatValue := edtSunapChongEk.FloatValue  - edtiDc.FloatValue
//                 else
//              edtSunap.FloatValue := 0;

   end;
end;

procedure Tsunap_f.edtcertNoChange(Sender: TObject);
begin

     btnset(1);

end;

procedure Tsunap_f.rbJajinClick(Sender: TObject);
begin
     rbBalgeup.Checked :=  true;
     edtcertno.text := '010-0000-1234';

     cbCertKind.ItemIndex := 11;

end;

procedure Tsunap_f.memChamgoChange(Sender: TObject);
begin

    btnsave.enabled    := not isMagam;
    btnHwanbul.enabled := not isMagam;
    btnDel.enabled     := not isMagam;
    btnSign.enabled    := not isMagam;
    cbMod.enabled      := not isMagam;

end;

procedure Tsunap_f.rbBalgeupClick(Sender: TObject);
begin
     setHyunyoung(1);
     edtHyunReceipt.FloatValue := edtHyun.FloatValue;
end;

procedure Tsunap_f.rbMibalgeupClick(Sender: TObject);
begin
     setHyunyoung(0);
     edtHyunReceipt.FloatValue := 0;

end;

procedure Tsunap_f.setHyunyoung(varStat: integer);
begin
     case varStat of
          0:
               begin
                    pnlHyuncert.enabled := false;
                    lblNum.font.color := clGray;
                    //lblGeum.font.color := clGray;
                    lblCertno.font.color := clGray;
                    edtcertNo.font.color := clGray;
                    edtAdmitNo.font.color := clGray;
                    edtHyunReceipt.font.color := clMaroon; //clGray;
                    edtTongReceipt.font.color := clMaroon; //clGray;
                    rbgongje.font.color := clGray;
                    rbjichul.font.color := clGray;
                    rbjajin.font.color := clGray;

               end;
          1:
               begin
                    pnlHyuncert.enabled := true;
                    lblNum.font.color := clBlack;
                    //lblGeum.font.color := clBlack;
                    lblCertno.font.color := clBlack;
                    edtcertNo.font.color := clBlack;
                    edtAdmitNo.font.color := clBlack;
                    edtHyunReceipt.font.color := clBlack;
                    edtTongReceipt.font.color := clBlack;
                    rbgongje.font.color := clBlack;
                    rbjichul.font.color := clBlack;
                    rbjajin.font.color := clBlack;
               end;
     end;

end;

{procedure Tsunap_f.lblTong2Click(Sender: TObject);
begin
       if enableBtn= false then
       exit;

end;
}

procedure Tsunap_f.lblTong2Click(Sender: TObject); //by son
const
     sql_ma_sunap_tongplan = 'select * from  ma_sunap_tongplan' + #10#13 +
          'where jinryo_pid=:jinryo_pid';
var
     varHyun: string;
begin
     // if enableBtn= false then
    // exit;

//     tongplan_f := Ttongplan_f.Create(application);
//     tongplan_f.Caption := ma_paName + '(' + ma_chart +
//          ')님 통장입금 확인';
//
//     tongplan_f.Label1.Caption := '입금일';
//     tongplan_f.Label2.Caption := '입금자';
//     tongplan_f.Label3.Caption := '입금액';
//     tongplan_f.Edit1.Text := edtJinryoPid.Text;
//
//     {    with dm_f.sqlWork do
//         begin
//
//                Close;
//                SQL.Clear;
//                Sql.Text := sql_ma_sunap_tongplan;
//                paramByname('jinryo_pid').asString := edtJinryoPid.Text;
//                open;
//                if not isEmpty then
//                begin
//
//                       tongplan_f.edtTongday.Text :=
//                              fieldbyname('ibdate').asString;
//                       tongplan_f.edtName.text := fieldbyname('ibName').asString;
//                       tongplan_f.edtNumber.text :=
//                              fieldbyname('ibNumber').asString;
//                       tongplan_f.edtGeumek.FloatValue :=
//                              fieldbyname('ibgeumek').asFloat;
//                       if fieldbyname('Hyunreceipt').asString = '1' then
//                              tongplan_f.rbBalgeup.checked := true
//                       else
//                              tongplan_f.rbMiBalgeup.checked := true;
//
//                end
//                else
//                begin
//
//                       tongplan_f.edtTongday.Text := formatDateTime('YYYY-MM-DD',
//                              now);
//                       tongplan_f.edtName.text := ma_paName;
//                       tongplan_f.edtNumber.text := '';
//                       tongplan_f.edtGeumek.FloatValue := 0;
//                       tongplan_f.rbBalgeup.checked := false;
//                       tongplan_f.rbMiBalgeup.checked := false;
//
//                end;
//         end;
//      }
//     loadLastTongPlan;
//
//     if tongplan_f.Showmodal = mrOk then
//     begin
//
//          if tongplan_f.rbBalgeup.checked = true then
//               varhyun := '1'
//          else
//               varhyun := '0';
//          edtTong.FloatValue := tongplan_f.edtGeumek.FloatValue; //무통장액
//          edtcertNo.TEXT := tongplan_f.edtcertNo.TEXT;
//          edtAdmitNo.text := tongplan_f.edtAdmitNo.text;
//          edtHyunReceipt.FloatValue := tongplan_f.edtHyunReceipt.FloatValue;
//          rbBalgeup.checked := tongplan_f.rbBalgeup.checked;
//          rbMiBalgeup.checked := tongplan_f.rbMiBalgeup.checked;
//          rbgongje.checked := tongPlan_f.rbgongje.checked;
//          rbjichul.checked := tongPlan_f.rbjichul.checked;
//          rbjajin.checked := tongPlan_f.rbjajin.checked;
//
//          tongPlanupdate(tongplan_f.edtName.text,
//               tongplan_f.edtNumber.text,
//               tongplan_f.edtTongday.Text,
//               varHyun,
//               tongplan_f.edtGeumek.FloatValue);
//     end;

end;

procedure Tsunap_f.tongPlanupdate(varname, varNumber, varTongday,
     varHyunreceipt:
     string; varGeumek: double);
const
     sql_ma_sunap_tongplan =
          'UPDATE ma_sunap_tongplan SET  ' + #13#10 +
          'ibname   =:ibname ,           ' + #13#10 +
          'ibnumber =:ibnumber ,         ' + #13#10 +
          'ibgeumek =:ibgeumek ,         ' + #13#10 +
          'ibdate   =:ibdate ,           ' + #13#10 +
          'hyuncertno=:hyuncertno,       ' + #10#13 +
          'admitno=:admitno,             ' + #10#13 +
          'admitkind=:admitkind,         ' + #10#13 +
          'hyunreceipt   =:hyunreceipt   ' + #13#10 +
          'WHERE jinryo_pid=:jinryo_pid  ';

begin

//     with dm_f.sqlWork do
//     begin
//          Close;
//          SQL.Clear;
//          Sql.text := sql_ma_sunap_tongplan;
//
//          paramByname('ibdate').asString := varTongDay;
//          paramByname('jinryo_pid').asString := edtJinryoPid.Text;
//          paramByname('ibname').asString := varname;
//          paramByname('ibnumber').asString := varnumber;
//          paramByname('ibgeumek').asFloat := vargeumek;
//          paramByname('hyunreceipt').asString := varHyunreceipt;
//
//          paramByname('admitno').asstring := tongPlan_f.edtadmitno.text;
//          paramByname('hyuncertno').asstring :=
//               tongPlan_f.edtcertno.text;
//          if tongPlan_f.rbgongje.checked = true then
//               paramByname('admitkind').asString := '0';
//          if tongPlan_f.rbjichul.checked = true then
//               paramByname('admitkind').asString := '1';
//          if tongPlan_f.rbjajin.checked = true then
//               paramByname('admitkind').asString := '2';
//          ExecSQL;
//     end;

end;

procedure Tsunap_f.btnCancelhwanBulClick(Sender: TObject);
begin
     edtsayu.text := '';
     edtHwanbul.FloatValue := 0;
     cbHwanbulkind.Text := '';
     pnlHwanbul.Visible := false;
end;

procedure Tsunap_f.btnHwanBulSaveClick(Sender: TObject);
begin
     pnlHwanbul.Visible := false;
     case cbHwanbulkind.Itemindex of
          0: //현금환불
               begin
                    varHyunH1  := edtHwanbul.FloatValue * (-1);
               end;
          1: //카드취소
               begin
                    varcardH1  := edtHwanbul.FloatValue * (-1);
               end;
          2: //현금영수증
               begin
                   varHyunReceiptH1  := edtHwanbul.FloatValue * (-1);
               end;
          3: //통장
               begin
                    varTongH1  := edtHwanbul.FloatValue * (-1);
               end;

          4: //통장 현영
               begin
                    varTongHyunreceiptH1  := edtHwanbul.FloatValue * (-1);
               end;
          5: //기타
               begin
                    varTong2H1  := edtHwanbul.FloatValue * (-1);
               end;

               else
               begin

               end;
     end;




    if configvalue.varHyunSunapIn = '1' then //현금영수증금액이 현금에 포함됨
          varsunapH1  := varhyunH1  + varcardH1  + varHyunReceiptH1  + varTongH1 + varTongHyunreceiptH1+ varTong2H1
    else
          varsunapH1  := varhyunH1  + varcardH1  +   varTongH1 +   varTong2H1;



     sunapSaveHwanbul;


    sebusunapCalc(ma_chart);
end;

procedure Tsunap_f.edtsayuChange(Sender: TObject);
begin
     memChamgoH1.text :=
          '환불:' + edtsayu.text + '(' + cbHwanbulkind.text + ')';
end;

procedure Tsunap_f.rbGongjeClick(Sender: TObject);
begin
     rbBalgeup.Checked :=  true;

     if edtcertno.text = '' then
          edtcertno.text := ma_jumin;   // main_f.edtJumin.Text + main_f.edtJumin2.Text;


     cbCertKind.ItemIndex := 3;  //현금영수증 승인

end;

procedure Tsunap_f.btnCardCertClick(Sender: TObject);
begin
     certCard;

end;

procedure Tsunap_f.CertCard;
begin
//     if not assigned(kismain_f) then
//          kismain_f := Tkismain_f.Create(self);
//     kismain_f.AdvOfficeTabSet1.ActiveTabIndex := 0;
//     kismain_f.caption := '신용카드 승인';
//     kismain_f.lblCap.caption := '신용카드 승인';
//
//     kismain_f.varKind := 1;
//     kismain_f.pnlCashApproval.visible := false;
//     kismain_f.txtCard_Amount.text := floattostr(edtCard.FloatValue);
//     kismain_f.txtCard_CardNo.text := '';
//     kismain_f.edtcertno.text := '';
//     kismain_f.edtcertday.text := '';
//     kismain_f.edtPermitYear.text := '';
//     kismain_f.edtPermitMonth.text := '';
//     kismain_f.txtCard_Installment.text := '00';
//     // kismain_f.varterminalNo := edtterminalNo.text;
//     kismain_f.btnReq.caption := '승인요청';
//     if kismain_f.showmodal = mrOk then
//     begin
//          // showmessage('sunap save');
//          sunapSave;
//     end
//     else
//     begin
//          showmessage('카드승인에 실패했습니다.');
//
//     end;

end;

procedure Tsunap_f.certHyun;
begin
//     if not assigned(kismain_f) then
//          kismain_f := Tkismain_f.Create(self);
//     kismain_f.AdvOfficeTabSet1.ActiveTabIndex := 2;
//     kismain_f.caption := '현금영수증 승인';
//     kismain_f.lblCap.caption := '현금영수증 승인';
//     kismain_f.pnlCashApproval.visible := true;
//     kismain_f.varKind := 2;
//     kismain_f.txtCard_Amount.text := floattostr(edtHyunReceipt.FloatValue);
//     kismain_f.txtCard_CardNo.text := '';
//     kismain_f.edtcertno.text := '';
//     kismain_f.edtcertday.text := '';
//     kismain_f.edtPermitYear.text := '';
//     kismain_f.edtPermitMonth.text := '';
//     kismain_f.txtCard_Installment.text := '00';
//     //  kismain_f.varterminalNo := edtterminalNo.text;
//     kismain_f.txtCash_vat.text := '';
//     kismain_f.btnReq.caption := '승인요청';
//     if kismain_f.showmodal = mrOk then
//     begin
//          // showmessage('sunap save');
//          sunapSave;
//     end
//     else
//     begin
//          showmessage('현금영수증승인에 실패했습니다.');
//
//     end;

end;

procedure Tsunap_f.btnHyunCertClick(Sender: TObject);
begin
     certHyun;
end;

procedure Tsunap_f.edtCardKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          certCard;
end;

procedure Tsunap_f.edtHyunReceiptKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
          certHyun;
end;

procedure Tsunap_f.edtiCardChange(Sender: TObject);
begin

//     edtiHyun.FloatValue   :=   edtSunapChongEk.FloatValue
//          - edticard.FloatValue
//          - edtiDC.FloatValue;
//     edtiHyun.SelStart := length(edtiHyun.Text);

end;

procedure Tsunap_f.edtiCardKeyPress(Sender: TObject; var Key: Char);
begin

    if key = #13 then
    begin


//        edtHyun.FloatValue     :=  edtHyun.FloatValue + edtiHyun.FloatValue;
//        edtTong.FloatValue     :=  edtTong.FloatValue + edtiTong.FloatValue;
//        edtGammyun.FloatValue  :=  edtGammyun.FloatValue + edtiDC.FloatValue;




        if (edtSunap.floatValue
             + (sender as TAdvEdit).floatValue
             + edtGammyun.FloatValue  )
           > edtSunapChongEk.FloatValue then
        begin

            exit;
        end;



        if (sender as TAdvEdit).name = 'edtiCard' then
        begin

           if   (sender as TAdvEdit).FloatValue = 0  then
           begin
                edtCard.FloatValue  := 0;
            //    edtSunap.FloatValue := 0;
           end
           else
           begin

                edtCard.FloatValue :=  edtCard.FloatValue + edtiCard.FloatValue;

           end;
                edtiCard.FloatValue := 0;

//                edtiHyun.FloatValue    :=
//                     edtSunapChongEk.FloatValue
//                     - edtSunap.FloatValue
//                     - edtGammyun.FloatValue ;
                edtiHyun.FloatValue    :=  0;


        end else  if (sender as TAdvEdit).name = 'edtiHyun' then
        begin

           pnlHyunYoung.visible:= true;

           if   (sender as TAdvEdit).FloatValue = 0  then
           begin
                edtHyun.FloatValue  := 0;
              //  edtSunap.FloatValue := 0;
           end
           else
           begin


                 edtHyun.FloatValue     :=  edtHyun.FloatValue + edtiHyun.FloatValue;

                 edtiCard.FloatValue :=  edtSunapChongEk.FloatValue
                      -  edtSunap.FloatValue - edtGammyun.FloatValue ;


           end;

             edtiHyun.FloatValue := 0;


        end else   if (sender as TAdvEdit).name = 'edtiTong' then
        begin

           pnlHyunYoung.visible:= true;

           if   (sender as TAdvEdit).FloatValue = 0  then
           begin
                edtTong.FloatValue  := 0;
                //edtSunap.FloatValue := 0;
           end
           else
           begin

               edtTong.FloatValue     :=  edtTong.FloatValue + edtiTong.FloatValue;


           end;

            edtiTong.FloatValue := 0;
            edtiHyun.FloatValue := 0;

            edtiCard.FloatValue :=  edtSunapChongEk.FloatValue
                -  edtSunap.FloatValue - edtGammyun.FloatValue ;



        end   else   if (sender as TAdvEdit).name = 'edtiDc' then
        begin

           if   (sender as TAdvEdit).FloatValue = 0  then
           begin
               // edtHyun.FloatValue  := 0;
               // edtSunap.FloatValue := 0;
           end
           else
           begin


               edtGammyun.FloatValue     :=  edtiDC.FloatValue ;


           end;

            edtiDC.FloatValue := 0;
            edtiTong.FloatValue := 0;
            edtiHyun.FloatValue := 0;
            edtiCard.FloatValue :=  edtSunapChongEk.FloatValue
                -  edtSunap.FloatValue - edtGammyun.FloatValue ;
        end;



        edtSunap.FloatValue    := SetSunapValue;




        edtdangmisu.FloatValue := edtSunapChongEk.FloatValue
                - edtSunap.FloatValue
                - edtGammyun.FloatValue ;



      //  SelectNext(Sender as TWinControl, True, True);
//        btnSave.SetFocus;
        btnSaveNprint.SetFocus;

        btnset(1);


    end;
end;

procedure Tsunap_f.edtiDcChange(Sender: TObject);
begin

//     edtiCard.FloatValue   :=   edtSunapChongEk.FloatValue
//          - edtiHyun.FloatValue
//          - edtiDC.FloatValue;

end;

procedure Tsunap_f.edtiHyunChange(Sender: TObject);
begin
//     edticard.FloatValue   :=   edtSunapChongEk.FloatValue
//          - edtiHyun.FloatValue
//          - edtiDC.FloatValue;
//
//     edticard.SelStart := length(edticard.Text);

end;

procedure Tsunap_f.btnCalendarClick(Sender: TObject);
begin


     Plannercalendar1.left := btnCalendar.left;
     Plannercalendar1.top := btnCalendar.top + btnCalendar.height;
     Plannercalendar1.Visible := not Plannercalendar1.Visible;
     if isDate(lblsunapday.caption) then
        Plannercalendar1.date := strtodate(lblsunapday.caption)
     else
        Plannercalendar1.date := now;
end;

procedure Tsunap_f.lblHyunYoungClick(Sender: TObject);
begin
     if enableBtn = false then
          exit;

     if lblHyunYoung.Tag = 0 then
     begin
          lblHyunYoung.Tag := 1;
          edtHyunReceipt.FloatValue := edtsunapchongek.FloatValue - edtcard.FloatValue -
               edtHyun.FloatValue;

     end
     else
     begin
          lblHyunYoung.Tag := 0;
          edtHyunReceipt.FloatValue := 0;
     end;
end;

procedure Tsunap_f.sebusunapCalc(varchart: string);
var
     planChong, GamChong: integer;
     i: integer;
     varQuery:string;
     varQuery2:string;
     cKind1 : string;
     varFinalDate : string;
begin

     varQuery := LoadSunapDataQuery;
     varQuery2 := LoadPlanDataQuery;

    if hasSunapFinalinfo(ma_chart) = true then
     begin
         varFinalDate := SunapFinalDate(ma_chart);
     end;


     with DM_f.SqlTemp, grdmain do
     begin
          beginUpdate;
          close;
          sql.Clear;
          sql.add('select s.S_id, s.Doc, s.sday,s.team,s.sunapek,s.bohum,s.Chong, s.Chung, s.bugase, s.magam, s.bonin1,s.etc,s.iilbanek,s.hyun,s.card,s.tong,s.tong2,s.GammyunEk, s.Chart, s.skind, s.useBohum, ');
          sql.add('i.name,i.first_day,s.misuek,s.HyunReceipt,  s.chamgo, s.hwanbulek, s.hyunreceipt_tong, s.youngsu_num from ma_sunap s join view_gogek i on s.chart=i.chart        ');
          sql.add('where s.chart=:chart');

          if checkBox1.checked = true then
               sql.add(' and ( sunapek >0 or sunapek < 0)');
          if cbteam2.ItemIndex > 0 then
          begin
               sql.add(' and  s.team=:team' );
               parambyname('team').AsString := inttostr(cbteam2.itemindex);
          end;


               if varviewAll <> true then
               begin
                    if varQuery <> '' then
                         sql.Add('and  (' + varQuery + ' or skind is null )' );

               end;
          if  varFinalDate <>'' then
          begin

               sql.add(' and  s.sDay > :sDay' );
               parambyname('sDay').AsString := varFinalDate;

          end;

          sql.Add('order by s.sday desc ');
          parambyname('chart').AsString := varChart;
          open;
          first;
          if not  DM_f.SqlTemp.isEmpty then
          begin
               rowcount := recordcount + 2;

               while not eof do
               begin
                    for i := 2 to rowcount - 1 do
                    begin
                         Cells[1, i] := FieldByname('sday').asString;
                         Cells[2, i] := FieldByname('name').asString;
                         Cells[3, i] := FieldByname('chart').asString;
                         Cells[4, i] := FieldByname('team').asString;
                         Floats[5, i] := FieldByname('sunapek').asfloat;
                         Floats[6, i] := FieldByname('chong').asfloat;
                         Floats[7, i] := FieldByname('bohum').asfloat;
                         Floats[8, i] := FieldByname('chung').asfloat;
                         Floats[9, i] := FieldByname('bonin1').asfloat;
                         Floats[10, i] := FieldByname('etc').asfloat;
                         Floats[11, i] := FieldByname('hyun').asfloat;
                         Floats[12, i] := FieldByname('HyunReceipt').asfloat;
                         Floats[13, i] := FieldByname('card').asfloat;
                         Floats[14, i] := FieldByname('tong').asfloat;
                         Floats[15, i] := FieldByname('HyunReceipt_tong').asfloat;
                         Floats[16, i] := FieldByname('tong2').asfloat ;
                         Floats[17, i] := FieldByname('gammyunek').asfloat;
                         ints[18, i] := FieldByname('misuek').AsInteger;
                         ints[19, i] := FieldByname('hwanbulek').AsInteger;



                         if fieldbyname('sday').AsString = fieldbyname('first_day').AsString then
                              Cells[21, i] := '신환'
                         else
                              Cells[21, i] := '구환';

                         Cells[22, i] := FieldByname('sKind').asstring;
                         Cells[23, i] := FieldByname('chamgo').asstring;

                         if (FieldByname('useBohum').asString = '1') //or  (fieldByName('usebohum').AsString = '')
                          then
                              addCheckBox(24, i, true, true)
                         else
                              addCheckBox(24, i, false, true);


                        cells[25, i] :=  FieldByname('s_id').asString;
                        Cells[26, i] := fieldbyname('doc').AsString;

                         if fieldbyname('youngsu_num').AsInteger > 0  then
                              Cells[27, i] := 'O'
                         else
                              Cells[27, i] := 'X';

                        floats[28, i] :=FieldByname('bugase').asfloat;

                        cells[29, i] :=FieldByname('magam').asString;



                         cKind1 :='';

                         //sunapId를 grdMain에서 가져오자. 그래서 맨 밑에 넣자.
                         with dm_f.SqlWork, grdmain do
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('select cardkind, sunapid, cardek from sunapcard where chart=:chart and cardDate=:cardDate');
                              parambyname('chart').AsString := Cells[3, i];
                              parambyname('cardDate').AsString := Cells[1, i];
                              Open;
                              if dm_f.SqlWork.fieldbyname('sunapId').asString <> '' then
                              begin
                                     Close;
                                     Sql.Clear;
                                     Sql.Add('select cardkind, cardek from sunapcard where sunapid=:sunapid');
                                     parambyname('sunapid').AsString := Cells[25, i];


                              end
                              else
                              begin

                                     Close;
                                     Sql.Clear;
                                     Sql.Add('select cardkind , cardek from sunapcard where chart=:chart and cardDate=:cardDate');
                                     parambyname('chart').AsString := Cells[3, i];
                                     parambyname('cardDate').AsString := Cells[1, i];
                              end;
                              Open;

                          //ToDo : 카드 종류와 금액을 참고사항에 보여주자...
                               if  configvalue.varSunapRemarkCardView  ='1' then
                               begin

                                //ToDo : 당분간 보류...2016-03-08
                                   if not dm_f.SqlWork.isEmpty then
                                    begin
                                            while not dm_f.SqlWork.eof do
                                            begin

                                             if dm_f.SqlWork.FieldByname('cardEk').asString <> '' then
                                             begin


                                                 if trim(cKind1) <> '' then
                                                      cKind1 := cKind1 + ', ' + dm_f.SqlWork.FieldByname('cardkind').asstring
                                                          + '('+formatfloat('#,0', strtointdef( dm_f.SqlWork.FieldByname('cardEk').asString, 0))+')'
                                                 else
                                                      cKind1 := dm_f.SqlWork.FieldByname('cardkind').asString
                                                             + '('+formatfloat('#,0',strtointdef( dm_f.SqlWork.FieldByname('cardEk').asString, 0))+')';


                                                 Cells[20, i] := cKind1 ;
                                             end;
                                                 dm_f.SqlWork.next;
                                            end;
                                     end
                                     else
                                          Cells[20, i] := '';

                               end;
                         end;

                         DM_f.SqlTemp.next;
                    end;
               end;

          end
          else
          begin
               rowcount := 2;
          end;




          if varviewAll = true then
          begin   //전체 보기면  ma_tpcharge에서 가져오고 그렇지 않으면 dtx에서 합하자.

                    Close;
                    Sql.Clear;
                    Sql.Add('select  ');
                    Sql.Add('sum(subtotal) as sSubtotal');
                    Sql.Add(' from ma_tpcharge');
                    Sql.Add(' where chart=:chart'); // and chart_id=:chart_id');
                    ParamByName('chart').AsString := varChart;
                    //ParamByName('chart_id').AsString := varplanid;

                         if varviewAll <> true then
                         begin
                                      if varQuery2 <> '' then
                                           sql.Add('and  (' + varQuery2 + ' or akind is null )' );

                         end;

                    Open;
                    if not DM_f.SqlTemp.isEmpty then
                    begin
                         PlanChong := FieldByName('sSubTotal').AsInteger;
                    end
                    else
                    begin
                         PlanChong := 0;
                    end;


          end
          else
          begin

                  Close;
                  Sql.Clear;
                  Sql.Add('select  ');
               //   Sql.Add('sum(isnull(ckumak,0)) - sum(isnull(dcw,0)) as sSubtotal');
                    Sql.Add('sum(isnull(ckumak,0))   as sSubtotal');
                  Sql.Add(' from dtx');
                  Sql.Add(' where chart=:chart');
                  Sql.Add(' and  chk = ''1'' ');
                  // and chart_id=:chart_id');
                  ParamByName('chart').AsString :=  varChart;
                  //ParamByName('chart_id').AsString := varplanid;

                      if varviewAll <> true then
                       begin
                            if varQuery2 <> '' then
                                 sql.Add('and  (' + varQuery2 + ' or akind is null )' );

                       end;

                  Open;
                  if not  DM_f.SqlTemp.isEmpty then
                  begin
                       PlanChong := FieldByName('sSubTotal').AsInteger;
                  end
                  else
                  begin
                       PlanChong := 0;
                  end;


                  Close;
                  Sql.Clear;
                  Sql.Add('select  ');
                  Sql.Add('sum(isnull(kamak,0))  as sSubtotal');
                  Sql.Add(' from ma_tpCharge');
                  Sql.Add(' where chart=:chart');
                  // and chart_id=:chart_id');
                  ParamByName('chart').AsString :=  varChart;
                  //ParamByName('chart_id').AsString := varplanid;

                      if varviewAll <> true then
                       begin
                            if varQuery2 <> '' then
                                 sql.Add('and  (' + varQuery2 + ' or akind is null )' );

                       end;
                  Open;
                  if not  DM_f.SqlTemp.isEmpty then
                  begin
                       GamChong := FieldByName('sSubTotal').AsInteger;
                  end
                  else
                  begin
                       GamChong := 0;
                  end;


                  PlanChong := PlanChong - GamChong ;

          end;



          edtSunapEndDay.Font.Color := clBlack;

          Close;
          Sql.Clear;
          Sql.Add('select top 1 ');
          Sql.Add(' * ');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart'); // and chart_id=:chart_id');
          Sql.Add(' order by jin_day desc'); //마지막에 저장한 교정월비만 불러오자
          ParamByName('chart').AsString := varChart;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not  DM_f.SqlTemp.isEmpty then
          begin
                    edtMonthly.text := fieldByName('Monthly').AsString;
                    edtMonthGeumek.floatValue := fieldByName('MonthGeumek').AsInteger;
                    edtOrthoMonth.floatValue := fieldByName('Mf').AsInteger;
                  //  showmessage( fieldByName('wandate1').AsString );
                    edtSunapEndDay.Text  := fieldByName('wandate1').AsString;

                  if edtSunapEndDay.Text <> '' then
                  begin
                    if  strToDate(edtSunapEndDay.Text) < now then
                    begin
                         edtSunapEndDay.Font.Color := clRed;
                    end;
                  end;  
                //    memo1.text:=   fieldByName('remark').Asstring;
          end
          else
          begin
                    edtMonthly.text := '0';
                    edtMonthGeumek.floatValue := 0;
                     edtOrthoMonth.floatValue := 0;
                      edtSunapEndDay.Text  := '';
                //     memo1.text:= '';
          end;


          UpdateSums;

          if RowCount > 0 then
          begin
               lblSum.Caption := formatFloat('#,0', GrdMain.floats[5, 1]);
               lblgam.Caption := '감면: '+ formatFloat('#,0', GrdMain.floats[17, 1]);

               lblJan.Caption := formatFloat('#,0', chongMisuCalc(varChart, varviewAll));
               lblPlan.Caption := formatFloat('#,0', planChong);

          end
          else
          begin
               lblJan.Caption := '0';
               lblGam.Caption := '0';
               lblSum.Caption := '0';
               lblPlan.Caption := '0';
          end;




          grdmain.AutoNumberDirection :=  sdAscending;//   sdDescending; //
          autonumbercol(0);
          grdmain.AutoSizeCol(0);
          endUpdate;
     end;


{
     with DM_f.SqlTemp, grdMain do
     begin
          clear;
          close;
          sql.Clear;
          sql.add('select s.s_id, s.sday,s.team,s.sunapek,s.bohum,s.Chong, s.Chung,s.bonin1,s.iilbanek,s.hyun,s.card,s.tong, s.tong2, s.GammyunEk, s.Chart, s.doc,');
          sql.add('i.name,i.first_day,s.misuek,s.HyunReceipt,s.HyunReceipt_tong, s.etc, s.usebohum, s.chamgo, s.hwanbulek from ma_sunap s join view_gogek i on s.chart=i.chart                     ');
          sql.add('where s.chart=:chart');
          if checkBox1.checked = true then
               sql.add(' and  sunapek <> 0');
          if cbteam2.ItemIndex > 0 then
          begin
               sql.add(' and  s.team=:team' );
               parambyname('team').AsString := inttostr(cbteam2.itemindex);
          end;

          sql.Add('order by s.sday desc');

          parambyname('chart').AsString := varChart;
          open;
          first;
          if not isEmpty then
          begin
               grdMain.Clear;
               while not eof do
               begin
                    addrow;
                    Cells[0, RowCount - 1].AsString :=
                         FieldByname('sday').asString;
                    Cells[1, RowCount - 1].AsString :=
                         FieldByname('name').asString;
                    Cells[2, RowCount - 1].AsString :=
                         FieldByname('chart').asString;
                    Cells[3, RowCount - 1].AsString :=
                         FieldByname('team').asString;
                    Cells[4, RowCount - 1].asfloat :=
                         FieldByname('sunapek').asfloat;
                    Cells[5, RowCount - 1].asfloat :=
                         FieldByname('chong').asfloat;
                    Cells[6, RowCount - 1].asfloat :=
                         FieldByname('chung').asfloat;
                    Cells[7, RowCount - 1].asfloat :=
                         FieldByname('bohum').asfloat;
                    Cells[8, RowCount - 1].asfloat :=
                         FieldByname('bonin1').asfloat;
                    Cells[9, RowCount - 1].asfloat :=
                         FieldByname('iilbanek').asfloat;
                    Cells[10, RowCount - 1].asfloat :=
                         FieldByname('etc').asfloat;
                    Cells[11, RowCount - 1].asfloat :=
                         FieldByname('hyun').asfloat;
                    Cells[12, RowCount - 1].asfloat :=
                         FieldByname('HyunReceipt').asfloat;
                    Cells[13, RowCount - 1].asfloat :=
                         FieldByname('card').asfloat;
                    Cells[14, RowCount - 1].asfloat :=
                         FieldByname('tong').asfloat;
                    Cells[15, RowCount - 1].asfloat := FieldByname('HyunReceipt_tong').asfloat;
                    Cells[16, RowCount - 1].asfloat :=
                         FieldByname('tong2').asfloat;
                    Cells[17, RowCount - 1].asfloat :=
                         FieldByname('gammyunek').asfloat;
                    Cells[18, RowCount - 1].AsInteger :=
                         FieldByname('misuek').AsInteger;
                    Cells[19, RowCount - 1].asstring :=
                         FieldByname('first_day').asstring;
                    if fieldbyname('sday').AsString =
                         fieldbyname('first_day').AsString then
                         Cells[20, RowCount - 1].AsString := '신환'
                    else
                         Cells[20, RowCount - 1].AsString := '구환';
                    Cells[22, RowCount - 1].asfloat :=
                         FieldByname('hwanbulek').asfloat;
                    Cells[23, RowCount - 1].asstring :=
                         FieldByname('chamgo').asstring;
                    if FieldByname('useBohum').asString = '1' then
                         Cells[24, RowCount - 1].AsBoolean := true
                    else
                         Cells[24, RowCount - 1].AsBoolean := false;

                    Cells[25, RowCount - 1].asfloat :=
                         FieldByname('s_id').asfloat;
                    Cells[26, RowCount - 1].AsString := fieldbyname('doc').AsString;

                    //2012.5.1
                  //  if (Cells[4, RowCount - 1].asfloat = (Cells[11, RowCount - 1].asfloat + Cells[12, RowCount - 1].asfloat + Cells[13, RowCount - 1].asfloat)) and
                  //      (Cells[16, RowCount - 1].asfloat > 0) then
                  //  begin
                  //      Cells[16, RowCount - 1].asfloat := 0;
                  //      with dm_f.Sqlwork do
                  //      begin
                  //          Close;
                  //          SQL.Clear;
                  //          Sql.Add('update  ma_sunap  set ');
                  //          Sql.Add('gammyunek = 0 ');
                  //          Sql.Add('where s_id = :s_id');
                  //          paramByname('s_id').asString := grdMain.Cells[24, RowCount - 1].AsString;
                  //          execsql;
                  //      end;

                   // end;

                    next;
               end;
          end;
          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add('sum(subtotal) as sSubtotal');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart'); // and chart_id=:chart_id');
          ParamByName('chart').AsString := varChart;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not isEmpty then
          begin
               PlanChong := FieldByName('sSubTotal').AsInteger;
          end
          else
          begin
               PlanChong := 0;
          end;

          grdMain.CalcFooters;
          if grdMain.RowCount > 0 then
          begin
               //  lblSum.Caption := formatFloat('#,0', (strtoFloat(grdMain.Columns[3].Footer.Values[0]) -
               //       strtoFloat(grdMain.Columns[11].Footer.Values[0]) -
               //       strtoFloat(grdMain.Columns[12].Footer.Values[0])));
               lblSum.Caption := formatFloat('#,0',
                    (strtoFloat(grdMain.Columns[4].Footer.Values[0])));


          end
          else
          begin
               //  lblJan.Caption := '0';
               lblSum.Caption := '0';
               //  lblPlan.Caption := '0';
          end;

          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add(' * ');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart'); // and chart_id=:chart_id');
          ParamByName('chart').AsString := varChart;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not isEmpty then
          begin
               edtMonthly.text := fieldByName('Monthly').AsString;
               edtMonthGeumek.FloatValue := fieldByName('MonthGeumek').AsInteger;
          end
          else
          begin
               edtMonthly.text := '0';
               edtMonthGeumek.FloatValue := 0;
          end;

     end;
     lblJan.Caption := formatFloat('#,0', chongMisuCalc(varChart));
     lblPlan.Caption := formatFloat('#,0', planChong);
 }


end;
procedure  Tsunap_f.UpdateSums;
var
     i: Integer;
begin
     for i := 1 to grdMain.colcount - 1 do
          grdMain.cells[i, 1] := '';

     for i := 5 to 19 do
          grdMain.Floats[i, 1] := grdMain.ColumnSum(i, 2, grdMain.RowCount-1);
     //  grdMain.FloatingFooter.Invalidate;
end;

procedure Tsunap_f.LoadPlanList(varChart: string);
const
      selectDtx= 'select *,                                                                          '+#10#13+
        'case when (select sum(isNull(kumak,0)) from dtx_sunap b where a.id=b.id )  is null then 0    '+#10#13+
        'else (select sum(isNull(kumak,0)) from dtx_sunap b where a.id=b.id) end  as sunapKumak        '+#10#13+
        'from dtx a                                                                                    '+#10#13+
        'where chart=:chart  and chk=''1''                                   ';
      selectDtxOrder=   ' order by jin_day , kind, dtxOrder, convert(int,nOrd,120)'          ;
var
     varTotal: integer;
     nCol: integer;
     imgCnt: Integer;
     tFileName: string;

     varQuery:string;
begin


     varQuery := LoadPlanDataQuery;

     grdPlan.rowcount := 1;

     with dm_f.Sqlwork, grdPlan do
     begin
          Close;
          SQl.Clear;
          sql.text := selectDtx;

               if varviewAll <> true then
               begin
                    if varQuery <> '' then
                         sql.Add('and  (' + varQuery + ' or akind is null )' );

               end;


          sql.text := sql.text + selectDtxOrder;


          ParamByName('chart').AsString := varChart;
          Open;
          First;
          if RecordCount > 0 then
          begin
               imgCnt := 0;
               while not eof do
               begin


                    Addrow;
                    tFileName := '';
                    if FieldByName('portion').AsString <> '' then
                    begin
                         tFileName := 'PPP' + IntToStr(imgCnt + 1);
                         MakeImage(FieldByName('portion').AsString,
                              tFileName);
                         imgCnt := imgCnt + 1;

                         tFileName :='c:\teethTemp\'+  tFileName +'.bmp';


                         CreatePicture(1,
                         RowCount - 1, false, noStretch,0,//  StretchWithAspectRatio, 0, // ShrinkWithAspectRatio, 0,
                         AdvGrid.haLeft,
                         AdvGrid.vaTop).LoadFromFile(tFileName); //치식도 가져오기

                    end;

                    if FieldByName('choice').AsString = '1' then
                       addcheckBox(2, RowCount - 1, true,true )
                    else
                       addcheckBox(2, RowCount - 1, false, true);

                    Cells[3, RowCount - 1] := FieldByName('jin_day').AsString;
                    Cells[4, RowCount - 1] :=  FieldByName('description').AsString;
                    ints[5, RowCount - 1] :=  FieldByName('cprice').Asinteger;
                    ints[6, RowCount - 1] :=  FieldByName('ccnt').AsInteger;
                    Ints[7, RowCount - 1] := FieldByName('ckumak').AsInteger;
                    Ints[8, RowCount - 1] := (FieldByName('cprice').Asinteger
                          * FieldByName('ccnt').AsInteger)
                          -  FieldByName('ckumak').AsInteger;  //D/C금액
                    Ints[9, RowCount - 1] := FieldByName('sunapKumak').AsInteger;  //수납금액
                    Ints[10, RowCount - 1] :=  FieldByName('ckumak').AsInteger
                                                 - FieldByName('sunapKumak').AsInteger ; //남은금액
                    Cells[11, RowCount - 1] := FieldByName('fil').AsString;
                    Ints[12, RowCount - 1] := FieldByName('id').AsInteger;
                    Ints[13, RowCount - 1] := FieldByName('id').AsInteger;
                    next;
               end;
               autonumbercol(0);
               AutoSizeCol(0);

          end;
     end;

end;

procedure Tsunap_f.lineSunapLoad(varRow: integer);
var
     varLineTeam: integer;
begin
    // varRow := grdMain.Row;
     if grdMain.rowCount >= 1 then
     begin

          sunapLoad(ma_chart,
                grdMain.cells[1, varRow],
                grdMain.cells[4, varRow]  ,
                ma_docName,// main_f.cbDoc.Text,
                '1',
                grdMain.cells[25, varRow]);

      //    if grdMain.cells[3, varRow].asinteger > 0 then
      //         cbTeam.itemindex := grdMain.cells[3, varRow].asinteger - 1
      //    else
      //         cbTeam.itemindex := 0;
              if grdMain.cells[26, varRow] <> '' then
                     //  cbdoc.ItemIndex := cbDoc.ComboItems.IndexOf( grdMain.cells[26, varRow]  ).y
                   cbdoc.ItemIndex := cbDoc.ComboItems.IndexOf(   ma_docName ).y
               else
                     cbdoc.ItemIndex := 0;

          LoadJinryoHangMokData(ma_chart,
                   grdMain.cells[1, varRow],
                   cbDoc.ColumnItems[cbDoc.itemindex, 2], //cbDoc.text,
                   scGroup) ;

          loadBunnapInfo(ma_chart, grdMain.cells[1, varRow]);

     end;

end;

procedure Tsunap_f.btnDelClick(Sender: TObject);
begin
      deletesunap;
      sebusunapCalc(ma_chart);

end;

procedure Tsunap_f.DeleteSunap;
var
     i: word;
     varAccess: string; //sawon and regipower 의 query  value
     varPass : string;
begin
    if trim(configvalue.varPassSunapUpdate) <> '' then
       varPass :=     trim(configvalue.varPassSunapUpdate)
    else
       varPass :=  v_UserPass;  //main_f.v_UserPass;


          if  isMagam = true then
          begin
             showmessage('이미 마감된 수납내역입니다.'+#10#13+'관리자 문의 후 진행하십시오.');

             exit;
          end;

     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.Add('select distinct s.said,r.pgset from ma_sawon_basic s join ma_pgpower r on s.sapower = r.powerid');
          sql.Add('where s.said =:id and r.pgid=:pgid and r.pgset = ''1''                ');
          parambyname('id').AsString := V_UserId; //  main_f.V_UserId;
          parambyname('pgid').AsString :=   'mnumagamday'; //일일점검
          open;
          if not isEmpty then
                varAccess := '1';
     end;

     if  varAccess = '1' then
     begin
          PassInput_f :=
               TPassInput_f.Create(application);
          if PassInput_f.Showmodal = mrOK then
          begin
               if PassInput_f.edtpass.text = varPass then
               begin

                    if
                         Application.MessageBox('수납기록을 삭제하시겠습니까?', '확인',
                         MB_OKCANCEL) = 1 then
                    begin
                         with dm_f.sqlWork do
                         begin

                              Close;
                              SQL.Clear;
                              Sql.Add('delete from ma_sunap');
                              Sql.Add('where s_id = :s_id and chart=:chart ');
                              paramByname('s_id').asString := varSunapID;
                              paramByname('chart').asString := ma_chart;
                              ExecSQL;



                                   //1. sunapcard의 sunapid값이 있는지 확인한다.
                              //2. 있으면 sunapid값으로 지우고 없으면 기존방식  chart and CardDate  and team 으로 지우자.
                              Close;
                              SQL.Clear;

                              Sql.Add('select *  from sunapcard');
                              Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
                              paramByname('chart').asString := ma_chart;
                              paramByname('CardDate').asString := lblSunapDay.caption;
                              paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ;
                              open;
                              if (fieldbyname('sunapid').asString <> '')
                                 or (fieldbyname('sunapid').asString <> '0') then
                              begin
                                       Close;
                                       SQL.Clear;

                                       Sql.Add('delete from sunapcard');
                                       Sql.Add('where sunapid=:sunapid');
                                       paramByname('sunapid').asString := varSunapId;
                                       ExecSQL;
                              end
                              else
                              begin


                                       Close;
                                       SQL.Clear;

                                       Sql.Add('delete from sunapcard');
                                       Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
                                       paramByname('chart').asString := ma_chart;
                                       paramByname('CardDate').asString := lblSunapDay.caption;
                                       paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ; //inttostr(cbTeam.itemindex + 1);
                                       ExecSQL;
                              end;

                              Close;
                              SQL.Clear;
                              Sql.Add('delete from sunapCard');
                              Sql.Add('where chart=:chart and sunapid = :s_id');
                              paramByname('chart').asString := ma_chart;
                              paramByname('s_id').asString := varSunapID;
                              ExecSQL;



                              Close;
                              SQL.Clear;

                              Sql.Add('delete from sunapcard');
                              Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
                              paramByname('chart').asString := ma_chart;
                              paramByname('CardDate').asString := lblSunapDay.caption;
                              paramByname('team').asString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ; //inttostr(cbTeam.itemindex + 1);
                              ExecSQL;


                              Close;
                              SQL.Clear;
                              Sql.Add('delete from ma_sunap_bibo');
                              Sql.Add('where sunapid = :s_id and chart = :chart');
                              paramByname('s_id').asString := varSunapID;
                           //   Sql.Add('where chart = :chart  and sunapdate=:sunapdate');
                              paramByname('chart').asString := ma_chart;
                           //   paramByname('sunapdate').asString := lblSunapDay.caption;
                              ExecSQL;


                              Close;
                              SQL.Clear;
                              Sql.Add('delete from ma_sunap_bunNap');
                              Sql.Add('where chart = :chart and regDay=:regday');
                              paramByname('chart').asString :=  ma_chart;
                              paramByname('regday').asString := lblSunapDay.caption;
                              ExecSQL;



                              with dm_f.SqlWork do
                              begin

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('delete from ma_chart_hangmok_data');
                                   Sql.Add('where chart=:Chart and regday=:regDay and team=:team ');
                                   ParamByName('team').AsString := cbDoc.ColumnItems[cbDoc.itemindex, 0]  ;
                                   ParamByName('Chart').AsString := ma_chart;
                                   ParamByName('regDay').AsString := lblsunapday.caption;
                                   execsql;
                              end;







                              showmessage('선택하신 수납내역이 삭제되었습니다.');


                         end;

                         DeleteSunapDtx(lblSunapDay.caption);

                         fieldclear;
                         comboset;


                         sebusunapCalc(ma_chart);
                         LoadPlanList(ma_chart);

                         if grdMain.rowcount > 2 then
                         begin
                              grdMain.Row := 2;
                              lineSunapLoad(2);

                         end;

                    end;

               end
               else
                    showmessage('패스워드가 일치하지 않습니다.');
          end;
     end
     else
          showmessage('제한된 권한입니다.');

end;





procedure Tsunap_f.DeleteSunapSign;
var
     i: word;
     varAccess: string; //sawon and regipower 의 query  value
     varPass : string;
begin
    if trim(configvalue.varPassSunapUpdate) <> '' then
       varPass :=     trim(configvalue.varPassSunapUpdate)
    else
       varPass :=  v_UserPass;// // main_f.v_UserPass;


          if  isMagam = true then
          begin
             showmessage('이미 마감된 수납내역입니다.'+#10#13+'관리자 문의 후 진행하십시오.');

             exit;
          end;

     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.Add('select distinct s.said,r.pgset from ma_sawon_basic s join ma_pgpower r on s.sapower = r.powerid');
          sql.Add('where s.said =:id and r.pgid=:pgid and r.pgset = ''1''                ');
          parambyname('id').AsString := V_UserId;// main_f.V_UserId;
          parambyname('pgid').AsString :=  'mnumagamday';  //일일점검
          open;
          if not isEmpty then
                varAccess := '1';
     end;

     if  varAccess = '1' then
     begin
          PassInput_f :=
               TPassInput_f.Create(application);
          if PassInput_f.Showmodal = mrOK then
          begin
               if PassInput_f.edtpass.text = varPass then
               begin

                    if
                         Application.MessageBox('수납서명기록을 삭제하시겠습니까?', '확인',
                         MB_OKCANCEL) = 1 then
                    begin


                              with dm_f.SqlWork do
                              begin

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('delete from signdata');
                                   Sql.Add('where chart=:Chart and kind=:kind ');
                                   ParamByName('Chart').AsString := ma_chart;
                                   ParamByName('kind').AsString := '5'  ;
                                   execsql;
                              end;

                              showmessage('선택하신 수납서명기록이 삭제되었습니다.');



                    end;

               end
               else
                    showmessage('패스워드가 일치하지 않습니다.');
          end;
     end
     else
          showmessage('제한된 권한입니다.');

end;

procedure Tsunap_f.JinryoPtoSunap;
var
     varChung, varChong, varBonin: integer;
     varChart, varDay, varjinryopid: string;
     varCount, i, j: integer;
begin
     i := 0;
     //btnJinryopToSunap.caption := '0';
     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          Sql.Add('select * from jinryo_P');
          sql.add('where jin_day > ''2011-10-01'' ');
          open;
          if not isEmpty then
          begin
               varCount := recordCount;
               while not eof do
               begin
                    varDay := copy(fieldByname('jin_day').asString, 1, 10);
                    varChart := fieldByName('chart').asString;
                    varjinryopid := fieldByName('jinryo_pid').asString;
                    varChong := fieldByName('chong').asInteger;
                    varChung := fieldByName('chung').asInteger;
                    varBonin := fieldByName('bonin').asInteger;

                    updateSunapDB(varDay, varChart, varjinryopid, varChong, varChung, varBonin);

                    i := i + 1;

                    j := varcount - i;
                    application.ProcessMessages;
                    // btnJinryopToSunap.caption := inttostr(j);
                    next;
               end;

          end;

     end;

end;

procedure Tsunap_f.UpdateSunapDB(varDay, varChart, varjinryopid: string; varChong, varChung, varBonin: integer);
var
     varins, varmod: boolean;
begin
     varins := false;
     varmod := false;

     with dm_f.SqlTemp do
     begin
          Close;
          SQL.Clear;
          Sql.Add('select * from ma_sunap ');
          Sql.Add('where chart = :chart and sDay = :sDay ');
          paramByname('chart').asString := varChart;
          paramByname('sDay').asString := varDay;
          open;
          if isEmpty then
               varins := true
          else
               varmod := true;

     end;

     if varmod = true then
     begin
          with dm_f.SqlTemp do
          begin

               Close;
               SQL.Clear;
               Sql.Add('update  ma_sunap  set');
               Sql.Add(' bohum=:bohum, chong=:chong, chung=:chung, bonin=:bonin , jinryo_pid=:jinryo_pid  ');
               Sql.Add('where chart = :chart and sDay = :sDay ');
               paramByname('chart').asString := varChart;
               paramByname('sDay').asString := varDay;
               paramByname('jinryo_pid').asString := varjinryopid;
               paramByname('bohum').asfloat := varbonin;
               paramByname('chong').asfloat := varChong;
               paramByname('chung').asfloat := varChung;
               parambyname('bonin').AsFloat := varBonin;
               execsql;
          end;
     end;
     if varins = true then
     begin

          with dm_f.SqlTemp do
          begin
               Close;
               SQL.Clear;
               Sql.Add('insert into ma_sunap');
               Sql.Add('(chart, sDay,tx,totalCharge,sunapEk,hyun,');
               Sql.Add('card,  supyo,tong,team,bochul,gyojung,  ');
               Sql.Add('imp,   mf,bohum, etc, janek,recallDay,recallTime,   ');
               Sql.Add('recallRemark, sign,chamgo,youngSu,gammyunEk, hwanBulEk,MisuEk, usebohum, admitno ,hyuncertno, admitkind,    ');
               Sql.Add('hyunYoungsu,  YoungsuJa, sTime,HyunReceipt,HyunReceipt_tong, iBohumEk, ietcEk, iilbanEk,bonin1, chong, chung, bonin, jinryo_pid, chojae)  values');
               Sql.Add('(:chart, :sDay,:tx,:totalCharge,:sunapEk,:hyun,');
               Sql.Add(':card,  :supyo, :tong,:team,:bochul,:gyojung,  ');
               Sql.Add(':imp,   :mf,:bohum, :etc, :janek,:recallDay,:recallTime,   ');
               Sql.Add(':recallRemark, :sign,:chamgo,:youngSu,:gammyunEk, :hwanBulEk, :MisuEk,  :usebohum, :admitno ,:hyuncertno, :admitkind,  ');
               Sql.Add(':hyunYoungsu,  :YoungsuJa , :sTime, :HyunReceipt,:HyunReceipt_tong, :iBohumEk, :ietcEk, :iilbanEk,:bonin1, :chong, :chung, :bonin, :jinryo_pid, :chojae)');
               paramByname('chart').asString := varChart;
               paramByname('sDay').asString := varDay;
               paramByname('sTime').asDateTime := now;
               paramByname('jinryo_pid').asString := varjinryopid;
               paramByname('tx').asString := '';
               paramByname('janek').asfloat := 0;

               paramByname('misuEk').asfloat :=
                    0; //일반미수액
               paramByname('iBohumEk').asFloat := 0;

               paramByname('totalCharge').asfloat :=
                    0;
               paramByname('sunapEk').asfloat := 0;
               paramByname('hyun').asfloat := 0;
               paramByname('card').asfloat := 0;
               paramByname('supyo').asfloat := 0;
               paramByname('tong').asfloat := 0;
               paramByname('team').asinteger := 1;

               paramByname('bochul').asfloat := 0; //none
               paramByname('gyojung').asfloat := 0; //none
               paramByname('imp').asfloat := 0; //none
               paramByname('mf').asfloat := 0; //none

               paramByname('Etc').asfloat := 0;
               paramByname('bohum').asfloat := varBonin;
               paramByname('chong').asfloat := varChong;
               paramByname('chung').asfloat := varChung;

               paramByname('recallDay').asString := ''; //none
               paramByname('recallTime').asString := ''; //none
               paramByname('recallRemark').asString := ''; //none

               paramByname('sign').asString := '';
               paramByname('chamgo').asString := '';
               paramByname('youngSu').asString := '';
               paramByname('GammyunEk').asfloat := 0;
               paramByname('hwanBulEk').asfloat := 0;
               paramByname('hyuncertno').asstring := '';
               paramByname('admitno').asstring := '';
               paramByname('hyunYoungsu').asString := '0';

               paramByname('admitkind').asString := '';

               paramByname('YoungsuJa').asInteger :=
                    0;
               paramByname('HyunReceipt').asfloat :=
                    0;
               paramByname('HyunReceipt_tong').asfloat :=
                    0;

               paramByname('ietcEk').asFloat := 0; //none
               paramByname('iilbanEk').asFloat := 0;
               //none
               parambyname('bonin1').AsFloat := 0;
               paramByname('bonin').asfloat := varBonin;
               paramByname('chojae').asinteger :=
                    1;
               if cbin.checked = true then
                    paramByname('usebohum').asString := '1'
               else
                    paramByname('usebohum').asString := '0';

               execsql;
          end;

     end;
end;

procedure Tsunap_f.sunapSaveHwanbul;
var
     modFlag, insFlag: boolean;
     i: word;
     mResponse: Integer;
     iResult: integer;

     varMisu: double;
begin

     if trim(ma_chart) = '' then
          exit;

     if cbDoc.itemindex <0 then
     begin
         showmessage('담당의를 선택하세요.');
           cbDoc.setfocus;
     end;

     with dm_f.SqlWork do
     begin
           //환불은 무조건 insert  시켜야 하나???
        {  if (varSunapID <> '0') and  (varSunapID <> '') then
          begin
             Sql.Add('where s_id = :s_id');
              paramByname('s_Id').asString := varSunapID;
          end
        }
          Close;
          SQL.Clear;
          Sql.Add('insert into ma_sunap');
          Sql.Add('(chart, sDay,tx,totalCharge,sunapEk,hyun, tong2,');
          Sql.Add('card,  supyo,tong,team,bochul,gyojung, doc, doc_code, ');
          Sql.Add('imp,   mf,bohum, etc, janek,recallDay,recallTime,   ');
          Sql.Add('recallRemark, sign,chamgo,youngSu,gammyunEk, hwanBulEk,MisuEk, usebohum, admitno ,hyuncertno, admitkind,  sKind,  ');
          Sql.Add('hyunYoungsu,  YoungsuJa, sTime,HyunReceipt,HyunReceipt_tong, iBohumEk, ietcEk, iilbanEk,bonin1, chong, chung, bonin, jinryo_pid, chojae)  values');
          Sql.Add('(:chart, :sDay,:tx,:totalCharge,:sunapEk,:hyun,:tong2,');
          Sql.Add(':card,  :supyo, :tong,:team,:bochul,:gyojung, :doc, :doc_code, ');
          Sql.Add(':imp,   :mf,:bohum, :etc, :janek,:recallDay,:recallTime,   ');
          Sql.Add(':recallRemark, :sign,:chamgo,:youngSu,:gammyunEk, :hwanBulEk, :MisuEk,  :usebohum, :admitno ,:hyuncertno, :admitkind, :sKind, ');
          Sql.Add(':hyunYoungsu,  :YoungsuJa , :sTime, :HyunReceipt,:HyunReceipt_tong, :iBohumEk, :ietcEk, :iilbanEk,:bonin1, :chong, :chung, :bonin, :jinryo_pid, :chojae)');
          paramByname('chart').asString := ma_chart;
          paramByname('sDay').asString := lblSunapDay.caption;
          paramByname('sTime').asDateTime := now;
          paramByname('jinryo_pid').asString := '0';

          paramByname('tx').asString := '';
          paramByname('janek').asfloat := 0;
          paramByname('iBohumEk').asFloat := 0;
          paramByname('misuEk').asfloat := 0;

          paramByname('totalCharge').asfloat := 0;
          paramByname('sunapEk').asfloat := varSunapH1 ;
          paramByname('hyun').asfloat := varHyunH1 ;    // - edtHyunReceipt.FloatValue;
          paramByname('card').asfloat := varCardH1 ;
          paramByname('supyo').asfloat := 0;
          paramByname('tong').asfloat := varTongH1 ;
          paramByname('tong2').asfloat := varTong2H1 ;
          paramByname('team').asinteger := strtoint( cbDoc.ColumnItems[cbDoc.itemindex, 0]);
          //cbTeam.itemindex +  1;

          paramByname('doc').asString := cbDoc.ColumnItems[cbDoc.itemindex, 2];
          paramByname('doc_code').asString := cbDoc.ColumnItems[cbDoc.itemindex, 0];

          paramByname('sKind').asString := cbsKind.text;


          paramByname('bochul').asfloat := 0; //none
          paramByname('gyojung').asfloat := 0; //none
          paramByname('imp').asfloat := 0; //none
          paramByname('mf').asfloat := 0; //none

          paramByname('Etc').asfloat := 0;
          paramByname('bohum').asfloat := 0;
          paramByname('chong').asfloat := 0;
          paramByname('chung').asfloat := 0;

          paramByname('recallDay').asString := ''; //none
          paramByname('recallTime').asString := ''; //none
          paramByname('recallRemark').asString := ''; //none

          paramByname('sign').asString := '';
          paramByname('chamgo').asString := memChamgoH1.text;
          paramByname('youngSu').asString := '';
          paramByname('GammyunEk').asfloat := 0;
          paramByname('hwanBulEk').asfloat :=  edtHwanBul.FloatValue;
          paramByname('hyuncertno').asstring :=  '';
          paramByname('admitno').asstring := '';

          paramByname('hyunYoungsu').asString := '0';

          if rbgongje.checked = true then
               paramByname('admitkind').asString := '0';
          if rbjichul.checked = true then
               paramByname('admitkind').asString := '1';
          if rbjajin.checked = true then
               paramByname('admitkind').asString := '2';

          paramByname('YoungsuJa').asInteger :=
               cbHygine.itemIndex;
          paramByname('HyunReceipt').asfloat :=   varHyunReceiptH1;
          paramByname('HyunReceipt_tong').asfloat :=  varTongHyunreceiptH1;

          paramByname('ietcEk').asFloat := 0; //none
          paramByname('iilbanEk').asFloat := 0;   //none
          parambyname('bonin1').AsFloat := 0;
          paramByname('bonin').asfloat := 0;
          paramByname('chojae').asinteger := 9;
          if cbin.checked = true then
               paramByname('usebohum').asString := '1'
          else
               paramByname('usebohum').asString := '0';

          execsql;

     end;

     //미수금 꺼내오기
     varMisu := chongMisuCalc(ma_chart, varviewAll); //
     edtilBanChongMisu.FloatValue := abs(varMisu);

     if varMisu < 0 then
     begin
          //lblSunsu.caption := '선수납금액';
          edtilBanChongMisu.font.color := clBlue;
     end
     else
     begin
          //lblSunsu.caption := '미수납금액';
          edtilBanChongMisu.font.color := clRed;

     end;

end;

procedure Tsunap_f.PrintReceiptFrx(bPreview:boolean);
var
     WPath, sYoungNo: string;
     bReturn: Boolean;
      Pict1 : TfrxPictureView;
      Pict2 : TfrxPictureView;
    Image1: TImage;
    Image2: TImage;
begin
     sYoungNo := '';
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select jin_day,youngsu_num from jinryo_p');
          Sql.Add(' where chart=:chart and jin_day=:jin_Day and jin_gu=''0'' and chojae<>''9'' and chojae<>''0'' ');
          ParamByName('chart').AsString := ma_chart;
          ParamByName('jin_day').AsString := lblSunapDay.caption;
          Open;
          First;
          if not isEmpty then
          begin
               if FieldByName('youngsu_num').AsInteger > 0 then
               begin
                    sYoungNo := FormatDateTime('yyyymmdd',
                         strtodate(lblsunapday.caption)) + '-' +
                         Formatfloat('000',
                         FieldByName('youngsu_num').AsInteger);
               end
               else
               begin
                    JinryoPYoungsunumUpdate(ma_chart,
                         lblsunapday.caption,
                         NewYoungsuNo(strtodate(lblsunapday.caption)));

                    updateSunapyoungsuno(NewYoungsuNo(strtodate(lblsunapday.caption)));

                    sYoungNo :=
                         MakeNewYoungsu(strtodate(lblsunapday.caption));
               end;
          end
          else
          begin

               JinryoPYoungsunumUpdate(ma_chart,
                    lblsunapday.caption,
                    NewYoungsuNo(strtodate(lblsunapday.caption)));

               updateSunapyoungsuno(NewYoungsuNo(strtodate(lblsunapday.caption)));

               sYoungNo := MakeNewYoungsu(strtodate(lblsunapday.caption));
          end;
     end;

     //   sYoungNo := '';

        // Fast Report =====================================================
 //    InitFastReport();

     WPath := ExtractFilePath(Application.ExeName) + 'print\';

     with frxReport do
     begin

          if configvalue.varPrintingCnt = 1 then
          //1매인쇄 2매인쇄 선택
             LoadFromFile(WPath + 'rptReceiptOnePage1.fr3')  //1매 인쇄
         //   LoadFromFile(WPath + 'rptReceiptOnePage2.fr3')  //1매 인쇄
          else

             LoadFromFile(WPath + 'rptYoungsu.fr3') ;      //2매인쇄




         if configvalue.signfilePath1 <> '' then
         begin
                if fileexists(configvalue.signfilePath1) then
                begin
                    Pict1 := frxreport.FindComponent('Picture1') as TfrxPictureView;


                    Image1 := TImage.Create(nil);
                    Image1.Picture.LoadFromFile(configvalue.signfilePath1);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );
                    Pict1.Picture := Image1.Picture;

                    Image1.Free;
                end;
         end
         else
         begin
                    Pict1 := frxreport.FindComponent('Picture1') as TfrxPictureView;

                    pict1.Visible := false;

         end;

         if configvalue.signfilePath2 <> '' then
         begin
                if fileexists(configvalue.signfilePath2) then
                begin
                    Pict2 := frxreport.FindComponent('Picture2') as TfrxPictureView;


                    Image2 := TImage.Create(nil);
                    Image2.Picture.LoadFromFile(configvalue.signfilePath2);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );
                    Pict2.Picture := Image2.Picture;

                    Image2.Free;
                end;
         end
         else
         begin
                    Pict2 := frxreport.FindComponent('Picture2') as TfrxPictureView;

                    pict2.Visible := false;

         end;



          DataToPrintForm(lblJinday1.caption, lblJinday2.caption, sYoungNo);

       //   if cbPreview.Checked then
         if bPreview =true then

               ShowReport()
          else
          begin
               PrepareReport();
               bReturn := Print();
          end;
     end;
end;

procedure Tsunap_f.InitFastReport;
begin
     with frxPDFExport do
     begin
          PrintOptimized := True;
          EmbeddedFonts := True;
          Background := True;
          Compressed := True;
     end;

     with frxReport do
     begin
          EngineOptions.MaxMemSize := 10000000;
          EngineOptions.UseFileCache := True;
          PreviewOptions.Buttons :=
              [pbPrint,
               pbZoom,
               pbFind,
               pbPageSetup,
               pbTools,
               pbNavigator,
               pbExportQuick];
     end;
end;

procedure Tsunap_f.DataToPrintForm(varDate, varDate2, sYoungNo: string);
var
     imsiryo, i: integer;
begin

     with frxReport do
     begin
          Variables['OutDate'] := QuotedStr(formatDatetime('YYYY-MM-DD', now) ); // 발급일자
          Variables['ChartNo'] := QuotedStr(ma_chart); //차트번호
          Variables['PtName']  := QuotedStr(ma_paName); //수진자명

          if trim(lblKind.caption) = '' then
             Variables['Gubun']   := QuotedStr(lblJongBeul.caption)    //종별구분
          else
              Variables['Gubun']   := QuotedStr(lblJongBeul.caption + '('+lblKind.caption +')' ) ;

          // 야간공휴
       //   if ((jinryo_f.varChoje = '심야초진') or (jinryo_f.varChoje =
       //        '심야재진')) then
               //      Variables['YaganGongHyu'] := QuotedStr('■야간')
      //         Variables['YaganGongHyu'] := QuotedStr('야간')
      //    else
               Variables['YaganGongHyu'] := QuotedStr('    ');

          if  Ibwon= false then
          begin

                Variables['were']      := QuotedStr('■ 외래'); //■ 외래
                Variables['ibwon']     := QuotedStr('□ 입원'); //□ 입원
                Variables['ibwonjung'] := QuotedStr('□ 중간'); //□ 중간
                Variables['ibwontwe']  := QuotedStr('□ 퇴원'); //□ 퇴원
                Variables['JinDay']    := QuotedStr(varDate); //진료일자
                Variables['ByungSil']  := QuotedStr('');
          end
          else
          begin

                Variables['were']      := QuotedStr('□ 외래'); //■ 외래
                Variables['ibwon']     := QuotedStr('■ 입원'); //□ 입원
                Variables['ibwonjung'] := QuotedStr('□ 중간'); //□ 중간
                Variables['ibwontwe']  := QuotedStr('□ 퇴원'); //□ 퇴원
                Variables['JinDay']    := QuotedStr(varDate +' ~ ' + varDate2); //입원일자
                Variables['ByungSil']  := QuotedStr('HM-01');
          end;






          Variables['TotJinryo']       := edtChong2.intValue + edtBonin1.intValue;
          Variables['TotBonin']        := edtSunapChongek.intValue;
          Variables['SunabSum']        := edtSunap.intValue; // 수납액(총계)
          Variables['SunabCard']       := edtCard.intValue; // 카드액
          Variables['SunabCash']       := edtHyun.intValue + edttong.intValue+ edttong2.intValue; // 현금액
          Variables['SunabCashYoungsu']:= edtHyunReceipt.intValue;
          // 현금영수증액



   //급여 본인부담
          Variables['YJinchal']        := returnStr(grdsunap.cells[3,3]); // 진찰료
          Variables['YIBwon']          := returnStr(grdsunap.cells[3,4]); // 입원
          Variables['YSiksa']          := returnStr(grdsunap.cells[3,5]); // 식대
          Variables['YJojae']          := returnStr(grdsunap.cells[3,6]); // 투약 및 조제료
          Variables['YJusa']           := returnStr(grdsunap.cells[3,8]); // 주사
          Variables['YJusaJae']        := returnStr(grdsunap.cells[3,9]); // 주사재료
          Variables['YMarche']         := returnStr(grdsunap.cells[3,10]); // 마취료
          Variables['YSusul']          := returnStr(grdsunap.cells[3,11]); // 처치수술
          Variables['YGumsa']          := returnStr(grdsunap.cells[3,12]); // 검사료
          Variables['YXRay']           := returnStr(grdsunap.cells[3,13]); // 방사선
          Variables['YChiryoJaeryo']   := returnStr(grdsunap.cells[3,15]); // 치료재료
          Variables['YMulri']          := returnStr(grdsunap.cells[3,16]);
          Variables['YTotBonin']       := '0'; //lblBAek.intValue; // 100/100
          Variables['YCT']             := returnStr(grdsunap.cells[3,19]);
          Variables['YMRI']            := returnStr(grdsunap.cells[3,20]);
          Variables['YChoum']          := returnStr(grdsunap.cells[3,22]);
          Variables['YBoOrtho']        := returnStr(grdsunap.cells[3,23]);
          Variables['YSelectJinryo']   := '0';
          Variables['YEtc']            := returnStr(grdsunap.cells[3,24]);
          Variables['YSuhyul']         := '0';      //
          Variables['YUserDef2']       := '0';
          Variables['YUserDef3']       := '0';
          Variables['YUserDef4']       := '0';
          Variables['YSum']            :=  edtSumBonin.IntValue; // 급여계
          Variables['YBonin']          :=  edtSumBonin.IntValue ; // 본인부담금
          Variables['YBohum']          := returnStr('');// edtSumGongDan.IntValue ; // 보험자부담금

   //급여 공단부담금

          Variables['GJinchal']       := returnStr(grdsunap.cells[4,3]); // 진찰료
          Variables['GIBwon']         := returnStr(grdsunap.cells[4,4]); // 입원
          Variables['GSiksa']         := returnStr(grdsunap.cells[4,5]); // 식대
          Variables['GJojae']         := returnStr(grdsunap.cells[4,6]); // 투약 및 조제료
          Variables['GJusa']          := returnStr( grdsunap.cells[4,8]); // 주사
          Variables['GJusaJae']       := returnStr( grdsunap.cells[4,9]); // 주사재료
          Variables['GMarche']        := returnStr( grdsunap.cells[4,10]); // 마취료
          Variables['GSusul']         := returnStr( grdsunap.cells[4,11]); // 처치수술
          Variables['GGumsa']         := returnStr( grdsunap.cells[4,12]); // 검사료
          Variables['GXRay']          := returnStr( grdsunap.cells[4,13]); // 방사선
          Variables['GChiryoJaeryo']  := returnStr( grdsunap.cells[4,15]); // 치료재료
          Variables['GMulri']         := returnStr( grdsunap.cells[4,16]);
          Variables['GTotBonin']      :=  '0';//returnStr( grdsunap.cells[4,16]);
          Variables['GCT']            := returnStr( grdsunap.cells[4,19]);
          Variables['GMRI']           := returnStr( grdsunap.cells[4,20]);
          Variables['GChoum']         := returnStr( grdsunap.cells[4,22]);
          Variables['GBoOrtho']       := returnStr( grdsunap.cells[4,23]);
          Variables['GSelectJinryo']  := '0';
          Variables['GEtc']           := returnStr( grdsunap.cells[4,24]);
          Variables['GSuhyul']        :=  '0';      //
          Variables['GUserDef2']      :=  '0';
          Variables['GUserDef3']      :=  '0';
          Variables['GUserDef4']      :=  '0';
          Variables['GSum']           :=  edtSumGongdan.IntValue;   // 급여계
          Variables['GBonin']         :=  returnStr( '');// edtSumBonin.IntValue;     // 본인부담금
          Variables['GBohum']         :=  edtSumGongDan.IntValue;    // 보험자부담금





                //급여 전액 본인부담
          Variables['JJinchal']          := '0'; // 진찰료
          Variables['JIBwon']            := '0';// 입원
          Variables['JSiksa']            := '0'; // 식대
          Variables['JJojae']            := '0';// 투약 및 조제료
          Variables['JJusa']             := '0'; // 주사
          Variables['JJusaJae']          := '0'; // 주사재료
          Variables['JMarche']           := '0'; // 마취료
          Variables['JSusul']            := '0';// 처치수술
          Variables['JGumsa']            := '0';// 검사료
          Variables['JXRay']             := '0'; // 방사선
          Variables['JChiryoJaero']       := '0'; // 치료재료
          Variables['JTotBonin']         := '0';
          Variables['JEtc']              := '0'; //lblBAek.intValue; // 100/100
          Variables['JMulri']            := '0';
          Variables['JCT']               := '0';
          Variables['JMRI']              := '0';
          Variables['JChoum']            := '0';
          Variables['JBoOrtho']          := '0';
          Variables['JSuhyul']           := '0';  //
          Variables['JSelectJinro']       := '0';
          Variables['JSum']              := '0';
          Variables['JBonin']            := '0';
          Variables['JBohum']            := '0';
          Variables['JUserDef2']         := '0'; // 급여계
          Variables['JUserDef3']         := '0'; // 본인부담금
          Variables['JUserDef4']         := '0'; // 보험자부담금


   //비급여
          Variables['BJinchal']        := returnStr(grdsunap.cells[6,3]); // 진찰료
          Variables['BIBwon']          := returnStr(grdsunap.cells[6,4]); // 입원
          Variables['BSiksa']          := returnStr(grdsunap.cells[6,5]); // 식대
          Variables['BJojae']          := returnStr(grdsunap.cells[6,6]); // 투약 및 조제료
          Variables['BJusa']           := returnStr(grdsunap.cells[6,8]); // 주사
          Variables['BJusaJae']        := returnStr( grdsunap.cells[6,9]); // 주사재료
          Variables['BMarche']         := returnStr(grdsunap.cells[6,10]); // 마취료
          Variables['BSusul']          := returnStr(grdsunap.cells[6,11]); // 처치수술
          Variables['BGumsa']          := returnStr(grdsunap.cells[6,12]); // 검사료
          Variables['BXRay']           := returnStr(grdsunap.cells[6,13]); // 방사선
          Variables['BChiryoJaeryo']   := returnStr(grdsunap.cells[6,15]); // 치료재료
          Variables['BMulri']          := returnStr(grdsunap.cells[6,16]);
          Variables['BTotBonin']       := '0'; //lblBAek.intValue; // 100/100
          Variables['BCT']             := returnStr(grdsunap.cells[6,19]);
          Variables['BMRI']            := returnStr(grdsunap.cells[6,20]);
          Variables['BChoum']          := returnStr(grdsunap.cells[6,22]);
          Variables['BBoOrtho']        := returnStr(grdsunap.cells[6,23]);
          Variables['BSelectJinryo']   := '0';
          Variables['BEtc']            := returnStr(grdsunap.cells[6,24]);
          Variables['BSuhyul']         := '0';   //YSuhyul, GSuhyul, JSuhyul, BSuhyul
          Variables['BUserDef2']       := '0';
          Variables['BUserDef3']       := '0';
          Variables['BUserDef4']       := '0';
          Variables['BSum']            :=  edtSumBigub.IntValue; // 비급여계
          Variables['BBonin']          := '0'; // 본인부담금
          Variables['BBohum']          := '0'; // 보험자부담금

          Variables['PrevSunab']        := edtPrevSunap.intValue;
          Variables['YoIm']             := QuotedStr(memChamgo.text);
          Variables['YoungsuNo']        := QuotedStr(sYoungNo);   // 영수증번호
          Variables['HospitalName']     := QuotedStr(configvalue.varSaupname);// 상호명
          Variables['Doctor']           := QuotedStr(configvalue.varDaepyo);  // 대표원장 이름
          Variables['BussNo']           := QuotedStr(configvalue.varSaupNo); // 사업자등록번호
          Variables['Sojae']            := QuotedStr(configvalue.varAdd1 + ' ' +  configvalue.varAdd2); // 사업장 소재지
     end;
end;

procedure Tsunap_f.LoadChargeKind; //sKind
const
     SQL_SELECT_ChargeKIND = 'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''095%'') and (code <> ''095000'')     ' + #13#10 +
          'order by sortorder    ';

     SQL_SELECT_ChargeKIND2 = 'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''095%'') and (code <> ''095000'')   and ( val <>  ''A'' )     ' + #13#10 +
          'order by sortorder    ';

begin
     cbSKind.items.clear;
     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;
          if varviewAll <> true then
               SQL.Text := sql_select_ChargeKind2
          else
               SQL.Text := sql_select_ChargeKind;

          Open;
          First;
          cbSKind.Items.Add('');
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbSkind.items.Add(FieldByName('disp').asString);
                    next;
               end;
          end;
     end;
     cbSKind.itemindex := 0;

end;
procedure Tsunap_f.LoadSunapGubunHangmok; //SunapGubunHangMok
const
     SQL_SELECT_ChargeKIND = 'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''105%'') and (code <> ''105000'')     ' + #13#10 +
          'order by sortorder    ';

     SQL_SELECT_ChargeKIND2 = 'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''105%'') and (code <> ''105000'')   and ( val <>  ''A'' )     ' + #13#10 +
          'order by sortorder    ';

begin
    cbSunapGubunHangMok.items.clear;
     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;
          if varviewAll <> true then
               SQL.Text := sql_select_ChargeKind2
          else
               SQL.Text := sql_select_ChargeKind;

          Open;
          First;
          cbSunapGubunHangMok.Items.Add('');
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbSunapGubunHangMok.items.Add(FieldByName('disp').asString);
                    next;
               end;
          end;
     end;
     cbSunapGubunHangMok.itemindex := 0;

end;

procedure Tsunap_f.LoadPlanChamgo(varChart: string);
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_tpcharge');
          Sql.Add(' where chart=:chart');
        //  Sql.Add(' and kind=:kind');
          ParamByName('chart').AsString := varChart;
       //   ParamByName('kind').AsString := IntToStr(1);
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin

               if  memPlanMemo.text  <> '' then
                     memPlanMemo.text :=   memPlanMemo.text + #10#13 + FieldByName('Remark').AsString
               else
                     memPlanMemo.text :=   FieldByName('Remark').AsString ;


               next;
               end;
          end
     end;
end;

procedure Tsunap_f.updateSunapyoungsuno(youngsu_num: string); //영수증번호저장
begin
     with dm_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          Sql.Add('update  ma_sunap  set ');
          Sql.Add('youngsu_num=:youngsu_num  ');
          Sql.Add('where chart = :chart and sday=:sday and team=:team');
          //  ParamByName('jinryo_pid').AsString :=  edtJinryoPid.Text;
          ParamByName('chart').AsString := ma_chart;
          ParamByName('sDay').AsString := lblsunapDay.caption;
          ParamByName('team').AsString :=  cbDoc.ColumnItems[cbDoc.itemindex, 0] ;// inttostr(cbTeam.itemindex + 1);
          ParamByName('youngsu_num').AsString := youngsu_num;
          execsql;
     end;
end;

procedure Tsunap_f.btnSignClick(Sender: TObject);
var
     varMon: integer;
begin
     monStat := not monStat;

//     if not assigned(sunapElectSignInput_f) then
//          sunapElectSignInput_f := TsunapElectSignInput_f.Create(sunap_f);
//
//     //todo: 여기서 show하지 않으면 항상 이 모니터의 왼쪽과 top에 붙는다.....
//     sunapElectSignInput_f.Show;
//
//
//     if checkInt(sunapElectSignInput_f.edtMon2.text) <> true then
//     begin
//         sunapElectSignInput_f.edtMon1.text:= '0';
//         sunapElectSignInput_f.edtMon2.text:= '1';
//
//     end;
//          if  monStat = true then
//             varMon := strtoint(sunapElectSignInput_f.edtMon2.text)
//          else
//             varMon := strtoint(sunapElectSignInput_f.edtMon1.text);
//
//          //테스트
//          //     varMon := cbSkind.ItemIndex;
//
//          if   (screen.MonitorCount > 1) and  (varMon >= 0 ) then
//          begin
//            sunapElectSignInput_f.left := Screen.Monitors[varMon].Left;
//            sunapElectSignInput_f.top := Screen.Monitors[varMon].Top;
//          end;
//
//
//
//
//
//
//     sunapElectSignInput_f.edtSunapDay.text := lblsunapDay.caption;
//     sunapElectSignInput_f.edtSunapEk.text := formatfloat('#,0', edtSunap.FloatValue);
//     sunapElectSignInput_f.edtSunapNeyuk.text := memChamgo.text;
//     sunapElectSignInput_f.edtMisu.text := lblJan.caption;
//
//
//     if configvalue.varHideTot <> '0'  then
//     begin
//         sunapElectSignInput_f.edtTot.Visible := false;
//         sunapElectSignInput_f.label9.Visible :=  false;
//     end
//     else
//     begin
//         sunapElectSignInput_f.edtTot.Visible := true;
//         sunapElectSignInput_f.label9.Visible :=  true;
//     end;
//
//     sunapElectSignInput_f.edtTot.text := lblSum.caption;
//
//
//
//
//     sunapElectSignInput_f.pnlSunapSignHx.align:=alClient;
//
//     sunapElectSignInput_f.loadSignData(ma_chart);
//
////     sunapElectSignInput_f.Show;
//
//     sunapElectSignInput_f.BringToFront;
//
//     {case screen.MonitorCount of
//     2:
//     begin
//           sunapElectSignInput_f.left :=Screen.Monitors[1].Left;
//           sunapElectSignInput_f.top := Screen.Monitors[1].Top;
//          // regSign_f.width := Screen.Monitors[1].width;
//          // regSign_f.height := Screen.Monitors[1].height;
//     end;
//     3:
//      begin
//           sunapElectSignInput_f.left := Screen.Monitors[2].Left;
//           sunapElectSignInput_f.top := Screen.Monitors[2].Top;
//          // regSign_f.width := Screen.Monitors[1].width;
//          // regSign_f.height := Screen.Monitors[1].height;
//     end;
//     end;
//      }
//
//     { if  inputElectSign_f.ShowModal = mrOk then
//      begin
//           image2.Picture.LoadFromFile(extractFilePath(ParamStr(0))+'signdata/'+ ma_chart+'sign.bmp');
//           SaveToBmpData(ma_chart,
//           formatdatetime('YYYY-MM-DD',now),
//           '1', extractFilePath(ParamStr(0))+'signdata/'+ ma_chart+'sign.bmp');
//      end;}

end;
function Tsunap_f.SetSunapValue:double;
begin


 if isLoading=false then
 begin
    if configvalue.varHyunSunapIn = '1' then //현금영수증금액이 현금에 포함됨
       result:=
         edthyun.FloatValue
       + edtcard.FloatValue
       + edttong.FloatValue
       + edttong2.FloatValue
       + edttongReceipt.FloatValue
       + edtHyunReceipt.FloatValue
     //  - edtGammyun.FloatValue
    else
       result:=
         edthyun.FloatValue
        + edtcard.FloatValue
        + edttong2.FloatValue
        + edttong.FloatValue;
       // - edtGammyun.FloatValue ;

 end;
end;


procedure Tsunap_f.btnSignListClick(Sender: TObject);
var
     varMon: integer;
begin
//      sunap_f.monStat := not sunap_f.monStat;
//
//     if ma_chart = '' then
//          exit;
//
//     if not assigned(regSign_f) then
//          regSign_f := TregSign_f.Create(sunap_f) ;
//
//     regSign_f.Show;
//
//     if checkInt(regSign_f.Edit2.text) <> true then
//     begin
//         regSign_f.Edit1.text:= '0';
//         regSign_f.Edit2.text:= '0';
//     end;
//
//          if  monStat = true then
//             varMon := strtoint(regSign_f.Edit2.text)
//          else
//             varMon := strtoint(regSign_f.Edit1.text);
//
//     if   (screen.MonitorCount > 1) and  (varMon >= 0 ) then
//     begin
//         regSign_f.left := Screen.Monitors[varMon].Left;
//         regSign_f.top := Screen.Monitors[varMon].Top;
//     end;
//     regSign_f.bringToFront;


end;

procedure Tsunap_f.Button20Click(Sender: TObject);
begin
         Recalc( strtoint(jumintoNai(ma_jumin)),   //StrToInt(jinryo_f.LblAge.Caption),
               ma_sunapJong,//jinryo_f.cmbJongbeul.itemIndex + 1,
               ma_sunapDate,//lblSunapDay.caption,
               ma_chart);


end;

procedure Tsunap_f.Button26Click(Sender: TObject);
var
    L_RET : Integer;


    aRecv_LED_Code           : array [1..1] of ansiChar;
    aRecv_Amount_Num         : array [1..9] of ansiChar;
    aRecv_Tax_Num            : array [1..9] of ansiChar;
    aRecv_Auth_Num           : array [1..9] of ansiChar;
    aRecv_Gamaengjeom_Num    : array [1..20] of ansiChar;
    aRecv_Issuer_Code        : array [1..20] of ansiChar;
    aRecv_Issuer_Name        : array [1..20] of ansiChar;
    aRecv_Purchase_Code      : array [1..20] of ansiChar;
    aRecv_Purchase_Name      : array [1..20] of ansiChar;







   Recv_LED_Code           : string;
   Recv_Amount_Num         : string;
   Recv_Tax_Num            : string;
   Recv_Auth_Num           : string;
   Recv_Gamaengjeom_Num    : string;
   Recv_Issuer_Code        : string;
   Recv_Issuer_Name        : string;
   Recv_Purchase_Code      : string;
   Recv_Purchase_Name      : string;



    POS_Serial_Port_Num   :integer;
    amount                :array[0..10] of ansiChar;
    halbu                 :array[0..1] of ansiChar;
    gubun                 :integer;
    org_auth_date         :array[0..10] of ansiChar;
    org_auth_no           :array[0..10] of ansiChar;

    dllPath : PwideChar;

begin

if cbCertkind.ItemIndex <= 0 then
begin
   showmessage('거래종류 선택하세요');
   exit;
end;

//  strpcopy(dllPath, extractFilePath(paramStr(0)) + 'cardcert\kovan\KovanSocketCat.dll' );
//  dllPath := extractFilePath(paramStr(0)) + 'cardcert\kovan\KovanSocketCat.dll' ;
//  DllHandle := LoadLibrary(dllPath);//('KovanSocketCat.dll');
  DllHandle := LoadLibrary('KovanSocketCat.dll');
  @Kovan_Send_Serial_VB := GetProcAddress(DllHandle, 'Kovan_Send_Serial_VB');
{
1MSR신용승인
2MSR신용취소
3현금영수증승인
4현금영수증취소
5가영수증
6IC/MSR신용승인
7IC/MSR신용취소
8현금IC 승인
9현금IC 취소
10수표조회
11현금영수증자진발급 승인
12현금영수증자진발급 취소
15해외은련카드 MSR 승인
16해외은련카드 MSR 취소
17해외은련카드 IC 승인
18해외은련카드 IC 취소
19통합포인트 적립 승인
20통합포인트 적립 취소
21통합포인트 사용 승인
22통합포인트 사용 취소}

  FillChar(aRecv_LED_Code, SizeOf(aRecv_LED_Code), 0);
  FillChar(aRecv_LED_Code, SizeOf(aRecv_LED_Code), 0);
  FillChar(aRecv_LED_Code, SizeOf(aRecv_LED_Code), 0);
  FillChar(aRecv_Amount_Num, SizeOf(aRecv_Amount_Num), 0);
  FillChar(aRecv_Tax_Num, SizeOf(aRecv_Tax_Num), 0);
  FillChar(aRecv_Auth_Num, SizeOf(aRecv_Auth_Num), 0);
  FillChar(aRecv_Gamaengjeom_Num, SizeOf(aRecv_Gamaengjeom_Num), 0);
  FillChar(aRecv_Issuer_Code, SizeOf(aRecv_Issuer_Code), 0);
  FillChar(aRecv_Issuer_Name, SizeOf(aRecv_Issuer_Name), 0);
  FillChar(aRecv_Purchase_Code, SizeOf(aRecv_Purchase_Code), 0);
  FillChar(aRecv_Purchase_Name, SizeOf(aRecv_Purchase_Name), 0);


    POS_Serial_Port_Num   := 4;
    strpcopy(amount, delcomma(edtHyun.Text));// ansiChar;
    strpcopy(halbu, '00');   //   halbu ansiChar;

    gubun                 := cbCertkind.ItemIndex;

    strpcopy(org_auth_date, '');   //    org_auth_date         :ansiChar;
    strpcopy(org_auth_no, edtAdmitNo.text);  //    org_auth_no           :ansiChar;




  L_RET := Kovan_Send_Serial_VB(
     4              //Port Num
     ,amount //'1004'
     ,halbu//'00'
     ,gubun
     ,org_auth_date
     ,org_auth_no
     , @aRecv_LED_Code[1]
     , @aRecv_Amount_Num[1]
     , @aRecv_Tax_Num[1]
     , @aRecv_Auth_Num[1]
     , @aRecv_Gamaengjeom_Num[1]
     , @aRecv_Issuer_Code[1]
     , @aRecv_Issuer_Name[1]
     , @aRecv_Purchase_Code[1]
     , @aRecv_Purchase_Name[1]   );

//       CopyMemory(@aRecv_LED_Code[1], @ByteArray, length(MakeReq));


//       Recv_LED_Code          := string(@aRecv_LED_Code[1]);
//       Recv_Amount_Num        := string(@aRecv_Amount_Num[1]     );
//       Recv_Tax_Num           := string(@aRecv_Tax_Num[1]        );
//       Recv_Auth_Num          := string(@aRecv_Auth_Num[1]       );
//       Recv_Gamaengjeom_Num   := string(@aRecv_Gamaengjeom_Num[1]);
//       Recv_Issuer_Code       := string(@aRecv_Issuer_Code[1]    );
//       Recv_Issuer_Name       := string(@aRecv_Issuer_Name[1]    );
//       Recv_Purchase_Code     := string(@aRecv_Purchase_Code[1]  );
//       Recv_Purchase_Name     := string(@aRecv_Purchase_Name[1]  );
//       Recv_LED_Code          := @aRecv_LED_Code[1]       ;
//       Recv_Amount_Num        := @aRecv_Amount_Num[1]     ;
//       Recv_Tax_Num           := @aRecv_Tax_Num[1]        ;
//       Recv_Auth_Num          := @aRecv_Auth_Num[1]       ;
//       Recv_Gamaengjeom_Num   := @aRecv_Gamaengjeom_Num[1];
//       Recv_Issuer_Code       := @aRecv_Issuer_Code[1]    ;
//       Recv_Issuer_Name       := @aRecv_Issuer_Name[1]    ;
//       Recv_Purchase_Code     := @aRecv_Purchase_Code[1]  ;
//       Recv_Purchase_Name     := @aRecv_Purchase_Name[1]  ;




   showmessage(inttostr(L_RET) );


   if L_RET > 0 then
   begin
      memo1.Lines.Add('aRecv_LED_Code:'       +wideString(aRecv_LED_Code));
      memo1.Lines.Add('aRecv_Amount_Num:'     +wideString(aRecv_Amount_Num));
      memo1.Lines.Add('aRecv_Tax_Num:'        +wideString(aRecv_Tax_Num));
      memo1.Lines.Add('aRecv_Auth_Num:'       +wideString(aRecv_Auth_Num));
      memo1.Lines.Add('aRecv_Gamaengjeom_Num:'+wideString(aRecv_Gamaengjeom_Num));
      memo1.Lines.Add('aRecv_Issuer_Code:'    +wideString(aRecv_Issuer_Code));
      memo1.Lines.Add('aRecv_Issuer_Name:'    +wideString(aRecv_Issuer_Name));
      memo1.Lines.Add('aRecv_Purchase_Code:'  +wideString(aRecv_Purchase_Code));
      memo1.Lines.Add('aRecv_Purchase_Name:'  +wideString(aRecv_Purchase_Name)  );
   end;

end;

procedure Tsunap_f.Button2Click(Sender: TObject);
var
     i: integer;
     strBunNapGeumek :string;
     varBunNapGeumek : double;
begin

     edtCard.FloatValue := 0;
     edtHyun.FloatValue := 0;
     edtHyunReceipt.FloatValue := 0;
     edtTong.FloatValue := 0;
     edtTong2.FloatValue := 0;
     edtTongReceipt.FloatValue := 0;

     editColorInit;

     chkBunNapButton := chkBunNapButton + 1;
     i := chkBunNapButton mod 6;
     case i of
          1:
             begin
                 edtCard.color:= clWhite;
             end;
          2:
          begin
                 edtHyun.color:= clWhite;
          end;
          3:
          begin
                 edtHyunReceipt.color:= clWhite;
          end;
          4:
          begin
                 edtTong.color:= clWhite;
          end;
          5:
          begin
                 edtTong2.color:= clWhite;
          end;
          0:
          begin
                 edtTongReceipt.color:= clWhite;
          end;
     end;



     if configvalue.varBunnapInputUse <> '0' then
     begin
      strBunNapGeumek:=  inputBox('분납금액','분납금액을 입력하세요.', formatFloat('##0',edtMonthGeumek.Floatvalue));

      varBunNapGeumek := strtoFloat(strBunNapGeumek);
     end
     else
     begin
      varBunNapGeumek := edtMonthGeumek.Floatvalue;
     end;


  //   chkBunNapButton := chkBunNapButton + 1;
     i := chkBunNapButton mod 6;
     case i of
          1:
             begin
                 edtCard.color:= clWhite;
                 edtCard.FloatValue := varBunNapGeumek;
             end;
          2:
          begin
                 edtHyun.color:= clWhite;
                 edtHyun.FloatValue := varBunNapGeumek;
          end;
          3:
          begin
                 edtHyunReceipt.color:= clWhite;
                 edtHyunReceipt.FloatValue := varBunNapGeumek;
          end;
          4:
          begin
                 edtTong.color:= clWhite;
                 edtTong.FloatValue := varBunNapGeumek;
          end;
          5:
          begin
                 edtTong2.color:= clWhite;
                 edtTong2.FloatValue := varBunNapGeumek;
          end;
          0:
          begin
                 edtTongReceipt.color:= clWhite;
                 edtTongReceipt.FloatValue := varBunNapGeumek;
          end;
     end ;

    if varBunNapGeumek > 0 then
       cbBunNap.Checked :=true;

end;

procedure Tsunap_f.spSkinButton11Click(Sender: TObject);
begin
     pnlTong.Visible := false;
     edtTong.FloatValue := varTongek;
     //  edtsunap//e := varSunapEk;

end;

procedure Tsunap_f.spSkinButton10Click(Sender: TObject);
begin
//     grdTong.Post;
//     edtTong.FloatValue :=
//          strToFloat(returnZeroInt(grdTong.Columns[1].Footer.Values[0]));
//     pnlTong.visible := not pnlTong.visible;
//
end;

procedure Tsunap_f.CheckBox1Click(Sender: TObject);
var
     FormInit: Tinifile;
     varZeroShow:string;
begin
     FormInit := Tinifile.Create(ExtractFilePath(ParamStr(0)) + 'db.INI');

      if CheckBox1.Checked then
      FormInit.WriteString('기타정보', 'SUNAPZeroView', '1')
      else
      FormInit.WriteString('기타정보', 'SUNAPZeroView', '0');

     FormInit.Free;

     sebusunapCalc(ma_chart);

end;

procedure Tsunap_f.hwanbulSave;
begin

     with dm_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          Sql.Add('insert into ma_sunap');
          Sql.Add('(chart, sDay,tx,totalCharge,sunapEk,hyun,');
          Sql.Add('card,  supyo,tong,team,bochul,gyojung,  ');
          Sql.Add('imp,   mf,bohum, etc, janek,recallDay,recallTime, sGubun=:sGubun,   ');
          Sql.Add('recallRemark, sign,chamgo,youngSu,gammyunEk, hwanBulEk,MisuEk, usebohum, admitno ,hyuncertno, admitkind, sKind,   ');
          Sql.Add('hyunYoungsu,  YoungsuJa, sTime,HyunReceipt,HyunReceipt_tong, iBohumEk, ietcEk, iilbanEk,bonin1, chong, chung, bonin, jinryo_pid, chojae)  values');
          Sql.Add('(:chart, :sDay,:tx,:totalCharge,:sunapEk,:hyun,');
          Sql.Add(':card,  :supyo, :tong,:team,:bochul,:gyojung,  ');
          Sql.Add(':imp,   :mf,:bohum, :etc, :janek,:recallDay,:recallTime,   ');
          Sql.Add(':recallRemark, :sign,:chamgo,:youngSu,:gammyunEk, :hwanBulEk, :MisuEk,  :usebohum, :admitno ,:hyuncertno, :admitkind, :sKind, ');
          Sql.Add(':hyunYoungsu,  :YoungsuJa , :sTime, :HyunReceipt,:HyunReceipt_tong, :iBohumEk, :ietcEk, :iilbanEk,:bonin1, :chong, :chung, :bonin, :jinryo_pid, :chojae)');
          paramByname('chart').asString := ma_chart;
          paramByname('sDay').asString := lblSunapDay.caption;
          paramByname('sTime').asDateTime := now;
          paramByname('jinryo_pid').asString := edtJinryoPid.Text;

          paramByname('tx').asString := '';
          paramByname('janek').asfloat := 0;

               paramByname('misuEk').asfloat := 0; //일반미수액
               paramByname('iBohumEk').asFloat := 0;

          paramByname('totalCharge').asfloat :=  0;
          paramByname('sunapEk').asfloat := 0;
          paramByname('hyun').asfloat := 0;
          paramByname('card').asfloat := 0;
          paramByname('supyo').asfloat := 0;
          paramByname('tong').asfloat := 0;
          paramByname('team').asinteger :=strtoint( cbDoc.ColumnItems[cbDoc.itemindex, 0]);  //cbTeam.itemindex  +     1;

          paramByname('bochul').asfloat := 0; //none
          paramByname('gyojung').asfloat := 0; //none
          paramByname('imp').asfloat := 0; //none
          paramByname('mf').asfloat := 0; //none

          paramByname('Etc').asfloat := 0;
          paramByname('bohum').asfloat := 0;
          paramByname('chong').asfloat := 0;
          paramByname('chung').asfloat := 0;

          paramByname('sKind').asString := cbsKind.text;
          paramByname('sGubun').asString := cbSunapGubunHangmok.text;

          paramByname('recallDay').asString := ''; //none
          paramByname('recallTime').asString := ''; //none
          paramByname('recallRemark').asString := ''; //none

          paramByname('sign').asString := '';
          paramByname('chamgo').asString := memChamgo.text;
          paramByname('youngSu').asString := '';
          paramByname('GammyunEk').asfloat := 0;
          paramByname('hwanBulEk').asfloat :=  edtHwanBul.FloatValue;
          paramByname('hyuncertno').asstring :=  edtcertno.text;
          paramByname('admitno').asstring := edtadmitno.text;

          if rbBalgeup.Checked = true then
               paramByname('hyunYoungsu').asString := '1'
          else
               paramByname('hyunYoungsu').asString := '0';

          if rbgongje.checked = true then
               paramByname('admitkind').asString := '0';
          if rbjichul.checked = true then
               paramByname('admitkind').asString := '1';
          if rbjajin.checked = true then
               paramByname('admitkind').asString := '2';

          paramByname('YoungsuJa').asInteger :=
               cbHygine.itemIndex;
          paramByname('HyunReceipt').asfloat := 0;
          paramByname('HyunReceipt_tong').asfloat :=0;

          paramByname('ietcEk').asFloat := 0; //none
          paramByname('iilbanEk').asFloat := 0;  //none
          parambyname('bonin1').AsFloat := 0;
          paramByname('bonin').asfloat := 0;
          paramByname('chojae').asinteger := ma_SunapChoje ;//main_f.CbChoje.itemindex + 1;
          if cbin.checked = true then
               paramByname('usebohum').asString := '1'
          else
               paramByname('usebohum').asString := '0';

          execsql;
     end;
end;

procedure Tsunap_f.cbTeamCloseUp(Sender: TObject);
begin

     cmdchk := '1';

     varcombo := true;
     fieldclear;
     varloadOption := 0;

     //       LoadBohumHangMok; // (1)보험항목별로 불러오기
     sunapLoad(ma_chart, lblSunapDay.caption,
      cbDoc.ColumnItems[cbDoc.itemindex, 0] ,
         // intToStr(cbTeam.itemindex +  1),
          cbTeam.Text);

     //  hyunsum;

     //  cmdchk := '0';

end;

procedure Tsunap_f.cbTreatRoomSelect(Sender: TObject);
var
    team_key : string;
begin
   // showmessage('');
     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
     LoadDoclist(cbDoc, team_key);

end;

procedure Tsunap_f.cbTeam2Change(Sender: TObject);
begin
     sebusunapCalc(ma_chart);

end;

procedure Tsunap_f.cbDocChange(Sender: TObject);
begin

     varCombo := false;

end;

procedure Tsunap_f.cbDocCloseUp(Sender: TObject);
begin
//
//     cmdchk := '1';
//
//     varcombo := true;
//
//    if cbMod.Checked   then
//    begin
//        exit;
//    end;
//
//     fieldclear;
//     varloadOption := 0;
//
//     //       LoadBohumHangMok; // (1)보험항목별로 불러오기
//
//
//
//     sunapLoad(ma_chart, lblSunapDay.caption,
//      cbDoc.ColumnItems[cbDoc.itemindex, 0] ,
//         // intToStr(cbTeam.itemindex +  1),
//          cbTeam.Text);
//
//     //  hyunsum;
//
//     //  cmdchk := '0';




end;

procedure Tsunap_f.cbDuplaicateClick(Sender: TObject);
begin

     cmdchk := '1';

  //   lblSunapDay.caption := formatDateTime('YYYY-MM-DD', now);
     varcombo := true;
     fieldclear;
     varloadOption := 0;

     LoadPlanChamgo(ma_chart);

end;
procedure Tsunap_f.LoadJinryohangMok(scrollbox:TScrollBox);
begin
     x := 10; //checkBox의 초기 Left값
     y := 2; //checkBox의 초기 Top값
     i := 0;
     //sbGroup의 내용을 모두 지운다.
     if scGroup.ControlCount > 0 then
     begin
          while scGroup.ControlCount > 0 do
          begin
               scGroup.Controls[0].Destroy;
          end;


     end;




     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_chart_hangmok');
          Sql.Add('order by hangmokcode');

          Open;
          First;

          if not IsEmpty then
          begin
               while not eof do
               begin
                    //ShowMessage(FieldByName('disp').AsString);
                    DisplayJinryoHangmok(fieldByName('hangmokname').asString);
                    //if x < scGroup.Width - 85 then
                    if x < scGroup.Width - 125 then
                    begin
                         //     x := x + 65; //checkBox의 Left증가값
                         x := x + 105; //checkBox의 Left증가값
                    end
                    else
                    begin //줄바꿔서
                         x := 10; //checkBox의 초기 Left값
                         y := y + 20; //checkBox의 Top 증가 값

                    end;
                    i := i + 1; //이름 명 변경
                    Next;
               end;
          end;
     end;

end;

procedure Tsunap_f.DisplayJinryoHangMok(groupRemark: string);
//검색된 고객 그룹을 스크롤박스에 뿌려준다.
var
     tempCheckBox: TCheckBox;
begin

     SetLength(varJinryoHangMok, 100);

     tempCheckBox := TCheckBox.Create(scGroup);

     with tempCheckBox do
     begin
          Parent := scGroup;
          Left := x;
          Top := y;
          Font.Size := 9;
          Width := 65;
          Height := 17;
          Color := clWhite;
          Font.Size := 9;
          Font.Name := '굴림';
          Font.Color := clBlue;
          Name := 'cb' + 'Gogekgroup' + inttostr(i);
          //ShowMessage('CheckBox.Name: ' + Name);
          varJinryoHangMok[i] := groupRemark;
          caption := groupRemark;
          showhint := true;
          // Hint := Name;
          Hint := groupRemark;
          //showmessage('00'+groupRemark);
     end;

     //memGroup.Name := tempCheckBox.Name;
     //memGroup.Text := tempCheckBox.Caption;

end;

procedure Tsunap_f.FormCreate(Sender: TObject);
begin
       LoadJinryohangMok(scGroup);
       pnlLeft.Align := alLeft;
       pnlSunapInfo.Align := alClient;


       grdCard.ColWidths[3] := 0;
       grdCard.ColWidths[4] := 0;
       grdCard.rowCount := 2;


       grdCard.align:=alClient;


       edtMemoEtc.Align := alClient;
       edtDr.Align := alClient;

       edtDr.text:='';
       edtMemoEtc.text:='';


       cbHwanbulkind.itemindex:= 1;

       Ibwon := false;  //영수증 출력용  입원 체크


       isMagam:=false;
       isMagamTemp:=false;

       pnlSunapInfo.Visible:= false;
       SetGridTitle;

       comboset; //콤보에 기본사항 불러오기

       initAdvPanel(pnlDr, dm_f.PictureContainer1);
       initAdvPanel(pnlHyunYoung, dm_f.PictureContainer1);
       initAdvPanel(pnlPrintMemo, dm_f.PictureContainer1);
end;

procedure Tsunap_f.LoadSunapMemo(varChart: string; jin_day : Tdate); //환자의 그날치 수납메모만 가져온다.
var
  Temp: string;
  varLength: Integer;
  varRichText: TRichEdit;
  dap: array [1 .. 100] of string;
  varRgTag: Integer;
  BStream: TStream;
  i: Integer;
  iTabIndex: Integer;
begin

  if varChart <> '' then
  begin

    varRichText := edtDr;
    varRichText.text := '';
    with Dm_f.SqlTemp13 do
    begin
      close;
      SQL.Clear;
      SQL.Add('Select * from hxDent');
      SQL.Add('Where Dchart= :DChart and DDate=:DDate');
      paramByName('DChart').asString := varChart;
      paramByName('DDate').asDate := jin_day;
      open;
      if not isEmpty then
      begin
        while not eof do
        begin

          varLength := Length(varRichText.text);
          Temp := fieldByname('DMemo').asString;
          (varRichText).Lines.Add(Temp);
          (varRichText).SelStart := varLength;
          (varRichText).SelLength := Length(Temp);
          //CurrText(varRichText).Color := clGreen;
          next;
        end;
      end;
    end;

  end;

end;


{ //todo: 수납폼을 작업표시줄에 보이게 하는거임. 힌트를 보이거나 저장할 경우 수납폼이 뒤로 숨는경우가 있어서 일단 보류
procedure Tsunap_f.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;
}




procedure Tsunap_f.SaveJinryoHangmok(varChart: string); //간편진료항목 저장
var
     varGroup: integer;
     varGroupCount: integer;
     varFirstDay: string;
begin
     if trim(varchart)= '' then
     exit;

     varGroupCount := scGroup.ControlCount;
     with dm_f.SqlWork do
     begin

          Close;
          Sql.Clear;
          Sql.Add('delete from ma_chart_hangmok_data');
          Sql.Add('where chart=:Chart and regday=:regDay and team=:team ');
          ParamByName('team').AsString := cbDoc.ColumnItems[cbDoc.itemindex, 0]  ;
          ParamByName('Chart').AsString := varChart;
          ParamByName('regDay').AsString := lblsunapday.caption;
          execsql;
     end;
     if varGroupCount > 0 then
     begin
          for varGroup := 0 to varGroupCount - 1 do
          begin

               if (scGroup.FindComponent('cbGogekgroup' +
                    inttostr(varGroup)) as
                    TCheckBox).Checked = true then
               begin
                    with dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('insert into ma_chart_hangmok_data');
                         Sql.Add('(Chart, Gubun, regDay, team, doc, sunapid) values');
                         Sql.Add('(:Chart, :Gubun, :regDay, :team, :doc, :sunapid)');
                         ParamByName('Chart').AsString := varChart;
                         ParamByName('team').AsString := cbDoc.ColumnItems[cbDoc.itemindex, 0];
                         ParamByName('doc').AsString := cbDoc.ColumnItems[cbDoc.itemindex, 2];
                         ParamByName('Gubun').AsString :=
                              (scGroup.FindComponent('cbGogekgroup'
                              +
                              inttostr(varGroup)) as
                              TCheckBox).Caption;

                         ParamByName('regDay').AsString :=lblsunapday.caption;
                         ParamByName('sunapid').AsString :=varSunapID;
                         execSql;
                    end;
               end;
          end;
     end;

end;


procedure Tsunap_f.LoadJinryoHangMokData(varChart: string; varDay:string; varDoc:string;  scrollbox:TScrollBox);
var
     varComponentCount: integer;
begin


     for varComponentCount := 0 to scrollBox.controlcount - 1 do
     begin
          (scGroup.FindComponent('cbGogekgroup'
               +
               inttostr(varComponentCount)) as
               TCheckBox).checked
               := false;
     end;


     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_chart_hangmok_data                ');
          Sql.Add('where Chart=:chart and regDay=:regDay and doc=:doc');
          ParamByName('Chart').AsString := varChart;
          ParamByName('regDay').AsString := varDay;
          ParamByName('doc').AsString := varDoc;
          open;

          if not isEmpty then
          begin
               while not eof do
               begin

                    for varComponentCount := 0 to scrollBox.controlcount - 1 do
                    begin
                         if varJinryoHangMok[varComponentCount] =
                              fieldByName('gubun').asString then
                              (scrollBox.FindComponent('cbGogekgroup'
                                   +
                                   inttostr(varComponentCount)) as
                                   TCheckBox).checked
                                   := true;
                    end;
                    next;
               end;
          end;
     end;
end;

procedure Tsunap_f.grdSunapChamgoResize(Sender: TObject);
begin
      grdSunapChamgo.ColWidths[2]:=  grdSunapChamgo.Width
          - grdSunapChamgo.ColWidths[0] - grdSunapChamgo.ColWidths[1] - 20;
end;

procedure Tsunap_f.grdplanGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          5,7..10:
               begin
                    hAlign := taRightJustify;
               end;
          0..3,6:
               begin
                    hAlign := taCenter;
               end;
     end;
     if aRow= 0 then
         hAlign := taCenter;

end;

procedure Tsunap_f.grdplanGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          5..10:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure Tsunap_f.grdplanGetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
     floatformat := '%0.n';
end;

procedure Tsunap_f.grdmainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

     case aCol of
          5..19,28:
               begin
                    hAlign := taRightJustify;
               end;
          0..4,20..22,24..25:
               begin
                    hAlign := taCenter;
               end;
     end;

     if aRow= 0 then
         hAlign := taCenter;
end;

procedure Tsunap_f.grdmainClickSort(Sender: TObject; ACol: Integer);
begin
        grdmain.autoNumberCol(0);

end;

procedure Tsunap_f.grdmainClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     if arow <= 1 then
     exit;

     grdCardClear;

     case aCol of
     0:  deletesunap;
     1..25:  lineSunapLoad(aRow);
     end;

end;

procedure Tsunap_f.grdmainGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if ARow mod 2 = 0 then
          ABrush.color := $00EFEFEF;

end;

procedure Tsunap_f.grdmainGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          5..19,28:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure Tsunap_f.grdSunapChamgoGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if aRow= 0 then
         hAlign := taCenter;

end;

procedure Tsunap_f.Button5Click(Sender: TObject);
var
     varCaption: string;
begin
     if configvalue.varSunapComment ='1' then
     begin
            with dm_f.sqlWork do
           begin
                Close;
                sql.Clear;
                sql.Add(' Select * from ma_gogek_basic');
                sql.Add(' Where chart = :chart ');
                ParamByName('chart').AsString := ma_chart;
                Open;
                if not IsEmpty then
                begin
                     if  ma_chart <> '' then
                     begin

                          if not assigned(saveChamgo_f) then
                          begin
                               saveChamgo_f := TsaveChamgo_f.Create(application);
                               saveChamgo_f.Caption := 'Daily Comment';
                               saveChamgo_f.Left := 500; //pnlRemark.Left - (saveChamgo_f.width) div 2 - 50;
                               saveChamgo_f.Top := 400; //spSkinPanel2.Top;

                               saveChamgo_f.varrgTag :=0;
                               saveChamgo_f.Showmodal;
                          end
                          else
                          begin
                               saveChamgo_f.Caption := 'Daily Comment';
                               saveChamgo_f.Left := 500; //(Sender as TAdvGroupBox).Left + saveChamgo_f.width;
                               saveChamgo_f.Showmodal;
                          end;
                     end;
                end;

           end;
     end
     else
     begin
       with dm_f.sqlWork do
           begin
                Close;
                sql.Clear;
                sql.Add(' Select * from ma_gogek_basic');
                sql.Add(' Where chart = :chart ');
                ParamByName('chart').AsString := ma_chart;
                Open;
                if not IsEmpty then
                begin
                     if  ma_chart <> '' then
                     begin

                          if not assigned(saveChamgo_f) then
                          begin
                               saveChamgo_f := TsaveChamgo_f.Create(application);
                               saveChamgo_f.Caption := '수납 참고사항';
                               saveChamgo_f.Left := 500; //pnlRemark.Left - (saveChamgo_f.width) div 2 - 50;
                               saveChamgo_f.Top := 400; //spSkinPanel2.Top;

                               saveChamgo_f.varrgTag :=8;
                               saveChamgo_f.Showmodal;
                          end
                          else
                          begin
                               saveChamgo_f.Caption := '수납 참고사항';
                               saveChamgo_f.Left := 500; //(Sender as TAdvGroupBox).Left + saveChamgo_f.width;
                               saveChamgo_f.Showmodal;
                          end;
                     end;
                end;

           end;



     end;


     ChamgoLoad;



end;

procedure Tsunap_f.grdSunapDtxGetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
     floatformat := '%0.n';

end;

procedure Tsunap_f.grdSunapDtxGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          2..4:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure Tsunap_f.grdSunapGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin

     case aRow of
          0..2 :
          begin
            HAlign := taCenter;
            vAlign := vtaCenter;
          end;
     end;

     if aRow > 2 then
         case aCol of

              0..2 :
              begin
                  HAlign := taCenter;
                  vAlign := vtaCenter;
              end;
              3..6 :
              begin
                  HAlign := taRightJustify;
                  vAlign := vtaCenter;
              end;
         end;

end;

procedure Tsunap_f.grdSunapGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  case aCol of
          3..6:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;
end;

procedure Tsunap_f.grdplanDblClick(Sender: TObject);
var
    i: integer;
    varId:integer;
begin
      grdSunapDtx.rowcount:=1;

    //  label6.Caption:= grdPlan.cells[11, grdPlan.row];  //ID

      PnlSunapDtx.left :=pnlSunapInfo.left;
      PnlSunapDtx.top := pnlSunapChamgo.top;
      PnlSunapDtx.Visible:=true;

      for i:= 1 to grdPlan.rowcount -1 do
      begin

             varId:=   grdPlan.ints[13, i];
             grdSunapDtx.addRow;
             grdSunapDtx.cells[1,i]  := grdPlan.cells[4, i]; //치료계획 항목
             grdSunapDtx.ints[2,i]  := grdPlan.ints[7, i];//치료계획금액
             grdSunapDtx.ints[3,i]  := grdPlan.ints[10, i];//치료계획 남은금액
             grdSunapDtx.ints[5,i]  := varId;//ID

             grdSunapDtx.ints[4,i]  := loadSunapDtx( varId , lblSunapday.caption);  //항목별 수납금액을 가져오자.
      end;

end;


procedure Tsunap_f.bunnapSave(nCount:integer=1) ;
var
   i:integer;
   varSunapId:integer;
   varJin_day:string;
   varKumak:integer;
   nCnt:integer;
begin

       nCnt := 0;
       if cbBunnap.checked = false then
          exit;

       with dm_f.sqlTemp2 do
       begin


           close;
           sql.Clear;
           sql.text:= 'delete from ma_sunap_bunnap '+#10#13+
                     ' where chart=:chart  and  regday=:regday ';
           paramByName('chart').asString :=  ma_chart;
           paramByName('regday').asString := lblSunapDay.caption;
           execsql;


           close;
           sql.Clear;
           sql.text:= 'insert into ma_sunap_bunnap '+#10#13+
                     '( chart, regday, nCnt) values '+#10#13+
                     '( :chart, :regday, :nCnt) ';
           paramByName('chart').asString :=  ma_chart;
           paramByName('regday').asString := lblSunapDay.caption;
           paramByName('nCnt').asInteger :=  nCount;
           execsql;


           lblBunnap.caption :=loadBunnapCount( ma_chart);//   formatFloat('00',  fieldByName('nCount').asInteger);
       end;


end;


function Tsunap_f.loadBunnapCount(varChart:string) : string;
begin
       result:='0';
       with dm_f.sqlTemp2 do
       begin
           close;
           sql.Clear;
           sql.text:= 'select sum(nCnt) as nCount from ma_sunap_bunnap '  +#10#13 +
                     ' where chart=:chart ';
             paramByName('chart').asString :=  varChart;
           open;
            result:=     formatFloat('00',  fieldByName('nCount').asInteger);
       end;
end;


procedure Tsunap_f.loadBunnapInfo(varChart, varDay:string);
begin
        cbBunnap.checked:=false;
        edtBunnap.value:=  1 ;
       with dm_f.sqlTemp2 do
       begin
           close;
           sql.Clear;
           sql.text:= 'select * from ma_sunap_bunnap '  +#10#13 +
                     ' where chart=:chart and regday=:regDay ';
             paramByName('chart').asString :=  varChart;
             paramByName('regDay').asString :=  varDay;
           open;
            if not isEmpty then
            begin
               cbBunnap.checked:=true;
               edtBunnap.value:=   FieldByName('ncnt').asInteger ;
            end;
       end;
end;

procedure Tsunap_f.saveSunapDtx;
var
   i:integer;
   varSunapId:integer;
   varJin_day:string;
   varKumak:integer;
begin
      for i:= 1 to grdSunapDtx.rowcount do
      begin
             varSunapId := grdSunapDtx.ints[5,i];
             varJin_day  := lblSunapday.caption;
             varKumak := grdSunapDtx.ints[4,i];


                 //dtx_sunap save

                 with dm_f.sqlTemp2 do
                 begin
                     close;
                     sql.Clear;
                     sql.text:= 'select * from dtx_sunap '+#10#13+
                               ' where id=:id and jin_day=:jin_day';
                     paramByName('id').asInteger :=  varSunapId;
                     paramByName('jin_day').asString :=  varJin_day;
                     open;
                     if isEmpty then  //insert
                     begin
                            if   varKumak  > 0 then
                            begin
                                 close;
                                 sql.Clear;
                                 sql.text:= 'insert into dtx_sunap '+#10#13+
                                           '( id, jin_day, kumak) values '+#10#13+
                                           '( :id, :jin_day, :kumak) ';
                                 paramByName('id').asInteger :=  varSunapId;
                                 paramByName('jin_day').asString :=  varJin_day;
                                 paramByName('kumak').asInteger :=  varKumak;
                                 execsql;
                            end;
                     end
                     else
                     begin
                            close;
                            sql.Clear;
                            sql.text:= 'update dtx_sunap set ' +#10#13+
                                      '  kumak =:kumak ' +#10#13+
                                     ' where id=:id and jin_day=:jin_day';
                            paramByName('id').asInteger :=  varSunapId;
                            paramByName('jin_day').asString :=  varJin_day;
                            paramByName('kumak').asInteger :=  varKumak;
                            execsql;

                     end;
                 end;


      end;



      //치료계획 리스트를 다시 세팅하자...
       LoadPlanList( ma_chart);
       grdSunapDtx.RemoveRows(1, grdSunapDtx.rowcount-1);

end;


function Tsunap_f.DeleteSunapDtx(varJin_day:string):boolean;
var
    varID, i : integer;
begin
       result:= false;

       for i:= 1 to grdPlan.RowCount - 1 do
       begin

            varId:= grdPlan.ints[12, i] ;

             try
             with dm_f.sqlTemp2 do
             begin
                close;
                sql.Clear;
                close;
                sql.Clear;
                sql.text:= 'delete from dtx_sunap  ' +#10#13+
                         ' where  jin_day=:jin_day and id=:id';
                paramByName('jin_day').asString :=  varJin_day;
                paramByName('id').asInteger :=  varID;
                execsql;
                result:=true;
             end;
             except
             end ;
       end;


end;

function Tsunap_f.LoadSunapDtx(varSunapId:integer;  varJin_day:string):integer;
var
   varKumak:integer;
begin
      result:=0;
      with dm_f.sqlTemp2 do
      begin
          close;
          sql.Clear;
          sql.text:= 'select sum(kumak) as SumKumak from dtx_sunap '+#10#13+
                    ' where id=:id and jin_day=:jin_day';
          paramByName('id').asInteger :=  varSunapId;
          paramByName('jin_day').asString :=  varJin_day;
          open;
          if not isEmpty then 
          begin

                 varKumak:= fieldByName('SumKumak').asInteger  ;

          end
          else
          begin

                 varKumak:=0;
          end;
      end;
      result:=   varKumak;
end;


procedure Tsunap_f.LoadSunapDtx_day(varChart :string) ;
begin
      with dm_f.sqlTemp2 do
      begin
          close;
          sql.Clear;

          sql.text:= 'select  b.jin_day as sDay, a.description as sName,  '+#10#13+
              'kumak as sKumak from dtx a  join dtx_sunap  b on a.id=b.id       '+#10#13+
              'where chart=:chart                                           ';
          paramByName('chart').asString :=  varChart;
          open;
          if not isEmpty then
          begin
               while not eof do
               begin


                 grdSunapDtx_day.addRow;
                 grdSunapDtx_day.cells[1,grdSunapDtx_day.rowcount-1]  := fieldByName('sDay').asString ; //일자
                 grdSunapDtx_day.cells[2,grdSunapDtx_day.rowcount-1]  := fieldByName('sName').asString ;//치료계획
                 grdSunapDtx_day.ints[3,grdSunapDtx_day.rowcount-1]  := fieldByName('sKumak').asInteger ;// 금액
                 next;

               end;
                grdSunapDtx_day.AutoNumberCol(0);
          end
          else
          begin

          end;
      end;

end;




procedure Tsunap_f.Button7Click(Sender: TObject);
begin
      grdSunapDtx.RemoveRows(1, grdSunapDtx.rowcount-1);
      PnlSunapDtx.Visible:=false;
      grdSunapDtx_day.RemoveRows(1, grdSunapDtx_day.rowcount-1);
      PnlSunapDtx_day.Visible:=false;
end;

procedure Tsunap_f.grdSunapDtxGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          2,3,4:
               begin
                    hAlign := taRightJustify;
               end;
          0,1:
               begin
                    hAlign := taCenter;
               end;
     end;
     if aRow= 0 then
         hAlign := taCenter;

end;

procedure Tsunap_f.grdSunapDtxGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
//   if aCol= 3 then
//       AEditor:=  edButton ;
end;

procedure Tsunap_f.Button8Click(Sender: TObject);
var
   nSum  : double;
begin
   nSum :=   grdSunapDtx.ColumnSum(4);
   sSunapKind := (sender as TButton).Tag;

     case sSunapKind of
       0: edtTong.FloatValue :=nSum ;
       1: edtTongReceipt.FloatValue := nSum;
       2: edtCard.FloatValue :=nSum;
       3: edtHyunReceipt.FloatValue :=nSum;
       4: edtHyun.FloatValue := nSum;
     end;
     PnlSunapDtx.Visible:=false;



end;

procedure Tsunap_f.PlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin

      lblSunapDay.caption := formatDateTime('yyyy-mm-dd',  (strtodate(ma_sunapDate)) );// SelDate);

//      if pnlFinal.Visible = true then
//      begin
//          PlannerCalendar1.visible := false;
//          exit;
//      end;

      SunaponlyShow(lblSunapDay.caption);


      PlannerCalendar1.visible := false;

{     fieldclear2;

     //comboset; //콤보에 기본사항 불러오기
     sunapLoad(ma_chart, lblSunapDay.caption,
          inttostr(main_f.cbDoc.ItemIndex + 1),
          main_f.cbDoc.Text);
     LoadPlanChamgo(ma_chart);    }
end;

procedure Tsunap_f.pnlLeftDblClick(Sender: TObject);
begin
     pnlCost.Visible := not   pnlCost.Visible;
     advpanel6.Visible := not   advpanel6.Visible;
end;

procedure Tsunap_f.memChamgoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    varpass : string;
begin

          if trim(configvalue.varPassAccountFinal) <> '' then
              varpass:=  trim(configvalue.varPassAccountFinal)
          else
              varPass:= v_UserPass; //main_f.v_UserPass;


      case key of
       VK_F3 : //마감수정 버튼을 보이게 하자.
      begin
           btnModMagam.Visible := true;
      end;
       VK_F8 :  //완납취소버튼을 보이게 하자.
            begin
//               if (ssShift in shift) and (ssCtrl in Shift) then //납처리된 상태에서 완납 패널을 감추고 수납내용을 보여준다.
//               begin
//                    PassInput_f :=    TPassInput_f.Create(application);
//                    if PassInput_f.Showmodal = mrOK then
//                    begin
//                       if PassInput_f.edtpass.text = varPass then
//                       begin
//
//                          pnlFinal.Visible := false ;  //완납등록창
//                          pnlSunapList.Caption.Visible := true;
//
//                       end;
//                    end;
//               end
//               else
//               begin  //완납처리, 완납취소 버튼을 보여준다.
//                 btnEndAccountCancel.Visible := true;
//                 btnEndAccount.Visible := true;
//               end;
            end;

      end;

end;

procedure Tsunap_f.btnModMagamClick(Sender: TObject);
var
    varpass : string;
begin

          if trim(configvalue.varPassMagamUpdate) <> '' then
              varpass:=  trim(configvalue.varPassMagamUpdate)
          else
              varPass:=  v_UserPass;//main_f.v_UserPass;

          PassInput_f :=
               TPassInput_f.Create(application);
          if PassInput_f.Showmodal = mrOK then
          begin
               if PassInput_f.edtpass.text = varPass then
               begin

                   updateMagamStat(varSunapID,'2');  //magam값을 2로 바꿔준다. magamtemp='2' ==> 마감을 수정할 수 있도록 해준다.
                   isMagam:= false;
                   isMagamTemp:= true;

                   btnSave.enabled:= true;


               end
               else
               begin
                   showmessage('관리자 문의 후 진행하십시오.');
               end;
          end;


end;


procedure Tsunap_f.updateMagamStat(varSunapID:string; varMagam:string);
begin

     with dm_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          Sql.Add('update ma_sunap set');
          Sql.Add('magam = :magam') ;
          Sql.Add('where s_id =:s_id and chart=:chart') ;
          paramByname('s_Id').asString := varSunapID;
          paramByName('chart').asString := ma_chart;
          paramByname('magam').asString := varMagam;
          execsql;
     end;   
     isMagam := false;
     btnSet(0);

end;


procedure Tsunap_f.PrintToSrp770II;
var
     sYoungNo: string;
     i: Integer;
     yagan, gonghyu: string;
     VarSNo, VarJuso, VarSangho, VarName, VarDate: string;
     sDate, eDate: string;
begin

  //   if ((jinryo_f.CmbChojae.itemIndex = 2) or (jinryo_f.CmbChojae.itemIndex
  //        = 3)) then
  //   begin
  //        yagan := '0';
          //야간공휴:아마 낮에만 보여지니가 공휴만 활성화 시키다...
  //        gonghyu := '1';
  //   end;
     VarSNo := configvalue.varsaupNo;
     VarJuso := configvalue.varAdd1 + ' ' + configvalue.varAdd2;
     VarSangho := configvalue.varsaupname;
     VarName := configvalue.varDaepyo;
     VarDate := FormatDateTime('YYYY', now) + '년 ' +
          FormatDateTime('MM', now) + '월 ' +
          FormatDateTime('DD', now) + '일';

     if ma_chart <> '' then
     begin
          for i := 0 to 8 do
          begin
               GrdCost2.Cells[1, i] := '0';
               GrdCost2.Cells[2, i] := '0';
               GrdCost2.Cells[3, i] := '0';
               GrdCost2.Cells[4, i] := '0';
               GrdCost2.Cells[5, i] := '0';
          end;

          Recalc( strtoint(jumintoNai(ma_jumin)),   //StrToInt(jinryo_f.LblAge.Caption),
               ma_sunapJong,//jinryo_f.cmbJongbeul.itemIndex + 1,
               ma_sunapDate,//lblSunapDay.caption,
               ma_chart);


          sYoungNo := '';
          with dm_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('select jin_day,youngsu_num from jinryo_p where chart=:chart and jin_day=:jin_Day and jin_gu=''0'' and chojae<>''9'' and chojae<>''0'' ');
               ParamByName('chart').AsString := ma_chart;
               ParamByName('jin_day').AsString := ma_sunapDate;//lblSunapDay.caption;
               Open;
               First;
               if not isEmpty then
               begin
                    if FieldByName('youngsu_num').AsInteger > 0 then
                    begin
                         sYoungNo :=// FormatDateTime('yyyymmdd',  jinryo_f.dMain.Date)
                         delDash(ma_sunapDate) + '-' +
                              Formatfloat('000',
                              FieldByName('youngsu_num').AsInteger);
                    end
                    else
                    begin
                         sYoungNo :=
                              MakeNewYoungsu(strtodate(ma_sunapDate));// jinryo_f.dMain.Date);
                    end;
               end
               else
               begin
                    sYoungNo :=
                         MakeNewYoungsu(strtodate(ma_sunapDate));//(jinryo_f.dMain.Date);
               end;
          end;

          sDate := FormatDateTime('YYMMDD', (strtodate(ma_sunapDate)) );//jinryo_f.dMain.Date);
          eDate := FormatDateTime('YYMMDD', (strtodate(ma_sunapDate)) );//jinryo_f.dMain.Date);
          varDate := FormatDateTime('YY-MM-DD', (strtodate(ma_sunapDate)) );//jinryo_f.dMain.Date);

     {     PrintReceipt(
                   ma_chart,
                   ma_paName,
                   varDate,
                   yagan,
                   gonghyu,
                   '치 과',
                   '0',
                   '국민건강',
                   sYoungNo,
                   formatFloat('###,##0', wNumlabel1.FloatValue),
                   '0',
                   '0',
                   '0',
                   '0',
                   '0',
                   formatFloat('#,0', GrdCost2.cells[1, 0].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[3, 0].AsInteger + RealGrid 3.cells[1, 0].AsInteger),
                   '0',
                   '0',
                   formatFloat('#,0', GrdCost2.cells[1, 1].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[3, 1].AsInteger + RealGrid3.cells[1, 1].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[1, 3].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[3, 3].AsInteger + RealGrid3.cells[1, 3].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[1, 4].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[3, 4].AsInteger + RealGrid3.cells[1, 4].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[1, 5].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[3, 5].AsInteger + RealGrid3.cells[1, 5].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[2, 0].AsInteger + GrdCost2.cells[2, 1].AsInteger + GrdCost2.cells[2, 3].AsInteger + GrdCost2.cells[2, 4].AsInteger + GrdCost2.cells[2, 5].AsInteger + GrdCost2.cells[2, 7].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[4, 6].AsInteger + GrdCost2.cells[0, 6].AsInteger + GrdCost2.cells[1, 6].AsInteger + GrdCost2.cells[2, 6].AsInteger + GrdCost2.cells[4, 3].AsInteger + GrdCost2.cells[4, 4].AsInteger + GrdCost2.cells[4, 5].AsInteger + GrdCost2.cells[4, 7].AsInteger),
                   formatFloat('#,0', 0), //lblBAek.FloatValue),
                   '0',
                   '0',
                   '0',
                   '0',
                   formatFloat('#,0', GrdCost2.cells[1, 8].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[5, 8].AsInteger),
                   '0',
                   '0',
                   '0',
                   '0',
                   '0',
                   '0',
                   formatFloat('#,0', 9999),
                   formatFloat('#,0', GrdCost2.cells[5, 6].AsInteger + RealGrid3.cells[1, 6].AsInteger),
                   formatFloat('#,0', GrdCost2.cells[1, 7].AsInteger),
                   formatFloat('#,0', RealGrid3.cells[1, 7].AsInteger),
                   formatFloat('#,0', Realgrid14.Cells[1, 3].AsInteger),
                   formatFloat('#,0', Realgrid14.Cells[1, 2].AsInteger),
                   formatFloat('#,0', Realgrid14.Cells[1, 0].AsInteger),
                   formatFloat('#,0', Realgrid14.Cells[1, 5].AsInteger),
                   '0',
                   '0',
                   formatFloat('#,0', edtSunap.FloatValue),
                   QuotedStr(varSno),
                   QuotedStr(varJuso),
                   QuotedStr(varSangho),
                   QuotedStr(varname),
                   lblSunapDay.caption);
   }

     end;
end;

procedure Tsunap_f.Button12Click(Sender: TObject);
var
   i: integer;
begin
  grdMain.ResetColumnOrder;
  for i := 0 to grdMain.ColCount - 1 do
   grdMain.AddButton(i, 0, 16, 16, 'X', haRight, vaTop);

end;

procedure Tsunap_f.Button13Click(Sender: TObject);
var
  inifile: TInifile;
begin
  inifile := TIniFile.Create('.\grid.ini');
  inifile.WriteString('GRID', 'SETTINGS', grdMain.ColumnStatesToString);
  inifile.Free;
end;

procedure Tsunap_f.Button14Click(Sender: TObject);
var
  inifile: TInifile;
  s: string;
begin
  grdMain.ResetColumnOrder;

  inifile := TIniFile.Create('.\grid.ini');
  s := inifile.ReadString('GRID', 'SETTINGS', '');
  inifile.Free;

  if s <> '' then
    grdMain.StringToColumnStates(s);
end;


procedure Tsunap_f.grdmainButtonClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  grdMain.HideColumn(grdMain.RealColIndex(Acol));

end;

procedure Tsunap_f.AdvSplitter1DblClick(Sender: TObject);
begin
       pnlSunapPlan.Height :=100;
end;

procedure Tsunap_f.AdvSplitter2DblClick(Sender: TObject);
begin
       pnlSunapChamgo.Height :=100;

end;

function Tsunap_f.loadSunapChamgo(chartno, sunapDay : string) : string;
var
    varChamgo: string;
begin
      result:='';
      varChamgo := '';
     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          Sql.Add('select * from ma_sunap');
          Sql.Add('where chart = :chart');
          Sql.Add(' and sDay = :sDay');
          paramByname('chart').asString := chartNo;
          paramByname('sDay').asString := sunapDay;
          open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    if varchamgo <> '' then
                          varChamgo := varChamgo + #10+ fieldByName('chamgo').asString
                    else
                          varChamgo :=  fieldByName('chamgo').asString ;
                    next;
               end;

          end;
     end;
     result:= varChamgo;
end;


procedure Tsunap_f.FirstDataPrint;
var
    nRet : Integer ;
    sign_data : Byte ;
    strPrintData : String ;
    addr : string;
    sangho : string;
    tel : string;
    daepyoname : string;
    printDay : string;
    yeyakRemark : string;
    sunapRemark : string;
    patName : string;
begin
    addr   :=  configvalue.varAdd1 +' '+  configvalue.varAdd2;   //'충남 보령시 대천동 181-15 목화빌딩3층';
    sangho :=  configvalue.varsaupname;//  '바른이 교정치과';
    tel    :=  configvalue.varTel1;//  '041-931-7591';
    daepyoname  := configvalue.varDaepyo;// '윤호진';
    printDay    := formatDatetime('YYYY-MM-DD hh:nn:ss', now);
    yeyakRemark := LoadNextPromiseDay(ma_chart, formatdatetime('YYYY-MM-DD', now));
    // edtrecallday.text  + ' ' + edtrecallTime.text  + ' '+ edtRecall.text;
    sunapRemark := loadSunapChamgo(ma_chart, formatDatetime('YYYY-MM-DD', now) );//memChamgo.text;

    if  trim(sunapRemark) ='' then
    sunapRemark := '수납내역이 없습니다.';

    if  trim(edtrecallTime.text) ='' then
       yeyakRemark  := '다음 예약이 없습니다. 예약 확인 바랍니다.';


    patName := ma_paName;

              // edtrecallday.text := fieldByName('pDay').AsString;
              // /edtrecallTime.text := fieldByName('pTime').AsString;
              // edtRecall.text := fieldByName('Remark').AsString;

//     nRet := POS4CAT_COMCreate();
//     If (nRet = 0) Then
//     begin
//          strPrintData := Chr(10);
//          strPrintData := strPrintData + Chr(10);
//          strPrintData := strPrintData + Chr(10);
//          strPrintData := strPrintData + formatdatetime('YYYY-MM-DD', now) + ' '+ '[수납 및 예약확인서]' +Chr(10)+ Chr(10) ;
//         { strPrintData := strPrintData + sangho + Chr(10) + Chr(10) ;
//
//          strPrintData := strPrintData + '주소 : '+  addr +  Chr(10);
//          strPrintData := strPrintData + '성명 : ' + daepyoName + Chr(10);
//          strPrintData := strPrintData + '전화 : ' + tel+ Chr(10);
//          strPrintData := strPrintData + '일자 : ' + printDay+ Chr(10) ;
//         }
//          strPrintData := strPrintData + patName + '님 귀하'                         + Chr(10);
//          strPrintData := strPrintData + '----------------------------------------'  + Chr(10);
//          strPrintData := strPrintData + '당일 수납내역'              + Chr(10) + Chr(10);
//          strPrintData := strPrintData + sunapRemark                                 + Chr(10);
//          strPrintData := strPrintData + '----------------------------------------'  + Chr(10);
//          strPrintData := strPrintData + '다음 예약내역'                                  + Chr(10) + Chr(10);
//          strPrintData := strPrintData + yeyakRemark                                 + Chr(10);
//          strPrintData := strPrintData + '----------------------------------------'  + Chr(10);
//          strPrintData := strPrintData + '정성을 다하겠습니다.' + Chr(10);
//          strPrintData := strPrintData + '예약일정에 변동이 생기시면 연락 주시기 바랍니다.' + Chr(10);
//
//          strPrintData := strPrintData + Chr(10);
//          strPrintData := strPrintData + Chr(10);
//          strPrintData := strPrintData + Chr(10);
//          strPrintData := strPrintData + Chr(17); //Paper cut 0x11
//
//          nRet := POS4CAT_ExFreeStylePrint(pChar(strPrintData));
//          If (nRet = 0) Then
//               nRet := POS4CAT_COMStatus();
//          If (nRet <> 0) Then
//              showmessage('프리스타일 프린트 확인요함!!');
//
//      End;
    //  POS4CAT_ServiceTerminate();
end;


procedure Tsunap_f.Button15Click(Sender: TObject);
begin
   FirstDataPrint;
end;

procedure Tsunap_f.grdplanGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    if   grdplan.Cells[11, aRow] ='1' then
    aBrush.Color := clYellow;
end;

procedure Tsunap_f.sunapMisuInit(varchart, varDate:string);
begin
     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          Sql.Add('select * from ma_sunap_misu_init ');
          Sql.Add('where chart = :chart');
          paramByname('chart').asString := varChart;
          open;
          if isEmpty then
          begin
                //insert

                Close;
                SQL.Clear;
                Sql.Add('insert into  ma_sunap_misu_init ');
                Sql.Add('( chart, regDate) values');
                Sql.Add('( :chart, :regDate)');
                paramByname('chart').asString := varChart;
                paramByname('regDate').asString :=   varDate;// formatDatetime('YYYY-MM-DD', now);
                execsql;
                showmessage('미수납이 초기화 되었습니다.');
          end
          else
          begin
                //delete
                Close;
                SQL.Clear;
                Sql.Add('delete from ma_sunap_misu_init ');
                Sql.Add('where chart = :chart');
                paramByname('chart').asString := varChart;
                execsql;
                showmessage('미수납 초기화가 해제 되었습니다.');

          end;
     end;
end;



procedure Tsunap_f.saveNapBuGeumek(varchart:string; napBuGeumEk:integer);
begin

     if napBuGeumEk > 0 then
     begin
           with dm_f.SqlWork do
           begin

                Close;
                SQL.Clear;
                Sql.Add('select * from ma_sunap_napBu ');
                Sql.Add('where chart = :chart');
                paramByname('chart').asString := varChart;
                open;
                if isEmpty then
                begin
                      //insert

                      Close;
                      SQL.Clear;
                      Sql.Add('insert into  ma_sunap_napBu');
                      Sql.Add('( chart, GeumEk) values');
                      Sql.Add('( :chart, :GeumEk)');
                      paramByname('chart').asString := varChart;
                      paramByname('GeumEk').asInteger :=   napBuGeumEk;
                      execsql;

                end
                else
                begin
                      //delete
                      Close;
                      SQL.Clear;
                      Sql.Add('delete from ma_sunap_napBu ');
                      Sql.Add('where chart = :chart');
                      paramByname('chart').asString := varChart;
                      execsql;


                      Close;
                      SQL.Clear;
                      Sql.Add('insert into  ma_sunap_napBu');
                      Sql.Add('( chart, GeumEk) values');
                      Sql.Add('( :chart, :GeumEk)');
                      paramByname('chart').asString := varChart;
                      paramByname('GeumEk').asInteger :=   napBuGeumEk;
                      execsql;


                end;
           end;
        end
        else
        begin
           with dm_f.SqlWork do
           begin
                      //delete
                      Close;
                      SQL.Clear;
                      Sql.Add('delete from ma_sunap_napBu');
                      Sql.Add('where chart = :chart');
                      paramByname('chart').asString := varChart;
                      execsql;
           end;
        end;
end;
function Tsunap_f.LoadMisuInitStat(varchart:string) : string;
begin

     result := '';

     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          Sql.Add('select * from ma_sunap_misu_init ');
          Sql.Add('where chart = :chart');
          paramByname('chart').asString := varChart;
          open;
          if not isEmpty then
          begin
                result := fieldByname('regDate').asString;
          end;
     end;
end;


procedure Tsunap_f.Button16Click(Sender: TObject);
begin
    grdCard.AddRow() ;
end;

procedure Tsunap_f.Button18Click(Sender: TObject);
begin
      grdSunapDtx_day.RemoveRows(1, grdSunapDtx_day.rowcount-1);
      PnlSunapDtx_day.Visible:=false;

end;

procedure Tsunap_f.btnSaveNprintClick(Sender: TObject);
begin
//       btnSaveClick(self);
       sunaspSaveAll(false);
       Printeceipt(false);
       close;
end;

procedure Tsunap_f.Button17Click(Sender: TObject);
var
    i: integer;
    varId:integer;
begin
      grdSunapDtx_day.rowcount:=1;

    //  label6.Caption:= grdPlan.cells[11, grdPlan.row];  //ID

      PnlSunapDtx_day.left :=PnlSunapDtx.left;
      PnlSunapDtx_day.top := PnlSunapDtx.top + PnlSunapDtx.height;
      PnlSunapDtx_day.Visible:=true;

      LoadSunapDtx_day(ma_chart) ;
end;


procedure Tsunap_f.grdCardGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
   case ACol of
              1:
            begin
                AEditor := edComboEdit;
                grdCard.Combobox.Items.Assign(StringList1);
            end;
   end;
end;

procedure Tsunap_f.grdCardComboCloseUp(Sender: TObject; ARow,
  ACol: Integer);
begin
     if aRow = 1  then
     begin
         grdCard.floats[aCol + 1, aRow]  := edtCard.FloatValue ;
     end
     else
     begin
         grdCard.floats[aCol + 1, aRow]  := 0;

     end;
 //    grdCard.col := aCol + 1; // 컬럼포서스 이동

  //   btnSet(1);

end;

procedure Tsunap_f.grdCardClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  case ACol of
       0 :
       begin
          if aRow >= 1 then
          begin
              grdCard.RemoveRows(aRow, 1);
              btnSet(1);
          end;
     
       end;
   end;
end;

procedure Tsunap_f.grdCardRowChanging(Sender: TObject; OldRow,
  NewRow: Integer; var Allow: Boolean);
begin

     edtCard.FloatValue :=
           grdCard.ColumnSum(2,1, grdCard.RowCount -1);

end;

procedure Tsunap_f.grdJx2ClickCell(Sender: TObject; ARow, ACol: Integer);
var
     grdRect: Trect;
begin

     grdRect := grdJx2.CellRect(ACol, Arow);

     if (aRow=0) and (acol=0) then
     begin

             gridColSelect(grdJx2, grdRect, clbJinryoHx);
     end;

end;


procedure Tsunap_f.grdCardGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
     2:
         begin
           halign := taRightJustify;
           VAlign := vTaCenter;


         end;
     end;
end;

procedure Tsunap_f.grdCardGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
     2:
         begin
            aStyle := ssFinancial;


         end;
     end;

end;


procedure Tsunap_f.grdCardClear; //카드 수납내역 초기화
var
   i: integer;
begin
      grdCard.rowcount := 2;
      for i:= 1 to  grdCard.rowcount-1 do
      begin
            grdCard.cells[1, i] :=  '';
            grdCard.ints[2, i] :=  0;
            grdCard.ints[3, i] :=  0;
            grdCard.ints[4, i] :=  0;
      end;

end;

procedure Tsunap_f.cbAutoHyunreceiptClick(Sender: TObject);
begin
       pnlHyunYoung.Visible := true;
end;

procedure Tsunap_f.cbCertKindChange(Sender: TObject);
begin
     // cbCertKind
     pnlHyunYoung.Visible := true;
end;

procedure Tsunap_f.cbChoiceClick(Sender: TObject);
var
   i: integer;
begin
     grdMain.BeginUpdate;
     for i:= 2 to  grdMain.rowcount -1 do
     begin

           if cbChoice.Checked = true then
            begin

                 grdMain.AddCheckBox(0,i,false, false);

            end
            else
            begin
                 grdMain.RemoveCheckBox(0,i);
              //   grdMain.AutoNumberCol(0);
            end;

     end;
     grdMain.EndUpdate;


     btnDeleteChecked.Visible :=  cbChoice.Checked;

end;



procedure Tsunap_f.DeleteSunapLines(varChart:string; varID:string; varteam:string; varSunapDay:string; varMagam:string);
begin
       if  varMagam = '1' then
       begin
          showmessage('이미 마감된 수납내역입니다.'+#10#13+'관리자 문의 후 진행하십시오.');

          exit;
       end;


         with dm_f.sqlWork do
         begin

                Close;
                SQL.Clear;
                Sql.Add('delete from ma_sunap');
                Sql.Add('where s_id = :s_id and chart=:chart');
                paramByname('s_id').asString := varID;
                paramByName('chart').asString := ma_chart;

                ExecSQL;



                     //1. sunapcard의 sunapid값이 있는지 확인한다.
                //2. 있으면 sunapid값으로 지우고 없으면 기존방식  chart and CardDate  and team 으로 지우자.
                Close;
                SQL.Clear;

                Sql.Add('select *  from sunapcard');
                Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
                paramByname('chart').asString := ma_chart;
                paramByname('CardDate').asString := varSunapDay;
                paramByname('team').asString :=  varTeam ;
                open;
                if (fieldbyname('sunapid').asString <> '')
                   or (fieldbyname('sunapid').asString <> '0') then
                begin
                         Close;
                         SQL.Clear;

                         Sql.Add('delete from sunapcard');
                         Sql.Add('where sunapid=:sunapid');
                         paramByname('sunapid').asString := varId;
                         ExecSQL;
                end
                else
                begin


                         Close;
                         SQL.Clear;

                         Sql.Add('delete from sunapcard');
                         Sql.Add('where chart=:chart and CardDate=:Carddate  and team=:team ');
                         paramByname('chart').asString := varChart;
                         paramByname('CardDate').asString := varSunapDay;
                         paramByname('team').asString :=  varTeam;
                         ExecSQL;
                end;

                Close;
                SQL.Clear;
                Sql.Add('delete from sunapCard');
                Sql.Add('where sunapid = :s_id and chart=:chart');
                paramByname('s_id').asString := varID;
                paramByName('chart').asString := ma_chart;

                ExecSQL;

                Close;
                SQL.Clear;
                Sql.Add('delete from ma_sunap_bibo');
                Sql.Add('where sunapid = :s_id and chart=:chart');
                paramByname('s_id').asString := varID;
                paramByName('chart').asString := ma_chart;

//                Sql.Add('where chart = :chart  and sunapdate=:sunapdate');
//                paramByname('chart').asString := varChart;
//                paramByname('sunapdate').asString := varSunapDay;
                ExecSQL;

                with dm_f.SqlWork do
                begin

                     Close;
                     Sql.Clear;
                     Sql.Add('delete from ma_chart_hangmok_data');
                     Sql.Add('where chart=:Chart and regday=:regDay and team=:team ');
                     ParamByName('team').AsString := varTeam  ;
                     ParamByName('Chart').AsString := varChart;
                     ParamByName('regDay').AsString := varSunapDay;
                     execsql;
                end;

       end;
       DeleteSunapDtx(varSunapDay);

end;

procedure Tsunap_f.btnDeleteCheckedClick(Sender: TObject);
var
     i: integer;
     varAccess: string; //sawon and regipower 의 query  value

     stat: boolean;
begin
     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.Add('select distinct s.said,r.pgset from ma_sawon_basic s join ma_pgpower r on s.sapower = r.powerid');
          sql.Add('where s.said =:id and r.pgid=:pgid and r.pgset = ''1''                ');
          parambyname('id').AsString :=  V_UserId; //  main_f.V_UserId;
          parambyname('pgid').AsString :=     'mnumagamday';   //일일점검
          open;
          if not isEmpty then
                varAccess := '1';
     end;


     if  varAccess = '1' then
     begin
          PassInput_f :=
               TPassInput_f.Create(application);
          if PassInput_f.Showmodal = mrOK then
          begin
               if PassInput_f.edtpass.text =   v_UserPass then //  main_f.v_UserPass then
               begin

                    if
                         Application.MessageBox('수납기록을 삭제하시겠습니까?', '확인',
                         MB_OKCANCEL) = 1 then
                    begin

                          for i:= 1 to grdmain.rowcount - 1 do
                          begin
                                   grdmain.GetCheckBoxState(0, i, stat);
                                   if stat = true then
                                   begin
                                          if  grdmain.Cells[29, i] <> '1' then  //  magam이 1인것 제외
                                         DeleteSunapLines(grdmain.Cells[4, i],
                                            grdmain.Cells[25, i],  //s_id
                                            grdmain.Cells[4, i], //    varteam:string;
                                            grdmain.Cells[1, i], //varSunapDay:string;
                                            '0'); //varMagam:string);
                                   end;
                          end;

                          for i:= 2 to grdmain.rowcount - 1 do
                          begin

                              grdMain.AddCheckBox(0,i,false, false);

                          end;


                    end;
               end
               else
                    showmessage('패스워드가 일치하지 않습니다.');

           end;
      end;

       fieldclear;
       sebusunapCalc(ma_chart);
      // comboset;

end;

procedure Tsunap_f.FormResize(Sender: TObject);
begin
//             pnlFinal.top:=  pnlSunapplan.Top;
//             pnlFinal.left:=  pnlLeft.width;
//             pnlFinal.width:=  pnlSunapplan.width;
//             pnlFinal.height:=  pnlSunapplan.height;

end;

procedure Tsunap_f.lblTonHyunYpungClick(Sender: TObject);
begin
     if enableBtn = false then
          exit;

     if lblTonHyunYpung.Tag = 0 then
     begin
          lblTonHyunYpung.Tag := 1;
          edtTongReceipt.FloatValue := edtsunapchongek.FloatValue
                                     - edtcard.FloatValue
                                     - edtTong2.FloatValue
                                     - edtHyunReceipt.FloatValue
                                     - edtHyun.FloatValue;

     end
     else
     begin
          lblTonHyunYpung.Tag := 0;
          edtTongReceipt.FloatValue := 0;
     end;
end;

procedure Tsunap_f.edtHyunClick(Sender: TObject);
begin


     editColorInit;
//    (sender as TadvEdit).color := clWhite;

end;

procedure Tsunap_f.N1Click(Sender: TObject);
begin
      DeleteSunapSign;
end;



//procedure Tsunap_f.SetJinSO(sChart, sJin_day: string; sJin_day2:string='');
//var
//     i: Integer;
//begin
//
//     grdJx2.RemoveRows(1,grdJx2.RowCount-1 );
//
//     with dm_f.sqlTemp13 do
//     begin
//          Close;
//          Sql.Clear;
//          Sql.Add('select * from jinryo_s  ');
//          Sql.Add(' where chart=:chart ');
//
//          if   sJin_day2 <> '' then
//          begin
//               sql.Add(' and jin_day >=:jin_day and jin_day <=:jin_day2 ');
//               ParamByName('jin_day2').AsString := sJin_day2;
//          end
//          else
//          begin
//               sql.Add(' and jin_day=:jin_day  ');
//          end;
//           sql.add(' order by sort_key'); //and (su_gu3<>''09'' or jin_danga>0)
//           ParamByName('jin_day').AsString := sJin_day;
//           ParamByName('chart').AsString := sChart;
//
//          Open;
//          First;
//          if not isEmpty then
//          begin
//
//
//               while not eof do
//               begin
//                    grdJx2.AddRow;
//                    if (FieldByName('Su_gu1').AsString = '1') then
//                    begin
//                         grdJx2.Cells[0, grdJx2.RowCount -  1] :=  '재료';
//                    end
//                    else
//                         if (FieldByName('Su_gu1').AsString = '2') then
//                         begin
//                              grdJx2.Cells[0, grdJx2.RowCount - 1] := '행위';
//                         end
//                         else
//                              if (FieldByName('Su_gu1').AsString = '5') then
//                              begin
//                                   grdJx2.Cells[0, grdJx2.RowCount -  1] := '100';
//                              end
//                              else
//                                   if (FieldByName('Su_gu1').AsString = '0') then
//                                   begin
//                                        grdJx2.Cells[0, grdJx2.RowCount - 1] :=  '99';
//                                   end
//                                   else
//                                        if ((FieldByName('Su_gu1').AsString = '3') or
//                                             (FieldByName('Su_gu1').AsString = '4')) then
//                                        begin
//                                             grdJx2.Cells[0, grdJx2.RowCount - 1] :=  '비급';
//                                        end
//                                        else
//                                        begin
//                                             grdJx2.Cells[0, grdJx2.RowCount - 1] := 'GR';
//                                        end;
//                    grdJx2.Cells[1, grdJx2.RowCount - 1] := FieldByName('Su_kor_name').AsString;
//                    grdJx2.Cells[2, grdJx2.RowCount - 1]  := FieldByName('jin_qty').AsString;
//                    if FieldByName('Su_gu3').AsString = '09' then
//                    begin
//                         grdJx2.Cells[3, grdJx2.RowCount - 1] := FieldByName('div').AsString;
//                    end
//                    else
//                    begin
//                         grdJx2.Cells[3, grdJx2.RowCount - 1] :=   FieldByName('jin_ilsu').AsString;
//                    end;
//
//                    grdJx2.ints[5, grdJx2.RowCount - 1] := FieldByName('jin_danga').AsInteger; //제대로 된 단가가 들어가지 않는 경우는 뭔가?
//
//                 //   if ((dMain.Date < StrToDate('2004-05-01')) and
//                if  (sJin_day < '2004-05-01' ) and
//                         (FieldByName('su_key').AsString = 'L7201006') then
//                         grdJx2.ints[6, grdJx2.RowCount - 1] := 50
//                    else
//                         grdJx2.ints[6, grdJx2.RowCount - 1] :=  FieldByName('dan_qty').AsInteger;
//
//                    grdJx2.Cells[7, grdJx2.RowCount - 1]  :=   FieldByName('su_key').AsString;
//                    grdJx2.Cells[8, grdJx2.RowCount - 1] := FieldByName('Su_gu1').AsString;
//                    grdJx2.Cells[9, grdJx2.RowCount - 1]  := FieldByName('Su_gu3').AsString;
//                    grdJx2.Cells[10, grdJx2.RowCount - 1] := FieldByName('jin_soa').AsString;
//                    grdJx2.Cells[11, grdJx2.RowCount - 1] :=  FieldByName('jin_simya').AsString;
//                    grdJx2.Cells[12, grdJx2.RowCount - 1] :=  FieldByName('IOrder').AsString;
//                    grdJx2.Cells[15, grdJx2.RowCount - 1] := FieldByName('Hwakin_key').AsString;
//                    if FieldByName('Su_gu3').AsString = '09' then
//                         grdJx2.Cells[14, grdJx2.RowCount - 1] := FieldByName('jin_Ilsu').AsString;
//                    grdJx2.ints[4, grdJx2.RowCount - 1] :=           //단가 * 일수
//
//                          CalcKumak(grdJx2.cells[7, grdJx2.RowCount - 1],//suKey:string;
//                                  grdJx2.Ints[5, grdJx2.RowCount - 1],//nDanga:integer ;
//                                  grdJx2.Ints[2, grdJx2.RowCount - 1], //nQty:integer ;
//                                  grdJx2.Ints[3, grdJx2.RowCount - 1],//nilsu:integer ;
//                                  grdJx2.Ints[6, grdJx2.RowCount - 1],//nDanQty:integer ;
//                                  ma_sunapDate,
//                                  grdJx2.cells[10, grdJx2.RowCount - 1],//soaGasan : string;
//                                  grdJx2.cells[11, grdJx2.RowCount - 1],//simGasan : string;
//                                  true,
//                                  jumintoNai(ma_Jumin) ) ;
//
//
//
//                    grdJx2.Cells[16, grdJx2.RowCount -1] := FieldByName('Modality').AsString;
//                    grdJx2.Cells[17, grdJx2.RowCount -1] := FieldByName('jins_key').AsString;
//                    Next;
//               end;
//          end
//          else
//          begin
//            //   grdJx2.RowCount := 100;
//          end;
//
//          end;
//     end;


procedure TSunap_f.BohoCertSet(WonweNo, wonweIlsu, sKey , hwakinNo: string);
begin

//
//     ma_budam: string;
//     ma_sanjung: string; //2011.11.9
//     ma_janek: string;

     pnlBoho.visible := true;

     lblJanaek.Caption := ma_janek;//main_f.edtjanek.text; //2007.7.1
     JBonTypeEdit.Text := ma_budam;//main_f.edtBudam.text; //2007.7.1
     JBonJunEdit.Text  :='';//main_f.edtJunek.text; //2007.7.1
     edtHwakinNo.Text  := ''; //2007.7.1
     edtSunkiho.Text   := '';


     edtcertNo.Text    := ma_jumin;//main_f.edtJumin.Text + main_f.edtJumin2.Text;


    //ToDo : 처방전 번호가 있으면 처방전번호를 가져오자.
//     if Jinryo_f.Edit7.Text <> '' then
//     begin
//          lblWonweNo.Caption := Formatfloat('00000',
//               StrToInt(Jinryo_f.Edit7.Text));
//          //처방일련
//     end
//     else
//     begin
//          lblWonweNo.Caption := '';
//     end;

       sunap_f.lblWonweNo.Caption   := wonWeNo;
       sunap_f.lblsKey.Caption      := sKey;//Jinryo_f.RealGrid2.Cells[5, 0].AsString; //상병
       sunap_f.lblWonweilsu.Caption := Wonweilsu;
       sunap_f.edtHwakInNo.Text     := HwakInNo;




     JBonComboEdit.Text := '';
     if JBonJunEdit.Text = '1' then
     begin //M001, M002 의뢰서가져온경우
          JBonComboEdit.Text := 'B005';
          edtSunkiho.Text    := ma_sunkiho1;//jinryo_f.varsunkiho1; //2010.3.1

          if (configvalue.varYoyang = ma_sunkiho1) or
               (configvalue.varYoyang = ma_sunkiho2) then
          begin
               JBonComboEdit.Text := ''; //우리병원이 선택기관인 경우
               edtSunkiho.Text := '';
          end
          else
               if (configvalue.varYoyang = ma_sunkiho4) then
                    //우리병원이 선택치과일 경우
               begin
                    JBonComboEdit.Text := 'B008';
                    edtSunkiho.Text := '';
               end;

     end
     else
          if
               JBonJunEdit.Text = '2' then
          begin //미자격자  (전액본인)
               JBonComboEdit.Text := 'XXXX';
          end;




end;


procedure Tsunap_f.SetGridTitle;
var

  i, j: Integer;
begin
       grdSunap.MergeCells(0,0,3,3);
       grdSunap.Cells[0,0] := '항목';

       grdSunap.MergeCells(3,0,3,1);
       grdSunap.Cells[3,0] := '급여';

       grdSunap.MergeCells(3,1,2,1);
       grdSunap.Cells[3,1] := '일부본인부담';

       grdSunap.Cells[3,2] := '본인부담금';

       grdSunap.Cells[4,2] := '공단부담금';

       grdSunap.MergeCells(5,1,1,2);
       grdSunap.Cells[5,1] := '전액본인부담';

       grdSunap.MergeCells(6,0,1,3);
       grdSunap.Cells[6,0] := '비급여';

       grdSunap.MergeCells(0,3,1,16);
       grdSunap.Cells[0,3] := '기본항목';

       grdSunap.MergeCells(1,3,2,1);
       grdSunap.Cells[1,3] := '진찰료';

       grdSunap.MergeCells(1,4,2,1);
       grdSunap.Cells[1,4] := '입원료';

       grdSunap.MergeCells(1,5,2,1);
       grdSunap.Cells[1,5] := '식대';

       grdSunap.MergeCells(1,6,1,2);
       grdSunap.Cells[1,6] := '투약 및 조제료';

       grdSunap.Cells[2,6] := '행위';
       grdSunap.Cells[2,7] := '약품';

       grdSunap.MergeCells(1,8,1,2);
       grdSunap.Cells[1,8] := '주사료';

       grdSunap.Cells[2,8] := '행위';
       grdSunap.Cells[2,9] := '약품';

       grdSunap.MergeCells(1,10,2,1);
       grdSunap.Cells[1,10] := '마취료';

       grdSunap.MergeCells(1,11,2,1);
       grdSunap.Cells[1,11] := '처치 및 수술료';

       grdSunap.MergeCells(1,12,2,1);
       grdSunap.Cells[1,12] := '검사료';

       grdSunap.MergeCells(1,13,2,1);
       grdSunap.Cells[1,13] := '영상진단료';

       grdSunap.MergeCells(1,14,2,1);
       grdSunap.Cells[1,14] := '방사선치료료';

       grdSunap.MergeCells(1,15,2,1);
       grdSunap.Cells[1,15] := '치료재료대';

       grdSunap.MergeCells(1,16,2,1);
       grdSunap.Cells[1,16] := '재활 및 물리';

       grdSunap.MergeCells(1,17,2,1);
       grdSunap.Cells[1,17] := '정신요법료';

       grdSunap.MergeCells(1,18,2,1);
       grdSunap.Cells[1,18] := '전혈 및 혈액';


       grdSunap.MergeCells(0,19,1,6);
       grdSunap.Cells[0,19] := '선택항목';

       grdSunap.MergeCells(1,19,2,1);
       grdSunap.Cells[1,19] := 'CT진단료';

       grdSunap.MergeCells(1,20,2,1);
       grdSunap.Cells[1,20] := 'MRI진단료';

       grdSunap.MergeCells(1,21,2,1);
       grdSunap.Cells[1,21] := 'PET진단료';

       grdSunap.MergeCells(1,22,2,1);
       grdSunap.Cells[1,22] := '초음파진단료';

       grdSunap.MergeCells(1,23,2,1);
       grdSunap.Cells[1,23] := '보철교정료';//'초음파유도료';//

       grdSunap.MergeCells(1,24,2,1);
       grdSunap.Cells[1,24] := '기타';






       grdSunap.MergeCells(0,25,3,1);
       grdSunap.Cells[0,25] := '건강보험법 제41조 4';

       grdSunap.MergeCells(0,26,3,1);
       grdSunap.Cells[0,26] := '65세이상 등 정액';

       grdSunap.MergeCells(0,27,3,1);
       grdSunap.Cells[0,27] := '정액수가(요양병원)';

       grdSunap.MergeCells(0,28,3,1);
       grdSunap.Cells[0,28] := '정액수가(완화의료)';

       grdSunap.MergeCells(0,29,3,1);
       grdSunap.Cells[0,29] := '포괄수가진료비';



//       for I := 3 to 6 do
//         begin
//              for j := 3 to 29 do
//              begin
//                   grdSunap.Cells[i,j]   := inttostr(i) + ','+ inttostr(j);
//
//              end;
//
//         end;


end;

end.

