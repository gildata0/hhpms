unit jinryo;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, richedit,
  FireDAC.Stan.Intf,

  uni, db,

  IdHTTP, IDGlobal, IdException, IdURI,

  JSON,


  StdCtrls, Menus, Math,
  DateUtils,
  Mask, Grids,
  Printers,
  inifiles,
  Buttons, ShellApi, PlannerCal, uTeeth, uFunctions, AdvGlowButton,
  AdvGDIP,
  AdvPageControl, FormSize, AdvAppStyler, AdvObj,
  BaseGrid, AdvGrid, AdvPanel, gogekAlretFrame, AdvCombo, ColCombo,
  frxClass, AdvEdit, frxExportPDF, AdvProgressBar, EllipsLabel, AdvProgr,
  tmsAdvGridExcel, uDaegiFrame, AdvSplitter, System.ImageList, Vcl.ImgList,
  AdvUtil, Vcl.CheckLst,
  bsHL7Object, ZPI_Z01MsgUnit, bsUtils,
  BSHL7251, BSHL7Grp251, BSHL7DT251,
  TlHelp32, IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient, IdFSP,
  AdvSmoothStatusIndicator, JvExStdCtrls, JvRichEdit, frxExportBaseDialog,
  PictureContainer, vcl.styles, vcl.themes, FireDAC.Stan.StorageBin,
  FireDAC.Stan.StorageJSON,
  LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCaptionPanel, AdvShapeButton, ZipMstr, Vcl.DBGrids;

{
  type
  TSplitter = Class(TSplitter)
  published
  property OnDblClick;
  end;
}
// type

{ TJakyuk = packed record
  piboname, kiho, k_number, c_name: string;
  jongbeul, kwan: integer;
  end;
}
{
  TTeeth = packed record
  Cnt: Integer;
  nSangF: Integer;
  nSangR: Integer;
  nSangL: Integer;
  nHaF: Integer;
  nHaR: Integer;
  nHaL: Integer;
  nCSangF: Integer;
  nCSangR: Integer;
  nCSangL: Integer;
  nCHaF: Integer;
  nCHaR: Integer;
  nCHaL: Integer;
  nRoot: Integer;
  Ts: Integer; //34,35   44,45
  sP1: string;
  sP2: string;
  sP3: string;
  sP4: string;
  n1012: Integer;
  n103: Integer;
  n1047: Integer;
  n2012: Integer;
  n203: Integer;
  n2047: Integer;
  n3012: Integer;
  n303: Integer;
  n3047: Integer;
  n4012: Integer;
  n403: Integer;
  n4047: Integer;
  n5012: Integer;
  n503: Integer;
  n5045: Integer;
  n6012: Integer;
  n603: Integer;
  n6045: Integer;
  n7012: Integer;
  n703: Integer;
  n7045: Integer;
  n8012: Integer;
  n803: Integer;
  n8045: Integer;
  n6666: Integer; //2009.12.1
  n6661: Integer; //2009.12.1
  n6662: Integer; //2009.12.1
  n6663: Integer; //2009.12.1
  n6664: Integer; //2009.12.1
  n6665: Integer; //2009.12.1
  n6667: Integer; //2009.12.1
  n6668: Integer; //2009.12.1

  end;
}
{ TDragCon = record
  Draged: Boolean;
  StartP: Integer;
  EndP: Integer;
  DRect: TRect;
  end;
}
type
  TJinryo_f = class(TForm)
    SangweMenu: TPopupMenu;
    V1: TMenuItem;
    W1: TMenuItem;
    X1: TMenuItem;
    Y1: TMenuItem;
    AdvFormStyler1: TAdvFormStyler;
    FormSize1: TFormSize;
    frxPDFExport: TfrxPDFExport;
    frxReport: TfrxReport;
    pnlBody: TPanel;
    pnlMain: TPanel;
    pnlSOAP: TPanel;
    AdvSplitter1: TAdvSplitter;
    Splitter5: TAdvSplitter;
    pnlDr: TAdvPanel;
    Button11: TButton;
    pnlWait_Jinryo: TPanel;
    Panel1: TPanel;
    ImageList1: TImageList;
    pnlPatInfo: TAdvPanel;
    progressbar: TAdvProgressBar;
    AdvSplitter6: TAdvSplitter;
    pnlNewonInfo: TAdvPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ZipMaster1: TZipMaster;
    pnlChkListNRemark: TPanel;
    AdvSplitter5: TAdvSplitter;
    AdvSplitter7: TAdvSplitter;
    Panel10: TPanel;
    AdvSplitter2: TAdvSplitter;
    PopupMenu3: TPopupMenu;
    N5: TMenuItem;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    IdFSP1: TIdFSP;
    Splitter1: TAdvSplitter;
    AdvSplitter4: TAdvSplitter;
    AdvSplitter8: TAdvSplitter;
    pnlSpecialRemark: TAdvPanel;
    PopupMenu4: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    pnlPicinfo: TPanel;
    pnlCCnRequest: TPanel;
    AdvSplitter11: TAdvSplitter;
    edtRemark: TRichEdit;
    edtDr: TRichEdit;
    MainMenu1: TMainMenu;
    N28: TMenuItem;
    N30: TMenuItem;
    N70: TMenuItem;
    N124: TMenuItem;
    N123: TMenuItem;
    N113: TMenuItem;
    N114: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N125: TMenuItem;
    N126: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N26: TMenuItem;
    N14: TMenuItem;
    N101: TMenuItem;
    N105: TMenuItem;
    N99: TMenuItem;
    EECP1: TMenuItem;
    N122: TMenuItem;
    N100: TMenuItem;
    N115: TMenuItem;
    N116: TMenuItem;
    N111: TMenuItem;
    N112: TMenuItem;
    N24: TMenuItem;
    N16: TMenuItem;
    N96: TMenuItem;
    N9: TMenuItem;
    N13: TMenuItem;
    N17: TMenuItem;
    N89: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N117: TMenuItem;
    N118: TMenuItem;
    N119: TMenuItem;
    N120: TMenuItem;
    N27: TMenuItem;
    N127: TMenuItem;
    N128: TMenuItem;
    N129: TMenuItem;
    N130: TMenuItem;
    N131: TMenuItem;
    N133: TMenuItem;
    N132: TMenuItem;
    N134: TMenuItem;
    N135: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    N15: TMenuItem;
    N19: TMenuItem;
    N121: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N35: TMenuItem;
    N62: TMenuItem;
    N29: TMenuItem;
    N12: TMenuItem;
    N94: TMenuItem;
    N11: TMenuItem;
    N63: TMenuItem;
    N10: TMenuItem;
    N80: TMenuItem;
    N90: TMenuItem;
    N91: TMenuItem;
    N20: TMenuItem;
    certtest1: TMenuItem;
    stylemenu: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N25: TMenuItem;
    AdvSplitter13: TAdvSplitter;
    AdvSplitter14: TAdvSplitter;
    PopupMenu5: TPopupMenu;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    EPOCH1: TMenuItem;
    E1: TMenuItem;
    N18: TMenuItem;
    N40: TMenuItem;
    EPOCH2: TMenuItem;
    pnlJaboInfo: TAdvPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lblCarID: TLabel;
    edtJaboSagoJubsuNo2: TEdit;
    edtJaboJigubBojungNo2: TEdit;
    cbJabosaCode2: TComboBox;
    btnConfirmJabo: TButton;
    btnjaboClose: TButton;
    grdCarInfo: TAdvStringGrid;
    pnlTx: TAdvPanel;
    Splitter4: TAdvSplitter;
    pnlDisease: TPanel;
    AdvSplitter3: TAdvSplitter;
    pnlSangByung: TAdvPanel;
    cmbDoctor: TComboBox;
    ListBoxSang: TListBox;
    grdSangByung: TAdvStringGrid;
    clbSangByung: TCheckListBox;
    Panel8: TPanel;
    pnlSimsaChamgo: TAdvPanel;
    memChungGuMemo: TRichEdit;
    Button2: TButton;
    pnlProgress: TAdvPanel;
    pnlRX: TAdvPanel;
    wLabel3: TLabel;
    grdRX: TAdvStringGrid;
    Edit1: TEdit;
    pnlVitalinfo: TAdvPanel;
    edtChkList: TRichEdit;
    pnlChamgo: TAdvPanel;
    memRemark: TMemo;
    pnlCC: TAdvPanel;
    lblPiDate: TLabel;
    lblTreatRoom: TLabel;
    btnCC: TButton;
    Button7: TButton;
    Panel9: TPanel;
    Button8: TButton;
    tcCCDate: TTabControl;
    pnlRequest: TAdvPanel;
    memLabRemark: TMemo;
    pnlSuga: TAdvPanel;
    lstGroupTemp: TListBox;
    pgFavorite: TPageControl;
    TabSheet1: TTabSheet;
    grdGroupCode: TAdvStringGrid;
    Panel4: TPanel;
    TabSheet5: TTabSheet;
    grdSuga: TAdvStringGrid;
    Panel6: TPanel;
    RadioGroup1: TRadioGroup;
    tabDrugCode: TTabSheet;
    pnlDrug: TPanel;
    Label40: TLabel;
    edtSearchDrug: TEdit;
    RadioGroup2: TRadioGroup;
    grdDrug: TAdvStringGrid;
    tabSearchGroupCode: TTabSheet;
    AdvSplitter9: TAdvSplitter;
    grdFindSuga: TAdvStringGrid;
    Panel7: TPanel;
    edtFindGroupCode: TEdit;
    rgGroupSugaFind: TRadioGroup;
    grdFindGroup: TAdvStringGrid;
    TabSheet7: TTabSheet;
    grdFavorite: TAdvStringGrid;
    Panel3: TPanel;
    pnlremark: TAdvPanel;
    Label43: TLabel;
    Button9: TButton;
    grdTxHx: TAdvStringGrid;
    btnEnLarge: TButton;
    Edit5: TEdit;
    pnlPt: TAdvPanel;
    Button12: TButton;
    edtPtWant: TRichEdit;
    pnlMedicalHx: TAdvPanel;
    Button10: TButton;
    edtMedHx: TRichEdit;
    pnlRIS: TAdvPanel;
    memRis: TMemo;
    chkAsXML: TCheckBox;
    pnlMainTop: TAdvPanel;
    pnlTopInfo: TAdvPanel;
    lblPatInfo: TLabel;
    pnlJinryoHx: TAdvPanel;
    grdLabResult: TAdvStringGrid;
    pnlSangByungDetail: TAdvPanel;
    grdSangDetail: TAdvStringGrid;
    pnlReferHosp: TAdvPanel;
    lblReferHospCode: TLabel;
    Panel5: TPanel;
    AdvSplitter10: TAdvSplitter;
    lstReferList: TListBox;
    pnlReferHeadInfo: TPanel;
    Panel13: TPanel;
    lblReferHospName: TLabel;
    lblReferHospDoc: TLabel;
    lblReferHospPhone: TLabel;
    Label39: TLabel;
    memReferList: TMemo;
    pnlhapsan: TAdvPanel;
    Label13: TLabel;
    Label22: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    btnHapsanSearch: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    DateTimePicker3: TDateTimePicker;
    cbPreview: TCheckBox;
    memChamgo: TMemo;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edit6: TAdvEdit;
    edit8: TAdvEdit;
    edit9: TAdvEdit;
    edit10: TAdvEdit;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label23: TLabel;
    edtBonin1: TAdvEdit;
    bocheulkyo: TAdvEdit;
    kitakyo: TAdvEdit;
    edtGyojung: TAdvEdit;
    edtUserDefName1: TAdvEdit;
    edtUserDef1: TAdvEdit;
    edtBct: TAdvEdit;
    edtImplant: TAdvEdit;
    edtUserDef2: TAdvEdit;
    edtUserDef3: TAdvEdit;
    edtUserDef4: TAdvEdit;
    edtUserDefName4: TAdvEdit;
    edtUserDefName3: TAdvEdit;
    edtUserDefName2: TAdvEdit;
    edtmulri: TAdvEdit;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label34: TLabel;
    edtCard: TAdvEdit;
    edtHyun: TAdvEdit;
    edtHyunreceipt: TAdvEdit;
    edtSunap: TAdvEdit;
    edtPrevSunap: TAdvEdit;
    cbClose: TCheckBox;
    grdJinryoHx: TAdvStringGrid;
    pnlJinryo: TAdvPanel;
    lblDangcho: TLabel;
    Label2: TLabel;
    Label31: TLabel;
    LblAge: TLabel;
    lblBaek: TLabel;
    wNumLabel1: TLabel;
    lstDoctorNo: TListBox;
    edtKyul: TEdit;
    chkJang: TCheckBox;
    Edit3: TEdit;
    edtHwakin: TEdit;
    edtBontype: TEdit;
    edtYujikum: TEdit;
    edtBoninGu: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    edtDoctorName: TEdit;
    edtJinryoPid: TEdit;
    Edit2: TEdit;
    edtJinTime: TEdit;
    edtCMemo1: TEdit;
    grdDetailCost: TAdvStringGrid;
    grdCostBigub: TAdvStringGrid;
    grdCost: TAdvStringGrid;
    numMisugum: TEdit;
    numChung: TEdit;
    wNumCt: TEdit;
    wNumJang: TEdit;
    wNumYak: TEdit;
    cbNode: TCheckBox;
    Button3: TButton;
    grdJx2: TAdvStringGrid;
    clbJinryoHx: TCheckListBox;
    ListBox1: TListBox;
    lstWonweNo: TListBox;
    ListBox2: TListBox;
    Panel2: TPanel;
    Label5: TLabel;
    EllipsLabel2: TEllipsLabel;
    lblGenderAge: TEllipsLabel;
    lblPatImagename: TLabel;
    edtJumin: TAdvEdit;
    edtJumin2: TAdvEdit;
    Button6: TButton;
    btnJakyukJohoi: TButton;
    Button13: TButton;
    edtSimTime: TEdit;
    cbinfoSave: TCheckBox;
    chkPregnan: TCheckBox;
    cbJange: TCheckBox;
    pnlPriceView: TPanel;
    wLabel23: TLabel;
    wLabel25: TLabel;
    Label35: TLabel;
    numchong: TEdit;
    numBonin: TEdit;
    numJinchal: TEdit;
    RichEdit2: TRichEdit;
    pnlImg: TAdvPanel;
    imgPic: TImage;
    pnlCamTool: TPanel;
    btnDeleteFacePic: TAdvGlowButton;
    btnFaceCam: TAdvGlowButton;
    btnFacePicLarge: TAdvGlowButton;
    btnFacePicLoad: TAdvGlowButton;
    pnlCalendar: TAdvPanel;
    pnlBottom: TAdvPanel;
    lblVersion: TLabel;
    lbluser: TLabel;
    Label41: TLabel;
    pnlWait: TAdvPanel;
    pnlWaitingList: TPanel;
    DaegiFrame_fr1: TDaegiFrame_fr;
    lblJuso: TLabel;
    btnLoadSangByung: TAdvShapeButton;
    btnExamInput: TAdvShapeButton;
    btnDeleteDrsNote: TAdvShapeButton;
    btnGroupCodeFind: TAdvShapeButton;
    btnDrugFind: TAdvShapeButton;
    btnPost: TAdvShapeButton;
    btnMoveUp: TAdvShapeButton;
    btnMoveDown: TAdvShapeButton;
    Button16: TAdvShapeButton;
    Label44: TLabel;
    btnReferEdit: TAdvShapeButton;
    btnExpandNContract: TAdvShapeButton;
    pnlInfo2: TAdvPanel;
    DateTimePicker4: TDateTimePicker;
    Label45: TLabel;
    Label38: TLabel;
    Label3: TLabel;
    EllipsLabel1: TEllipsLabel;
    Label24: TLabel;
    Label4: TLabel;
    wLabel39: TLabel;
    wLabel38: TLabel;
    edtJiwon: TEdit;
    Label7: TLabel;
    edtGongSang: TEdit;
    Edit4: TEdit;
    chkJin: TCheckBox;
    chkFirst: TCheckBox;
    cbKwamok: TComboBox;
    Button19: TButton;
    Button5: TButton;
    Button4: TButton;
    btnWonwe: TButton;
    btnInsertOnce: TButton;
    Edit7: TEdit;
    btnHapsan: TButton;
    btnDeleteDay: TButton;
    btnSunap: TButton;
    btnDetailView: TButton;
    Label6: TLabel;
    cbRestrict: TCheckBox;
    chkYongUa: TCheckBox;
    chkIlban: TCheckBox;
    chbYagan: TCheckBox;
    cbSatMorningGasan: TCheckBox;
    Button24: TButton;
    btnCopySelection: TButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    edtlast: TAdvEdit;
    edtFirst: TAdvEdit;
    EllipsLabel4: TEllipsLabel;
    EllipsLabel3: TEllipsLabel;
    Button14: TButton;
    edtEngName: TAdvEdit;
    Label42: TLabel;
    lblisInPat: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    lblJubsuID: TLabel;
    lblChart: TLabel;
    lblStatus: TLabel;
    Panel11: TPanel;
    PageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    pnlCalHx: TAdvPanel;
    dmain: TPlannerCalendar;
    pnlCalNavi: TPanel;
    lblDay2: TLabel;
    prevMonth: TButton;
    PrevYear: TButton;
    nextYear: TButton;
    nextMonth: TButton;
    grdNeyuk: TAdvStringGrid;
    clbInHx: TCheckListBox;
    pnlSanjungTeakRye: TAdvPanel;
    Label47: TLabel;
    btnSanjungConfirm: TAdvShapeButton;
    lblSize: TLabel;
    Button28: TButton;
    Button20: TButton;
    edtname: TAdvEdit;
    edtChart: TAdvEdit;
    cbJong: TComboBox;
    cbChoje: TComboBox;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
    cbIO: TComboBox;
    cbSanCode3: TComboBox;
    btnOutHosp: TAdvShapeButton;
    btnSave: TAdvShapeButton;
    btnPause: TAdvShapeButton;
    btnInit: TAdvShapeButton;
    cbBohum100: TCheckBox;
    Label48: TLabel;
    btnReferSync: TButton;
    cbDrugSelf: TCheckBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    edtGroupOrderValue: TAdvEdit;
    AdvShapeButton2: TAdvShapeButton;
    edtFasvoriteSearch: TAdvEdit;
    btnAddBigub: TAdvShapeButton;
    btnAddPharm: TAdvShapeButton;
    btnAddMaterial: TAdvShapeButton;
    edtSearchSuga: TAdvEdit;
    edtSearchSugaCode: TAdvEdit;
    edtSearchSugaName: TAdvEdit;
    Panel12: TPanel;
    btnSugaSearch: TAdvShapeButton;
    Label46: TLabel;
    cbSanjungTeakRye: TCheckBox;
    edtSanjung: TEdit;
    btnTxInputEdit: TAdvShapeButton;
    lblReferHospName2: TLabel;
    Memo4: TMemo;
    PopupMenu6: TPopupMenu;
    MenuItem2: TMenuItem;
    edtCC: TRichEdit;
    btnUpdate: TAdvShapeButton;
//ToDO: showmessage 가 뒤로 숨는 경우 사용???
//    procedure  OnScreenActiveFormChange(Sender: TObject);

    procedure chkJangClick(Sender: TObject);
    procedure btnSunapClick(Sender: TObject);
    procedure btnDeleteDayClick(Sender: TObject);
    procedure grdNeyukDblClick(Sender: TObject);
    procedure ComboBoxEAKeyPress(Sender: TObject; var Key: Char);
    procedure DeleteJin(ARow: Integer);
    // procedure Printchart;
    function sangchk(sCode: string): Integer;
    procedure K040Click(Sender: TObject);
    procedure InsertMemo(sChart, jin_day, sRemark: string);
    procedure JinryobiSave(
      JubsuID : string;
      JinDate   : string;
      team      : string;
      doc_code  : string;
      isInPat   :string;
      aSunapKind: string = '0';
      varKind: string = '0');
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chbYaganClick(Sender: TObject);
    procedure chkJinClick(Sender: TObject);
    procedure wLabel25Click(Sender: TObject);
    procedure pnlRXClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nextYearClick(Sender: TObject);
    procedure PrevYearClick(Sender: TObject);
    procedure prevMonthClick(Sender: TObject);
    procedure nextMonthClick(Sender: TObject);
    procedure dmainDaySelect(Sender: TObject; SelDate: TDateTime);
    procedure btnHapsanSearchClick(Sender: TObject);
    procedure btnHapsanClick(Sender: TObject);
    procedure pnlhapsanClose(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnjaboCloseClick(Sender: TObject);
    procedure btnConfirmJaboClick(Sender: TObject);
    procedure cbSatMorningGasanClick(Sender: TObject);
    procedure grdJinryoHxDblClick(Sender: TObject);
    procedure chkPregnanClick(Sender: TObject);
    procedure grdCarInfoClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnLoadSangByungClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure grdJx2GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure cbSanCode3CloseUp(Sender: TObject);
    procedure grdGroupCodeKeyPress(Sender: TObject; var Key: Char);
    procedure grdJx2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdJx2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdGroupCodeDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button5Click(Sender: TObject);
    procedure btnCCClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure edtCCContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cbJongCloseUp(Sender: TObject);
    procedure edtGroupOrderValueChange(Sender: TObject);
    procedure tcCCDateChange(Sender: TObject);
    procedure tcSrdateChange(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btnInitClick(Sender: TObject);
    procedure cbChojeCloseUp(Sender: TObject);
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure grdSugaDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdJx2GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdJx2GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure btnPauseClick(Sender: TObject);
    procedure edtSearchSugaKeyPress(Sender: TObject; var Key: Char);
    procedure btnGroupCodeFindClick(Sender: TObject);
    procedure grdFindGroupClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdFindGroupDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdFindGroupKeyPress(Sender: TObject; var Key: Char);
    procedure grdSugaKeyPress(Sender: TObject; var Key: Char);
    procedure edtFindGroupCodeKeyPress(Sender: TObject; var Key: Char);
    procedure cbKwamokCloseUp(Sender: TObject);
    procedure cbDocCloseUp(Sender: TObject);
    procedure grdJx2ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdSangByungClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdNeyukClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button2Click(Sender: TObject);
    procedure btnCopySelectionClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure pgFavoriteChange(Sender: TObject);
    procedure grdFavoriteClickSort(Sender: TObject; ACol: Integer);
    procedure grdFavoriteDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure btnAddMaterialClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure edtnameKeyPress(Sender: TObject; var Key: Char);
    procedure edtChartKeyPress(Sender: TObject; var Key: Char);
    procedure grdSangByungKeyPress(Sender: TObject; var Key: Char);
    procedure btnEnLargeClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnAddBigubClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure memChungGuMemoContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure grdSangDetailDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdTxHxGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdTxHxDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure edtRemarkClick(Sender: TObject);
    procedure edtCCClick(Sender: TObject);
    procedure edtGroupOrderValueClick(Sender: TObject);
    procedure memChungGuMemoClick(Sender: TObject);
    procedure grdSangDetailKeyPress(Sender: TObject; var Key: Char);
    procedure grdFindSugaDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdSangByungKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbSanjungTeakRyeClick(Sender: TObject);
    procedure edtGroupOrderValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdGroupCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cntSpecialListClick(Sender: TObject);
    procedure btnExamInputClick(Sender: TObject);
    procedure grdTxHxGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdSangByungDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure pnlProgressDblClick(Sender: TObject);
    procedure pnlhapsanDblClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure edtGroupOrderValueKeyPress(Sender: TObject; var Key: Char);
    procedure btnEECPClick(Sender: TObject);
    procedure edtSearchDrugKeyPress(Sender: TObject; var Key: Char);
    procedure btnDrugFindClick(Sender: TObject);
    procedure btnReferEditClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo3Click(Sender: TObject);
    procedure grdJx2KeyPress(Sender: TObject; var Key: Char);
    procedure grdJx2RowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure grdJx2Exit(Sender: TObject);
    procedure grdJx2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure btnOutHospClick(Sender: TObject);
    procedure grdSangByungCheckBoxChange(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure grdSangByungGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure grdJx2ButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure edtSearchDrugChange(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure edtSanjungKeyPress(Sender: TObject; var Key: Char);
    procedure certtest1Click(Sender: TObject);
    procedure N107Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N109Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N105Click(Sender: TObject);
    procedure EECP1Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure btnDeleteDrsNoteClick(Sender: TObject);
    procedure grdNeyukKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSangByungGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdSangByungRowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure grdTxHxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdJx2EditingDone(Sender: TObject);
    procedure btnMoveUpClick(Sender: TObject);
    procedure btnMoveDownClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure EPOCH1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure EPOCH2Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure btnExpandNContractClick(Sender: TObject);
    procedure pnlSangByungDblClick(Sender: TObject);
    procedure btnReferSyncClick(Sender: TObject);
    procedure btnOutHospMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnOutHospMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdJx2GetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
    procedure grdJx2GetCellBorderProp(Sender: TObject; ARow, ACol: Integer;
      LeftPen, TopPen, RightPen, BottomPen: TPen);
    procedure grdTxHxGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
    procedure btnSanjungConfirmClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure grdFavoriteGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdFindGroupGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdFindSugaGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdDrugGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure cbBohum100Click(Sender: TObject);
    procedure edtSearchSugaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdGroupCodeGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdSugaGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdFavoriteRowMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure edtFasvoriteSearchChange(Sender: TObject);
    procedure AdvShapeButton2Click(Sender: TObject);
    procedure btnTxInputEditMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnTxInputEditClick(Sender: TObject);
    procedure grdSugaColumnSizing(Sender: TObject; ACol, ColumnSize: Integer);
    procedure btnSugaSearchClick(Sender: TObject);
    procedure edtSearchSugaNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtSearchSugaCodeKeyPress(Sender: TObject; var Key: Char);
    procedure edtSearchSugaCodeClick(Sender: TObject);
    procedure edtSearchSugaNameClick(Sender: TObject);
    procedure edtSearchSugaClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);

  private
    { Private declarations }
    wCanClose : boolean;

    isWonwe : boolean;

    isJx2Delete: boolean;
    isSangByungDelete: boolean;

    runDir: string;
    inputShortCut: Boolean;

    useEnlarge_pnlWait_Jinryo : boolean;  //확대버튼을 누를경우  pnlWait_Jinryo.width 를 저장하면 안된다.

    orig_pnlWait_Jinryo : integer;

    varAlretTab: Integer;

    Ibwon: Boolean;

    FHxTxWndProc: TWndMethod;
    nMinPos, nMaxPos : integer;

    // nJinchalRyo : integer;
    nChong: Integer;

    ACon: TDragCon;
    tmpCaption: string;
    sPortion: string;
    sSang: string;
    sTx: string;
    // 달력 변경시 자동저장
    procedure CalendarChangeSave;
    function GetJakyuk(sChart: string; dWorkDate: TDateTime): TJakyuk;



    procedure HxTxWndProc(var Message: TMessage);


    procedure SunapPSave(chart, jin_day, chong, chung, bonin, bonin1, team,
      chojae, jinryoSave: string; varKind: string);
    procedure SunapPUpdate(chart, jin_day, chong, chung, bonin, bonin1, chojae,
      jinryopid, jinryoSave: string; varKind: string);
    procedure DeleteJinryo_s(varJins_key: string);

    // function GetJinchalRyo_SatGasan(nChoJae, nAge: Integer;  dWorkDate: TdateTime): Integer;

    function LoadLastTeam(varChart: string): string;
    function LoadteamFromSawon(docname: string): string;
    procedure LoadDoc;
    function LoadLastTeamDocname(varChart: string): string;
    procedure LoadHapsanSummary(sChart, sJin_day, sJin_day2: string);
    procedure PrintReceiptFrx;
    procedure InitFastReport;
    procedure DataToPrintForm(sYoungNo: string);
    procedure LoadBohumHangMok(sChart, sJin_day, sJin_day2: string);
    procedure hapsanClear;
    procedure FieldSet_dayChoice(SelDate: TDateTime; varChart: string);
    procedure Saveimplantinfo(varTeeth1, varTeeth2, varTeeth3,
      varTeeth4: string);
    procedure saveAnotherJinryo_p(JinDate: string; varKind: string = '0');
    procedure JinryoPUpdate_another_delete(chart: string; jin_day: string);
    procedure sugaUpdate;
    // procedure insertsugaOnce(aGrid: TrealGrid; sCode, jinDay: string;
    // jongbyul: integer; age: string; isYagan: boolean; ARow, AOrder,
    // aQty:  Integer = 0);

    // procedure insertsugaOnce(sCode: string; ARow, AOrder: Integer; aQty:  Integer  = 0);
    procedure loadGongsang;
    procedure CalcBonin3;
//    procedure  LoadGroupCode(aStringGrid:TadvStringGrid);//LoadGroupCode;
    procedure setArrayPanel;
//    function LoadGroupName(groupCode: string): string;
    procedure LoadRichData(varChart: string);
    procedure LoadSunapMemo(varChart: string; jin_day : Tdate);
    function CurrText(varRichText: TRichEdit): TTextAttributes;
    procedure LoadMoreInfo(varChart: string);
    procedure saveRemark;
    procedure LoadDefaultValue;
    procedure insertGridGroupSuga(aGrid: TAdvStringGrid;
      col1, col2, col3, ARow: Integer);
//    function makeSutakSanCode(sugakey, gasankind, sutakupche,
//      sutakgrade: string): string;
    procedure saveFavoriteItem(aliasCode, aliasName, isGroup: string;
      nOrder: Integer);
    procedure LoadFavoriteSuga;
    procedure findgogek(varName: string; varGubun: Integer = 0);
    procedure SearChname(varName: string);
//    procedure SaveCC(
//         memo:Tmemo;
//         JubsuID:string;
//         chart:string;
//         treatRoom:string;
//         doc_code:string;
//         jin_day: string;
//         isInPat: string);
    procedure LoadCC(chart:string;
       treatRoom:string;
       doc_code:string;
       jin_day: string;
       isInPat: string);

    procedure LoadLabRemark(jubsu_id:string);


    procedure searchDiseaseCode(s_key: string);
//    procedure fileWebUpdate;
//    function UpdateLogFileDown: Boolean;

    procedure insertChoiceSangByungItem(ARow, ACol: Integer);
    function checkDuplicate(sKey: string; sSangbyung:string): integer;
    procedure WonweSave;
    function DeleteSangByung(aRow: integer): boolean;
    procedure saveRemark_Sunap;
    procedure UpdateFavoriteItem(aliasCode, aliasName : string );
    procedure DeleteFavoriteItem(aliasCode, aliasName: string);

    procedure SetCalcurateValue(aCol, aRow : integer);
    procedure LoadDrugInfo(nKind: integer);
    procedure CertProcess(varChartComment: widestring; varChartSSeq,
      varDoctorJumin: string; var isCorrectCert: boolean);
    procedure StyleClick(Sender: TObject);


//    function JakyukJohoi(strJuminNo, strPaitName: string;
//  shMessage: Boolean = true): Boolean;



    procedure TJungCodeSave;

    function  isGumjinDangIl( chart, jin_day, jubsu_id: string):boolean;
    function  isJT018( chart, jin_day, jubsu_id: string):boolean;
    procedure setPnlWait_Jinryo;
    procedure LoadNeyuk(aRow: integer);
    procedure saveRqComplete;
//    procedure LoadDrugInfoFromAPI(
//      mdsCd, itmNm, mnfEntpNm: string;
//      pageno:string='1';
//      numOfRows: string='10');
    procedure Delete_RP_requestUseJinsKey(rpPk: Integer);

    procedure saveEPOCHMDB(
        jin_day  : string;
        Jubsu_ID : string;
        chart    : string;
        pName    : string;
        jumin    : string;
        patInout : string;
        teamCode : string;
        teamName : string;
        docCode  : string;
        jin_day2 : string;
        su_key   : string;
        seqNO    : integer);
    procedure UpdateFavoriteItem_nOrder(aGrid: TadvStringGrid);
    procedure EpochConnectNDeleteMDB(Jubsu_ID: string);
    procedure EPOCHUpdate;
    procedure EPOCHDataLoad(Jubsu_ID : string) ;
    procedure SetJinryoTxHx(aGrid: TadvStringGrid; Key : integer);
    procedure OnScreenActiveFormChange(Sender: TObject);
    procedure SaveAll(kind : integer = 0);     //0: 외래저장 1, 2: 입원저장
    procedure SugaFind(kind : integer);
    procedure loadUnRegistSugaData(searchData, kind: integer);

  public
    { Public declarations }

    // 외부호출용 전역변수  by Ha 20100701
    // =====================================================================
    varChartno, varName, varFirstDay, varlastDay, varJungNo, varJuminNo,
      varChoje, varPibo, varJohap, varTel, varteam, varLastTeam, varOption,
      varBontype, varBonjun, varBonjan, varPregnan,   varsunkiho1, varsunkiho2,
      varsunkiho3, varsunkiho4, varUsername: string;
    varFilter: Boolean;
    // =====================================================================

    varValueChanged: Boolean; // 값이 변했는지 체크해서 종료할때 저장 여부 묻기

    isClear: Boolean; // 치아선택을 지울까말까...처치입력후엔 지운다


    aDateTime : TdateTime;//RIS  NowTime

    rpPk: Integer; // Referal Pad PK

    procedure fieldClear;
    procedure Preshow;
    procedure InsertSugaCode(AGroupName, AGroupCode: string; nAdd: Integer; aSutak:string='1');

    procedure LoadInputTeakJung(chart : string;
                           jubsu_id    :string;
                           jin_day    : string;
                           docID      :string;
                           TeakRyeCode:string;
                           jin_skey   :string;
                           su_Key     : string;
                           julNo      : string );


    procedure ChangeGridValue(aGrid: TAdvStringGrid; ARow: Integer;
       NewValue: double;
       gubGu : string;
       ACol: Integer); //1회량 횟수 일수 변경시 금액 변경
    procedure GetHoliday;
    procedure insertjin_s(
      JubsuID : string;
      ADate: TDateTime;
      AChart: string;
      aTeam: string;
      aDoc: string;
      isInpat:string ;
      aGrid: TAdvStringGrid ;
      saveKind : integer = 1;
      isExamEmergency:string ='0');  //0:no Emergency  1: Emergency

    procedure ClearMerit;
    procedure InsertMerit(sname, sKey, sSoa, sSimya: string; qty, ndiv: single;
      danga, iorder, ilsu: Integer);

    procedure SetWonwe(sChart, sJin_day: string; saved: Boolean);

    function OrderChk(sP1, sP2, sP3, sP4: string): Integer;
    function ft_ChartCHK: Boolean;


    // function GetJinchalRyo(nChoJae: Integer; nAge: Integer; dWorkDate:  TDateTime): Integer;

    procedure FieldSetJin(varGogekChart: string;
      jin_Day:string;
      nOldChojae: Integer = -1;
      nOldJongbeul: Integer = -1);
    procedure pnlCostClear(flag: Integer = 0);
    procedure syncJa(loadJin: Boolean = true);
    procedure sunapClick;
    procedure SplDblClick(Sender: TObject);
    procedure JinryoHistoryView(chart: string);
    procedure DaySet(varDate: TDateTime);
    procedure JinryoBiSet;


    procedure JinryoHistoryViewforHapsan;
    procedure makeTodayTab;
    procedure LoadReferList(rpPk: Integer);
    procedure LoadJinryo_S(chart: string);

    procedure LoadJinryo_TxHx(chart: string);
    procedure LoadJinryo_TxHx_MakeNode;

    procedure LockControl(isLock: boolean);

  protected
    procedure CreateParams(var Params: TCreateParams);

  end;




const
      cGubun      =0;//	구분
      cName       =1;//	명칭
      cDanga	    =2;//단가
      cQty	      =3;//수량
      cIlsu	      =4;//일수
      cHoisu	    =5;//횟수
      cKumek	    =6;//금액
      cGubGu	    =7;//급여
      cModal	    =8;//Modality
      cUserKey	  =9;//user_key
      cSugu1	    =10;//su_gu1
      cSugu3	    =11;//su_gu3
      cSuSoa	    =12;//su_soa
      cSuYagan  	=13;//su_yagan
      cIOrder	    =14;//iOrder
      cLine	      =15;//line
      cTuYalIlSu	=16;//투약일수
      cHwakin	    =17;//확인코드
      cJinKey	    =18;//jin_key
      cSuKey	    =19;//su_key
      cSuKorName	=20;//su_Kor_Name
      c12	        =21;//1/2
      cJinDay	    =22;//Jin_day
      cJinTime	  =23;//진료시간

var
  jinryo_f: TJinryo_f;

implementation

uses
 uConfig, uDM, uRest, uFormInit,  usysInfo, uGogekData,
  uGogekData_find,
  uUpdateCheck,   uJinryoCalc,
  uPromiseData, promiseJohoi, wait2, choiceChair, uKtCid, Cid, Chamgo,
  uMigration, optionset, smsone, Caller, uTxList, TelList,
  uWebservice, uRisSave,
  sms, recall, regiSchedure, sawon, LoadJusoFind, snapCapture, largeview, saveChamgo,
  TreeEdit, personalinfo,
  DataSetConverter4D, DataSetConverter4D.Impl, regSogeNeyuk, uOrderInfo,
  Rschedule, uLabOrder, mapSend, sugaUpdate, yearsan, sunap, uEecp, jumgum,
  passInput, Jungsan_day, sebusunap, uInPatient, uNurseActing, uReferHosp,
  uReferHospPatList, wonwe, uchklistSave, umisuSunap, uHxJiinryo_p, gogekFind,
  SugaProp, uMain, SugaRegi, uReferHospReqComplete, SangSeek, insertOnce,
  uInputTeakJung, uCert, uInputHealthJinchalSayu, uOutPatient, uPharmInfoRest,
  uPharmInfo ; // , gogekAlret;


//  uConfig, uFormInit, uDM, uMain, uGogekData, uGogekData_find, uJinryoCalc, SangSeek,
//  insertOnce , uRisSave,
//  uGroupcodeSelector, uTxList, saveChamgo, TreeEdit, wonwe,
//  SugaRegi, SugaProp, findgogek, uReferHospReqComplete, uchklistSave,
//  Jungsan_day, sebusunap, uEecp, uReferHosp, optionset;


// waiter,
// sutak,
// uFrmSugaUp,
// DetailView,
// SangSeek,
// GroupEdit,
// insertOnce,
// special,
// cMemo,
// uSugaUpdate,
// sangcombo,
// Wonnae,
// gogek,
// sunap,
// sunaponly,
// wereConfirm;

{$R *.dfm}

function EditStreamReader(dwCookie: DWORD; pBuff: Pointer; cb: LongInt;
  pcb: PLongInt): DWORD; stdcall;
begin
  Result := $0000; // assume no error
  try
    pcb^ := TStream(dwCookie).Read(pBuff^, cb); // read data from stream
  except
    Result := $FFFF; // indicates error to calling routine
  end;
end;

procedure RTFInsertStream(const RE: TRichEdit; const Stream: TStream);
var
  EditStream: TEditStream; // callback used to read inserted RTF
begin
  RE.Lines.BeginUpdate;
  try
    if Stream.Size = 0 then
      exit;

    // Make sure rich edit is large enough to take inserted code
    RE.MaxLength := RE.MaxLength + Stream.Size;
    // Stream in the RTF via EM_STREAMIN message
    EditStream.dwCookie := DWORD(Stream);
    EditStream.dwError := $8000;
    EditStream.pfnCallback := @EditStreamReader;
    RE.Perform(EM_STREAMIN, SFF_SELECTION or SF_RTF or SFF_PLAINRTF,
      LPARAM(@EditStream));
    // Report any errors as a bug
    if EditStream.dwError <> $8000 then
      raise Exception.Create('RTFInsertStream: Error inserting stream');
  finally
    RE.Lines.EndUpdate;
  end;
end;

procedure TJinryo_f.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;


//procedure TJinryo_f.OnScreenActiveFormChange(Sender: TObject);
//begin
//      if Assigned(Screen.ActiveForm)
//      and ( (UpperCase(Screen.ActiveForm.ClassName) = UpperCase('TMessageForm')) ) then
//      begin
//           SetWindowPos(Screen.ActiveForm.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE);
//      end;
//end;
procedure TJinryo_f.JinryoPUpdate_another_delete(chart: string;
  jin_day: string);
begin
  with Dm_f.sqlRegi do
  begin
    close;
    SQL.Clear;
    SQL.Add('delete from  Jinryo_p ');
    SQL.Add('Where chart=:chart and jin_day=:jin_day and jin_gu=''0''  and chojae=''13''  ');

    paramByName('chart').asString := chart;
    paramByName('jin_day').asString := jin_day;
    execsql;

  end;
end;

function TJinryo_f.LoadteamFromSawon(docname: string): string;
begin
  with Dm_f.sqlfind do
  begin
    close;
    SQL.Clear;
    SQL.text := 'select sateam from ma_sawon_basic where saname =:saname';
    paramByName('saname').asString := docname;
    open;
    if not isEmpty then
      Result := fieldByname('sateam').asString
    else
      Result := '';
  end;
end;

procedure TJinryo_f.SunapPSave(chart: string; jin_day: string; chong: string;
  chung: string; bonin: string; bonin1: string; team: string; chojae: string;
  jinryoSave: string; varKind: string);
var
  jinryopid: string;

  Path: string;
  FormInit: TIniFile;
  VarSunapRule: string;

begin

  if jinryoSave <> '1' then
  begin

    Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
    FormInit := TIniFile.Create(Path);
    VarSunapRule := FormInit.ReadString('기타정보', '카드수납', '');
    FormInit.Free;

    with Dm_f.sqlRegi do
    begin
      close;
      SQL.Clear; // chojae=9 인건 수납, chojae=0 인건 대기자
      SQL.Add('select * from jinryo_p where chart=:chart and jin_day=:jin_day and chojae<>''9'' and chojae<>''0'' and chojae  <>  ''13''  ');
      paramByName('chart').asString := chart;
      paramByName('jin_day').asString := jin_day;
      open;
      First;
      if not isEmpty then
      begin
        jinryopid := fieldByname('jinryo_pid').asString;
      end;
    end;

    with Dm_f.sqlRegi do
    begin
      close;
      SQL.Clear;
      SQL.Add('Insert into ma_sunap');
      SQL.Add('(');
      SQL.Add('chart,sDay,sTime,chong,chung,bonin,bonin1,team, Bohum,hyun,sunapEk,iilbanEk,totalCharge,card,supyo,tong,GammyunEk,hwanBulEk,');
      SQL.Add('HyunReceipt,misuEk,iBohumEk,janek,ietcEk,tx,bochul,gyojung,imp, admitNo, doc, doc_code,');
      SQL.Add(' mf, Etc, useBohum, recallDay,recallTime,recallRemark,sign,chamgo,youngSu,hyunYoungsu,YoungsuJa,jinryo_pid,chojae, sunapid) values');
      SQL.Add('(:chart, :jin_day,:sTime, :chong, :chung,:bonin, :bonin1, :team, :Bohum,:hyun,:sunapEk,:iilbanEk,:totalCharge,:card,');
      SQL.Add(':supyo,:tong,:GammyunEk,:hwanBulEk,:HyunReceipt,:misuEk,:iBohumEk,:janek,:ietcEk,:tx,:bochul,:gyojung,:imp, :admitno, :doc, :doc_code,');
      SQL.Add(' :mf,:Etc, :usebohum,');
      SQL.Add(':recallDay,:recallTime,:recallRemark,:sign,:chamgo,:youngSu,:hyunYoungsu,:YoungsuJa,:jinryo_pid,:chojae,:sunapid');
      SQL.Add(')');
      paramByName('chart').asString := chart;
      paramByName('jin_day').asString := jin_day;
      paramByName('sTime').AsDateTime := now;
      paramByName('tx').asString := '';
      paramByName('chong').asString := chong;
      paramByName('chung').asString := chung;
      paramByName('bonin').asString := bonin;
      paramByName('bonin1').asString := bonin1;
      paramByName('team').asString := team;

      // ParamByName('doc').AsString := cmbDoctor.text;

      // ParamByName('doc_code').AsString := LoadteamFromSawon(cmbDoctor.text) ;
      paramByName('doc').asString := cbDoc.ColumnItems[cbDoc.itemindex, 2];  // saname

      paramByName('doc_code').asString := cbDoc.ColumnItems[cbDoc.itemindex, 4];//SaID

      paramByName('useBohum').asString := '0';
      paramByName('Bohum').asString := bonin;
      paramByName('admitno').asString := '0';
      paramByName('iilbanEk').asString := bonin1;
      paramByName('totalCharge').asfloat := 0;

      if varKind = '1' then
      begin
        paramByName('sunapEk').asfloat := StrToInt(bonin) + StrToInt(bonin1);

        if VarSunapRule = '1' then
        begin
          paramByName('card').asfloat := StrToInt(bonin) + StrToInt(bonin1);
          paramByName('hyun').asfloat := 0;
        end
        else
        begin
          paramByName('card').asfloat := 0;
          paramByName('hyun').asfloat := StrToInt(bonin) + StrToInt(bonin1);
        end;
      end
      else
      begin
        paramByName('sunapEk').asfloat := 0;
        paramByName('hyun').asfloat := 0;
        paramByName('card').asfloat := 0;

      end;

      paramByName('supyo').asfloat := 0;
      paramByName('tong').asfloat := 0;
      paramByName('GammyunEk').asfloat := 0;
      paramByName('hwanBulEk').asfloat := 0;
      paramByName('HyunReceipt').asfloat := 0;
      paramByName('misuEk').asfloat := 0;
      paramByName('iBohumEk').asfloat := 0;
      paramByName('janek').asfloat := 0;
      paramByName('ietcEk').asfloat := 0;

      paramByName('bochul').asString := '0'; // none
      paramByName('gyojung').asString := '0'; // none
      paramByName('imp').asString := '0'; // none
      paramByName('mf').asString := '0'; // none
      paramByName('Etc').asString := '0'; // none
      paramByName('recallDay').asString := ''; // none
      paramByName('recallTime').asString := ''; // none
      paramByName('recallRemark').asString := ''; // none
      paramByName('sign').asString := '';
      paramByName('chamgo').asString := '';
      paramByName('youngSu').asString := '';
      paramByName('hyunYoungsu').asString := '';
      paramByName('YoungsuJa').asString := '';
      paramByName('jinryo_pid').asString := jinryopid;
      paramByName('chojae').asString := chojae;
      paramByName('sunapid').asString := '8';
      execsql;
    end;

  end;

end;

procedure TJinryo_f.SunapPUpdate(chart: string; jin_day: string; chong: string;
  chung: string; bonin: string; bonin1: string;
  // Pkamak: string;
  // PMisuak: string;
  // PYoungsu: string;
  // PCard: string;
  // PCashYs: string;
  // PCash: string;
  // PTong: string;
  chojae: string; jinryopid: string; jinryoSave: string; varKind: string);
begin

  if jinryoSave <> '1' then
  begin

    with Dm_f.sqlRegi do
    begin
      close;
      SQL.Clear;
      SQL.Add('Update ma_sunap Set');
      SQL.Add('sTime=:sTime, chong=:chong,chung=:chung,');
      SQL.Add('bonin=:bonin,bonin1=:bonin1,Bohum=:Bohum,iilbanEk=:iilbanEk,chojae=:chojae, ');
      SQL.Add('sunapid=:sunapid ');
      SQL.Add('where jinryo_pid = :jinryo_pid');
      // Sql.Add('Where chart=:chart and sDay=:jin_day');

      paramByName('jinryo_pid').asString := jinryopid;
      paramByName('sTime').AsDateTime := now;
      paramByName('chong').asString := chong;
      paramByName('chung').asString := chung;
      paramByName('bonin').asString := bonin;
      paramByName('bonin1').asString := bonin1;
      paramByName('bohum').asString := bonin;
      paramByName('iilbanEk').asString := bonin1;
      paramByName('chojae').asString := chojae;
      // paramByname('gammyunek').AsString := Pkamak;
      // paramByname('misuek').AsString := PMisuak;
      // paramByname('sunapek').AsString := PYoungsu;
      // paramByname('Card').AsString := PCard;
      // paramByname('HyunReceipt').AsString := PCashYs;
      // paramByname('hyun').AsString := PCash;
      // paramByname('tong').AsString := PTong;
      paramByName('sunapid').asString := '8';
      execsql;

    end;

  end;

end;

function TJinryo_f.GetJakyuk(sChart: string; dWorkDate: TDateTime): TJakyuk;
begin
  // 반환값은 인덱스 입니다.
  Result.jongbeul := -1;
  Result.kwan := -1;
  Result.piboname := '';
  Result.kiho := '';
  Result.k_number := '';
  Result.c_name := '';

  if sChart = '' then
  begin
    Result.jongbeul := 0;
    exit;
  end;

  with Dm_f.sqlKae do
  begin
    close;
    SQL.Clear;
    SQL.Add('select jongbeul,kwan,piboname,kiho,k_number,c_name from Jakyuk j, chohap c where j.kiho*=c.c_key and j.chart=:chart and j.apply_day <=:apply_day order by j.apply_day desc');
    paramByName('chart').asString := sChart;
    paramByName('apply_day').asString := FormatDateTime('YYYY-MM-DD',
      dWorkDate);
    open;
    First;
    if not isEmpty then
    begin
      Result.jongbeul := fieldByname('Jongbeul').AsInteger - 1;
      Result.kwan := fieldByname('kwan').AsInteger - 1;
      Result.piboname := fieldByname('piboname').asString;
      Result.kiho := fieldByname('kiho').asString;
      Result.k_number := fieldByname('k_number').asString;
      Result.c_name := fieldByname('c_name').asString;
    end
    else
    begin
      Result.jongbeul := -1;

    end;

    // *********************************************************

    if Result.jongbeul < 0 then
    begin
      close;
      SQL.Clear;
      SQL.Add('select jongbeul,kwan,piboname,kiho,k_number,c_name from Jakyuk j, chohap c where j.kiho*=c.c_key and j.chart=:chart and j.apply_day >=:apply_day order by j.apply_day ');
      paramByName('chart').asString := sChart;
      paramByName('apply_day').asString := FormatDateTime('YYYY-MM-DD',
        dWorkDate);
      open;
      First;
      if not isEmpty then
      begin
        Result.jongbeul := fieldByname('Jongbeul').AsInteger - 1;
        Result.kwan := fieldByname('kwan').AsInteger - 1;
        Result.piboname := fieldByname('piboname').asString;
        Result.kiho := fieldByname('kiho').asString;
        Result.k_number := fieldByname('k_number').asString;
        Result.c_name := fieldByname('c_name').asString;
      end
      else
      begin
        Result.jongbeul := -1;
      end;
    end;

    // showmessage('42') ;
    if Result.jongbeul < 0 then
    begin
      close;
      SQL.Clear;
      SQL.Add('select jongbeul,kwan,piboname,kiho,k_number,c_name from view_gogek i, chohap c where chart=:chart and i.kiho*=c.c_key');
      paramByName('chart').asString := sChart;
      open;
      First;
      if not isEmpty then
      begin
        if checkInt(fieldByname('Jongbeul').asString) then
          Result.jongbeul := fieldByname('Jongbeul').AsInteger - 1
        else
          Result.jongbeul := 0;
        if checkInt(fieldByname('kwan').asString) then
          Result.kwan := fieldByname('kwan').AsInteger - 1
        else
          Result.kwan := 0;
        Result.piboname := fieldByname('piboname').asString;
        Result.kiho := fieldByname('kiho').asString;
        Result.k_number := fieldByname('k_number').asString;
        Result.c_name := fieldByname('c_name').asString;
      end
      else
      begin
        Result.jongbeul := 0;
        Result.kwan := 0;
        Result.piboname := '';
        Result.kiho := '';
        Result.k_number := '';
        Result.c_name := '';
      end;
    end;

    // showmessage('43') ;
  end;
end;


procedure TJinryo_f.OnScreenActiveFormChange(Sender: TObject);
begin
  if Assigned(Screen.ActiveForm) and (Screen.ActiveForm.ClassName='TMessageForm') then
      SetWindowPos(Screen.ActiveForm.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TJinryo_f.StyleClick(Sender: TObject);
var
  StyleName: String;
  i: Integer;
begin
  //get style name
  StyleName := StringReplace(TMenuItem(Sender).Caption, '&', '',
    [rfReplaceAll, rfIgnoreCase]);
  //set active style
  TStyleManager.SetStyle(StyleName);
  //check the currently selected menu item
  (Sender as TMenuItem).Checked := true;
  //uncheck all other style menu items
  for I := 0 to stylemenu.Count -1 do begin
    if not stylemenu.Items[i].Equals(Sender) then
      mainmenu1.Items[i].Checked := false;
  end;
end;
// 폼 시작 ====================================================================


procedure TJinryo_f.FormCreate(Sender: TObject);
var
  i: Integer;
var
  Style: String;
  Item: TMenuItem;
begin
  //Add child menu items based on available styles.
  for Style in TStyleManager.StyleNames do
  begin
    Item := TMenuItem.Create(stylemenu);
    Item.Caption := Style;
    Item.OnClick := StyleClick;
    if TStyleManager.ActiveStyle.Name = Style then
      Item.Checked := true;
    StyleMenu.Add(Item);
  end;



  Screen.OnActiveControlChange := OnScreenActiveFormChange;


  picpath := ExtractFilePath(ParamStr(0));

  if trim(configvalue.imgSharefolderPath) = '' then
    picpath_face := ExtractFilePath(ParamStr(0))
  else
    picpath_face := configvalue.imgSharefolderPath;

 //  grdSangbyung. .imeMode := imSAlpha;

   BSHL7Library.LoadFromFile('.\data\BSHL7251.BSL');

  // pnlImg.Left  := 0;
  // pnlImg.Align := alLeft;
  //
  // pnlNewonInfo.Left  := pnlImg.Width + 1;
  // pnlNewonInfo.Align := alLeft;
  //
  // AdvSplitter7.Left  := pnlImg.Width + pnlNewonInfo.width + 1;
  // AdvSplitter7.Align := alLeft;
  //
  // pnlRemark.Left     := pnlImg.Width + pnlNewonInfo.width + AdvSplitter7.width + 1;
  // pnlRemark.Align    := alLeft;
  //
  // AdvSplitter8.Left  := pnlRemark.Width + pnlImg.Width + pnlNewonInfo.width  + AdvSplitter7.width + 1;
  // AdvSplitter8.Align := alLeft;
  //
  // pnlChamgo.Left     :=  pnlRemark.Width + pnlImg.Width + pnlNewonInfo.width  + AdvSplitter7.width + + AdvSplitter8.width +1;
  // pnlChamgo.Align    := alLeft;
  //
  // AdvSplitter2.Left  :=  pnlRemark.Width + pnlImg.Width
  // + pnlNewonInfo.width  + AdvSplitter7.width + + AdvSplitter8.width
  // + pnlChamgo.width +1;
  //
  // AdvSplitter2.Align := alLeft;
  //
  //
  // pnlTxImages.Left  := pnlRemark.Width + pnlImg.Width
  // + pnlNewonInfo.width  + AdvSplitter7.width + AdvSplitter8.width + AdvSplitter2.width
  // + pnlChamgo.width +1;
  // pnlTxImages.Align := alClient;
  //
  // AdvSplitter12.Left := pnlChamgo.Width + 1;




  // if UpdateCheck = true then
  // begin
  // ShellExecute(0, 'open',
  // Pchar(ExtractFilePath(Application.ExeName)
  // + 'Downloader_http_MEDIRO.exe'), '', nil, SW_SHOWNORMAL);
  // end;

  // configvalue := TConfigvalue.create;
  // if loadini = true then
  // begin
  // configvalue.LoadGlobalData_ini;  //ini정보를 열자.
  //
  //
  // if dm_f.ConnectDatabase(configvalue.varDbip,
  // configvalue.varDbname,
  // configvalue.varDbuser, configvalue.varDbpass,
  // configvalue.varDbProtocol,
  // configvalue.varDbPort) = true then
  // begin
  //
  // configvalue.LoadGlobalData_db;
  //
  // // tableUpdate;
  //
  // end
  // else
  // begin
  // showmessage('Required environment set.');
  // application.Terminate;
  // end;
  //
  // end
  // else
  // begin
  // showmessage('Required environment set.');
  // application.Terminate;
  // end;
  //


  dmain.Date := now;
  DaySet(dmain.Date);
  // pnlNeyukList.align := alClient;
  Ibwon := false;
  inputShortCut := false; // +눌러서 단축키로 등록하는 경우  true

  grdJx2.Align := alClient;
  memChungGuMemo.Align := alClient;

  edtRemark.Align := alClient;


  edtCC.Align := alClient;
//  memo3.Align := alClient;


  edtMedHx.Align := alClient;
  edtDr.Align := alClient;
  edtPtWant.Align := alClient;


  edtGroupOrderValue.text := '';
  edtFasvoriteSearch.text := '';
  edtSearchSuga.text := '';
  edtSearchDrug.text := '';
  edtFindGroupCode.text := '';

  pgFavorite.activepage := TabSheet1;

  // {$IFNDEF DEBUG}
  //
  // with grdSangByung do
  // begin
  // ColWidths[1] := 0;
  // ColWidths[2] := 0;
  // ColWidths[3] := 0;
  // ColWidths[4] := 0;
  // ColWidths[5] := 0;
  // //    ColWidths[6] := 0;
  // ColWidths[7] := 0;
  // ColWidths[8] := 0;
  // ColWidths[9] := 0;
  // //     ColWidths[10] := 0;
  // ColWidths[11] := 0;
  // ColWidths[12] := 0;
  // ColWidths[13] := 0;
  // ColWidths[14] := 0;
  // ColWidths[15] := 0;
  // end;
  // {$ENDIF DEBUG}

  with grdDetailCost do
  begin
    ints[2, 0] := 0; // 진찰료
    ints[2, 1] := 0; // nSumTotal 진찰료 뺀 총금액
    ints[2, 2] := 0; // X
    ints[2, 3] := 0; // X
    ints[2, 4] := 0; // nDangaSilantExtract 실란트 빼단가
    ints[2, 5] := 0; // nDangaSilantExtractBeforeJongGasan 실란트 뺀 금액에 종가산 안한거.
    ints[2, 6] := 0; // nSealant  실란트 단가

    ints[1, 0] := 0; // nSumChong 총금액
    ints[1, 1] := 0; // nSumBohumChong 총금액 - 비급여
    ints[1, 2] := 0; // nSumChung      청구금액
    ints[1, 3] := 0; // nSumBohumBonin 본인부담(급여)
    ints[1, 4] := 0; // nSumBigub     비급여 총금액 nSumBigub
    ints[1, 5] := 0; // nSumBonin      본인부담(급여+비급여)
  end;

  setArrayPanel;
  for i := 0 to 3 do
  begin
    initPanel(pnlArray[i]);
  end;

  for i := 0 to 24 do
  begin
    initAdvPanel(AdvpnlArray[i], dm_f.PictureContainer1);
  end;

  initAdvPanel(PnlRis, dm_f.PictureContainer1);


  //진료내역 grdTxHx 스크롤 제어
  FHxTxWndProc := grdTxHx.WindowProc;
  grdTxHx.WindowProc := HxTxWndProc;


  LoadDefaultValue;



end;




procedure TJinryo_f.setArrayPanel;
begin

  setLength(pnlArray, 4);

//  pnlArray[0] := pnlBottom;
  pnlArray[0] := pnlBody;
  pnlArray[1] := pnlPriceView;
  pnlArray[2] := pnlWaitingList;
//  pnlArray[3] := pnlConditionTx;
  pnlArray[3] := pnlCalNavi;

  setLength(AdvpnlArray, 25);

  AdvpnlArray[0] := pnlCC;
  AdvpnlArray[1] := pnlSangByung;
  AdvpnlArray[2] := pnlProgress;
  AdvpnlArray[3] := pnlJinryo;
  AdvpnlArray[4] := pnlJaboInfo;
  AdvpnlArray[5] := pnlhapsan;
  AdvpnlArray[6] := pnlRX;
  AdvpnlArray[7] := pnlVitalinfo;
  AdvpnlArray[8] := pnlremark;
  AdvpnlArray[9] := pnlMedicalHx;
  AdvpnlArray[10] := pnlDr;
  AdvpnlArray[11] := pnlPt;
  AdvpnlArray[12] := pnlSuga;
  AdvpnlArray[13] := pnlSimsaChamgo;
  AdvpnlArray[14] := pnlChamgo;
  AdvpnlArray[15] := pnlJinryoHx;
  AdvpnlArray[16] := pnlSpecialRemark ;
  AdvpnlArray[17] := pnlReferHosp ;
  AdvpnlArray[18] := pnlRequest ;
  AdvpnlArray[19] := pnlImg ;
  AdvpnlArray[20] := pnlMainTop  ;
  AdvpnlArray[21] := pnlWait  ;
  AdvpnlArray[22] := pnlCalendar;
  AdvpnlArray[23] := pnlBottom;
  AdvpnlArray[24] := pnlSanjungTeakRye;


//    pnlArray[5] := pnlWait  ;

//  AdvpnlArray[15] := pnlNewonInfo;
//  AdvpnlArray[7] := pnlTx;

end;

procedure TJinryo_f.SplDblClick;
begin
  {
    if sptJinryo.Top < 504 then
    sptJinryo.Top := 504
    else
    if sptJinryo.Top > then
    sptJinryo.Top := 504
  }

end;

procedure TJinryo_f.sugaUpdate;
begin
  //
end;

// 폼 show ---------------------------------------------------------

procedure TJinryo_f.FormShow(Sender: TObject);
var
  Path: string;
  FormInit: TIniFile;
begin

      useEnlarge_pnlWait_Jinryo := false;  //진료내역 확대여부
      isJx2Delete               := false;  //Delete키를 눌렀을때 지울래? 복구할래?
      isSangByungDelete         := false;

      Path := GetConfigDir + 'db.ini';

      FormInit := TIniFile.Create(Path);
      pnlSangByung.width      := FormInit.ReadInteger('splitInfo', 'pnlSangByungWidth', 130);
      pnlWait_Jinryo.width    := FormInit.ReadInteger('splitInfo',  'pnlWaitingListWidth', 261);
      pnlWaitingList.height   := FormInit.ReadInteger('splitInfo', 'pnlWaitingListHeight', 250);
      pnlSimsaChamgo.width    := FormInit.ReadInteger('splitInfo', 'pnlSimsaChamgoWidth', 250);

      pnlReferHeadInfo.height := FormInit.ReadInteger('splitInfo', 'pnlReferHeadInfoHeight', 135);


      pnlCalendar.width       := FormInit.ReadInteger('splitInfo', 'pnlCalendarWidth', 200);

      pnlVitalinfo.height     := FormInit.ReadInteger('splitInfo', 'pnlVitalinfo', 70);
      pnlCC.height            := FormInit.ReadInteger('splitInfo', 'pnlccHeight', 170);

      pnlPicinfo.width        := FormInit.ReadInteger('splitInfo', 'pnlPicinfoWidth', 450);
      pnlChamgo.width         := FormInit.ReadInteger('splitInfo', 'pnlChamgowidth', 170);
    //  pnlremark.width       :=  FormInit.ReadInteger('splitInfo', 'pnlremarkWidth',170 );

      pnlremark.height        :=  FormInit.ReadInteger('splitInfo', 'pnlremarkHeight',170 );

      pnlMedicalHx.height     := FormInit.ReadInteger('splitInfo',  'pnlMedicalHxHeight', 70);
      pnlDr.height            := FormInit.ReadInteger('splitInfo', 'pnlDrHeight', 70);
      pnlPt.height            := FormInit.ReadInteger('splitInfo', 'pnlPtHeight', 70);

      pnlCCnRequest.height            := FormInit.ReadInteger('splitInfo', 'pnlCCnRequestHeight', 70);



      //pnlRefer.height := FormInit.ReadInteger('splitInfo', 'pnlReferHeight', 150);

      pnlDisease.height       := FormInit.ReadInteger('splitInfo', 'pnlDiseaseHeight', 120);
      pnlSOAP.width           := FormInit.ReadInteger('splitInfo', 'pnlSoapWidth', 350);
      memReferList.height     := FormInit.ReadInteger('splitInfo', 'memReferListHeight', 20);
      pnlChkListNRemark.height := FormInit.ReadInteger('splitInfo', 'pnlChkListNRemarkHeight', 50);

     // pnlPastHx.Height :=   FormInit.ReadInteger('splitInfo', 'pnlPastHxHeight',350);

      pagecontrol1.ActivePageindex  := FormInit.ReadInteger('ETC', 'CalInfoTabinfo', 0);

      pgFavorite.ActivePageindex  := FormInit.ReadInteger('ETC', 'InputTxTabInfo', 1);

        if FormInit.ReadInteger('splitInfo', 'useEnlarge_pnlWait_Jinryo', 0) = 0 then
       begin

           useEnlarge_pnlWait_Jinryo := false;
           btnEnLarge.Caption := '◀';
       end
           else
       begin
           useEnlarge_pnlWait_Jinryo := true;
              btnEnLarge.Caption := '▶';
       end;
        lblStatus.Caption :='';

       FormInit.Free;


       initAdvGrid(grdTxHx, true);

       initAdvGrid(grdNeyuk);
       initAdvGrid(grdSangByung);
       initAdvGrid(grdLabResult);
       initAdvGrid(grdJx2);
       initAdvGrid(grdGroupCode);
       initAdvGrid(grdSuga);
       initAdvGrid(grdDrug);
       initAdvGrid(grdFindGroup);
       initAdvGrid(grdFindSuga);
       initAdvGrid(grdFavorite);




       if configvalue.varBaseExamView = '1' then
       begin
           pnlChkListNRemark.Visible := true;
       end
       else
       begin
            pnlChkListNRemark.Visible := false;
       end;


       if configvalue.varExamMemoView = '1' then
       begin
            pnlRequest.Visible := true;
            AdvSplitter11.Visible := true;
       end
       else
       begin
            pnlRequest.Visible := false;
            AdvSplitter11.Visible := false;
       end;

      //  grdSangByung.ColWidths[19]:= 0;
        grdSangByung.HideColumn(19) ;

        fieldClear;

        GetHoliday;
        // loadDoc;
        LoadGroupCode(grdGroupcode);
        LoadFavoriteSuga;
        // //참고사항 표시
        // LoadMoreInfo(ma_chart);

        DaegiFrame_fr1.pnlSunapDaegi.Visible := false;
        DaegiFrame_fr1.advsplitter1.Visible := false;
        DaegiFrame_fr1.Align := alClient;
        DaegiFrame_fr1.Preshow(1);

        lblVersion.Caption := 'Ver. ' + GetExeVersion(ParamStr(0)); //
        lbluser.Caption := 'User : ' + trim( V_UserID) + '('+  LoadDocNameFromSawonWithID(V_UserID)  +')'; //


        {$IFDEF DEBUG}
           pnlInfo2.Visible   := true;
           cbDrugSelf.Checked := true;
        {$ENDIF DEBUG}


         grdTxHx.HideColumn(10); //처방내역
         grdTxHx.HideColumn(11); //구분 1, 2, 3
         grdTxHx.HideColumn(12); //일자
         grdTxHx.HideColumn(13); //group G

         grdSuga.ColWidths[4] := 0;   // 예외코드
         grdSuga.ColWidths[5] := 0;   // 특례코드

         grdSuga.HideColumn(4);    // 예외코드
         grdSuga.HideColumn(5);    // 특례코드

//         grdFavorite.HideColumn(3); //
//         grdFavorite.HideColumn(4); //


         grdGroupCode.HideColumn(3); //진료실

         if   pgFavorite.ActivePageindex = 2 then
         begin
//               btnAddPharm.Visible    := true;
//               btnAddBigub.Visible    := true;
//               btnAddMaterial.Visible := true;

               btnAddPharm.Visible    := false;
               btnAddBigub.Visible    := false;
               btnAddMaterial.Visible := false;

         end
         else
         begin


               btnAddPharm.Visible    := false;
               btnAddBigub.Visible    := false;
               btnAddMaterial.Visible := false;
         end;

         edtSearchSugaCode.Text :='';
         edtSearchSugaName.Text :='';
         edtSearchSuga.Text :='';

         edtSearchSugaCode.Width := grdSuga.ColWidths[3];
         edtSearchSugaName.Width := grdSuga.ColWidths[2];
         edtSearchSuga.Width     := grdSuga.ColWidths[1];


        grdGroupCode.Align     := alClient;
        grdSuga.Align          := alClient;
        grdDrug.Align          := alClient;
        grdFavorite.Align      := alClient;
        grdFindSuga.Align      := alClient;

        tabSearchGroupCode.TabVisible := false;
        tabDrugCode.TabVisible := false;

end;

// 초기화 ---------------------------------------------------------

procedure TJinryo_f.fieldClear;
var
  txtSql: TstringList;
  Stream: TStream;
  i: Integer;
  SelectResult: Integer;
begin
  // caption := '[MEDIRO]' + ' 환자를 선택해 주세요.';
  Caption := 'HHPMS - [진료실] '; // + ' 환자를 선택해 주세요.';


  lblPatInfo.Font.Color := $00b36613;
  lblPatInfo.Caption := '환자를 선택하세요';

  lblJuso.Caption:= '';
  //ma_h_juso

  lblChart.Caption := '';
  lblJubsuID.Caption := '';


  lstWonweNo.items.clear;
  lstWonweNo.Repaint;

  edtJiwon.text := '';

//  isWonwe := false;

  dmain.Events.Clear;
//  dmain.Date := now;

  inputShortCut := false;

  edtFirst.text := '';

  lstGroupTemp.Items.Clear;
  lstGroupTemp.Visible := false;

  cbBohum100.checked := false;

  grdSangByung.RemoveRows(1, grdSangByung.RowCount - 1);

//  if isNeyukClear = false then

  if isNeyukLoad = false then
  begin

      grdNeyuk.LockUpdate :=  true;
      grdNeyuk.ClearRows(1, grdNeyuk.RowCount - 1);
      grdNeyuk.RemoveRows(1, grdNeyuk.RowCount - 1);
      grdNeyuk.LockUpdate :=  false;

      grdTxHx.LockUpdate :=  true;

      grdTxHx.ClearRows(1,  grdTxHx.RowCount - 1);
      grdTxHx.RemoveRows(1, grdTxHx.RowCount - 1);

      grdTxHx.ColumnHeaders.Add('');     //'일자'
      grdTxHx.ColumnHeaders.Add('그룹코드');
      grdTxHx.ColumnHeaders.Add('코드');
      grdTxHx.ColumnHeaders.Add('명칭');
      grdTxHx.ColumnHeaders.Add('총투');
      grdTxHx.ColumnHeaders.Add('횟수');
      grdTxHx.ColumnHeaders.Add('일수');
      grdTxHx.ColumnHeaders.Add('급여구분');
      grdTxHx.ColumnHeaders.Add('담당의');
      grdTxHx.ColumnHeaders.Add('금액');
      grdTxHx.ColumnHeaders.Add('처방내역');

      grdTxHx.LockUpdate :=  false;


  end;

//  CurrentFile := picpath + '\icons\Default.jpg';
  CurrentFile := PicPath + '\icons\img_woman.jpg';

  if FileExists(CurrentFile) then
    imgPic.Picture.LoadFromFile(CurrentFile)
  else
    imgPic.Picture := nil;

  edtname.text := '';
  edtEngName.text := '';
  edtChart.text := '';

  memLabRemark.Text    := '';

//  pnlCc.caption.Text:= '<img src="'+'DoctrosNote'+'">'+'Doctor''s Note';
           pnlCc.caption.Text       := '<img src="'+ 'DoctrosNote' +'" width="18">'+' '
             +'<FONT face="맑은 고딕" size="11">' + 'Doctor''s Note'+ '</FONT>';



  lblGenderAge.Font.Color := clSilver;
  lblGenderAge.Caption := 'Gender / Age';

  edtJumin.Clear;
  edtJumin2.Clear;
  edtJumin2.Hint := '';
  edtJumin.Font.Color := clBlack;
  // edtSoge.clear;
  // edtSoge2.clear;

  lblPiDate.Caption := '';
  tcCCDate.Tabs.Clear;

  with Dm_f.sqlJinryo do
  begin

    cmbDoctor.Clear;
    lstDoctorNo.Clear;
    close;
    SQL.Clear;
    SQL.Add('select * from ma_team order by team_name');
    open;
    First;
    if not isEmpty then
    begin
      while not eof do
      begin
        cmbDoctor.Items.Add(fieldByname('team_doctor1').asString);
        lstDoctorNo.Items.Add(fieldByname('team_name').asString);
        next;
      end;
    end
    else
    begin
      cmbDoctor.Items.Add(configvalue.varDaepyo);
      lstDoctorNo.Items.Add(configvalue.varMyunhu);
    end;

    // 진료과목 가져오기
    close;
    SQL.Clear;
    SQL.Add('select * from kwamok order by code');
    open;
    First;

    if not isEmpty then
    begin
      cbKwamok.Clear;
      while not eof do
      begin
        cbKwamok.Items.Add(fieldByname('code').asString + '.' +
          fieldByname('content').asString);
        next;
      end;
    end;

  end;

  memChungGuMemo.text := '';
  memRemark.text := '';

  edtRemark.text := '';
  edtCC.text := '';
  lblTreatRoom.Caption:= '';

//  memo3.text := '';

  edtMedHx.text := '';
  edtDr.text := '';
  edtPtWant.text := '';


  memReferList.text := '';
  lstReferList.Items.Clear;

  Edit3.text := '';
  Edit4.text := '';

  edtSanjung.text := '';

  edtHwakin.text := '';
  edtBontype.text := '';
  edtYujikum.text := '0';
  edtBoninGu.text := '';
  lblCarID.Caption := '';
  cbJabosaCode2.itemindex := -1;
  edtJaboSagoJubsuNo2.text := '';
  edtJaboJigubBojungNo2.text := '';

  edtSearchSuga.text := '';
  edtSearchDrug.text := '';

  varChartno := '';
  varName := '';
  varJungNo := '';

  varJuminNo := '';
  varFirstDay := FormatDateTime('YYYY-MM-DD', now);
  varlastDay := FormatDateTime('YYYY-MM-DD', now);
  varChoje := '0';
  varPibo := '';
  varJohap := '';
  varTel := '';

  varteam := '';
  varOption := '0';
  varPregnan := '0';

  varBonjun := '';
  varBontype := '';
  varBonjan := '0';
  varsunkiho1 := '';
  varsunkiho2 := '';
  varsunkiho3 := '';
  varsunkiho4 := '';

  varUsername := '';

  edtChkList.Clear;
  cbSanjungTeakRye.Checked := false;
  cbIO.ItemIndex := 0;


  pnlReferHosp.Visible := false;


  lblReferHospName.Caption := '병원명:';
  lblReferHospDoc.Caption := '담당의:';
  lblReferHospPhone.Caption := '연락처:';

  lblReferHospName2.Caption := '';

  pnlCostClear;

  btnOutHosp.Visible := false;
  pnlSanjungTeakRye.Visible := false;

  nMan := 0;

  varValueChanged := false;
  //Lock전체를 해제 한다.
  ReleaseLockAll('HJinryo',  V_UserID, GetIPAddress);
end;

function TJinryo_f.LoadLastTeam(varChart: string): string;
begin
  Result := '';
  with Dm_f.sqlTemp do
  begin
    close;
    SQL.Clear;
    SQL.Add('select top 1 * from jinryo_p where chart=:chart order by jin_day desc');
    paramByName('chart').asString := varChart;
    open;
    First;
    if not isEmpty then
    begin
      Result := fieldByname('team').asString;

    end;
  end;
end;

function TJinryo_f.LoadLastTeamDocname(varChart: string): string;
begin
  Result := '';
  with Dm_f.sqlTemp do
  begin
    close;
    SQL.Clear;
    SQL.Add('select top 1 * from jinryo_o where chart=:chart order by jin_day desc');
    paramByName('chart').asString := varChart;
    open;
    First;
    if not isEmpty then
    begin

      Result := fieldByname('Doc_code').asString;

    end;
  end;
end;


// Preshow (main 에서 먼저 실행)-----------------------------------------------

procedure TJinryo_f.Preshow;
var
  FormInit: TIniFile;
  Path: string;
begin

  // if trim(main_f.edtchart.text) <> '' then
  // varChartno := main_f.edtChart.text
  // else
  varChartno := '';

  // if trim(main_f.edtName.text) <> '' then
  // varName := main_f.edtname.text
  // else
  varName := '';

  // if trim(main_f.edtJungno.text) <> '' then
  // varJungNo := main_f.edtJungno.text
  // else
  varJungNo := '';

  // if trim(main_f.edtJumin.text + main_f.edtJumin2.text) <> '' then
  // varJuminNo := main_f.edtJumin.text + main_f.edtJumin2.text
  // else
  varJuminNo := '';

  // if isDate(main_f.edtFirst.text) = true then
  // varFirstday := main_f.edtFirst.text
  // else
  varFirstDay := FormatDateTime('YYYY-MM-DD', now);

  // if isDate(main_f.edtLast.text) = true then
  // varLastday := main_f.edtLast.text
  // else
  varlastDay := FormatDateTime('YYYY-MM-DD', now);

  // if main_f.cbChoje.itemindex >= 0 then
  // varChoje := inttostr(main_f.cbChoje.itemindex);
  varChoje := '0';

  // if trim(main_f.edtgaip.text) <> '' then
  // varPibo := main_f.edtgaip.text
  // else
  varPibo := '';

  // if trim(main_f.edtGiho.text) <> '' then
  // varJohap := main_f.edtGiho.text //조합기호
  // else
  varJohap := '';

  // if trim(main_f.edthPhone.text) <> '' then
  // varTel := main_f.edthphone.text
  // else
  varTel := '';

  // if main_f.cbDoc.itemindex >= 0 then
  // begin
  // varTeam := cbDoc.ColumnItems[main_f.cbDoc.itemindex, 2] ;// inttostr(main_f.cbDoc.ItemIndex + 1); //팀
  // end
  // else
  // begin
  varteam := '';
  // end;

  // if main_f.cbjange.Checked = true then
  // varOption := '1'
  // else
  varOption := '0';

  // if main_f.chkPregnan.Checked = true then
  // varPregnan := '1'
  // else
  varPregnan := '0';


  // if trim(main_f.edtJunek.text) <> '' then
  // varBonJun := main_f.edtJunek.text //본인부담면제
  // else
  varBonjun := '';

  // if trim(main_f.edtBudam.text) <> '' then
  // varBonType := main_f.edtBudam.text  //본인부담코드 - M
  // else
  varBontype := '';

  // if trim(main_f.edtJanek.text) <> '' then
  // varBonJan := main_f.edtJanek.text //잔액
  // else
  varBonjan := '0';

  // if trim(main_f.edtSunkiho1.text) <> '' then
  // varSunkiho1 := main_f.edtSunkiho1.text //선택기관 내과
  // else
  varsunkiho1 := '';

  // if trim(main_f.edtSunkiho2.text) <> '' then
  // varSunkiho2 := main_f.edtSunkiho2.text  //선택기관
  // else
  varsunkiho2 := '';

  // if trim(main_f.edtSunkiho3.text) <> '' then
  // varSunkiho3 := main_f.edtSunkiho3.text  //안씀
  // else
  varsunkiho3 := '';
  // if trim(main_f.edtSunkiho4.text) <> '' then
  // varSunkiho4 := main_f.edtSunkiho4.text  //선택기관 치과
  // else
  varsunkiho4 := '';

  // if trim(main_f.v_username) <> '' then
  // varUserName := main_f.V_UserName;
  varUsername := '';






  // varChartno   := ma_chart;
  // varName      := ma_paName;
  // varJungNo    := ma_K_Number;
  // varJuminNo   := ma_jumin;
  // varFirstday  := ma_first;
  // varLastday := ma_last;

  // varChoje := inttostr(main_f.cbChoje.itemindex);


  // varPibo := ma_PiboName ;
  //
  //
  // varJohap := ma_Kiho; //조합기호
  // varTel   := ma_c_Phone;
  //
  //
  /// /     loadDoc;
  //
  // varTeam :=  ma_doc;
  //
  //
  // varOption:=  ma_Special ;
  // //    varOption := '0';
  //
  //
  // varPregnan  :=  ma_pregnan ;
  //
  //
  // varBonJun   := ma_budam; //본인부담면제
  //
  // varBonType  := ma_sanjung; //본인부담코드 - M
  //
  // varBonJan   := ma_janek; //잔액
  //
  //
  // varSunkiho1 :=  ma_Sunkiho1; //선택기관 내과
  // varSunkiho2 :=  ma_Sunkiho2; //선택기관
  //
  // varSunkiho3 :=  ma_Sunkiho3;  //안씀
  // varSunkiho4 :=  ma_Sunkiho4; //선택기관 치과
  //
  // varUserName :=  V_UserName;

  varFilter := false; // Filter

  fieldClear; // 꼭 초기화...


  // if   trim(main_f.lblChaSangNo.Caption) <> ''   then
  // begin
  // edtGongSang.Text := copy( main_f.lblChaSangNo.Caption,1,1) ;
  //
  // edtSanjung.text :=  copy( main_f.lblChaSangNo.Caption ,5, length(main_f.lblChaSangNo.Caption) -5);
  //
  // //    edtSanjung.text :=  main_f.lblChaSangNo.Caption; //C   20110720202002011
  // end;

  dmain.Date := now;
  Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
  FormInit := TIniFile.Create(Path);

  pagecontrol1.activePageIndex  := FormInit.ReadInteger('ETC', 'CalInfoTabinfo', 0);

  FormInit.Free;


  // if varChartno <> '' then
  // begin
  // caption := '[MEDIRO]' + ' 성명:' + varname + ' 병록번호:' +
  // varChartNo + ' 주민번호:' + varJuminNo;
  // end
  // else
  // begin
  // caption := '[MEDIRO]' + ' 환자를 선택해 주세요.';
  // exit;
  // end;

  // pageGroup.SkinData := spSkinData3;

end;

procedure TJinryo_f.syncJa(loadJin: Boolean = true);
var
  genderAge: string;

begin

  fieldClear;

  if (ma_chart <> '') and (loadJin = true) then
  begin

    if isDate(JuminToBirthDash(ma_jumin)) = true then
    begin
      lblGenderAge.Font.Color := clNavy;
      genderAge := jumintogender(ma_jumin) + '/' +
        inttostr(MonthsBetween(now, StrToDate(JuminToBirthDash(ma_jumin)))
        div 12) + 'y ' + inttostr(MonthsBetween(now,
        StrToDate(JuminToBirthDash(ma_jumin))) mod 12) + 'm';
      // + jumintonai(ma_jumin);
    end
    else
    begin
      lblGenderAge.Font.Color := clNavy;
      genderAge := jumintogender(ma_jumin) + '/' + 'unknown';
    end;

    if LblAge.Caption = '' then
      LblAge.Caption := '0';

    if ma_special = '1' then
      chkJang.Checked := true
    else
      chkJang.Checked := false;

    if ma_pregnan = '1' then
      chkPregnan.Checked := true
    else
      chkPregnan.Checked := false;

    varChartno := ma_chart;
    varName := ma_paName;
    varJungNo := ma_K_Number;
    varJuminNo := ma_jumin;
    varFirstDay := ma_first;
    varlastDay := ma_last;
    varChoje := '0'; // inttostr(main_f.cbChoje.itemindex);
    varPibo := ma_PiboName;
    varJohap := ma_Kiho; // 조합기호
    varTel := ma_c_Phone;
    varteam := ma_doc;
    varOption := ma_special;
    varPregnan := ma_pregnan;


    varBonjun := ma_budam; // 본인부담면제
    varBontype := ma_sanjung; // 본인부담코드 - M
    varBonjan := ma_janek; // 잔액
    varsunkiho1 := ma_Sunkiho1; // 선택기관 내과
    varsunkiho2 := ma_Sunkiho2; // 선택기관
    varsunkiho3 := ma_Sunkiho3; // 안씀
    varsunkiho4 := ma_Sunkiho4; // 선택기관 치과
    varUsername := V_UserName;

    loadGongsang;

    edtname.text  := ma_paName;
    edtChart.text := ma_chart;

//    pnlCc.caption.Text:= '<img src="'+'DoctrosNote'+'">'+'Doctor''s Note' +' '+ ma_paName +'('+ma_chart +')' + genderAge;

           pnlCc.caption.Text       := '<img src="'+ 'DoctrosNote' +'" width="18">'+' '
             +'<FONT face="맑은 고딕" size="11">' + 'Doctor''s Note'+' '+ ma_paName +'('+ma_chart +')' + genderAge + '</FONT>';



    edtJumin.text := copy(ma_jumin, 1, 6);
    edtJumin2.text := copy(ma_jumin, 7, 7);

    lblGenderAge.Caption := genderAge;
    memRemark.text := ma_chamgo;

    // caption:=  '[진료실] '+ ' '+ ma_Chart +'('+ ma_Paname+')' + genderAge +'';

    if varFirstDay = formatDatetime('YYYY-MM-DD', now)  then
    begin
        lblPatInfo.Font.Color := clRed;
        lblPatInfo.Caption := '첫내원 ' + genderAge + '' // ma_Chart +'('+ ma_Paname+')' +
    end
    else
    begin
        lblPatInfo.Font.Color := $00B36613 ;
        lblPatInfo.Caption := genderAge + ''  ;
    end;

    lblJuso.Caption:=  ma_h_juso ;

    lblChart.Caption := ma_chart;
    lblJubsuID.Caption := ma_jubsu_ID;

//    FieldSetJin(varChartno);
    // jinryohistoryView;
    // SugaUpdate;

  end;

end;

procedure TJinryo_f.tcCCDateChange(Sender: TObject);
var
  Temp: string;
  varLength: Integer;
  varRichText: TRichEdit;
  dap: array [1 .. 100] of string;
  varRgTag: Integer;
  BStream: TStream;
  i: Integer;
  varChart: string;
  jin_day: string;
  treatRoom, doc_code : string;
begin


  // SaveCC;

  // saveRemark;
      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4];  //saID
      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];  //saTeam


      LoadCC(ma_chart,
          treatRoom,
          doc_code ,
          jin_day,
          inttostr(cbIo.ItemIndex));



  // varChart := ma_chart;
  // varRichText := edtCC;
  // varRichText.Clear;
  // lblPiDate.Caption := tcCCDate.Tabs.Strings[tcCCDate.TabIndex];
  // with dm_f.SqlTemp13 do
  // begin
  // Close;
  // Sql.Clear;
  // Sql.Add('Select * from hxCC');
  // Sql.Add('Where CCchart= :CCChart and ccDate =:ccDate ');
  //
  // ParamByName('CCChart').AsString := varChart;
  // ParamByName('ccDate').AsString := tcCCDate.Tabs.Strings[tcCCDate.TabIndex];
  // Open;
  // if not isEmpty then
  // begin
  //
  // BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
  // RTFInsertStream(varRichText,  bStream) ;
  // BStream.Free;
  //
  // end ;
  // end;

end;

procedure TJinryo_f.LoadCC(chart:string; treatRoom:string;
       doc_code:string; jin_day: string; isInPat:string);
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

  if ma_jubsu_ID ='' then
  exit;

  varChart := chart; // ma_chart;

  edtCC.lines.Clear;
  edtCC.Text:='';

  lblTreatRoom.Caption:= '';


//  memo3.text := '';
//  memo3.Lines.Clear;
//  ccDate := tcCCDate.Tabs.Strings[tcCCDate.TabIndex];

  lblPiDate.Caption := jin_day; // tcCCDate.Tabs.Strings[tcCCDate.TabIndex];


  with Dm_f.SqlTemp13 do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select * from hxCC');
//    SQL.Add('Where CCchart= :CCChart and ccDate =:ccDate and ccTeam=:ccTeam');
//    SQL.Add('Where CCchart= :CCChart and ccDate =:ccDate ');

//    paramByName('CCChart').asString := varChart;
//    paramByName('CCTeam').asString  := team;
//    paramByName('ccDate').asString  := ccDate;



//      SQL.Add('Where ccDate=:ccDate and CCchart= :CCChart ');
//      sql.Add('and ccTeam= :ccTeam ');
//      sql.Add('and doc_code=:doc_Code ');
//      sql.Add('and isInPat=:isInpat');
        SQL.Add('Where jubsu_id=:jubsu_id ');

      SQL.Add('order by ccDate desc');
//      paramByName('ccDate').asString   := FormatDateTime('YYYY-MM-DD', dmain.Date);
//      paramByName('ccTeam').asString   := treatRoom;
//      paramByName('doc_code').asString := doc_code;
//      paramByName('CCChart').asString  := varChart;
//      paramByName('isInPat').AsString  := isInPat;

      paramByName('jubsu_id').AsString  := ma_jubsu_ID;

    open;
    if not isEmpty then
    begin



 //     edtCC.SelAttributes.Color      :=   clBlue;
      BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
    //  RTFInsertStream(edtCC , BStream);

      edtCC.lines.loadfromStream(BStream)  ;



      BStream.Free;
      edtCC.WordWrap := true;  //True 면 라인 끝에서 엔터가 먹는다.

//      memo3.Lines.Text     :=  edtCC.Lines.Text ;
      lblTreatRoom.Caption :=  FieldByName('CCTeam').asString

     // memo3.Lines.Assign(edtCC);

//     // ToDO : 글자 크기를 키우는 방법
//      tempText := edtCC.Text;
//      edtCC.lines.clear;
//      edtCC.Text:='';
//
//      edtCC.SelAttributes.Color :=   clBlack;
//      edtCC.SelText := tempText;


    end
    else
    begin

      lblTreatRoom.Caption :=  '';

      if configvalue.varDoctorsNoteAutoInput = '1' then
      begin

          edtCC.text := 'Subjective : ' + #10 + 'Objective : ' + #10 +
            'Assessment : ' + #10 + 'Plan : '  ;

//          memo3.lines.Add(  'Subjective : ');
//          memo3.lines.Add(  'Objective : ');
//          memo3.lines.Add(  'Assessment : ');
//          memo3.lines.Add(  'Plan : ');
      end;

    end;
  end;
  edtCC.SelStart := 0;
//  memo3.SelStart := 0;
  // edtCC.SetFocus;
end;


procedure TJinryo_f.LoadLabRemark(jubsu_id:string);
begin
  memLabRemark.text := '';
  memLabRemark.Lines.Clear;
  with Dm_f.SqlTemp13 do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select * from ma_orderRemark');

      SQL.Add('Where jubsu_id=:jubsu_id  ');
      paramByName('jubsu_id').AsString  := jubsu_id;

      open;
    if not isEmpty then
    begin

      memLabRemark.Lines.Text :=    FieldByName('remark').asString

    end
    else
    begin

    end;
  end;
end;



procedure TJinryo_f.tcSrdateChange(Sender: TObject);
var
  Temp: string;
  varLength: Integer;
  varRichText: TRichEdit;
  dap: array [1 .. 100] of string;
  varRgTag: Integer;
  BStream: TStream;
  i: Integer;
  varChart: string;
begin
  //
  varChart := ma_chart;
  varRichText := edtRemark;
  varRichText.Clear;
  with Dm_f.SqlTemp13 do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select * from hxSRemark');
    SQL.Add('Where sRchart= :sRchart  ');

    paramByName('srChart').asString := varChart;
    open;
    if not isEmpty then
    begin

      BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
      RTFInsertStream(varRichText, BStream);
      BStream.Free;

    end;
  end;

end;

procedure TJinryo_f.pgFavoriteChange(Sender: TObject);
var

  FormInit: TIniFile;
  Path: string;
begin

         btnAddPharm.Visible    := false;
         btnAddBigub.Visible    := false;
         btnAddMaterial.Visible := false;

  case pgFavorite.ActivePageIndex of
    0: //즐겨찾기
        LoadFavoriteSuga ;
    1: //묶음처방
      ;
    2: //기본처방 (수가, 약, 재료)
    begin
//         btnAddPharm.Visible    := true;
//         btnAddBigub.Visible    := true;
//         btnAddMaterial.Visible := true;

         LoadDrugInfo(-1);
    end;
    3:   //약처방
       btnAddPharm.Visible    := true;
    4:; //묶음처방 찾기

  end;

  Path := GetConfigDir + 'db.ini';
  FormInit := TIniFile.Create(Path);
  FormInit.WriteInteger('ETC', 'InputTxTabInfo', pgFavorite.ActivePageIndex);
//  varAlretTab := FormInit.ReadInteger('ETC', 'InputTxTabInfo', 1);
  FormInit.Free;


end;

procedure TJinryo_f.pnlCostClear(flag: Integer = 0);
var
  i: Integer;

  FormInit: TIniFile;
  Path: string;
begin

  Path := GetConfigDir + 'db.ini';
  FormInit := TIniFile.Create(Path);
  varAlretTab := FormInit.ReadInteger('ETC', 'AlretTabinfo', 0);
  FormInit.Free;

  // 수진자 초기값을 여기에 두었음.


  // gogekAlretFrame_fr1.fieldClear;
  // gogekAlretFrame_fr1.varChartNo := ''; //2012.5.12
  //
  // gogekAlretFrame_fr1.pcAlret.ActivePageIndex := varAlretTab;

  // grdRoot.Clear;
  // grdRoot.RowCount := 6;

  cbKwamok.itemindex := -1;
  ListBoxSang.Clear;
  // grdJx.Clear;
  // grdSangByung.Clear;

  // grdSangByung.RemoveRows(1, grdSangByung.RowCount-1);
  grdSangByung.RowCount := 10;

  grdJx2.RemoveRows(1, grdJx2.RowCount - 1);

  // grdJx2.RowCount := 100;

  chbYagan.Checked := false;
  // chbGongsang.Checked := False;

  // edtGongSang.Text:= '0';
  loadGongsang;

  // chkYongUa.Checked := False; //2011.7
  // chkIlban.Checked := false; //2012.4
  // chkFirst.Checked := false; //2012.4

  cbSanCode3.itemindex := 0;

  cbJong.itemindex     := -1;
  cbChoje.itemindex    := -1;
  chkJin.Checked       := false;
  wNumLabel1.Caption   := '0';
  chkJang.Checked      := false;

  chkPregnan.Checked   := false;

  numBonin.text        := '0';
  numJinchal.text      := '0';
  numMisugum.text      := '0';
  numchong.text        := '0';
  numChung.text        := '0';

  for i := 0 to grdCost.RowCount - 1 do
  begin
    grdCost.Cells[1, i] := '';
    grdCost.Cells[2, i] := '';
    grdCost.Cells[3, i] := '';
  end;


  // for i := 0 to grdDetailCost.RowCount - 1 do
  // begin
  // grdDetailCost.Cells[1, i] := '';
  // grdDetailCost.Cells[2, i] := '';
  // end;

  nJinchalRyo := 0;
  nDangaSilant := 0;
  nDangaSilantExtract := 0;
  nDangaSilantExtractBeforeJongGasan := 0;
  nSumTotal := 0;
  nSumBigubChong := 0;

  is_Wonwe := false;

  artTeeth := false; // 2012.7.1
  anotherTeeth := false; // 2012.7.1

  afterArtTeeth := false; // 2012.10.1

  implteeth := false;

  isClear := true;
  nMan := 0;

  Edit1.text := '';
  Edit7.text := '';
  Edit3.text := '';
  Edit4.text := '';
  edtSanjung.text := '';
  edtDoctorName.text := '';
  edtJinryoPid.text := '';

  edtHwakin.text := '';
  edtBontype.text := '';
  edtYujikum.text := '0';
  edtBoninGu.text := '';

  grdRX.RemoveRows(1, grdRX.RowCount - 1);;
  grdRX.RowCount := 5;

  memChungGuMemo.text := '';

  edtRemark.text := '';
  edtCC.text := '';
//  memo3.text := '';
  lblTreatRoom.Caption :=  '';

  edtMedHx.text := '';
  edtDr.text := '';
  edtPtWant.text := '';

  memReferList.text := '';
  lstReferList.Items.Clear;

  edtSimTime.text := '';
  edtKyul.text := '';
  cmbDoctor.itemindex := -1;
  wNumCt.text := '0';
  wNumYak.text := '0';
  // spSkinGroupBox3.Caption := '처치입력';
end;


// 달력관련 ==================================================================
// 공휴일 표시하기

procedure TJinryo_f.GetHoliday;
var
  i: Integer;
  varYear, VarMonth, Varday: Variant;
begin

  with Dm_f.sqlJinryo do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from gonghyu where gh_day>=:gh_day1 and gh_day<=:gh_day2');
    paramByName('gh_day1').asString := FormatDateTime('yyyy-mm-01', dmain.Date);
    paramByName('gh_day2').asString := FormatDateTime('YYYY-MM-DD',
      IncDay(StrToDate(FormatDateTime('yyyy-mm-01', incMonth(dmain.Date,
      1))), -1));
    open;
    First;
    if not isEmpty then
    begin
      while not eof do
      begin

        with dmain.Events.Add do
        begin
          varYear := FormatDateTime('yyyy', fieldByname('gh_day').AsDateTime);
          VarMonth := FormatDateTime('MM', fieldByname('gh_day').AsDateTime);
          Varday := FormatDateTime('DD', fieldByname('gh_day').AsDateTime);
          Date := EncodeDate(varYear, VarMonth, Varday);
          // Hint := '*****';
          FontColor  := ClBlue;
          Color      := ClRed;
          Shape      := evsCircle;
        end;
        next;

      end;
    end;

  end;
end;

procedure TJinryo_f.CalendarChangeSave;
var
  varYear, VarMonth, Varday, varCaption: string;
  Ini: TIniFile;
  Path: string;
begin
  // 자동저장:하기현(20040608)
  // ==============================================================================

  VarMonth    := formatFloat('00', dmain.Month);
  varYear     := formatFloat('0000', dmain.Year);
  Varday      := formatFloat('00', dmain.Day);
  varCaption  := varYear + '-' + VarMonth + '-' + Varday;

  Memo1.Lines.Add(varCaption);
  // memo2.Lines.Add(intToStr(ComboBox1.Items.Count)); //dmainchange로 옮김
  { Path := ExtractFilePath(ParamStr(0)) + 'DChartPlus.ini';
    Ini := TIniFile.Create(Path);
    if Ini.ReadString('SetIDCMS', 'Saving', '1') = '0' then begin //자동저장
    if varChartno <> '' then begin
    if StrToInt(Memo2.Lines[Memo2.Lines.Count - 1]) <= 0 then begin
    //  ShowMessage('상병이 지정되지 않았습니다');
    end
    else begin
    if nclick = 0 then begin
    JinryobiSave(Memo1.Lines[Memo1.Lines.Count - 2]);
    InsertJin_s(StrToDate(Memo1.Lines[Memo1.Lines.Count - 2]),
    varChartno, grdJx2);
    end;
    nclick := 0;
    // showmessage('저장되었습니다');
    end;

    end;
    end;

    Ini.Free; }
end;

// ============================================================================

// 진료내역창 관련 ===========================================================

procedure TJinryo_f.ChangeGridValue(
  aGrid: TAdvStringGrid;
  ARow: Integer;
  NewValue: double;
  gubGu : string;
  ACol: Integer);
var
  i: Integer;

  suKey: string;
  nDanga: Integer;
  nQty: double;
  nilsu: Integer;
  nDanQty: Integer;
  soaGasan: string;
  simGasan: string;
  nKumek: Integer;
begin
  i := ARow;


  if ACol = 7 then   //급여구분
  begin
//    if       (NewValue = '0')  // 급여
//          or (NewValue = '2')  // 비급여
//          or (NewValue = '9')  // 100by80
    if       (gubGu = '0')  // 급여
          or (gubGu = '2')  // 비급여
          or (gubGu = '9')  // 100by80
          or (gubGu = 'B')  // 100by90
    then
    begin


       jinryo_f.grdJx2.ints[2, i] :=
            getSugaGeum(aGrid.Cells[19, i], // varCode:string;
            FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),           // jinday:string;
            gubGu);// NewValue);//round(NewValue));                                        // kind:string;

    end
    else
    begin
            aGrid.cells[ACol, i] := '0';//round(NewValue);
    end;

  end;


//  if ACol in [2, 4, 5] then // 단가, 일수, 횟수 에 소수 넣지 않기
//  begin
//
//        aGrid.ints[ACol, i] := round(NewValue);
//
//  end;

  suKey   := aGrid.Cells[19, i];
  nDanga  := aGrid.ints[2, i];


  nQty    := aGrid.floats[3, i];  // 용량
  nilsu   := aGrid.ints[4, i];    // 총투
  nDanQty := aGrid.ints[5, i];    // 일수



  soaGasan := aGrid.Cells[12, i];
  simGasan := aGrid.Cells[13, i];

  aSugu3   := aGrid.Cells[11, i];

  nKumek := CalcKumak(suKey, // :string;
        nDanga, // :integer ;
        nQty, // :integer ;
        nilsu, // :integer ;
        nDanQty, // :integer ;
        FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
        soaGasan, // : string;
        simGasan, // : string;
        true,
        aGrid.Cells[25, i], //예외코드
        jinryo_f.LblAge.Caption);

  aGrid.ints[6, i] := nKumek;

  JinryoBiSet;

  varValueChanged := true;

  aGrid.refresh; //ToDo : 급여 비급여 변경시 그리드 색을 바꿔야 하니까.

  exit;
end;

function TJinryo_f.OrderChk(sP1, sP2, sP3, sP4: string): Integer;
var
  i: Integer;
begin
  // 이게 중요하다. 오더는 아이템인덱스다..
  // 먼저 부위를 봐서 같은 부위가 있으면 그 Index를 가지고 오고
  // 하나도 없으면 Index+1, 만일 오더가 하나도 없으면 -1을 리턴한다
  Result := -1;
  for i := 1 to grdSangByung.RowCount - 1 do
  begin

    if sP1 + sP2 + sP3 + sP4 = grdSangByung.Cells[1, i] + grdSangByung.Cells
      [2, i] + grdSangByung.Cells[3, i] + grdSangByung.Cells[4, i] then
    begin
      Result := grdSangByung.ints[0, i] - 1; // 인덱스
      exit;
    end
    else if grdSangByung.Cells[0, i] <> '' then
    begin
      Result := grdSangByung.ints[0, i]; // 인덱스 +1
    end;
  end;
end;


// 내역창에서 수가 삭제

procedure TJinryo_f.DeleteJin(ARow: Integer);
var
  i, dRow: Integer;
begin


  // for i := 1 to grdJx2.RowCount - 1  do
  // begin
  // if ((grdJx2.ints[14, i] = 0 + 1)
  // and
  // (grdJx2.ints[15, i] = ARow)) then
  // begin
  // dRow := i;
  // end
  // else
  // if ((grdJx2.ints[14, i] = 0
  // + 1)
  // and (grdJx2.ints[15, i] > ARow)) then
  // begin
  // grdJx2.ints[15, i] := grdJx2.ints[15, i] - 1;
  // end;
  // end;

  dRow := ARow;

//ToDO : 완료를 누르기 전에는 지우지말자.
  DeleteJinryo_s(grdJx2.Cells[18, dRow]);  //Jins_key

  grdJx2.RemoveRows(dRow, 1);

  JinryoBiSet;

end;

procedure TJinryo_f.DeleteJinryo_s(varJins_key: string);
var
  RisResult : TRisResult;

begin
 //진료내역을 삭제시
 //1. orderInf삭제
 //2. RIS삭제
 //3. 협진 진료내역 삭제 RP_requestUseJinsKey
 //4. 처방내역 삭제  ==>  WonweSave에서 처리.

 try

      with Dm_f.sqlwork do
      begin
        close;
        SQL.Clear;
        SQL.Add('delete from jinryo_s where jins_key=:jins_key');
        paramByName('jins_key').asString := varJins_key;
        execsql;
      end;


//     {$IFNDEF DEBUG}
     //MediroPack
     //진료를 삭제하면 orderInf 내역도 삭제하자.

      if  (configvalue.varRISSYNC = '1') and  ( configvalue.varImageUse='1') then
      begin

        with dm_f.sqlBit do
       begin
              Close;
              Sql.Clear;
              Sql.text := 'use mediroPack' ;
              execsql;

             //todo : taken=1 이면 지우지 말자.
             //todo : 그러면, 다시 저장해서 나오는 오더는 어떻게 처리될까?
             //todo : 2019-11-25 지운데이터는 그냥 지우지 말고 isDelete =1 로 만들자.
             //todo : 2019-11-25 촬영한 CT를 지우면 연동은 ? 그냥 원래대로 taken=1 이면 지우지 말자.
             close;
             sql.Clear;
             sql.text := '  delete from orderinf        '+#10#13+
                         '  where  orderID = :orderID  and taken = ''0''  ';
             paramByName('orderID').AsString :=   varJins_key ;
             execsql;


//             close;
//             sql.Clear;
//             sql.text := '  update orderinf set       '+#10#13+
//                         '  isDelete =''1''           '+#10#13+
//                         '  where  orderID = :orderID     ';
//             paramByName('orderID').AsString :=   varJins_key ;
//             execsql;

//             close;
//             sql.Clear;
//             sql.text := '  delete from orderinf          '+#10#13+
//                         '  where  orderID = :orderID     ';
//             paramByName('orderID').AsString    :=   varJins_key ;
//             execsql;

       end;

     end;

        if ma_rp_RequestPK > 0 then
        begin
          // Delete Referel PAD
          try



              with Dm_f.sqlwork do
              begin
                     SQL.Add('delete from RP_requestUseJinsKey');
                     sql.add('where  requestpk =:requestpk  and  jins_Key =:jins_Key ');
                     paramByName('requestpk').AsInteger := ma_rp_RequestPK;
                     paramByName('jins_Key').AsString   := varJins_key;

                     execsql;
              end;



          except

            on E: Exception do
            begin
              Showmessage(E.Message + '[DeleteReferalPad_Jinryo fail.]');
            end;

          end;
        end;




    //RIS에서도 삭제하자.

         if  configvalue.varImageDBSaveMode ='1' then  //save PACS
         begin
//         if ( AGrid.Cells[0,ARow]= 'GR')  //is Group?
//         and  ( AGrid.Cells[8,ARow] <>'') then //modality

             risResult :=   RisSave( 4,
                   memRis,
                   chkAsXML,
                   now,                   //nowTime
                   '',
                   '',
                   '',   //patAdminKind
                    memLabRemark.text,//       aReasonForStudy   : string='';
                    edtCc.Text,//       aClinicalInfo     : string='';
                   varJins_key,//AGrid.Cells[18,ARow],  //jins_Key
                   '',//AGrid.Cells[9,ARow],   //user_key
                   '',//AGrid.Cells[1,ARow],   //GroupName
                   ma_jubsu_id,                   //seqNo
                   true);  //isCancel = True ==> CA  False ===> NW :Default

       //      if risResult.aResult = true  then
       //      showmessage( risResult.aMsgIn);
         end;



//    {$ENDIF DEBUG}


 except
        on E: Exception do
        begin
          Showmessage(E.Message + '[진료삭제오류]');
        end;

 end;


end;

procedure TJinryo_f.grdJx2ButtonClick(Sender: TObject; ACol, ARow: Integer);
var
    url : string;
    sugaCode : string;
begin
         sugaCode :=  grdJx2.Cells[19, Arow];
         url := 'https://www.druginfo.co.kr/search2/search.aspx?q='+  sugaCode    ;


        case acol of
          1, 26 :
          begin
           if cbDrugSelf.Checked then
           begin

                    pharmInfo_f:= TpharmInfo_f.create(nil);
                    pharmInfo_f.LoadDrugInfoFromAPI(0, sugaCode,'','','');
                    pharmInfo_f.Show;

           end
              else
              begin
                  ShellExecute(GetDesktopWindow, 'open', Pchar('IEXPLORE.EXE'),
                  Pchar(url), nil, SW_SHOWNORMAL);

              end;

          end;
        end;
end;


//procedure TJinryo_f.LoadDrugInfoFromAPI(
//       mdsCd,                  //약품코드
//       itmNm,                  //품목명
//       mnfEntpNm: string;      //제조업체명
//       pageno: string='1';     //페이지 번호
//       numOfRows: string='10');
//var
//    nFieldCnt : integer;
//    i, j:integer;
// begin
//
//    // i := 0;
//    // RESTResponseDataSetAdapter1 FieldDefs 에서 ftString 의 길이를 키워줘라.  2000
//
//     try
//      dmPharmInfoRest_f := TdmPharmInfoRest_f.Create(nil);
//
//      dmPharmInfoRest_f.SearchPharm(
//         mdsCd,                  //약품코드
//         itmNm,                  //품목명
//         mnfEntpNm,      //제조업체명
//         pageno,    //페이지 번호
//         numOfRows);
//
//
//        nFieldCnt := dmPharmInfoRest_f.FDMemTable1.FieldCount;
//
//        pharmInfo_f:= TpharmInfo_f.create(nil);
//        pharmInfo_f.Show;
//
//        dmPharmInfoRest_f.fdmemtable1.first;
//        i:= 1;
//        pharmInfo_f.grdPharm.Rowcount :=   dmPharmInfoRest_f.fdmemtable1.recordCount + 1;
//        pharmInfo_f.grdPharm.ColCount :=   nFieldCnt + 1;
//
//          while not dmPharmInfoRest_f.fdmemtable1.eof do
//          begin
//                 for j := 0 to nFieldCnt-1 do
//                 begin
//
//                     pharmInfo_f.grdPharm.Cells[j+1, i] := dmPharmInfoRest_f.fdmemtable1.fields[j].AsString;
//                 //  aName := dmPharmInfoRest_f.fdmemtable1.fieldbyname('resultCode').asString;
//                 end;
//                 i := i + 1;
//            dmPharmInfoRest_f.fdmemtable1.next;
//          end;
//
//          pharmInfo_f.grdPharm.autonumbercol(0);
//
//
//    finally
//        dmPharmInfoRest_f.Free;
//    end;
//end;

procedure TJinryo_f.grdJx2ClickCell(Sender: TObject; ARow, ACol: Integer);
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

procedure TJinryo_f.grdJx2DblClickCell(Sender: TObject; ARow, ACol: Integer);
var
  g, i: Integer;
  grCap, grCode, grCode1 : string;
begin
  //컬럼0을 클릭하면 삭제한다.
  if ARow > 0 then

    case ACol of
      0:
        begin

//          if ((grdJx2.RowCount > 1) and (ARow >= 1)) then
//          begin
//
//            if MessageDlg('<' + grdJx2.Cells[1, ARow] + '>' + '내역을 삭제하시겠습니까?',
//              mtInformation, [mbYes, mbNo], 0) = mrYes then
//            begin
//
//              if grdJx2.Cells[0, ARow] = 'GR' then
//              begin
//                // 그룹삭제
//                g := ARow;
//                DeleteJin(ARow);
//                while g <= grdJx2.RowCount - 1 do
//                begin
//                  if grdJx2.Cells[0, g] = 'GR' then
//                  begin
//                    Break;
//                  end
//                  else
//                  begin
//                    DeleteJin(g);
//                  end;
//                end;
//              end
//              else
//              begin
//                DeleteJin(ARow);
//              end;
//
//              varValueChanged := true;
//            end;
//
//            JinryoBiSet;
//
//
//          end;


//              for i:= 0 to grdJx2.selectedRowcount -1 do
//                begin
//
//                     //  grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';
//
//                        if grdJx2.Cells[0, grdJx2.SelectedRow[i]] = 'GR' then
//                        begin
//                          // 그룹삭제 Tag
//                          grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';
//
//                          g := grdJx2.SelectedRow[i] +1;
//                        //  DeleteJin(ARow);
//
//                          while g <= grdJx2.RowCount - 1 do
//                          begin
//                             grCap :=  grdJx2.Cells[0, g];
//                            if grCap = 'GR' then
//                            begin
//                               Break;
//                            end
//                            else
//                            begin
//                               grdJx2.Cells[30, g] := 'D';
//                            end;
//
//                            g:= g+1;
//
//                          end;
//                        end
//                        else
//                        begin
//                            grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';
//                        end;
//
//
//
//
//
//                end;

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

                JinryoBiSet;




        end;
        3,4,5,7:
        begin

             //  grdJx2.Options:=  grdJx2.Options + [goEditing];

        end;
    end;
end;

procedure TJinryo_f.grdJx2EditingDone(Sender: TObject);
begin
// OnEditCellDone and OnEditingDone 차이점.아래 사이트 참조.
//What is the difference between the TDBAdvGrid events OnEditCellDone and OnEditingDone?
//https://www.tmssoftware.com/site/forum/forum_posts.asp?TID=2624&title=editcelldone-vs-editingdone

//OnEditingDone is triggered first.
//It is triggered when the inplace edit control looses focus.
//OnEditCellDone is triggered when the cell editing is completely finished,
// i.e. inplace editor is no longer visible and
// cell content is updated with the text entered in the inplace edit control.

   SetCalcurateValue(grdJx2.Col, grdJx2.Row);
end;

procedure TJinryo_f.grdJx2Exit(Sender: TObject);
begin

  //   SetCalcurateValue(grdJx2.Col, grdJx2.Row);

end;

procedure TJinryo_f.grdJx2GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  // TAlignment = (taLeftJustify, taRightJustify, taCenter);

  if ARow = 0 then
  begin
    HAlign := TAlignment.taCenter;
  end
  else
  begin
    case ACol of
      2,6:
        begin
          HAlign := TAlignment.taRightJustify;
        end;

      0, 3, 4, 5, 7.. 21:
        begin
          HAlign := TAlignment.taCenter;
        end;

    else
      begin
        HAlign := taLeftJustify;
      end;
    end;
  end;
end;

procedure TJinryo_f.grdJx2GetCellBorder(Sender: TObject; ARow, ACol: Integer;
  APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];//, cbBottom];// then//, cbBottom];
             // begin
                   APen.Width := 2;
                   APen.Color := $00f2e6e2;//clSilver; //clGray;

          //    end
//              else
//                if   Borders = [cbRight] then//;//, cbBottom];
//                begin
//               APen.Width := 1;
//               APen.Color := $00FDB88D;//$00f2e6e2;//clSilver; //clGray;
//               end;
          end;

end;

procedure TJinryo_f.grdJx2GetCellBorderProp(Sender: TObject; ARow,
  ACol: Integer; LeftPen, TopPen, RightPen, BottomPen: TPen);
begin
//          if (aCol > 0) and (aRow > 0) then
//          begin
//           //    Borders := [cbTop];
//           //    APen.Width := 2;
//               TopPen.Color := clGray;   //$00f2e6e2;//clSilver; //
//          end;
//
end;

procedure TJinryo_f.grdJx2GetCellColor(Sender: TObject; ARow, ACol: Integer;
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



      if aCol = 0  then
      begin

            ABrush.Color :=  $00FB9B60;  ;//clBtnFace;
            AFont.Color := ClWhite;
      end;


      // ToDo: 맨 밑으로 내려야 한다..
      if  ( aCol > 0 ) and (grdJx2.Cells[0, ARow] = 'GR')  then //Group 0
      begin

           ABrush.Color :=  $00B6FAB4;
      end;


end;

procedure TJinryo_f.grdJx2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
{
0 구분
1 명칭
2 단가
3 1회투여량
4 횟수
5 일수
6 금액
7 급여
8 Modality
9 user_key
}
    case ACol of
   2,  4, 5, 6, 7:  // 일수, 횟수, 급여
      begin

       FloatFormat := '%.0n';

      end;

      {
10 su_gu1
11 su_gu3
12 su_soa
13 su_yagan
14 iOrder
15 line
16 투약일수
17 확인코드
18 jin_key
19 su_key
20 su_Kor_Name
21 1/2
22 Jin_day
23 진료시간
24 su_eng_name
25 예외코드
26 Info
27 suSobulRu
}
   10, 11, 12,13,14,15, 16, 21,25,27, 29, 32:  //
      begin

       FloatFormat := '%d';

      end;
   18,19:
   begin
      FloatFormat := '%g';
    //   isFloat:= false;// FloatFormat := '%.0n';
   end;

  end;
  { sMsg:String;

  sMsg := '';
  sMsg := sMsg + #13#10 + Format('%%d = %d', [-12345]);
  sMsg := sMsg + #13#10 + Format('%%e = %e', [12345.6789]);
  sMsg := sMsg + #13#10 + Format('%%f = %f', [123.456789]);
  sMsg := sMsg + #13#10 + Format('%%g = %g', [12.3456789]);
  sMsg := sMsg + #13#10 + Format('%%n = %n', [12345.6789]);
  sMsg := sMsg + #13#10 + Format('%%m = %m', [12345.6789]);
  sMsg := sMsg + #13#10 + Format('%%p = %p', [addr(sMsg)]);
  sMsg := sMsg + #13#10 + Format('%%s = %s', ['FormatTest']);
  sMsg := sMsg + #13#10 + Format('%%u = %u', [12345]);
  sMsg := sMsg + #13#10 + Format('%%x = %x', [12345]);

▶ 결과

  d = 정수
  e = 지수표시
  f = 소수점 두번째 자리 이후 반올림
  g = 입력된 대로 표시
  m = 통화
  n = 수치 쉼표 표시(소수점 두번째 자리 이후 반올림)
  p = 포인터
  s = 문자열
  u = 부호없는 정수
  x = 16진수

%d = -12345
%e = 1.23456789000000E+004
%f = 123.46
%g = 12.3456789
%n = 12,345.68
%m = \12,346
%p = 0012F5B4
%s = FormatTest
%u = 12345
%x = 3039
}




end;

procedure TJinryo_f.grdJx2GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  case ACol of
    2, 6:  //단가, 금액
      begin

        AStyle := ssFinancial;

      end;
  end;
end;

procedure TJinryo_f.grdJx2KeyDown(Sender: TObject; var Key: Word;
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

                   JinryoBiSet;
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
                          grCode :=   grdJx2.Cells[31,  grdJx2.SelectedRow[i]]; //GroupCode

                          while g <= grdJx2.RowCount - 1 do
                          begin
                             grCode1 :=   grdJx2.Cells[31,  g]; //GroupCode

                             grCap :=  grdJx2.Cells[0, g];
                           // if grCap = 'GR' then
                            if grCode <> grCode1 then
                            begin
                               Break;
                            end
                            else
                            begin
                               grdJx2.Cells[30, g] := 'D';  //Delete Tag 'D'
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
                             grCode1 :=   grdJx2.Cells[31,  g];  //GroupCode
                           // if grCap = 'GR' then
                            if grCode1 <> grCode then
                            begin
                               Break;
                            end
                            else
                            begin
                               grdJx2.Cells[30, g] := '';   //Delete Tag 'D'
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

                JinryoBiSet;





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

procedure TJinryo_f.grdJx2KeyPress(Sender: TObject; var Key: Char);
var
  i, j, initRow: Integer;
  NewValue: double;
  // NewValue: integer;
begin
//       if key=#13 then
//       begin
//
//
//         SetCalcurateValue(grdJx2.Col, grdJx2.Row);
//
//       end;
end;



procedure TJinryo_f.SetCalcurateValue(aCol, aRow : integer);
var
  i, j, initRow: Integer;
  rValue  : integer;
  NewValue: double;
  gubGu   : string;
  // NewValue: integer;
begin
             //그룹의 숫자를 바꾸면 아래 나열된 수가들의 수량을 한번에 바꾸자.
            if ((grdJx2.RowCount > 1) and (aRow > 0)) then
            begin
              if grdJx2.Cells[0, aRow] = 'GR' then
              begin
                // if ((grdJx.Col = 2) or (grdJx.Col = 3)) then
                if aCol in [3] then // 3: 1회량 4: 일수 5: 횟수
                  initCellValue := grdJx2.floats[aCol, aRow]
                else
                  initCellValue := 1;
              end
              else
              begin
                initCellValue := 1;
              end;

            end;


            if (aCol in [1, 2]) then
            begin
               exit;
            end;

            case aCol of
             7:
             begin
                  if grdJx2.Cells[0, aRow] = 'GR' then
                  begin
                           grdJx2.cells[aCol,  aRow] := '';
                           exit;

                  end
                  else
                  begin
    //
                    initRow := aRow;
                    gubGu    := grdJx2.cells[aCol, initRow];
                    newValue := grdJx2.floats[aCol, initRow];
    //
    //
                     //금액이 바뀌나?
                     ChangeGridValue(grdJx2, initRow, NewValue, gubGu , aCol);
                  end;

             end;

             2, 3, 4, 5 : // 단가, 수량, 일수, 횟수,  급여구분(0:급여 2: 비급여)
                begin

                  if grdJx2.Cells[0, aRow] = 'GR' then
                  begin

                       if aCol in [7] then
                       begin
                           grdJx2.cells[aCol,  aRow] := '';
                           exit;
                       end;

                    initRow := aRow;
                    NewValue := grdJx2.floats[aCol, initRow] / initCellValue;
                    gubGu    := grdJx2.cells[7, initRow];


                    for i := initRow + 1 to grdJx2.RowCount - 1 do
                    begin
                      if ((i > initRow) and (grdJx2.Cells[0, i] = 'GR')) then
                        exit;

                      grdJx2.floats[aCol, i] :=
                    //    Round2(grdJx2.floats[aCol, i] * NewValue, -1);
                         Round2( NewValue, -1);


                      gubGu    := grdJx2.cells[7, i];

                      ChangeGridValue(grdJx2, i,       grdJx2.floats[aCol, i],gubGu, aCol);
                  //  ChangeGridValue(grdJx2, initRow, NewValue,              gubGu , aCol);

                    end;
                  end
                  else
                  begin
    //
                    initRow := aRow;
                    NewValue := grdJx2.floats[aCol, initRow];
    //
    //
                    gubGu    := grdJx2.cells[7, initRow];
                     //금액이 바뀌나?
                     ChangeGridValue(grdJx2, initRow, NewValue,  gubGu, aCol);
                  end;

                end;
            end;
 end;

procedure TJinryo_f.grdJx2RowChanging(Sender: TObject; OldRow, NewRow: Integer;
  var Allow: Boolean);
var
  modified:boolean;
begin
     modified := grdJx2.Modified; // grdJx2.RowModified[oldRow];

     if modified = true then
          SetCalcurateValue(grdJx2.Col, OldRow);//grdJx2.Row);


     if   grdJx2.Cells[30,  NewRow] = 'D'  then
            isJx2Delete := true
          else
            isJx2Delete := false;
end;

procedure TJinryo_f.cbKwamokCloseUp(Sender: TObject);
begin
  if cbKwamok.itemindex >= 0 then
    grdSangByung.Cells[9, 1] := inttostr(cbKwamok.itemindex);
  varValueChanged := true;
end;

procedure TJinryo_f.ComboBoxEAKeyPress(Sender: TObject; var Key: Char);
begin
  // if Key = #13 then
  // begin
  // if ComboboxEa.Text <> '취소' then
  // begin
  // grdJx.Cells[grdJx.Extents.MouseToCol(ComBoBoxEA.Left),
  // grdJx.Extents.MouseToRow(ComboBoxEA.Top -
  // grdJx.Top)] := ComboBoxEA.Text;
  // ChangeGridValue(grdJx,
  // grdJx.Extents.MouseToRow(ComboBoxEA.Top -
  // grdJx.Top),
  // grdJx.Cells[grdJx.Extents.MouseToCol(ComBoBoxEA.Left),
  // grdJx.Extents.MouseToRow(ComboBoxEA.Top -
  // grdJx.Top)].AsFloat,
  // grdJx.Extents.MouseToCol(ComBoBoxEA.Left));
  // end;
  // ComboBoxEA.Visible := False;
  // end
  // else
  // if Key = #27 then
  // begin
  // ComboBoxEA.Visible := False;
  // end;
end;







// 상병 체크

function TJinryo_f.sangchk(sCode: string): Integer;
var
  i, nChk: Integer;
begin
  nChk := 0;
  for i := 0 to ListBoxSang.Items.Count - 1 do
  begin
    if ListBoxSang.Items.Strings[i] = sCode then
    begin
      nChk := nChk + 1;
    end;
  end;
  Result := nChk;
end;

// 자주쓰는 상병 ..............................................................

procedure TJinryo_f.K040Click(Sender: TObject);
var
  sCode, sname, FCode, Code3: string;
  YRow, Strlen: Integer;
  Ateeth: TTeeth;
begin

  sCode := trim(copy((Sender as TMenuItem).Caption, 1, 7));
  sname := trim(copy((Sender as TMenuItem).Caption, 8, 100));

  Strlen := Length(sCode);

  FCode := trim(copy((Sender as TMenuItem).Caption, 1, 4));
  if (FCode = 'F003') or (FCode = 'V182') or (FCode = 'V151') or (FCode = 'V193')
  then
  begin
    edtSanjung.text := FCode;

    JinryoBiSet;

    exit;
  end;

  // FCode := Copy((Sender as TMenuItem).Name, 1, 5);
  // Code3 := Copy((Sender as TMenuItem).Name, 1, 3);
  // if (fcode = 'S0250') or (fcode = 'S0251') then begin
  // sCode := Copy((Sender as TMenuItem).Name, 1, 3) + '.' + Copy((Sender as
  // TMenuItem).Name, 4, 2);
  // sName := Trim(Copy((Sender as TMenuItem).Caption, 7, 100));
  // end
  // else if (code3 = 'Q35') or (code3 = 'R58') then begin
  // sCode := Copy((Sender as TMenuItem).Name, 1, 3);
  // sName := Trim(Copy((Sender as TMenuItem).Caption, 4, 100));
  // end
  // else begin
  // sCode := Copy((Sender as TMenuItem).Name, 1, 3) + '.' + Copy((Sender as
  // TMenuItem).Name, 4, 1);
  // sName := Trim(Copy((Sender as TMenuItem).Caption, 6, 100));
  // end;

  if sCode = 'Q75.4' then
  begin
    edtSanjung.text := 'V182';
  end;
  if sCode = 'Q75.1' then
  begin
    edtSanjung.text := 'V151';
  end;
  if sCode = 'C03.1' then
  begin
    edtSanjung.text := 'V193';
  end;
  if sCode = 'G21.8' then
  begin
    edtSanjung.text := 'F003';
  end;

  JinryoBiSet;

  // ATeeth := TeethCnt2(pnlTeeth);
  if cbChoje.itemindex <> 4 then
  begin
    if Ateeth.Cnt <= 0 then
    begin
      Showmessage('치아부위를 먼저 선택하십시오');
      exit;
    end;
  end;

  // 상병 하나만 입력됨
  ListBoxSang.Clear;
  ListBoxSang.Items.Add(sCode);

  if 0 < 0 then
  begin

    grdSangByung.Cells[0, 0] := '1';
  end;
  if Ateeth.Cnt > 0 then
  begin
    grdSangByung.Cells[2, 0] := Ateeth.sP1;
    grdSangByung.Cells[3, 0] := Ateeth.sP2;
    grdSangByung.Cells[4, 0] := Ateeth.sP3;
    grdSangByung.Cells[5, 0] := Ateeth.sP4;
  end;
  grdSangByung.Cells[6, 0] := sCode;
  grdSangByung.Cells[10, 0] := sname; // + '(' + sCode    +    ')';

  varValueChanged := true;

  // insertsangbyung( sCode , sName ,  '','0','0','','');
end;





// 응급야간 체크시 .............................................................

procedure TJinryo_f.chbYaganClick(Sender: TObject);
begin
  JinryoBiSet;
end;

procedure TJinryo_f.CheckBox1Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked = true then
  begin
   // grdJx2.Options := grdJx2.Options - [goEditing];
    btnCopySelection.Visible := true;
  end
  else
  begin
   // grdJx2.Options := grdJx2.Options + [goEditing];
    btnCopySelection.Visible := false;
  end;

end;

// 장애인가산 클릭  ...........................................................

procedure TJinryo_f.chkJangClick(Sender: TObject);
begin
  if LblAge.Caption = '' then
    LblAge.Caption := '20';

  JinryoBiSet;

end;
// 진찰료산정 클릭

procedure TJinryo_f.chkJinClick(Sender: TObject);
begin
  if LblAge.Caption = '' then
    LblAge.Caption := '20';

  JinryoBiSet;
end;

// 수납버튼   .................................................................

procedure TJinryo_f.btnSugaSearchClick(Sender: TObject);
begin
//    edtSearchSugaCode.text:='';
//    edtSearchSuga.text:='';
//    edtSearchSugaName.text:='';
    sugaFind(radioGroup1.itemIndex);
end;

procedure TJinryo_f.btnSunapClick(Sender: TObject);
begin

  // if cbRestrict.Checked=true then
  // begin
  // showmessage( '급여제한으로 저장됩니다.');
  // end;
  // sunapClick;

end;

procedure TJinryo_f.btnTxInputEditClick(Sender: TObject);
var
  varPath, varParam, varParam1: string;
begin
  varPath := extractFilePath(paramStr(0)) + 'sugaEdit.exe';

  case pgFavorite.ActivePageIndex of
    0: //즐겨찾기
       btnTxInputEdit.Hint := '즐겨찾기는 묶음코드나 기본처방코드의'
                         +#10+  '사용빈도에 따라 자동으로 입력됩니다.'
                         ;
    1,2,3: //묶음처방
       ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), nil, nil,  SW_SHOWNORMAL);

//    2: //기본처방 (수가, 약, 재료)
//      ;// btnTxInputEdit.Hint := '기본처방 편집';
//    3: //약처방
//      ;//btnTxInputEdit.Hint := '약처방 편집';
//    4:  //묶음처방 찾기
//     ;//  btnTxInputEdit.Hint := '묶음처방 찾기';
  end;







end;

procedure TJinryo_f.btnTxInputEditMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

  case pgFavorite.ActivePageIndex of
    0: //즐겨찾기
       btnTxInputEdit.Hint := '즐겨찾기는 묶음코드나 기본처방코드의'
                         +#10+  '사용빈도에 따라 자동으로 입력됩니다.'
                         +#10+  '첫번째 컬럼을 클릭후 아래위로 이동시켜'
                         +#10+  '순서를 변경 할 수 있습니다.';
    1: //묶음처방
       btnTxInputEdit.Hint := '묶음처방 추가/수정';
    2: //기본처방 (수가, 약, 재료)
       btnTxInputEdit.Hint := '기본처방 편집';
    3: //약처방
      btnTxInputEdit.Hint := '약처방 편집';
    4:  //묶음처방 찾기
       btnTxInputEdit.Hint := '묶음처방 찾기';
  end;



end;

procedure TJinryo_f.sunapClick;
begin

  // if ComboBox1.Items.Count <= 0 then
  // begin
  // if Application.MessageBox(PChar('진료기록이 없습니다. 그래도 수납을 하시겠습니까?'),
  // '알림', MB_YESNO) = IDYES then
  // begin
  // if not assigned(sunaponly_f) then
  // sunaponly_f := Tsunaponly_f.Create(application);
  //
  // sunaponly_f.Showmodal;
  // Exit;
  // end;
  //
  // end;
  //
  // if cbChoje.itemindex <> 4 then //산정무
  // if ComboBox1.Items.Count <= 0 then
  // begin
  // ShowMessage('상병이 지정되지 않았습니다');
  // Exit;
  // end;
  //
  // if varChartno = '' then
  // begin
  // Application.MessageBox('챠트번호가 없습니다.' + #10#13 +
  // '환자를 선택해 주십시오.', '알림');
  // ma_chart := '';
  // exit;
  // end;
  //
  // if varName = '' then
  // begin
  // Application.MessageBox('환자성명이 없습니다.' + #10#13 +
  // '환자를 선택해 주십시오.', '알림');
  // main_f.edtName.text := '';
  // exit;
  // end;
  //
  // if (cbChoje.itemindex = -1)
  // or (cbChoje.itemindex = 8)
  // or (cbChoje.itemindex = 12) then
  // begin
  // Application.MessageBox('초재진 구분이 없습니다.' + #10#13 +
  // '초재진을 구분해주십시오.', '알림');
  // cbChoje.itemindex := 1; //2010.9.8
  // cbChoje.SetFocus;
  // if LblAge.Caption = '' then
  // LblAge.Caption := '20';
  /// /          CalcSum(grdJx2);
  // CalcSum(jinryo_f.grdJx2, jinryo_f.grdCost,ma_chart, configvalue.varGubun,
  // FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),  jinryo_f.cbJong.itemindex, jinryo_f.lblAge.caption,
  // jinryo_f.chbYagan.checked,  jinryo_f.edit3.text );
  // CalcBonin3  ;
  // exit;
  // end;
  // if cbJong.itemindex = -1 then
  // begin
  // Application.MessageBox('환자종별 구분이 없습니다.' + #10#13 +
  // '환자종별을 구분해주십시오.', '알림');
  //
  // cbJong.itemindex := 0;
  // cbJong.SetFocus;
  // exit;
  // end;
  //
  // sunapXsave := 0;
  //
  // JinryobiSave(FormatDateTime('YYYY-MM-DD', dMain.Date)); //Jinryo_p저장
  // InsertJin_s(dMain.Date, varChartno, grdJx2); //내역저장
  //
  // //JinryoHistoryView; //진료history 다시 뿌려주고
  //
  // //edtDoctorName.Text := cmbDoctor.Text;
  // edtDoctorName.Text :=  cbDoc.ColumnItems[cbDoc.itemindex, 2];
  //
  // if not assigned(sunap_f) then
  // begin
  // sunap_f := Tsunap_f.Create(self);
  //
  // sunap_f.Showmodal;
  // end
  // else
  // begin
  // sunap_f.Showmodal;
  // end;
  //
  // JinryoHistoryView; //진료history 다시 뿌려주고    2011.11.22
  // setJinSO(varChartno,  FormatDateTime('YYYY-MM-DD',  dMain.Date)); //진료내역불러오기

end;

// 일자삭제 버튼   ............................................................

procedure TJinryo_f.btnDeleteDayClick(Sender: TObject);
var
   nJong, nchojae: Integer;

   doc_code, treatRoom : string;
begin

      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4]; //saID
      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];  //saTeam

  if MessageDlg('<' + varName + '>' + '님의 금일 처치내역을 삭제하시겠습니까?', mtInformation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    with Dm_f.sqlJinryo do
    begin
      close;
      SQL.Clear;
      SQL.Add(' delete     ' + '   from cMemo             ' +
        '  where Chart   =:Chart   ' + '    and Jin_day =:Jin_day  and team=:team');
      paramByName('chart').asString := varChartno;
      paramByName('jin_day').asString := FormatDateTime('YYYY-MM-DD',
        dmain.Date);
      paramByName('team').asString :=doc_code;
      execsql;

      memChungGuMemo.text := '';

      Edit3.text := '';
      Edit4.text := '';
      edtSanjung.text := '';
      edtBoninGu.text := ''; // 2007.7.1

      close;
      SQL.Clear;
      SQL.Add('Delete From Jinryo_s');
      SQL.Add('Where Chart=:Chart and');
      SQL.Add('Jin_Day=:Jin_day ');
      paramByName('Chart').asString := varChartno;
      paramByName('Jin_Day').asString := FormatDateTime('YYYY-MM-DD',
        dmain.Date);
      execsql;
      close;
      SQL.Clear;
      SQL.Add('Delete From Jinryo_o');
      SQL.Add('Where Chart=:Chart and');
      SQL.Add('Jin_Day=:Jin_day ');
      paramByName('Chart').asString := varChartno;
      paramByName('Jin_Day').asString := FormatDateTime('YYYY-MM-DD',
        dmain.Date);
      execsql;
      close;
      SQL.Clear;
      SQL.Add('Delete From Jinryo_p ');
      // Sql.Add('Where Chart=:Chart and jin_gu=''0'' and ');
      SQL.Add('Where Chart=:Chart and chojae<>''9'' and ');
      SQL.Add('Jin_Day=:Jin_day ');
      paramByName('Chart').asString := varChartno;
      paramByName('Jin_Day').asString := FormatDateTime('YYYY-MM-DD',
        dmain.Date);
      execsql;

      // 차팅내역도 같이 삭제한다. 구분자는 Code 가 I.Tx.
      close;
      SQL.Clear;
      SQL.Add('delete from ma_chart_s');
      SQL.Add(' where chart=:chart ');
      SQL.Add('and jin_day=:jin_day');
      SQL.Add('and code=:code');
      paramByName('chart').asString := varChartno;
      paramByName('jin_day').asString := FormatDateTime('YYYY-MM-DD',
        dmain.Date);
      paramByName('code').asString := 'I.Tx.';
      execsql;

      // 임플란트 내역도 같이 삭제한다.
      close;
      SQL.Clear;
      SQL.Add('delete from implant_info');
      SQL.Add(' where chart=:chart ');
      SQL.Add('and regdate=:jin_day');

      paramByName('chart').asString := varChartno;
      paramByName('jin_day').asString := FormatDateTime('YYYY-MM-DD',
        dmain.Date);

      execsql;


      // 미소천사의 경우 처방전 먼저 등록후 나중에 진료를 입력하는데, 잘못 입력한경우 [일자삭제]를
      // 하는경우가 많타고함..이런경우 처방전내역도 같이 삭제되어 곤란하다고 함
      { Close;
        Sql.Clear;
        Sql.Add('Delete From wonwe_s ');
        Sql.Add('Where ');
        Sql.Add('Jin_Day=:Jin_day and seqno in (select seqno from wonwe_p where Chart=:Chart and Jin_Day=:Jin_day)');
        paramByName('Chart').AsString := varChartno;
        paramByName('Jin_Day').AsString :=
        ForMatDateTime('YYYY-MM-DD',
        dMain.Date);
        ExecSql;
        BitBtn3.Hint := '';
        Close;
        Sql.Clear;
        Sql.Add('Delete From wonwe_p ');
        Sql.Add('Where Chart=:Chart and');
        Sql.Add('Jin_Day=:Jin_day ');
        paramByName('Chart').AsString := varChartno;
        paramByName('Jin_Day').AsString :=
        ForMatDateTime('YYYY-MM-DD',
        dMain.Date);
        ExecSql; }
      {
        Close;
        Sql.Clear;
        Sql.Add('Delete From jinryo_p3 ');
        Sql.Add('Where Chart=:Chart and');
        Sql.Add('Jin_Day=:Jin_day ');
        paramByName('Chart').AsString := varChartno;
        paramByName('Jin_Day').AsString := ForMatDateTime('YYYY-MM-DD',
        dMain.Date);
      }

      close;
      SQL.Add('delete from ma_sunap');
      SQL.Add('where chart=:chart and sday=:sday and jinryo_pid <> ''0'' ');
      paramByName('chart').asString := varChartno;
      paramByName('sday').asString := FormatDateTime('YYYY-MM-DD', dmain.Date);
      execsql;


      // close;
      // sql.add('delete from ma_sunap_bibo');
      // sql.add('where chart=:chart and sunapdate=:sunapdate');
      // parambyname('chart').asstring := varChartno;
      // parambyname('sunapdate').asstring :=
      // ForMatDateTime('YYYY-MM-DD', dMain.Date);
      // ExecSql;

    end;
    grdRX.RemoveRows(1, grdRX.RowCount - 1);;
    grdRX.RowCount := 5;

    nJong := cbJong.itemindex;
    nchojae := cbChoje.itemindex;
    pnlCostClear(1);
    cbJong.itemindex := nJong;
    cbChoje.itemindex := nchojae;

    // cmbdoctor.itemindex := strtoint(varTeam) - 1;
    cbDoc.itemindex := cbDoc.ComboItems.IndexOf(varteam).y;

    nMan := 0;

    grdJx2.RemoveRows(1, grdJx2.RowCount - 1); // .Clear;

    JinryoBiSet;

    Edit2.text := '일자삭제';

    JinryoHistoryView(varChartno); // 진료history 다시 뿌려주고
  end;

end;

procedure TJinryo_f.btnDrugFindClick(Sender: TObject);
begin

   LoadDrugInfo(RadioGroup2.itemindex);
//  with Dm_f.sqlwork do
//  begin
//    close;
//    SQL.Clear;
//    SQL.Add('select * from suga ');
//    // Sql.Add('where su_gu1 in (''2'',''4'')  and su_key like :su_key ');
//    // Sql.Add('where  su_key like :su_key ');
//
//    case RadioGroup2.itemindex of
//      0:
//        SQL.Add('where  su_key like :su_key ');
//      1:
//        SQL.Add('where  user_key like :su_key ');
//      2:
//        SQL.Add('where  su_kor_name like :su_key ');
//    end;
//
//    SQL.Add('order by su_kor_name');
//    paramByName('su_key').asString := '%' + edtSearchDrug.text + '%';
//    open;
//    // First;
//
//    grdDrug.RowCount := recordCount + 1;
//    i := 1;
//    while not eof do
//    begin
//
//      grdDrug.Cells[1, i] := fieldByname('su_key').asString;
//      grdDrug.Cells[2, i] := fieldByname('su_kor_name').asString;
//      grdDrug.Cells[3, i] := fieldByname('user_key').asString;
//
//      i := i + 1;
//      next;
//    end;
//  end;
end;

procedure TJinryo_f.LoadDrugInfo(nKind : integer);
begin
  with Dm_f.sqlwork do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from suga ');
    // Sql.Add('where su_gu1 in (''2'',''4'')  and su_key like :su_key ');
    // Sql.Add('where  su_key like :su_key ');

    case nKind of
      -1:
        begin
            SQL.Add('where  su_gu3  in (''09'', ''10'', ''11'', ''12'' ) ');

        end;
      0:
        begin
            SQL.Add('where  su_key like :su_key ');
            paramByName('su_key').asString := '%' + edtSearchDrug.text + '%';

        end;
      1:
        begin
            SQL.Add('where  user_key like :su_key ');
            paramByName('su_key').asString := '%' + edtSearchDrug.text + '%';

        end;
      2:
      begin
            SQL.Add('where  su_kor_name like :su_key ');
            paramByName('su_key').asString := '%' + edtSearchDrug.text + '%';

      end;
    end;

    SQL.Add('order by su_kor_name');
    open;
    // First;

    grdDrug.RowCount := recordCount + 1;
    i := 1;
    while not eof do
    begin

      grdDrug.Cells[1, i] := fieldByname('su_key').asString;
      grdDrug.Cells[2, i] := fieldByname('su_kor_name').asString;
      grdDrug.Cells[3, i] := fieldByname('user_key').asString;

      i := i + 1;
      next;
    end;
    grdDrug.AutoNumberCol(0);
  end;
end;


procedure TJinryo_f.btnEECPClick(Sender: TObject);
begin
end;

// 진료이력에서 더블클릭시  ..................................................

procedure TJinryo_f.grdNeyukClickCell(Sender: TObject; ARow, ACol: Integer);
var

  grdRect: Trect;
begin

  grdRect := grdNeyuk.CellRect(ACol, ARow);

  if (ARow = 0) and (ACol = 0) then
  begin

    gridColSelect(grdNeyuk, grdRect, clbInHx);
  end;

end;

procedure TJinryo_f.grdNeyukDblClick(Sender: TObject);
var
    aRow            : integer;
    TreatRoom , doc : string;
    nIO   : integer;  //입원, 외래 구분 0: 외래, 1: 숙박 2: 낮

     LockStatResult : TLockStatResult ;
     DoLock : boolean; //락을 걸어라.

     aJong : string;
     aChoje : string;
     aSanCode3 : string;
begin

//      isNeyukLoad := true;
//
//{  Jinryo_f.cbJong.ItemIndex
//   Jinryo_f.cbChoje.ItemIndex
//   Jinryo_f.cbSanCode3.ItemIndex
//   Jinryo_f.edtFirst.text
//   Jinryo_f.edtSanjung.text
// }
//{
//SQL.Add(' select jin_day, sunapak, bonin, team, doc_code,
//   jubsu_id, isInPat ,chojae, jongbeul, gub_gu, sanjungteakRye, tjung
// from jinryo_p ');
//}
//{0 No
//1진료일자
//2수납금액
//3상병
//4기타
//5진료내역
//6진료실
//7담당의
//8접수ID
//9종별
//10초재
//11국가검진
//12산정특례
//13특례코드
//14입원여부}

{
====New
0진료일자
21진료실
3담당의
4상병
5진료내역
6기타
7수납금액
8접수ID
9종별
10초재
11국가검진
12산정특례
13특례코드
14입원여부
}
//
//
//          aRow :=  grdNeyuk.Row;
//          ma_jubsu_ID :=  trim(grdneyuk.OriginalCells[grdneyuk.RealColIndex(8), arow]);
//
//          jinryo_f.dmain.Date :=
//                strtodate(grdneyuk.originalCells[grdneyuk.RealColIndex(1), arow]);
//
//       //   jinryo_f.lblChart.Caption := grdneyuk.OriginalCells[grdneyuk.RealColIndex(3), arow];
//          jinryo_f.lblJubsuID.caption := grdneyuk.OriginalCells[grdneyuk.RealColIndex(8), arow];
//
//
//          TreatRoom        := trim(grdneyuk.OriginalCells[6, arow]);
//
//          if TreatRoom  <>'' then   //TreatRoom
//          begin
//
//          //ToDo : 왜 진료실에서 대기를 클릭하면 진료실 정보가 사라지나?
//          Jinryo_f.cbTreatRoom.Update;
//
//          Jinryo_f.cbTreatRoom.ItemIndex :=
//                  Jinryo_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;
//
//          LoadDoclist( Jinryo_f.cbDoc, TreatRoom);
//         end
//          else
//          begin
//            Jinryo_f.cbTreatRoom.ItemIndex := 0;
//          end;
//
//
//
//
//
//{
//
//
//8접수ID
//9종별
//10초재
//11국가검진
//12산정특례
//13특례코드
//14입원여부}
//
//
//
//           doc := trim( grdneyuk.Cells[7, arow]);
//          if doc <> '' then   //Doc
//            Jinryo_f.cbdoc.ItemIndex :=
//                     Jinryo_f.cbDoc.ComboItems.IndexInColumnOf(1, Doc )   //ID
//          else
//            Jinryo_f.cbdoc.ItemIndex := 0;
//
//            nIO:= strtoint(grdneyuk.OriginalCells[grdneyuk.RealColIndex(14), arow]);
//
//          if nIO > 0 then
//            jinryo_f.btnOutHosp.Visible := true
//          else
//            jinryo_f.btnOutHosp.Visible := false;
//
//        //  Jinryo_f.FieldSetJin(ma_chart);
//
//
//
//
//
////          Jinryo_f.syncJa;
////          Jinryo_f.JinryoHistoryView( grdneyuk.OriginalCells[grdneyuk.RealColIndex(3), arow]);
//
//          jinryo_f.lblisInPat.caption := grdneyuk.OriginalCells[grdneyuk.RealColIndex(14), arow];
//
//          if checkInt(jinryo_f.lblisInPat.caption ) then
//              nIO := strToInt(jinryo_f.lblisInPat.caption )
//           else
//              nIO := 0;
//
//           jinryo_f.cbIO.ItemIndex := nIO;
//
//
//
////          if trim(Jinryo_f.edtSanjung.text) <> '' then
////          begin
////            //  Jinryo_f.cbSanjungTeakRye.Checked := false;
////              showmessage('산정특례대상자입니다. 진단명을 확인하세요.');
////          end;
////
//
//          if grdneyuk.OriginalCells[grdneyuk.RealColIndex(12), arow] ='1' then
//          begin
//                Jinryo_f.cbSanjungTeakRye.Checked:= true;
//          end
//          else
//          begin
//                Jinryo_f.cbSanjungTeakRye.Checked:= false;
//          end;
//
//
//
//          Jinryo_f.syncJa;
//
//
//          // ToDo: grdNeyuk에 내용 뿌리기 - grdNeyuk을 클릭하니 여기서는 하지 말아야 한다.
//         // Jinryo_f.JinryoHistoryView(ma_chart );
//          jinryo_f.cbIO.ItemIndex := nIO;
//
////          Jinryo_f.FieldSetJin(ma_chart,  grdneyuk.Cells[1, arow]);
//
//
//
//
//
////          Jinryo_f.rpPk := strtoint( grdneyuk.originalCells[grdneyuk.RealColIndex(55), arow]) ;
//
//          jinryo_f.lblJubsuID.caption :=  ma_jubsu_ID;
//
//          jinryo_f.edtBontype.text :=  ma_Budam;
//
////          Jinryo_f.LoadJinryo_S(ma_chart);
//
//          jinryo_f.makeTodayTab;
//          jinryo_f.LoadReferList(Jinryo_f. rpPk );
//
//          aJong     := grdneyuk.Cells[9, arow];
//          aChoje    := grdneyuk.Cells[10, arow];
//          aSanCode3 :=grdneyuk.Cells[11, arow];
//
//          ma_jongbeul :=  inttoStr( strtoIntDef(aJong,0));
//          ma_choje    :=  strtoIntDef(aChoje,0);
//
//          Jinryo_f.cbJong.ItemIndex       := strtointDef(aJong, 1)-1 ;  //jongbyul
//
//          Jinryo_f.cbChoje.ItemIndex      := strtointDef(aChoje, 1)-1 ;;  //choje
//          Jinryo_f.cbSanCode3.ItemIndex   := strtointDef(aSancode3, 0);  //health
////          Jinryo_f.edtFirst.text          := grdneyuk.OriginalCells[grdneyuk.RealColIndex(21), arow]; //first_day
//          Jinryo_f.edtSanjung.text        := grdneyuk.Cells[13, arow]; //sanjung
//
//
//          Jinryo_f.FieldSetJin(ma_chart,  grdneyuk.Cells[1, arow]);
//
//
//          LoadCC(ma_chart,
//           treatRoom,
//           doc ,
//           FormatDateTime('YYYY-MM-DD', now),
//           inttostr(cbIo.ItemIndex));
//
//
//          jinryo_f.JinryoBiSet ;
//
//
//
//
//          doLock:= true;
//
//          //락 상태를 가져와서 읽기전용으로 뿌려준다,.
//          LockStatResult := loadLockState(jinryo_f.lblChart.Caption,
//                  delDash( grdneyuk.originalCells[grdneyuk.RealColIndex(1), arow])) ;
//
//          if LockStatResult.aResult =  false then  //잡은게 없다.
//          begin
//
//                jinryo_f.LockControl(false); //해제
//                DoLock := true;
//          end
//          else
//          begin
//            //   showmessage( LockStatResult.LocUidCod +':'+V_UserID+#10+
//            //     LockStatResult.LocIpAddr +':'+ GetIPAddress  );
//
//              if //( LockStatResult.LocUidCod  <> V_UserID ) and    // 아이피로만 검색하자.
//               ( LockStatResult.LocIpAddr  <> GetIPAddress )   and  //같은 아이디로 접속하는 경우가 많다.
//                ( LockStatResult.LocExeNam  =  'HJinryo' )   then
//                begin
//
//
//
//
//                 if Application.MessageBox(pchar(
//                      LockStatResult.LocIpAddr + '에서 '+
//                      LockStatResult.LocPCNam+'('+
//                      LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
//                      +') 이 열람중입니다.'+#10+
//
//
//                   '기존연결을 끊으시겠습니까?'), '확인', MB_YESNO) = 6 then
//                    begin
//
//
//                        //강제로 끊기
//                        //강제로 끊으면 제어권을 가져간다.
//                        //전 제어권자는 저장을 못하도록 해야 한다.
//
//                      ReleaseLockOneChart(jinryo_f.lblChart.Caption,
//                            'HJinryo',
//                            LockStatResult.LocUidCod ,
//                            LockStatResult.LocIpAddr);
//                      jinryo_f.LockControl(false);
//
//                      doLock := true;
//
//                    end
//                    else
//                    begin
//                        jinryo_f.LockControl(true); //잠금
//                        doLock:= false;
//                    end;
//             end
//             else
//             begin
//                 doLock:= true;
//             end;
//          end;
//
//          if doLock = true then
//          begin
//              //Lock을 잡아라.
//           if   ExcuteLock (
//                   'HJinryo',
//                   V_UserID,
//                   GetIPAddress ,
//                   jinryo_f.lblChart.Caption ,
//                   GetLocalComputerName ) = true then
//                   begin
//                        ReleaseLockAnother(jinryo_f.lblChart.Caption,
//                            'HJinryo',
//                             V_UserID,
//                             GetIPAddress) ;
//                   end;
//
//          end;



    LoadNeyuk(grdNeyuk.Row);

end;

procedure TJinryo_f.grdNeyukKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//    case key of
//          VK_DOWN :
//           begin
//
//
//             LoadNeyuk(grdNeyuk.Row);
//
//
//           end;
//          VK_UP :
//           begin
//
//
//             LoadNeyuk(grdNeyuk.Row);
//
//
//           end;
//    end;

end;

procedure TJinryo_f.LoadNeyuk(aRow: integer);
var
 //   aRow            : integer;
    TreatRoom , doc : string;
    nIO   : integer;  //입원, 외래 구분 0: 외래, 1: 숙박 2: 낮

     LockStatResult : TLockStatResult ;
     DoLock : boolean; //락을 걸어라.

     aJong : string;
     aChoje : string;
     aSanCode3 : string;
begin

      isNeyukLoad := true;

      //SyncJa에는 FieldClear가 포함되어있다.
      //Jinryo_f.cbSanjungTeakRye.Checked를 뒤에 놔야 한다.
      Jinryo_f.syncJa;


{  Jinryo_f.cbJong.ItemIndex
   Jinryo_f.cbChoje.ItemIndex
   Jinryo_f.cbSanCode3.ItemIndex
   Jinryo_f.edtFirst.text
   Jinryo_f.edtSanjung.text
 }
{
SQL.Add(' select jin_day, sunapak, bonin, team, doc_code,
   jubsu_id, isInPat ,chojae, jongbeul, gub_gu, sanjungteakRye, tjung
 from jinryo_p ');
}
{
0진료일자
1진료실
2담당의
3상병
4진료내역
5기타
6수납금액
7접수ID
8종별
9초재
10국가검진
11산정특례
12특례코드
13입원여부
}

{0 No
1진료일자
2수납금액
3상병
4기타
5진료내역
6진료실
7담당의
8접수ID
9종별
10초재
11국가검진
12산정특례
13특례코드
14입원여부}


          aRow :=  grdNeyuk.Row;
          ma_jubsu_ID :=  trim(grdneyuk.OriginalCells[grdneyuk.RealColIndex(7), arow]);

          jinryo_f.dmain.Date :=
                strtodate(grdneyuk.originalCells[grdneyuk.RealColIndex(0), arow]);

          jinryo_f.lblJubsuID.caption := grdneyuk.OriginalCells[grdneyuk.RealColIndex(7), arow];


          TreatRoom        := trim(grdneyuk.OriginalCells[14, arow]);

          if TreatRoom  <>'' then   //TreatRoom
          begin

          //ToDo : 왜 진료실에서 대기를 클릭하면 진료실 정보가 사라지나?
          Jinryo_f.cbTreatRoom.Update;

          Jinryo_f.cbTreatRoom.ItemIndex :=
                  Jinryo_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, TreatRoom )  ;

          LoadDoclist( Jinryo_f.cbDoc, TreatRoom);
         end
          else
          begin
            Jinryo_f.cbTreatRoom.ItemIndex := 0;
          end;





{


8접수ID
9종별
10초재
11국가검진
12산정특례
13특례코드
14입원여부}



           doc := trim( grdneyuk.Cells[15, arow]);
          if doc <> '' then   //Doc
            Jinryo_f.cbdoc.ItemIndex :=
                     Jinryo_f.cbDoc.ComboItems.IndexInColumnOf(1, Doc )   //ID
          else
            Jinryo_f.cbdoc.ItemIndex := 0;

            nIO:= strtoint(grdneyuk.OriginalCells[grdneyuk.RealColIndex(13), arow]);

          if nIO > 0 then
            jinryo_f.btnOutHosp.Visible := true
          else
            jinryo_f.btnOutHosp.Visible := false;

        //  Jinryo_f.FieldSetJin(ma_chart);





          jinryo_f.lblisInPat.caption := grdneyuk.OriginalCells[grdneyuk.RealColIndex(13), arow];

          if checkInt(jinryo_f.lblisInPat.caption ) then
              nIO := strToInt(jinryo_f.lblisInPat.caption )
           else
              nIO := 0;

//           jinryo_f.cbIO.ItemIndex := nIO;



//          if trim(Jinryo_f.edtSanjung.text) <> '' then
//          begin
//            //  Jinryo_f.cbSanjungTeakRye.Checked := false;
//              showmessage('산정특례대상자입니다. 진단명을 확인하세요.');
//          end;
//


          if grdneyuk.OriginalCells[grdneyuk.RealColIndex(11), arow] ='1' then
          begin
                Jinryo_f.cbSanjungTeakRye.Checked:= true;
          end
          else
          begin
                Jinryo_f.cbSanjungTeakRye.Checked:= false;
          end;



          // ToDo: grdNeyuk에 내용 뿌리기 - grdNeyuk을 클릭하니 여기서는 하지 말아야 한다.
         // Jinryo_f.JinryoHistoryView(ma_chart );
          jinryo_f.cbIO.ItemIndex := nIO;

//          Jinryo_f.FieldSetJin(ma_chart,  grdneyuk.Cells[1, arow]);





          Jinryo_f.rpPk := strtoint( grdneyuk.originalCells[grdneyuk.RealColIndex(16), arow]) ;

          jinryo_f.lblJubsuID.caption :=  ma_jubsu_ID;

          jinryo_f.edtBontype.text :=  ma_Budam;

//          Jinryo_f.LoadJinryo_S(ma_chart);

          jinryo_f.makeTodayTab;
          jinryo_f.LoadReferList(Jinryo_f. rpPk );
//====New
{0진료일자
1진료실
2담당의
3상병
4진료내역
5기타
6수납금액
7접수ID
8종별
9초재
10국가검진
11산정특례
12특례코드
13입원여부
}

          aJong     := grdneyuk.Cells[8, arow];
          aChoje    := grdneyuk.Cells[9, arow];
          aSanCode3 := grdneyuk.Cells[10, arow];

          ma_jongbeul :=  inttoStr( strtoIntDef(aJong,0));
          ma_choje    :=  strtoIntDef(aChoje,0);

          ma_rp_RequestPK :=  grdneyuk.ints[16, arow];


          Jinryo_f.cbJong.ItemIndex       := strtointDef(aJong, 1)-1 ;  //jongbyul

          Jinryo_f.cbChoje.ItemIndex      := strtointDef(aChoje, 1)-1 ;;  //choje
          Jinryo_f.cbSanCode3.ItemIndex   := strtointDef(aSancode3, 0);  //health
//          Jinryo_f.edtFirst.text          := grdneyuk.OriginalCells[grdneyuk.RealColIndex(21), arow]; //first_day
          Jinryo_f.edtSanjung.text        := grdneyuk.Cells[12, arow]; //sanjung

          Jinryo_f.edtJiwon.text        := grdneyuk.Cells[17, arow];; //산젇특례 지원금 여부


          Jinryo_f.FieldSetJin(ma_chart,         //Chart
                   grdneyuk.Cells[0, arow]);     //jin_day


          LoadCC(ma_chart,
           treatRoom,
           doc ,
           FormatDateTime('YYYY-MM-DD', now),
           inttostr(cbIo.ItemIndex));


        LoadLabRemark(ma_jubsu_id);



          jinryo_f.JinryoBiSet ;




          doLock:= true;

          //락 상태를 가져와서 읽기전용으로 뿌려준다,.
          LockStatResult := loadLockState(jinryo_f.lblChart.Caption,
                  delDash( grdneyuk.originalCells[grdneyuk.RealColIndex(1), arow])) ;

          if LockStatResult.aResult =  false then  //잡은게 없다.
          begin

                jinryo_f.LockControl(false); //해제
                DoLock := true;
          end
          else
          begin
            //   showmessage( LockStatResult.LocUidCod +':'+V_UserID+#10+
            //     LockStatResult.LocIpAddr +':'+ GetIPAddress  );

              if //( LockStatResult.LocUidCod  <> V_UserID ) and    // 아이피로만 검색하자.
               ( LockStatResult.LocIpAddr  <> GetIPAddress )   and  //같은 아이디로 접속하는 경우가 많다.
                ( LockStatResult.LocExeNam  =  'HJinryo' )   then
                begin




                 if Application.MessageBox(pchar(
                      LockStatResult.LocIpAddr + '에서 '+
                      LockStatResult.LocPCNam+'('+
                      LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
                      +') 이 열람중입니다.'+#10+


                   '기존연결을 끊으시겠습니까?'), '확인', MB_YESNO) = 6 then
                    begin


                        //강제로 끊기
                        //강제로 끊으면 제어권을 가져간다.
                        //전 제어권자는 저장을 못하도록 해야 한다.

                      ReleaseLockOneChart(jinryo_f.lblChart.Caption,
                            'HJinryo',
                            LockStatResult.LocUidCod ,
                            LockStatResult.LocIpAddr);
                      jinryo_f.LockControl(false);

                      doLock := true;

                    end
                    else
                    begin
                        jinryo_f.LockControl(true); //잠금
                        doLock:= false;
                    end;
             end
             else
             begin
                 doLock:= true;
             end;
          end;

          if doLock = true then
          begin
              //Lock을 잡아라.
           if   ExcuteLock (
                   'HJinryo',
                   V_UserID,
                   GetIPAddress ,
                   jinryo_f.lblChart.Caption ,
                   GetLocalComputerName ) = true then
                   begin
                        ReleaseLockAnother(jinryo_f.lblChart.Caption,
                            'HJinryo',
                             V_UserID,
                             GetIPAddress) ;
                   end;

          end;


end;


procedure TJinryo_f.grdSangByungCheckBoxChange(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
   //지금 선택된것만 놔두고 모두 체크 해제하자.
   grdSangByung.UnCheckAll(0);


end;

procedure TJinryo_f.grdSangByungClickCell(Sender: TObject; ARow, ACol: Integer);
var
  grdRect: Trect;
begin


  SetImeInputMode(grdSangByung.Handle  , imEnglish);

  grdRect := grdSangByung.CellRect(ACol, ARow);

  if (ARow = 0) and (ACol = 0) then
  begin

    gridColSelect(grdSangByung, grdRect, clbSangByung);
  end;


end;

procedure TJinryo_f.grdSangByungDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

         if (ARow > 0) then
        begin
              case aCol  of

               //0: ;
               0..10:
                begin

                 //    grdSangByung.Options:=  grdJx2.Options + [goEditing];

                end;
              end;
        end;
 end;

function TJinryo_f.DeleteSangByung(aRow:integer): boolean;
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

procedure TJinryo_f.grdSangByungGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

  if aCol = 0 then
  begin
    HAlign := TAlignment.taCenter;
  end;

end;

procedure TJinryo_f.grdSangByungGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
      if (grdSangByung.Cells[19, ARow] = 'D')  then //삭제
      begin

            AFont.Color := $00CFCFCF;
            AFont.Style := [fsStrikeOut]   ;
      end;


end;

procedure TJinryo_f.grdSangByungKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  i:integer;
begin

     case key of
          VK_BACK:
          begin
          end;

          VK_DELETE://, VK_BACK: //Exit

           begin
             if isSangByungDelete = false then
             begin
                 isSangByungDelete := true;

                for i:= 0 to grdSangByung.selectedRowcount -1 do
                begin

                    grdSangByung.Cells[19,  grdSangByung.SelectedRow[i]] := 'D';

                end;
             end
             else
             begin
                   isSangByungDelete := false;

                for i:= 0 to grdSangByung.selectedRowcount -1 do
                begin

                    grdSangByung.Cells[19,  grdSangByung.SelectedRow[i]] := '';

                end;
             end;

             grdSangByung.Repaint;
//               if (grdSangByung.Row > 0) then
//               begin
//
//                  if  DeleteSangByung(grdSangByung.Row) = true then
//                  begin
//                      grdSangByung.RemoveRows(grdSangByung.Row ,1)   ;
//
//                      grdSangByung.RowCount := 10;
//                   //   grdSangByung.autonumberCol(0);
//
//
//
//                  end;
//               end;

           end;
          
     end;
end;

function TJinryo_f.checkDuplicate(sKey :string; sSangbyung:string):integer;
var
   i           : integer;
   s_key       : string;
   s_sangByung : string;
begin
     result := -1;

     for i:= 1 to  grdSangByung.RowCount -1 do
     begin
         s_key       :=  upperCase(grdSangByung.Cells[6, i]);
         s_sangByung :=  grdSangByung.Cells[10, i];

         if (i <> grdSangByung.row)
            and (( upperCase(s_key) = upperCase(sKey)) and
                (  s_sangByung = ssangByung) ) then
         begin
             result := i;
             break;

         end;
     end;
end;
procedure TJinryo_f.grdSangByungKeyPress(Sender: TObject; var Key: Char);
var
    searchResult : integer;
begin
  if Key = #13 then
  begin



    if (grdSangByung.Col = 6) and (grdSangByung.Row > 0) then
    begin
       if trim(grdSangByung.Cells[6, grdSangByung.Row]) ='' then
       exit;

       searchResult :=  checkDuplicate(grdSangByung.Cells[6, grdSangByung.Row] ,
                                      grdSangByung.Cells[10, grdSangByung.Row]);

       if  searchResult < 0 then
       begin

             searchDiseaseCode(grdSangByung.Cells[6, grdSangByung.Row]);

       end
       else
       begin
             showmessage( inttostr(searchResult) + '행에 같은 상병이 있습니다.');
             grdSangByung.Cells[6, grdSangByung.Row] :='';
             grdSangByung.Cells[10, grdSangByung.Row] :='';
       end;
    end;

    //산정특례 V 대문자.
    if (grdSangByung.Col = 15) and (grdSangByung.Row > 0) then
    begin
         grdSangByung.Cells[15, grdSangByung.Row] := uppercase(grdSangByung.Cells[15, grdSangByung.Row]);
    end;

  end;
end;

procedure TJinryo_f.grdSangByungRowChanging(Sender: TObject; OldRow,
  NewRow: Integer; var Allow: Boolean);
var
  modified:boolean;
begin
     modified := grdSangByung.Modified; // grdJx2.RowModified[oldRow];

     if   grdSangByung.Cells[19,  NewRow] = 'D'  then
            isSangByungDelete := true
          else
            isSangByungDelete := false;
end;



procedure TJinryo_f.grdSangDetailDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

      insertChoiceSangByungItem( ARow, ACol);
//      grdSangByung.Cells[10, grdSangByung.Row] :=
//       grdSangDetail.Cells[0,  grdSangDetail.Row];
//
//      grdSangByung.Cells[13, grdSangByung.Row] := cbDoc.ColumnItems
//        [cbDoc.itemindex, 2]; // cmbDoctor.Text; //담당의
//      grdSangByung.Cells[14, grdSangByung.Row] := cbDoc.ColumnItems
//        [cbDoc.itemindex, 3]; // 담당의 면허번호
//      pnlSangByungDetail.Visible :=false;
end;
procedure TJinryo_f.insertChoiceSangByungItem( ARow, ACol: Integer);
var
  searchResult : integer;
begin


         searchResult :=  checkDuplicate(grdSangDetail.Cells[1,  grdSangDetail.Row],
                                         grdSangDetail.Cells[0,  grdSangDetail.Row] );
      if searchResult < 0 then
      begin

          grdSangByung.Cells[6, grdSangByung.Row] :=
              grdSangDetail.Cells[1,  grdSangDetail.Row]; //Code

          grdSangByung.Cells[10, grdSangByung.Row] :=
              grdSangDetail.Cells[0,  grdSangDetail.Row]; //상병명

          grdSangByung.Cells[13, grdSangByung.Row] := cbDoc.ColumnItems
            [cbDoc.itemindex, 2]; // cmbDoctor.Text; //담당의
          grdSangByung.Cells[14, grdSangByung.Row] := cbDoc.ColumnItems
            [cbDoc.itemindex, 3]; // 담당의 면허번호

        //  grdSangByung.AddRadioButton(0, grdSangByung.Row , false, true  );


          if grdSangByung.Row  = 1 then
              grdSangByung.AddRadioButton(0, grdSangByung.Row  ,true  )
          else
              grdSangByung.AddRadioButton(0, grdSangByung.Row  , false );



          pnlSangByungDetail.Visible :=false;
          grdSangByung.SetFocus;
      end
      else
      begin
             showmessage( inttostr(searchResult) + '행에 같은 상병이 있습니다.');
             grdSangByung.Cells[6, grdSangByung.Row] :='';
             grdSangByung.Cells[10, grdSangByung.Row] :='';

      end;
end;

procedure TJinryo_f.grdSangDetailKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     begin
          insertChoiceSangByungItem(grdSangDetail.Row, grdSangDetail.Col);
     end;

end;

procedure TJinryo_f.searchDiseaseCode(s_key: string);
var
  tempQuery: TuniQuery;
  i: Integer;
  paramA, paramB: string;

     btnRect: Trect;


begin


     btnRect := grdSangByung.CellRect(grdSangByung.Col, grdSangByung.row);

  try
    i := 0;

    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      try
        close;
        SQL.Clear;

        SQL.Add('select * from sangbyung ');
        SQL.Add(' where   s_key  like  :s_key  and fullCode <> ''N'' ');
        paramByName('s_key').asString := s_key + '%';
        open;
        if not isEmpty then
        begin
          // grdmain.Cells[1, i] := FieldByName('s_key').AsString;
          // grdmain.Cells[2, i] := FieldByName('s_kor_name').AsString;
          // grdmain.Cells[3, i] := FieldByName('s_eng_name').AsString;

          // grdSangbyung.addRow;

          if RecordCount = 1 then
          begin



                grdSangByung.Cells[6, grdSangByung.Row] :=
                  fieldByname('s_key').asString;
                grdSangByung.Cells[10, grdSangByung.Row] :=
                  fieldByname('s_kor_name').asString;

                grdSangByung.Cells[13, grdSangByung.Row] := cbDoc.ColumnItems
                  [cbDoc.itemindex, 2]; // cmbDoctor.Text; //담당의
                grdSangByung.Cells[14, grdSangByung.Row] := cbDoc.ColumnItems
                  [cbDoc.itemindex, 3]; // 담당의 면허번호

               // grdSangByung.AddRadioButton(0, grdSangByung.Row , false, true  );

                if grdSangByung.Row  = 1 then
                    grdSangByung.AddRadioButton(0, grdSangByung.Row  , true  )
                else
                    grdSangByung.AddRadioButton(0, grdSangByung.Row  , false);



          end
          else
          begin




                     with pnlSangByungDetail do
                     begin

                        Visible :=  true;
                        Left    :=  pnlmain.Left +  btnRect.left + grdSangByung.ColWidths[6]  ;
                        top     :=  pnlMainTop.Height + pnlmain.top + btnRect.Top + grdSangByung.RowHeights[0]   ;// +( btnRect.Bottom- btnRect.Top);
                    //    width :=  btnRect.right -  btnRect.left ;
                     end;



                 grdSangDetail.RemoveRows(1, grdSangDetail.RowCount);




                 while not eof do
                 begin
                     grdSangDetail.AddRow;
                     grdSangDetail.Cells[0, grdSangDetail.RowCount-1] := fieldByname('s_kor_name').asString;
                     grdSangDetail.Cells[1, grdSangDetail.RowCount-1] := fieldByname('s_key').asString;

                     next;
                 end;
                grdSangDetail.setfocus;

          end;
        end
        else
        begin
          grdSangByung.Cells[6, grdSangByung.Row] := '';

          grdSangByung.RowCount := 10;

          grdSangDetail.RemoveRows(0, grdSangDetail.RowCount-1);
        end;

      except
             on E: Exception do
        begin
          Showmessage(E.Message + '[상병코드 찾기 오류]');
        end;

      end;
    end;
  finally
   // grdSangByung.AutoNumberCol(0);
    // grdmain.EndUpdate;
    tempQuery.Free;
  end;

end;

procedure TJinryo_f.grdSugaColumnSizing(Sender: TObject; ACol,
  ColumnSize: Integer);
begin
       case aCol of
         1:  //usercode
         begin
              edtSearchSuga.Width      := ColumnSize;

//              edtSearchSugaName.Left  := grdSuga.ColWidths[0] + ColumnSize + 2 ;
//              edtSearchSuga.Left      := grdSuga.ColWidths[0] + ColumnSize + grdSuga.ColWidths[2] + 2 ;
         end;
         2:  //name
         begin
              edtSearchSugaName.Width := ColumnSize;
         end;
         3:  //code
         begin
              edtSearchSugaCode.Width := ColumnSize;
         end;
      end;
//              edtSearchSugaCode.Left  := grdSuga.ColWidths[0] + 2 ;
//              edtSearchSugaName.Left  := grdSuga.ColWidths[0] + grdSuga.ColWidths[1] + 2 ;
//              edtSearchSuga.Left      := grdSuga.ColWidths[0] + grdSuga.ColWidths[1]+ grdSuga.ColWidths[2] + 2 ;

//              edtSearchSugaCode.Width := grdSuga.ColWidths[1] - 5;
//              edtSearchSugaName.Width := grdSuga.ColWidths[2] - 5;
//              edtSearchSuga.Width     := grdSuga.ColWidths[3] - 5;

end;

procedure TJinryo_f.grdSugaDblClickCell(Sender: TObject; ARow, ACol: Integer);
var
//   gubKind : integer;
     gubKind : string;
   jin_Day : string;
begin



   if isNeyukLoad = true then
      jin_day := grdNeyuk.Cells[0, grdNeyuk.Row]
   else
      jin_day := FormatDateTime('YYYY-MM-DD' , jinryo_f.DaegiFrame_fr1.DtDate.date);



  if ARow >= 1 then
  begin


    if cbJong.itemindex in [3,7] then  //일반이거나 자보는 비급이다.
       gubKind := '2'
       else
        gubKind := '0';

    // insertsugaOnce(grdSuga.Cells[1, aRow], 1, 1);//
    insertsugaOnce(grdJx2,
      (sender as TAdvStringgrid).Cells[3, ARow],  //su_key
      jin_day,// FormatDateTime('YYYY-MM-DD' , jinryo_f.DaegiFrame_fr1.DtDate.date), //FormatDateTime('YYYY-MM-DD', dmain.Date), // jinDay,
      cbJong.itemindex, // jongbyul,
      jinryo_f.LblAge.Caption, // age,
      false, // isYagan,
      grdJx2.RowCount, // -1,// 1,//nManRow,
      1,   // RowOrder//   nManStart);
      '',
      0,// aQty: Integer = 0;
      radiogroup1.ItemIndex ,// 1, // aKind : integer = 0; //0: Su_key 로 1:명칭  2: User_key로
      gubKind,
      (sender as TAdvStringgrid).Cells[4, ARow]  , //예외코드
       true);


    JinryoBiSet;

  end;

end;

procedure TJinryo_f.grdSugaGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
    if aRow = 0  then
     begin
          hAlign :=  TAlignment.taCenter;
        //  Valign := vtaCenter;
     end;

end;

procedure TJinryo_f.grdSugaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    // grdFindGroupDblClickCell(grdFindGroup, grdFindGroup.Row, grdFindGroup.Col );//

    grdSugaDblClickCell(grdSuga, grdSuga.Row, grdSuga.Col);


  end;
end;

procedure TJinryo_f.grdTxHxDblClickCell(Sender: TObject; ARow, ACol: Integer);
var
     aTreatRoom : string;
     aCC        : string;
     iRow       : integer;
//     gubKind    : integer;
     gubKind    : string;
     jin_day    : string;
     HxKind     : string;
     g : integer;
     grCap : string;
begin


    if isNeyukLoad = true then
      jin_day := grdNeyuk.Cells[0, grdNeyuk.Row]
    else
      jin_day := FormatDateTime('YYYY-MM-DD' , jinryo_f.DaegiFrame_fr1.DtDate.date);


    if cbJong.itemindex in [3,7] then  //일반이거나 자보는 비급이다.
        gubKind := '2'
    else
        gubKind := '0';

    HxKind := grdTxHx.Cells[11, ARow] ;

    if (ARow >= 1)
    and ( ( HxKind = '1')   //상병
       or ( HxKind = '2')   //C/C
       or ( HxKind = '3') )  //Jinryo_s
    then
    begin
        if HxKind  = '2' then //Kind =2 C/C
        begin
           aTreatRoom :=  grdTxHx.Cells[8, ARow] ;
           aCC        :=  grdTxHx.Cells[1, ARow] ;
           lblTreatRoom.Caption := aTreatRoom  ;

           edtCC.text:=   edtCC.text+ #10+  aCC;
//           memo3.text:=   memo3.text+ #10+  aCC;
         end
         else
         if  HxKind = '1' then  //Kind =1 상병  Desiese Code
         begin

              iRow := checkBlankRow(grdSangByung, 6);

          //    grdSangByung.AddRadioButton(0, iRow , false, true  );
              if iRow  = 1 then
                  grdSangByung.AddRadioButton(0, iRow  , true )
              else
                  grdSangByung.AddRadioButton(0, iRow  , false );


              grdSangByung.Cells[6, iRow]  :=  grdTxHx.Cells[1, ARow] ; //Code

              grdSangByung.Cells[10, iRow] :=  grdTxHx.Cells[2, ARow] ; //상병명

              grdSangByung.Cells[13, iRow] := cbDoc.ColumnItems[cbDoc.itemindex, 2]; // cmbDoctor.Text; //담당의
              grdSangByung.Cells[14, iRow] := cbDoc.ColumnItems[cbDoc.itemindex, 3]; // 담당의 면허번호

              grdSangByung.SetFocus;



         end
         else  if  HxKind = '3' then  //Kind =3 진료
         begin   //Kind =3 Jinryo_s
              // insertsugaOnce(grdSuga.Cells[1, aRow], 1, 1);//
              insertsugaOnce(grdJx2,
                grdTxHx.Cells[2, ARow],
                jin_Day,//FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
               // FormatDateTime('YYYY-MM-DD', dmain.Date), // jinDay,
                cbJong.itemindex, // jongbyul,
                jinryo_f.LblAge.Caption, // age,
                false, // isYagan,
                grdJx2.RowCount, // -1,// 1,//nManRow,
                1,  // nManStart);
                '', //ModiKind
                0,
                0,
                gubKind,
                '',
                true);


              JinryoBiSet;
         end;
  end
  else
  begin




              if HxKind = '0' then
              begin
                g := grdTxHx.row + 1;


                while g <= grdTxHx.RowCount - 1 do
                begin
                   grCap   :=  grdTxHx.Cells[10, g];

                  if grCap = '0' then
                   begin
                     Break;
                  end
                  else
                  begin


                     // showmessage(grCap)
                           ARow:= g;
                           HxKind := grdTxHx.Cells[10, ARow] ;

                          if (ARow >= 1)
                           and ( ( HxKind = '1')
                               or ( HxKind = '2')
                               or ( HxKind = '3') )  //날짜가 아니면...
                          then
                          begin
                            if HxKind  = '2' then //Kind =2 C/C
                             begin
                                   aTreatRoom :=  grdTxHx.Cells[7, ARow] ;
                                   aCC        :=  grdTxHx.Cells[2, ARow] ;
                                   lblTreatRoom.Caption := aTreatRoom  ;

                                   edtCC.text:=   edtCC.text+ #10+  aCC;
//                                   memo3.text:=   memo3.text+ #10+  aCC;
                             end
                             else
                             if  HxKind = '1' then  //Kind =1 상병  Desiese Code
                             begin

                                  iRow := checkBlankRow(grdSangByung, 6);

                              //    grdSangByung.AddRadioButton(0, iRow , false, true  );
                                  if iRow  = 1 then
                                      grdSangByung.AddRadioButton(0, iRow  , true )
                                  else
                                      grdSangByung.AddRadioButton(0, iRow  , false );


                                  grdSangByung.Cells[6, iRow] :=
                                      grdTxHx.Cells[1, ARow] ; //Code

                                  grdSangByung.Cells[10, iRow] :=
                                      grdTxHx.Cells[2, ARow] ; //상병명

                                  grdSangByung.Cells[13, iRow] := cbDoc.ColumnItems
                                    [cbDoc.itemindex, 2]; // cmbDoctor.Text; //담당의
                                  grdSangByung.Cells[14, iRow] := cbDoc.ColumnItems
                                    [cbDoc.itemindex, 3]; // 담당의 면허번호

                                //  grdSangByung.SetFocus;



                             end
                             else  if  HxKind = '3' then  //Kind =3 진료
                             begin   //Kind =3 Jinryo_s
                                  // insertsugaOnce(grdSuga.Cells[1, aRow], 1, 1);//
                                  insertsugaOnce(grdJx2,
                                    grdTxHx.Cells[1, ARow],
                                    jin_Day,//FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
                                   // FormatDateTime('YYYY-MM-DD', dmain.Date), // jinDay,
                                    cbJong.itemindex, // jongbyul,
                                    jinryo_f.LblAge.Caption, // age,
                                    false, // isYagan,
                                    grdJx2.RowCount, // -1,// 1,//nManRow,
                                    1,  // nManStart);
                                    '', //modiKind
                                    0,
                                    0,
                                    gubKind,
                                    '' );



                             end;
                          end;





                  end;

                  g:= g+1;

                end;

                  JinryoBiSet;
              end


  end;

end;

procedure TJinryo_f.grdTxHxGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
 if ARow = 0 then
  begin
    HAlign := TAlignment.taCenter;
  end
  else
  begin
    case ACol of
      9:
        begin
          HAlign := TAlignment.taRightJustify;
        end;

      4..8:
        begin
          HAlign := TAlignment.taCenter;
        end;

    else
      begin
        HAlign := TAlignment.taLeftJustify;
      end;
    end;
  end;
end;

procedure TJinryo_f.grdTxHxGetCellBorder(Sender: TObject; ARow, ACol: Integer;
  APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];//, cbBottom];// then//, cbBottom];
             // begin
                   APen.Width := 2;
                   APen.Color := $00f2e6e2;//clSilver; //clGray;
         end;

end;

procedure TJinryo_f.grdTxHxGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin



      if grdTxHx.Cells[11, ARow] = '2' then   // 'C/C'
      begin
         ABrush.Color := $00FAF4FF;//$00F1E3FF;//$00F8EFE5;
           AFont.Style :=    AFont.Style - [fsBold] ;
      end;

      if grdTxHx.Cells[11, ARow] = '1' then    //Desease Code
      begin
         ABrush.Color :=  $00F8DFDC;// $00D5FFEA;
          AFont.Style :=    AFont.Style - [fsBold] ;
      end;

      if grdTxHx.Cells[11, ARow] = '0' then
      begin
         ABrush.Color := clBlue;
         AFont.Color  := clWhite;
         AFont.Style := [fsBold] ;
      end;

      if grdTxHx.Cells[13, ARow] = 'G' then   // GroupCode
      begin
           ABrush.Color := $00C6FFC6;//$00F8EFE5;
           AFont.Style :=    AFont.Style - [fsBold] ;
      end;



end;

procedure TJinryo_f.grdTxHxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  jin_Day : string;
  jinDay_tag : string;
  nTopRow  : integer;
begin
//   case key  of
//       VK_Down :
//       begin
//
//
//              nTopRow := grdTxHx.TopRow + 1;
//              jin_Day := grdTxHx.cells[12, nTopRow];
//           if grdTxHx.cells[11, nTopRow] <>  '0' then
//            begin
//              grdTxHx.cells[2,  1]  :=  jin_Day;
//              grdTxHx.cells[12, 1]  :=  jin_Day;
//            end;
//
//       end;
//       VK_UP :
//       begin
//              nTopRow := grdTxHx.TopRow -1 ;
//              jin_Day := grdTxHx.cells[12, nTopRow];
//            if grdTxHx.cells[11, nTopRow] <>  '0' then
//            begin
//                grdTxHx.cells[2,  1]  :=  jin_Day;
//                grdTxHx.cells[12, 1]  :=  jin_Day;
//            end
//            else
//            begin
//                jin_Day := grdTxHx.cells[12, grdTxHx.Row];
//
//                grdTxHx.cells[2,  1]  :=  jin_Day;
//                grdTxHx.cells[12, 1]  :=  jin_Day;
//            end;
//
//       end;
//   end;
end;


procedure TJinryo_f.SetJinryoTxHx(aGrid:TadvStringGrid; Key : integer);//; nTopRow:integer);
var
  jin_Day : string;
  jinDay_tag : string;
  nTopRow  : integer;
begin
   case key  of
       VK_Down :
       begin


              nTopRow := aGrid.TopRow + 1;
              jin_Day := aGrid.cells[12, nTopRow];
           if aGrid.cells[11, nTopRow] <>  '0' then
            begin
              aGrid.cells[2,  1]  :=  jin_Day;
              aGrid.cells[12, 1]  :=  jin_Day;
            end;

       end;
       VK_UP :
       begin
              nTopRow := aGrid.TopRow -1 ;
              jin_Day := aGrid.cells[12, nTopRow];
            if aGrid.cells[11, nTopRow] <>  '0' then
            begin
                aGrid.cells[2,  1]  :=  jin_Day;
                aGrid.cells[12, 1]  :=  jin_Day;
            end
            else
            begin
                jin_Day := aGrid.cells[12, aGrid.Row];

                aGrid.cells[2,  1]  :=  jin_Day;
                aGrid.cells[12, 1]  :=  jin_Day;
            end;

       end;
   end;
end;

// 심사참고 버튼  .............................................................

procedure TJinryo_f.btnExamInputClick(Sender: TObject);
begin
   if edtChart.Text ='' then
     begin
         showmessage('롼자를 선택하세요.');
         exit;
     end;

        if not assigned(chklistSave_f) then
            chklistSave_f := TchklistSave_f.Create(application);


         if chklistSave_f.ShowModal = mrOk then
         begin

                   LoadChkList(edtChkList, edtChart.Text);

         end

end;

procedure TJinryo_f.AdvShapeButton2Click(Sender: TObject);
begin
    LoadFavoriteSuga ;
end;

procedure TJinryo_f.BitBtn1Click(Sender: TObject);
var
   doc_code, treatRoom : string;
begin

      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4];//saID
      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];

  // CMemo_f := TCMemo_f.Create(application);
  // CMemo_f.Showmodal;
  // CMemo_f.Free;
  // CMemo_f := nil;
  // with dm_f.sqlJinryo do
  // begin
  //
  // Close;
  // SQL.Clear;
  // SQL.Add(' Select cMemo, jin_day    ' +
  // '   from cMemo             ' +
  // '  where Chart   =:Chart   ' +
  // '    and Jin_day =:Jin_day and team=:team ');
  // ParamByName('chart').AsString := varChartno;
  // ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD',
  // dMain.Date);
  // paramByName('team').asString := doc_code;
  // Open;
  // if not IsEmpty then
  // begin
  // edtCMemo.Text :=
  // StringReplace(FieldByName('cMemo').AsString,
  // #13#10,
  // '', [rfReplaceAll]);
  // ;
  // end
  // else
  // begin
  // edtCMemo.Text := '';
  // end;
  // end;
end;
// 상병버튼 ..................................................................

//function Tjinryo_f.JakyukJohoi(strJuminNo, strPaitName: string;
//  shMessage: Boolean = true): Boolean;
//const
//  NumberChar: array [0 .. 14] of Integer = (23, 25, 28, 38, 40, 41, 42, 44, 45,
//    46, 47, 48, 49, 50, 51);
//
//var
//  strkiho, clientInfo, strJumin2, varJagyukID, varJagyukPass, sDate: string;
//  hkind: string;
//  S: string;
//
//  i, j: Integer;
//
//  varPath, varParam, varParam1: string;
//  teakryeCode: string;
//begin
//
//  //ToDo : 자보면 자격조회를 하지말자.
//
//  {건강보험	1
//보호1종	2
//보호2종	3
//일반	4
//보호4종	5
//보호8종	6
//산재	7
//자보	8
//차상위1종	9
//차상위2종	10
//차상위2종장애인	11}
////  if  (ma_jongbeul = '8')      //자동차보험
////     or  (ma_jongbeul = '4')   //일반
////     or  (ma_jongbeul = '7')   //산재
////     then
////  begin
////       exit;
////  end;
//
//
//  Result := False;
//
//  if checkClientProxynRun = False then
//  begin
//    showmessage('자격조회모듈(ClientProxy)을 설치하세요.');
//    exit;
//  end;
//
//  LoadWebserviceDLL;
//
//
////ToDo : 자동으로 하지 말자.
////  varPath := extractFilePath(paramStr(0)) + 'auto.exe';
////  varParam1 := '만세만세';
////  varParam := varParam1 + ' ' + configvalue.varJagyukID + ' ' +  configvalue.varJagyukPass;
////  // sleep(100);
////
////
////
////  // showmessage(varPath +':'+ varParam) ;
////
////  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), pchar(varParam), nil,
////    SW_SHOWNORMAL);
//
//
//
//  { 본인부담여부
//    "M001: 선택기관적용자(조건부연장 승인자) 1종
//    M002: 선택기관 자발적 참여자 1종
//    M003: 18세 미만인자 1종
//    M004: 임산부1종
//    M005: 희귀난치성질환자 1종
//    M006: 장기이식환자 1종
//    M007: 20세 이하인자로 중.고등학교 재학중인자 1종
//    M008: 가정간호 대상자 1종
//    M009: 응급환자인 선택기관 이용자 1종
//    M010: 장애인보장구 지급받는 선택기관 이용자 1종
//    M011: 행려환자 1종
//    M012: 노숙인 1종
//    M013: 응급환자인 노숙인 1종
//    M014: 2차노숙인진료시설에서 3차로 의뢰된 노숙인 1종
//    B001: 선택기관 적용자(조건부연장승인자) 2종
//    B002: 선택기관 자발적 참여자 2종"
//  }
//
//  hkind := 'M1';
//
////  edtSanjung.Text := '';
////  edtTeakryeRegNo.Text := '';
//
//  //
//  strJuminNo     :=  ma_jumin;  //저장전에는 값이 안들어간다.
//  strPaitName    := ma_paName;  //저장전에는 값이 안들어간다.
//  strkiho := configvalue.varYoyang;
//  clientInfo := '127.0.0.1';
//  strJumin2 := configvalue.varJumin;
//  varJagyukID := configvalue.varJagyukID;
//  varJagyukPass := configvalue.varJagyukPass;
//  sDate := formatdatetime('YYYMMDD', now);
//
//  if CallM1(False, // 테스트모드인가?
//    strJuminNo,
//    strPaitName,
//    strkiho, // 요양기관기호
//    clientInfo,
//    strJumin2, // 원장주민번호
//    varJagyukID,
//    varJagyukPass,
//    sDate) // 조회일자
//    = true then
//  begin
//     //성공하면 ini에 쓰자.
//          Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
//          FormInit := TIniFile.Create(Path);
//          FormInit.WriteString('CERTLOAD', 'DATE', FormatDateTime('YYYY-MM-DD',  Now));
//          FormInit.Free;
//
//  end
//  else
//  begin
//    showmessage('인증 오류');
////
//     //    cbJong.ItemIndex := 3; // 일반
//
//  end;
//end;


// 저장 버튼 ..................................................................

procedure TJinryo_f.btnSanjungConfirmClick(Sender: TObject);
begin
       pnlSanjungTeakRye.Visible := false;
end;

procedure TJinryo_f.btnSaveClick(Sender: TObject);
begin
   //  cbIO.ItemIndex > 0 then //0: 외래 1: 낮 2: 숙박 입원
    SaveAll(cbIO.ItemIndex);

end;

procedure TJinryo_f.SaveAll(kind : integer = 0); //0: 외래저장 1, 2: 입원저장
var
  i: Integer;
  sPortion, sSang, sTx: string;

  doc_code  : string;
  treatRoom : string;
  isInPat   : string;

  LockStatResult : TLockStatResult;

  sanTeakCode : string;
  juSangRow : integer;
  jin_day: string;
  CertLoadDay:string;
  myIpAddr : string;
  sunap_status : string;
  jubsu_status : string;
  infoJubsu : TinfoJubsu;
begin

  if ma_jubsu_ID = '' then
  begin
    Showmessage('접수후 진행하세요.');
    exit;
  end;
    myIpAddr := GetIPAddress;

   if isNeyukLoad=false then  //내원내역에서 부른거 말고, 당일치만 대기상태 변경하자.
      jin_day :=   FormatDateTime('YYYY-MM-DD', dmain.Date)
   else
      jin_day :=  grdNeyuk.Cells[0, grdNeyuk.row] ;




  //다른쪽에서 접속했는지 확인해서 저장이 안되게 하나?
  //제어권을 빼앗겼을때 아는 방법
    //락 상태를 가져와서 읽기전용으로 뿌려준다,.
    LockStatResult := loadLockState2(jinryo_f.lblChart.Caption,
                    delDash( jin_day), myIpAddr ) ;



     if (LockStatResult.aResult =  true)
        and  (LockStatResult.LocLevCod = '20') then
     begin

//          showmessage(
//            LockStatResult.LocIpAddr + '에서 '+
//            LockStatResult.LocPCNam+'('+
//            LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
//            +')'+ ' 이 보고 있습니다.');


          if Application.MessageBox(pchar(
            LockStatResult.LocIpAddr + '에서 '+
            LockStatResult.LocPCNam+'('+
            LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
            +') 이 열람중입니다.'+#10+
         '기존연결을 끊고 완료하시겠습니까?'), '확인', MB_YESNO) = 6 then
          begin


              //강제로 끊기

            ReleaseLockOneChart(jinryo_f.lblChart.Caption,
            'HJinryo',
            LockStatResult.LocUidCod ,
            LockStatResult.LocIpAddr);

          end
          else
          begin



               exit;
          end;
     end;


    //락 상태를 가져와서 읽기전용으로 뿌려준다,.
    LockStatResult := loadLockState(jinryo_f.lblChart.Caption,
                    delDash( jin_day) ) ;



    if (LockStatResult.aResult =  true)
        and  (LockStatResult.LocLevCod <> '20') then  //잡은게 있고 제어권을 안뼀겼으면
    begin


      if ( LockStatResult.LocUidCod  <> V_UserID ) and
         ( LockStatResult.LocIpAddr  <> myIpAddr )   and
         ( LockStatResult.LocExeNam  =  'HJinryo' )   then
        begin


          if Application.MessageBox(pchar(
            LockStatResult.LocIpAddr + '에서 '+
            LockStatResult.LocPCNam+'('+
            LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
            +') 이 열람중입니다.'+#10+
         '기존연결을 끊으시겠습니까?'), '확인', MB_YESNO) = 6 then
          begin


              //강제로 끊기

            ReleaseLockOneChart(jinryo_f.lblChart.Caption,
            'HJinryo',
            LockStatResult.LocUidCod ,
            LockStatResult.LocIpAddr);

          end
          else
          begin

              exit;
          end;
       end;
    end;

  if (nclick = 0) or (nclick = 1) then
  begin

           sunap_status  := '0';
           jubsu_status  := '2';

    if  (existJinryo_Sunap(ma_jubsu_id) = true)
//         and  (isNeyukLoad=false)
         then
    begin

           if
           Application.MessageBox(pchar('기존 수납내역이 있습니다.'  +
           #10#13 +
           '수납대기로 바꾸시겠습니까?'),
           '수납대기 변경 확인', MB_YESNO) = 6 then   //OK -- 수납대기로
           begin


                 sunap_status  := '0';
                 jubsu_status  := '2';

           end
           else  //상태 안바꿈
           begin
                 sunap_status := '1';
                 jubsu_status  := '3';
           end;
//     end
//     else
//     begin
//
//       sunap_status := '1';
//       jubsu_status  := '3';

     end;

    // if
    // Application.MessageBox(pchar(edtname.text + '(' + edtchart.text + ')님의 환자정보가 정말로 삭제됩니다..' +
    // #10#13 +
    // '그래도 정말로  진행 하시겠습니까?'),
    // '환자정보 삭제 확인2', MB_OKCANCEL) = 1 then
    // begin

    // if (ComboBox1.Items.Count <= 0) then
    // begin
    //
    // ShowMessage('상병이 지정되지 않았습니다');
    // end
    // else
    begin

       //병원인증서를 불러오자...
      // 자격조회 버튼 누르면 자격조회 하자.
      //하루에 맨처음 한번만 불러오저.

        Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
        FormInit := TIniFile.Create(Path);
        CertLoadDay := FormInit.ReadString('CERTLOAD', 'date', '');
        FormInit.Free;


      //인증서를 불러서 인증하자....
         if ( configvalue.varCertLogin = '1') then
         begin
            if (CertLoadDay <> formatdatetime('YYYY-MM-DD',    now)) then
                  JakyukJohoi(edtJumin.Text + edtJumin2.Text, edtname.Text,
                  formatdatetime('YYYYMMDD',    now));
         end;

      sunapXsave := 1;



      //ToDO : ma_jubsu를 조회해서 Jubsu_id로 doc_code와 treatRoom을 가져오자.
      ////ToDO : 자주 접수상태를 변경하는 경우가 발생하는데 의사가 환자를 열어놓은 상태에서
      //접수대에서 바꿔는경우 상태가 전달되지 않아 의사가 저장을 한 후 새로 접수된 상태로 환자를
      //꺼내면 저장한 진료정보가 보이지 않는다.
      //의사가 완료나 보류를 할때 접수아이디로 접수상태를 다시 체크해서 접수된 원장/진료실로 저장하자.

         infoJubsu   := loadInfoJubsu( ma_jubsu_ID);

         doc_code    := infoJubsu.Doc_Code ;
         treatRoom   := infoJubsu.treatRoom ;
         isInpat     := infoJubsu.isInpat ;
//      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4]; //saID
//      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0]; //saTeam




//      SaveCC(ma_Chart, doc_code, tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);
//      SaveCC(ma_Chart, treatRoom, tcCCDate.Tabs.Strings[tcCCDate.TabIndex]);

      //ToDo : CC저장시 jubsu_ID를 사용해라.
      SaveCC(
           edtCC,//memo3,
           ma_jubsu_id,
           ma_Chart,
           treatRoom,
           doc_code,
           jin_day,//FormatDateTime('YYYY-MM-DD', dmain.Date),
           isInPat);//inttostr(cbIo.ItemIndex));


      SaveLabRemark(
           memLabRemark,
           ma_jubsu_id,
           ma_Chart,
           jin_day );


      saveRemark;
      saveRemark_Sunap;



    // Jinryo_p

        //ToDo : 완료 누를때 입원(cbIO.ItemIndex 1, 2)이면 jinryo_p 저장하지 말자.

       // if cbIO.ItemIndex = 0 then //외래
      //  if isInpat = '0' then //외래
       if kind  =0 then   //외래
        begin


          //ToDo : 이미 저장되어있는 상태에서는
          //      수납대기로 보낼지 그냥놔둘지 물어봐라.
          //???내원내역에서 불러오면 진료비는 만지지 말자???
        //  if (isNeyukLoad=false) then
              JinryobiSave(   //Jinryo_p
                    ma_jubsu_id,
                    jin_day,
                    treatRoom ,
                    Doc_code,
                    isInpat,//intTostr(cbIo.ItemIndex) , //0: 외래 1: 낮 2: 숙박 입원
                    sunap_status);//  (sunapKind 0 : 수납대기 1:수납완료 2:수납대기취소 3: 수납보류 )

          // Jinryo_s  , Jinryo_o
          insertjin_s(
            ma_jubsu_id,
            strtoDate(jin_day),//dmain.Date,
            varChartno,
            treatRoom,   // cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0],
            doc_code, // cbDoc.ColumnItems[cbDoc.itemindex, 0],
            isInpat,//inttostr(cbIo.ItemIndex) , //0: 외래 1: 낮 2: 숙박 입원
            grdJx2,
            1, //1. 저장 2:보류
            '0'); //0:normal 1:emergency

            // 1. 진료내역 저장   2. RIS저장 3. 옵티멈저장 BIT서버   121.166.70.201,51983  sa / bit



            //1.약제이면서 예외코드 없으면  isWonwe = true
            if isWonwe = true then
            begin

                WonweSave;
               // showmessage('처방전을 발행합니다.');

                wonwe_f := Twonwe_f.Create(Application);
                wonwe_f.Showmodal;
                wonwe_f.Free;
                wonwe_f := nil;
                // RealGrid3.Clear;
                //   SetWonwe(varChartno, FormatDateTime('YYYY-MM-DD', dmain.Date), false);


            end;


        end
        else
        begin //입원이면....날짜를 대기표에 있는걸로 한다.
          // Jinryo_s
          insertjin_s(
            ma_jubsu_id,
            DaegiFrame_fr1.dtDate.date,
            varChartno,
            treatRoom,   // cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0],
            doc_code, // cbDoc.ColumnItems[cbDoc.itemindex, 0],
            isInpat,//inttostr(cbIo.ItemIndex) , //0: 외래 1: 낮 2: 숙박 입원
            grdJx2,
            1,
            '0'); // 1. 진료내역 저장
                     // 2. RIS저장
                     // 3. 옵티멈저장 BIT서버   121.166.70.201,51983  sa / bit

            if isWonwe = true then
            begin

                WonweSave;
               // showmessage('처방전을 발행합니다.');

                wonwe_f := Twonwe_f.Create(Application);
                wonwe_f.Showmodal;
                wonwe_f.Free;
                wonwe_f := nil;
                // RealGrid3.Clear;
             //   SetWonwe(varChartno, FormatDateTime('YYYY-MM-DD', dmain.Date), false);


            end;



        end;


       TJungCodeSave;


       //ToDO : 협진저장
       //jinryo_s를 저장한 후에 협진을 저장하자. 왜냐하면 그룹의 총합을 구해줘야 한다.
       save_RequestUseJinsKey(
              ma_rp_RequestPK,  // nRpPK:integer ;
               varChartno, // Achart:string;
              DaegiFrame_fr1.dtDate.date, // ADate : TdateTime;
              grdJx2); // AGrid : TAdvStringGrid);







  //ToDo :    저장하면 크리어 시키자....
  //    Showmessage('저장되었습니다.');




      // 진료history 다시 뿌려주고
      JinryoHistoryView(varChartno);

      // 진료내역불러오기
      setJinryo_s(
         ma_jubsu_id,
         grdJx2,
         varChartno,
         treatRoom,    //  cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
         doc_code,
         isInpat, //inttostr(cbIO.ItemIndex ), //외래, 숙박입원, 낮입원
         jin_day//FormatDateTime('YYYY-MM-DD', dmain.Date)
          );

      setJinryo_o(
       grdSangByung,
       varChartno,
       treatRoom,  //cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
       isInpat,//inttostr(cbIO.ItemIndex ), //외래, 숙박입원, 낮입원
       ma_jubsu_id,
       sanTeakCode,
       juSangRow,
       jin_day//FormatDateTime('YYYY-MM-DD',  dmain.Date)
       );

       edtSanjung.text:=  sanTeakCode;

      if LblAge.Caption <> '' then
      begin
        JinryoBiSet;
      end;

      sunapXsave := 0;

    end;



   if isNeyukLoad=false then  //당일치만 대기상태 변경하자.
   begin
     {ma_jubsu
          gubun
          10 : 접수
          0 : 접수
          1: 진료시작
          2: 진료종료(수납대기)
          3: 수납완료
          5: 숙박입원
          6: 낮 입원}

        // 외래는 수납대기 ('2') 상태로 변경---------------------------------------------
        if cbIO.ItemIndex = 0 then     //ma_jubsu 변경
        begin
              ChangeStatus2(
                    jinryo_f.DaegiFrame_fr1.DtDate.date,
                    ma_jubsu_id,
                    lblChart.Caption,
                     jubsu_status,// '2',  진료종료(수납대기)
                     treatRoom, //진료실
                     doc_Code)// cbDoc.ColumnItems[cbDoc.itemindex, 4]) //원장ID
         end
         else
         begin
           // 입원이면 그냥 저장

         end;

          // 대기표 갱신
         jinryo_f.DaegiFrame_fr1.daegiselect (jinryo_f.DaegiFrame_fr1.tsmain.TabIndex);

    // RP_requestCompleted 저장
    if ma_rp_RequestPK > 0 then
    begin
      // Save Referel PAD
      try

          saveRqComplete;

      except

        on E: Exception do
        begin
          Showmessage(E.Message + '[saveRqComplete fail.]');
        end;

      end;
    end;



   end;

     varValueChanged := false;




    // ToDo : 진료가 저장되면 저장되었다고 알리는 신호는 모든것을 초기화 시키자.
    //(kind : integer = 0); //0: 외래저장 1, 2: 입원저장
    if (isNeyukLoad = false )  then
    begin
      case  kind    of  //입원이면 퇴원처리하고 fieldClear 시키자.
      0:
          begin
              fieldClear;
          end;

      1, 2:

          begin
              showmessage('저장되었습니다.' +#10+ '[퇴원]버튼으로 퇴원처리 할 수 있습니다.');
          end;

      end;

    end;


    // grdJx2.RemoveRows(1, grdJx2.RowCount-1);
    // grdSangbyung.RemoveRows(1, grdSangbyung.RowCount-1);

    // grdSangByung.RowCount := 10;



    //락이 잠겨있으면 풀어준다. - 완료/ 보류 에서 실행

    ReleaseLockAll(  'HJinryo', V_UserID, GetIPAddress);

  end;




end;



function TJinryo_f.isGumjinDangIl( chart, jin_day, jubsu_id: string):boolean;
var
  tempQuery: TuniQuery;
  i: Integer;

begin
    result:= false;

     try


        tempQuery := TuniQuery.Create(self);
        tempQuery.Connection := Dm_f.UniConnection1;


        with tempQuery do
        begin
            close;
            SQL.Clear;

            SQL.Add(' select * from jinryo_p ');
            SQL.Add(' where   chart=:chart and jin_day=:jin_day and gub_gu > 0  and jubsu_id <>:jubsu_id');
            paramByName('chart').asString    := chart;
            paramByName('jin_day').asString  := jin_Day;
            paramByName('jubsu_id').AsString := jubsu_id;
            open;
            if not isEmpty then
            begin
                result:= true;
            end;
       end;
      finally
          tempQuery.Free;
      end;

end;



function TJinryo_f.isJT018( chart, jin_day, jubsu_id: string):boolean;
var
  tempQuery: TuniQuery;
  i: Integer;

begin
    result:= false;

     try


        tempQuery := TuniQuery.Create(self);
        tempQuery.Connection := Dm_f.UniConnection1;


        with tempQuery do
        begin
            close;
            SQL.Clear;

            SQL.Add(' select * from ma_tjung ');
            SQL.Add(' where   chart=:chart and jubsu_id=:Jubsu_id and jin_day=:jin_day and refCod = ''JT018'' ');
            paramByName('chart').asString := chart;
            paramByName('jin_day').asString := jin_Day;
            paramByName('jubsu_id').asString := jubsu_id;
            open;
            if not isEmpty then
            begin
                result:= true;
            end;
       end;
      finally
          tempQuery.Free;
      end;

end;


procedure TJinryo_f.TJungCodeSave;
var
   k : integer;
   user_key     : string;
   su_key       : string;
   su_kor_name  : string;




begin

      //1. 건강검진 당일 진찰료 산정 이유
     if ( (isGumjinDangIl(ma_chart,
               FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
               ma_jubsu_id ) = true) //1. 검진있고 자신이 아니다.
          or ( cbSanCode3.itemIndex > 0   ))
            and  (nJinchalRyo > 0)
            and (isJT018(ma_chart,
               FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
               ma_jubsu_id) = false )then
     begin

           if not Assigned(InputHealthJinchalSayu_f) then
                InputHealthJinchalSayu_f := TInputHealthJinchalSayu_f.Create(application);


          user_key    := jinchalRyoCode;
          su_key      := jinchalRyoCode;
          su_kor_name :=            getSugaName(jinchalRyoCode);


                InputHealthJinchalSayu_f.lblSuKey.Caption := trim(su_key);

                InputHealthJinchalSayu_f.lblJulNo.Caption := inttostr(grdjx2.Row);


                InputHealthJinchalSayu_f.lblDocID.Caption :=
                    jinryo_f.cbDoc.ColumnItems[jinryo_f.cbDoc.itemindex, 4]; //ID


                InputHealthJinchalSayu_f.lblJinsKey.Caption :=  '0';
                InputHealthJinchalSayu_f.lblJubsuID.Caption := ma_jubsu_id;
                InputHealthJinchalSayu_f.lblJinDay.Caption  :=
                         FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date);



          InputHealthJinchalSayu_f.LoadData(ma_chart,
           FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
           ma_jubsu_id,
           user_key, su_Key, su_kor_name);




          if InputHealthJinchalSayu_f.ShowModal = mrOK then
          begin

          end;


     end;


      //2. TODO : 특정내역구분코드가 들어있는 행을 알고 있다가 특정내역을 넣자.


        for  k:= 0 to listBox2.Items.count -1 do
        begin

            {
              //1 jin_day
              //2 jin_sKey
              //3 Su_key
              //4 TeakRyeCode
             }

             LoadInputTeakJung(
                  ma_chart,
                  ma_jubsu_id,
                  substr(listBox2.Items[k], 1,'|'),
                  cbDoc.ColumnItems[cbDoc.itemindex, 4],
                  substr(listBox2.Items[k], 4,'|') ,    //aNeedTeakRyeCode,
                  substr(listBox2.Items[k], 2,'|') ,    //jin_skey
                  substr(listBox2.Items[k], 3,'|') ,    // suKey) ;
                  substr(listBox2.Items[k], 5,'|') ) ;   //JulNo
        end;




end;

// 상해외인 팝업

procedure TJinryo_f.Label1Click(Sender: TObject);
var
  pos: TPoint;
begin
  GetCursorPos(pos);
  SangweMenu.Popup(pos.x, pos.y);

end;

procedure TJinryo_f.V1Click(Sender: TObject);
begin
  Edit4.text := (Sender as TMenuItem).Hint;
end;

// 진료내역 로드 및 진료비계산 ================================================
// 해당진료일 내역 불러오기

procedure TJinryo_f.FieldSetJin(
  varGogekChart: string;
  jin_Day:string;
  nOldChojae: Integer = -1;
  nOldJongbeul: Integer = -1);
var
  temp_yy, temp_mm, temp_dd: Variant;

  i: Integer;
  sPortion, sSang, sTx, testcho, testcho2, testday: string;
  s_sunapek, s_gammyunek, s_bohum, s_misuek, s_chong, s_chung, s_bonin,
    s_bonin1, s_hyun, s_card, s_hyunreceipt, s_tong, s_chk, s2_chk,
    s_Nullchk: Integer;
  s_chojae, p_pid, sunapid: string;
  p_sunapak, p_kamak, p_misugeum, p_chong, p_chung, p_bonin, p_bonin1, p_cash,
    p_card, p_jojaein, p_tong, p_chojae: Integer;
   doc_code, treatRoom : string;
   sanTeakCode:string;
   juSangRow : integer;

begin


      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4];  //saID
      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];

  // Jinryo_s

  listBox2.Items.clear;  //특정내역 버퍼 삭제.

  varLastTeam := LoadLastTeamDocname(ma_chart);

  LblAge.Caption := naiCalc(ma_jumin, jin_day);//FormatDateTime('YYYY-MM-DD', dmain.Date));

  if LblAge.Caption = '' then
    LblAge.Caption := '20';

  with Dm_f.sqlJinryo do
  begin
    // 메모내역 불러오기
    close;
    SQL.Clear;
    SQL.Add(' Select cMemo, jin_day    ' + '   from cMemo             ' +
      '  where Chart   =:Chart   ' + '    and Jin_day =:Jin_day and team= :team ');
    paramByName('chart').asString := varGogekChart;
    paramByName('jin_day').asString := jin_day;//FormatDateTime('YYYY-MM-DD', dmain.Date);
    paramByName('team').asString := treatRoom;
    open;

    if not isEmpty then
    begin
      memChungGuMemo.text := StringReplace(fieldByname('cMemo').asString,
        #13#10, '', [rfReplaceAll]);
    end
    else
    begin
      memChungGuMemo.text := StringReplace(fieldByname('cMemo').asString,
        #13#10, '', [rfReplaceAll]);
    end;

    if cbIO.ItemIndex =0 then  //외래
    begin
        setJinryo_s(
              ma_jubsu_id,
             grdJx2,
             varChartno,
             treatRoom,//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
             doc_code,
             inttostr(cbIO.ItemIndex ),
             jin_day//FormatDateTime('YYYY-MM-DD', dmain.Date)
              );

        setJinryo_o(
             grdSangByung,
             varChartno,
             treatRoom,//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
             inttostr(cbIO.ItemIndex ),
             ma_jubsu_id,
             sanTeakCode,
             juSangRow,
             jin_day//FormatDateTime('YYYY-MM-DD', dmain.Date)
             );

             edtSanjung.Text:=  sanTeakCode;

    end
    else //입원이면...
    begin
        setJinryo_s(
              ma_jubsu_id,
             grdJx2,
             varChartno,
             treatRoom,//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
             doc_code,
             inttostr(cbIO.ItemIndex ),
             FormatDateTime('YYYY-MM-DD',  datetimepicker4.Date),
             FormatDateTime('YYYY-MM-DD',  now));

        setJinryo_o(
             grdSangByung,
             varChartno,
             treatRoom,//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
             inttostr(cbIO.ItemIndex ),
             ma_jubsu_id,
             sanTeakCode,
             juSangRow,
             FormatDateTime('YYYY-MM-DD', datetimepicker4.Date),
             FormatDateTime('YYYY-MM-DD', now));

    end;
    edtSanjung.Text:= sanTeakCode;

    LoadRichData(ma_chart);
    LoadSunapMemo(ma_chart, strtodate(Jin_day) );//DaegiFrame_fr1.dtDate.date);

    LoadLabRemark(ma_jubsu_id);

    LoadReferList(rpPk);
    lblReferHospCode.Caption  := ma_referHospCode;
    lblReferHospDoc.Caption   := '담당의: ' +  ma_referHospDoc;

    LoadPatientFace(ma_chart, imgPic);

    loadChkList(edtChkList,   ma_chart);


  end;

end;


// 원외처방전내역 불러오기 ...........................................................

procedure TJinryo_f.SetWonwe(sChart, sJin_day: string; saved: Boolean);

var
  iorder: Integer;
begin

  Edit7.text := ''; // 처방일련번호
  Edit1.text := ''; // 처방투약일수
  grdRX.RemoveRows(1, grdRX.RowCount - 1);;
  with Dm_f.SqlTemp13 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from wonwe_p  where chart=:Chart and jin_day=:Jin_day ');
    paramByName('chart').asString := sChart;
    paramByName('jin_day').asString := sJin_day;
    open;
    First;
    if not isEmpty then
    begin
      is_Wonwe := true;
      Edit7.text := fieldByname('seqno').asString;
      // btnWonwe.Hint := '[처방내역]';
      Dm_f.sqlTemp14.close;
      Dm_f.sqlTemp14.SQL.Clear;
      // 2004-01-01


//      Dm_f.sqlTemp14.SQL.Add (' select s.su_kor_name,s.su_key, w.jin_qty, w.div, w.jin_ilsu,');
//      Dm_f.sqlTemp14.SQL.Add (' s.wo_dan,s.su_sobulru from wonwe_s w, suga s where s.su_key=w.code and  ');
//      Dm_f.sqlTemp14.SQL.Add (' w.jin_day=:jin_day and w.seqno=:seqno order by w.seq');

    Dm_f.sqlTemp14.SQL.Text:=
      'select *,                                                                                                                                                            '
        + #10 + '(select top 1 Su_kor_name from suga s where s.su_key= g.code   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as Su_kor_name,    '
        + #10 + '(select top 1 su_key from suga s where s.su_key= g.code  and (s.sugu1 <>''삭제'' or s.sugu1 is null )  order by s.su_apply desc ) as su_key,              '
        + #10 + ' g.jin_qty, g.div, g.jin_ilsu,                                                                                                                            '
        + #10 + '(select top 1 bo_dan from suga s where s.su_key= g.code   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as bo_dan,              '
        + #10 + '(select top 1 ja_dan from suga s where s.su_key= g.code   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as ja_dan,              '
        + #10 + '(select top 1 il_dan from suga s where s.su_key= g.code   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as il_dan,              '
        + #10 + '(select top 1 dan_qty from suga s where s.su_key= g.code   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as dan_qty,            '
        + #10 + '(select top 1 su_gu1 from suga s where s.su_key= g.code   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_gu1,              '
        + #10 + '(select top 1 su_soa from suga s where s.su_key= g.code   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_soa,              '
        + #10 + '(select top 1 su_sobulru from suga s where s.su_key= g.code   and (s.sugu1 <>''삭제'' or s.sugu1 is null ) order by s.su_apply desc ) as su_sobulru,      '
        + #10 + '(select top 1 bo_dan from                                                                                                                                 '
        + #10 + '      (select bo_dan,su_apply from suga where su_key=g.code and (sugu1 <>''삭제'' or sugu1 is null )                                                      '
        + #10 + '	      union all                                                                                                                                          '
        + #10 + '         select bo_dan,su_apply from suga_history where su_key=g.code ) m where   :jin_day >=m.su_apply                                                   '
        + #10 + '           order by su_apply desc) as Bodan                                                                                                               '
        + #10 + ' from wonwe_s g                                                                                                                                           '
        + #10 + ' where                                                                                                                                '
        + #10 + ' g.jin_day=:jin_day and g.seqno=:seqno                                                                                                                    '
        + #10 + '  order by g.seq                                                                                                                                          ';


      Dm_f.sqlTemp14.paramByName('jin_day').asString := sJin_day;
      Dm_f.sqlTemp14.paramByName('seqno').asString :=  fieldByname('seqno').asString;
      Dm_f.sqlTemp14.open;
      Dm_f.sqlTemp14.First;
      if not Dm_f.sqlTemp14.isEmpty then
      begin

        // 원외처방전 그리드 초기화
        grdRX.RemoveRows(1, grdRX.RowCount - 1);;
        ClearMerit; // grdJx2에있는 기존의 저가가산금 삭제

        // grdSangByung.Cells[0, 0] := '1';
        iorder := 1;

        Edit1.text := '0';

        while not Dm_f.sqlTemp14.eof do
        begin
          // btnWonwe.Hint := btnWonwe.Hint + #13#10 +
          // dm_f.sqlTemp14.FieldByName('su_kor_name').AsString;
          grdRX.AddRow;
          grdRX.Cells[0, grdRX.RowCount - 1] :=
            Dm_f.sqlTemp14.fieldByname('su_kor_name').asString;

          if Edit1.text < Dm_f.sqlTemp14.fieldByname('jin_ilsu').asString then
          begin
            Edit1.text := Dm_f.sqlTemp14.fieldByname('jin_ilsu').asString;
          end;

          if Dm_f.SqlTemp13.fieldByname('jongbeul').asString <> '3' then
          begin
            if ((Dm_f.sqlTemp14.fieldByname('bodan').AsInteger > 0) and
              (Dm_f.sqlTemp14.fieldByname('su_sobulru').IsNull = false) and
              (Dm_f.sqlTemp14.fieldByname('su_sobulru').asString = '9')) then
              InsertMerit(Dm_f.sqlTemp14.fieldByname('su_kor_name').asString,
                Dm_f.sqlTemp14.fieldByname('su_key').asString, '0', '0',
                Dm_f.sqlTemp14.fieldByname('jin_qty').asfloat,
                Dm_f.sqlTemp14.fieldByname('div').asfloat,
                Dm_f.sqlTemp14.fieldByname('bodan').AsInteger, iorder,
                Dm_f.sqlTemp14.fieldByname('jin_ilsu').AsInteger);
          end;

          Dm_f.sqlTemp14.next;
        end;

      end;
      // btnWonwe.ShowHint := True;
    end
    else
    begin
      is_Wonwe := false;
      grdRX.RowCount := 9;
      ClearMerit;
    end;
  end;
end;

// 퇴장방지가산 grid에 넣기

procedure TJinryo_f.InsertMerit(sname, sKey, sSoa, sSimya: string;
  qty, ndiv: single; danga, iorder, ilsu: Integer);
begin
  grdJx2.AddRow;

 grdJx2.CellProperties[1, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[2, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[8, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[9, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[10, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[11, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[12, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[13, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[14, grdJx2.RowCount -  1].ReadOnly := true;
 grdJx2.CellProperties[15, grdJx2.RowCount -  1].ReadOnly := true;


  grdJx2.Cells[0, grdJx2.RowCount - 1] := '99';
  grdJx2.Cells[1, grdJx2.RowCount - 1] := sname;
  grdJx2.floats[2, grdJx2.RowCount - 1] := qty;
  grdJx2.floats[3, grdJx2.RowCount - 1] := ndiv;
  grdJx2.ints[5, grdJx2.RowCount - 1] := danga;
  grdJx2.ints[6, grdJx2.RowCount - 1] := 1;
  grdJx2.Cells[7, grdJx2.RowCount - 1] := sKey;
  grdJx2.Cells[8, grdJx2.RowCount - 1] := '1';
  grdJx2.Cells[9, grdJx2.RowCount - 1] := '09';
  grdJx2.Cells[10, grdJx2.RowCount - 1] := sSoa;
  grdJx2.Cells[11, grdJx2.RowCount - 1] := sSimya;
  grdJx2.ints[12, grdJx2.RowCount - 1] := iorder;
  grdJx2.ints[14, grdJx2.RowCount - 1] := ilsu;
  grdJx2.ints[4, grdJx2.RowCount - 1] :=
    round(Round2(danga * qty * ndiv * ilsu, 0));
end;
// grdJx2에있는 기존의 저가가산금 삭제 .....................................

procedure TJinryo_f.ClearMerit;
var
  i: Integer;
begin
  for i := grdJx2.RowCount - 1 downto 0 do
  begin
    if grdJx2.Cells[0, i] = '99' then
      grdJx2.RemoveRows(i, 1);
  end;
end;

procedure TJinryo_f.cntSpecialListClick(Sender: TObject);
begin

end;


// jinryo_s 저장  ============================================================

procedure TJinryo_f.insertjin_s(
      JubsuID : string;
      ADate: TDateTime;
      AChart: string;
      aTeam: string;
      aDoc: string;
      isInpat:string;
      aGrid: TAdvStringGrid;     // grdJx2
      saveKind:integer = 1;      // saveKind 0: save 1: 보류
      isExamEmergency:string ='0');  //0:no Emergency  1: Emergency
//
var
  ARow       : Integer;
  AG_Key     : string;
  AGroupCode : string;
  jin_day    : string;
  jin_time   : TDateTime;

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

  risResult: TRisResult;

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

  iremark: string;
  isHealth: string;

  ms: TMemorystream;

   doc_code, treatRoom, docName : string;


   stat2: boolean;
   nRadioIdx : integer;

   WsuGu3: string;

   k : integer;
   teakjungCode: string;
   g_check : string;

   nSugaGeum : integer; //'S'면 수가의 단가 'G'면 Group의 합계

   EngHospitalName : string;
   EngDoctorName   : string;
   aUserKey : string;
begin



      isWonwe := false;

      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4];
      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];




  // jinryo_s에 데이터 넣을 때 chart_s에 데이터 넣고
  // jinryo_s에 데이터 지울 때 chart_s에 데이터 지운다.
  // jinryo_o에서 치아번호를 가져가고 =>치아번호 컨버젼.
  // jinryo_s에서 치료내역을 가져간다.

  if (AChart <> '') then
  begin


    //청구심사 메모 저장
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

            if isNew then
            begin
              close;
              SQL.Clear;
              SQL.Add(' insert into cMemo ( chart, jin_day, cmemo, team, isInPat) ' +
                '            values (:Chart,:Jin_day,:cmemo, :team, :isInPat)');
            end
            else
            begin
              close;
              SQL.Clear;
              SQL.Add(' update cMemo            ' + '    set cmemo=:cmemo     '
                + '  where chart=:Chart     ' + '    and jin_day=:Jin_day and team=:team and isInPat=:isInPat');
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

  // ==============================================================================
  // 차트 자료를 dChart에도 저장
  // ==============================================================================
  // chart_s를 지운다
  // --------------------------------------------------------------------
  FormInit.Free;

  { //최초내원일과 최종내원일을 먼저 써놓고,
    //바뀐 최초내원일과 최종내원일을 다시쓴다.
    //===================================================================================================================
    if not DirectoryExists(extractFilePath(paramStr(0)) + 'DayTracer') then
    MkDir(extractFilePath(paramStr(0)) + 'DayTracer');
    todayDate := formatDateTime('YYYY-MM-DD', now);
    currentFile := extractFilePath(paramStr(0)) + 'DayTracer\' + 'DayTracer' + TodayDate + '.txt';

    with dm_f.SqlWork do
    begin
    Close;
    Sql.Clear;
    Sql.Add('select first_day, last_day from injek where chart=:chart');
    ParamByName('chart').AsString := AChart;
    open;
    varFirstD := fieldByName('first_day').asString;
    varLastD := fieldByName('Last_day').asString;
    end;
    if not FileExists(currentFile) then
    begin
    AssignFile(f, currentFile);
    Rewrite(f);
    writeln(f, formatDateTime('YYYYMMDD hhnnss', now) + '=>' + AChart + '[최초내원일:' + varFirstD + '=>최종내원일:' + varLastD + ']');
    closefile(f);
    end
    else
    begin
    AssignFile(f, currentFile);
    append(f);
    writeln(f, formatDateTime('YYYYMMDD hhnnss', now) + '=>' + AChart + '[최초내원일:' + varFirstD + '=>최종내원일:' + varLastD + ']');
    closefile(f);
    end;
    //=================================================================================================================== }

  // ==============================================================================

  with Dm_f.sqlJinryo do
  begin // injek에 최종내원일을 갱신한다
    close;
    SQL.Clear;
    SQL.Add('update ma_gogek_basic set first_day=:first_day, last_day=:last_day where chart=:chart');
    paramByName('chart').asString := AChart;

    { if (gogek_f.edtFirst.Text = '') or (gogek_f.edtFirst.Text = '    -  -  ') or (gogek_f.edtFirst.Text = '____-__-__') then begin
      //gogek_f.edtFirst.Text := FormatDateTime('YYYY-MM-DD', ADate);
      //main_f.GogekFirst := FormatDateTime('YYYY-MM-DD', ADate);
      gogek_f.edtFirst.Text := '2000-01-01';
      main_f.GogekFirst := '2000-01-01';
      end; }// 2009-03-03

    // 최초내원일 갱신

    if (varFirstDay <> '') then
    begin
      if (ADate < StrToDate(varFirstDay)) then
        paramByName('first_day').asString := FormatDateTime('YYYY-MM-DD', ADate)
      else
        paramByName('first_day').asString := varFirstDay;
    end
    else
    begin
      paramByName('first_day').asString := FormatDateTime('YYYY-MM-DD', ADate);
    end;

    // 최종내원일 갱신
    if (varlastDay = '') or (varlastDay = '    -  -  ') or
      (varlastDay = '____-__-__') then
    begin
      // main_f.edtLast.Text := FormatDateTime('YYYY-MM-DD',  ADate);
      ma_last := FormatDateTime('YYYY-MM-DD', ADate);
      varlastDay := FormatDateTime('YYYY-MM-DD', ADate);
    end;

    if ADate > StrToDate(varlastDay) then
      paramByName('last_day').asString := FormatDateTime('YYYY-MM-DD', ADate)
    else
      paramByName('last_day').asString := varlastDay;
    execsql;
  end;
  // 저장되어있던 jinryo_s , jinryo_o 를 지운다
  { //2012.10.12
    // 이렇게 지우고 다시 insert시키면 ID값이 새로 생겨서 두 DB간에 테이블을 비교할 수 없게되어
    // 새로운 레코드를 중복해서 insert시키는 결과를 낳는다.
    // 번거롭더라도 id값이 존재하는지 확인하고 insert/update로 구분하자...
    //2013.01.03
    //이렇게 하면...지운데이터에 대해서

    Close;
    Sql.Clear;
    Sql.Add('delete from jinryo_s where chart=:chart and jin_day=:jin_day');
    ParamByName('chart').AsString := Achart;
    ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD',
    ADate);
    ExecSql;

    Close;
    Sql.Clear;
    Sql.Add('delete from jinryo_O where chart=:chart and jin_day=:jin_day');
    ParamByName('chart').AsString := Achart;
    ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD',
    ADate);
    ExecSql;
  }



  // jinryo_s , jinryo_o 를 저장한다



  // Jinryo_O 저장 시작
  for ARow := 1 to grdSangByung.RowCount - 1 do
  begin
    if (grdSangByung.Cells[6, ARow] <> '' )
      and (grdSangByung.Cells[19, ARow] <> 'D' )
       then // 상병코드가 있으면
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
    end
    else
    begin
      with Dm_f.sqlJinryo do
      begin
         close;
         sql.Clear;
        if grdSangByung.Cells[19, ARow] = 'D'  then
        begin
          SQL.text := 'delete from jinryo_O                          ' + #10#13 +
            'where id=:id';
          paramByName('id').asString := grdSangByung.Cells[18, ARow];
          execsql;
        end;

      end;
    end;
  end;






  // Delete   RP_requestUseJinsKey
  Delete_RP_requestUseJinsKey(  ma_rp_RequestPK  ) ;


  //Epoch mdb 연결 과 삭제.
  EpochConnectNDeleteMDB(ma_jubsu_id);

  for ARow := 1 to aGrid.RowCount - 1 do
  begin // AGrid = grdJx2
     jinsKey := aGrid.Cells[18, ARow];

    if aGrid.Cells[30, ARow] ='D'  then // Delete Tag
    begin



       DeleteJinryo_s(jinsKey);//grdJx2.Cells[18, ARow]);


       continue;
    end;


    WsuGu3 := aGrid.Cells[11, ARow] ;


    if    ((WsuGu3 = '09')     //내복
        or (WsuGu3 = '10'))    // aGrid.Cells[11, ARow] 외용
        and (aGrid.Cells[25, Arow] = '' )  then   //Su_GU3=09 조제약 그리고  예외코드 없으면
    begin

       isWonwe := true;
       lstWonweNo.items.add(aGrid.Cells[32, Arow]); //wonweNo

    end;
    //원외투약  조제약이 하나라도 있으면 처방전을 보이자.
    varSu_Key      := aGrid.Cells[19, ARow];

    teakjungCode   := aGrid.Cells[28, ARow];
    jin_time := now;

    if aGrid.Cells[10, ARow] = '9' then
    begin // su_gu1 이 group
      AG_Key := trim(aGrid.Cells[9, ARow]); // su_key
    end;


    with Dm_f.sqlJinryo do
    begin

      close;
      SQL.Clear;
      SQL.text := 'select jins_key from jinryo_s' + #10#13 +
      // 'where jins_key = '+''''+ AGrid.Ints[16, ARow]+'''' ;
        'where jins_key = :jinsKey ';
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
        SQL.Add('jin_ilsu,jin_danga,dan_qty,g_check,group_key,sort_key, except_code, jubsu_id, moduser, modday,');
        SQL.Add('div,Hwakin_key, modality, user_key, user_name, team, doc_code, isInPat, wonweNo )');
        SQL.Add(' values (:chart,:jin_day,:Iorder,:su_gu1,:su_gu2,:su_gu3,:gub_gu, :su_sobulru,');
        SQL.Add(':gasan, :jin_soa,:jin_simya,:su_kor_name,:su_key,:jin_qty,:jin_time, :su_eng_Name, :tjungcode,');
        SQL.Add(':jin_ilsu,:jin_danga,:dan_qty,:g_check,:group_key,:sort_key, :except_code,:jubsu_id, :moduser, :modday,');
        SQL.Add(':div,:Hwakin_key, :modality, :user_key, :user_name, :team, :doc_code, :isInPat, :wonweNo)');
      end
      else
      begin // Update

        close;
        SQL.Clear;
        SQL.text := 'update jinryo_s  set' + #10#13 +
          'chart= :chart,jin_day= :jin_day,Iorder= :Iorder,su_gu1= :su_gu1,su_gu2= :su_gu2,su_gu3= :su_gu3, gasan=:gasan, team=:team, doc_code=:doc_code, su_eng_Name=:su_eng_Name ,'
          + #10#13 +
          'jin_soa= :jin_soa,gub_gu=:gub_gu, moduser=:moduser, modday=:modday, jin_simya= :jin_simya,su_kor_name= :su_kor_name,su_key= :su_key, jin_time=:jin_time, isInPat=:isInPat,jubsu_id=:jubsu_id,'
          + #10#13 +
          'jin_qty= :jin_qty,jin_ilsu= :jin_ilsu,jin_danga= :jin_danga,dan_qty= :dan_qty, user_key=:user_key, user_name=:user_name, except_code=:except_code, wonweNo=:wonweNo, '
          + #10#13 +
          'g_check= :g_check,group_key= :group_key,sort_key= :sort_key,div= :div,Hwakin_key= :Hwakin_key , modality=:modality, su_sobulru=:su_sobulru , tjungcode=:tjungcode'
          + #10#13 + ' where jins_key=:jins_key ';

        paramByName('jins_key').asString := jinsKey; // AGrid.Cells[18,ARow];

      end;

      paramByName('chart').asString := AChart;
      paramByName('jubsu_id').asString := ma_jubsu_id;
      // ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD', ADate) ;
      paramByName('jin_day').AsDateTime  := strtodate(aGrid.Cells[22, ARow]);// ADate;
      paramByName('jin_time').AsDateTime := jin_time;
      paramByName('Iorder').asString := aGrid.Cells[14, ARow];
      paramByName('su_kor_name').asString := aGrid.Cells[20, ARow];
      paramByName('su_key').asString := varSu_Key; // AGrid[7, ARow];

      paramByName('team').asString := aTeam;
      paramByName('doc_Code').asString := aDoc;
      // cbDoc.ColumnItems[cbDoc.itemindex, 0];

      paramByName('isInpat').AsString := isInpat;

      paramByName('modDay').AsDatetime := now;
      paramByName('modUser').AsString  :=GetIPAddress +'|'+ GetLocalComputerName;



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
        g_check :=    'G';
        paramByName('g_check').asString := g_check;
      end
      else
      begin
         g_check :=    'S';
        paramByName('g_check').asString := g_check;
//        paramByName('group_key').asString := aGrid.Cells[31, ARow];//AG_Key;
      end;
      paramByName('group_key').asString := aGrid.Cells[31, ARow];//Group_Key

      paramByName('sort_key').AsInteger   := ARow;
      paramByName('except_code').AsString := aGrid.Cells[25, ARow];
      paramByName('su_eng_Name').AsString := aGrid.Cells[24, ARow];
      paramByName('su_sobulru').AsString  := aGrid.Cells[27, ARow];
      paramByName('tjungcode').AsString   := aGrid.Cells[28, ARow];
      paramByName('wonweNo').AsString     := aGrid.Cells[32, ARow];

      execsql;

      if isNew = true then
      begin
        close;
        SQL.Clear;
        SQL.text := ' select @@Identity as sid';
        open;

        sId := fieldByname('sid').asString;
        jinsKey := sId;

        aGrid.Cells[18, ARow] := sId;

      end
      else
      begin
        sId := jinsKey ;
      end;
    end;



     nowTime := now;

     jin_day := aGrid.Cells[22, ARow];
     AGroupCode  := trim( aGrid.Cells[31, ARow]) ;
      //Epoch 저장
      if  ((AGroupCode = '+JLAB')
          and (aGrid.Cells[0, ARow] <> 'GR'))  //EPOCH
      then
      begin
            saveEPOCHMDB(
                formatDatetime('YYYYMMDDhhnn', jin_time) ,   //Jin_Day   201906171016
                ma_jubsu_id ,
                AChart,       //Chart
                edtName.Text, //Name
                ma_jumin,
                isInpat,
                aTeam, //teamCode
                aTeam, //teamNaame
                aDoc,  //Doc_code
                formatDatetime('YYYYMMDDhhnn', jin_time) ,   //Jin_Day2   201906171016
                aGrid.Cells[9, ARow],//varSu_Key,
                ARow) ;
      end;

//   {$IFNDEF DEBUG}

       {
      PRIMOVIST
      prohance

      IOPA370
      IOPA300}

      aUserKey:= trim( uppercase(aGrid.Cells[9, ARow]) );


      if (  (aGrid.Cells[0, ARow] = 'GR')  and
             (aGrid.Cells[8, ARow] <> '')
         ) or   // is Group?
            (
                (
                    (
                     (aUserKey      = 'E6541')  or  (aUserKey = 'ZE6541')
                    )
                    and (uppercase(aGrid.Cells[8, ARow]) = 'SC')   //Modality
                    and ( trim(uppercase(aGrid.Cells[31, ARow]) )<>   '+E6541' )
                )  //EKG
           or   (aUserKey = 'CDCOPY' )
           or   (aUserKey = 'CDCOPY2')
           or   (aUserKey = 'IMAX350' )
           or   (aUserKey = 'IMAX300' )
           or   (aUserKey = 'ZEECP' )    //zeecp
           or   (aUserKey = 'ZEECP' )    //zeecp
           or   (aUserKey = 'PRIMOVIST') //MR조영제    Modality JOM
           or   (aUserKey = 'PROHANCE')  //prohance    MR조영제  Modality JOM
           or   (aUserKey = 'IOPA370')   //CT 조영제   Modality JOC
           or   (aUserKey = 'IOPA300')   //CT 조영제   Modality JOC
            )
         then // modality
      begin
        if (configvalue.varImageDBSaveMode = '1') then// and (saveKind=1) then // save PACS RIS
        begin

              EngDoctorName   := LoadDocEngNameFromSawonWithID(cbDoc.ColumnItems[cbDoc.itemindex, 4]);   //'Dr.Kim';
              EngHospitalName := configValue.varsaupEngname;// 'Human Imaging Center';//configValue.varsaupname;

              risResult := RisSave(4,
                    memRis,
                    chkAsXML,
                    aDatetime,//nowTime, // nowTime
                    EngDoctorName,
                    EngHospitalName,
                    '',     //PatAdmitKind
                    memLabRemark.text,//       aReasonForStudy   : string='';
                    edtCc.Text,//       aClinicalInfo     : string='';
                    jinsKey,//aGrid.Cells[18, ARow], // jins_Key
                    aUserKey,//aGrid.Cells[9, ARow], // user_key
                    stringReplace ( aGrid.Cells[1, ARow], '~', '-', [rfReplaceAll]),// GroupName   aName, ' ', '', [rfReplaceAll]);
                    ma_jubsu_id // seqNo                              dm
                    );


              if risResult.aResult = true then
                Showmessage(risResult.aMsgIn);

        end;



        if isNew = true then
        begin // insert  ikind=0
          ikind := 0;
        end
        else
        begin // update  ikind=1
          ikind := 1;
        end;


        orderID     := aGrid.Cells[18, ARow];// FormatDateTime('YMMDDHHNNSSZ', nowTime);
        accessionID := orderID;//FormatDateTime('YYMMDDHHNNSSZZ', nowTime);
        jin_sid     := aGrid.Cells[18, ARow];
        chart       := ma_chart;


        //ToDo : 갑상선 환자 중 왜 한글 이름이 안 들어가는 경우가 있는 것인가ㅣ?
        if trim( ma_paName) <> '' then
            hname := ma_paName
        else
            hname :=trim( edtname.Text);

        ename := ma_PaEngName;
        birth := juminToBirth(ma_jumin);
        gender := jumintogender(ma_jumin);
        age := jumintoNai(ma_jumin);
        su_kor_name := aGrid.Cells[1, ARow];
        su_eng_name := aGrid.Cells[24, ARow];
        doctor := cbDoc.ColumnItems[cbDoc.itemindex, 4];
        sector := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];
        order_day := FormatDateTime('YYYYMMDD', aDate);//nowTime);
        order_time := FormatDateTime('HHNNSS', nowTime);
        su_key := aGrid.Cells[9, ARow];
        jin_ilsu := aGrid.Cells[5, ARow]; //일수
        reserve_time := '000000';
        emergency := isExamEmergency;
        sect      := '1';
        docName   :=   cbDoc.ColumnItems[cbDoc.itemindex, 2]; //LoadDocNameFromTeam(doctor) ;
        modality  := aGrid.Cells[8, ARow];
        studyID   := orderID +  aGrid.Cells[18, ARow];  //FormatDateTime('YYYYMMDDHHNNSS', nowTime) +
        referHospCode := ma_referHospCode;

        iremark:= trim(memLabRemark.Text);

       // edtChkList.PlainText :=true;
        if trim(edtChkList.Text) <> '' then
        begin
              isHealth:='1';
        end
        else
        begin
              isHealth:='';
        end;
      //   edtChkList.PlainText :=false;

        saveOrderInfo(ikind, orderID, accessionID, jin_sid, chart, hname, ename,
          birth, gender, age, su_kor_name, su_eng_name, doctor, sector,
          order_day,
          order_time, su_key, jin_ilsu, reserve_time, emergency,
          sect, modality, studyID, treatRoom, docname, referHospCode, iremark, isHealth );

      end;




//   {$ENDIF DEBUG}



      //ToDo : 특정내역 버퍼에 집어넣기
      if trim(aGrid.Cells[28, ARow])  <> ''  then// aNeedTeakRyeCode
      begin

            listBox2.Items.Add(
                               aGrid.Cells[22, ARow] + '|' +     //1 jin_day
                               aGrid.Cells[18, ARow]+ '|' + // sId + '|' +                    //2 jin_sKey
                               varSu_Key +'|'+                //3 Su_key
                               aGrid.Cells[28, ARow]  +'|'+           //4 TeakRyeCode
                               inttostr(  aRow+1) );
      end;





  end;



end;



//Epoch ConnectNDelete   MDB
procedure TJinryo_f.EpochConnectNDeleteMDB( Jubsu_ID : string );
var
     MDbFileName : string;
begin

     MDbFileName := ExtractFileDir(Application.ExeName) + '\EpochData\EpochExam.mdb';


  if dm_f.uniConnection4.Connected = false then
    dm_f.uniConnection4.ConnectString :=
         'Provider Name=Access;Database=' + MDbFileName ;


//   with dm_f.sqlEpoch  do
//   begin
//       close;
//       sql.clear;
//       sql.text:=  'delete from tblWorkList  '  + #10+
//                   'where 검체번호=:Jubsu_ID ' ;
//       paramByName('Jubsu_ID').asString :=  Jubsu_ID  ;
//       execsql;
//
//       close;
//       sql.clear;
//       sql.text:=  'delete from tblOrderList        '   + #10+
//                   'where ResOcmNum = :Jubsu_ID     ' ;
//       paramByName('Jubsu_ID').asString :=  Jubsu_ID  ;
//       execsql;
//   end;
end;
//cahrt, jubsu_id, su_key
procedure TJinryo_f.saveEPOCHMDB(
    jin_day:string;
    Jubsu_ID : string;
    chart : string;
    pName : string;
    jumin : string;
    patInout : string;
    teamCode : string;
    teamName : string;
    docCode : string;
    jin_day2 : string;
    su_key : string;
    seqNO: integer);

const
    sqltblWorkListInsert_MEDIRO=
      '  insert into  ma_LabWorkList  '+#10+
      '    (pName                     '+#10+
      '    ,jumin                     '+#10+
      '    ,jin_day                   '+#10+
      '    ,Jubsu_ID                  '+#10+
      '    ,chart                     '+#10+
      '    ,patInout                  '+#10+
      '    ,teamCode                  '+#10+
      '    ,teamName                  '+#10+
      '    ,docCode                   '+#10+
      '    ,hospCode                  '+#10+
      '    ,su_key                    '+#10+
      '    ,jin_day2) values          '+#10+
      '    (:pName                    '+#10+
      '    ,:jumin                    '+#10+
      '    ,:jin_day                  '+#10+
      '    ,:Jubsu_ID                 '+#10+
      '    ,:chart                    '+#10+
      '    ,:patInout                 '+#10+
      '    ,:teamCode                 '+#10+
      '    ,:teamName                 '+#10+
      '    ,:docCode                  '+#10+
      '    ,:hospCode                 '+#10+
      '    ,:su_key                   '+#10+
      '    ,:jin_day2 )               ';

    sqltblWorkListInsert_MDB=
     '  insert into  tblWorkList     '+#10+
      '    (이름                     '+#10+
      '    ,주민번호               '+#10+
      '    ,접수일시               '+#10+
      '    ,검체번호               '+#10+
      '    ,차트번호               '+#10+
      '    ,환자유형               '+#10+
      '    ,진료과코드            '+#10+
      '    ,진료과명               '+#10+
      '    ,주치의                  '+#10+
      '    ,병동코드               '+#10+
      '    ,검사코드               '+#10+
      '    ,처방일시) values       '+#10+
      '    (:pName                    '+#10+
      '    ,:jumin           '+#10+
      '    ,:jin_day               '+#10+
      '    ,:Jubsu_ID             '+#10+
      '    ,:chart               '+#10+
      '    ,:patInout           '+#10+
      '    ,:teamCode     '+#10+
      '    ,:teamName              '+#10+
      '    ,:docCode                 '+#10+
      '    ,:hospCode            '+#10+
      '    ,:su_key                '+#10+
      '    ,:jin_day2 )              ';


      sqltblOrderListInsert_MDB   =
     '  insert into  tblOrderList     '+#10+     //ResINF
     '     (ResOcmNum           '+#10+    //  접수번호
     '     ,ResOdrSeq           '+#10+    //       ---> int  접수번호- 일련
     '     ,ResSeq              '+#10+    //       ---> int      오더 일련번호
     '     ,ResSubSeq           '+#10+    //       ---> int
     '     ,ResRsbAcp           '+#10+
     '     ,ResLabCod           '+#10+
     '     ,ResVolFlg           '+#10+
     '     ,ResRltSeq           '+#10+    //---> int
     '     ,ResRltVal           '+#10+
     '     ,ResRepTyp           '+#10+
     '     ,ResUpdDtm           '+#10+
     '     ,ResUpdUid           '+#10+
     '     ) values              '+#10+
     '     (:ResOcmNum           '+#10+   //   접수번호
     '     ,:ResOdrSeq           '+#10+   //        ---> int  접수번호- 일련
     '     ,:ResSeq              '+#10+   //        ---> int      오더 일련번호
     '     ,:ResSubSeq           '+#10+   //        ---> int
     '     ,:ResRsbAcp           '+#10+
     '     ,:ResLabCod           '+#10+
     '     ,:ResVolFlg           '+#10+
     '     ,:ResRltSeq           '+#10+   //---> int
     '     ,:ResRltVal           '+#10+
     '     ,:ResRepTyp           '+#10+
     '     ,:ResUpdDtm           '+#10+
     '     ,:ResUpdUid           '+#10+
     '     )                     ';


      sqltblOrderListInsert_MEDIRO   =
     '  insert into  ResINF     '+#10+     //ResINF
     '     (ResOcmNum           '+#10+    //  접수번호
     '     ,ResOdrSeq           '+#10+    //       ---> int  접수번호- 일련
     '     ,ResSeq              '+#10+    //       ---> int      오더 일련번호
     '     ,ResSubSeq           '+#10+    //       ---> int
     '     ,ResRsbAcp           '+#10+
     '     ,ResLabCod           '+#10+
     '     ,ResVolFlg           '+#10+
     '     ,ResRltSeq           '+#10+    //---> int
     '     ,ResRltVal           '+#10+
     '     ,ResRepTyp           '+#10+
     '     ,ResUpdDtm           '+#10+
     '     ,ResUpdUid           '+#10+
     '     ) values              '+#10+
     '     (:ResOcmNum           '+#10+   //   접수번호
     '     ,:ResOdrSeq           '+#10+   //        ---> int  접수번호- 일련
     '     ,:ResSeq              '+#10+   //        ---> int      오더 일련번호
     '     ,:ResSubSeq           '+#10+   //        ---> int
     '     ,:ResRsbAcp           '+#10+
     '     ,:ResLabCod           '+#10+
     '     ,:ResVolFlg           '+#10+
     '     ,:ResRltSeq           '+#10+   //---> int
     '     ,:ResRltVal           '+#10+
     '     ,:ResRepTyp           '+#10+
     '     ,:ResUpdDtm           '+#10+
     '     ,:ResUpdUid           '+#10+
     '     )                     ';

begin

   with dm_f.sqlEpoch  do
   begin
{    jin_day:string;
    Jubsu_ID : string;
    chart : string;
    pName : string;
    jumin : string;
    patInout : string;
    teamCode : string;
    teamName : string;
    docCode : string;
    jin_day2 : string;
    su_key : string);
}

       close;
       sql.clear;
       sql.text:=  'select * from tblWorkList  '+#10+
            '   where 차트번호 = :chart                '+#10+
            '   And 검체번호 = :jubsu_id          '+#10+
            '   And 검사코드    = :su_key           ';
       paramByName('Jubsu_ID').asString  :=   Jubsu_ID  ;
       paramByName('chart').asString     :=   chart  ;
       paramByName('su_key').asString    :=   su_key  ;
       open;

       if isEmpty then
       begin
           close;
           sql.clear;
           sql.text:=  sqltblWorkListInsert_MDB ;
           paramByName('pName').asString     :=  pName  ;
           paramByName('jumin').asString     :=   jumin ;
           paramByName('jin_day').asString   :=   jin_day ;
           paramByName('Jubsu_ID').asString  :=   Jubsu_ID  ;
           paramByName('chart').asString     :=   chart  ;
           paramByName('patInout').asString  :=   patInout ;
           paramByName('teamCode').asString  :=   teamCode ;
           paramByName('teamName').asString  :=   loadJinjryosil(teamCode);//)teamName ;
           paramByName('docCode').asString   :=   docCode ;
           paramByName('hospCode').asString  :=   '' ;
           paramByName('su_key').asString    :=   su_key  ;
           paramByName('jin_day2').asString  :=   jin_day ;
           execsql;
      end;


       close;
       sql.clear;
       sql.text:=  'select * from tblOrderList    '+#10+
            ' Where ResOcmNum = :ResOcmNum        '+#10+
            '   And ResOdrSeq = :ResOdrSeq        '+#10+
            '   And ResSeq    = :ResSeq           '+#10+
            '   And ResSubSeq = :ResSubSeq        '+#10+
            '   And ResLabCod = :ResLabCod        ' ;
       paramByName('ResOcmNum').asString     :=   Jubsu_ID  ;
       paramByName('ResOdrSeq').asString     :=  inttostr(seqNO)  ;
       paramByName('ResSeq'   ).asString     :=   '1'  ;
       paramByName('ResSubSeq').asString     :=   '0'  ;
       paramByName('ResLabCod').asString     :=   su_key  ;
       open;
       if isEmpty then
       begin

             close;
             sql.clear;
             sql.text:=  sqltblOrderListInsert_MDB ;
             paramByName('ResOcmNum').asString     :=   Jubsu_ID  ;
             paramByName('ResOdrSeq').asString     :=  inttostr(seqNO)  ;
             paramByName('ResSeq'   ).asString     :=   '1'  ;
             paramByName('ResSubSeq').asString     :=   '0'  ;
             paramByName('ResRsbAcp').asString     :=   '0'  ;
             paramByName('ResLabCod').asString     :=   su_key  ;
             paramByName('ResVolFlg').asString     :=   'C'   ;
             paramByName('ResRltSeq').asString     :=   '50'  ;
             paramByName('ResRltVal').asString     :=   ''   ;
             paramByName('ResRepTyp').asString     :=   ''   ;
             paramByName('ResUpdDtm').asString     :=   jin_day  ;
             paramByName('ResUpdUid').asString     :=   ''   ;
             execsql;
       end;
   end;


   with dm_f.sqlTemp12 do
   begin
{    jin_day:string;
    Jubsu_ID : string;
    chart : string;
    pName : string;
    jumin : string;
    patInout : string;
    teamCode : string;
    teamName : string;
    docCode : string;
    jin_day2 : string;
    su_key : string);
}

       close;
       sql.clear;
       sql.text:=  'select * from ma_labWorkList  '+#10+
            '   where chart = :chart                '+#10+
            '   And jubsu_id = :jubsu_id          '+#10+
            '   And su_key    = :su_key           ';
        paramByName('Jubsu_ID').asString  :=   Jubsu_ID  ;
       paramByName('chart').asString     :=   chart  ;
       paramByName('su_key').asString    :=  su_key  ;
       open;

       if isEmpty then
       begin
             close;
             sql.clear;
             sql.text:=  sqltblWorkListInsert_MEDIRO ;
             paramByName('pName').asString     :=  pName  ;
             paramByName('jumin').asString     :=   jumin ;
             paramByName('jin_day').asString   :=   jin_day ;
             paramByName('Jubsu_ID').asString  :=   Jubsu_ID  ;
             paramByName('chart').asString     :=   chart  ;
             paramByName('patInout').asString  :=   patInout ;
             paramByName('teamCode').asString  :=   teamCode ;
             paramByName('teamName').asString  :=   loadJinjryosil(teamCode);//)teamName ;
             paramByName('docCode').asString   :=   docCode ;
             paramByName('hospCode').asString  :=   '' ;
             paramByName('su_key').asString    :=  su_key  ;
             paramByName('jin_day2').asString  :=   jin_day ;
             execsql;
       end;

       close;
       sql.clear;
       sql.text:=  'select * from resinf          '+#10+
            ' Where ResOcmNum = :ResOcmNum        '+#10+
            '   And ResOdrSeq = :ResOdrSeq        '+#10+
            '   And ResSeq    = :ResSeq           '+#10+
            '   And ResSubSeq = :ResSubSeq        '+#10+
            '   And ResLabCod = :ResLabCod        ' ;

       paramByName('ResOcmNum').asString     :=   Jubsu_ID  ;
       paramByName('ResOdrSeq').asString     :=  inttostr(seqNO)  ;
       paramByName('ResSeq'   ).asString     :=   '1'  ;
       paramByName('ResSubSeq').asString     :=   '0'  ;
       paramByName('ResLabCod').asString     :=   su_key  ;
       open;

       if isEmpty  then
       begin
             close;
             sql.clear;
             sql.text:=  sqltblOrderListInsert_MEDIRO ;
             paramByName('ResOcmNum').asString     :=   Jubsu_ID  ;
             paramByName('ResOdrSeq').asString     :=  inttostr(seqNO)  ;
             paramByName('ResSeq'   ).asString     :=   '1'  ;
             paramByName('ResSubSeq').asString     :=   '0'  ;
             paramByName('ResRsbAcp').asString     :=   '0'  ;
             paramByName('ResLabCod').asString     :=   su_key  ;
             paramByName('ResVolFlg').asString     :=   'C'   ;
             paramByName('ResRltSeq').asString     :=   '50'  ;
             paramByName('ResRltVal').asString     :=   ''   ;
             paramByName('ResRepTyp').asString     :=   ''   ;
             paramByName('ResUpdDtm').asString     :=   jin_day  ;
             paramByName('ResUpdUid').asString     :=   ''   ;
             execsql;
       end;
   end;


end;
  {

   saveEPOCHMDB(cahrt, jubsu_id, su_key) ;
<tblWorkList>
이름
주민번호
접수일시
검체번호
차트번호
환자유형
진료과코드
진료과명
주치의
병동코드
검사코드
처방일시
ID


<tblOrderList>
ResOcmNum  접수번호
ResOdrSeq---> int  접수번호- 일련
ResSeq---> int      오더 일련번호
ResSubSeq---> int
ResRsbAcp
ResVolFlg
ResRltSeq---> int
ResRltVal
ResRepTyp
ResUpdDtm
ResUpdUid
}


// jinryo_p 저장 ==============================================================

procedure TJinryo_f.JinryobiSave(
    JubsuID : string;
    JinDate: string;
    team: string;
    doc_code:string;
    isInPat:string;
    aSunapKind: string = '0';
    varKind: string = '0');
var
  VarSpecial, sJInCheck, simya, VarJuminYear, sGongsang, Pjinryopid,
    sYongUa: string;
  PChong, PChung, PBonin, PBonin1, PCard, PCashYs, PCash, PYoungsu, Pkamak,
    PMisuak, PTong, Psunaphap, imsiCash, calCash: double;
  PCardname, PTeam, imsisunapak, imsicashkum: string;
  vdoctorcount: Integer;
  modFlag, insFlag: Boolean;
  imsichojae: Integer; // 2012.7.1
  varSatGasan: string;

  varPregnan: string;

  varSanjungTeakRye : string;  //jinryo_o 당일 진료시에 산정특례를 적욯하는가 1=yes 0=no

  varJaboId : string;
  Makam_Sabun: string;
   isBohum100, isJiwon :string;
begin

  if varChartno <> '' then
  begin

    if chkJang.Checked = true then // 장애인여부
      VarSpecial := '1'
    else
      VarSpecial := '0';


    if (copy(varJungNo, 7, 1) = '1') or (copy(varJungNo, 7, 1) = '2') or
      (copy(varJungNo, 7, 1) = '5') or (copy(varJungNo, 7, 1) = '6') then
      VarJuminYear := '19'
    else
      VarJuminYear := '20';

   if cbBohum100.Checked then // 보험100
      isBohum100 := '1'
    else
      isBohum100 := '0';

    isJiwon := edtJiwon.Text;

    // if chbGongsang.Checked then //공상여부
    // sGongsang := '1'
    // else
    // sGongsang := '0';

    sGongsang := trim(edtGongSang.text); // 공상여부

    if cbSanjungTeakRye.Checked = true then // 산정특례 적용여부
      varSanjungTeakRye := '1'
    else
      varSanjungTeakRye := '0';

    if chkPregnan.Checked then // 임산부여부
      varPregnan := '1'
    else
      varPregnan := '0';

    if chkJin.Checked then // 진찰료산정여부
      sJInCheck := '9'
    else
      sJInCheck := '0';

    // ********  2011.7   영유아 건강검진 당일
    // sancode3 := cbSanCode3.ItemIndex;
    // 0검진선택
    // 1차등수가 제외
    // 2영유아 건강검진 당일 진찰
    // 3일반건강검진 당일 진찰
    // 4생애전환기 건강검진 당일 진찰
    // 5암검진 당일 진찰

    // san3 := inttostr(sancode3);//'4';
    // case nChojae of
    // 1..4 :   Code := codekibon + San1 + San2 + San3; // 004, 014, 054; 904, 914, 954
    // end;

    sYongUa := inttostr(cbSanCode3.itemindex);

    // if chkYongUa.Checked then
    // sYongUa := '1'         //===>2
    // else
    // if chkIlban.Checked then
    // sYongUa := '2'   //===>3
    // else
    // if chkFirst.Checked then
    // sYongUa := '3'  //===>4
    // else
    // sYongUa := '0';
    // *********

    // if cmbdoctor.itemindex = -1 then
    // begin
    // if cmbdoctor.items.Count > 0 then
    // cmbdoctor.ItemIndex := 0;
    // vdoctorcount := 0;
    // end;

    simya := '';
    // ToDO : ReMake...
    // Makam_Sabun:=cbDoc.ColumnItems[cbDoc.itemindex, 4]; //SaBun
    Makam_Sabun := '1'; // SaBun

    if cbSatMorningGasan.Checked = true then
    begin
      varSatGasan := '1';
    end
    else
    begin
      varSatGasan := '0';
    end;

    if edtSimTime.text <> '' then
      simya := edtSimTime.text
    else
      simya := FormatDateTime('hhnn', now);

    // 2012.7.1
    imsichojae := cbChoje.itemindex;

    if (anotherTeeth = false) and ((artTeeth = true) or (afterArtTeeth = true)
      or (implteeth = true)) then
      imsichojae := 13;
    // *****


    with Dm_f.sqlJinryo do
    begin
      close;
      SQL.Clear;
      SQL.Add(' select * from jinryo_p ');
      SQL.Add(' where jubsu_id=:jubsu_id and isInPat=:isInPat');

//      SQL.Add(' where jubsu_id=:jubsu_id and chart=:chart and jin_day=:jin_day  and isInPat=:isInPat ');
//      SQL.Add(' and team=:team  and doc_code = :Doc_Code');
//      SQL.Add(' and chojae  <>  ''9'' and chojae  <>  ''0''  ');
      paramByName('jubsu_id').asString    := jubsuid;
//      paramByName('chart').asString       := varChartno;
//      paramByName('jin_day').asString     := JinDate;
//      paramByName('team').asString        := team;
//      paramByName('doc_code').asString    := doc_code;
      paramByName('isInPat').asString := isInPat;
      open;
      First;
      if isEmpty then // 당일수납분이 없으면
      begin
        // 2012.4.25
        imsisunapak := '0';
        imsicashkum := '0';
        if configvalue.varbohumSunap = '1' then
        begin
          imsisunapak := formatFloat('#', nSumBohumBonin + nSumBigubChong);
          imsicashkum := formatFloat('#', nSumBohumBonin + nSumBigubChong);

          // imsisunapak := IntToStr(grdDetailCost.Cells[1, 3].AsInteger + grdDetailCost.Cells[1, 4].AsInteger);
          // imsicashkum := IntToStr(grdDetailCost.Cells[1, 3].AsInteger + grdDetailCost.Cells[1, 4].AsInteger);
        end;

        JinryoPSave(
          JubsuID ,//ma_jubsu_ID,
          varChartno, // chart   (챠트번호)
          JinDate, // jin_day (진료일)
          '0', // kwamok
          inttostr(cbJong.itemindex + 1), // jongbeul (종별)
          ma_K_Number, // 증버호
          ma_PiboName, // 가입자명
          ma_Kiho, // 조합기호
          VarSpecial, // dup      (1=장애인)
          // naiCalc(main_f.edtJumin.text + main_f.edtJumin2.text,
          naiCalc(ma_jumin, FormatDateTime('YYYY-MM-DD', dmain.Date)),
          // nai
          inttostr(imsichojae + 1),
          // chojae      (초재구분)    IntToStr(cbChoje.itemindex + 1)
          sJInCheck, // gasan       (진찰료 산정인 경우=9)
          sYongUa, // gub_gu    //*******  2011.7 영유아 건강검진 당일  '0', //gub_gu
          formatFloat('#', nSumBohumChong + nJinchalRyo),
          // grdDetailCost.Cells[1, 0], //chong       (총 진료비)
          formatFloat('#', nSumChung),
          // grdDetailCost.Cells[1, 2], //chung       (청구액)
          '0', // kamak       (감면액)
          '0', // sunsugeum
          '0', // misugeum    (당일미수금)
          // sunapak (수납액) 진료실에서 저장시엔 수납액=0 으로 우선 처리 2012.1.15
          imsisunapak,
          // '0',  //IntToStr(grdDetailCost.Cells[1, 3].AsInteger +  grdDetailCost.Cells[1, 4].AsInteger),
          '0', // junsanchaek
          formatFloat('#', nJinchalRyo), // wnumLabel1.Caption,
          // jubsuak      (진찰료)
          '0', // NewYoungsuNo(strtodate(JinDate)), //youngsu_num,  //(영수증발급번호)
          '0', // kam_code
          '0', // kam_rate
          '0', // kam_sayu
          '0', // jin_gu,      (토탈차지이면 jin_gu=1, 증명료면 2)
          edtKyul.text, // kyulkwa      (진료결과)
          doc_code,//cbDoc.ColumnItems[cbDoc.itemindex, 4], // doc_code     (의사코드) // IntToStr(cmbdoctor.itemIndex + 1),
          '0', // jinryosil
          simya, // jin_time     (심야시간)
          '0', // jin_user
          aSunapKind, // sunap          (0 : 수납대기 1:수납완료 2:수납대기취소 3: 수납보류 )
          sGongsang, // gongsang     (공상구분)
          '0', // jojae11
          '0', // jojae21
          formatFloat('#', nSumBonin),
          // grdDetailCost.Cells[1, 3],  //bonin         (본인부담금)
          formatFloat('#', nSumBigubChong),
          // grdDetailCost.Cells[1, 4], //bonin1        (본인비급여)
          '0', // makam
          '0', // jusa
          '', // whan_day
          '', // whan_time
          '0', // whan_user
          '0', // account
          '0', // whanbulak
          '0', // card          (카드액)
          '', // CardCode
          '', // CardName      (카드명)
          '0', // JojaeIn       (현금영수증 액)
          '0', // JojaeOut      (1=소득공제 미제출 자료)
          Edit3.text, // extra,        (의약분업예외)
          '0', // wonwes        (처방일수)
          team, //cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
          // cbDoc.ColumnItems[cbDoc.itemindex, 0],  //진료실
          // IntToStr(cmbdoctor.itemIndex + 1),
          // IntToStr(gogek_f.cbTeam.itemindex + 1), //team (그동안 잘못되어있었다)
          '0', // remark        (영수증에 인쇄되는 내용)
          '0', // chart_id
          '0', // cmemo
          '0', // SunsuCard
          '0', // SunsuTong
          '0', // SunsuCash
          '0', // sunsucardcode
          '0', // sunsucardname
          '0', // sunsutongcode
          '0', // sunsutongname
          imsicashkum,
          // '0',  //IntToStr(grdDetailCost.Cells[1, 3].AsInteger +  grdDetailCost.Cells[1, 4].AsInteger), //Cash  (현금액)
          '0', // Tong  (무통장)
          '0', // TongName
          '0', // TongCode
          '1999-01-01', // Makam_day
          '0', // Makam_time
          '0', // Makam_chk
          Edit4.text, // wein     (상해외인)
          edtSanjung.text, // Tjung    (특정기호)
          '', // 2007.7.1
          '', // 2007.7.1
          '0', // 2007.7.1
          Makam_Sabun,
          varJaboId,
          varSatGasan,
          varPregnan,
          varSanjungTeakRye,
          inttostr(cbIo.ItemIndex),
           isBohum100,
           isJiwon);

        // toDo:왜 수납을 열면서 저장을 하나?
        // varKind=0 이므로 수납액,현금,카드는 전부 0 으로 처리한다.
        SunapPSave(varChartno, // chart   (챠트번호)
          JinDate, // jin_day (진료일)
          formatFloat('#', nSumBohumChong + nJinchalRyo),
          // grdDetailCost.Cells[1, 0],  //chong       (총 진료비)
          formatFloat('#', nSumChung),
          // grdDetailCost.Cells[1, 2],  //chung       (청구액)
          formatFloat('#', nSumBonin),
          // grdDetailCost.Cells[1, 3],  //bonin         (본인부담금)
          formatFloat('#', nSumBigubChong),
          // grdDetailCost.Cells[1, 4],  //bonin1        (본인비급여)
          // IntToStr(cmbdoctor.itemIndex + 1),
          cbDoc.ColumnItems[cbDoc.itemindex, 4],
          // (gogek_f.cbTeam.itemindex + 1),     //team   2009.9.23
          inttostr(cbChoje.itemindex + 1), // chojae
          '0', // sunap 생성여부(1=생성안함)
          configvalue.varbohumSunap); // varKind);

      end
      else
      begin
        // 2006.12.18 수납관련 수정(자동저장의 경우 진료실 벗어날때 카드등 금액이 없어짐
        // 원래 jinryo_p의 내용을 버퍼에 임시저장
        // 하지만 진료내역이 변경되었더라도 수납액, 현금액등은 변경시키면 안된다. 원래 수납액 보존

        Pjinryopid := fieldByname('jinryo_pid').asString;


        // nSumChong := FieldByName('chong').AsInteger;
        // nSumChung := FieldByName('chung').AsInteger;
        // nSumBohumBonin := FieldByName('bonin').AsInteger;
        // nSumBigub := FieldByName('bonin1').AsInteger;

        PCard := fieldByname('card').AsInteger; // 카드
        PCashYs := fieldByname('JojaeIn').AsInteger;
        // 현금영수증
        PCash := fieldByname('Cash').AsInteger; // 현금
        PYoungsu := fieldByname('sunapak').AsInteger;
        // 수납액
        Pkamak := fieldByname('kamak').AsInteger; // 감액
        PMisuak := fieldByname('misugeum').AsInteger;
        // 미수금
        PTong := fieldByname('Tong').AsInteger;
        PCardname := fieldByname('cardname').asString;
        Psunaphap := PCard + PCash + PCashYs + Pkamak + PMisuak;

        // ***********************************************************************    2008.12.19
        // if (PCash < 0) and ((PCard > PYoungsu) or (PCashYs >
        // PYoungsu)) then
        // begin //현금액이 - 인경우
        // imsiCash := PCash * (-1);
        // calCash := PCard + PCashYs + Pkamak + PMisuak
        // - PBonin;
        //
        // if imsiCash = calCash then
        // begin
        // PCash := 0;
        // PYoungsu := imsiCash + PBonin -
        // Pkamak;
        // end;
        // end;

        // if ((grdDetailCost.Cells[1, 3].AsInteger <> PBonin) or
        // (grdDetailCost.Cells[1, 4].AsInteger <> PBonin1))
        // and
        // (PCash > 0) and (PCard = 0) and (PCashYs = 0)
        // and (Pkamak = 0) and (PMisuak = 0) then
        // begin
        // PYoungsu := (grdDetailCost.Cells[1, 3].AsInteger
        // +
        // grdDetailCost.Cells[1, 4].AsInteger);
        // PCash := (grdDetailCost.Cells[1, 3].AsInteger +
        // grdDetailCost.Cells[1, 4].AsInteger);
        // end;
        // *************************************************************************

        if nSumBohumBonin <> PBonin then
        begin
          PBonin := nSumBohumBonin;
        end;

        if (nSumBigubChong > 0) and (nSumBigubChong <> PBonin1) then
        begin
          PBonin1 := nSumBigubChong;
        end;

        if nSumChong <> PChong then
        begin
          PChong := nSumChong;
        end;

        if nSumChung <> PChung then
        begin
          PChung := nSumChung;
        end;

        // if grdDetailCost.Cells[1, 3].AsInteger <> PBonin then
        // begin
        // PBonin := grdDetailCost.Cells[1, 3].AsInteger;
        // end;
        //
        // if (grdDetailCost.Cells[1, 4].AsInteger > 0) and (grdDetailCost.Cells[1, 4].AsInteger <> PBonin1) then
        // begin
        // PBonin1 := grdDetailCost.Cells[1, 4].AsInteger;
        // end;
        //
        // if grdDetailCost.Cells[1, 0].AsInteger <> PChong then
        // begin
        // PChong := grdDetailCost.Cells[1, 0].AsInteger;
        // end;
        //
        // if grdDetailCost.Cells[1, 2].AsInteger <> PChung then
        // begin
        // PChung := grdDetailCost.Cells[1, 2].AsInteger;
        // end;

        edtHwakin.text := fieldByname('HwakinNo').asString;
        edtYujikum.text := fieldByname('Yujikum').asString;
        edtBontype.text := fieldByname('bontype').asString;

        // --------------------------------------------------------------

        // 당일수납분이 이미 있으면 업데이트만
        JinryoPUpdate(
          JubsuID ,//ma_jubsu_ID,
          varChartno, // chart
          JinDate, // jin_day
          // '0', //kwamok
          inttostr(cbJong.itemindex + 1), // jongbeul
          ma_K_Number, ma_PiboName, ma_Kiho, // 조합기호
          VarSpecial, // dup,
          // naiCalc(main_f.edtJumin.text + main_f.edtJumin2.text, FormatDateTime('YYYY-MM-DD', dMain.date)), //나이
          naiCalc(ma_jumin, FormatDateTime('YYYY-MM-DD', dmain.Date)), // 나이
          inttostr(imsichojae + 1), // chojae,
          sJInCheck, // gasan
          sYongUa, // gub_gu  //*********  2011.7 영유아 건강검진 당일 '0', //gub_gu
          formatFloat('#', nSumBohumChong + nJinchalRyo), // chong       (총 진료비)
          formatFloat('#', nSumChung), // chung       (청구액)
          // IntToStr(Pkamak), //kamak       (감면액)
          // '0', //sunsugeum,
          // IntToStr(PMisuak), //misugeum    (당일미수금)
          // IntToStr(PYoungsu), //sunapak (수납액)
          // '0', //junsanchaek,
          formatFloat('#', nJinchalRyo),
          // IntToStr(Round(wnumLabel1.Caption)), //jubsuak,
          // '0', //kam_code,
          // '0', //kam_rate,
          // '0', //kam_sayu,
          // '0', //jin_gu, (토탈차지이면 jin_gu=1, 증명료면 2)
          edtKyul.text, // kyulkwa,
          doc_code, //cbDoc.ColumnItems[cbDoc.itemindex, 4],
          // IntToStr(cmbdoctor.itemIndex + 1), //doc_code,
          // '0', //jinryosil,
          simya, // jin_time,
          '0', // jin_user,
          aSunapKind, // sunap,
          sGongsang, // gongsang,
          // '0', //jojae11,
          // '0', //jojae21,
          formatFloat('#', nSumBonin), // bonin   Bohum
          formatFloat('#', nSumBigubChong), // bonin1 Bigup
          // '0', //makam,
          // '0', //jusa,
          // '', //whan_day,
          // '', //whan_time,
          // '0', //whan_user,
          // '0', //account,
          // '0', //whanbulak,
          // IntToStr(PCard), //card,
          // '', //cardcode,
          // PCardname, //cardname,
          // IntToStr(PCashYs), //JojaeIn,
          // '0', //JojaeOut,
          Edit3.text, // extra,
          // '0', //wonwes,
          team,//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0], // 진료실
          // cbDoc.ColumnItems[cbDoc.itemindex, 0],//IntToStr(cmbdoctor.itemIndex + 1), //team,
          // '0', //remark,
          // '0', //chart_id,
          // '0', //cmemo,
          // '0', //SunsuCard,
          // '0', //SunsuTong,
          // '0', //SunsuCash,
          // '0', //sunsucardcode,
          // '0', //sunsucardname,
          // '0', //sunsutongcode,
          // '0', //sunsutongname,
          // IntToStr(PCash), //Cash,
          // IntToStr(PTong), //Tong,
          // '0', //TongName,
          // '0', //TongCode,
          // '1999-01-01', //Makam_day,
          // '0', //Makam_time,
          // '0', //Makam_chk,
          Edit4.text, // wein
          edtSanjung.text, // Tjung
          edtHwakin.text, // 2007.7.1
          edtBontype.text, // 2007.7.1
          edtYujikum.text, // 2007.7.1
          varJaboId,
          varSatGasan,
          varPregnan,
          varSanjungTeakRye,
          Makam_Sabun,
          inttostr(cbIo.ItemIndex),
          isBohum100,
          isJiwon);
        /// /lstDoctorNo.Items.Strings[vdoctorcount]  //--담당의사사번);
        { SunapPUpdate(
          varChartno, //chart
          JinDate, //jin_day
          IntToStr(PChong), //chong       (총 진료비)
          IntToStr(PChung), //chung       (청구액)
          IntToStr(PBonin), //bonin
          IntToStr(PBonin1), //bonin1
          //IntToStr(Pkamak), //kamak       (감면액)
          //IntToStr(PMisuak), //misugeum    (당일미수금)
          //IntToStr(PYoungsu), //sunapak (수납액)
          //IntToStr(PCard), //card,
          //IntToStr(PCashYs), //JojaeIn,
          //IntToStr(PCash), //Cash,
          //IntToStr(PTong), //Tong,
          IntToStr(cbChoje.itemindex + 1), //chojae
          Pjinryopid,
          '0',
          configvalue.varbohumSunap);
        }
      end;
    end; // with end


    // 진료내역을 저장하면, 보험 금액 정보를 업데이트 한다.  sunap_only에서 가져오는 값이다.
    // fChong := PChong;
    // fChung := PChung;
    // fBonin := PBonin;

    {
      //Jinryo_P가 두개가 생기면 안된다....

      //Chojae=13인 당일수납분이 이미 있으면 삭제하고 다시 저장
      JinryoPUpdate_Another_delete(
      varChartno, //chart
      JinDate);

      if  imsichojae  = 13 then
      begin
      saveAnotherJinryo_p(JinDate, varKind);
      end;

    }
  end;

end;

procedure TJinryo_f.saveAnotherJinryo_p(JinDate: string; varKind: string = '0');
// 임플란트 틀니인경우 jinryo_p 하나 더 생성   chojae= ''13''
var
  VarSpecial, sJInCheck, simya, VarJuminYear, sGongsang, Pjinryopid,
    sYongUa: string;
  PChong, PChung, PBonin, PBonin1, PCard, PCashYs, PCash, PYoungsu, Pkamak,
    PMisuak, PTong, Psunaphap, imsiCash, calCash: Integer;
  PCardname, PTeam, imsisunapak, imsicashkum: string;
  vdoctorcount: Integer;
  modFlag, insFlag: Boolean;
  imsichojae: Integer; // 2012.7.1
  varJaboId: string;
  varSatGasan: string;
  Makam_Sabun: string;
  varSanjungTeakRye : string;
  isBohum100 :string;
begin

  Makam_Sabun := cbDoc.ColumnItems[cbDoc.itemindex, 4]; // SaBun

  imsisunapak := '0';
  imsicashkum := '0';
  if configvalue.varbohumSunap = '1' then
  begin
    imsisunapak := formatFloat('#', nSumBohumBonin + nSumBigubChong);
    imsicashkum := formatFloat('#', nSumBohumBonin + nSumBigubChong);
    // imsisunapak := IntToStr(grdDetailCost.Cells[1, 3].AsInteger + grdDetailCost.Cells[1, 4].AsInteger);
    // imsicashkum := IntToStr(grdDetailCost.Cells[1, 3].AsInteger + grdDetailCost.Cells[1, 4].AsInteger);
  end;

  sGongsang := trim(edtGongSang.text);

    if cbSanjungTeakRye.Checked = true then // 산정특례 적용여부
      varSanjungTeakRye := '1'
    else
      varSanjungTeakRye := '0';

    if chkPregnan.Checked then // 임산부여부
      varPregnan := '1'
    else
      varPregnan := '0';

    if chkJin.Checked then // 진찰료산정여부
      sJInCheck := '9'
    else
      sJInCheck := '0';

    if cbBohum100.Checked then // 보험100
      isBohum100 := '1'
    else
      isBohum100 := '0';



  JinryoPSave(ma_jubsu_ID, varChartno, // chart   (챠트번호)
    JinDate, // jin_day (진료일)
    '0', // kwamok
    inttostr(cbJong.itemindex + 1), // jongbeul (종별)
    ma_K_Number, // 증버호
    ma_PiboName, // 가입자명
    ma_Kiho, // 조합기호
    VarSpecial, // dup      (1=장애인)
    // naiCalc(main_f.edtJumin.text + main_f.edtJumin2.text,
    naiCalc(ma_jumin, FormatDateTime('YYYY-MM-DD', dmain.Date)), // nai
    inttostr(13), // chojae      (초재구분)    IntToStr(cbChoje.itemindex + 1)
    sJInCheck, // gasan       (진찰료 산정인 경우=9)
    sYongUa, // gub_gu    //*******  2011.7 영유아 건강검진 당일  '0', //gub_gu
    '0', // chong       (총 진료비)
    '0', // chung       (청구액)
    '0', // kamak       (감면액)
    '0', // sunsugeum
    '0', // misugeum    (당일미수금)  //sunapak (수납액) 진료실에서 저장시엔 수납액=0 으로 우선 처리 2012.1.15
    '0', // '0',  //IntToStr(grdDetailCost.Cells[1, 3].AsInteger +  grdDetailCost.Cells[1, 4].AsInteger),
    '0', // junsanchaek
    '0', // jubsuak      (진찰료)
    '0', // NewYoungsuNo(strtodate(JinDate)), //youngsu_num,  //(영수증발급번호)
    '0', // kam_code
    '0', // kam_rate
    '0', // kam_sayu
    '0', // jin_gu,      (토탈차지이면 jin_gu=1, 증명료면 2)
    edtKyul.text, // kyulkwa      (진료결과)
    cbDoc.ColumnItems[cbDoc.itemindex, 4],
    // doc_code     (의사코드) // IntToStr(cmbdoctor.itemIndex + 1),
    '0', // jinryosil
    simya, // jin_time     (심야시간)
    '0', // jin_user
    '0', // sunap        (1:수납완료)
    sGongsang, // gongsang     (공상구분)
    '0', // jojae11
    '0', // jojae21
    '0', // bonin         (본인부담금)
    '0', // bonin1        (본인비급여)
    '0', // makam
    '0', // jusa
    '', // whan_day
    '', // whan_time
    '0', // whan_user
    '0', // account
    '0', // whanbulak
    '0', // card          (카드액)
    '', // CardCode
    '', // CardName      (카드명)
    '0', // JojaeIn       (현금영수증 액)
    '0', // JojaeOut      (1=소득공제 미제출 자료)
    Edit3.text, // extra,        (의약분업예외)
    '0', // wonwes        (처방일수)
    // cbDoc.ColumnItems[cbDoc.itemindex, 0],
    cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0], '',
    // remark        (영수증에 인쇄되는 내용)
    '0', // chart_id
    '0', // cmemo
    '0', // SunsuCard
    '0', // SunsuTong
    '0', // SunsuCash
    '0', // sunsucardcode
    '0', // sunsucardname
    '0', // sunsutongcode
    '0', // sunsutongname
    '0', // '0',  //IntToStr(grdDetailCost.Cells[1, 3].AsInteger +  grdDetailCost.Cells[1, 4].AsInteger), //Cash  (현금액)
    '0', // Tong  (무통장)
    '0', // TongName
    '0', // TongCode
    '1999-01-01', // Makam_day
    '0', // Makam_time
    '0', // Makam_chk
    Edit4.text, // wein     (상해외인)
    edtSanjung.text, // Tjung    (특정기호)
    '', // 2007.7.1
    '', // 2007.7.1
    '0', // 2007.7.1
    Makam_Sabun, varJaboId, varSatGasan,varPregnan, varSanjungTeakRye, '1',
    isBohum100,
    ''); //isJiwon

end;



// 메모 저장 ..................................................................

procedure TJinryo_f.InsertMemo(sChart, jin_day, sRemark: string);
var
   doc_code, treatRoom : string;
begin

      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4];
      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];

  with Dm_f.sqlJinryo do
  begin
    close;
    SQL.Clear;
    SQL.Add('insert into cmemo (chart,cmemo,jin_day, team) values (:schart,:cmemo,:jin_day, :team)');
    paramByName('schart').asString := sChart;
    paramByName('cmemo').asString := sRemark;
    paramByName('jin_day').asString := jin_day;
    paramByName('team').AsString := treatRoom;
    execsql;

    close;
    SQL.Clear;
    SQL.Add(' Select cMemo, jin_day    ' + '   from cMemo             ' +
      '  where Chart   =:Chart   ' + '    and Jin_day =:Jin_day and team=:team ');
    paramByName('chart').asString := varChartno;
    paramByName('team').asString := treatRoom;
    paramByName('jin_day').asString := FormatDateTime('YYYY-MM-DD', dmain.Date);
    open;
    if not isEmpty then
    begin
      memChungGuMemo.text := StringReplace(fieldByname('cMemo').asString,
        #13#10, '', [rfReplaceAll]);

    end
    else
    begin
      memChungGuMemo.text := '';
    end;
  end;
end;

// 처치버튼 풀어서 grid에 넣기 ................................................

procedure TJinryo_f.InsertSugaCode(AGroupName, AGroupCode: string;  nAdd: Integer; aSutak:string='1');
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
    + #10 + '(select top 1 su_key from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_key,                      '
    + #10 + '(select top 1 su_gu3 from suga s where s.user_key= g.SugaCode     order by s.su_apply desc ) as su_gu3,                     '
    + #10 + '(select top 1 su_gu2 from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_gu2,                      '
    + #10 + '(select top 1 su_danwi from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_danwi,                  '
    + #10 + '(select top 1 bo_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as bo_dan,                      '
    + #10 + '(select top 1 ja_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as ja_dan,                      '
    + #10 + '(select top 1 il_dan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as il_dan,                      '
    + #10 + '(select top 1 dan_qty from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as dan_qty,                    '
    + #10 + '(select top 1 su_gu1 from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_gu1,                      '
    + #10 + '(select top 1 su_soa from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_soa,                      '
    + #10 + '(select top 1 Su_kor_name from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as Su_kor_name,            '
    + #10 + '(select top 1 Su_Eng_name from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as Su_eng_name,            '
    + #10 + '(select top 1 su_yagan from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_yagan,                  '
    + #10 + '(select top 1 need_chart_memo from suga s where s.user_key= g.SugaCode  order by s.su_apply desc ) as need_chart_memo,          '
    + #10 + '(select top 1 teakryecode from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as teakryecode,            '
    + #10 + '(select top 1 gasankind from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as gasankind,                '
    + #10 + '(select top 1 sutakupche from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as sutakupche,              '
    + #10 + '(select top 1 sutakgrade from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as sutakgrade,              '
    + #10 + '(select top 1 gasan      from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as gasan,                   '
    + #10 + '(select top 1 su_extra   from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_extra,                '
    + #10 + '(select top 1 su_sobulru   from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as su_sobulru,            '
    + #10 + '(select top 1 modality from suga s where s.user_key= g.SugaCode    order by s.su_apply desc ) as modality,                  '
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
//  gubKind: Integer; // 수탁가산코드 구해서 금액 구할때 급여 비급여 구분 0: 급여 2: 비급여
  gubKind: string; // 수탁가산코드 구해서 금액 구할때 급여 비급여 구분 0: 급여 2: 비급여
  sutakSanCode: string; // 수탁가산코드
  gasankind: string;
  sutakupche: string;
  sutakgrade: string;

  grpInsYon: string; // 0:급여, 2:비급여  9:80/100

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


    groupsuga에서 grpInsYon을 확인하여 0: 비급여 2: 급여,  9: 80/100를 입력한다. }

   if isNeyukLoad = true then
      jin_day := grdNeyuk.Cells[0, grdNeyuk.Row]
   else
      jin_day := FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date);


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
    if ft_ChartCHK then
      exit;

    nIOrder := 1;

    isClear := true;
    ListBoxSang.Clear;

    for i := 1 to grdJx2.RowCount - 1 do
    begin



      if ((grdJx2.Cells[0, i] = 'GR')
         and (grdJx2.Cells[1, i] = AGroupName)
         and  (grdJx2.Cells[14, i] = inttostr(nIOrder + 1))) then
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


    grdJx2.CellProperties[0, grdJx2.RowCount -  1].ReadOnly := True;
    grdJx2.CellProperties[1, grdJx2.RowCount -  1].ReadOnly := false;
    grdJx2.CellProperties[2, grdJx2.RowCount -  1].ReadOnly := True;

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
    grdJx2.Cells[20, grdJx2.RowCount - 1] := AGroupName; // su_Kor_Name
    grdJx2.Cells[31, grdJx2.RowCount - 1] := AGroupCode;

    grdJx2.Cells[32, grdJx2.RowCount - 1] :='0';  //WonweNo ==>초기값은 0으로 하자.

    // groupcode 에서 grdSangByung 에 상병과 과목을 집어 넣는다


    with tempQuery do
    begin
        close;
        SQL.Clear;
        SQL.Add('select * from groupSuga where groupcode=:groupcode and GrpDgsYon=''I'' ');
        paramByName('groupcode').asString := AGroupCode;
        open;
        First;
        if not isEmpty then
        begin


           //상병을 넣자....

           while not eof do
           begin
            nIorder := checkBlankRow(grdSangByung, 6);

            if nIorder = 1 then
                grdSangByung.AddRadioButton(0, nIorder , true )
            else
                grdSangByung.AddRadioButton(0, nIorder , false );

         //   grdSangByung.AddRadioButton(0,nIOrder ,false);

            grdSangByung.Cells[6, nIOrder]  :=  fieldByname('sugacode').asString;;
            grdSangByung.Cells[10, nIOrder] :=  fieldByname('sugakorname').asString;;

            grdSangByung.Cells[13, nIOrder] := cbDoc.ColumnItems[cbDoc.itemindex, 2];
                // cmbDoctor.Text; //담당의
            grdSangByung.Cells[14, nIOrder] := cbDoc.ColumnItems[cbDoc.itemindex, 3];
                // 담당의 면허번호
             nIorder := nIorder + 1;
            next;
           end;


        end;



        //CC를 넣자......
        close;
        SQL.Clear;
        SQL.Add('select * from groupSuga where groupcode=:groupcode and GrpDgsYon=''S''  ');
        SQL.Add('order by GroupLine');
        paramByName('groupcode').asString := AGroupCode;
        open;
        First;
        nIorder := 1;
        if not isEmpty then
        begin

           // Osang := fieldByname('Sang1').asString;
           while not eof do
           begin

            edtCC.Lines.Add(AdjustLineBreaks( trim(fieldByname('sugakorname').asString))) ;
            //memo3.Lines.Add(fieldByname('sugakorname').asString) ;

            next;
           end;


        end;

    end;

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


           //검사는 가산코드를 새로 만든다.
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


{                    else if FieldByName('su_gu2').AsString = 'A' then    //100/50
                        cbSuGu2.Itemindex := 4   //100/50
                    else if FieldByName('su_gu2').AsString = 'B' then   //100/80
                        cbSuGu2.Itemindex := 5   //100/80
                    else if FieldByName('su_gu2').AsString = 'D' then   //100/30
                        cbSuGu2.Itemindex := 6   //100/30
                    else if FieldByName('su_gu2').AsString = 'E' then   //100/90
                        cbSuGu2.Itemindex := 7   //100/90
                    else if FieldByName('su_gu2').AsString = 'U' then  //100/100
                        cbSuGu2.Itemindex := 8   //100/100
                    else if FieldByName('su_gu2').AsString = 'V' then   //보훈100/100
                        cbSuGu2.Itemindex := 9   //보훈100/100
}
            if grpInsYon = '9' then  //100/80
               aSugu2 := 'B'
                else if grpInsYon = '8' then   //100/50
                   aSugu2 := 'A'
                    else if grpInsYon = 'A' then   //100/30
                       aSugu2 := 'D'
                        else if grpInsYon = 'U' then   //100/100
                           aSugu2 := 'U'
                              else if grpInsYon = 'V' then   //보훈100/100
                                 aSugu2 := 'V'
                                  else if grpInsYon = 'B' then  //100/90
                                     aSugu2 := 'E';

            //

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
                  //  gubKind := StrToInt(trim(fieldByname('grpInsYon').asString))
                     gubKind :=  trim(fieldByname('grpInsYon').asString)

                  else
                    gubKind := '0';

                 if cbJong.itemindex in [3,7] then  //일반이거나 자보는 비급이다.
                   gubKind := '2';

                  nDanga := getSugaGeum(suKey, // varCode:string;
                    FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
                    // jinday:string;
                    gubKind); // kind:string);


         //   if nDanga = 0 then
         //   nDanga := fieldByname('il_dan').AsInteger;


            nQty := 1;




            ngrdJxRow :=  grdJx2.RowCount -  1;


            grdJx2.AddRow;

             ngrdJxRow :=  grdJx2.RowCount -  1;


             grdJx2.CellProperties[0,ngrdJxRow].ReadOnly := True;

             grdJx2.CellProperties[1, ngrdJxRow].ReadOnly := false;
             grdJx2.CellProperties[2, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[8, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[9, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[10, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[11, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[12, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[13, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[14, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[15, ngrdJxRow].ReadOnly := true;





            grdJx2.Cells[7, ngrdJxRow] := grpInsYon;  //0: 비급여 2: 급여,  9: 80/100
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

            grdJx2.Cells[22, ngrdJxRow] :=  jin_day;// FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date); // jin_day
            grdJx2.Cells[24, ngrdJxRow] := fieldByname('Su_Eng_name').asString;
            grdJx2.Cells[25, ngrdJxRow] := fieldByname('Su_extra').asString;

            grdJx2.Cells[27, ngrdJxRow] := fieldByname('Su_sobulRu').asString;


            grdJx2.Cells[28, ngrdJxRow] := fieldByname('teakryecode').asString;

            grdJx2.Cells[29, ngrdJxRow] := fieldByname('Su_gu2').asString;

            grdJx2.Cells[31, ngrdJxRow] := AGroupCode;

            grdJx2.Cells[32, ngrdJxRow] :='0';  //WonweNo ==>초기값은 0으로 하자.


            grdJx2.ints[4, ngrdJxRow] := fieldByname('iltu').AsInteger;//'1'; // 4:횟수

         //   if fieldByname('dan_qty').AsInteger = 0 then
         //       grdJx2.ints[5, ngrdJxRow] := fieldByname('dan_qty').AsInteger
         //   else
            grdJx2.ints[5, ngrdJxRow] := fieldByname('ilsu').AsInteger;//1;  //5:일수

            //suga 3,4,5         3;1회투 4:횟수 5:일수
            //groupSuga 6,7,8    6: 일수 ilsu, 7:1회투 qty, 8:횟수 iltu


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



                 if cbJong.itemindex in [3,7] then  //일반이거나 자보는 비급이다.
                   gubKind := '2';


                  nDanga := getSugaGeum(suKey, // varCode:string;
                    FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
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


//            grdJx2.Cells[4, ngrdJxRow] := '1'; // 4:횟수   일수
//
//            if fieldByname('dan_qty').AsInteger > 0 then
//                grdJx2.ints[5, ngrdJxRow] := fieldByname('dan_qty').AsInteger
//            else
//                grdJx2.ints[5, ngrdJxRow] := 1;  //5:일수
//
//            //suga 3,4,5         3;1회투 4:횟수 5:일수
//            //groupSuga 6,7,8    6: 일수 ilsu, 7:1회투 qty, 8:횟수 iltu


            grdJx2.Cells[10, ngrdJxRow] := aSugu1;
            // FieldByName('Su_gu1').AsString;
            grdJx2.Cells[11, ngrdJxRow] := aSugu3;
            grdJx2.Cells[27, ngrdJxRow] := fieldByname('Su_sobulRu').asString;
            grdJx2.Cells[28, ngrdJxRow] := aNeedTeakRyeCode;

            grdJx2.Cells[29, ngrdJxRow] := aSugu2;      //100/80 ==> B

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
              FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),//FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
              grdJx2.Cells[12, ngrdJxRow], // soaGasan : string;
              grdJx2.Cells[13, ngrdJxRow], // simGasan : string;
              true,
              grdJx2.Cells[25, ngrdJxRow],   //약재중에서 예외코드가 없으면 0원이다.
              jinryo_f.LblAge.Caption);





               grdJx2.ints[6, ngrdJxRow]  := nPrice;
               grdJx2.Cells[8, ngrdJxRow] :=  fieldByname('modality').asString;

               next;

          end;

        end;

        JinryoBiSet;

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

        JinryoBiSet;

      end;

    end;

  finally
    varValueChanged := true;
    tempQuery.Free;
  end;
end;

procedure TJinryo_f.LoadInputTeakJung(
                           chart:string;
                           jubsu_id    :string;
                           jin_Day    : string;
                           docID      :string;
                           TeakRyeCode:string;
                           jin_skey   :string;
                           su_Key     : string;
                            julNo      : string );
begin


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

                InputTeakJung_f.lblDocID.Caption :=
                    jinryo_f.cbDoc.ColumnItems[jinryo_f.cbDoc.itemindex, 4]; //ID


                InputTeakJung_f.lblJinsKey.Caption := jin_skey;
                InputTeakJung_f.lblJubsuID.Caption := jubsu_id;
                InputTeakJung_f.lblJinDay.Caption  := jin_day;

                InputTeakJung_f.lblJulNo.Caption :=  julNo;


                loadTjungHx(InputTeakJung_f.grdNeyuk,
                 ma_chart, jin_day, jubsu_id);

                InputTeakJung_f.Show;
end;


procedure TJinryo_f.Memo3Click(Sender: TObject);
begin

//    SetImeInputMode(memo3.Handle  , imHangul);

end;

procedure TJinryo_f.MenuItem1Click(Sender: TObject);
var
  aliasName: string;
  aliasCode: string;
  nOrder: Integer;
begin

  aliasName := inputbox('별칭을 입력하세요', '별칭은', grdSuga.Cells[2, grdSuga.Row]);

  aliasCode := grdSuga.Cells[1, grdSuga.Row];
  nOrder := GetFavoriteOrderNo;
  saveFavoriteItem(aliasCode, aliasName, '2', nOrder);

end;

procedure TJinryo_f.MenuItem2Click(Sender: TObject);
var
   i : integer;
begin

   //   grdSangByung.UnCheckAll(0);

       for I := 1 to grdSangByung.RowCount-1 do
       begin
          grdSangByung.AddRadioButton(0, grdSangByung.Row , false )
       end;


end;


procedure TJinryo_f.N100Click(Sender: TObject);
begin
   if ma_paName ='' then
   begin
       showmessage('환자 선택 후 진행하세요.');
       exit;
   end;

  if not Assigned(TxList_f) then
    TxList_f := TTxList_f.Create(application);

  TxList_f.Show;
  TxList_f.dpSdate.Date := strToDate(edtFirst.text);
  TxList_f.dpfdate.Date := strToDate(edtLast.text);
  TxList_f.JinryoHistoryView(ma_Chart, TxList_f.dpSdate.date, TxList_f.dpfdate.Date);

end;

procedure TJinryo_f.N105Click(Sender: TObject);
begin
   wonwe_f := Twonwe_f.Create(Application);


  wonwe_f.Showmodal;
  wonwe_f.Free;
  wonwe_f := nil;


//  SetWonwe(varChartno, FormatDateTime('YYYY-MM-DD', dmain.Date), false);

end;

procedure TJinryo_f.N107Click(Sender: TObject);
begin
 if not Assigned(jumgum_f) then
    jumgum_f := Tjumgum_f.Create(application);
  jumgum_f.Show;
end;

procedure TJinryo_f.N109Click(Sender: TObject);
var
     i: word;
     varTemp, varTempID: string;
begin

     if not Assigned(jungsanDay_f) then
         jungsanDay_f := TjungsanDay_f.Create(Application);
      jungsanDay_f.Show;

end;

procedure TJinryo_f.N110Click(Sender: TObject);
var
     varTemp, varTempID: string;
      FormInit: Tinifile;
     varZeroShow:string;
begin
      FormInit := Tinifile.Create(ExtractFilePath(ParamStr(0)) + 'db.INI');
      varZeroShow   := FormInit.ReadString('기타정보', 'SUNAPZeroView', '') ;

     FormInit.Free;


     if not Assigned(jungsanDay_f) then

      sebusunap_f := Tsebusunap_f.Create(Application);
      sebusunap_f.Show;

end;

procedure TJinryo_f.N112Click(Sender: TObject);
begin

  ShellExecute(GetDesktopWindow, 'open', Pchar('IEXPLORE.EXE'),
    Pchar('https://biz.hira.or.kr/index.do?sso=ok'), nil, SW_SHOWNORMAL);


end;

procedure TJinryo_f.N13Click(Sender: TObject);
var
  varPath, varParam, varParam1: string;

  Process32: TProcessEntry32;
  SHandle, aHandle: THandle; // the handle of the Windows object
  regResult: Integer;
  next: BOOL;
  gogekchart: string;
  sang1, sang2, sang3 , sang4, sang5: string;
  sangCode1, sangCode2, sangCode3 , sangCode4, sangCode5: string;
  docName : string;
begin

  // if spserver.color <> true then
  // if dm_f.serverKind = 0 then
  // begin
  // varPath := ExtractFilePath(Application.ExeName) + '\Documan.exe';
  // end
  // else
  // if dm_f.serverKind = 1 then
  // begin
  // varPath := ExtractFilePath(Application.ExeName) + '\Documan\Documan.exe';
  // end;

  varPath := ExtractFilePath(Application.ExeName) + '\Documan.exe';

  gogekchart := ma_chart; // main_f.edtchart.text;
  docName    := trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 2]);

  if FileExists(varPath) then
  begin
    // 먼저 실행중인지 체크
    Process32.dwSize := SizeOf(TProcessEntry32);
    SHandle := CreateToolHelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    regResult := 0;
    if Process32First(SHandle, Process32) then
    begin

      if Process32.szExeFile = 'Documan.exe' then
      begin
        regResult := regResult + 1;
        // 핸들값저장(WindowFromProcessID 은 만든 함수임)
        aHandle := WindowFromProcessID(Process32.th32ProcessID);
      end;
      repeat
        next := Process32Next(SHandle, Process32);
        if next then
          if Process32.szExeFile = 'Documan.exe' then
          begin
            regResult := regResult + 1;
            aHandle := WindowFromProcessID(Process32.th32ProcessID);
          end;
      until not next;
    end;
    CloseHandle(SHandle); // closes an open object handle

    if regResult = 1 then
    begin
      // 실행중이면 제일 위로 불러낸다
      SetForegroundWindow(aHandle);

      ///
    end
    else
    begin
      //상병을 불러와야 한다.

      sang1 :=  grdSangByung.cells[10, 1] ;
      sang2 :=  grdSangByung.cells[10, 2] ;
      sang3 :=  grdSangByung.cells[10, 3] ;
      sang4 :=  grdSangByung.cells[10, 4] ;
      sang5 :=  grdSangByung.cells[10, 5] ;

      sangCode1 := grdSangByung.cells[6, 1]  ;
      sangCode2 := grdSangByung.cells[6, 2]  ;
      sangCode3 := grdSangByung.cells[6, 3]  ;
      sangCode4 := grdSangByung.cells[6, 4]  ;
      sangCode5 := grdSangByung.cells[6, 5]  ;


      if trim(sangCode1) = '' then
          sangCode1 := '.';
      if trim(sangCode2) = '' then
          sangCode2 := '.';
      if trim(sangCode3) = '' then
          sangCode3 := '.';
      if trim(sangCode4) = '' then
          sangCode4 := '.';
      if trim(sangCode5) = '' then
          sangCode5 := '.';

      if trim(sang1) = '' then
          sang1 := '.';
      if trim(sang2) = '' then
          sang2 := '.';
      if trim(sang3) = '' then
          sang3 := '.';
      if trim(sang4) = '' then
          sang4 := '.';
      if trim(sang5) = '' then
          sang5 := '.';


      ShellExecute(GetDesktopWindow, 'open', Pchar(varPath),
        Pchar(gogekchart
            +' '+docName  +' '
            +'"'+sangCode1+'"' +' '
            +'"'+sangCode2+'"' +' '
            +'"'+sangCode3+'"' +' '
            +'"'+sangCode4+'"' +' '
            +'"'+sangCode5+'"' +' '
            +'"'+sang1    +'"' +' '
            +'"'+sang2    +'"' +' '
            +'"'+sang3    +'"' +' '
            +'"'+sang4    +'"' +' '
            +'"'+sang5    +'"'
            ), nil, SW_SHOWNORMAL);
    end;
  end
  else
  begin
    Showmessage('문서관리 모듈을 지정한 위치에서 찾을 수 없습니다.');
  end;

  //
  // varPath := extractFilePath(paramstr(0)) + 'Documan.exe';
  //
  // ShellExecute(GetDeskTopWindow, 'open', PChar(varPath),nil,
  // nil, SW_SHOWNORMAL);

end;

procedure TJinryo_f.N19Click(Sender: TObject);
var
  varPath, varParam, varParam1: string;
begin

  varPath := extractFilePath(paramStr(0)) + 'sugaEdit.exe';

  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), nil, nil,
    SW_SHOWNORMAL);

end;

procedure TJinryo_f.N1Click(Sender: TObject);
var
  aliasName: string;
  aliasCode: string;
  nOrder: Integer;
begin

  aliasName := inputbox('별칭을 입력하세요', '별칭은',
    grdGroupCode.Cells[2, grdGroupCode.Row]);

  aliasCode := grdGroupCode.Cells[1, grdGroupCode.Row];
  nOrder := GetFavoriteOrderNo;
  saveFavoriteItem(aliasCode, aliasName, '1', nOrder);

end;

procedure TJinryo_f.N22Click(Sender: TObject);
var
  i: Integer;
  team_key, treatRoom: string;
begin


  pnlReferHosp.Visible := true;//not pnlReferHosp.Visible;
  if ma_chart = '' then
  begin
    Showmessage('환자를 선택하세요.');
    exit;
  end;

  if not assigned(ReferHospReqComplete_f) then
    ReferHospReqComplete_f := TReferHospReqComplete_f.Create(Application);

  for i := 1 to grdSangByung.RowCount - 1 do
  begin

    if grdSangByung.Cells[6, i] <> '' then

      ReferHospReqComplete_f.lstDangName1.Items.Add(grdSangByung.Cells[6, i] +
        '(' + grdSangByung.Cells[10, i] + ')');
  end;

  for i := 0 to lstReferList.Items.Count - 1 do
  begin

    if lstReferList.Items[i] <> '' then

      ReferHospReqComplete_f.Memo1.Lines.Add(lstReferList.Items[i]);
  end;

  with Dm_f.sqlTemp do
  begin

    with ReferHospReqComplete_f.cbTreatRoom do
    begin
      Columns.Clear;
      ComboItems.Clear;
    end;

    close;
    SQL.Clear;
    SQL.text := 'Select * from ma_basic                                   ' +
      #13#10 + 'where  (code like  ''093%'') and (code <> ''09300'')     ' +
      #13#10 + 'and inuse <>  ''0'' and (remark = ''TREAT'' or remark = ''MED'' )   '
      + #13#10 +
    // 'order by val,code                                        ';
      'order by disp                                    ';
    open;
    if not isEmpty then
    begin

      with ReferHospReqComplete_f.cbTreatRoom do
      begin
        with Columns.Add do
        begin
          width := 0;
          Font.Style := [fsBold];
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          width := 0;
          Font.Color := ClBlue;
          Font.Style := [fsBold];
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          width := 200;
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;

      end;
      // with cbTreatRoom.ComboItems.Add do
      // begin
      // Strings.Add('A');     //Code
      // Strings.Add('A');  //code?
      // Strings.Add('전체');
      // end;

      while not eof do
      begin

        with ReferHospReqComplete_f.cbTreatRoom.ComboItems.Add do
        begin
          // Strings.Add(FieldByName('team_name').AsString);
          // Strings.Add(FieldByName('team_color').AsString);
          // Strings.Add(FieldByName('team_doctor1').AsString);
          Strings.Add(trim(fieldByname('val').asString)); // Code
          Strings.Add(trim(fieldByname('remark').asString)); // code?
          Strings.Add(trim(fieldByname('disp').asString));

        end;

        // cbTreatRoom.items.add(FieldByName('disp').AsString);

        next;
      end;
      ReferHospReqComplete_f.cbTreatRoom.itemindex := 1;
    end
    else
    begin
      // cbTreatRoom.items.add('데스크');
      // cbTreatRoom.ItemIndex := 0;
    end;

  end;

  treatRoom := trim(DaegiFrame_fr1.grdDaegi.Cells[54,  DaegiFrame_fr1.grdDaegi.Row]);

  ReferHospReqComplete_f.cbTreatRoom.Update;

  ReferHospReqComplete_f.cbTreatRoom.itemindex :=
    jinryo_f.cbTreatRoom.ComboItems.IndexInColumnOf(0, treatRoom);

  team_key := ReferHospReqComplete_f.cbTreatRoom.ColumnItems
    [cbTreatRoom.itemindex, 0];

  LoadDoclist(ReferHospReqComplete_f.cbDoc, team_key);

  ReferHospReqComplete_f.show;

end;

procedure TJinryo_f.N31Click(Sender: TObject);
begin

  if grdFindSuga.Row > 0 then
  begin
    SugaProp_f := TSugaProp_f.Create(Application);
    SugaProp_f.edtSuKey.text := grdFindSuga.Cells[3, grdFindSuga.Row];
    SugaProp_f.btnSave.Visible := true;
    SugaProp_f.ActiveControl := SugaProp_f.edtname;
    SugaProp_f.Showmodal;
    SugaProp_f.Free;
    SugaProp_f := nil;
  end;

end;

procedure TJinryo_f.N33Click(Sender: TObject);
var
    i , g: integer;
    grCap : string;
begin
//    for i:= 0 to grdJx2.selectedRowcount -1 do
//    begin
//
//        grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';
//        // grdJx2.Cells[19, grdJx2.Row]
//    end;

                for i:= 0 to grdJx2.selectedRowcount -1 do
                begin

                     //  grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';

                        if grdJx2.Cells[0, grdJx2.SelectedRow[i]] = 'GR' then
                        begin
                          // 그룹삭제 Tag
                          grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := 'D';

                          g := grdJx2.SelectedRow[i] +1;
                        //  DeleteJin(ARow);

                          while g <= grdJx2.RowCount - 1 do
                          begin
                             grCap :=  grdJx2.Cells[0, g];
                            if grCap = 'GR' then
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

    grdJx2.Repaint;
    JinryoBiSet;
end;

procedure TJinryo_f.N34Click(Sender: TObject);

var
    i , g: integer;
    grCap : string;
begin
//    for i:= 0 to grdJx2.selectedRowcount -1 do
//    begin
//
//        grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';
//        // grdJx2.Cells[19, grdJx2.Row]
//    end;
       for i:= 0 to grdJx2.selectedRowcount -1 do
                begin

//                    grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';

                        if grdJx2.Cells[0, grdJx2.SelectedRow[i]] = 'GR' then
                        begin
                          // 그룹삭제 Tag
                          grdJx2.Cells[30,  grdJx2.SelectedRow[i]] := '';

                          g := grdJx2.SelectedRow[i] +1;
                        //  DeleteJin(ARow);

                          while g <= grdJx2.RowCount - 1 do
                          begin
                             grCap :=  grdJx2.Cells[0, g];
                            if grCap = 'GR' then
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
        JinryoBiSet;
end;

procedure TJinryo_f.N37Click(Sender: TObject);
var
    i : integer;
   il: TIntList;
begin
  il := TIntList.Create(-1,-1);
//  il.Add(5);
//  il.Add(6);
//  il.Add(7);
//  il.Add(15);
//  il.Add(16);
//  il.Add(17);

    for i:= 1 to grdJx2.Rowcount -1 do
    begin
         if  grdJx2.Cells[30,  i] = 'D' then
         begin
              il.Add(i);
         end;

    end;
     grdJx2.HideRowList(il); // hides rows 5,6,7,15,16,17

    grdJx2.Repaint;
end;

procedure TJinryo_f.N38Click(Sender: TObject);
var
    i : integer;
begin

     grdJx2.UnHideRowsAll;// HideRow(i);
     grdJx2.Repaint;
end;

procedure TJinryo_f.N39Click(Sender: TObject);
var
    i : integer;
begin
    for i:= 1 to grdJx2.Rowcount -1 do
    begin

        grdJx2.Cells[30, i] := '';
        // grdJx2.Cells[19, grdJx2.Row]
    end;
       grdJx2.Repaint;
        JinryoBiSet;
end;

procedure TJinryo_f.N4Click(Sender: TObject);
begin

        SugaProp_f := TSugaProp_f.Create(Application);

        case pgFavorite.ActivePageIndex of

           1: ; //묶음처방
//              if grdSuga.Row > 0 then
//              begin
//                SugaProp_f.edtSuKey.text := grdSuga.Cells[1, grdSuga.Row];
//              end;

           2:  //기본처방

              if grdSuga.Row > 0 then
              begin
                SugaProp_f.edtSuKey.text := grdSuga.Cells[3, grdSuga.Row];
              end;

//              if grdDrug.Row > 0 then
//              begin
//                SugaProp_f.edtSuKey.text := grdDrug.Cells[1, grdDrug.Row];
//              end;

        end;

        SugaProp_f.btnSave.Visible := true;
        SugaProp_f.ActiveControl := SugaProp_f.edtname;
        SugaProp_f.Showmodal;
        SugaProp_f.Free;
        SugaProp_f := nil;

end;

procedure TJinryo_f.N5Click(Sender: TObject);
begin

  if grdJx2.Row > 0 then
  begin
    SugaProp_f := TSugaProp_f.Create(Application);
    SugaProp_f.edtSuKey.text := grdJx2.Cells[19, grdJx2.Row];
    SugaProp_f.btnSave.Visible := true;
    SugaProp_f.ActiveControl := SugaProp_f.edtname;
    SugaProp_f.Showmodal;
    SugaProp_f.Free;
    SugaProp_f := nil;
  end;
end;

procedure TJinryo_f.N63Click(Sender: TObject);
begin
  if not Assigned(optionset_f) then
  begin
    optionset_f := Toptionset_f.Create(Self);
    optionset_f.pcoption.ActivePageIndex := 0;
    optionset_f.ShowModal;
  end;
end;

procedure TJinryo_f.N6Click(Sender: TObject);
var
  aliasName: string;
  aliasCode: string;
  nOrder: Integer;
begin

  aliasName := inputbox('새로운 별칭을 입력하세요', '별칭은',
       grdFavorite.Cells[1, grdFavorite.Row]);

  aliasCode := grdFavorite.Cells[2, grdFavorite.Row];

  UpdateFavoriteItem(aliasCode, aliasName);
  LoadFavoriteSuga;

end;

procedure TJinryo_f.N8Click(Sender: TObject);
var
  aliasCode: string;
   aliasName: string;
begin

       if Application.MessageBox(PChar(grdFavorite.Cells[1, grdFavorite.Row]+ '를 즐겨찾기 기록에서 삭제 하시겠습니까?'),  '알림', MB_YESNO) = IDYES then
       begin
         aliasCode := grdFavorite.Cells[2, grdFavorite.Row];

         DeleteFavoriteItem(aliasCode, aliasName);
         LoadFavoriteSuga;
      end;
end;

procedure TJinryo_f.saveFavoriteItem(aliasCode, aliasName, isGroup: string;
  nOrder: Integer);
var
  tempQuery: TuniQuery;
begin
  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('  INSERT INTO [dbo].[ma_favorite_suga]      ');
      SQL.Add('      ([su_key]                             ');
      SQL.Add('      ,[userID]                             ');
      SQL.Add('      ,[su_kor_Name]                        ');
      SQL.Add('      ,[isGroup]                            ');
      SQL.Add('      ,[nOrder])                            ');
      SQL.Add(' VALUES                                     ');
      SQL.Add('    (:su_key                                ');
      SQL.Add('     ,:userID                               ');
      SQL.Add('     ,:su_kor_Name                          ');
      SQL.Add('     ,:isGroup                              ');
      SQL.Add('     ,:nOrder )                             ');

      paramByName('su_key').asString := aliasCode;
      paramByName('UserID').asString := V_UserID;
      paramByName('su_kor_Name').asString := aliasName;
      paramByName('isGroup').asString := isGroup;
      paramByName('nOrder').AsInteger := nOrder;

      execsql;

    end;
  finally
    tempQuery.Free;
  end;
end;



procedure TJinryo_f.UpdateFavoriteItem(aliasCode, aliasName : string );
var
  tempQuery: TuniQuery;
begin
  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('  update ma_favorite_suga  set                     ');
      SQL.Add('     su_kor_Name  =:su_kor_Name                    ');
      SQL.Add('     where su_key =:su_key  and userID = :userID   ');
      paramByName('su_key').asString      := aliasCode;
      paramByName('su_kor_Name').asString := aliasName;
      paramByName('userID').asString      := V_UserID;

      execsql;

    end;
  finally
    tempQuery.Free;
  end;
end;


procedure TJinryo_f.UpdateFavoriteItem_nOrder(aGrid:TadvStringGrid);
var
  tempQuery: TuniQuery;
  i:integer;
begin
  try
    tempQuery := TuniQuery.Create(nil);
    tempQuery.Connection := Dm_f.UniConnection1;
  for I := 1 to aGrid.rowcount-1 do
   begin
        with tempQuery do
        begin
          close;
          SQL.Clear;
          SQL.Add('  update  ma_favorite_suga  set                     ');
          SQL.Add('     nOrder =:nOrder                                ');
          SQL.Add('     where id =:id                                  ');
          paramByName('id').asString := agrid.cells[4, i];
          paramByName('nOrder').asString := inttostr(i);
          execsql;

        end;
   end;
  finally
    tempQuery.Free;
  end;
end;


procedure TJinryo_f.DeleteFavoriteItem(aliasCode, aliasName : string );
var
  tempQuery: TuniQuery;
begin
  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('  delete from ma_favorite_suga                       ');
      SQL.Add('     where su_key =:su_key  and userID=:userID       ');
      paramByName('su_key').asString := aliasCode;
      paramByName('userID').asString := v_userID;
      execsql;

    end;
  finally
    tempQuery.Free;
  end;
end;



// 병록번호/수진자 체크  .......................................................

function TJinryo_f.ft_ChartCHK: Boolean;
begin
  Result := false;
  if varChartno = '' then
  begin
    Showmessage('접수된 환자를 선택후 진행하세요.' + #10 + '병록번호가 없습니다.');
    Result := true;
    exit;
  end;

  if varName = '' then
  begin
    Showmessage('접수된 환자를 선택후 진행하세요.' + #10 + '환자명이 없습니다.');
    Result := true;
    exit;
  end;
end;

procedure TJinryo_f.wLabel25Click(Sender: TObject);
begin

  // edtDoctorName.Text := cbDoc.ColumnItems[cbDoc.itemindex, 2];//cmbDoctor.Text;
  //
  // if cbChoje.itemindex <> 4 then
  // begin
  // Application.MessageBox('초재진 구분 착오' + #10#13 +
  // '수납만 하시려면 초재진을 산정무로 해주십시오.', '알림');
  // cbChoje.itemindex := 0;
  // cbChoje.SetFocus;
  // exit;
  // end;
  //
  // sunapXsave := 0;
  // JinryobiSave(FormatDateTime('YYYY-MM-DD', dMain.Date));
  //
  /// /     if not assigned(sunap_f) then
  /// /     begin
  /// /          sunap_f := Tsunap_f.Create(application);
  /// /          sunap_f.Showmodal;
  /// /     end
  /// /     else
  /// /     begin
  /// /          sunap_f.Showmodal;
  /// /     end;
  //
  // JinryoHistoryView; //진료history 다시 뿌려주고
  // setJinSO(varChartno,  FormatDateTime('YYYY-MM-DD',  dMain.Date)); //진료내역불러오기

end;

procedure TJinryo_f.pnlRXClick(Sender: TObject);
begin
  pnlRX.Visible := false;
end;

procedure TJinryo_f.pnlSangByungDblClick(Sender: TObject);
begin
   (sender as TadvPanel).width:= 100;
end;

procedure TJinryo_f.JinryoHistoryView(chart: string);
var
  temp_yy, temp_mm, temp_dd: Variant;
  arpPk : string;
  aInfoJubsu : TinfoJubsu;
begin

    try
      grdNeyuk.RemoveRows(1, grdNeyuk.RowCount - 1);
      dmain.Events.Clear;

      GetHoliday; // 달력에 진료일자 표시
    {SQL.Add(' select jin_day, sunapak, bonin, team, doc_code,
       jubsu_id, isInPat ,chojae, jongbeul, gub_gu, sanjungteakRye, tjung
     from jinryo_p ');}
      with Dm_f.sqlJinryo do
      begin // 진료history 다시 뿌려주고
        close;
        SQL.Clear;
        SQL.Add(' select jin_day, sunapak, bonin, team, jubsu_id , isBohum100,   isJiwon,          ');
        SQL.Add(' (select top 1 doc_code from ma_jubsu where id= jinryo_p.jubsu_id) as doc_code,   ');
        SQL.Add(' isInPat ,chojae, jongbeul, gub_gu, sanjungteakRye, tjung   from jinryo_p         ');
        SQL.Add(' where chart=:chart and jin_gu=''0''                                              ');
        SQL.Add(' and chojae<>''9'' and chojae  <>  ''13''                                         ');  // and chojae<>''0''
        SQL.Add(' order by jin_day desc                                                            ');
        // Sql.Add(' union select distinct jin_day from jinryo_s where chart=:chart order by jin_day desc');


//        SQL.Add(' select jin_day,   team, doc_code, id , isBohum100, rpPk,  isJiwon,      ');
//        SQL.Add(' isInPat  , choje, jongbyul , TeakRyecode, TeakRye  from ma_jubsu               ');
//        SQL.Add(' where chart=:chart                                                    ');
//        SQL.Add(' order by jin_day desc                                                                  ');


        paramByName('chart').asString := chart;
        // and makam_chk<>''9''

        open;
        First;

        if not isEmpty then
        begin
          while not eof do
          begin
            sPortion := '';
            sSang := '';
            sTx := '';
            grdNeyuk.AddRow;

            // 달력
//            with dmain.Events.Add do
//            begin
//              temp_yy := FormatDateTime('YYYY', fieldByname('jin_day').AsDateTime);
//              temp_mm := FormatDateTime('MM', fieldByname('jin_day').AsDateTime);
//              temp_dd := FormatDateTime('DD', fieldByname('jin_day').AsDateTime);
//              Date := EncodeDate(temp_yy, temp_mm, temp_dd);
//              // Hint := '*****';
//              FontColor := ClRed;
//              Color     := ClBlue;
//              Shape     := evsRectangle;
//            end;

    {
    ===NEW
    0진료일자
    1진료실
    2담당의
    3상병
    4진료내역
    5기타
    6수납금액
    7접수ID
    8종별
    9초재
    10국가검진
    11산정특례
    12특례코드
    13입원여부
    }


            grdNeyuk.Cells[0, grdNeyuk.RowCount - 1]  := fieldByname('jin_day').asString;
            grdNeyuk.Cells[1, grdNeyuk.RowCount - 1]  :=loadJinjryosil( fieldByname('team').asString);
            grdNeyuk.Cells[2, grdNeyuk.RowCount - 1]  :=  LoadDocNameFromSawonWithID(fieldByname('doc_code').asString);
            grdNeyuk.Cells[14, grdNeyuk.RowCount - 1] := fieldByname('team').asString;
            grdNeyuk.Cells[15, grdNeyuk.RowCount - 1] := fieldByname('doc_code').asString;

            aInfoJubsu := loadInfoJubsu( fieldByname('jubsu_id').asString);

            arpPk  := aInfoJubsu.rpPk ;

            grdNeyuk.Cells[16, grdNeyuk.RowCount - 1] := arpPk;  //RpPk

            grdNeyuk.Cells[17, grdNeyuk.RowCount - 1] :=  fieldByname('isJiwon').asString;  //isJiwon
            grdNeyuk.Cells[18, grdNeyuk.RowCount - 1] :=  fieldByname('isBohum100').asString;  //isBohum100
    {
    0 No
    1진료일자
    2수납금액
    3상병
    4기타
    5진료내역
    6진료실
    7담당의
    8접수ID
    9종별
    10초재
    11국가검진
    12산정특례
    13특례코드
    14입원여부}

            grdNeyuk.Cells[6, grdNeyuk.RowCount - 1]  := fieldByname('sunapak').asString;
            grdNeyuk.Cells[7, grdNeyuk.RowCount - 1]  := fieldByname('jubsu_id').asString;
            grdNeyuk.Cells[8, grdNeyuk.RowCount - 1]  := fieldByname('jongbeul').asString;
            grdNeyuk.Cells[9, grdNeyuk.RowCount - 1]  := fieldByname('chojae').asString;
            grdNeyuk.Cells[10, grdNeyuk.RowCount - 1] := fieldByname('gub_gu').asString;
            grdNeyuk.Cells[11, grdNeyuk.RowCount - 1] := fieldByname('sanjungTeakRye').asString; //sanjungTeakRye
            grdNeyuk.Cells[12, grdNeyuk.RowCount - 1] := fieldByname('tjung').asString; //tjung
            grdNeyuk.Cells[13, grdNeyuk.RowCount - 1] := fieldByname('isInPat').asString;

            Dm_f.sqlTemp12.close;
            Dm_f.sqlTemp12.SQL.Clear;
            Dm_f.sqlTemp12.SQL.Add
              ('select o.p1,o.p2,o.p3,o.p4,o.s_key1,o.s_key2,o.s_key3 from jinryo_o o,jinryo_p p ');
            Dm_f.sqlTemp12.SQL.Add('  where o.chart=:chart and o.jin_day=:jin_day ');
            Dm_f.sqlTemp12.SQL.Add(' and o.chart=p.chart and o.jin_day=p.jin_day ');
            Dm_f.sqlTemp12.SQL.Add(' and p.chojae<>''9''  and p.chojae<>''13''  ');
            Dm_f.sqlTemp12.SQL.Add(' order by o.jin_order');
            Dm_f.sqlTemp12.paramByName('chart').asString   := varChartno;
            Dm_f.sqlTemp12.paramByName('jin_day').asString :=  fieldByname('jin_day').asString;
            Dm_f.sqlTemp12.open;
            Dm_f.sqlTemp12.First;

            if not Dm_f.sqlTemp12.isEmpty then
            begin
              while not Dm_f.sqlTemp12.eof do
              begin
               if sSang <> '' then
                    sSang := sSang + '/' + Dm_f.sqlTemp12.fieldByname('s_key1').asString
                else
                    sSang := Dm_f.sqlTemp12.fieldByname('s_key1').asString ;

                Dm_f.sqlTemp12.next;
              end;

              grdNeyuk.Cells[3, grdNeyuk.RowCount - 1] := trim(copy(sSang, 2, 200)); //상병내역
              // grdNeyuk.Cells[1, grdNeyuk.RowCount - 1] :=
              // dm_f.sqlTemp.FieldByName('sunapak').AsString;

              grdNeyuk.Cells[5, grdNeyuk.RowCount - 1] :='';//기타
            end;

            Dm_f.sqlTemp12.close;
            Dm_f.sqlTemp12.SQL.Clear;
            Dm_f.sqlTemp12.SQL.Add('select su_kor_name from jinryo_s ');
            Dm_f.sqlTemp12.SQL.Add('where  chart=:chart and jin_day=:jin_day ');
            Dm_f.sqlTemp12.SQL.Add('and g_check=''G'' order by iOrder');
            Dm_f.sqlTemp12.paramByName('chart').asString := varChartno;
            Dm_f.sqlTemp12.paramByName('jin_day').asString :=
              fieldByname('jin_day').asString;
            Dm_f.sqlTemp12.open;
            Dm_f.sqlTemp12.First;
            if not Dm_f.sqlTemp12.isEmpty then
            begin
              while not Dm_f.sqlTemp12.eof do
              begin

                  if sTx <> '' then
                      sTx := sTx + '/' + Dm_f.sqlTemp12.fieldByname ('su_kor_name').asString
                  else
                      sTx :=  Dm_f.sqlTemp12.fieldByname ('su_kor_name').asString;


                Dm_f.sqlTemp12.next;
              end;
              grdNeyuk.Cells[4, grdNeyuk.RowCount - 1] := trim(copy(sTx, 2, 200));
            end;



            next;
          end;
        end;
    //     grdNeyuk.AutoNumberCol(0);
      end;
    finally
         grdNeyuk.LockUpdate :=false;
    end;

end;



// 함산영수증에 진료내역 표시

procedure TJinryo_f.JinryoHistoryViewforHapsan;
var
  temp_yy, temp_mm, temp_dd: Variant;

begin

  grdJinryoHx.RemoveRows(1, grdJinryoHx.RowCount - 1);

  with Dm_f.sqlJinryo do
  begin // 진료history 다시 뿌려주고
    close;
    SQL.Clear;
    SQL.Add('select jin_day, sunapak, bonin from jinryo_p ');
    SQL.Add('where chart=:chart and jin_gu=''0'' and chojae<>''9'' and chojae<>''0''  and chojae  <>  ''13'' ');
    SQL.Add('  order by jin_day desc');
    // Sql.Add(' union select distinct jin_day from jinryo_s where chart=:chart order by jin_day desc');
    paramByName('chart').asString := varChartno;
    // and makam_chk<>''9''

    open;
    First;

    if not isEmpty then
    begin
      while not eof do
      begin
        sPortion := '';
        sSang := '';
        sTx := '';
        grdJinryoHx.AddRow;

        grdJinryoHx.Cells[0, grdJinryoHx.RowCount - 1] :=
          fieldByname('jin_day').asString;
        grdJinryoHx.Cells[1, grdJinryoHx.RowCount - 1] := fieldByname('sunapak')
          .asString; // FieldByName('sunapak').AsString;

        Dm_f.sqlTemp12.close;
        Dm_f.sqlTemp12.SQL.Clear;
        Dm_f.sqlTemp12.SQL.Add
          ('select o.p1,o.p2,o.p3,o.p4,o.s_key1,o.s_key2,o.s_key3 from jinryo_o o,jinryo_p p where o.chart=:chart and o.jin_day=:jin_day and o.chart=p.chart and o.jin_day=p.jin_day and p.chojae<>''9''  and p.chojae<>''13''   order by o.jin_order');
        Dm_f.sqlTemp12.paramByName('chart').asString := varChartno;
        Dm_f.sqlTemp12.paramByName('jin_day').asString :=
          fieldByname('jin_day').asString;
        Dm_f.sqlTemp12.open;
        Dm_f.sqlTemp12.First;
        if not Dm_f.sqlTemp12.isEmpty then
        begin
          while not Dm_f.sqlTemp12.eof do
          begin
            sPortion := sPortion + '/' +
              ConvertTeeth(Dm_f.sqlTemp12.fieldByname('p1').asString,
              Dm_f.sqlTemp12.fieldByname('p2').asString,
              Dm_f.sqlTemp12.fieldByname('p3').asString,
              Dm_f.sqlTemp12.fieldByname('p4').asString);
            sSang := sSang + '/' + Dm_f.sqlTemp12.fieldByname('s_key1')
              .asString;
            Dm_f.sqlTemp12.next;
          end;

          grdJinryoHx.Cells[2, grdJinryoHx.RowCount - 1] :=
            trim(copy(sSang, 2, 200));
          grdJinryoHx.Cells[3, grdJinryoHx.RowCount - 1] :=
            trim(copy(sPortion, 2, 200));
          // grdJinryoHx.Cells[1, grdJinryoHx.RowCount - 1] :=
          // dm_f.sqlTemp.FieldByName('sunapak').AsString;
        end;

        Dm_f.sqlTemp12.close;
        Dm_f.sqlTemp12.SQL.Clear;
        Dm_f.sqlTemp12.SQL.Add
          ('select su_kor_name from jinryo_s where  chart=:chart and jin_day=:jin_day and g_check=''G'' order by iOrder');
        Dm_f.sqlTemp12.paramByName('chart').asString := varChartno;
        Dm_f.sqlTemp12.paramByName('jin_day').asString :=
          fieldByname('jin_day').asString;
        Dm_f.sqlTemp12.open;
        Dm_f.sqlTemp12.First;
        if not Dm_f.sqlTemp12.isEmpty then
        begin
          while not Dm_f.sqlTemp12.eof do
          begin
            sTx := sTx + '/' + Dm_f.sqlTemp12.fieldByname
              ('su_kor_name').asString;
            Dm_f.sqlTemp12.next;
          end;
          grdJinryoHx.Cells[4, grdJinryoHx.RowCount - 1] :=
            trim(copy(sTx, 2, 200));
        end;

        next;
      end;
    end;
  end;
end;

procedure TJinryo_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TJinryo_f.FormDestroy(Sender: TObject);
begin
  jinryo_f := nil;
end;

procedure TJinryo_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of

       vk_F2 :

           begin
                grdSangByung.setfocus;

                btnLoadSangByungClick(self);
           end;

       vk_F4 :  //보류

           begin
                 btnPauseClick(self);
           end;

       vk_ESCAPE :

           begin
              //   btnInitClick(self);
           end;

       vk_F5 :  // 완료

           begin
                 btnSaveClick(self);
           end;
       vk_F6 :  // 그룹코드 찾기

           begin
                 tabSearchGroupCode.TabVisible := not tabSearchGroupCode.TabVisible ;
                 tabDrugCode.TabVisible        := not tabDrugCode.TabVisible ;
           end;


       vk_F7:   //협진 씽크
        begin
                btnReferSync.Visible :=  not btnReferSync.Visible  ;
        end;
       vk_F8:   //RIS
        begin
               PnlRis.Visible :=  not PnlRis.Visible  ;
        end;

    end;
end;

procedure TJinryo_f.FormResize(Sender: TObject);
begin
     lblSize.Caption := inttostr(width) + 'X' + inttostr(height);

end;

procedure TJinryo_f.DaySet(varDate: TDateTime);
begin

  lblDay2.Caption := FormatDateTime('YYYY/MM/DD', varDate) + ' (' +
    ReturnWeek2(varDate) + ')';

end;

procedure TJinryo_f.nextYearClick(Sender: TObject);
begin
  // dmain.Year := dmain.Year + 1;
  dmain.Date := incYear(dmain.Date, 1);

  // dayset(dmain.date);
  dmainDaySelect(jinryo_f, dmain.Date);
end;

procedure TJinryo_f.PrevYearClick(Sender: TObject);
begin
  // dmain.Year := dmain.Year - 1;
  dmain.Date := incYear(dmain.Date, -1);

  // dayset(dmain.date);
  dmainDaySelect(jinryo_f, dmain.Date);

end;

procedure TJinryo_f.prevMonthClick(Sender: TObject);
var
  VarMonth: Integer;
begin
  // if dmain.Month = 1 then
  // begin
  // dmain.Year := dmain.Year - 1;
  // dmain.Month := 12;
  // end
  // else
  // begin
  // varMonth:=  dmain.Month;
  // varMonth := varMonth - 1;
  //
  // dMain.day:= 1;
  // dMain.month:=varMonth;
  // //dayset(dmain.date);
  // end;

  dmain.Date := incMonth(dmain.Date, -1);
  dmainDaySelect(jinryo_f, dmain.Date);

end;

procedure TJinryo_f.nextMonthClick(Sender: TObject);
begin
  // if dmain.Month = 12 then
  // begin
  // dmain.Year := dmain.Year + 1;
  // dmain.Month := 1;
  // end
  // else
  // dmain.Month := dmain.Month + 1;
  // dayset(dmain.date);

  dmain.Date := incMonth(dmain.Date, 1);

  dmainDaySelect(jinryo_f, dmain.Date);

end;

procedure TJinryo_f.dmainDaySelect(Sender: TObject; SelDate: TDateTime);
var
  nOldChojae, nOldJongbeul: Integer;
  aJakyuk: TJakyuk;
begin

//ToDo : 달력 클릭은 후에 지원 예정
//   showmessage('내원이력에서 확인 할 수 있습니다.');
//   pagecontrol1.ActivePageIndex := 1;
   exit;


  if ma_chart = '' then
  begin
    exit;
  end;

  // 캡션날짜 동기화
  DaySet(SelDate);
  /// dmain.date);
  GetHoliday;
  // CalendarChangeSave;

  nclick := 0;
  // ...................................................................
  nOldChojae := cbChoje.itemindex;
  nOldJongbeul := cbJong.itemindex;


  pnlCostClear;

  nMan := 0;

  chbYagan.Checked := false;
  chkPregnan.Checked := false;
  // chbGongsang.Checked := False;
  // edtGongSang.Text:= '0';

  loadGongsang;

  // chkYongUa.Checked := False; //2011.7
  // chkIlban.Checked := false; //2012.4
  // chkFirst.Checked := false; //2012.4

  cbSanCode3.itemindex := 0;

  FieldSetJin(varChartno, formatDatetime('YYYY-MM-DD',SelDate),   nOldChojae, nOldJongbeul);

  LoadRichData(ma_chart);

  LoadSunapMemo(ma_chart, DaegiFrame_fr1.dtDate.date);

  LoadReferList(rpPk);

  LoadPatientFace(ma_chart, imgPic);

  if LblAge.Caption = '' then
    LblAge.Caption := '20';

  LblAge.Caption :=  naiCalc(ma_jumin, FormatDateTime('YYYY-MM-DD', dmain.Date));

  // 공휴일 체크
  if DayOfWeek(dmain.Date) = 1 then
  begin
    chbYagan.Checked := true;
  end
  else
  begin
    with Dm_f.SqlTemp13 do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from gonghyu where gh_day=:gh_day');
      paramByName('gh_day').asString := FormatDateTime('YYYY-MM-DD',  dmain.Date);
      open;
      First;
      if not isEmpty then
      begin
        chbYagan.Checked := true;
      end;
    end;

  end;

  JinryoBiSet;

end;

procedure TJinryo_f.E1Click(Sender: TObject);
begin

          EpochConnectNDeleteMDB(ma_jubsu_id);
          EPOCHUpdate ;
end;

procedure TJinryo_f.edtGroupOrderValueChange(Sender: TObject);
begin
  if copy(edtGroupOrderValue.text,1,1)='+'  then
  begin
       grdGroupCode.LockUpdate := true;
       grdGroupCode.NarrowDown(edtGroupOrderValue.text, 1) ;
       grdGroupCode.AutoNumberCol(0);
       grdGroupCode.LockUpdate := false;
  end
  else
  begin
        grdGroupCode.LockUpdate := true;
        grdGroupCode.NarrowDown(edtGroupOrderValue.text, 2) ;
        grdGroupCode.AutoNumberCol(0);
        grdGroupCode.LockUpdate := false;
  end;

end;

procedure TJinryo_f.edtGroupOrderValueClick(Sender: TObject);
begin
 SetImeInputMode(edtGroupOrderValue.Handle  , imEnglish);
end;

procedure TJinryo_f.edtGroupOrderValueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
          VK_DOWN :
           begin


             grdGroupCode.SetFocus;


           end;
    end;
end;

procedure TJinryo_f.edtGroupOrderValueKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#32]) then
    Key := #0;

end;

procedure TJinryo_f.edtnameKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    SearChname(trim(edtname.text));
  end;
end;

procedure TJinryo_f.edtRemarkClick(Sender: TObject);
begin
     SetImeInputMode(edtRemark.Handle  , imHangul);
end;

procedure TJinryo_f.SearChname(varName: string);
begin
  try
    if varName = '' then
      exit;

    // main_f.varedtName:= varName;
    vFindname := varName;

    edtname.enabled := false;


    Application.ProcessMessages;
    if checkInt(varName) = true then
      findgogek(varName, 1)
    else if copy(varName, 1, 1) = '$' then // 보호자
      findgogek(copy(varName, 2, Length(varName) - 1), 4)
    else if copy(varName, 1, 1) = '@' then // 주민
      findgogek(copy(varName, 2, Length(varName) - 1), 2)
    else if copy(varName, 1, 1) = '#' then // 핸드폰
      findgogek(copy(varName, 2, Length(varName) - 1), 3)
    else if copy(varName, 1, 1) = '!' then // 주소
      findgogek(copy(varName, 2, Length(varName) - 1), 5)
    else
      findgogek(varName, 0);

    edtname.enabled := true;
  except
        on E: Exception do
        begin
          Showmessage(E.Message + '환자찾기오류');
          edtname.enabled := true;
        end;


  end;
end;

procedure TJinryo_f.findgogek(varName: string; varGubun: Integer = 0);
var
  tempName: string;

begin

  loadResult := LoadGogekData_name(varName, progressbar, varGubun, varViewall);

  case loadResult of
    1: // mrOk정보있는 경우
      begin

          if ma_paName ='' then
          begin
           showmessage('환자 선택 후 진행하세요.');
           exit;
          end;
          edtChart.Text:=  ma_chart;


            if LoadGogekData_chart(edtChart.text, progressbar, varViewall) = true then
            begin

              edtname.text := ma_paName;
              edtChart.text := ma_chart;

              pnlCc.caption.Text:= '<img src="'+'DoctrosNote'+'">'+'Doctor''s Note' +' '+ ma_paName +'('+ma_chart +')' + lblGenderAge.Caption;


              Jinryo_f.syncJa;
              Jinryo_f.JinryoHistoryView( ma_chart);
            //  Jinryo_f.LoadJinryo_S(ma_chart);

              Jinryo_f.LoadJinryo_TxHx(ma_chart);

              Jinryo_f.LoadJinryo_TxHx_MakeNode;



            end ;

//          if not Assigned(TxList_f) then
//          TxList_f := TTxList_f.Create(application);
//
//
//          TxList_f.aLoadForm := 'jinryo';
//
//          TxList_f.dpSdate.Date := strToDate(ma_first);//.text);
//          TxList_f.dpfdate.Date := strToDate(ma_last);//edtLast.text);
//          TxList_f.JinryoHistoryView(ma_Chart,
//              TxList_f.dpSdate.date,
//              TxList_f.dpfdate.Date);
//
//        //   TxList_f.Show;
//          if TxList_f.Showmodal = mrOK then
//          begin
//                isLoading := true; // 환자를 검색해서 불러오는 중이다.
//                varChartno := ma_chart;
//
//                edtname.text := ma_paName;
//                // edtEngname.text := ma_PaEngName ;
//                // edtJumin.text := copy(ma_jumin, 1, 6);
//                // edtJumin2.text := copy(ma_jumin, 7, 7);
//                // edtJumin2.Hint := copy(ma_jumin, 7, 7);
//
//                // edtName.Hint := ma_Paname;
//
//                // edtEngName.Hint := ma_PaEngName;
//
//                edtChart.text := ma_chart;
//
//                lblChart.Caption := ma_chart;
//
//                pnlCc.caption.Text:= '<img src="'+'DoctrosNote'+'">'+'Doctor''s Note' +' '+ ma_paName +'('+ma_chart +')' + lblGenderAge.Caption;
//
//                lblJubsuID.Caption := '';
//
//                syncJa;
//                JinryoHistoryView(ma_chart);
//
//
//                LoadRichData(ma_chart);
//
//
//                LoadSunapMemo(ma_chart, DaegiFrame_fr1.dtDate.date);
//
//                LoadReferList(rpPk);
//
//                LoadPatientFace(ma_chart, imgPic);
//
//                { TODO 1 -oha -cMake Function:치료중단 안내나, 중단한 가족이있을경우 알려준다. }
//                { TODO 1 -oha -cMake Function: 소개 감사, 선물감사 }
//
//          end;

      end;
    2: // mrCancel취소한경우
      begin
//        edtname.enabled := true;
//        edtname.SetFocus;
//
//        edtname.text := '';
//        edtEngName.text := '';
//
//        edtChart.text := '';
//
//        pnlCc.caption.Text:= '<img src="'+'DoctrosNote'+'">'+'Doctor''s Note' ;
//

      end;
    6: // mrYes새로 입력한경우
      begin

        // tempName := edtname.Text;
        //
        // fieldClear;
        //
        // //      isInitial := true;
        // //edtname.Text := edtname.text;
        // edtname.text := tempName;
        // edtfirst.Text :=  formatdatetime('YYYY-MM-DD', now);
        // //      edtlast.Text  :=  formatdatetime('YYYY-MM-DD', now);
        //
        // loadResult := 6;
        // // edtchart.SetFocus;
        // // if varChartRule = '6' then
        // isLoading := false;
        //
        // if configvalue.varChartRule = '6' then
        // begin
        // edtChart.SetFocus;
        // end
        // else
        // begin
        // edtchart.text :=  ChartNoCreate('1');
        //
        // edtJumin.SetFocus;
        // end;

      end;
  end;
end;

procedure TJinryo_f.edtSanjungKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13  then
      begin
           //산정특레코드 V 대문자.
           edtSanjung.Text := uppercase( edtSanjung.Text);
           Jinryobiset;

      end;
end;

procedure TJinryo_f.edtSearchDrugChange(Sender: TObject);
begin
case  radiogroup2.ItemIndex of
   0: grdDrug.NarrowDown(edtSearchDrug.text, 1); //수가코드
   1: grdDrug.NarrowDown(edtSearchDrug.text, 3); //사용자코드
   2: grdDrug.NarrowDown(edtSearchDrug.text, 2); //수가명칭
end;


end;

procedure TJinryo_f.edtSearchDrugKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin

    btnDrugFindClick(self);

  end;
end;

procedure TJinryo_f.edtSearchSugaClick(Sender: TObject);
begin
    edtSearchSugaCode.text:='';
    edtSearchSuga.text:='';
    edtSearchSugaName.text:='';
    radiogroup1.ItemIndex :=  (sender as TAdvedit).Tag;
end;

procedure TJinryo_f.edtSearchSugaCodeClick(Sender: TObject);
begin
    edtSearchSugaCode.text  :='';
    edtSearchSuga.text      :='';
    edtSearchSugaName.text  :='';
    radiogroup1.ItemIndex   :=  (sender as TAdvedit).Tag;
end;

procedure TJinryo_f.edtSearchSugaCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SugaFind(0);
  end;
end;

procedure TJinryo_f.edtSearchSugaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
          VK_DOWN :
           begin


             grdSuga.SetFocus;


           end;
    end;
end;

procedure TJinryo_f.edtSearchSugaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

     SugaFind(2);

  end;
end;

procedure TJinryo_f.edtSearchSugaNameClick(Sender: TObject);
begin

    edtSearchSugaCode.text:='';
    edtSearchSuga.text:='';
    edtSearchSugaName.text:='';
    radiogroup1.ItemIndex :=  (sender as TAdvedit).Tag;

end;

procedure TJinryo_f.edtSearchSugaNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
     SugaFind(1);
  end;
end;

procedure TJinryo_f.EECP1Click(Sender: TObject);
begin

     if not Assigned(eecp_f) then
        eecp_f := Teecp_f.Create(application);
     eecp_f.show;

end;

procedure TJinryo_f.EPOCH1Click(Sender: TObject);
var
     strName1: string;
     strName2: string;
begin
     strname1 := extractFilepath(paramstr(0)) + 'EpochData\' + 'EPOC_IF.exe';

     ShellExecute(self.Handle, 'open', pChar(strname1), nil, nil, SW_SHOW);
end;

procedure TJinryo_f.EPOCH2Click(Sender: TObject);
begin

      EPOCHDataLoad(ma_Jubsu_ID) ;
      pnlJinryoHx.Visible := true;
end;

procedure TJinryo_f.edtCCClick(Sender: TObject);
begin
    SetImeInputMode(edtCC.Handle  , imHangul);
end;

procedure TJinryo_f.edtCCContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

      RichEditPopupMenu(TRichEdit(Sender));
      Handled := true;

end;

procedure TJinryo_f.edtChartKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if loadResult <> 6 then
    begin
      if trim(edtChart.text) = '' then
        exit;

      if LoadGogekData_chart(edtChart.text, progressbar, varViewall) = true then
      begin

        edtname.text := ma_paName;
        edtChart.text := ma_chart;

        pnlCc.caption.Text:= '<img src="'+'DoctrosNote'+'">'+'Doctor''s Note' +' '+ ma_paName +'('+ma_chart +')' + lblGenderAge.Caption;


        Jinryo_f.syncJa;
        Jinryo_f.JinryoHistoryView( ma_chart);
      //  Jinryo_f.LoadJinryo_S(ma_chart);

        Jinryo_f.LoadJinryo_TxHx(ma_chart);

        Jinryo_f.LoadJinryo_TxHx_MakeNode;



      end
      else
      begin

        edtname.text := '';
        edtChart.text := '';

        pnlCc.caption.Text:= '<img src="'+'DoctrosNote'+'">'+'Doctor''s Note' ;


        edtname.SetFocus;
      end;

    end
    else
      edtChart.SetFocus;

  end;
end;

procedure TJinryo_f.edtFasvoriteSearchChange(Sender: TObject);
begin
  if copy(edtFasvoriteSearch.text,1,1)='+'  then  //코드검색
  begin
       grdFavorite.LockUpdate := true;
       grdFavorite.NarrowDown(copy(edtFasvoriteSearch.text,2,length(edtFasvoriteSearch.text) - 1 ), 2) ;
       grdFavorite.AutoNumberCol(0);
       grdFavorite.LockUpdate := false;
  end
  else
  begin                                   //명칭검색
        grdFavorite.LockUpdate := true;
        grdFavorite.NarrowDown(edtFasvoriteSearch.text, 1) ;
        grdFavorite.AutoNumberCol(0);
        grdFavorite.LockUpdate := false;
  end;
end;

procedure TJinryo_f.edtFindGroupCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    btnGroupCodeFindClick(self);

  end;
end;

procedure TJinryo_f.LoadDoc;
begin

  // ToDo : Why slow load???

  with cbDoc do
  begin
    Columns.Clear;
    ComboItems.Clear;
  end;
  with Dm_f.sqlwork do
  begin
    close;
    SQL.Clear;
    // Sql.Add('select * from ma_Sawon_basic   ');
    // Sql.Add('where sajikgub = ''1'' and sateam=:team and nouse <> ''1'' ');

    SQL.Add(' select saName, team_name, team_color, saBun , saMyunhu , saID    ');
    SQL.Add(' from  ma_sawon_basic s join ma_team t on s.sateam = t.team_name  ');
    SQL.Add(' where saJikGub= ''1''  and nouse <> ''1''                        ');
    SQL.Add(' order by jubsu_order, sabun                                      ');
    // Sql.Add(' order by team_Name asc');
    // paramByName('team').asString := inttostr(varTeam);
    open;
    First;
    while not eof do
    begin
      with cbDoc do
      begin
        with Columns.Add do // 0.팀명
        begin
          width := 0;
          Font.Style := [fsBold];
        end;
        with Columns.Add do // 1.색
        begin
          width := 0;
          Font.Color := ClBlue;
          Font.Style := [fsBold];
        end;
        with Columns.Add do // 2.의사명
        begin
          width := 100;
        end;
        with Columns.Add do // 3.면허
        begin
          width := 100;
          Font.Color := ClBlue;
          Font.Style := [fsBold];
        end;

        with Columns.Add do // 4.SaID
        begin
          width := 0;
          Font.Color := ClBlue;
          Font.Style := [fsBold];
        end;

        with ComboItems.Add do
        begin
          // Strings.Add(FieldByName('team_name').AsString);
          // Strings.Add(FieldByName('team_color').AsString);
          // Strings.Add(FieldByName('team_doctor1').AsString);
          Strings.Add(fieldByname('team_name').asString); // 0
          Strings.Add(fieldByname('team_color').asString); // 1
          Strings.Add(fieldByname('saName').asString); // 2
          Strings.Add(fieldByname('saMyunhu').asString); // 3
          Strings.Add(fieldByname('saID').asString); // 4

        end;

      end;

      next;
    end;
  end;
  cbDoc.itemindex := 0;
end;

procedure TJinryo_f.cbBohum100Click(Sender: TObject);
begin
  JinryoBiSet;
end;

procedure TJinryo_f.cbChojeCloseUp(Sender: TObject);
begin

  // if (FormatDateTime('YYYY-MM-DD', dMain.Date) < '2012-07-01') and (cbChoje.itemindex = 5) then
  // begin
  // Showmessage('틀니료는 진찰료를 산정안합니다.' + #10#13 + '' + #10#13 +
  // '단, 2012.7.1부터 시행입니다  !!');
  // Exit;
  // end;

  if ((cbChoje.itemindex = 2) or (cbChoje.itemindex = 3) or
    (cbChoje.itemindex = 7) or (cbChoje.itemindex = 6)) then
  begin
    edtJinTime.text := inputbox('내원시간을 입력해 주세요(예:오후2시25분 => 1425)    ',
      '심야내원시간 : ', FormatDateTime('hhnn', now));
    edtSimTime.text := edtJinTime.text;
  end
  else
  begin
    edtJinTime.text := '';
    edtSimTime.text := '';
  end;

  if ((cbChoje.itemindex = 0) or (cbChoje.itemindex = 1) or
    (cbChoje.itemindex = 4) or (cbChoje.itemindex = 5) or
    (cbChoje.itemindex = 12) or (cbChoje.itemindex = 13) or
    (cbChoje.itemindex = 9) or (cbChoje.itemindex = 10)) then
  begin
    chbYagan.Checked := false;
  end
  else
  begin
    chbYagan.Checked := true;
    cbSatMorningGasan.Checked := false;

  end;

  if (FormatDateTime('YYYY-MM-DD', dmain.Date) > '2012-03-31') and
    (cbChoje.itemindex = 5) then
  begin
    Showmessage('검진당일시 진찰료가 2012.4.1 부터 산정됩니다.' + #10#13 + '' + #10#13 +
      '초,재진을 선택한후 [일반 검진당일진찰]을 체크하세요 !!');
    exit;
  end;

  if LblAge.Caption = '' then
    LblAge.Caption := '20';

  JinryoBiSet;

  varValueChanged := true;

end;

procedure TJinryo_f.cbDocCloseUp(Sender: TObject);
var
  i: Integer;
begin
  if grdSangByung.RowCount > 1 then
  begin
    for i := 1 to grdSangByung.RowCount - 1 do
    begin
      grdSangByung.Cells[13, i] := cbDoc.ColumnItems[cbDoc.itemindex, 2];
      // cmbDoctor.Text; //담당의
      grdSangByung.Cells[14, i] := cbDoc.ColumnItems[cbDoc.itemindex, 3];
      // 담당의면허번호
    end;
  end;
  varValueChanged := true;
end;

procedure TJinryo_f.cbJongCloseUp(Sender: TObject);
begin
  if LblAge.Caption = '' then
    LblAge.Caption := '20';

  JinryoBiSet;

  varValueChanged := true;


end;

procedure TJinryo_f.LoadHapsanSummary(sChart, sJin_day: string;
  sJin_day2: string);
begin

  with Dm_f.SqlTemp13 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select sum(chong) as sumChong,sum(chung) as sumChung, ');
    SQL.Add(' sum(chung+bonin) as sumbohumChong, ');
    SQL.Add('sum(bonin) as sumBonin, sum(jubsuak) as SumJubsuak  from jinryo_p  ');
    SQL.Add(' where chart=:chart ');
    SQL.Add(' and jin_day >=:jin_day and jin_day <=:jin_day2  and chojae <> ''13''    ');
    paramByName('jin_day2').asString := sJin_day2;
    paramByName('jin_day').asString := sJin_day;
    paramByName('chart').asString := sChart;
    open;

    edit6.text := fieldByname('sumbohumChong').asString;
    // 급여 총진료비  fieldByname('sumChong').asString;
    edit8.text := fieldByname('sumChung').asString;
    edit9.text := fieldByname('sumBonin').asString;
    edit10.text := fieldByname('sumJubsuak').asString;

    close;
    SQL.Clear;
    SQL.Add('select sum(sunapek) as sumSunapek, sum(card) as sumcard, sum(hyun + tong) as sumHyun, sum(bonin1) as sumBonin1,  ');
    SQL.Add('   sum(Hyunreceipt + (case when Hyunreceipt_tong is null then 0 else Hyunreceipt_tong end) ) as sumHyunReceipt  from ma_sunap ');
    SQL.Add(' where chart=:chart ');
    SQL.Add(' and sday >=:jin_day and sday <=:jin_day2 ');
    paramByName('jin_day2').asString := sJin_day2;
    paramByName('jin_day').asString := sJin_day;
    paramByName('chart').asString := sChart;
    open;

    edtSunap.text := fieldByname('sumSunapek').asString;
    edtHyun.text := fieldByname('sumHyun').asString;
    edtHyunreceipt.text := fieldByname('sumHyunReceipt').asString;
    edtCard.text := fieldByname('sumCard').asString;
    edtBonin1.text := fieldByname('sumBonin1').asString;
    edtBct.text := '0';
    edtImplant.text := '0';
    bocheulkyo.text := '0';
    kitakyo.text := '0';

  end;

end;

procedure TJinryo_f.btnHapsanSearchClick(Sender: TObject);
var
  i: Integer;
  sanTeakCode: string;
    juSangRow : integer;

begin
  for i := 0 to grdCost.RowCount - 1 do
  begin
    grdCost.Cells[1, i] := '';
    grdCost.Cells[2, i] := '';
    grdCost.Cells[3, i] := '';
    grdCost.Cells[4, i] := '';
    grdCost.Cells[5, i] := '';
    grdCost.Cells[6, i] := '';
  end;



  // setJinSO(varChartno,
  // FormatDateTime('YYYY-MM-DD', datetimepicker1.date) ,
  // FormatDateTime('YYYY-MM-DD', datetimepicker2.date)
  // ); //진료내역불러오기

  setJinryo_s(
     ma_jubsu_id,
     grdJx2,
     varChartno,
     cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
      cbDoc.ColumnItems[cbDoc.itemindex, 4],
     inttostr(cbIO.ItemIndex ),
     FormatDateTime('YYYY-MM-DD', dmain.Date),
     FormatDateTime('YYYY-MM-DD', DateTimePicker2.Date));


  setJinryo_o(
     grdSangByung,
     varChartno,
     cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
     inttostr(cbIO.ItemIndex ),
     ma_jubsu_id,
     sanTeakCode,
     juSangRow,
     FormatDateTime('YYYY-MM-DD',  dmain.Date),
     FormatDateTime('YYYY-MM-DD', DateTimePicker2.Date));

     edtSanjung.text:= sanTeakCode;

  LoadHapsanSummary(
     varChartno,
     FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date),
     FormatDateTime('YYYY-MM-DD', DateTimePicker2.Date));


  JinryoBiSet;

  LoadBohumHangMok(
     varChartno,
     FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date),
     FormatDateTime('YYYY-MM-DD', DateTimePicker2.Date));

end;

procedure TJinryo_f.btnHapsanClick(Sender: TObject);
begin
  JinryoHistoryViewforHapsan;
  hapsanClear;

  pnlhapsan.left := 165;
  pnlhapsan.top := 5;
  pnlhapsan.width := 726;
  pnlhapsan.height := 630;
  pnlhapsan.Visible := not pnlhapsan.Visible;
end;

procedure TJinryo_f.hapsanClear;
var
  i: Integer;
begin
  for i := 0 to grdCost.RowCount - 1 do
  begin
    grdCost.Cells[1, i] := '';
    grdCost.Cells[2, i] := '';
    grdCost.Cells[3, i] := '';
  end;

  with grdCost do
  begin
    Cells[0, 0] := '투약,주사'; // '투약,주사09..18';
    Cells[0, 1] := '마취'; // '마취19';
    Cells[0, 2] := '틀니'; // '틀니24';
    Cells[0, 3] := '처치, 수술'; // '처치, 수술23,25';
    Cells[0, 4] := '검사'; // '검사 29,30';
    Cells[0, 5] := '방사선'; // '방사선 31';
    Cells[0, 6] := '비보험'; // '비보험 45..49';
    Cells[0, 7] := '기타'; // '기타';
    Cells[0, 8] := 'CT'; // 'CT 39';
  end;

  DateTimePicker1.Date := now;
  DateTimePicker2.Date := now;
  DateTimePicker3.Date := now;
  edit6.text := '0';
  edit8.text := '0';
  edit9.text := '0';
  edit10.text := '0';

  edtSunap.text := '0';
  edtHyun.text := '0';
  edtHyunreceipt.text := '0';
  edtCard.text := '0';
  edtBonin1.text := '0';
  edtBct.text := '0';
  edtImplant.text := '0';

  bocheulkyo.text := '0';
  kitakyo.text := '0';
  memChamgo.Clear;

  // pnlHapsan.visible:=  not pnlHapsan.visible;
end;

procedure TJinryo_f.PrintReceiptFrx;
var
  WPath, sYoungNo: string;
  bReturn: Boolean;
begin
  //
  // sYoungNo := '';
  //
  //
  // if  configvalue.varIbwon = '1' then
  // begin
  // if not assigned(wereConfirm_f) then
  // begin
  // wereConfirm_f := TwereConfirm_f.Create(application);
  // end;
  //
  // if   wereConfirm_f.ShowModal = 1  then
  // begin
  // Ibwon:=  wereConfirm_f.isIbwon;
  //
  // end
  // else
  // begin
  // Ibwon:=  false;
  //
  // end;
  //
  // //  wereConfirm_f.Free;
  //
  //
  // end;
  //
  //
  // with dm_f.SqlWork do
  // begin
  // Close;
  // Sql.Clear;
  // Sql.Add('select jin_day,youngsu_num from jinryo_p');
  // Sql.Add(' where chart=:chart and jin_day=:jin_Day and jin_gu=''0'' and chojae<>''9'' and chojae<>''0'' and chojae<>''13''  ');
  // ParamByName('chart').AsString := ma_chart;
  // ParamByName('jin_day').AsString :=  FormatDateTime('YYYY-MM-DD',  datetimePicker3.Date)  ;
  // Open;
  // First;
  // if not isEmpty then
  // begin
  // if FieldByName('youngsu_num').AsInteger > 0 then
  // begin
  // sYoungNo := FormatDateTime('yyyymmdd',
  // datetimePicker3.Date) + '-' +
  // Formatfloat('000',
  // FieldByName('youngsu_num').AsInteger);
  // end
  // else
  // begin
  // //       JinryoPYoungsunumUpdate( ma_chart,
  // //        FormatDateTime('YYYY-MM-DD',  datetimePicker3.Date),
  // //        NewYoungsuNo( datetimePicker3.Date) );
  //
  //
  // sYoungNo :=
  // MakeNewYoungsu(datetimePicker3.Date);
  // end;
  // end
  // else
  // begin
  //
  //
  //
  // //        JinryoPYoungsunumUpdate( ma_chart,
  // //            FormatDateTime('YYYY-MM-DD',  datetimePicker3.Date),
  // //             NewYoungsuNo(datetimePicker3.Date) );
  //
  //
  // sYoungNo := MakeNewYoungsu(datetimePicker3.Date);
  // end;
  // end;
  //
  //
  // // Fast Report =====================================================
  // InitFastReport();
  //
  // WPath := ExtractFilePath(Application.ExeName) + 'print\';
  //
  // with frxReport do
  // begin
  // LoadFromFile(WPath + 'rptYoungsu.fr3');
  //
  // DataToPrintForm( sYoungNo);
  //
  // if cbPreview.Checked then
  // ShowReport()
  // else
  // begin
  // PrepareReport();
  // bReturn := Print();
  // end;
  // end;
end;

procedure TJinryo_f.InitFastReport;
begin
  with frxPDFExport do
  begin
    PrintOptimized := true;
    EmbeddedFonts := true;
    Background := true;
    Compressed := true;
  end;

  with frxReport do
  begin
    EngineOptions.MaxMemSize := 10000000;
    EngineOptions.UseFileCache := true;
    PreviewOptions.Buttons := [pbPrint, pbZoom, pbFind, pbPageSetup, pbTools,
      pbNavigator, pbExportQuick];
  end;
end;

procedure TJinryo_f.DataToPrintForm(sYoungNo: string);
var
  imsiryo, i: Integer;
begin

  // (jinryo_f.cbJong.itemindex = 3)

  with frxReport do
  begin
    Variables['OutDate'] := QuotedStr(FormatDateTime('YYYY-MM-DD',
      DateTimePicker3.Date)); // 발급일자
    Variables['ChartNo'] := QuotedStr(ma_chart); // 병록번호
    Variables['PtName'] := QuotedStr(ma_paName);
    // QuotedStr(main_f.edtName.text); //수진자명
    Variables['JinDay'] :=
      QuotedStr(FormatDateTime('YYYYMMDD', DateTimePicker1.Date) + '~' +
      FormatDateTime('YYYYMMDD', DateTimePicker2.Date)); // 진료일자

    Variables['YaganGongHyu'] := QuotedStr('    ');

    if Ibwon = false then
    begin

      Variables['were'] := QuotedStr('■ 외래'); // ■ 외래
      Variables['ibwon'] := QuotedStr('□ 입원'); // □ 입원
      Variables['ibwonjung'] := QuotedStr('□ 중간'); // □ 중간
      Variables['ibwontwe'] := QuotedStr('□ 퇴원'); // □ 퇴원
    end
    else
    begin

      Variables['were'] := QuotedStr('□ 외래'); // ■ 외래
      Variables['ibwon'] := QuotedStr('■ 입원'); // □ 입원
      Variables['ibwonjung'] := QuotedStr('□ 중간'); // □ 중간
      Variables['ibwontwe'] := QuotedStr('■ 퇴원'); // □ 퇴원
    end;

    Variables['YJinchal'] := edit10.FloatValue; // 진찰료
    Variables['YTotBonin'] := 0; // lblBAek.Caption; // 100/100
    Variables['YSum'] := edit6.FloatValue; // 급여계
    Variables['YBonin'] := edit9.FloatValue; // 급여본담
    Variables['YBohum'] := edit8.FloatValue; // 급여청구
    Variables['BSum'] := edtBonin1.FloatValue; // 비급여계

    Variables['TotJinryo'] := edit6.FloatValue + edtBonin1.FloatValue;
    Variables['TotBonin'] := edit9.FloatValue + edtBonin1.FloatValue;
    Variables['SunabSum'] := edtSunap.FloatValue; // 수납액(총계)

    Variables['SunabCard'] := edtCard.FloatValue; // 카드액

    Variables['SunabCash'] := edtHyun.FloatValue; // 현금액
    Variables['SunabCashYoungsu'] := edtHyunreceipt.FloatValue;
    // 현금영수증액

    // * 급여
    Variables['YJojae'] := grdCost.ints[1, 0];
    // GrdCost.cells[3, 0].AsInteger; // 투약
    Variables['YMarche'] := grdCost.ints[1, 1];
    // GrdCost.cells[3, 1].AsInteger; // 마취료
    Variables['YSusul'] := grdCost.ints[1, 3] + grdCost.ints[1, 2];
    // GrdCost.cells[3, 3].AsInteger; // 처치수술
    Variables['YGumsa'] := grdCost.ints[1, 4];
    // GrdCost.cells[3, 4].AsInteger; // 검사
    Variables['YXRay'] := grdCost.ints[1, 5];
    // GrdCost.cells[3, 5].AsInteger; // 방사선
    Variables['YChiryoJaeryo'] := grdCost.ints[2, 0] + grdCost.ints[2, 1] +
      grdCost.ints[2, 2] + grdCost.ints[2, 3] + grdCost.ints[2, 4] +
      grdCost.ints[2, 5] + grdCost.ints[2, 7];

    // 재료대     //재료및 가산율에 대한 가산금등은 해당 분류항목에 합쳐있기때문에 이건 필요없다.
    // Variables['YEtc'] := GrdCost.cells[1, 7].AsInteger;
    Variables['YEtc'] := 0; // GrdCost.cells[1, 7].AsInteger;

    // GrdCost.cells[3, 7].AsInteger; // 기타
    Variables['YCT'] := grdCost.ints[3, 8]; // CT

    // * 비급여
    Variables['BJojae'] := grdCost.ints[6, 0] + grdCostBigub.ints[1, 0]; // 투약
    Variables['BMarche'] := grdCost.ints[6, 1] + grdCostBigub.ints[1, 1]; // 마취료
    Variables['BSusul'] := grdCost.ints[6, 3] + grdCostBigub.ints[1, 3]; // 처치수술
    Variables['BGumsa'] := grdCost.ints[6, 4] + grdCostBigub.ints[1, 4]; // 검사료
    Variables['BXRay'] := grdCost.ints[6, 5] + grdCostBigub.ints[1, 5]; // 방사선

    // if cbGamDisplay.checked = true then
    // Variables['BChoum'] := edtsunap.Caption - edtBohum.Caption
    // else
    Variables['BChoum'] := '0'; // 보철교정료
    // ================================================================
    // edtbonin11.Caption  :=0;
    // bocheulkyo.floatValue := 0;
    // kitakyo.floatValue := 0;
    // imsiryo := 0;

    if grdCost.ints[6, 3] = edtBonin1.FloatValue then
    begin
      Variables['BEtc'] := 0;
    end
    else if grdCost.ints[6, 6] = edtBonin1.FloatValue then
    begin
      Variables['BEtc'] := grdCost.ints[6, 6];
    end
    else
    begin
      Variables['BEtc'] := grdCost.ints[6, 6] + edtBonin1.FloatValue;

    end;

    { for i := 0 to grdBibo.Rowcount - 1 do
      begin
      if (grdBibo.cells[0, i] = '보철') or
      (grdBibo.cells[0, i]
      = '교정') then
      begin
      bocheulkyo.floatValue := bocheulkyo.floatValue +
      grdBibo.cells[1, i].AsFloat;
      end
      else
      begin
      kitakyo.Caption := kitakyo.floatValue + grdBibo.cells[1,
      i].AsFloat;
      end;

      end;
    }
    // if bocheulkyo.floatValue > 0 then
    // begin
    Variables['BChoum'] := edtGyojung.FloatValue;
    Variables['BMulri'] := edtmulri.FloatValue;
    Variables['BEtc'] := kitakyo.FloatValue;
    Variables['BBoOrtho'] := bocheulkyo.FloatValue;
    Variables['BCT'] := edtBct.FloatValue;

    Variables['UserDefName1'] := QuotedStr(edtUserDefName1.text);
    Variables['UserDefName2'] := QuotedStr(edtUserDefName2.text);
    Variables['UserDefName3'] := QuotedStr(edtUserDefName3.text);
    Variables['UserDefName4'] := QuotedStr(edtUserDefName4.text);
    Variables['BSuhyul'] := edtUserDef1.FloatValue;

    Variables['BSelectJinryo'] := edtImplant.FloatValue;

    Variables['BUserDef2'] := edtUserDef2.FloatValue;
    Variables['BUserDef3'] := edtUserDef3.FloatValue;
    Variables['BUserDef4'] := edtUserDef4.FloatValue;

    Variables['PrevSunab'] := edtPrevSunap.FloatValue;


    // end;

    // 위에꺼 무시
    // Variables['BEtc'] := 0;
    Variables['YoungsuNo'] := QuotedStr(sYoungNo); // 영수증번호

    // grdCostBigub.cells[1, 6].AsInteger; // 보철교정
    { Variables['BBoOrtho'] := 0; // 초음파
      if grdBibo.RowCount > 5 then
      Variables['BSelectJinryo'] := GrdBibo.cells[1, 5].AsInteger // 선택진료료
      else
      Variables['BSelectJinryo'] := 0;

      Variables['BChiryoJaeryo'] := 0;
      {Variables['BChiryoJaeryo'] := GrdCost.cells[5, 0].AsInteger +
      GrdCost.cells[5, 1].AsInteger +
      GrdCost.cells[5, 3].AsInteger +
      GrdCost.cells[5, 4].AsInteger +
      GrdCost.cells[5, 5].AsInteger +

      //Variables['BEtc'] := GrdCost.cells[6, 7].AsInteger; // 기타
      Variables['BCT'] := GrdCost.cells[6, 8].AsInteger; // CT

      Variables['YoungsuNo'] := QuotedStr(sYoungNo); // 영수증번호
    }
    if (pos(#13#10, memChamgo.Lines.text) > 0) then
      Variables['YoIm'] := memChamgo.Lines.text
    else
      Variables['YoIm'] := QuotedStr(memChamgo.Lines.text);
    {

      // 현금영수증===============================================================
      if (cbHyungeum.Checked = True) then begin //현금영수증 출력하면
      Variables['SunabCashYoungsu'] := edtHyunReceipt.Caption; // 현금영수증액
      Variables['SunabCash'] := 0; // 현금영수증액
      // 신분확인번호
      Variables['RegNo'] := QuotedStr(Copy(DelDash(edtChkNo.text), 1, 6) + '-' +
      Copy(DelDash(edtChkNo.text), 7, 3) + '****');
      // 현금승인번호
      Variables['SungInNo'] := authNum;
      end;
      // 현금영수증end============================================================
    }
    Variables['HospitalName'] := QuotedStr(configvalue.varSaupname);
    // 상호명
    Variables['Doctor'] := QuotedStr(configvalue.varDaepyo);
    // 대표원장 이름
    Variables['BussNo'] := QuotedStr(configvalue.varSaupNo);
    // 사업자등록번호
    Variables['Sojae'] := QuotedStr(configvalue.varAdd1 + ' ' +
      configvalue.varAdd2); // 사업장 소재지
  end;
end;

procedure TJinryo_f.LoadBohumHangMok(sChart, sJin_day: string;
  sJin_day2: string);
var
  i: Integer;
begin

  // * 비급여 항목별로 가져오기  (ma_sunap_bibo)

  grdCostBigub.RemoveRows(1, grdCostBigub.RowCount - 1);

  grdCostBigub.RowCount := grdCost.RowCount;
  grdCostBigub.Cells[0, 0] := '09';
  grdCostBigub.Cells[0, 1] := '19';
  grdCostBigub.Cells[0, 2] := '20';
  grdCostBigub.Cells[0, 3] := '23';
  grdCostBigub.Cells[0, 4] := '29';
  grdCostBigub.Cells[0, 5] := '31';
  grdCostBigub.Cells[0, 8] := '39';
  grdCostBigub.Cells[0, 6] := '47';
  grdCostBigub.Cells[0, 7] := '50';

  with Dm_f.sqlwork do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ma_sunap_bibo ');
    SQL.Add(' where chart=:chart ');
    SQL.Add(' and sunapdate >=:jin_day and sunapdate <=:jin_day2 ');
    SQL.Add('   order by hangmok');
    paramByName('jin_day2').asString := sJin_day2;
    paramByName('jin_day').asString := sJin_day;
    paramByName('chart').asString := sChart;

    open;
    First;

    // 참고
    // 17:비급여주사       ,19:비급여마취료
    // 20:비급여이학(물리치료),  23:비급여처치수술
    // 29:비급여검사료        ,  31:비급여방사선
    // 39:비급여CT            ,  40:비급여MRI
    // 47:보철                ,  48:교정
    // 49:임플란트            ,  50:기타 ( M/F 포함)
    if not isEmpty then
    begin
      while not eof do
      begin

        case fieldByname('hangcode').AsInteger of
          09 .. 18:
            begin
              grdCostBigub.ints[1, 0] := grdCostBigub.ints[1, 0] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 0, true, false)
              else
                grdCostBigub.AddCheckBox(2, 0, false, false);

            end;
          19:
            begin
              grdCostBigub.ints[1, 1] := grdCostBigub.ints[1, 1] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 1, true, false)
              else
                grdCostBigub.AddCheckBox(2, 1, false, false)

            end;
          20:
            begin
              grdCostBigub.ints[1, 2] := grdCostBigub.ints[1, 2] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 2, true, false)
              else
                grdCostBigub.AddCheckBox(2, 2, false, false);

            end;
          23, 25:
            begin
              grdCostBigub.ints[1, 3] := grdCostBigub.ints[1, 3] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 3, true, false)
              else
                grdCostBigub.AddCheckBox(2, 3, false, false);

            end;
          29, 30:
            begin
              grdCostBigub.ints[1, 4] := grdCostBigub.ints[1, 4] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 4, true, false)
              else
                grdCostBigub.AddCheckBox(2, 4, false, false);

            end;

          31 .. 34:
            begin
              grdCostBigub.ints[1, 5] := grdCostBigub.ints[1, 5] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 5, true, false)
              else
                grdCostBigub.AddCheckBox(2, 5, false, false);

            end;
          39:
            begin
              grdCostBigub.ints[1, 8] := grdCostBigub.ints[1, 8] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 8, true, false)
              else
                grdCostBigub.AddCheckBox(2, 8, false, false);

            end;
          45: // 비보기타
            begin
              grdCostBigub.ints[1, 7] := grdCostBigub.ints[1, 7] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 7, true, false)
              else
                grdCostBigub.AddCheckBox(2, 7, false, false);

            end;
          47 .. 48: // 보철,교정
            begin
              grdCostBigub.ints[1, 6] := grdCostBigub.ints[1, 6] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 6, true, false)
              else
                grdCostBigub.AddCheckBox(2, 6, false, false);

            end;
          49 .. 60:
            // 비보기타   ,   만약을 대비해서 행위코드를 여유롭게
            begin
              grdCostBigub.ints[1, 7] := grdCostBigub.ints[1, 7] +
                fieldByname('geumek').AsInteger;
              if fieldByname('kw_code').asString = '1' then
                grdCostBigub.AddCheckBox(2, 7, true, false)
              else
                grdCostBigub.AddCheckBox(2, 7, false, false);

            end;

        else
          begin // 기타
            grdCostBigub.ints[1, 7] := grdCostBigub.ints[1, 7] +
              fieldByname('geumek').AsInteger;
            if fieldByname('kw_code').asString = '1' then
              grdCostBigub.AddCheckBox(2, 7, true, false)
            else
              grdCostBigub.AddCheckBox(2, 7, false, false);

          end;

        end;

        next;
      end;
    end;
  end;
end;

procedure TJinryo_f.pnlhapsanClose(Sender: TObject);
var
   sanTeakCode : string;
     juSangRow : integer;

begin
  // setJinSO(varChartno,
  // FormatDateTime('YYYY-MM-DD', dmain.Date ) ,
  // FormatDateTime('YYYY-MM-DD', dmain.Date)
  // ); //진료내역불러오기

  setJinryo_s(
    ma_jubsu_id,
    grdJx2,
    varChartno,
    cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
     cbDoc.ColumnItems[cbDoc.itemindex, 4],
    inttostr(cbIO.ItemIndex ),
    FormatDateTime('YYYY-MM-DD', dmain.Date),
    FormatDateTime('YYYY-MM-DD', dmain.Date));

  setJinryo_o(grdSangByung,
     varChartno,
     cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
     inttostr(cbIO.ItemIndex ),
     ma_jubsu_id,
     sanTeakCode,
     juSangRow,
     FormatDateTime('YYYY-MM-DD',  dmain.Date),
     FormatDateTime('YYYY-MM-DD', dmain.Date));

  if LblAge.Caption <> '' then
  begin
    JinryoBiSet;
  end;

end;

procedure TJinryo_f.pnlhapsanDblClick(Sender: TObject);
begin
  pnlJinryo.Visible := not pnlJinryo.Visible;

end;

procedure TJinryo_f.pnlProgressDblClick(Sender: TObject);
begin



  pnlhapsan.left := 165;
  pnlhapsan.top := 5;
  pnlhapsan.width := 726;
  pnlhapsan.height := 630;
  pnlhapsan.Visible :=  not pnlhapsan.Visible;



end;

procedure TJinryo_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  SelectResult: Integer;
  Path: string;
  FormInit: TIniFile;
begin

     if Application.MessageBox(
                pchar( 'HHPMS[진료실]을  종료 하시겠습니까?'), 'HHPMS[진료실] 종료 확인', MB_YESNO) <> 6 then   //yes : 6 No : 7
      begin
           canClose  := false;
           wCanClose := false;
           exit;

      end;




  Path := GetConfigDir + 'db.ini';

  FormInit := TIniFile.Create(Path);
  // FormInit.WriteInteger('splitInfo', 'pnltop_jinryo',         Pnltop.Height);
  // FormInit.WriteInteger('splitInfo', 'pcVisitInfo',    pcVisitInfo.Width);
  // FormInit.WriteInteger('splitInfo', 'pgRemark',       pgRemark.Width);
  FormInit.WriteInteger('splitInfo', 'pnlVitalInfo', pnlVitalinfo.height);
  FormInit.WriteInteger('splitInfo', 'pnlSangByungWidth', pnlSangByung.width);
  FormInit.WriteInteger('splitInfo', 'pnlWaitingListWidth' , pnlWait_Jinryo.width);
  FormInit.WriteInteger('splitInfo', 'pnlWaitingListHeight',   pnlWaitingList.height);

  FormInit.WriteInteger('splitInfo', 'pnlVitalinfo', pnlVitalinfo.height);
  FormInit.WriteInteger('splitInfo', 'pnlccHeight', pnlCC.height);
  FormInit.WriteInteger('splitInfo', 'pnlMedicalHxHeight', pnlMedicalHx.height);
  FormInit.WriteInteger('splitInfo', 'pnlDrHeight', pnlDr.height);
  FormInit.WriteInteger('splitInfo', 'pnlPtHeight', pnlPt.height);


  FormInit.WriteInteger('splitInfo', 'pnlCCnRequestHeight', pnlCCnRequest.height);




//  FormInit.WriteInteger('splitInfo', 'pnlReferHeight', pnlRefer.height);

  FormInit.WriteInteger('splitInfo', 'pnlDiseaseHeight', pnlDisease.height);
  FormInit.WriteInteger('splitInfo', 'pnlSoapWidth', pnlSOAP.width);
  FormInit.WriteInteger('splitInfo', 'pnlSimsaChamgoWidth',
    pnlSimsaChamgo.width);

  FormInit.WriteInteger('splitInfo', 'pnlReferHeadInfoHeight',
    pnlReferHeadInfo.Height);

  // FormInit.WriteInteger('splitInfo', 'pnlremarkWidth', pnlremark.Width);

  FormInit.WriteInteger('splitInfo', 'pnlremarkHeight', pnlremark.height);


  FormInit.WriteInteger('splitInfo', 'pnlChamgoWidth', pnlChamgo.width);

  FormInit.WriteInteger('splitInfo', 'pnlPicinfoWidth', pnlPicinfo.width);

  FormInit.WriteInteger('splitInfo', 'pnlCalendarWidth', pnlCalendar.width);
 // FormInit.WriteInteger('splitInfo', 'pnlPastHxHeight', pnlPastHx.Height);

  FormInit.WriteInteger('splitInfo', 'memReferListHeight', memReferList.height);
  FormInit.WriteInteger('splitInfo', 'pnlChkListNRemarkHeight', pnlChkListNRemark.height);



   if  useEnlarge_pnlWait_Jinryo = false then

        FormInit.WriteInteger('splitInfo', 'useEnlarge_pnlWait_Jinryo', 0)
   else
        FormInit.WriteInteger('splitInfo', 'useEnlarge_pnlWait_Jinryo', 1);



  FormInit.Free;

  saveGridColumnOrder(DaegiFrame_fr1.grdDaegi, 'jinryo');
  saveGridColumnOrder(GrdJx2, 'jinryo');


  if varValueChanged = true then
  begin
    SelectResult := MessageDlg('청구수납내용이 저장되지 않았습니다. ' + #10#13 + '저장 하시겠습니까?',
      mtInformation, [mbYes, mbNo, mbCancel], 0);

    case SelectResult of

      mrYes:
        begin
          btnSaveClick(self);
          CanClose := true;
          wCanClose := true;
        end;

      mrNo:
         begin
            CanClose := true;
            wCanClose := true;
         end;
      mrCancel:
      begin
           CanClose := false;
           wCanClose := false;
      end;


    end;

  end
  else
  begin
     CanClose := true;
     wCanClose := true;
  end;

    //Lock전체를 해제 한다.
  ReleaseLockAll('HJinryo',  V_UserID, GetIPAddress);

    // Terminate all running threads
//  KillThreads;
//  // Reset thread id counter
//  nThreads := 0;
//  // Clear listbox results
////  lbResults.Items.Clear;
//  // clear shared resource
//  ClearQueryTimes;


end;

procedure TJinryo_f.FieldSet_dayChoice(SelDate: TDateTime; varChart: string);
var
  nOldChojae, nOldJongbeul: Integer;
  aJakyuk: TJakyuk;
begin
  // ...................................................................
  // 달력의 날짜를 변경하면 자동으로 저장되게 (2004.0609하기현)

  LoadGogekData_chart(varChart, main_f.progressbar, varViewall);
  // memo2.Lines.Add(intToStr(ComboBox1.Items.Count));

  // 캡션날짜 동기화
  DaySet(SelDate);
  /// dmain.date);
  GetHoliday;
  // CalendarChangeSave;

  nclick := 0;
  // ...................................................................
  nOldChojae := cbChoje.itemindex;
  nOldJongbeul := cbJong.itemindex;
  pnlCostClear;

  nMan := 0;

  chbYagan.Checked := false;
  chkPregnan.Checked := false;
  // edtGongsang.Text := '0';
  loadGongsang;
  // chbGongsang.Checked := False;
  // chkYongUa.Checked := False; //2011.7
  // chkIlban.Checked := false; //2012.4
  // chkFirst.Checked := false; //2012.4
  cbSanCode3.itemindex := 0;

  FieldSetJin(varChart,  FormatDateTime('YYYY-MM-DD', SelDate) ,
            nOldChojae, nOldJongbeul);

  if LblAge.Caption = '' then
    LblAge.Caption := '20';

  LblAge.Caption :=
  // NaiCalc(main_f.edtJumin.text + main_f.edtJumin2.text,
    naiCalc(ma_jumin, FormatDateTime('YYYY-MM-DD', SelDate));

  // 공휴일 체크
  if DayOfWeek(dmain.Date) = 1 then
  begin
    chbYagan.Checked := true;
  end
  else
  begin
    with Dm_f.SqlTemp13 do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from gonghyu where gh_day=:gh_day');
      paramByName('gh_day').asString := FormatDateTime('YYYY-MM-DD', SelDate);
      open;
      First;
      if not isEmpty then
      begin
        chbYagan.Checked := true;
      end;
    end;

  end;


  JinryoBiSet;

end;

procedure TJinryo_f.Saveimplantinfo(varTeeth1, varTeeth2, varTeeth3,
  varTeeth4: string);
var
  i: Integer;
  sP1, sP2, sP3, sP4: string;
  P: string;
  varTeeth: string;
begin
  // showmessage(varTeeth);
  varTeeth := convertTeeth2(varTeeth1, varTeeth2, varTeeth3, varTeeth4);

  with Dm_f.sqlTemp do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from implant_info    ');
    SQL.Add('where chart=:chart           ');
    paramByName('chart').asString := ma_chart;
    open;

    if isEmpty then
    begin
      // 없으면 생성
      with Dm_f.sqlwork do
      begin
        close;
        SQL.Clear;
        SQL.Add('insert into implant_info (      ');
        SQL.Add('chart, p1, p2, p3, p4, regdate  ');
        SQL.Add(') values (                      ');
        SQL.Add(':chart,:p1,:p2,:p3,:p4,:regdate)');

        paramByName('chart').asString := ma_chart;
        paramByName('p1').asString := varTeeth1;
        paramByName('p2').asString := varTeeth2;
        paramByName('p3').asString := varTeeth3;
        paramByName('p4').asString := varTeeth4;
        paramByName('regDate').asString := FormatDateTime('yyyy-mm-dd', now);
        execsql;

      end;
    end
    else
    begin
      // 있으면 해당 부위 불러와서 추가(병합)
      sP1 := fieldByname('p1').asString;
      sP2 := fieldByname('p2').asString;
      sP3 := fieldByname('p3').asString;
      sP4 := fieldByname('p4').asString;
      // showmessage(sp1 + #13#10 + sp2 + #13#10 + sp3 + #13#10 + sp4);

      P := '';
      for i := 1 to Length(trim(varTeeth)) do
      begin
        if copy(varTeeth, i, 1) = '#' then
        begin
          //
          if checkInt(P) then
          begin
            case StrToInt(copy(P, 1, 1)) of
              1:
                sP1 := trim(copy(sP1, 1, 8 - StrToInt(copy(P, 2, 1))) + copy(P,
                  2, 1) + copy(sP1, 10 - StrToInt(copy(P, 2, 1)), 8));
              2:
                sP2 := trim(copy(sP2, 1, StrToInt(copy(P, 2, 1)) - 1) + copy(P,
                  2, 1) + copy(sP2, StrToInt(copy(P, 2, 1)) + 1, 8));
              3:
                sP3 := trim(copy(sP3, 1, StrToInt(copy(P, 2, 1)) - 1) + copy(P,
                  2, 1) + copy(sP3, StrToInt(copy(P, 2, 1)) + 1, 8));
              4:
                sP4 := trim(copy(sP4, 1, 8 - StrToInt(copy(P, 2, 1))) + copy(P,
                  2, 1) + copy(sP4, 10 - StrToInt(copy(P, 2, 1)), 8));
              5:
                sP1 := trim(copy(sP1, 1, 8 - StrToInt(copy(P, 2, 1))) +
                  numToChr(copy(P, 2, 1)) + copy(sP1,
                  10 - StrToInt(copy(P, 2, 1)), 8));
              6:
                sP2 := trim(copy(sP2, 1, StrToInt(copy(P, 2, 1)) - 1) +
                  numToChr(copy(P, 2, 1)) + copy(sP2, StrToInt(copy(P, 2, 1)
                  ) + 1, 8));
              7:
                sP3 := trim(copy(sP3, 1, StrToInt(copy(P, 2, 1)) - 1) +
                  numToChr(copy(P, 2, 1)) + copy(sP3, StrToInt(copy(P, 2, 1)
                  ) + 1, 8));
              8:

                sP4 := trim(copy(sP4, 1, 8 - StrToInt(copy(P, 2, 1))) +
                  numToChr(copy(P, 2, 1)) + copy(sP4,
                  10 - StrToInt(copy(P, 2, 1)), 8));
            end;
            P := '';
          end;
        end
        else
        begin
          if copy(varTeeth, i, 1) <> ',' then
          begin
            P := P + copy(varTeeth, i, 1);
          end;
        end;
      end;

      if checkInt(P) then
      begin
        case StrToInt(copy(P, 1, 1)) of
          1:
            sP1 := trim(copy(sP1, 1, 8 - StrToInt(copy(P, 2, 1))) + copy(P, 2,
              1) + copy(sP1, 10 - StrToInt(copy(P, 2, 1)), 8));
          2:
            sP2 := trim(copy(sP2, 1, StrToInt(copy(P, 2, 1)) - 1) + copy(P, 2,
              1) + copy(sP2, StrToInt(copy(P, 2, 1)) + 1, 8));
          3:
            sP3 := trim(copy(sP3, 1, StrToInt(copy(P, 2, 1)) - 1) + copy(P, 2,
              1) + copy(sP3, StrToInt(copy(P, 2, 1)) + 1, 8));
          4:
            sP4 := trim(copy(sP4, 1, 8 - StrToInt(copy(P, 2, 1))) + copy(P, 2,
              1) + copy(sP4, 10 - StrToInt(copy(P, 2, 1)), 8));
          5:
            sP1 := trim(copy(sP1, 1, 8 - StrToInt(copy(P, 2, 1))) +
              numToChr(copy(P, 2, 1)) + copy(sP1,
              10 - StrToInt(copy(P, 2, 1)), 8));
          6:
            sP2 := trim(copy(sP2, 1, StrToInt(copy(P, 2, 1)) - 1) +
              numToChr(copy(P, 2, 1)) + copy(sP2, StrToInt(copy(P, 2, 1)
              ) + 1, 8));
          7:
            sP3 := trim(copy(sP3, 1, StrToInt(copy(P, 2, 1)) - 1) +
              numToChr(copy(P, 2, 1)) + copy(sP3, StrToInt(copy(P, 2, 1)
              ) + 1, 8));
          8:
            sP4 := trim(copy(sP4, 1, 8 - StrToInt(copy(P, 2, 1))) +
              numToChr(copy(P, 2, 1)) + copy(sP4,
              10 - StrToInt(copy(P, 2, 1)), 8));
        end;
      end;

      with Dm_f.sqlwork do
      begin
        close;
        SQL.Clear;
        SQL.Add('update implant_info set                          ');
        SQL.Add('p1=:p1, p2=:p2, p3=:p3, p4=:p4, regdate=:regdate ');
        SQL.Add('where chart=:chart                               ');
        paramByName('chart').asString := ma_chart;
        paramByName('p1').asString := sP1;
        paramByName('p2').asString := sP2;
        paramByName('p3').asString := sP3;
        paramByName('p4').asString := sP4;
        paramByName('regDate').asString := FormatDateTime('yyyy-mm-dd', now);
        execsql;

      end;

    end;
  end;
end;

procedure TJinryo_f.btnjaboCloseClick(Sender: TObject);
begin
  pnlJaboInfo.Visible := false;

end;

procedure TJinryo_f.btnCCClick(Sender: TObject);
var

  varRgTag: Integer;

begin

  if ma_chart <> '' then
  begin

    if not assigned(saveChamgo_f) then
    begin
      saveChamgo_f := TsaveChamgo_f.Create(Application);
      saveChamgo_f.Caption := ((Sender as TButton).Parent as TAdvPanel)
        .Caption.text;
      saveChamgo_f.left := 500;
      // pnlRemark.Left - (saveChamgo_f.width) div 2 - 50;
      saveChamgo_f.top := 400; // spSkinPanel2.Top;
      varRgTag := ((Sender as TButton).Parent as TAdvPanel).Tag;
      saveChamgo_f.varRgTag := varRgTag;
      saveChamgo_f.Showmodal;
    end
    else
    begin
      saveChamgo_f.Caption := ((Sender as TButton).Parent as TAdvPanel)
        .Caption.text;
      saveChamgo_f.left := 500;
      // (Sender as TAdvGroupBox).Left + saveChamgo_f.width;
      saveChamgo_f.Showmodal;
    end;
  end;

  LoadRichData(ma_chart);
    LoadSunapMemo(ma_chart, DaegiFrame_fr1.dtDate.date);

end;

procedure TJinryo_f.SugaFind(kind : integer);
begin

   grdSuga.RemoveRows(1, grdSuga.RowCount - 1);

   if (edtSearchSugaCode.text ='')
   and  (edtSearchSugaName.text ='')
   and( edtSearchSuga.text ='') then
   begin
        showmessage('검색어를 입력하세요.');
        edtSearchSugaName.setfocus;
        exit;
   end;



  with Dm_f.sqlwork do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from suga ');
    // Sql.Add('where su_gu1 in (''2'',''4'')  and su_key like :su_key ');
    // Sql.Add('where  su_key like :su_key ');

    case kind of //RadioGroup1.itemindex of
      0:
        begin
           SQL.Add('where  su_key like :su_key ');
           paramByName('su_key').asString := '%' + edtSearchSugaCode.text + '%';
        end;
      1:

        begin
            SQL.Add('where  su_kor_name like :su_key ');
            paramByName('su_key').asString := '%' + edtSearchSugaName.text + '%';
        end;
      2:

        begin
           SQL.Add('where  user_key like :su_key ');
           paramByName('su_key').asString := '%' + edtSearchSuga.text + '%';
        end;
    end;

    SQL.Add('order by su_kor_name');
    open;
    // First;

    grdSuga.RowCount := recordCount + 1;
    i := 1;
    if not isEmpty then
    begin

          while not eof do
          begin

            grdSuga.Cells[1, i] := fieldByname('user_key').asString;
            grdSuga.Cells[2, i] := fieldByname('su_kor_name').asString;
            grdSuga.Cells[3, i] := fieldByname('su_key').asString;
            grdSuga.Cells[4, i] := fieldByname('su_extra').asString;
            grdSuga.Cells[5, i] := fieldByname('teakryecode').asString;

            i := i + 1;
            next;
          end;
    end ;
   // else
   // begin
          //MDB  약재 찾기
           loadUnRegistSugaData(1, kind);

          //MDB  재료 찾기
           loadUnRegistSugaData(2, kind);

   // end;
  end;



  grdSuga.AutoNumberCol(0);
end;

procedure TJinryo_f.btnGroupCodeFindClick(Sender: TObject);
begin

  with Dm_f.sqlwork do
  begin
    close;
    SQL.Clear;

    case rgGroupSugaFind.itemindex of
      0: // 사용자코드  - groupSuga에서 sugacode로 검색
        begin
          SQL.Add('select *,(select groupname from groupcode where groupcode= Groupsuga.GroupCode) as groupname from groupsuga ');
          SQL.Add('where  sugacode like :sugacode ');
          SQL.Add('order by sugakorname');
          paramByName('sugacode').asString := '%' + edtFindGroupCode.text + '%';
          open;

        end;
      1: // Su_key  - suga에서 su_key로 검색하고 user_key를 검색해와서 다시 groupSuga에서 검색해서 뿌려주자
        begin

          SQL.Add('select *,(select groupname from groupcode where groupcode= Groupsuga.GroupCode) as groupname   from groupsuga                        ');
          SQL.Add('where  sugacode in (select user_key from suga  ');
          SQL.Add('   where su_key like :su_key)                  ');
          SQL.Add('order by sugakorname                           ');
          paramByName('su_key').asString := '%' + edtFindGroupCode.text + '%';
          open;

        end;
    end;
    // First;

    grdFindGroup.RowCount := recordCount + 1;
    i := 1;
    while not eof do
    begin

      grdFindGroup.Cells[1, i] := fieldByname('groupCode').asString;
      grdFindGroup.Cells[2, i] := fieldByname('groupname').asString;

      i := i + 1;
      next;
    end;
  end;
  grdFindGroup.AutoNumberCol(0);
end;

procedure TJinryo_f.btnCopySelectionClick(Sender: TObject);
begin
  grdJx2.CopySelectionToClipboard;
end;

procedure TJinryo_f.btnAddMaterialClick(Sender: TObject);
begin

  SugaRegi_f := TSugaRegi_f.Create(Application);
  SugaRegi_f.cbKind.itemindex := (Sender as TAdvShapeButton).Tag; // 0:약재 1:신재료

  SugaRegi_f.Showmodal;
  SugaRegi_f.Free;
  SugaRegi_f := nil;


end;

procedure TJinryo_f.Button16Click(Sender: TObject);
begin
     LoadGroupCode(grdGroupCode);
end;

procedure TJinryo_f.Button17Click(Sender: TObject);
begin
  if not Assigned(optionset_f) then
  begin
    optionset_f := Toptionset_f.Create(Self);
    optionset_f.pcoption.ActivePageIndex := 0;
    optionset_f.ShowModal;
  end;

end;

procedure TJinryo_f.Button19Click(Sender: TObject);
var

  user_key         : string;
  su_key           : string;
  su_kor_name      : string;

begin

  if not Assigned(InputHealthJinchalSayu_f) then
    InputHealthJinchalSayu_f := TInputHealthJinchalSayu_f.Create(application);


          user_key    := jinchalRyoCode;
          su_key      := jinchalRyoCode;
          su_kor_name :=            getSugaName(jinchalRyoCode);


                InputHealthJinchalSayu_f.lblSuKey.Caption := trim(su_key);


                InputHealthJinchalSayu_f.lblDocID.Caption :=
                    jinryo_f.cbDoc.ColumnItems[jinryo_f.cbDoc.itemindex, 4]; //ID


                InputHealthJinchalSayu_f.lblJinsKey.Caption :=  '0';
                InputHealthJinchalSayu_f.lblJubsuID.Caption := ma_jubsu_id;
                InputHealthJinchalSayu_f.lblJinDay.Caption  :=
                         FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date);


         InputHealthJinchalSayu_f.LoadData(ma_chart,
           FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
           ma_jubsu_id,
           user_key, su_Key, su_kor_name);


        if InputHealthJinchalSayu_f.ShowModal = mrOk then
        begin

        end;



end;

procedure TJinryo_f.btnPauseClick(Sender: TObject); // 진료가 저장되고 상태는 보류로 간다.
var
  i: Integer;
  sPortion, sSang, sTx: string;
  aTeam ,
  treatRoom, doc_code: string;
  isInPat : string;

  sanTeakCode : string;
    juSangRow : integer;

  CertLoadDay : string;

  LockStatResult : TLockStatResult;
  jin_day: string;
  myIpAddr : string;

  sunap_status:string;
  jubsu_status: string;
   infoJubsu : TinfoJubsu;

begin



  if trim(edtChart.Text) ='' then
  begin
    Showmessage('접수후 진행하세요.');
    exit;

  end;


  if ma_jubsu_ID = '' then
  begin
    Showmessage('접수후 진행하세요.');
    exit;
  end;

    myIpAddr := GetIPAddress;

   if isNeyukLoad=false then  //당일치만 대기상태 변경하자.
      jin_day :=   FormatDateTime('YYYY-MM-DD', dmain.Date)
   else
      jin_day :=  grdNeyuk.Cells[1, grdNeyuk.row] ;



  //다른쪽에서 접속했는지 확인해서 저장이 안되게 하나?
  //제어권을 빼앗겼을때 아는 방법
    //락 상태를 가져와서 읽기전용으로 뿌려준다,.
    LockStatResult := loadLockState2(jinryo_f.lblChart.Caption,
                    delDash( jin_day), myIpAddr ) ;



     if (LockStatResult.aResult =  true)
        and  (LockStatResult.LocLevCod = '20') then
     begin

          showmessage(
            LockStatResult.LocIpAddr_host + '에서 '+
            LockStatResult.LocPCNam_host+'('+
            LoadDocNameFromSawonWithID(LockStatResult.LocUidCod_host)
            +')'+ ' 이 보고 있습니다.');
          exit;
     end;


    //락 상태를 가져와서 읽기전용으로 뿌려준다,.
    LockStatResult := loadLockState(jinryo_f.lblChart.Caption,
                    delDash( jin_day) ) ;



    if (LockStatResult.aResult =  true)
        and  (LockStatResult.LocLevCod <> '20') then  //잡은게 있고 제어권을 안뼀겼으면
    begin


      if ( LockStatResult.LocUidCod  <> V_UserID ) and
         ( LockStatResult.LocIpAddr  <> myIpAddr )   and
         ( LockStatResult.LocExeNam  =  'HJinryo' )   then
       begin


          if Application.MessageBox(pchar(
            LockStatResult.LocIpAddr + '에서 '+
            LockStatResult.LocPCNam+'('+
            LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
            +') 이 열람중입니다.'+#10+
         '기존연결을 끊으시겠습니까?'), '확인', MB_YESNO) = 6 then
          begin


              //강제로 끊기

            ReleaseLockOneChart(jinryo_f.lblChart.Caption,
            'HJinryo',
            LockStatResult.LocUidCod ,
            LockStatResult.LocIpAddr);

          end
          else
          begin

              exit;
          end;
       end;
    end;





  if (nclick = 0) or (nclick = 1) then
  begin
    // if (ComboBox1.Items.Count <= 0) then
    // begin
    //
    // ShowMessage('상병이 지정되지 않았습니다');
    // end
    // else
    begin


        sunapXsave := 1;

       //병원인증서를 불러오자...
      // 자격조회 버튼 누르면 자격조회 하자.

        Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
        FormInit := TIniFile.Create(Path);
        CertLoadDay := FormInit.ReadString('CERTLOAD', 'date', '');
        FormInit.Free;


      //인증서를 불러서 인증하자....
         if ( configvalue.varCertLogin = '1') then
         begin
            if (CertLoadDay <> formatdatetime('YYYY-MM-DD',    now)) then
                  JakyukJohoi(edtJumin.Text + edtJumin2.Text, edtname.Text,
                  formatdatetime('YYYYMMDD',    now));
         end;


//하루에 맨처음 한번만 불러오저.
//
//        Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
//        FormInit := TIniFile.Create(Path);
//        CertLoadDay := FormInit.ReadString('CERTLOAD', 'date', '');
//        FormInit.Free;
//
//        if (CertLoadDay <> formatdatetime('YYYY-MM-DD',    now)) then
//            JakyukJohoi(edtJumin.Text + edtJumin2.Text, edtname.Text,
//            formatdatetime('YYYYMMDD', now));


         //   sunap_status  := '0';
            jubsu_status  := '4';

//            if  existJinryo_Sunap(ma_jubsu_id) = true then
//            begin
//
//                   if
//                   Application.MessageBox(pchar('기존 수납내역이 있습니다.'  +
//                   #10#13 +
//                   '수납대기로 바꾸시겠습니까?'),
//                   '수납대기 변경 확인', MB_YESNO) = 6 then   //YES -- 수납대기로
//                   begin
//
//
//
//                         jubsu_status  := '2';
//
//                   end
//                   else  //상태 안바꿈
//                   begin
//
//                         jubsu_status  := '4';
//                   end;
//             end;


      // Jinryo_p

    //  aTeam := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0] ;

//      SaveCC(ma_Chart, doc_code,  tcCCDate.Tabs.Strings[tcCCDate.TabIndex] );

         infoJubsu := loadInfoJubsu( ma_jubsu_ID);
         doc_code  := infoJubsu.Doc_Code ;
         treatRoom := infoJubsu.treatRoom ;
         isInPat   :=  infoJubsu.isInPat ;


//      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4]; //saID
//      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0]; //saTeam

      SaveCC(
          edtCC,// memo3,
           ma_jubsu_id,
           varChartno,
           treatRoom,
           doc_code,
           FormatDateTime('YYYY-MM-DD', dmain.Date),
           isInPat);//inttostr(cbIo.ItemIndex));


      SaveLabRemark(
           memLabRemark,
           ma_jubsu_id,
           ma_Chart,
           jin_day );

      saveRemark;
      saveRemark_Sunap;

      //  ToDo :   jinryo_p 있으면  진료보류로 만를자.

      //  ToDo :  보류이면 jinryo_p 저장하지 말자. - 왜??
                if cbIO.ItemIndex = 0 then
                begin

                    JinryobiSave(
                          ma_jubsu_id,
                          FormatDateTime('YYYY-MM-DD', dmain.Date),
                             treatRoom,// cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
                             doc_code,
                             intTostr(cbIo.ItemIndex), //0: 외래 1: 낮 2: 숙박 입원
                             '3'); // 진료보류


                end;



      // Jinryo_s
      insertjin_s(
          ma_jubsu_id,
          dmain.Date,
          varChartno,
          TreatRoom,//  cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
          doc_code,//  cbDoc.ColumnItems[cbDoc.itemindex, 4],
          isInpat,//inttostr(cbIo.ItemIndex),
          grdJx2,
          0,  //보류저장
          '0'); //0:noEmergency   1 : emergency

        TJungCodeSave;

        //보류할때도 처방전 저장해라.
        if isWonwe = true then
        begin

            WonweSave;
           // showmessage('처방전을 발행합니다.');


           //ToDo: 보류할 때는 처방전 보이지 말자.
//            wonwe_f := Twonwe_f.Create(Application);
//            wonwe_f.Showmodal;
//            wonwe_f.Free;
//            wonwe_f := nil;


        end;



      if isWonwe = true then
      begin
           Showmessage('보류 저장(처방전포함)  되었습니다.');
      end
      else
      begin
           Showmessage('보류 저장 되었습니다.');
      end;

      // 진료history 다시 뿌려주고
      JinryoHistoryView(varChartno);

      // 진료내역불러오기
      setJinryo_s(
          ma_jubsu_id,
          grdJx2,
          varChartno,
          treatRoom,//cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
          doc_code,//cbDoc.ColumnItems[cbDoc.itemindex, 4],
          isInpat,//inttostr(cbIO.ItemIndex ),
          FormatDateTime('YYYY-MM-DD', dmain.Date)   );

      setJinryo_o(grdSangByung,
          varChartno,
          cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],
          isInpat,//inttostr(cbIO.ItemIndex ),
          ma_jubsu_id,
          sanTeakCode,
          juSangRow,
          FormatDateTime('YYYY-MM-DD',  dmain.Date));

      if LblAge.Caption <> '' then
      begin
        JinryoBiSet;
      end;

      sunapXsave := 0;

    end;

    // cbDoc.ColumnItems[cbDoc.itemindex, 0]);


   // if cbIO.ItemIndex = 0 then
      if isInpat  =  '0' then

          //외래는  진료보류(외출) 상태로 변경---------------------------------------------
          ChangeStatus2(
            jinryo_f.DaegiFrame_fr1.DtDate.date,//formatdatetime('YYYY-MM-DD', jinryo_f.DaegiFrame_fr1.DtDate.date),
            ma_jubsu_id,
            lblChart.Caption,
            jubsu_status,//'4',
            treatRoom, //cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0], //진료실
            doc_code)// cbDoc.ColumnItems[cbDoc.itemindex, 4]) //원장ID
     else
     begin
       // 입원이면 그냥 저장

     end;


    varValueChanged := false;
    fieldClear;

    DaegiFrame_fr1.daegiselect(DaegiFrame_fr1.tsmain.TabIndex);

  end;

end;

procedure TJinryo_f.btnPostClick(Sender: TObject);
begin
//     UpdateFavoriteItem_nOrder(grdFavorite);
//     showmessage('자주쓰는 처치 순서가 저장되었습니다.');//
end;

procedure TJinryo_f.btnInitClick(Sender: TObject);
begin
      isNeyukLoad := false;
      fieldClear;
      ReleaseLockAll(  'HJinryo', V_UserID, GetIPAddress);
      LockControl(false);
end;

procedure TJinryo_f.btnEnLargeClick(Sender: TObject);
begin

    setPnlWait_Jinryo;
  //
end;

procedure TJinryo_f.setPnlWait_Jinryo;
begin

 if  useEnlarge_pnlWait_Jinryo = false  then
 begin

     useEnlarge_pnlWait_Jinryo := true;
    // orig_pnlWait_Jinryo
    pnlWait_Jinryo.Width :=   pnlWait_Jinryo.Width  + 300;
    btnEnLarge.caption := '▶';

 end
 else
 begin

      useEnlarge_pnlWait_Jinryo := false;
     pnlWait_Jinryo.Width :=   pnlWait_Jinryo.Width  - 300;
      btnEnLarge.caption := '◀';
 end;
                 //  ◀▶
  //
end;


procedure TJinryo_f.btnExpandNContractClick(Sender: TObject);
begin
//  grdTxHx.InsertCols(0, 1);
//  grdTxHx.ColWidths[0] := 20;
//  grdTxHx.Group(1);

  if cbNode.Checked = false then
     exit;

  if (sender as TAdvShapebutton).Tag = 0 then
  begin
      //Contract
        (sender as TAdvShapebutton).text:= 'Expand';
        (sender as TAdvShapebutton).Tag := 1;
        grdTxHx.Contractall   ;

  end
  else
  begin

       //Expand
       (sender as TAdvShapebutton).text:= 'Contract';
       (sender as TAdvShapebutton).Tag := 0;
        grdTxHx.Expandall   ;
  end;

end;

procedure TJinryo_f.btnUpdateClick(Sender: TObject);
begin

  Close;
  if wCanClose = true then
  begin

       fileWebUpdate(currentDir);
  end;



//   canClose:= true;
//
////  FormCloseQuery(self, CanClose);
//  if canClose = true then
//  begin
//       close;
//       fileWebUpdate(currentDir);
//  end;
end;

procedure TJinryo_f.btnDeleteDrsNoteClick(Sender: TObject);
var
 doc_code  , treatRoom : string;
begin
    if edtChart.Text ='' then
     begin
         showmessage('롼자를 선택하세요.');
         exit;
     end;

    if Application.MessageBox(PChar('차트기록을 삭제 하시겠습니까?'
        +#10+'삭제하려면 내용을 모두 지우신 후'
        +#10+'[삭제]버튼을 눌러야 합니다.'),
          '알림', MB_YESNO) = IDYES then
    begin

                doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4]; //saID
                treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0]; //saTeam

          //      SaveCC(
          //           memo3,
          //           ma_jubsu_id,
          //           ma_Chart,
          //           treatRoom,
          //           doc_code,
          //            FormatDateTime('YYYY-MM-DD', dmain.Date),
          //           inttostr(cbIo.ItemIndex));

              try
                with Dm_f.sqlTemp do
                begin
                  //Delete
                 // if (trim(memo3.text) = '')  then
                   if (trim(edtCC.text) = '')  then
                  begin
                      close;
                      SQL.Clear;
                      SQL.Add('delete from hxCC');
                      SQL.Add('Where CCDate=:CCDate and ccChart=:ccChart ');
                      sql.Add(' and ccteam=:ccteam and doc_code=:doc_code and isInpat=:isInPat');
                      paramByName('CCDate').AsDate     := dmain.Date;//StrToDate(jin_day);
                      paramByName('CCChart').asString  := ma_chart;
                      paramByName('ccTeam').asString   := treatRoom;
                      paramByName('doc_code').AsString := doc_code;
                      paramByName('isInPat').asString  :=  inttostr(cbIo.ItemIndex);
                      execsql;
                      exit;
                  end;
                end
              except

                   on E: Exception do
                    begin
                      Showmessage(E.Message + 'C/C삭제 오류');

                    end;

              end;
    end;

end;

procedure TJinryo_f.btnAddBigubClick(Sender: TObject);
begin
  // SugaRegi_f := TSugaRegi_f.Create(application);
  // SugaRegi_f.cbKind.ItemIndex := 1;   //재료
  //
  // SugaRegi_f.Showmodal;
  // SugaRegi_f.Free;
  // SugaRegi_f := nil;

  SugaProp_f := TSugaProp_f.Create(Application);
  SugaProp_f.Caption := '새 수가등록';
  SugaProp_f.EdtUserkey.text := '';
  SugaProp_f.EdtUserkey.ReadOnly := false;
  SugaProp_f.edtSuKey.text := '';
  SugaProp_f.edtSuKey.ReadOnly := false;
  SugaProp_f.btnSave.Visible := true;
  SugaProp_f.ActiveControl := SugaProp_f.edtSuKey;
  SugaProp_f.Showmodal;
  SugaProp_f.Free;
  SugaProp_f := nil;

end;

procedure TJinryo_f.Button24Click(Sender: TObject);
begin
  SaveDialog1.fileName := 'order정보' + '.xls';
  if SaveDialog1.execute then
  begin
    if FileExists(SaveDialog1.fileName) then
      deletefile(SaveDialog1.fileName);
    AdvGridExcelIO1.XLSExport(SaveDialog1.fileName);
  end;
end;

procedure TJinryo_f.btnReferSyncClick(Sender: TObject);
var
    referHospInfo: TinfoReferHosp ;
begin

            //접수 할때만 넣자.
            //ToDo : 협진오더 내역이 없어도 의뢰병원이 있으면 저장해라.
            if trim(lblReferHospCode.caption) <> '' then
             begin
                  referHospInfo:=
                       LoadReferHospInfo_from_ma_referHosp( trim(lblReferHospCode.caption)) ;

               //  referHospInfo.
                 //(1=검사의뢰, 2=의뢰취소, 3=예약완료, 4=예약취소, 5=검사완료)

                 if  saveRequest(
                      ma_rp_RequestPK,//  nRpPk,
                        '5',//'3',//aState:  //3: 예약완료(접수완료);
                        trim(lblReferHospCode.caption),
                        '',//referHospInfo.rHosp,//     '',//userToken: string; // , varchar(80),>
                        edtchart.text,// patientID: string; // , nvarchar(50),>
                        '',//jwt: string; // , varchar(350),>
                        '',//jwtExpTime: string; // , char(13),>
                        'N',//cosign: string; // , char(1),>
                        referHospInfo.RHospID,//====>edtRHospID.Text , //hospitalEmail: string; // , varchar(30),>
                        referHospInfo.ReferHospName,// '',//====>edtreferHospName.Text , //hospitalName: string; // , nvarchar(50),>
                        '',//hospitalPhone: string; // , varchar(13),>
                        '',//====>cbReferHospDoc.Text,// doctorName: string; // , nvarchar(50),>
                        edtName.Text,// patientName: string; // , nvarchar(50),>
                        ma_c_Phone,//edtCPhone.Text,// patientPhone: string; // , varchar(13),>
                        '',// content: string; // , ntext,>
                        'Y',// viewHospital: string; // , char(1),>
                        'Y',//viewAdmin: string; // , char(1),>
                        0,//dynCatePK: integer; // , int,>
                        '',//dynContent: string; // , ntext,>
                        DaegiFrame_fr1.dtDate.datetime,// now,//dynDate: TdateTime; // , smalldatetime,>
                        DaegiFrame_fr1.dtDate.datetime,//  now,//studyDate: TdateTime; // , smalldatetime,>
                        DaegiFrame_fr1.dtDate.datetime,//  now,//requestDate: TdateTime; // , smalldatetime,>
                        now,//modifyDate: TdateTime; // , smalldatetime,>)
                       ma_rp_RequestPK ) = true then      //nRpPK
                        begin


                           //  Promise_Update_RpPK(strtoint(varpidn), nRpPK );
                           Update_jubsuRpPk(strtoint(lblJubsuID.Caption), ma_rp_RequestPK);//nRpPK);
                           //대기표 갱신
                        /// DaegiFrame_fr1.DaegiSelect(DaegiFrame_fr1.tsMain.TabIndex);
                        end;
              end;

end;

procedure TJinryo_f.Button28Click(Sender: TObject);
begin

  if not Assigned(InputTeakJung_f) then
    InputTeakJung_f := TInputTeakJung_f.Create(application);

  InputTeakJung_f.Show;

end;

procedure TJinryo_f.btnReferEditClick(Sender: TObject);
begin
  // edtSoge2.SetFocus;
  if not Assigned(referHosp_f) then
  begin

    referHosp_f := TreferHosp_f.Create(application);
//    referHosp_f.varmode := 0;

    if ma_referHospCode <> '' then
         referHosp_f.FieldSetting(false)
    else
         referHosp_f.FieldSetting(true) ;


    // regSogeNeyuk_f.edtsogeja.Text :=
    // edtSoge.Text;
//    ma_referHospName := edtreferHospName.Text;
//    ma_referHospCode := edtreferHospCode.Text;
//    ma_rHosp         := edtrHosp.Text;
//    ma_rHospID       := edtrHospID.Text;
//
    referHosp_f.lblid.Caption := '';
    // regSogeNeyuk_f.FieldSetting;
    referHosp_f.Show;
  end;
end;


procedure TJinryo_f.Button2Click(Sender: TObject);
var
  i: Integer;
  ACol, ARow: Integer;
begin

  ACol := grdJx2.Col;
  ARow := grdJx2.Row;
  // grdJx2.su
  // for i:= 0 to    grdJx2.SelectedRowCount -1 do
  // begin
  Showmessage(formatFloat('#,0', grdJx2.ColumnSum(ACol, ARow,
    ARow + (grdJx2.SelectedRowCount - 1))));
  // end;

end;

procedure TJinryo_f.btnLoadSangByungClick(Sender: TObject);
var
  ARow: Integer;
begin
   if edtChart.Text ='' then
     begin
         showmessage('롼자를 선택하세요.');
         exit;
     end;

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
    grdSangByung.Cells[6, ARow] := // grdSangbyung.RowCount - 1] :=
      Sangseek_f.grdMain.Cells[1, Sangseek_f.grdMain.Row];
    grdSangByung.Cells[10, ARow] := //
      Sangseek_f.grdMain.Cells[2, Sangseek_f.grdMain.Row];

    grdSangByung.Cells[13, ARow] := // grdSangbyung.RowCount - 1] :=
      cbDoc.ColumnItems[cbDoc.itemindex, 2]; // cmbDoctor.Text; //담당의
    grdSangByung.Cells[14, ARow] := // grdSangbyung.RowCount - 1] :=
      cbDoc.ColumnItems[cbDoc.itemindex, 3]; // 담당의 면허번호
    //grdSangByung.AutoNumberCol(0);
  end;

end;

procedure TJinryo_f.btnMoveDownClick(Sender: TObject);
begin
       if grdFavorite.Row >= 1 then
       begin
              grdFavorite.MoveRow(grdFavorite.Row, grdFavorite.Row + 1);
              grdFavorite.Row := grdFavorite.Row + 1;
              grdFavorite.AutoNumberCol(0);
       end;

       UpdateFavoriteItem_nOrder(grdFavorite);

end;

procedure TJinryo_f.btnMoveUpClick(Sender: TObject);
begin
       if grdFavorite.Row > 1 then
       begin
              grdFavorite.MoveRow(grdFavorite.Row, grdFavorite.Row - 1);
              grdFavorite.Row := grdFavorite.Row - 1;
              grdFavorite.AutoNumberCol(0);
       end;

       UpdateFavoriteItem_nOrder(grdFavorite);


end;

procedure TJinryo_f.btnOutHospClick(Sender: TObject);
var
     outDateTime: TDateTime;
begin

//        btnSaveClick(self);

        //ToDo : 입원이었다면 퇴원처리를 해주자.

        if cbIO.ItemIndex > 0 then //0: 외래 1: 낮 2: 숙박 입원
        begin

           saveAll(cbIO.ItemIndex );


           if not Assigned(outPatient_f) then
                outPatient_f := ToutPatient_f.Create(application);
                 outPatient_f.AdvDateTimePicker1.DateTime:= now;
          if  outPatient_f.showmodal =mrOk then
          begin
              outDateTime := outPatient_f.AdvDateTimePicker1.DateTime;
               //1. 퇴원하는 날로 jinryo_p를 생성해야한다.
               //2. 입원일부터 지금까지의 모든 비용을 계산해라.
               JinryobiSave(
                    ma_jubsu_id,
                  //  FormatDateTime('YYYY-MM-DD', jinryo_f.DaegiFrame_fr1.DtDate.date),//FormatDateTime('YYYY-MM-DD', dmain.Date),
                    FormatDateTime('YYYY-MM-DD', outDateTime),//
                    cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0],//treatRoom ,
                    cbDoc.ColumnItems[cbDoc.itemindex, 4],
                    intTostr(cbIo.ItemIndex) , //0: 외래 1: 낮 2: 숙박 입원
                    '0');//  (sunapKind 0 : 수납대기 1:수납완료 2:수납대기취소 3: 수납보류 )


               //3. ma_jubsu에는 퇴원처리를 해라.
               ChangeStatus_JubsuID_Outpat(ma_jubsu_ID,  outDateTime);//
                   // jinryo_f.DaegiFrame_fr1.DtDate.dateTime ) ;
           end;

        end;


           //4. ma_jubsu에 수납 대기상태로 넘겨라.
           //퇴원일자 수납대기에 보이게 하려면 ma_jubsu에 jin_day를 퇴원일로 바꾸던지...
           //수납대기 리스트를 꺼낼때 퇴원일자를 쿼리해온다.
           ChangeStatus2(
                jinryo_f.DaegiFrame_fr1.DtDate.date,// formatdatetime('YYYY-MM-DD', jinryo_f.DaegiFrame_fr1.DtDate.date),
                ma_jubsu_id,
                lblChart.Caption,
                 '2',
                cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0], //진료실
                cbDoc.ColumnItems[cbDoc.itemindex, 4]);  //원장ID


    varValueChanged := false;

    // ToDo : 진료가 저장되면 저장되었다고 알리는 신호는 모든것을 초기화 시키자.
    fieldClear;
    // grdJx2.RemoveRows(1, grdJx2.RowCount-1);
    // grdSangbyung.RemoveRows(1, grdSangbyung.RowCount-1);

    // grdSangByung.RowCount := 10;

    // 대기표 갱신
    jinryo_f.DaegiFrame_fr1.daegiselect (jinryo_f.DaegiFrame_fr1.tsmain.TabIndex);


    //락이 잠겨있으면 풀어준다. - 완료/ 보류 에서 실행

    ReleaseLockAll(  'HJinryo', V_UserID, GetIPAddress);


end;

procedure TJinryo_f.btnOutHospMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    (Sender as TAdvShapeButton).Font.Color := clWhite;

//    (Sender as TAdvShapeButton).Font.Color := $00FF8F49;

end;

procedure TJinryo_f.btnOutHospMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//    (Sender as TAdvShapeButton).Font.Color := clWhite;

    (Sender as TAdvShapeButton).Font.Color := $00FF8F49;

end;

procedure TJinryo_f.Button3Click(Sender: TObject);
begin
  // 1회추가

  insertOnce_f := TinsertOnce_F.Create(Application);

  insertOnce_f.Showmodal;
  insertOnce_f.Free;
  insertOnce_f := nil;

  varValueChanged := true;

end;

procedure TJinryo_f.Button5Click(Sender: TObject);
begin

  if not assigned(TxList_f) then
    TxList_f := TTxList_f.Create(Application);
  TxList_f.show;

end;

procedure TJinryo_f.Button8Click(Sender: TObject);
begin

  // if  tcCCDate.Tabs.Count > 0 then
  // begin
  // if tcCCDate.Tabs.Strings[0] <> FormatdateTime('YYYY-MM-DD', now) then
  // begin
  // tcCCDate.Tabs.Insert(0, FormatdateTime('YYYY-MM-DD', now));
  // //         tcCCDate.TabIndex := 0;
  // //         LoadCC(ma_chart, FormatdateTime('YYYY-MM-DD', now));
  //
  // end;
  //
  // tcCCDate.TabIndex := 0;
  // LoadCC(ma_chart, FormatdateTime('YYYY-MM-DD', now));
  // edtCC.SetFocus;
  //
  //
  // end
  // else
  // begin
  //
  // tcCCDate.Tabs.Add(FormatdateTime('YYYY-MM-DD', now));
  // tcCCDate.TabIndex := 0;
  // LoadCC(ma_chart, FormatdateTime('YYYY-MM-DD', now));
  // edtCC.SetFocus;
  //
  // end;

  makeTodayTab;

end;

procedure TJinryo_f.makeTodayTab;
var
   doc_code, treatRoom : string;
begin

      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4];
      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];



  if tcCCDate.Tabs.Count > 0 then
  begin
    if tcCCDate.Tabs.Strings[0] <> FormatDateTime('YYYY-MM-DD', now) then
    begin
      tcCCDate.Tabs.Insert(0, FormatDateTime('YYYY-MM-DD', now));
      // tcCCDate.TabIndex := 0;
//       LoadCC(ma_chart, FormatdateTime('YYYY-MM-DD', now));

    end;

      tcCCDate.TabIndex := 0;

      LoadCC(ma_chart,
        treatRoom,
        doc_code ,
        FormatDateTime('YYYY-MM-DD', now),
        inttostr(cbIo.ItemIndex));

    //  memo3.SetFocus;

     edtCC.SetFocus;

  end
  else
  begin

    tcCCDate.Tabs.Add(FormatDateTime('YYYY-MM-DD', now));
    tcCCDate.TabIndex := 0;
  //  LoadCC(ma_chart, doc_code , FormatDateTime('YYYY-MM-DD', now));
    LoadCC(ma_chart,
      treatRoom,
      doc_code ,
      FormatDateTime('YYYY-MM-DD', now),
      inttostr(cbIo.ItemIndex));

    //memo3.SetFocus;

    edtCC.SetFocus;

  end;

end;

procedure TJinryo_f.memChungGuMemoClick(Sender: TObject);
begin
     SetImeInputMode(memChungGuMemo.Handle  , imHangul);
end;

procedure TJinryo_f.memChungGuMemoContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

  RichEditPopupMenu(TRichEdit(Sender));
  Handled := true;

end;


procedure TJinryo_f.saveRemark;
var
  ms: TMemorystream;

begin
  if (trim(edtRemark.text) <> '') then
  begin
    ms := TMemorystream.Create;
    edtRemark.Lines.SaveToStream(ms);
    // tcCcDate.TabIndex
    try
      with Dm_f.sqlTemp do
      begin
        close;
        SQL.Clear;
        SQL.Add('select id from hxSremark');
        SQL.Add('Where srChart = :srChart ');
        paramByName('srChart').asString := ma_chart;
        open;
        if isEmpty then
        begin

          close;
          SQL.Clear;
          SQL.Add('insert into hxSremark');
          SQL.Add('(srchart, srDate, srMemo, modDay,richtext) values');
          SQL.Add('(:srchart, :srDate, :srMemo, :modDay, :richtext)');
        end
        else
        begin
          close;
          SQL.Clear;
          SQL.Add(' update hxSremark set');
          SQL.Add(' srDate= :srDate, srMemo= :srMemo, modDay= :modDay, richtext=:richtext');
          SQL.Add(' Where srchart=:srchart ');
        end;
        paramByName('srChart').asString := ma_chart;
        paramByName('modDay').AsDateTime := now;
        // ParamByName('srChart').AsString := ma_chart;
        paramByName('srDate').AsDate := now;
        // strToDate( tcSrDate.Tabs.Strings[tcSrDate.TabIndex]);
        paramByName('srMemo').AsMemo := edtRemark.text;
        paramByName('richtext').LoadFromStream(ms, ftBlob);
        execsql;

      end;
    except
       on E: Exception do
        begin
          Showmessage(E.Message + '참고사항 저장오류');

        end;

    end;
  end;
end;


procedure TJinryo_f.saveRemark_Sunap;
var
  ms: TMemorystream;

begin
{      SQL.Add('Select * from hxDent');
      SQL.Add('Where Dchart= :DChart');
      SQL.Add('order by DDate desc');
      paramByName('DChart').asString := varChart;
}
  //ToDo : ♣ 수납메모 - 원장이 수납시 참고하라고 적어두는공간이니까 Dr's Wanting(hxDent)에 넣자.


  if (trim(edtDR.text) <> '') then
  begin
    ms := TMemorystream.Create;
    edtDR.Lines.SaveToStream(ms);
    // tcCcDate.TabIndex
    try
      with Dm_f.sqlTemp do
      begin
        close;
        SQL.Clear;
        SQL.Add('select seq from hxDent');
        SQL.Add('Where dChart = :dChart  and dDate=:dDate');
        paramByName('dChart').asString := ma_chart;
        paramByName('dDate').AsDate    :=  DaegiFrame_fr1.dtDate.date;
        open;
        if isEmpty then
        begin

          close;
          SQL.Clear;
          SQL.Add('insert into hxDent');
          SQL.Add('(dchart, dDate, dMemo, modDay, richtext) values');
          SQL.Add('(:dchart, :dDate, :dMemo, :modDay, :richtext)');
        end
        else
        begin
          close;
          SQL.Clear;
          SQL.Add(' update hxDent set');
          SQL.Add(' dDate= :dDate, dMemo= :dMemo, modDay= :modDay, richtext=:richtext');
          SQL.Add(' Where dchart=:dchart ');
        end;
        paramByName('dChart').asString := ma_chart;
        paramByName('modDay').AsDateTime := now;
        paramByName('dDate').AsDate := DaegiFrame_fr1.dtDate.date;
        paramByName('dMemo').AsMemo := edtDR.text;
        paramByName('richtext').LoadFromStream(ms, ftBlob);
        execsql;

      end;
    except
       on E: Exception do
        begin
          Showmessage(E.Message + '참고사항 저장오류');

        end;

    end;
  end;
end;

procedure TJinryo_f.Button4Click(Sender: TObject);
begin
  TreeEdit_f := TTreeEdit_f.Create(Application);
  /// TreeEdit_f.edtId.text := dm_f.sawonNo;
  /// TreeEdit_f.edtId2.text := dm_f.sawonNo;
  TreeEdit_f.formwhere := 'ct';
  TreeEdit_f.Showmodal;
  TreeEdit_f.Free;
  TreeEdit_f := nil;

end;

procedure TJinryo_f.btnConfirmJaboClick(Sender: TObject);
begin
  { if lblCarId.Caption <> '' then
    begin
    loadjaboInfo(strtoint(lblCarId.Caption))
    end
    else
    begin

    cbJabosaCode2.ItemIndex         := -1;
    edtJaboSagoJubsuNo2.text        := '';
    edtJaboJigubBojungNo2.text      := '';

    end;
    pnlJaboInfo.Visible:=false; }


end;

procedure TJinryo_f.LoadJinryo_S(chart: string);
var
  tempQuery: TuniQuery;
  i: Integer;
  jinDay, jinDay2 : string;
begin
  i := 0;

//  grdTxHx.ExpandAll;


  grdTxHx.LockUpdate :=true;
  grdTxHx.ColWidths[0] := 0;// .ColWidth

  grdTxHx.RemoveRows(2, grdTxHx.RowCount - 1);

  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;


   try
    with tempQuery do
    begin // 진료history 다시 뿌려주고
      close;
      SQL.Clear;

      SQL.Add('   (select ccdate as jin_day, ''C/C'' as su_key ,        ');
      SQL.Add('   convert(varchar(1000), ccmemo,121) as su_kor_Name, ');
      SQL.Add('  0 as jin_qty,                                          ');
      SQL.Add('  0 as dan_qty,                                          ');
      SQL.Add('   '''' as  su_gu3,                                      ');
      SQL.Add('  0 as div,                                              ');
      SQL.Add('  0 as jin_ilsu,                                         ');
      SQL.Add('   '''' as gub_gu,                                       ');
      SQL.Add('   doc_code,                                             ');
      SQL.Add('   CCteam as team,                                       ');
      SQL.Add('   0 as jin_danga,                                       ');
      SQL.Add('   ''1'' as sort_key,                                    ');
      SQL.Add('   ''2'' as kind from  hxcc where ccchart=:chart     )');
      SQL.Add('union                                                  ');
      SQL.Add('   (select                                             ');
      SQL.Add('   jin_day,                                            ');
      SQL.Add('   su_key,                                             ');
      SQL.Add('   su_kor_Name,                                        ');
      SQL.Add('   jin_qty,                                            ');
      SQL.Add('   dan_qty,                                            ');
      SQL.Add('   su_gu3,                                            ');
      SQL.Add('   div,                                                ');
      SQL.Add('   jin_ilsu,                                           ');
      SQL.Add('   gub_gu,                                             ');
      SQL.Add('   doc_code,                                           ');
      SQL.Add('   team ,                                             ');
      SQL.Add('   jin_danga,                                          ');
      SQL.Add('   sort_key ,                                          ');
      SQL.Add('   ''3'' as kind from  jinryo_s where chart=:chart )   ');
      SQL.Add('  union                                                                       ');
      SQL.Add('   (select  jin_day, s_key1 as su_key ,                                       ');
      SQL.Add('   case when isnull(sang1,'''') ='''' then                                    ');
      SQL.Add('    (select top 1 s_kor_name from sangbyung where s_key =jinryo_o.s_key1 )    ');
      SQL.Add('     else sang1 end as su_kor_Name,                                            ');
      SQL.Add('    0 as jin_qty,                                                              ');
      SQL.Add('    0 as dan_qty,                                                              ');
      SQL.Add('   '''' as  su_gu3,                                      ');
      SQL.Add('    0 as div,                                                                  ');
      SQL.Add('    0 as jin_ilsu,                                            ');
      SQL.Add('   '''' as gub_gu,                                                             ');
      SQL.Add('    doc_code,                                            ');
      SQL.Add('   team ,                                             ');
      SQL.Add('     0 as jin_danga,                                                           ');
      SQL.Add('     ''1'' as sort_key,                                                        ');
      SQL.Add('     ''1'' as kind from  jinryo_o where chart=:chart  )                        ');
      SQL.Add('   order by jin_day desc ,  team, kind asc  , sort_key asc                            ');

//      SQL.Add(' select * from  jinryo_s  ');
//      SQL.Add(' where chart=:chart  ');
      // sql.add(' and jin_Day = :jinDay  ');
      // sql.add(' and g_check <> ''G'' ');
//      SQL.Add(' order by  jin_Day desc , sort_key asc');
      paramByName('chart').asString := chart;
      // ParamByName('jinDay').AsString := jinDay;

      open;

      grdTxHx.RowCount := recordCount + 1;

      if not isEmpty then
      begin
        while not eof do
        begin
          // grdHx.AddRow;

          jinDay2:=  fieldByname('jin_day').asString;
          i := i + 1;

          if jinDay <> jinDay2 then
          begin

              grdTxHx.AddRow;

              grdTxHx.MergeCells(1,i,9,1);
              grdTxHx.Cells[1, i] := fieldByname('jin_day').asString;
              grdTxHx.Colors[1,i] := $00B6FAB4;
              grdTxHx.Cells[10, i] := '0';
              grdTxHx.Cells[11, i] := fieldByname('jin_day').asString;

              i := i + 1;
          end;


          //grdTxHx.Cells[0, i] := fieldByname('jin_day').asString;
          grdTxHx.Cells[1, i] := fieldByname('su_key'     ).asString;
          grdTxHx.Cells[7, i] := LoadDocNameFromSawonWithID(fieldByname('doc_code').asString);
          grdTxHx.Cells[8, i] := loadJinjryosil(  fieldByname('team').asString);
          grdTxHx.Cells[2, i] := fieldByname('su_kor_Name').asString;

          if grdTxHx.Cells[1, i] = 'C/C'  then
          begin


                grdTxHx.MergeCells(2,i,5,1);
//
//                grdTxHx.ints[8, i]  := fieldByname('jin_danga'   ).AsInteger * fieldByname('jin_qty').AsInteger; //
          end
          else
          begin

                grdTxHx.Cells[3, i] := fieldByname('jin_qty'    ).asString;
                    if (fieldByname('su_gu3'        ).asString =  '09')  then
                    begin

                        grdTxHx.Cells[4, i] := fieldByname('div'        ).asString;
                    end
                    else
                    begin

                         grdTxHx.Cells[4,i] :=   FieldByName('jin_ilsu').AsString;
                    end;
                grdTxHx.Cells[5, i] := fieldByname('dan_qty'   ).asString; //fieldByname('jin_ilsu'   ).asString;
                grdTxHx.Cells[6, i] := fieldByname('gub_gu'     ).asString; // 0:급여 2:비급여



//                    if (aSuGu3 =  '09')  then
//                    begin
//                         aGrid.Cells[4, aGrid.RowCount - 1] := FieldByName('div').AsString;
//                         aGrid.Cells[16, aGrid.RowCount - 1] := FieldByName('jin_Ilsu').AsString;
//                    end
//                    else
//                    begin
//                         aGrid.Cells[4, aGrid.RowCount - 1] :=   FieldByName('jin_ilsu').AsString;
//                    end;





                grdTxHx.ints[8, i]  := fieldByname('jin_danga'   ).AsInteger * fieldByname('jin_qty').AsInteger; //
          end;





          grdTxHx.Cells[9, i] := ''; // 용법
          grdTxHx.Cells[10, i] := fieldByname('kind').asString;
          grdTxHx.Cells[11, i] := fieldByname('jin_day').asString;

          jinDay :=  fieldByname('jin_day').asString ;
          grdTxHx.AutoSizeRow(i);
          next;
        end;
      end;
    end;
   except
            on E: Exception do
            begin
              Showmessage(E.Message + '[LoadJinryo HX. fail.]');
            end;

   end;
  finally
    grdTxHx.LockUpdate :=false;
    tempQuery.Free;

  end;
end;



procedure TJinryo_f.LoadJinryo_TxHx_MakeNode;
var
   k, j, l : integer;
   rCount : integer;
begin
    try

    if cbNode.Checked = True then
    begin

        grdTxHx.Expandall;


        //GroupCode가 같으면 노드를 달자.
        k := 1;
        j := 1;


    //   application.ProcessMessages;
       with grdTxHx do
       begin

    //        Expandall;
    //        savefixedcells := false;

            ColWidths[0] := 20;
            rCount :=  rowcount;
            while (k < rCount - 1) do
            begin

    //          if cells[1, j] = 'BMW'
    //             then bmwnode := j;
   //           showmessage(cells[1, j]) ;
   //           showmessage(cells[1, j+1]) ;

              while   (cells[1, j] = cells[1, j + 1])
                  and (cells[1, j+1] <> '')
                  and (j < rowcount - 1) do inc(j);


              if (k <> j)  then
              begin
                 l:= j - k + 1;

//                 showmessage('j:'+inttostr(j)
//                    + ' | ' + 'k:' + inttostr(k)
//                    + ' | ' + 'l:' + inttostr(l));

                 AddNode(k, l);
              end;

              k := j + 1;
              j := k;


            end;
       //     contractall;
       end;

    end;
    except
                on E: Exception do
                begin
                  Showmessage(E.Message + '[LoadJinryo HX. fail.]');
                end;

    end;


end;

procedure TJinryo_f.LoadJinryo_TxHx(chart: string);
var
  tempQuery: TuniQuery;
  i, j, k, l: Integer;
  jinDay, jinDay2 : string;
begin
  i := 0;

  grdTxHx.LockUpdate :=true;
  grdTxHx.ColWidths[0] := 0;// .ColWidth

  grdTxHx.ClearRows(1, grdTxHx.rowcount - 1 );
  grdTxHx.RemoveRows(1, grdTxHx.RowCount - 1);

  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;


       try
        with tempQuery do
        begin // 진료history 다시 뿌려주고
          close;
          SQL.Clear;

          SQL.Add('   (select ccdate as jin_day, ''C/C'' as group_key , ''C/C'' as su_key ,        ');
          SQL.Add('   convert(varchar(1000), ccmemo,121) as su_kor_Name, ');
          SQL.Add('  0 as jin_qty,                                          ');
          SQL.Add('  0 as dan_qty,                                          ');
          SQL.Add('   '''' as  su_gu3,                                      ');
          SQL.Add('  0 as div,                                              ');
          SQL.Add('  0 as jin_ilsu,                                         ');
          SQL.Add('   '''' as gub_gu,                                       ');
          SQL.Add('   doc_code,                                             ');
          SQL.Add('   CCteam as team,                                       ');
          SQL.Add('   0 as jin_danga,                                       ');
          SQL.Add('   ''1'' as sort_key,                                    ');
          SQL.Add('   ''I'' as g_check,                                    ');
          SQL.Add('   ''2'' as kind from  hxcc where ccchart=:chart     )');
          SQL.Add('union All                                                 ');
          SQL.Add('   (select                                             ');
          SQL.Add('   jin_day,                                            ');
          SQL.Add('   group_key,                                          ');
          SQL.Add('   su_key,                                             ');
          SQL.Add('   su_kor_Name,                                        ');
          SQL.Add('   jin_qty,                                            ');
          SQL.Add('   dan_qty,                                            ');
          SQL.Add('   su_gu3,                                            ');
          SQL.Add('   div,                                                ');
          SQL.Add('   jin_ilsu,                                           ');
          SQL.Add('   gub_gu,                                             ');
          SQL.Add('   doc_code,                                           ');
          SQL.Add('   team ,                                             ');
          SQL.Add('   jin_danga,                                          ');
          SQL.Add('   sort_key ,                                          ');
          SQL.Add('   g_check ,                                          ');
          SQL.Add('   ''3'' as kind from  jinryo_s where chart=:chart )   ');
          SQL.Add('union  All                                                                     ');
          SQL.Add('   (select  jin_day, s_key1 as group_key ,    s_key1 as su_key ,            ');
          SQL.Add('   case when isnull(sang1,'''') ='''' then                                  ');
          SQL.Add('    (select top 1 s_kor_name from sangbyung where s_key =jinryo_o.s_key1 )  ');
          SQL.Add('     else sang1 end as su_kor_Name,                                         ');
          SQL.Add('    0 as jin_qty,                                                           ');
          SQL.Add('    0 as dan_qty,                                                           ');
          SQL.Add('   '''' as  su_gu3,                                                         ');
          SQL.Add('    0 as div,                                                               ');
          SQL.Add('    0 as jin_ilsu,                                                          ');
          SQL.Add('   '''' as gub_gu,                                                          ');
          SQL.Add('    doc_code,                                                               ');
          SQL.Add('   team ,                                                                   ');
          SQL.Add('     0 as jin_danga,                                                        ');
          SQL.Add('     ''1'' as sort_key,                                                     ');
          SQL.Add('   ''O'' as g_check,                                    ');
          SQL.Add('     ''1'' as kind from  jinryo_o where chart=:chart  )                     ');
          SQL.Add('   order by jin_day desc ,  team, kind asc  , sort_key asc                  ');

          paramByName('chart').asString := chart;

          open;
          grdTxHx.RowCount := recordCount + 1;


          if not isEmpty then
          begin
            while not eof do
            begin

              jinDay2:=  fieldByname('jin_day').asString;

              i := i + 1;

//              application.ProcessMessages;
//              showmessage('F--->'+inttostr(i));

              if jinDay <> jinDay2 then
              begin

                  grdTxHx.AddRow;

                  grdTxHx.MergeCells(1,i,9,1);
                  grdTxHx.Cells[1, i] := fieldByname('jin_day').asString;
                  grdTxHx.Colors[1,i] := $00B6FAB4;
                  grdTxHx.Cells[11, i] := '0';
                  grdTxHx.Cells[12, i] := fieldByname('jin_day').asString;

                  i := i + 1;
              end;


              grdTxHx.Cells[8, i] := LoadDocNameFromSawonWithID(fieldByname('doc_code').asString);
              grdTxHx.Cells[9, i] := loadJinjryosil(  fieldByname('team').asString);

              grdTxHx.Cells[13, i] := fieldByname('g_check'  ).asString;

              grdTxHx.Cells[11, i] := fieldByname('kind').asString;   //1:상병 2:C/C 3:진료_s


              if (grdTxHx.Cells[11, i] = '1')  then  // 1:상병
              begin
                   // grdTxHx.Cells[1, i] := fieldByname('group_key'  ).asString;
                    grdTxHx.Cells[1, i] := fieldByname('su_key'     ).asString;
                    grdTxHx.Cells[2, i] := fieldByname('su_kor_Name').asString;
                    grdTxHx.MergeCells(2,i,7,1);
              end
              else
              if   (grdTxHx.Cells[11, i] = '2')   then //2:C/C
              begin
                  //  grdTxHx.Cells[2, i] := fieldByname('su_key'     ).asString;
                    grdTxHx.Cells[1, i] := fieldByname('su_kor_Name').asString;
                    grdTxHx.MergeCells(1,i,6,1);
                    grdTxHx.AutoSizeRow(i);
              end
              else
              begin

                    grdTxHx.Cells[1, i] := fieldByname('group_key'  ).asString;
                    grdTxHx.Cells[2, i] := fieldByname('su_key'     ).asString;
                    grdTxHx.Cells[3, i] := fieldByname('su_kor_Name').asString;
                    grdTxHx.Cells[4, i] := fieldByname('jin_qty'    ).asString;
                        if (fieldByname('su_gu3'        ).asString =  '09')  then
                        begin

                            grdTxHx.Cells[5, i] := fieldByname('div'        ).asString;
                        end
                        else
                        begin

                             grdTxHx.Cells[5,i] :=   FieldByName('jin_ilsu').AsString;
                        end;
                    grdTxHx.Cells[6, i] := fieldByname('dan_qty'   ).asString; //fieldByname('jin_ilsu'   ).asString;
                    grdTxHx.Cells[7, i] := fieldByname('gub_gu'     ).asString; // 0:급여 2:비급여
                    grdTxHx.ints[9, i]  := fieldByname('jin_danga'   ).AsInteger * fieldByname('jin_qty').AsInteger; //
              end;

              grdTxHx.Cells[10, i] := ''; // 용법
              grdTxHx.Cells[12, i] := fieldByname('jin_day').asString;

              jinDay :=  fieldByname('jin_day').asString ;


//              application.ProcessMessages;
//              showmessage('R==>'+inttostr(i));

//              grdTxHx.AutoSizeRow(i);
              next;
            end;
          end;
        end;
       except
                on E: Exception do
                begin
                  Showmessage(E.Message + '[LoadJinryo HX. fail.]');
                end;

       end;
  finally
    GetScrollRange(grdTxHx.Handle, SB_VERT, nMinPos, nMaxPos);

    tempQuery.Free;

    grdTxHx.LockUpdate :=false;

  end;


end;


procedure TJinryo_f.PageControl1Change(Sender: TObject);
var
     path: string;
     FormInit: Tinifile;

begin
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteInteger('ETC', 'CalInfoTabinfo', PageControl1.ActivePageIndex );//tsMain.TabIndex);
     FormInit.Free;

end;

procedure TJinryo_f.cbSanCode3CloseUp(Sender: TObject);
begin
  // 0검진선택
  // 1차등수가 제외
  // 2영유아 건강검진 당일 진찰
  // 3일반건강검진 당일 진찰
  // 4생애전환기 건강검진 당일 진찰
  // 5암검진 당일 진찰

  case cbSanCode3.itemindex of
    2: // 영유아 건강검진 당일 진찰
      begin

        if (LblAge.Caption <> '5') and (LblAge.Caption <> '4') and
          (LblAge.Caption <> '3') and (LblAge.Caption <> '2') and
          (LblAge.Caption <> '1') and (LblAge.Caption <> '0') then
        // if  (cbChoje.itemindex = 2) or (cbChoje.itemindex = 3)  then
        begin
          Showmessage('영유아검진은 만6세미만에만 적용합니다. 확인하세요!!');
          // chkYongUa.checked := false;
          exit;
        end;

      end;
  end;

  JinryoBiSet;

end;

procedure TJinryo_f.cbSanjungTeakRyeClick(Sender: TObject);
begin
         JinryoBiSet;
end;

procedure TJinryo_f.cbSatMorningGasanClick(Sender: TObject);
begin

  JinryoBiSet;

end;

procedure TJinryo_f.cbTreatRoomSelect(Sender: TObject);
var
  team_key: string;
begin
  // showmessage('');
  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];
  LoadDoclist(cbDoc, team_key);

end;

procedure TJinryo_f.certtest1Click(Sender: TObject);
var
   isCorrectCert: boolean ;
begin

                       CertProcess('1' ,                   // //chartComment,
                                 '1',   //chartSeq,
                                 edtname.text,//원장주민
                                 isCorrectCert );

end;



procedure TJinryo_f.grdJinryoHxDblClick(Sender: TObject);
begin
  if ((grdJinryoHx.RowCount > 0) and (grdJinryoHx.Row >= 0)) then
  begin
    if grdJinryoHx.Cells[0, grdJinryoHx.Row] <> '' then
    begin

      dmain.Date := StrToDate(grdJinryoHx.Cells[0, grdJinryoHx.Row]);
      // dMainDaySelect(jinryo_f, dmain.date);

      DateTimePicker1.Date := StrToDate(grdJinryoHx.Cells[0, grdJinryoHx.Row]);
      DateTimePicker2.Date := StrToDate(grdJinryoHx.Cells[0, grdJinryoHx.Row]);

      btnHapsanSearchClick(self);
    end;
  end;

end;

procedure TJinryo_f.chkPregnanClick(Sender: TObject);
var
  i: Integer;
begin

  JinryoBiSet;

end;

procedure TJinryo_f.grdCarInfoClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  if ARow <= 0 then
    exit;

  cbJabosaCode2.itemindex := cbJabosaCode2.Items.IndexOf
    (grdCarInfo.Cells[2, ARow]);
  edtJaboSagoJubsuNo2.text := grdCarInfo.Cells[3, ARow];
  edtJaboJigubBojungNo2.text := grdCarInfo.Cells[4, ARow];
  lblCarID.Caption := grdCarInfo.Cells[5, ARow];

end;

procedure TJinryo_f.grdDrugGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
    if aRow = 0  then
     begin
          hAlign :=  TAlignment.taCenter;
       //   Valign :=  TAlignment.vtaCenter;
     end;

end;

procedure TJinryo_f.grdFavoriteClickSort(Sender: TObject; ACol: Integer);
begin

    grdFavorite.AutoNumberCol(0);

end;

procedure TJinryo_f.grdFavoriteDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
var
//  gubKind : integer;
  gubKind : string;
  jin_day : string;
begin

   if isNeyukLoad = true then
      jin_day := grdNeyuk.Cells[0, grdNeyuk.Row]
   else
      jin_day := FormatDateTime('YYYY-MM-DD' , jinryo_f.DaegiFrame_fr1.DtDate.date);


    if cbJong.itemindex in [3,7] then  //일반이거나 자보는 비급이다.
       gubKind := '2'
       else
        gubKind := '0';


  // 병록번호/수진자 체크
  if ft_ChartCHK then
    exit;

  if ACol > 0 then
  begin
    if grdFavorite.Cells[3, ARow] = '1' then
    begin

      insertGridGroupSuga(grdFavorite, 2, 1, 3, ARow);
      // col1 groupname, col2 groupcode, col3 nadd

    end
    else
    begin

      if ARow >= 1 then
      begin

        insertsugaOnce(
          grdJx2,
          grdFavorite.Cells[2, ARow],
          jin_day,//formatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
       //   FormatDateTime('YYYY-MM-DD', dmain.Date), // jinDay,
          cbJong.itemindex, // jongbyul,
          jinryo_f.LblAge.Caption, // age,
          false, // isYagan,
          grdJx2.RowCount, // -1,// 1,//nManRow,
          1,  // nManStart);
          '', //modiKind
          0,
          0,
          gubKind,
          '');
          

        JinryoBiSet;
      end;

    end;
  end
  else
  begin
    // Delete
    if Application.MessageBox(Pchar('자주쓰는 처치에서 삭제 하시겠습니까?'), '자주쓰는 처치에서 삭제 확인',
      MB_YESNO) <> 6 then // yes : 6 No : 7
    begin

      exit;

    end
    else
    begin
      if deleteFavoriteSuga(grdFavorite.Cells[4, ARow]) = true then
      begin

        grdFavorite.RemoveRows(ARow, 1);

        grdFavorite.AutoNumberCol(0);
      end;
    end;

  end;
end;

procedure TJinryo_f.grdFavoriteGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
    if aRow = 0  then
     begin
          hAlign :=  TAlignment.taCenter;
        //  Valign := vtaCenter;
     end;

end;

procedure TJinryo_f.grdFavoriteRowMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
    grdFavorite.AutoNumberCol(0);
    UpdateFavoriteItem_nOrder(grdFavorite);
end;

procedure TJinryo_f.grdFindGroupClickCell(Sender: TObject; ARow, ACol: Integer);
var
  tempQuery: TuniQuery;
  i: Integer;
begin

  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;

      SQL.Add('select * ');
      SQL.Add(' , (select top 1 su_key from suga where user_key=groupsuga.sugacode) as su_key   ');
      SQL.Add('from groupsuga where groupcode=:GrKey  ');
      SQL.Add(' and  grpDgsYon = ''O''       order by groupline              ');
      paramByName('GrKey').asString := grdFindGroup.Cells[1, ARow];
      open;
      First;
      if isEmpty then
      begin
        Showmessage(' 그룹코드가 존재하지 않습니다. 확인하세요!!');
        exit;
      end
      else
      begin

        i := 0;
        while not eof do
        begin
          i := i + 1;
          grdFindSuga.RowCount := recordCount + 1;

          grdFindSuga.Cells[1, i] := fieldByname('sugacode').asString;
          grdFindSuga.Cells[2, i] := fieldByname('sugakorname').asString;
          grdFindSuga.Cells[3, i] := fieldByname('su_key').asString;

          next;
        end;

      end;
    end;

  finally
    tempQuery.Free;
  end;
end;

procedure TJinryo_f.grdFindGroupDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin
  insertGridGroupSuga(grdFindGroup, 1, 2, 3, ARow);
end;

procedure TJinryo_f.grdFindGroupGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
    if aRow = 0  then
     begin
          hAlign :=  TAlignment.taCenter;
        //  Valign := vtaCenter;
     end;

end;

procedure TJinryo_f.grdFindGroupKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    grdFindGroupDblClickCell(grdFindGroup, grdFindGroup.Row, grdFindGroup.Col);
    //

  end;
end;

procedure TJinryo_f.grdFindSugaDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  userKey : string;
  gubKind : string;
//  gubKind : integer;
  jin_day : string;

begin


   if isNeyukLoad = true then
      jin_day := grdNeyuk.Cells[1, grdNeyuk.Row]
   else
      jin_day := FormatDateTime('YYYY-MM-DD' , jinryo_f.DaegiFrame_fr1.DtDate.date);

    if cbJong.itemindex in [3,7] then  //일반이거나 자보는 비급이다.
       gubKind := '2'
    else
       gubKind := '0';

 if ARow >= 1 then
  begin
          userKey :=  grdFindSuga.Cells[1, ARow];
    // insertsugaOnce(grdSuga.Cells[1, aRow], 1, 1);//
      insertsugaOnce(
       grdJx2,
       userKey ,
       jin_day,//FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
    //   FormatDateTime('YYYY-MM-DD',  dmain.Date), // jinDay,
       cbJong.itemindex, // jongbyul,
       jinryo_f.LblAge.Caption, // age,
       false, // isYagan,
       grdJx2.RowCount, // -1,// 1,//nManRow,
       1,  // nManStart;
       '',//modiKind
       0,
       1,
       gubKind,
       '',    //exceptCode
       true);
    JinryoBiSet;
  end;

end;

procedure TJinryo_f.grdFindSugaGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
 if aRow = 0  then
     begin
          hAlign :=  TAlignment.taCenter;
         // Valign := vtaCenter;
     end;

end;

procedure TJinryo_f.grdGroupCodeDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin

     insertGridGroupSuga(grdGroupCode, 1, 2, 3, ARow);

end;

procedure TJinryo_f.grdGroupCodeGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
    if aRow = 0  then
     begin
          hAlign :=  TAlignment.taCenter;
        //  Valign := vtaCenter;
     end;

end;

procedure TJinryo_f.insertGridGroupSuga(aGrid: TAdvStringGrid;
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

      InsertSugaCode(AGroupName, AGroupCode, 0,    aSutak);
                  //GroupName    GroupCode   nAdd  aSutak
    end;
  end;


  lstGroupTemp.Items.Clear;

end;

procedure TJinryo_f.grdGroupCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
          VK_UP : //Exit
           begin
               if grdGroupCode.Row = 1 then
                   edtGroupOrderValue.SetFocus;

           end;
    end;
end;

procedure TJinryo_f.grdGroupCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    grdGroupCodeDblClickCell(grdGroupCode, grdGroupCode.Row, grdGroupCode.Col);
    //
  end;
end;

procedure TJinryo_f.loadGongsang;
begin
  if trim(ma_ChasangNo) <> '' then
  begin
    edtGongSang.text := copy(ma_ChasangNo, 1, 1);

    edtSanjung.text := copy(ma_ChasangNo, 5, Length(ma_ChasangNo) - 5);

    // edtSanjung.text :=  main_f.lblChaSangNo.Caption; //C   20110720202002011
  end
  else
  begin
    edtGongSang.text := '';

    edtSanjung.text := '';
  end;
end;

procedure TJinryo_f.CalcBonin3;
var
  iGumjin: Integer;
  nChoje : integer;
  bohum100 : string;
begin


  iGumjin := cbSanCode3.itemindex;

//  if cbSancode3.itemindex > 0 then
//        nChoje := 11
//  else
//        nChoje := cbChoje.itemindex ;
  nChoje := cbChoje.itemindex ;

  if cbBohum100.Checked then
    Bohum100:= '1'
    else
     Bohum100:= '0' ;

  nJinchalRyo := Jinchalryo_make(
        configvalue.varGubun,     // '의원' ,  // 병원, 의원, 종합병원
        nSumBohumChong + nJinchalRyo, // nSumTotal,// nSumChong,// varChong ,
        false, // checkInt(varWonweNo), // boolWonwe: Boolean;
        FormatDateTime('YYYY-MM-DD', dmain.Date), // varJinday,  //YYYY-MM-DD
        edtSimTime.text,
        // copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
        nChoje,//cbChoje.itemindex, // varChojae - 1 ,
        cbJong.itemindex + 1, // varJongbeul,
        StrToInt(jumintoNai(ma_jumin)), // nAge,
        DayOfWeek(dmain.Date) = 7, // 토요일여부 - 토요가산적용
        iGumjin,
        // false,//Yongua,//영유아구분
        // false,//ilban, //건강검진
        // false,//ifirst,//생애전환기검진
        edtBonType.text, // bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
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
        FormatDateTime('YYYY-MM-DD', dmain.Date),
        edtSimTime.text,
        cbChoje.itemindex,
        StrToInt(jumintoNai(ma_jumin)),
        DayOfWeek(dmain.Date) = 7);


   nJinchalRyo :=  nJinchalRyo +  SatGasangeum2;

   nSumBonin :=
       CalcBonin(
          configvalue.varGubun, // '의원' ,  // 병원, 의원, 종합병원
          cbIO.itemindex,
          nSumBohumChong + nJinchalRyo, // nSumTotal,// nSumChong,// varChong ,
          false, // checkInt(varWonweNo), // boolWonwe: Boolean;
          FormatDateTime('YYYY-MM-DD', dmain.Date), // varJinday,  //YYYY-MM-DD
          edtSimTime.text,   // copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
          cbChoje.itemindex, // varChojae - 1 ,
          cbJong.itemindex + 1, // varJongbeul,
          StrToInt(jumintoNai(ma_jumin)), // nAge,
          DayOfWeek(dmain.Date) = 7, // 토요일여부 - 토요가산적용
          iGumjin,
          edtBonType.text, // bondamCode,//  varbonDamCode:string;  //보험 본인부담코드
          '', // varBonjun : string;
          nCTMRI ,//0, // varCT : integer; //CT금액
          0, // iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //틀니 금액
          nSum100by30Jae + nSum100by30Hang,
          nSum100by50Jae + nSum100by50Hang,
          nSum100by80Jae + nSum100by80Hang,
          nSum100by90Jae + nSum100by90Hang,
          Bohum100,
          edtSanjung.Text,           //산정특례코드
          cbSanjungTeakRye.Checked,  //산정특례적용 여부
          edtJiwon.text,//'',  //H 넣기
          false, // iaOnly, //틀니여부
          false, // 틀니수리여부
          false, // iaOnly, //임플란트여부
          false, // 다른 치료 여부
          nBoman, // 의약품관리료
          false, // 공상여부
          false, // jange, //장애여부
          // false, //Yongua,//영유아구분
          // false, //ilban, //건강검진
          // false, //ifirst,//생애전환기검진
          false, // 급여제한자여부
          false); // isPregnan);  //임신여부


      nSumChung := nSumBohumChong + nJinchalRyo - nSumBonin;


      if (iGumjin > 0) and (nJinchalRyo> 0 ) then
      begin
         //  LoadInputTeakJung(  'JT018', jinchalRyoCode  );
      end;

      // nSumChung := nSumTotal - nSumBonin ;
end;


function TJinryo_f.CurrText(varRichText: TRichEdit): TTextAttributes;
begin
  if varRichText.SelLength > 0 then
    Result := varRichText.SelAttributes
  else
    Result := varRichText.DefAttributes;
end;



procedure   TJinryo_f.Delete_RP_requestUseJinsKey(  rpPk: Integer  );
var
   tempQuery: TuniQuery;
begin
      try
        tempQuery := TuniQuery.Create(self);
        tempQuery.Connection := Dm_f.UniConnection1;


        with tempQuery do
        begin
              close;
              SQL.Clear;
              SQL.Add('delete from  RP_requestUseJinsKey');
              SQL.Add('Where requestpk= :requestpk ');
              paramByName('requestpk').AsInteger := rpPk;
              execsql;


          end;



      finally
          tempQuery.free;
      end;

end;


procedure TJinryo_f.LoadReferList(rpPk: Integer);
begin
  with Dm_f.sqlwork do
  begin


    pnlReferHosp.Visible :=false;
    lblReferHospName.Caption  := '';
    lblReferHospDoc.Caption   := '';
    lblReferHospPhone.Caption := '';

    lblReferHospName2.Caption := '';



    memReferList.Lines.Clear;

    close;
    SQL.Clear;
    SQL.Add('Select * from rp_request');
    SQL.Add('Where pk= :pk');
    paramByName('pk').AsInteger := rpPk;
    open;
    if not isEmpty then
    begin


      pnlReferHosp.Visible :=true;

      lblReferHospName.Caption  := '병원명: ' +  fieldByname('HospitalName').asString;
      lblReferHospDoc.Caption   := '담당의: ' +  fieldByname('DoctorName').asString;
      lblReferHospPhone.Caption := '연락처: ' +  fieldByname('HospitalPhone').asString;

      lblReferHospName2.Caption := fieldByname('HospitalName').asString;


      memReferList.Lines.Add(fieldByname('content').asString);
    end
    else
    begin

       //당일의 의뢰병원 정보 가져오기
       loadReferHospInfo(ma_Chart,
          formatdatetime('YYYY-MM-DD', DaegiFrame_fr1.dtDate.datetime));

       if ma_referHospName <> '' then
       begin
          pnlReferHosp.Visible :=true;



          lblReferHospName.Caption := '병원명: ' + ma_referHospName;

          lblReferHospName2.Caption :=  ma_referHospName;
       end;

      // edtReferHospCode.text := ma_referHospCode;
      //    edtReferHospName.text := ma_referHospName;

    end;


//    SQL.Add(' select *,                                               ');
//    SQL.Add('   (select name  from  RP_category where                 ');
//    SQL.Add('    RP_category.pk= RP_categoryUseRequest.categoryPK     ');
//    SQL.Add('    and [table]=''1'' ) as cateName                        ');
//    SQL.Add('      from [RP_categoryUseRequest]                       ');
//    SQL.Add(' where requestPK =  :requestPK                           ');

    close;
    SQL.Clear;

     //상병 가져오자....
     SQL.Add(' select *,                                                                 ');
     SQL.Add('   (select top 1 s_kor_name from sangbyung where s_key  = RP_requestUse.[join] ) ');
     SQL.Add('  as s_name from  RP_requestUse                                            ');
     SQL.Add(' where requestpk=:requestPK and category =''1''                            ');


    paramByName('requestPK').AsInteger := rpPk;
    open;

    lstReferList.Items.Clear;

    if not isEmpty then
    begin

      while not eof do
      begin

        lstReferList.Items.Add(
           fieldByname('join').asString
            +' [ '+  fieldByname('s_name').asString +' ] '
           );

        next;
      end;

    end;

    close;
    SQL.Clear;

    //요청한 검사목록 불러오자.
    SQL.Add('select *,                                                                     ');
    SQL.Add('  (select [name] from RP_examinationKind where pk  = RP_requestUse.[join] )   ');
    SQL.Add(' as s_name from  RP_requestUse                                                ');
    SQL.Add('where requestpk=:requestPK and category =''2''                                ');

    paramByName('requestPK').AsInteger := rpPk;
    open;

//    lstReferList.Items.Clear;

    if not isEmpty then
    begin

      while not eof do
      begin

        lstReferList.Items.Add(fieldByname('s_name').asString  );

        next;
      end;

    end;



  end;
end;

procedure TJinryo_f.LoadRichData(varChart: string);
var
  Temp: string;
  varLength: Integer;
  varRichText: TRichEdit;
  dap: array [1 .. 100] of string;
  varRgTag: Integer;
  BStream: TStream;
  i: Integer;
  iTabIndex: Integer;
var
   doc_code, treatRoom : string;
begin

      doc_code := cbDoc.ColumnItems[cbDoc.itemindex, 4];
      treatRoom := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];
  // varRichText := edtRemark;

  // varRichText.Text := '';

  // i:= 0;

  if varChart <> '' then
  begin
    try
      with Dm_f.sqlwork do
      begin

        close;
        SQL.Clear;
        SQL.Add('Select * from ma_gogek_remark');
        SQL.Add('Where chart= :Chart');
        SQL.Add(' Order by reg_day desc ');
        paramByName('Chart').asString := varChart;
        open;
        if not isEmpty then
        begin
          i := 0;
          while not eof do
          begin
            varRgTag := fieldByname('kind').AsInteger;
            case varRgTag of
              1 .. 100:
                begin
                  if dap[varRgTag] <> '' then
                  begin
                    dap[varRgTag] := dap[varRgTag] + '<BR>' +
                      fieldByname('reg_day').asString + ' : ' +
                      fieldByname('remark').asString;
                  end
                  else
                  begin
                    dap[varRgTag] := fieldByname('reg_day').asString + ' : ' +
                      fieldByname('remark').asString;
                  end;
                end;
            end;
            next;
          end;
        end;
      end;

    except
       on E: Exception do
        begin
          Showmessage(E.Message + '내원동기부르기오류');

        end;

    end;
  end;

  varRichText := edtRemark;
  varRichText.text := '';
  if varChart <> '' then
  begin
    with Dm_f.SqlTemp13 do
    begin
      close;
      SQL.Clear;
      SQL.Add('Select * from hxSremark');
      SQL.Add('Where srchart= :srChart');
      SQL.Add('order by srDate desc');
      paramByName('srChart').asString := varChart;
      open;
      if not isEmpty then
      begin

        while not eof do
        begin


          varLength := Length(varRichText.text);
          Temp := fieldByname('srMemo').asString;
          (varRichText).Lines.Add(Temp);
          (varRichText).SelStart := varLength;
          (varRichText).SelLength := Length(Temp);
          CurrText(varRichText).Color := clGreen;

          next;
        end;
      end;

    end;

    varRichText := edtCC;
    varRichText.text := '';
    tcCCDate.Tabs.Clear;
    with Dm_f.SqlTemp13 do
    begin
      close;
      SQL.Clear;
      SQL.Add('Select * from hxCC');
      SQL.Add('Where ccDate=:ccDate and CCchart= :CCChart and ccTeam= :ccTeam and doc_code=:doc_Code');
//        SQL.Add('Where CCchart= :CCChart ');
      SQL.Add('order by ccDate desc');
      paramByName('ccDate').asString   := FormatDateTime('YYYY-MM-DD', dmain.Date);
      paramByName('ccTeam').asString   := treatRoom;
      paramByName('doc_code').asString := doc_code;
      paramByName('CCChart').asString  := varChart;
      open;
      if not isEmpty then
      begin
        i := 0;
        while not eof do
        begin
          varLength := Length(varRichText.text);
          Temp := fieldByname('CCDate').asString;
          (varRichText).Lines.Add(Temp);
          // (varRichText).SelStart := varLength;
          // (varRichText).SelLength := length(Temp);
          // CurrText(varRichText).Color := clRed;
          //
          // varLength := length(varRichText.Text);
          // Temp := FieldByName('CCMemo').AsString;
          // (varRichText).Lines.Add(Temp);
          // (varRichText).SelStart := varLength;
          // (varRichText).SelLength := length(Temp);
          // CurrText(varRichText).Color := clGreen;

          BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
          (varRichText).Lines.LoadFromStream(bStream);
        //  RTFInsertStream(varRichText, BStream);
          BStream.Free;

          // if (i = 0) and (FormatdateTime('YYYY-MM-DD',
          // now) <> FormatdateTime('YYYY-MM-DD',FieldByName('ccDate').asDatetime)) then
          // begin
          // tcCCDate.Tabs.Add(FormatdateTime('YYYY-MM-DD', now));
          // tcCCDate.Tabs.Add(FormatdateTime('YYYY-MM-DD',FieldByName('ccDate').asDatetime));
          // end
          // else
          // begin
          tcCCDate.Tabs.Add(FormatDateTime('YYYY-MM-DD',
            fieldByname('ccDate').AsDateTime));


          // inc(i);

          next;
        end;

        iTabIndex := tcCCDate.Tabs.IndexOf(FormatDateTime('YYYY-MM-DD',
          dmain.Date)); // -1;

        if iTabIndex >= 0 then
        begin
          tcCCDate.TabIndex := iTabIndex;

       //   LoadCC(ma_chart, doc_code,  FormatDateTime('YYYY-MM-DD', dmain.Date));
          LoadCC(ma_chart,
           treatRoom, doc_code ,
           FormatDateTime('YYYY-MM-DD', now),
           inttostr(cbIo.ItemIndex));

        end;
      end
      else
      begin
        tcCCDate.Tabs.Clear;
        // tcCCDate.Tabs.Add(FormatdateTime('YYYY-MM-DD', now));

      end;

    end;

    varRichText := edtMedHx;
    varRichText.text := '';
    with Dm_f.SqlTemp13 do
    begin
      close;
      SQL.Clear;
      SQL.Add('Select * from hxMed');
      SQL.Add('Where Medchart= :MedChart');
      SQL.Add('order by MedDate desc');
      paramByName('MedChart').asString := varChart;
      open;
      if not isEmpty then
      begin
        while not eof do
        begin
          varLength := Length(varRichText.text);
          Temp := fieldByname('MedDate').asString;
          (varRichText).Lines.Add(Temp);
          (varRichText).SelStart := varLength;
          (varRichText).SelLength := Length(Temp);
          CurrText(varRichText).Color := ClRed;

          varLength := Length(varRichText.text);
          Temp := fieldByname('MedMemo').asString;
          (varRichText).Lines.Add(Temp);
          (varRichText).SelStart := varLength;
          (varRichText).SelLength := Length(Temp);
          CurrText(varRichText).Color := clGreen;

          next;
        end;
      end;

    end;

    varRichText := edtDr;
    varRichText.text := '';
    with Dm_f.SqlTemp13 do
    begin
      close;
      SQL.Clear;
      SQL.Add('Select * from hxDent');
      SQL.Add('Where Dchart= :DChart');
      SQL.Add('order by DDate desc');
      paramByName('DChart').asString := varChart;
      open;
      if not isEmpty then
      begin
        while not eof do
        begin
          varLength := Length(varRichText.text);
          Temp := fieldByname('DDate').asString;
          (varRichText).Lines.Add(Temp);
          (varRichText).SelStart := varLength;
          (varRichText).SelLength := Length(Temp);
          CurrText(varRichText).Color := ClRed;

          varLength := Length(varRichText.text);
          Temp := fieldByname('DMemo').asString;
          (varRichText).Lines.Add(Temp);
          (varRichText).SelStart := varLength;
          (varRichText).SelLength := Length(Temp);
          CurrText(varRichText).Color := clGreen;
          next;
        end;
      end;
    end;

    varRichText := edtPtWant;
    varRichText.text := '';
    with Dm_f.SqlTemp13 do
    begin
      close;
      SQL.Clear;
      SQL.Add('Select * from hxDesire');
      SQL.Add('Where Dschart= :DsChart');
      SQL.Add('order by DsDate desc');
      paramByName('DsChart').asString := varChart;
      open;
      if not isEmpty then
      begin
        while not eof do
        begin
          varLength := Length(varRichText.text);
          Temp := fieldByname('DsDate').asString;
          (varRichText).Lines.Add(Temp);
          (varRichText).SelStart := varLength;
          (varRichText).SelLength := Length(Temp);
          CurrText(varRichText).Color := ClRed;

          varLength := Length(varRichText.text);
          Temp := fieldByname('DsMemo').asString;
          (varRichText).Lines.Add(Temp);
          (varRichText).SelStart := varLength;
          (varRichText).SelLength := Length(Temp);
          CurrText(varRichText).Color := clGreen;
          next;
        end;
      end;
    end;
  end;

//  edtRemark.Perform(WM_VSCROLL, SB_BOTTOM, 0);  // Memo 맨 아래로 자동 스크롤

end;



procedure TJinryo_f.LoadSunapMemo(varChart: string; jin_day : Tdate); //환자의 그날치 수납메모만 가져온다.
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
          CurrText(varRichText).Color := clGreen;
          next;
        end;
      end;
    end;

  end;

end;


procedure TJinryo_f.LoadMoreInfo(varChart: string);
//var
//  i, j, imgCnt: Integer;
//  varMemo: string;
//
//  BStream: TStream;
//
//  varPath, teethFilename: string;
//  varPenImage: string;
//
begin
//
//  grdMoreInfo.BeginUpdate;
//  grdMoreInfo.RowCount := 2;
//  grdMoreInfo.fixedRows := 1;
//  grdMoreInfo.RemoveRows(1, grdMoreInfo.RowCount - 1);
//
//  with Dm_f.sqlwork, grdMoreInfo do
//  begin
//
//    i := 0;
//    j := 0;
//    varPath := ExtractFilePath(ParamStr(0)) + 'temp\teethtemp\';
//    imgCnt := 0;
//
//    if configvalue.varChartDaily = '1' then
//    begin
//      close;
//      SQL.Clear;
//      SQL.Add('Select top 1 * from hxSremark');
//      SQL.Add('Where srchart= :srChart');
//      SQL.Add('order by srDate desc');
//      paramByName('srChart').asString := varChart;
//      open;
//      if not Dm_f.sqlwork.isEmpty then
//      begin
//        while not eof do
//        begin
//          if i > 0 then
//            AddRow;
//
//          Cells[0, i] := 'Daily Comment';
//          Cells[1, i] := '[+]';
//          Cells[2, i] := DateType1(fieldByname('srDate').asString);
//
//          if fieldByname('portion').asString <> '' then
//          begin
//            teethFilename := 'SR' + inttostr(imgCnt + 1);
//            MakeImage(fieldByname('portion').asString, teethFilename,
//              stringToColor(substr(configvalue.varUpperToothColor, 2, ',')),
//              stringToColor(substr(configvalue.varLowerToothColor, 2, ',')));
//
//            imgCnt := imgCnt + 1;
//            CreatePicture(3, i, false, ShrinkWithAspectRatio, 0, AdvGrid.haLeft,
//              AdvGrid.vaTop).LoadFromFile(varPath + teethFilename + '.BMP');
//            // 치식도 가져오기
//            // Cells[4, i] := FieldByName('CCMemo').asString;
//
//            if fieldByname('richtext').asString <> '' then
//            begin
//              BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
//              RichEdit2.Lines.LoadFromStream(BStream);
//              BStream.Free;
//
//              grdMoreInfo.HideInplaceEdit;
//              grdMoreInfo.RichToCell(4, i, RichEdit2);
//            end
//            else
//              grdMoreInfo.Cells[4, i] := fieldByname('srMemo').asString;
//
//          end
//          else
//          begin
//            // teeth를 표시하지 않으니까 3부터 ...
//
//            if fieldByname('richtext').asString <> '' then
//            begin
//              BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
//              RichEdit2.Lines.LoadFromStream(BStream);
//              BStream.Free;
//
//              grdMoreInfo.HideInplaceEdit;
//              grdMoreInfo.RichToCell(3, i, RichEdit2);
//            end
//            else
//              grdMoreInfo.Cells[3, i] := fieldByname('srMemo').asString;
//
//            mergecells(3, i - j, 2, 1);
//          end;
//          i := i + 1;
//          j := j + 1;
//          // 한줄만 보이게 하자.
//          // if j > 1 then
//          // begin
//          // HideRow(j);
//          // end;
//
//          next;
//        end;
//      end;
//      mergecells(0, i - j, 1, j);
//    end;
//
//    // i := 0;
//    j := 0;
//    varPath := ExtractFilePath(ParamStr(0)) + 'temp\teethtemp\';
//    imgCnt := 0;
//
//    close;
//    SQL.Clear;
//    SQL.Add('Select top 1 * from hxCC');
//    SQL.Add('Where CCchart= :CCChart');
//    SQL.Add('order by ccDate desc');
//    paramByName('CCChart').asString := varChart;
//    open;
//    if not Dm_f.sqlwork.isEmpty then
//    begin
//      while not eof do
//      begin
//        if i > 0 then
//          AddRow;
//
//        Cells[0, i] := 'C/C';
//        Cells[1, i] := '[+]';
//        Cells[2, i] := DateType1(fieldByname('CCDate').asString);
//
//        if fieldByname('portion').asString <> '' then
//        begin
//          teethFilename := 'CC' + inttostr(imgCnt + 1);
//          MakeImage(fieldByname('portion').asString, teethFilename,
//            stringToColor(substr(configvalue.varUpperToothColor, 2, ',')),
//            stringToColor(substr(configvalue.varLowerToothColor, 2, ',')));
//
//          imgCnt := imgCnt + 1;
//          CreatePicture(3, i, false, ShrinkWithAspectRatio, 0, AdvGrid.haLeft,
//            AdvGrid.vaTop).LoadFromFile(varPath + teethFilename + '.BMP');
//          // 치식도 가져오기
//          // Cells[4, i] := FieldByName('CCMemo').asString;
//
//          if fieldByname('richtext').asString <> '' then
//          begin
//            BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
//            RichEdit2.Lines.LoadFromStream(BStream);
//            BStream.Free;
//
//            grdMoreInfo.HideInplaceEdit;
//            grdMoreInfo.RichToCell(4, i, RichEdit2);
//          end
//          else
//            grdMoreInfo.Cells[4, i] := fieldByname('ccMemo').asString;
//
//        end
//        else
//        begin
//          // teeth를 표시하지 않으니까 3부터 ...
//
//          if fieldByname('richtext').asString <> '' then
//          begin
//            BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
//            RichEdit2.Lines.LoadFromStream(BStream);
//            BStream.Free;
//
//            grdMoreInfo.HideInplaceEdit;
//            grdMoreInfo.RichToCell(3, i, RichEdit2);
//          end
//          else
//            grdMoreInfo.Cells[3, i] := fieldByname('ccMemo').asString;
//
//          mergecells(3, i - j, 2, 1);
//        end;
//        i := i + 1;
//        j := j + 1;
//        // 한줄만 보이게 하자.
//        // if j > 1 then
//        // begin
//        // HideRow(j);
//        // end;
//
//        next;
//      end;
//    end;
//    mergecells(0, i - j, 1, j);
//
//    j := 0;
//    close;
//    SQL.Clear;
//    SQL.Add('Select top 1 * from hxMed');
//    SQL.Add('Where Medchart= :MedChart');
//    SQL.Add('order by MedDate desc');
//    paramByName('MedChart').value := varChart;
//    open;
//    if not Dm_f.sqlwork.isEmpty then
//    begin
//      while not eof do
//      begin
//
//        if i > 0 then
//          AddRow;
//        Cells[0, i] := 'M/H';
//        Cells[1, i] := '[+]';
//
//        Cells[2, i] := DateType1(fieldByname('medDate').asString);
//        // teeth를 표시하지 않으니까 3부터 ...
//        // Cells[3, i] := FieldByName('medMemo').asString;
//        if fieldByname('richtext').asString <> '' then
//        begin
//          BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
//          RichEdit2.Lines.LoadFromStream(BStream);
//          BStream.Free;
//
//          grdMoreInfo.HideInplaceEdit;
//          grdMoreInfo.RichToCell(3, i, RichEdit2);
//        end
//        else
//          grdMoreInfo.Cells[3, i] := fieldByname('medMemo').asString;
//
//        mergecells(3, i - j, 2, 1);
//        i := i + 1;
//        j := j + 1;
//        next;
//
//      end;
//    end;
//
//    mergecells(0, i - j, 1, j);
//
//    j := 0;
//    close;
//    SQL.Clear;
//    SQL.Add('Select top 1 * from hxDesire');
//    SQL.Add('Where Dschart= :DsChart');
//    SQL.Add('order by DsDate desc');
//    paramByName('DsChart').value := varChart;
//    open;
//    if not Dm_f.sqlwork.isEmpty then
//    begin
//      while not eof do
//      begin
//        varMemo := fieldByname('DsMemo').asString;
//        if i > 0 then
//          AddRow;
//        Cells[0, i] := 'Pt./Wanting'; // 'Pt''''s Wanting';
//        Cells[1, i] := '[+]';
//        Cells[2, i] := DateType1(fieldByname('DsDate').asString);
//
//        // teeth를 표시하지 않으니까 3부터 ...
//        // Cells[3, i] := FieldByName('DsMemo').asString;
//
//        if fieldByname('richtext').asString <> '' then
//        begin
//          BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
//          RichEdit2.Lines.LoadFromStream(BStream);
//          BStream.Free;
//
//          grdMoreInfo.HideInplaceEdit;
//          grdMoreInfo.RichToCell(3, i, RichEdit2);
//        end
//        else
//          grdMoreInfo.Cells[3, i] := fieldByname('DsMemo').asString;
//
//        // grdPtWant.AutoSizeRows(true);
//        mergecells(3, i - j, 2, 1);
//        i := i + 1;
//        j := j + 1;
//        next;
//      end;
//    end;
//    mergecells(0, i - j, 1, j);
//
//    j := 0;
//    close;
//    SQL.Clear;
//    SQL.Add('Select top 1 * from hxDent');
//    SQL.Add('Where Dchart= :DChart');
//    SQL.Add('order by DDate desc');
//    paramByName('DChart').value := varChart;
//    open;
//    if not Dm_f.sqlwork.isEmpty then
//    begin
//      while not eof do
//      begin
//
//        if i > 0 then
//          AddRow;
//        Cells[0, i] := 'Dr./Recom.'; // 'Dr''''s Recommended';
//        Cells[1, i] := '[+]';
//        Cells[2, i] := DateType1(fieldByname('DDate').asString);
//
//        // teeth를 표시하지 않으니까 3부터 ...
//        // Cells[3, i] := FieldByName('DMemo').asString;
//        if fieldByname('richtext').asString <> '' then
//        begin
//          BStream := CreateBlobStream(fieldByname('richtext'), bmRead);
//          RichEdit2.Lines.LoadFromStream(BStream);
//          BStream.Free;
//
//          grdMoreInfo.HideInplaceEdit;
//          grdMoreInfo.RichToCell(3, i, RichEdit2);
//        end
//        else
//          grdMoreInfo.Cells[3, i] := fieldByname('DMemo').asString;
//
//        mergecells(3, i - j, 2, 1);
//        i := i + 1;
//        j := j + 1;
//        next;
//      end;
//    end;
//    mergecells(0, i - j, 1, j);
//
//    j := 0;
//    close;
//    SQL.Clear;
//    SQL.Add('Select top 1 * from ma_gogek_remark');
//    SQL.Add('Where chart= :Chart');
//    SQL.Add(' and kind= :kind');
//    SQL.Add(' and code= :code');
//    SQL.Add(' Order by reg_day desc ');
//    paramByName('Chart').asString := varChart;
//    // ParamByName('reg_day').AsString := formatDatetime('YYYY-MM-DD', varDate);
//    paramByName('kind').asString := '10';
//    paramByName('code').asString := '003';
//    open;
//    if not Dm_f.sqlwork.isEmpty then
//    begin
//      while not eof do
//      begin
//
//        if i > 0 then
//          AddRow;
//        Cells[0, i] := 'HappyCall';
//        Cells[1, i] := '[+]';
//        Cells[2, i] := DateType1(fieldByname('reg_day').asString);
//        // teeth를 표시하지 않으니까 3부터 ...
//        Cells[3, i] := fieldByname('remark').asString;
//
//        mergecells(3, i - j, 2, 1);
//        i := i + 1;
//        j := j + 1;
//        next;
//
//      end;
//    end;
//    mergecells(0, i - j, 1, j);
//    // grdMoreinfo.AutoSizeRow(i-1);
//
//  end;
//
//  grdMoreInfo.EndUpdate;
//
end;


procedure TJinryo_f.JinryoBiSet;
begin


  // grdCost 에 모든것을 집어넣자.
  CalcSum(jinryo_f.grdJx2,
    jinryo_f.grdCost,
    ma_chart,
    configvalue.varGubun,
    FormatDateTime('YYYY-MM-DD',DaegiFrame_fr1.dtDate.date),
 //   FormatDateTime('YYYY-MM-DD', jinryo_f.dmain.Date),
    jinryo_f.cbJong.itemindex,
    jinryo_f.LblAge.Caption,
    inttostr(jinryo_f.cbIo.ItemIndex),  //0: 외래 1: 숙박입원 2: 낮병동 입원
    jinryo_f.chbYagan.Checked,
    jinryo_f.Edit3.text); // 의약분업예외

  CalcBonin3;




  numchong.text   := formatFloat('#,0', nSumBohumChong + nJinchalRyo    +  nSumBigubChong); // nSumTotal + nJinchalryo);
  numBonin.text   := formatFloat('#,0', nSumBonin      + nSumBigubChong);
  numJinchal.text := formatFloat('#,0', nJinchalRyo);

end;

procedure TJinryo_f.LoadDefaultValue;
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

    with cbTreatRoom do
    begin
      Columns.Clear;
      ComboItems.Clear;
    end;

    close;
    SQL.Clear;
    SQL.text := 'Select * from ma_basic                                   ' +
       #13#10 + 'where  (code like  ''093%'') and (code <> ''09300'')     ' +
       #13#10 + 'and inuse <>  ''0''  and (remark = ''TREAT'' or remark = ''MED'' )    '
      + #13#10 +
    // 'order by val,code                                        ';
      'order by disp                                    ';
    open;
    if not isEmpty then
    begin

      with cbTreatRoom do
      begin
        with Columns.Add do
        begin
          width := 0;
          Font.Style := [fsBold];
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          width := 0;
          Font.Color := ClBlue;
          Font.Style := [fsBold];
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          width := 200;
          Font.Name := '맑은 고딕';
          Font.Size := 12;
        end;

      end;
      // with cbTreatRoom.ComboItems.Add do
      // begin
      // Strings.Add('A');     //Code
      // Strings.Add('A');  //code?
      // Strings.Add('전체');
      // end;

      while not eof do
      begin

        with cbTreatRoom.ComboItems.Add do
        begin
          // Strings.Add(FieldByName('team_name').AsString);
          // Strings.Add(FieldByName('team_color').AsString);
          // Strings.Add(FieldByName('team_doctor1').AsString);
          Strings.Add(trim(fieldByname('val').asString)); // Code
          Strings.Add(trim(fieldByname('remark').asString)); // code?
          Strings.Add(trim(fieldByname('disp').asString));

        end;

        // cbTreatRoom.items.add(FieldByName('disp').AsString);

        next;
      end;
      cbTreatRoom.itemindex := 1;
    end
    else
    begin
      // cbTreatRoom.items.add('데스크');
      // cbTreatRoom.ItemIndex := 0;
    end;

  end;

  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];
  LoadDoclist(cbDoc, team_key);

end;

procedure TJinryo_f.LoadFavoriteSuga;
begin

   grdFavorite.ColWidths[3] :=  0;
   grdFavorite.ColWidths[4] :=  0;

  with Dm_f.sqlwork do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ma_favorite_suga  where userID = :userID');
    paramByName('UserID').asString := V_UserID;
    SQL.Add('order by nOrder');

    open;

    grdFavorite.RowCount := recordCount + 1;
    i := 1;
    while not eof do
    begin

      grdFavorite.Cells[1, i] := trim(fieldByname('su_kor_name').asString);
      grdFavorite.Cells[2, i] := trim(fieldByname('su_key').asString);
      grdFavorite.Cells[3, i] := trim(fieldByname('isGroup').asString);
      grdFavorite.Cells[4, i] := trim(fieldByname('ID').asString);
      grdFavorite.Cells[5, i] := '0';

      i := i + 1;
      next;
    end;
  end;
  grdFavorite.AutoNumberCol(0);
end;



procedure TJinryo_f.WonweSave;
var
     i, jOrder, nMerit: Integer;
     path: string;
     FormInit: TIniFile;
     seqNO   : integer;
     k, j : integer;
     wonweNo : string;
begin

     //WonWeNo ==>
         //같은날 같은환자에게 두개 이상의 처방전을 발행할 경우
         //번호를 다르게 하여 처방전 번호를 다르게 부여하자.

     //WonWeNo를 중복 제거 하자.
     NoDup(lstWonweNo);

     j := lstWonweNo.items.count -1 ;
     if ma_chart <> ''  then
     begin
       for k := 0 to j  do
       begin
          wonweNo :=  lstWonweNo.items[k];
          with dm_f.SqlTemp do
          begin
               //1. 처방전 있는지 찾아보고
               Close;
               Sql.Clear;

               Sql.Add('select * from wonwe_p ');
               Sql.Add('where jin_day=:Jin_day and chart=:chart ');
               Sql.Add('and doc_name=:doc_name and WonweNo=:WonweNo');
               ParamByName('jin_day').AsString    := FormatDateTime('yyyy-mm-dd', dMain.Date);
               ParamByName('chart').AsString      := ma_chart;
               ParamByName('doc_name').AsString   := cbDoc.ColumnItems[cbDoc.itemindex, 2];
               ParamByName('WonweNo').asString    := wonweNo;
               open;
               //2. 있으면

               if not isEmpty then
               begin

                   seqNO := FieldByName('SeqNo').AsInteger ;


                   Close;
                   Sql.Clear;

                   Sql.Add('update wonwe_p set seqno=:seqno,kwamok=:kwamok,dup=:Dup,name=:name,jumin=:jumin,jinryosil=:jinryosil,');
                   Sql.Add('doc_code=:doc_code,jongbeul=:jongbeul,jin_time=:jin_time, myunhu=:myunhu,');
                   Sql.Add('sendkey=:sendkey,chojae=:chojae,   ');
                   Sql.Add('sunap=:sunap,expiration=:expiration,memo=:memo,gub_gu=:gub_gu, ');
                   Sql.Add('sang1=:sang1,sang2=:sang2,yongbub=:yongbub, tjungcode=:tjungcode, tjungNeyuk=:tjungNeyuk');
                   Sql.Add('where jin_day=:Jin_day and chart=:chart and doc_name=:doc_name  and WonweNo=:WonweNo');


               end
               else
               begin

                 //3. 처방전 없으면  일련번호가져오자.

                   Close;
                   Sql.Clear;

                   Sql.Add('select isnull(max(seqno), 0)+ 1 as newSeqNo from wonwe_p ');
                   Sql.Add('where jin_day=:Jin_day ');

                   ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', dMain.Date);
                   Open;
                   First;
                   if not isEmpty then
                        seqNO := FieldByName('newSeqNo').AsInteger
                   else
                        seqNO := 1;



                   Close;
                   Sql.Clear;

                   Sql.Add('insert into wonwe_p (jin_day,chart,kwamok,dup');
                   sql.Add(',seqno, name,jumin,jinryosil,doc_code,jongbeul,jin_time , doc_name, myunhu');
                   sql.Add(', sendkey, chojae,sunap,expiration,yongbub, WonweNo');
                   Sql.Add(',memo,gub_gu,sang1,sang2, tjungcode, tjungNeyuk) values');
                   sql.Add(' (:jin_day,:chart,:kwamok,:dup,:seqno,:name,:jumin,:jinryosil,');
                   sql.Add(':doc_code,:jongbeul,:jin_time, :doc_name, :myunhu, :sendkey,:chojae,');
                   sql.Add(':sunap,:expiration,:yongbub,:WonweNo,:memo,:gub_gu,:sang1,:sang2,:tjungcode, :tjungNeyuk)');

               end;


               ParamByName('WonweNo').asString    := wonweNo;
               ParamByName('jin_day').AsString    := FormatDateTime('yyyy-mm-dd', dMain.Date);
               ParamByName('chart').AsString      := ma_chart;
               ParamByName('kwamok').AsString     := '';
               ParamByName('dup').AsString        := '';
               ParamByName('seqno').AsInteger     :=  seqno;
               ParamByName('name').AsString       := ma_paName;
               ParamByName('jumin').AsString      := ma_jumin;
               ParamByName('jinryosil').AsString  := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0] ;
               ParamByName('doc_code').AsString   := cbDoc.ColumnItems[cbDoc.itemindex, 1];
               ParamByName('yongbub').AsString    := '';
               ParamByName('jongbeul').AsString   := inttostr(strtoint(ma_jongbeul) - 1);

               ParamByName('doc_name').AsString   :=   cbDoc.ColumnItems[cbDoc.itemindex, 2];
               ParamByName('myunhu').AsString     :=   cbDoc.ColumnItems[cbDoc.itemindex, 3];

               ParamByName('jin_time').AsString   := '';
               ParamByName('sendkey').AsString    := 'Y';
               ParamByName('chojae').AsString     := inttostr(cbchoje.ItemIndex);


               ParamByName('sunap').AsString      := '';
               ParamByName('expiration').AsString := '3';
               ParamByName('memo').AsString       := '';
               ParamByName('gub_gu').AsString     := '';
               ParamByName('sang1').AsString      :=  grdSangByung.cells[6, 1];
               ParamByName('sang2').AsString      :=  grdSangByung.cells[6, 2];
               ParamByName('tjungCode').AsString  := '';
               ParamByName('tjungNeyuk').AsString := '';
               ExecSql;

          end;


          //Wonwe_s를 지우고 다시 넣자.....
          with dm_f.SqlTemp do
          begin
               Close;
               Sql.Clear;
               Sql.Add('delete from wonwe_s where jin_day=:Jin_day and seqno=:seqno');
               ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', dMain.Date);
               ParamByName('seqno').AsInteger := seqno;
               ExecSql;
               if grdJx2.RowCount > 1 then
                    for I := 1 to grdJx2.RowCount - 1 do
                    begin

                         if  ( (  grdJx2.Cells[11, i] =  '09' )  or
                               (  grdJx2.Cells[11, i] =  '10' ))     //약이고
                             and (grdJx2.Cells[25, i] =  ''   )     //예외코드 없다.==>원내조제 아니면
                             and (grdJx2.Cells[30, i] <> 'D' )     //삭제는 제외
                             and ( grdJx2.cells[32, i] =  wonweNo)     //wonweNo
                             then
                         begin

                               Close;
                               Sql.Clear;
                               //jin_day,seqno,seq,code,jin_qty,div ,jin_ilsu,su_gu2, su_gu3, yongbub,  jin_check
                               Sql.Add('insert into wonwe_s (jin_day,seqno,seq,code,jin_qty,div ,jin_ilsu,su_gu2, su_gu3,yongbub,jin_check, tjungcode, tjungNeyuk)');
                               Sql.Add(' values (:jin_day,:seqno,:seq,:code,:jin_qty,:div ,:jin_ilsu,:su_gu2, :su_gu3, :yongbub,  :jin_check, :tjungcode, :tjungNeyuk)');

                               ParamByName('jin_day').AsString    := FormatDateTime('yyyy-mm-dd',  dmain.Date);
                               ParamByName('seqno').AsInteger     := seqno;
                               ParamByName('seq').AsString        := IntToStr(i);
                               ParamByName('code').AsString       := grdJx2.Cells[19, i];
                               ParamByName('jin_qty').AsString    := grdJx2.Cells[3, i];
                               ParamByName('div').AsString        := grdJx2.Cells[4, i];
                               ParamByName('jin_ilsu').AsString   :=  grdJx2.Cells[5, i];
                               ParamByName('su_gu2').AsString     := grdJx2.Cells[29, i];
                               ParamByName('su_gu3').AsString     := '';
                               ParamByName('yongbub').AsString    := '';

                               ParamByName('jin_check').AsString  := '';

                               ParamByName('tjungCode').AsString  := '';
                               ParamByName('tjungNeyuk').AsString := '';

                               ExecSql;

                         end;
                    end;


          end;
       end;
     end;

end;


//쓰기 가능한 콘트롤을 묶자.
procedure TJinryo_f.LockControl(isLock: boolean);
begin
  //

      edtremark.ReadOnly       :=    isLock;
      edtdr.ReadOnly           :=    isLock;
 //     edtCC.ReadOnly           :=    isLock;
      edtchklist.ReadOnly      :=    isLock;
      memChungGuMemo.ReadOnly  :=    isLock;

      if isLock = true then
      begin
          grdSangByung.Options     :=  grdSangByung.Options - [goEditing];
          grdJx2.Options           :=  grdJx2.Options       - [goEditing];
    //      grdTxHx.Options          :=  grdTxHx.Options      - [goEditing];
      end
      else
      begin
       //  grdSangByung.Options     :=  grdSangByung.Options + [goEditing];

          if grdJx2.rowcount = 1 then
          begin
             grdJx2.rowcount := 2;
//             grdJx2.rowcount := 1;
             grdJx2.Options           :=  grdJx2.Options       + [goEditing];

             grdJx2.rowcount := 1;
          end
          else
          begin
             grdJx2.Options           :=  grdJx2.Options       + [goEditing];

          end;

//          if grdJx2.rowcount = 1 then
//          begin
//             grdJx2.rowcount := 2;

//          end;
     //  if grdTxHx.rowcount > 0 then
     //     grdTxHx.Options          :=  grdTxHx.Options      + [goEditing];

      end;


      btnReferEdit.enabled     :=   not isLock;
      btnExamInput.enabled     :=   not isLock;
      btnLoadSangByung.enabled :=   not isLock;

      btnSave.enabled          :=   not isLock;
      btnPause.enabled         :=   not isLock;
      btnOutHosp.enabled       :=   not isLock;

      grdGroupCode.enabled     :=   not isLock;
      grdSuga.enabled          :=   not isLock;
      grdDrug.enabled          :=   not isLock;
      grdFindGroup.enabled     :=   not isLock;
      grdFindSuga.enabled      :=   not isLock;
      grdFavorite.enabled      :=   not isLock;
end;





procedure TJinryo_f.CertProcess(
     varChartComment : widestring;
     varChartSSeq:string;
     varDoctorJumin:string;
     var isCorrectCert: boolean);
var
     varElectsignedData : widestring;
     varPKCS7SignedData: widestring;
     varSignCert : WideString;
     varTimeStamp  : WideString;

     varCertIniPath : string;
     path : pAnsichar;

     ProPath : string;

     bCertValid : Boolean;

     varPosition: integer;

begin

      varPosition:=0;


          //여기서부터는 인증서관련
      bCertValid := false;

  //    if dm_f.configvalue.varCert <> '1' then
  //    exit;

   //   ExpandEnvironmentStrings('%ProgramFiles%', Path, 256);
      propath:= GetProgramFilesDir + '\SignGATE\SecuTimeStamp\conf\server.ini';

      if  fileExists(proPath) then
            varCertIniPath  :=  propath// 'C:\Program Files (x86)\SignGATE\SecuTimeStamp\conf\server.ini'
      else
      begin
        varCertIniPath  := '';
        showmessage('TimeStamp 인증모듈을 설치하세요.');
        exit;
      end;


          try
               if varChartComment <> '' then
               begin

                      application.ProcessMessages;
                      varPosition:=20;

                      varSignCert :=   LoadSignCert2(  varDoctorJumin , isCorrectCert); //원장주민번호



                      application.ProcessMessages;
                      varPosition:=40;
                      varElectsignedData := DoElectSign(varChartComment).ElectsignedData;
                      application.ProcessMessages;
                      varPosition:=50;
                      varPKCS7SignedData:=  DoElectSign(varChartComment).PKCS7SignedData;

                      application.ProcessMessages;
                       varPosition:=60;

                      varTimeStamp := callTimeStamp( varCertIniPath ,  varChartComment);

                      application.ProcessMessages;
                       varPosition:=70;

                      bCertValid := varTSG_CAppAtx.ValidateCert(varSignCert ); //'인증서검증

                      application.ProcessMessages;
                      varPosition:=80;

                      if  bCertValid = true then
                          saveDBCert(varChartComment, varSignCert , varElectsignedData, varPKCS7SignedData, varTimeStamp,  varChartSseq)

                      else
                      begin
                          varTSG_CAppAtx.UnloadUserKeyCert;
                      end;

                       varPosition:=100;

               end;

           except
                   on E: Exception do
                      begin
                           exceptLogging('Cert Insert for Update '+ E.Message);

                      end;

           end;

end;

procedure TJinryo_f.saveRqComplete;
var
   rqPk : integer;

     tempQuery : TuniQuery ;
     i : integer;
     paramA, paramB : string;
     detailContent : string;
     patReqPK : string;

     sangList : string;
     yearNo : string;

     sID : integer;

begin
      i:= 0;


       rqPk :=  ma_rp_RequestPK;//fieldByName('maxReq').AsInteger;

       yearNo :=  formatDatetime('YYYYMMDD',DaegiFrame_fr1.dtDate.datetime)
         + inttostr(rqPk);

//     for i:= 0 to lstDangname1.Items.Count -1 do
//     begin
//       if trim(sangList) = '' then
//            sangList :=  lstDangname1.Items[i]
//       else
//          sangList := sangList +#10+ lstDangname1.Items[i]  ;
//     end;

//       EdtSeqNo.text:= yearNo ;


     for i:= 1 to grdSangByung.RowCount -1  do
     begin
        if trim(grdSangByung.Cells[6, i]) ='' then
        continue;

       if trim(sangList) = '' then
            sangList := grdSangByung.Cells[6, i]+'['+ grdSangByung.Cells[10, i]+']'
       else
          sangList := sangList +#10+   grdSangByung.Cells[6, i]+'['+ grdSangByung.Cells[10, i]+']' ;
     end;



    if    saveRequestComplete(
       rqPk,
       edtChart.Text,
       yearNo,//formatDatetime('YYYYMMDD',now)+ inttostr(rqPk),
       ma_jumin,//EdtJuminNo.Text,
       edtName.Text,
       ma_h_juso,//  '',//EdtPadd.Text,
       ma_c_Phone,//edtTelNo.text,
       1,//rgDesease.ItemIndex + 1, //1: 임상적추정  2: 최종판단
       sangList,// lstDangName1.Items[0],
       '', //lstDangName1.Items[1],
       '위와 같이 의견을 보내드립니다.',//Comment    memo1.Text,
       cbDoc.ColumnItems[cbDoc.itemindex, 2],
       configValue.varsaupName ,//EdtHName.Text,
       configValue.varAdd1 +  ' '+configValue.varAdd2 ,//EdtAdd.Text,
       configValue.varTel1 ,//edthphone.Text,
       DaegiFrame_fr1.dtDate.datetime ,//  now,    publicationDate
       DaegiFrame_fr1.dtDate.datetime,//  now ,   RequestDate
       sID  )= true then
         begin


              //이미지 첨부파일 업데이트

//           if ReferImageTokenID <> '' then
//           begin
//             if  UpdateRP_attach(
//                ReferImageTokenID , //token : string;
//                3,    //    tablePK: integer;
//                sID  //rqPk//    bbsPK  : integer
//               )= true then
//               begin
//
//                  showmessage('전송되었습니다.');
//                  close;
//               end
//               else
//               begin
//                     showmessage('첨부파일 저장 오류.');
//               end;
//            end;


//                  showmessage('저장되었습니다.');
//                  close;

         end
         else
         begin
//              showmessage('회송서 저장 오류입니다.');
         end;
end;



procedure TJinryo_f.EPOCHUpdate ;

const
    sqltblOrderListUPDATE   =
      '  update  ResINF   set               '+#10+     //ResINF
      '   ResRltVal =     :ResRltVal        '+#10+
      '  , ResUpdDtm =    :ResUpdDtm        '+#10+
      ' Where ResOcmNum = :ResOcmNum        '+#10+
      '   And ResOdrSeq = :ResOdrSeq        '+#10+
      '   And ResSeq    = :ResSeq           '+#10+
      '   And ResSubSeq = :ResSubSeq        '+#10+
      '   And ResLabCod = :ResLabCod        '+#10+
      '   And (ResRltVal is null or ResRltVal = '''') ' ;

var

     ResRltVal: string;
     ResUpdDtm: string;
     ResOcmNum: string;
     ResOdrSeq: string;
     ResSeq   : string;
     ResSubSeq: string;
     ResLabCod: string;






begin

           dm_f.SqlEpoch.close;
           dm_f.SqlEpoch.sql.clear;
           dm_f.SqlEpoch.sql.text:=
              'select * from tblOrderList where isUsed=''0''  '+#10+
              'and  ResRltVal <> ''''  ' ;
           dm_f.SqlEpoch.open;
           dm_f.SqlEpoch.first;


           if not dm_f.SqlEpoch.isEmpty then
           begin

               while not dm_f.SqlEpoch.eof do
               begin

                    //Mediro resinf 에 업데이트

                     ResRltVal   :=  trim(dm_f.SqlEpoch.fieldByName('ResRltVal').asString);
                     ResUpdDtm   :=  formatDateTime('YYYYMMDDhhnnss', now) ;
                     ResOcmNum   := trim(dm_f.SqlEpoch.fieldByName('ResOcmNum').asString);
                     ResOdrSeq   := trim(dm_f.SqlEpoch.fieldByName('ResOdrSeq').asString);
                     ResLabCod  := trim(dm_f.SqlEpoch.fieldByName('ResLabCod').asString);



                     with dm_f.sqlTemp12 do
                     begin
                         close;
                         sql.clear;
                         sql.text:=  sqltblOrderListUPDATE ; //ResInf Update
                         paramByName('ResRltVal').asString     :=  ResRltVal;
                         paramByName('ResUpdDtm').asString     :=   ResUpdDtm;//jin_day  ;
                         paramByName('ResOcmNum').asString     :=   ResOcmNum;//Jubsu_ID  ;
                         paramByName('ResOdrSeq').asString     :=   ResOdrSeq; //inttostr(seqNO)  ;
                         paramByName('ResSeq'   ).asString     :=   '1'  ;
                         paramByName('ResSubSeq').asString     :=   '0'  ;
                         paramByName('ResLabCod').asString     :=  ResLabCod; //su_key  ;
                         execsql;
                     end;


                    //MDB tblOrderList 에 업데이트

                     with dm_f.sqlEpoch2 do
                     begin
                         close;
                         sql.clear;
                         sql.text:=  'update tblOrderList set              '+#10+//sqltblOrderListUPDATE ; //ResInf Update
                                      '   isUsed =  ''1''                   '+#10+
                                      ' Where ResOcmNum = :ResOcmNum        '+#10+
                                      '   And ResOdrSeq = :ResOdrSeq        '+#10+
                                      '   And ResSeq    = :ResSeq           '+#10+
                                      '   And ResSubSeq = :ResSubSeq        '+#10+
                                      '   And ResLabCod = :ResLabCod        ';

                         paramByName('ResOcmNum').asString     :=   ResOcmNum;//Jubsu_ID  ;
                         paramByName('ResOdrSeq').asString     :=  ResOdrSeq;//inttostr(seqNO)  ;
                         paramByName('ResSeq'   ).asString     :=   '1'  ;
                         paramByName('ResSubSeq').asString     :=   '0'  ;
                         paramByName('ResLabCod').asString     :=  ResLabCod;//su_key  ;
                         execsql;
                     end;


                     dm_f.SqlEpoch.next;
               end;
           end;

end;




procedure TJinryo_f.EPOCHDataLoad(Jubsu_ID : string) ;
begin
    if trim(Jubsu_ID) ='' then
       exit;

             grdLabResult.RemoveRows(1, grdLabResult.RowCount-1);

             dm_f.sqlTemp13.close;
             dm_f.sqlTemp13.sql.clear;
             dm_f.sqlTemp13.sql.text:=  'select * from ResInf where ResOcmNum=:ResOcmNum' ;
             dm_f.sqlTemp13.paramByName('ResOcmNum').asString     :=   Jubsu_ID  ;
             dm_f.sqlTemp13.open;

             if not dm_f.sqlTemp13.isEmpty then
             begin

                 while not dm_f.sqlTemp13.eof do
                 begin


                   with grdLabResult do
                   begin
                         addRow;
                         cells[1, rowcount-1] :=
                             copy(   dm_f.sqlTemp13.fieldByName('ResUpdDtm').asString, 1,8);
                         cells[2, rowcount-1] :=
                            dm_f.sqlTemp13.fieldByName('ResLabCod').asString;
                         cells[3, rowcount-1] :=
                         getSugaName_userKey( dm_f.sqlTemp13.fieldByName('ResLabCod').asString);
                         cells[4, rowcount-1] :=
                            dm_f.sqlTemp13.fieldByName('ResRltVal').asString;
                   end;



                   dm_f.sqlTemp13.next;
                 end;
             end;


end;



procedure TJinryo_f.HxTxWndProc(var Message: TMessage);
var
    i, j : integer;
    nScrollCode : integer;
    nPos        : integer;

    jin_Day : string;
    jinDay_tag : string;
    nTopRow  : integer;
begin
{
#define SB_LINEUP           0
#define SB_LINELEFT         0
#define SB_LINEDOWN         1
#define SB_LINERIGHT        1
#define SB_PAGEUP           2
#define SB_PAGELEFT         2
#define SB_PAGEDOWN         3
#define SB_PAGERIGHT        3
#define SB_THUMBPOSITION    4
#define SB_THUMBTRACK       5
#define SB_TOP              6
#define SB_LEFT             6
#define SB_BOTTOM           7
#define SB_RIGHT            7
#define SB_ENDSCROLL        8}
    case Message.Msg of
        WM_KEYUP :
        begin
         //    nPos :=  TWMVScroll( Message ).Pos;
           //   edit5.Text := inttostr(grdTxHx.topRow);
              nTopRow := grdTxHx.TopRow -1 ;
              jin_Day := grdTxHx.cells[12, nTopRow];
            if grdTxHx.cells[11, nTopRow] <>  '0' then
            begin
                grdTxHx.cells[2,  1]  :=  jin_Day;
                grdTxHx.cells[12, 1]  :=  jin_Day;
            end
            else
            begin
                jin_Day := grdTxHx.cells[12, grdTxHx.Row];

                grdTxHx.cells[2,  1]  :=  jin_Day;
                grdTxHx.cells[12, 1]  :=  jin_Day;
            end;
        end;
        WM_KEYDOWN:
        begin
         //    nPos :=  TWMVScroll( Message ).Pos;
            //  edit5.Text := inttostr(grdTxHx.topRow);

              nTopRow := grdTxHx.TopRow + 1;
              jin_Day := grdTxHx.cells[12, nTopRow];
           if grdTxHx.cells[11, nTopRow] <>  '0' then
            begin
              grdTxHx.cells[2,  1]  :=  jin_Day;
              grdTxHx.cells[12, 1]  :=  jin_Day;
            end;
        end;


        WM_MOUSEWHEEL:
        begin
              edit5.Text := inttostr(grdTxHx.topRow);

              nTopRow := grdTxHx.TopRow + 1;
              jin_Day := grdTxHx.cells[12, nTopRow];
           if grdTxHx.cells[11, nTopRow] <>  '0' then
            begin
              grdTxHx.cells[2,  1]  :=  jin_Day;
              grdTxHx.cells[12, 1]  :=  jin_Day;
            end;

        end;

        WM_VSCROLL:
        begin
              nScrollCode :=  TWMVScroll( Message ).ScrollCode;
              nPos :=  TWMVScroll( Message ).Pos;
             case  nScrollCode of
               5:
               begin
                 if (nMaxPos <> 0)   then
                  begin
                      //Edit11.Text := intTostr(nPos);

                      i := trunc((grdTxHx.RowCount) * nPos/nMaxPos);

                      if i < 1 then
                         grdTxHx.TopRow := 1
                      else
                         grdTxHx.TopRow := i;


                      //Edit12.Text := intTostr(grdTxHx.TopRow);
                  end;

               end;
             end;

                edit5.Text := intTostr(grdTxHx.TopRow);

              nTopRow := grdTxHx.TopRow + 1;
              jin_Day := grdTxHx.cells[12, nTopRow];
           if grdTxHx.cells[11, nTopRow] <>  '0' then
            begin
              grdTxHx.cells[2,  1]  :=  jin_Day;
              grdTxHx.cells[12, 1]  :=  jin_Day;
            end;


        end;
    end;
    FHxTxWndProc( Message );

end;


procedure TJinryo_f.loadUnRegistSugaData(searchData, kind: integer);
var
   aRow       : integer;
   sdFileName : string;
begin


   sdFileName := ExtractFileDir(Application.ExeName) + '\MasterData\drug.mdb';
   if (edtSearchSugaCode.text ='')
      and  (edtSearchSugaName.text ='')
      and( edtSearchSuga.text ='') then
   begin
        showmessage('검색어를 입력하세요.');
        edtSearchSugaName.setfocus;
        exit;
   end;

  if dm_f.uniConnection3.Connected = false then
    dm_f.uniConnection3.ConnectString :=
         'Provider Name=Access;Database=' + sdFileName ;



  case searchData of

      1:
      begin

            with dm_f.uniQuery1 do
            begin
              Close;
              Sql.Clear;
              Sql.Add('select *  from 약가  ');     //, apply_day, tuye, coname, gub_gu,out_gubun,sangkum,law_merit



                case kind of //RadioGroup1.itemindex of
                  0:
                    begin
                       SQL.Add('where  code like :su_key ');
                       paramByName('su_key').asString := '%' + edtSearchSugaCode.text + '%';
                    end;
                  1:

                    begin
                        SQL.Add('where  name like :su_key ');
                        paramByName('su_key').asString := '%' + edtSearchSugaName.text + '%';
                    end;
                  2:

                    begin
                       SQL.Add('where  code like :su_key ');
                       paramByName('su_key').asString := '%' + edtSearchSuga.text + '%';
                    end;
                end;


                  Sql.Add('and gub_gu <> ''삭제'' ');
                  Sql.Add('order by name, apply_day desc');
                  Open;
                  First;

              if not isEmpty then
              begin
                //grdList.Clear;

                 aRow:=   grdSuga.RowCount;
                 grdSuga.RowCount :=  grdSuga.RowCount + recordCount;

                while not eof do
                begin

                      grdSuga.Cells[1, aRow]  := FieldByName('code').AsString;
                      grdSuga.Cells[2, aRow]  := FieldByName('name').AsString;
                      grdSuga.Cells[3, aRow]  := FieldByName('code').AsString;

                      aRow:= aRow + 1;
                      Next;

                end;
              //  BlankRow(grdList, 20);
              end;
            end;

//            grdList.AutoNumberCol(0);
        end;


      2:
      begin


            with dm_f.uniQuery1 do
            begin
              Close;
              Sql.Clear;
              Sql.Add('select *  from 재료  ');     //, apply_day, tuye, coname, gub_gu,out_gubun,sangkum,law_merit


                case kind of //RadioGroup1.itemindex of
                  0:
                    begin
                       SQL.Add('where  code like :su_key ');
                       paramByName('su_key').asString := '%' + edtSearchSugaCode.text + '%';
                    end;
                  1:

                    begin
                        SQL.Add('where  name like :su_key ');
                        paramByName('su_key').asString := '%' + edtSearchSugaName.text + '%';
                    end;
                  2:

                    begin
                       SQL.Add('where  code like :su_key ');
                       paramByName('su_key').asString := '%' + edtSearchSuga.text + '%';
                    end;
                end;

            //      Sql.Add('and gub_gu <> ''삭제'' ');
                  Sql.Add('order by name, apply_day desc');
                  Open;
                  First;


              if not isEmpty then
              begin
                 aRow:=   grdSuga.RowCount;
                 grdSuga.RowCount :=  grdSuga.RowCount + recordCount;

                while not eof do
                begin

                      grdSuga.Cells[1, aRow]  := FieldByName('code').AsString;
                      grdSuga.Cells[2, aRow]  := FieldByName('name').AsString;
                      grdSuga.Cells[3, aRow]  := FieldByName('code').AsString;

                      aRow:= aRow + 1;
                      Next;

                end;
              //  BlankRow(grdList, 20);
              end;
            end;

          //  grdList.AutoNumberCol(0);

      end;
  end;

end;

end.



'HE124'
,'HE124001'
,'HE124006'
,'HE124007'
,'HE124600'
,'HE124606'
,'HE124607'
,'HE125'
,'HE125001'
,'HE125006'
,'HE125007'
,'HE125600'
,'HE125606'
,'HE125607'
,'HE126'
,'HE126001'
,'HE126006'
,'HE126007'
,'HE126600'
,'HE126606'
,'HE126607'
,'HE127'
,'HE127001'
,'HE127006'
,'HE127007'
,'HE127600'
,'HE127606'
,'HE127607'
,'HE128'
,'HE128001'
,'HE128006'
,'HE128007'
,'HE128600'
,'HE128606'
,'HE128607'
,'HE129'
,'HE129001'
,'HE129006'
,'HE129007'
,'HE129600'
,'HE129606'
,'HE129607'
,'HE130'
,'HE130001'
,'HE130006'
,'HE130007'
,'HE130600'
,'HE130606'
,'HE130607'
,'HE131'
,'HE131001'
,'HE131006'
,'HE131007'
,'HE131600'
,'HE131606'
,'HE131607'
,'HE132'
,'HE132001'
,'HE132006'
,'HE132007'
,'HE132600'
,'HE132606'
,'HE132607'
,'HE133'
,'HE133001'
,'HE133006'
,'HE133007'
,'HE133600'
,'HE133606'
,'HE133607'
,'HE134'
,'HE134001'
,'HE134006'
,'HE134007'
,'HE134600'
,'HE134606'
,'HE134607'
,'HE137'
,'HE137001'
,'HE137006'
,'HE137007'
,'HE137600'
,'HE137606'
,'HE137607'
,'HE138'
,'HE138001'
,'HE138006'
,'HE138007'
,'HE138600'
,'HE138606'
,'HE138607'
,'HE140'
,'HE140001'
,'HE140006'
,'HE140007'
,'HE140600'
,'HE140606'
,'HE140607'
,'HE141'
,'HE141001'
,'HE141006'
,'HE141007'
,'HE141600'
,'HE141606'
,'HE141607'
,'HE224'
,'HE224006'
,'HE224007'
,'HE224600'
,'HE224606'
,'HE224607'
,'HE225'
,'HE225006'
,'HE225007'
,'HE225600'
,'HE225606'
,'HE225607'
,'HE226'
,'HE226006'
,'HE226007'
,'HE226600'
,'HE226606'
,'HE226607'
,'HE227'
,'HE227006'
,'HE227007'
,'HE227600'
,'HE227606'
,'HE227607'
,'HE228'
,'HE228006'
,'HE228007'
,'HE228600'
,'HE228606'
,'HE228607'
,'HE229'
,'HE229006'
,'HE229007'
,'HE229600'
,'HE229606'
,'HE229607'
,'HE230'
,'HE230006'
,'HE230007'
,'HE230600'
,'HE230606'
,'HE230607'
,'HE231'
,'HE231006'
,'HE231007'
,'HE231600'
,'HE231606'
,'HE231607'
,'HE232'
,'HE232006'
,'HE232007'
,'HE232600'
,'HE232606'
,'HE232607'
,'HE233'
,'HE233006'
,'HE233007'
,'HE233600'
,'HE233606'
,'HE233607'
,'HE234'
,'HE234006'
,'HE234007'
,'HE234600'
,'HE234606'
,'HE234607'
,'HE237'
,'HE237006'
,'HE237007'
,'HE237600'
,'HE237606'
,'HE237607'
,'HE238'
,'HE238006'
,'HE238007'
,'HE238600'
,'HE238606'
,'HE238607'
,'HE240'
,'HE240006'
,'HE240007'
,'HE240600'
,'HE240606'
,'HE240607'
,'HE241'
,'HE241006'
,'HE241007'
,'HE241600'
,'HE241606'
,'HE241607'
,'HE324'
,'HE324001'
,'HE324006'
,'HE324007'
,'HE324600'
,'HE324606'
,'HE324607'
,'HE325'
,'HE325001'
,'HE325006'
,'HE325007'
,'HE325600'
,'HE325606'
,'HE325607'
,'HE326'
,'HE326001'
,'HE326006'
,'HE326007'
,'HE326600'
,'HE326606'
,'HE326607'
,'HE327'
,'HE327001'
,'HE327006'
,'HE327007'
,'HE327600'
,'HE327606'
,'HE327607'
,'HE328'
,'HE328001'
,'HE328006'
,'HE328007'
,'HE328600'
,'HE328606'
,'HE328607'
,'HE329'
,'HE329001'
,'HE329006'
,'HE329007'
,'HE329600'
,'HE329606'
,'HE329607'
,'HE330'
,'HE330001'
,'HE330006'
,'HE330007'
,'HE330600'
,'HE330606'
,'HE330607'
,'HE331'
,'HE331001'
,'HE331006'
,'HE331007'
,'HE331600'
,'HE331606'
,'HE331607'
,'HE332'
,'HE332001'
,'HE332006'
,'HE332007'
,'HE332600'
,'HE332606'
,'HE332607'
,'HE333'
,'HE333001'
,'HE333006'
,'HE333007'
,'HE333600'
,'HE333606'
,'HE333607'
,'HE334'
,'HE334001'
,'HE334006'
,'HE334007'
,'HE334600'
,'HE334606'
,'HE334607'
,'HE424'
,'HE424001'
,'HE424006'
,'HE424007'
,'HE424600'
,'HE424606'
,'HE424607'
,'HE425'
,'HE425001'
,'HE425006'
,'HE425007'
,'HE425600'
,'HE425606'
,'HE425607'
,'HE426'
,'HE426001'
,'HE426006'
,'HE426007'
,'HE426600'
,'HE426606'
,'HE426607'
,'HE427'
,'HE427001'
,'HE427006'
,'HE427007'
,'HE427600'
,'HE427606'
,'HE427607'
,'HE428'
,'HE428001'
,'HE428006'
,'HE428007'
,'HE428600'
,'HE428606'
,'HE428607'
,'HE429'
,'HE429001'
,'HE429006'
,'HE429007'
,'HE429600'
,'HE429606'
,'HE429607'
,'HE430'
,'HE430001'
,'HE430006'
,'HE430007'
,'HE430600'
,'HE430606'
,'HE430607'
,'HE431'
,'HE431001'
,'HE431006'
,'HE431007'
,'HE431600'
,'HE431606'
,'HE431607'
,'HE432'
,'HE432001'
,'HE432006'
,'HE432007'
,'HE432600'
,'HE432606'
,'HE432607'
,'HE433'
,'HE433001'
,'HE433006'
,'HE433007'
,'HE433600'
,'HE433606'
,'HE433607'
,'HE434'
,'HE434001'
,'HE434006'
,'HE434007'
,'HE434600'
,'HE434606'
,'HE434607'
,'HE524'
,'HE524006'
,'HE524007'
,'HE524600'
,'HE524606'
,'HE524607'
,'HE525'
,'HE525006'
,'HE525007'
,'HE525600'
,'HE525606'
,'HE525607'
,'HE526'
,'HE526006'
,'HE526007'
,'HE526600'
,'HE526606'
,'HE526607'
,'HE527'
,'HE527006'
,'HE527007'
,'HE527600'
,'HE527606'
,'HE527607'
,'HE528'
,'HE528006'
,'HE528007'
,'HE528600'
,'HE528606'
,'HE528607'
,'HE529'
,'HE529006'
,'HE529007'
,'HE529600'
,'HE529606'
,'HE529607'
,'HE530'
,'HE530006'
,'HE530007'
,'HE530600'
,'HE530606'
,'HE530607'
,'HE531'
,'HE531006'
,'HE531007'
,'HE531600'
,'HE531606'
,'HE531607'
,'HE532'
,'HE532006'
,'HE532007'
,'HE532600'
,'HE532606'
,'HE532607'
,'HE533'
,'HE533006'
,'HE533007'
,'HE533600'
,'HE533606'
,'HE533607'
,'HE534'
,'HE534006'
,'HE534007'
,'HE534600'
,'HE534606'
,'HE534607'
,'HE537'
,'HE537006'
,'HE537007'
,'HE537600'
,'HE537606'
,'HE537607'
,'HE538'
,'HE538006'
,'HE538007'
,'HE538600'
,'HE538606'
,'HE538607'
,'HE540'
,'HE540006'
,'HE540007'
,'HE540600'
,'HE540606'
,'HE540607'
,'HE541'
,'HE541006'
,'HE541007'
,'HE541600'
,'HE541606'
,'HE541607'



'E6541'
'ZE6541'   //EKG
'CDCOPY'
'CDCOPY2'
'IMAX350'
'IMAX300'
'ZEECP'     //zeecp
'ZEECP'     //zeecp
'PRIMOVIST' //MR조영제    Modality JOM
'PROHANCE'   //prohance    MR조영제  Modality JOM
'IOPA370'    //CT 조영제   Modality JOC
'IOPA300'    //CT 조영제   Modality JOC

